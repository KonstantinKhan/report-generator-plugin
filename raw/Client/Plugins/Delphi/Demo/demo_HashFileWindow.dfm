object frmHashFileWindow: TfrmHashFileWindow
  Left = 0
  Top = 0
  Caption = #1061#1077#1096#1080#1088#1086#1074#1072#1085#1080#1077' '#1092#1072#1081#1083#1086#1074
  ClientHeight = 56
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object gpMain: TGridPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 56
    Align = alClient
    ColumnCollection = <
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = grpIN
        Row = 0
      end
      item
        Column = 1
        Control = grpAlg
        Row = 0
      end
      item
        Column = 2
        Control = btnStartHash
        Row = 0
      end
      item
        Column = 3
        Control = grpOUT
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    ExplicitLeft = 904
    ExplicitTop = 160
    ExplicitWidth = 185
    ExplicitHeight = 41
    object grpIN: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 238
      Height = 48
      Align = alClient
      Caption = #1048#1089#1093#1086#1076#1085#1099#1081' '#1092#1072#1081#1083
      TabOrder = 0
      ExplicitTop = 53
      ExplicitWidth = 185
      object eFile: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 203
        Height = 23
        Align = alClient
        ReadOnly = True
        TabOrder = 0
        OnChange = eFileChange
        ExplicitLeft = 3
        ExplicitTop = 22
      end
      object btnOpenFile: TButton
        Left = 211
        Top = 17
        Width = 25
        Height = 29
        Align = alRight
        Caption = '...'
        TabOrder = 1
        OnClick = btnOpenFileClick
      end
    end
    object grpAlg: TGroupBox
      AlignWithMargins = True
      Left = 248
      Top = 4
      Width = 238
      Height = 48
      Align = alClient
      Caption = #1057#1087#1080#1089#1086#1082' '#1072#1083#1075#1086#1088#1080#1090#1084#1086#1074
      TabOrder = 1
      ExplicitLeft = 194
      ExplicitTop = -2
      ExplicitWidth = 185
      object cbbHashAlgorithms: TComboBox
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 228
        Height = 23
        Align = alClient
        Style = csDropDownList
        ItemHeight = 0
        TabOrder = 0
        OnChange = cbbHashAlgorithmsChange
      end
    end
    object btnStartHash: TButton
      AlignWithMargins = True
      Left = 492
      Top = 4
      Width = 238
      Height = 48
      Align = alClient
      Caption = #1047#1072#1093#1077#1096#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      OnClick = btnStartHashClick
      ExplicitLeft = 320
      ExplicitTop = -2
      ExplicitWidth = 75
    end
    object grpOUT: TGroupBox
      AlignWithMargins = True
      Left = 736
      Top = 4
      Width = 238
      Height = 48
      Align = alClient
      Caption = #1061#1077#1096'-'#1089#1091#1084#1084#1072
      TabOrder = 3
      ExplicitLeft = 514
      ExplicitTop = 8
      ExplicitWidth = 185
      object eHashResult: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 228
        Height = 23
        Align = alClient
        ReadOnly = True
        TabOrder = 0
        ExplicitWidth = 175
      end
    end
  end
  object dlgOpen: TOpenDialog
    Left = 284
    Top = 12
  end
end
