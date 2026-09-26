object PreviewFrameWindow: TPreviewFrameWindow
  Left = 0
  Top = 0
  Width = 270
  Height = 590
  Caption = 'PreviewFrameWindow'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPreview: TPanel
    Left = 0
    Top = 0
    Width = 270
    Height = 590
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object img1: TImage
      Left = 0
      Top = 0
      Width = 270
      Height = 590
      Align = alClient
      AutoSize = True
      Center = True
      ExplicitWidth = 73
      ExplicitHeight = 73
    end
  end
end
