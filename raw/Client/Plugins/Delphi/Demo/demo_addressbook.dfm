object frmSelectAB: TfrmSelectAB
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Demo - '#1040#1076#1088#1077#1089#1085#1072#1103' '#1082#1085#1080#1075#1072
  ClientHeight = 302
  ClientWidth = 582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 204
    Height = 270
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object chkMulti: TCheckBox
      AlignWithMargins = True
      Left = 8
      Top = 110
      Width = 190
      Height = 17
      Margins.Left = 8
      Caption = #1052#1085#1086#1078#1077#1089#1090#1074#1077#1085#1085#1099#1081' '#1074#1099#1073#1086#1088
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object rgItemType: TRadioGroup
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 188
      Height = 91
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = #1058#1080#1087#1099' '#1101#1083#1077#1084#1077#1085#1090#1086#1074
      ItemIndex = 0
      Items.Strings = (
        #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        #1044#1086#1083#1078#1085#1086#1089#1090#1100
        #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077)
      TabOrder = 1
    end
    object btnOK: TButton
      Left = 8
      Top = 168
      Width = 190
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1080#1079' '#1072#1076#1088#1077#1089#1085#1086#1081' '#1082#1085#1080#1075#1080'>>>'
      TabOrder = 2
      OnClick = btnOKClick
    end
    object chkShowBoxes: TCheckBox
      AlignWithMargins = True
      Left = 8
      Top = 133
      Width = 159
      Height = 17
      Margins.Left = 8
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1092#1083#1072#1078#1082#1080
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 270
    Width = 582
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      582
      32)
    object btnCancel: TButton
      Left = 496
      Top = 1
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 2
      TabOrder = 0
    end
  end
  object pnl3: TPanel
    Left = 204
    Top = 0
    Width = 378
    Height = 270
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object mmo1: TMemo
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 367
      Height = 254
      Margins.Left = 8
      Margins.Top = 8
      Margins.Bottom = 8
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
