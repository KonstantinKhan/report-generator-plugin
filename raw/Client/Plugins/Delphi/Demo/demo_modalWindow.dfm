object frmModalWindow: TfrmModalWindow
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Demo - '#1084#1086#1076#1072#1083#1100#1085#1086#1077' '#1086#1082#1085#1086' '#1087#1083#1072#1075#1080#1085#1072
  ClientHeight = 343
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    594
    343)
  PixelsPerInch = 96
  TextHeight = 13
  object btnSelectObjects: TButton
    Left = 8
    Top = 10
    Width = 129
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1086#1073#1098#1077#1082#1090#1099
    ModalResult = 100500
    TabOrder = 0
  end
  object btnCancel: TButton
    Left = 511
    Top = 310
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object mmo1: TMemo
    AlignWithMargins = True
    Left = 8
    Top = 48
    Width = 578
    Height = 256
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
  end
  object btnOK: TButton
    Left = 430
    Top = 311
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 3
  end
end
