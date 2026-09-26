object frmDynamicStructureDemo: TfrmDynamicStructureDemo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderWidth = 7
  Caption = 'Demo - '#1044#1080#1085#1072#1084#1080#1095#1077#1089#1082#1072#1103' '#1089#1090#1088#1091#1082#1090#1091#1088#1072
  ClientHeight = 455
  ClientWidth = 898
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEffMode: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblEffMode: TLabel
      Left = 0
      Top = 0
      Width = 160
      Height = 25
      Align = alLeft
      Caption = #1056#1077#1078#1080#1084' '#1088#1072#1073#1086#1090#1099' '#1072#1082#1090#1080#1074#1085#1086#1075#1086' '#1086#1082#1085#1072':'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object lblEffModeValue: TLabel
      AlignWithMargins = True
      Left = 168
      Top = 0
      Width = 730
      Height = 25
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Caption = '-'
      Layout = tlCenter
      ExplicitWidth = 4
      ExplicitHeight = 13
    end
  end
  object grpParams: TGroupBox
    Left = 0
    Top = 25
    Width = 513
    Height = 399
    Align = alLeft
    Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1076#1080#1085#1072#1084#1080#1095#1077#1089#1082#1086#1081' '#1089#1090#1088#1091#1082#1090#1091#1088#1099':'
    TabOrder = 1
    object pnlContextId: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 23
      Width = 493
      Height = 25
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lblContextId: TLabel
        Left = 0
        Top = 0
        Width = 142
        Height = 25
        Align = alLeft
        Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1082#1086#1085#1090#1077#1082#1089#1090#1072':'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object edtContextId: TEdit
        AlignWithMargins = True
        Left = 150
        Top = 1
        Width = 343
        Height = 23
        Margins.Left = 8
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
    object pnlRuleId: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 56
      Width = 493
      Height = 25
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object lblRuleId: TLabel
        Left = 0
        Top = 0
        Width = 131
        Height = 25
        Align = alLeft
        Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1087#1088#1072#1074#1080#1083#1072':'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object edtRuleId: TEdit
        AlignWithMargins = True
        Left = 139
        Top = 1
        Width = 354
        Height = 23
        Margins.Left = 8
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
    object pnlEndVersionId: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 89
      Width = 493
      Height = 25
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object lblEndVersionId: TLabel
        Left = 0
        Top = 0
        Width = 187
        Height = 25
        Align = alLeft
        Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1082#1086#1085#1077#1095#1085#1086#1075#1086' '#1080#1079#1076#1077#1083#1080#1103':'
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object edtEndVersionId: TEdit
        AlignWithMargins = True
        Left = 195
        Top = 1
        Width = 298
        Height = 23
        Margins.Left = 8
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 21
      end
    end
    object pnlQuickParams: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 122
      Width = 493
      Height = 249
      Margins.Left = 8
      Margins.Top = 0
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lblQuickParams: TLabel
        Left = 0
        Top = 0
        Width = 493
        Height = 13
        Align = alTop
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1073#1099#1089#1090#1088#1086#1075#1086' '#1076#1086#1089#1090#1091#1087#1072':'
        ExplicitWidth = 157
      end
      object lblCurrentQuickParamsValue: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 161
        Width = 493
        Height = 13
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1090#1077#1082#1091#1097#1077#1077' '#1079#1085#1072#1095#1077#1085#1080#1077':'
        ExplicitWidth = 150
      end
      object lvQuickParams: TListView
        AlignWithMargins = True
        Left = 0
        Top = 17
        Width = 493
        Height = 140
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Columns = <
          item
            Caption = #1058#1080#1087' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
            Width = 100
          end
          item
            Caption = #1048#1084#1103' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
            Width = 100
          end
          item
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1072
            Width = 130
          end
          item
            Caption = #1055#1088#1080#1079#1085#1072#1082' "'#1051#1102#1073#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077'"'
            Width = 150
          end>
        ReadOnly = True
        RowSelect = True
        TabOrder = 0
        ViewStyle = vsReport
        OnChange = lvQuickParamsChange
      end
      object edtCurrentQuickParams: TEdit
        AlignWithMargins = True
        Left = 0
        Top = 178
        Width = 493
        Height = 21
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        TabOrder = 1
      end
      object chkCurrentQuickParams: TCheckBox
        Left = 0
        Top = 199
        Width = 493
        Height = 17
        Align = alTop
        Caption = #1051#1102#1073#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
        TabOrder = 2
      end
      object btnQuickParamsApply: TButton
        Left = 0
        Top = 216
        Width = 493
        Height = 25
        Align = alTop
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 3
        OnClick = btnQuickParamsApplyClick
      end
    end
    object pnlBottomParams: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 366
      Width = 493
      Height = 23
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object btnSave: TButton
        AlignWithMargins = True
        Left = 357
        Top = 0
        Width = 136
        Height = 23
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alRight
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '
        TabOrder = 0
        OnClick = btnSaveClick
      end
    end
  end
  object grpDynamicStructure: TGroupBox
    Left = 513
    Top = 25
    Width = 385
    Height = 399
    Align = alClient
    Caption = #1044#1072#1085#1085#1099#1077' '#1080#1079' '#1076#1080#1085#1072#1084#1080#1095#1077#1089#1082#1086#1081' '#1089#1090#1088#1091#1082#1090#1091#1088#1099': '
    TabOrder = 2
    object lblSelectedObject: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 81
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = #1057#1077#1083#1077#1082#1090#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1086#1073#1098#1077#1082#1090':'
      ExplicitWidth = 137
    end
    object lblSelectedObjectValue: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 110
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = '-'
      ExplicitWidth = 4
    end
    object lblFilterDynamicMode: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 139
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = #1056#1077#1078#1080#1084' '#1086#1090#1073#1086#1088#1072' '#1074#1077#1088#1089#1080#1081':'
      ExplicitWidth = 113
    end
    object lblFilterDynamicModeValue: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 168
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = '-'
      ExplicitWidth = 4
    end
    object lblParentObjectValue: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 52
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = '-'
      ExplicitWidth = 4
    end
    object lblParentObject: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 23
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1080#1081' '#1086#1073#1098#1077#1082#1090' '#1086#1073#1098#1077#1082#1090':'
      ExplicitWidth = 156
    end
    object lblQuantity: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 255
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      ExplicitWidth = 64
    end
    object lblQuantityValue: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 284
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = '-'
      ExplicitWidth = 4
    end
    object lblLinkType: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 197
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = #1058#1080#1087' '#1089#1074#1103#1079#1080':'
      ExplicitWidth = 53
    end
    object lblLinkTypeValue: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 226
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = '-'
      ExplicitWidth = 4
    end
    object lblVersionSet: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 313
      Width = 365
      Height = 13
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alTop
      Caption = #1057#1077#1084#1077#1081#1089#1090#1074#1086' '#1074#1077#1088#1089#1080#1081':'
      ExplicitWidth = 96
    end
    object mmoVersionSet: TMemo
      AlignWithMargins = True
      Left = 10
      Top = 342
      Width = 365
      Height = 47
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlBottom: TPanel
    AlignWithMargins = True
    Left = 0
    Top = 432
    Width = 898
    Height = 23
    Margins.Left = 0
    Margins.Top = 8
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object btnRefresh: TButton
      AlignWithMargins = True
      Left = 752
      Top = 0
      Width = 146
      Height = 23
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
      TabOrder = 0
      OnClick = btnRefreshClick
    end
  end
end
