object frmNonModalWindow: TfrmNonModalWindow
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Demo - '#1053#1077#1084#1086#1076#1072#1083#1100#1085#1086#1077' '#1086#1082#1085#1086' '#1080#1079' '#1087#1083#1072#1075#1080#1085#1072
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    418
    281)
  PixelsPerInch = 96
  TextHeight = 13
  object bvl1: TBevel
    Left = 0
    Top = 231
    Width = 418
    Height = 50
    Align = alBottom
    Shape = bsSpacer
    ExplicitLeft = 101
    ExplicitTop = 225
    ExplicitWidth = 50
  end
  object mmo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 412
    Height = 184
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 418
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    Caption = #1042' '#1101#1090#1086' '#1086#1082#1085#1086' '#1084#1086#1078#1085#1086' '#1087#1077#1088#1077#1090#1072#1097#1080#1090#1100' '#1086#1073#1098#1077#1082#1090#1099'/ '#1089#1090#1072#1076#1080#1080' /'#1079#1072#1076#1072#1085#1080#1103' '#1080#1079' '#1082#1083#1080#1077#1085#1090#1072
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 1
  end
  object btnCancel: TButton
    Left = 335
    Top = 248
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnOK: TButton
    Left = 254
    Top = 248
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1050
    ModalResult = 1
    TabOrder = 3
    OnClick = btnOKClick
  end
end
