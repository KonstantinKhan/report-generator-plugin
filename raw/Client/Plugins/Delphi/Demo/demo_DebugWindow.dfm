object frmDebugWindow: TfrmDebugWindow
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
  ClientHeight = 368
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  DesignSize = (
    703
    368)
  PixelsPerInch = 96
  TextHeight = 13
  object mmoDebug: TMemo
    Left = 8
    Top = 8
    Width = 687
    Height = 321
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object btnClose: TButton
    Left = 620
    Top = 335
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 2
    TabOrder = 1
  end
end
