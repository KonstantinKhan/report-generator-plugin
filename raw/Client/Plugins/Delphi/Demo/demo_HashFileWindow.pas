unit demo_HashFileWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  Graphics,Controls, Forms, Dialogs, StdCtrls,
  Loodsman_TLB,LoodsmanHash_TLB, ExtCtrls;

type
  TfrmHashFileWindow = class(TForm)
    gpMain: TGridPanel;
    grpIN: TGroupBox;
    eFile: TEdit;
    grpAlg: TGroupBox;
    cbbHashAlgorithms: TComboBox;
    btnStartHash: TButton;
    grpOUT: TGroupBox;
    eHashResult: TEdit;
    btnOpenFile: TButton;
    dlgOpen: TOpenDialog;
    procedure btnStartHashClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOpenFileClick(Sender: TObject);
    procedure eFileChange(Sender: TObject);
    procedure cbbHashAlgorithmsChange(Sender: TObject);
  private
    { Private declarations }
    HashedData:ILodsmanHashedData;
  public
    { Public declarations }
    constructor Create(_app: ILoodsmanApplication);
  end;

procedure menu_ShowHashFileWindow(const PluginCall: IPluginCall); stdcall; export;

var
  frmHashFileWindow: TfrmHashFileWindow;

implementation

{$R *.dfm}

procedure menu_ShowHashFileWindow(const PluginCall: IPluginCall); stdcall; export;
begin
  TfrmHashFileWindow.Create(PluginCall as ILoodsmanApplication).ShowModal;
end;

{ TfrmHashFileWindow }

procedure TfrmHashFileWindow.btnOpenFileClick(Sender: TObject);
begin
  if dlgOpen.Execute then
    eFile.Text := dlgOpen.FileName;
end;

procedure TfrmHashFileWindow.btnStartHashClick(Sender: TObject);
begin

  if not FileExists(eFile.Text) then
  begin
   eFile.SetFocus;
   raise Exception.Create('Необходимо выбрать файл');
  end;

  if cbbHashAlgorithms.Text = '' then
  begin
   cbbHashAlgorithms.SetFocus;
   raise Exception.Create('Необходимо выбрать алгоритм хеширования');
  end;

  //Находим выбранный алгоритм и получаем хеш для файла
  eHashResult.Text := HashedData
                      .GetAlgList
                      .FindById(cbbHashAlgorithms.Text)
                      .GetHash(eFile.Text);
end;

procedure TfrmHashFileWindow.cbbHashAlgorithmsChange(Sender: TObject);
begin
  eHashResult.Clear;
end;

constructor TfrmHashFileWindow.Create(_app: ILoodsmanApplication);
var
  HashAlgCollection : IAlgorithmInfoCollection;
  i : Integer;
begin
  inherited Create(Application);

  //Получаем сервис отвечающий за хеширование файлов
  HashedData := _app.FindService(IID_ILodsmanHashedData, True) as ILodsmanHashedData;

  //Список доступных алгоритмов
  //(настраиваются по пути (%LOODSMAN_COMMON_DATA%\Settings\Common\HashAlgorithms.ini))
  HashAlgCollection := HashedData.GetAlgList;

  for i := 0 to HashAlgCollection.Count - 1 do
    cbbHashAlgorithms.Items.Add(HashAlgCollection.Get[i].AlgID);

  if HashAlgCollection.Count > 0 then
   cbbHashAlgorithms.ItemIndex := 0;
end;

procedure TfrmHashFileWindow.eFileChange(Sender: TObject);
begin
  eHashResult.Clear;
end;

procedure TfrmHashFileWindow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

end.
