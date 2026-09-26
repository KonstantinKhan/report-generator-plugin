using DataProvider;
using Loodsman;
using LoodsmanObjects;
using PDMObjects;
using PDMTree;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Media.Imaging;

namespace LoodsmanAttributesFrame
{
    public class AttrValueVM : INotifyPropertyChanged
    {
        public AttrValueVM(IDBContext context, ILoodsmanApplication ownerApplication, IFrameContainer parent)
        {
            _attrValues = new ObservableCollection<AttrValue>();
            RefreshCommand = new DelegateCommand(Refresh);
            Connection = context.Connection as ISimpleAPI2;
            LoodsmanApp = ownerApplication;
            SimpleApi = LoodsmanApp.DataBase.Connection as SimpleAPI;

            _stateIcons = LoodsmanApp.PDMModel.GetMetaData().StatesIcons;
            ParentContainer = parent;
            IsShowRequiredFirst = true;
            RefreshData();
        }

        private ObservableCollection<AttrValue> _attrValues;
        private bool _isShowRequiredFirst;

        public bool IsShowRequiredFirst
        {
            get => _isShowRequiredFirst;
            set => SetProperty(ref _isShowRequiredFirst, value);
        }

        public ObservableCollection<AttrValue> AttrValues
        {
            get => _attrValues;
            set => SetProperty(ref _attrValues, value);
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        protected void SetProperty<T>(ref T field, T value, [CallerMemberName] string propertyName = null)
        {
            field = value;
            OnPropertyChanged(propertyName);
        }

        public ILoodsmanApplication LoodsmanApp { get; private set; }
        public ISimpleAPI2 Connection { get; private set; }
        public SimpleAPI SimpleApi { get; private set; }

        private CoDPImageList _stateIcons;

        public IFrameContainer ParentContainer { get; private set; }
        public DelegateCommand RefreshCommand { get; }

        private void Refresh(object parameter)
        {
            RefreshData();
        }

        private int GetAttributeByName(string name, bool isLink = false)
        {
            for (var i = 0; i < AttrValues.Count; i++)
            {
                if (AttrValues[i].Name == name && AttrValues[i].IsLink == isLink)
                    return i;
            }

            return -1;
        }

        private void SetAttrValue(string attrName, string attrValue, bool isLink = false)
        {
            var idx = GetAttributeByName(attrName, isLink);

            if (idx >= 0)
            {
                AttrValues[idx].Value = attrValue;
            }
        }

        private IPDMObject2 _currObject;
        private IPDMLink2 _currLink;

        private void InitObject()
        {
            _currLink = null;
            _currObject = null;

            var content = ParentContainer.ParentFrame.Content;
            if (content.ContentType == (int)ObjectCodes.C_OBJECT)
            {
                if (content.SelectedCount != 0)
                {
                    if (content.Selected != null)
                    {
                        var selected = content.Selected;

                        if (selected is ILoodsmanTreeNode treeNode)
                        {
                            _currObject = treeNode.PDMObject;
                            _currLink = treeNode.PDMLink;
                        }
                        else if (selected is IPDMObject2 obj2)
                            _currObject = obj2;
                        else if (selected is IPDMLink2 link2)
                        {
                            _currLink = link2;
                            _currObject = link2.ChildObject;
                        }
                        else if (selected is IPDMObject obj1)
                        {
                            if (LoodsmanApp != null)
                            {
                                var currCheckOut = LoodsmanApp.PDMModel.GetCheckoutList().GetCheckoutByConnection(Connection);
                                _currObject = LoodsmanApp.PDMModel.GetObjectProvider().GetObject(obj1.ID, GetCollectionMode.gcmAbsentRefresh, currCheckOut);
                            }
                        }
                        else if (selected is IPDMLink link1)
                        {
                            if (LoodsmanApp != null)
                            {
                                var currCheckOut = LoodsmanApp.PDMModel.GetCheckoutList().GetCheckoutByConnection(Connection);
                                _currLink = LoodsmanApp.PDMModel.GetLinkProvider().GetLink(link1.ID, GetCollectionMode.gcmAbsentRefresh, currCheckOut);
                            }

                            if (link1.Inverse)
                                _currObject = _currLink.ParentObject;
                            else
                                _currObject = _currLink.ChildObject;
                        }
                    }
                }
            }
        }

        public void RefreshData()
        {
            AttrValues.Clear();

            if (SimpleApi == null)
                return;

            InitObject();

            if (_currObject == null)
                return;

            // Атрибуты типа
            var pdmObjectType = LoodsmanApp.PDMModel.GetMetaData().Types.TypeByName[_currObject.TypeName];
            if (pdmObjectType != null)
            {
                var attrList = pdmObjectType.AttrList;
                for (var i = 0; i < attrList.Count; i++)
                {
                    var attr = attrList.Items(i) as IPDMAttribute2;

                    AttrValues.Add(new AttrValue { Name = attr.Name, AttrValueType = attr.AttrType, IsSystem = attr.IsSystem, IsObligatory = pdmObjectType.IsObligatoryAttr(attr) });
                }
            }

            // Атрибуты связи
            if (_currLink != null && _currLink.LinkBetweenTypes != null)
            {
                var attrList = _currLink.LinkBetweenTypes.AttrList;
                for (var i = 0; i < attrList.Count; i++)
                {
                    var attr = attrList.Items(i) as IPDMAttribute2;
                    AttrValues.Add(new AttrValue { Name = attr.Name, AttrValueType = attr.AttrType, IsSystem = attr.IsSystem, IsLink = true });
                }
            }

            // Состояние
            var currObjectState = LoodsmanApp.PDMModel.GetMetaData().States.ItemByName(_currObject.StateName) as IPDMObjectState;
            byte[] data = _stateIcons.GetBitmap(currObjectState.IconIndex);
            BitmapImage bi;
            using (var ms = new MemoryStream(data))
            {
                ms.Position = 0;
                bi = new BitmapImage();
                bi.BeginInit();
                bi.StreamSource = ms;
                bi.CacheOption = BitmapCacheOption.OnLoad;
                bi.EndInit();
            }                
            AttrValues.Add(new AttrValue { Id = -1, Name = "Состояние", Value = _currObject.StateName, IsState = true, StateIndex = currObjectState.IconIndex, Picture = bi });

            // Количество
            if (_currLink != null && _currLink.LinkBetweenTypes != null)
            {
                var fvalue = "";
                if (_currLink.MaxQuantity > 0 || _currLink.MinQuantity > 0)
                {
                    if (_currLink.MaxQuantity == _currLink.MinQuantity)
                        fvalue = $"{_currLink.MinQuantity}";
                    else
                        fvalue = $"{_currLink.MinQuantity}..{_currLink.MaxQuantity}";
                    if (string.IsNullOrEmpty(_currLink.UnitName) == false)
                        fvalue = fvalue + $"{_currLink.UnitName}";

                    AttrValues.Add(new AttrValue { Id = -1, Name = "Количество", Value = fvalue, IsQuantity = true });
                }
            }

            ReloadValueAttributes();

            //RaisePropertyChanged("AttrValues");

            //lvAttrValues.ItemsSource = null;
            //lvAttrValues.ItemsSource = AttrValues;
        }

        private void LoadDataFromAttributeValueCollection(IPDMAttrValueCollection attrs)
        {
            if (attrs == null)
                return;

            for (var i = 0; i < attrs.Count; i++)
            {
                var attrValue = attrs.AttrValues[i];

                var attrName = attrValue.Name;
                var attrIsLink = attrValue.IsLinkAttr;

                SetAttrValue(attrName, attrValue.StrValue, attrIsLink);
            }
        }

        private void ReloadValueAttributes()
        {
            if (_currObject != null)
            {
                var attrs = _currObject.Attrs.LoadAttrValues("", GetCollectionMode.gcmAllRefresh);
                LoadDataFromAttributeValueCollection(attrs);
            }

            if (_currLink != null)
            {
                var attrs = _currLink.Attrs.LoadAttrValues("", GetCollectionMode.gcmAllRefresh);
                LoadDataFromAttributeValueCollection(attrs);
            }
        }
    }

    public class AttrValue : INotifyPropertyChanged
    {
        private string _name;
        private string _value;

        public int Id { get; set; }
        public string Name
        {
            get => _name;
            set => SetProperty(ref _name, value);
        }

        public string Value
        {
            get => _value;
            set => SetProperty(ref _value, value);
        }

        public int AttrValueType { get; set; }

        public bool IsSystem { get; set; } = false;
        public bool IsObligatory { get; set; } = false;
        public bool IsState { get; set; } = false;
        public bool IsQuantity { get; set; } = false;
        public bool IsLink { get; set; } = false;
        public int StateIndex { get; set; } = -1;
        public BitmapImage Picture { get; set; } = null;

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        protected void SetProperty<T>(ref T field, T value, [CallerMemberName] string propertyName = null)
        {
            field = value;
            OnPropertyChanged(propertyName);
        }
    }
}
