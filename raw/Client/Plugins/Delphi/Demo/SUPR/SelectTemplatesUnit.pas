unit SelectTemplatesUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls,TaskTemplatesSchema;

type
  TSelectTemplatesForm = class(TForm)
    BottomPanel: TPanel;
    btnHelp: TButton;
    btnCancel: TButton;
    btnOk: TButton;
    lwTemplates: TListView;
    procedure FormShow(Sender: TObject);
    procedure lwTemplatesDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure WMNotify(var Message: TWMNotify); message WM_NOTIFY;
  public
    { Public declarations }
    TemplatesList : IXMLTaskTemplates; //входящий/исходящий список для выбора шаблонов
  end;

  function ShowTemplates(TemplatesList : IXMLTaskTemplates):integer;

var
  SelectTemplatesForm: TSelectTemplatesForm;

implementation

uses CommCtrl;

{$R *.dfm}

function ShowTemplates(TemplatesList : IXMLTaskTemplates):integer;
begin
  Result:=mrNone;
  SelectTemplatesForm:= TSelectTemplatesForm.Create(Application);
  try
    if Assigned(TemplatesList) then
    begin
      SelectTemplatesForm.TemplatesList:=TemplatesList;
      Result:=SelectTemplatesForm.ShowModal;
    end;
  finally
    SelectTemplatesForm.Free;
  end;
end;

procedure TSelectTemplatesForm.FormShow(Sender: TObject);
var
  i     : Integer;
  Item  : TListItem;
begin
  {отображение списка TemplatesList в ListView}
  lwTemplates.Items.Clear;
  if Assigned(TemplatesList) then
  begin
    for i:=0 to TemplatesList.Count-1 do
    begin
      Item:=lwTemplates.Items.Add;
      Item.Caption:=TemplatesList[i].Topic;
      Item.Data:=Pointer(TemplatesList[i]);
      Item.SubItems.Add(IntToStr(TemplatesList[i].PlanDuration));
      Item.SubItems.Add(TemplatesList[i].Worker);
      Item.SubItems.Add(TemplatesList[i].Author);
      if AnsiCompareText(TemplatesList[i].CalcDirection,'AsLateAsPossible')=0 then
        Item.SubItems.Add('КMП')
      else
        if AnsiCompareText(TemplatesList[i].CalcDirection,'AsSoonAsPossible')=0 then
          Item.SubItems.Add('КMР');
      Item.SubItems.Add(TemplatesList[i].Checker);
      Item.SubItems.Add(IntToStr(TemplatesList[i].Priority));
      Item.SubItems.Add(IntToStr(TemplatesList[i].Subscribers.Count));
      Item.SubItems.Add(IntToStr(TemplatesList[i].Attachments.Count));
      Item.SubItems.Add(TemplatesList[i].Description);
    end;
  end;
end;

procedure TSelectTemplatesForm.lwTemplatesDblClick(Sender: TObject);
begin
  if Assigned((Sender as TListView).Selected) then
    if Assigned((Sender as TListView).Selected.Data) then
    begin
      IXMLTaskTemplate((Sender as TListView).Selected.Data).Checked:=true;
      btnOk.Click;
    end;
end;

{установка чекбокса у элемента списка TemplatesList}
procedure TSelectTemplatesForm.WMNotify(var Message: TWMNotify);
var
  OldChecked    : Boolean;
  NewChecked    : Boolean;
  i             : Integer;
begin
  if lwTemplates.Items.Count>0 then
  begin
    if Message.NMHdr.hwndFrom = lwTemplates.Handle then
      if Message.NMHdr.code = LVN_ITEMCHANGED then
      begin
        // uOldState=0x1000 -> uNewState=0x2000: item is going to be checked
        // uOldState=0x2000 -> uNewState=0x1000: item is going to be unchecked
        OldChecked := (PNMListView(Message.NMHdr).uOldState and (1 shl 13)) <> 0;
        NewChecked := (PNMListView(Message.NMHdr).uNewState and (1 shl 13)) <> 0;
        if OldChecked <> NewChecked then
        begin
          i:=PNMListView(Message.NMHdr).iItem;
          if Assigned(lwTemplates.Items[i].Data) then
            IXMLTaskTemplate(lwTemplates.Items[i].Data).Checked:=NewChecked;
        end;
      end;
  end;
  inherited;
end;

end.
