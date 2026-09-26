unit demo_DebugWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmDebugWindow = class(TForm)
    mmoDebug: TMemo;
    btnClose: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



procedure ShowDebugWindow(text : string);

implementation

{$R *.dfm}



procedure ShowDebugWindow(text : string);
var
  frmDebugWindow: TfrmDebugWindow;
begin
    frmDebugWindow:= TfrmDebugWindow.Create(nil);
    try
      frmDebugWindow.mmoDebug.Text := text;
      frmDebugWindow.ShowModal;
    finally
      FreeAndNil(frmDebugWindow);
    end;
end;

procedure TfrmDebugWindow.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_ESCAPE then Close;

end;

end.
