object frmActionSelector: TfrmActionSelector
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1042#1099#1073#1086#1088' '#1082#1086#1084#1072#1085#1076#1099
  ClientHeight = 277
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmActions
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    486
    277)
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancel: TButton
    Left = 403
    Top = 244
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 2
    TabOrder = 0
    ExplicitLeft = 553
    ExplicitTop = 182
  end
  object pnl1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 480
    Height = 233
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1086#1089#1090#1091#1087#1085#1091#1102' '#1082#1086#1084#1072#1085#1076#1091' '#1074' '#1075#1083#1072#1074#1085#1086#1084' '#1084#1077#1085#1102
    Color = clInfoBk
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 381
    ExplicitHeight = 164
  end
  object ActionList1: TActionList
    Left = 407
    Top = 18
    object acCut: TAction
      Tag = 6
      Category = #1041#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      Caption = 'acCut'
      OnExecute = RUNCOMMAND
    end
    object actCopy: TAction
      Tag = 7
      Category = #1041#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      Caption = 'actCopy'
      OnExecute = RUNCOMMAND
    end
    object actPaste: TAction
      Tag = 8
      Category = #1041#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      Caption = 'actPaste'
      OnExecute = RUNCOMMAND
    end
    object actProperties: TAction
      Tag = 1
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actProperties'
    end
    object actRefresh: TAction
      Tag = 2
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actRefresh'
    end
    object actAddToFavorites: TAction
      Tag = 3
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actAddToFavorites'
    end
    object actOpen: TAction
      Tag = 4
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actOpen'
    end
    object actGoto: TAction
      Tag = 5
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actGoto'
    end
    object actUnlock: TAction
      Tag = 9
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actUnlock'
    end
    object actCheckout: TAction
      Tag = 10
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actCheckout'
    end
    object actDelete: TAction
      Tag = 11
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actDelete'
    end
    object actCreateObject: TAction
      Tag = 12
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = 'actCreateObject'
    end
    object actCreateProject: TAction
      Tag = 13
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = 'actCreateProject'
    end
    object actCreateVersion: TAction
      Tag = 14
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = 'actCreateVersion'
    end
    object actCreateCopy: TAction
      Tag = 15
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = 'actCreateCopy'
    end
    object actCreateRoute: TAction
      Tag = 16
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = 'actCreateRoute'
    end
    object actCopyLink: TAction
      Tag = 17
      Category = #1057#1089#1099#1083#1082#1080
      Caption = 'actCopyLink'
    end
    object actSign: TAction
      Tag = 30
      Category = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1076#1087#1080#1089#1100
      Caption = 'actSign'
    end
    object actVerifySign: TAction
      Tag = 31
      Category = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1076#1087#1080#1089#1100
      Caption = 'actVerifySign'
    end
    object actCopyHyperlink: TAction
      Tag = 18
      Category = #1057#1089#1099#1083#1082#1080
      Caption = 'actCopyHyperlink'
    end
    object actSelectAll: TAction
      Tag = 24
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actSelectAll'
    end
    object actCreateTask: TAction
      Tag = 40
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = 'actCreateTask'
    end
    object actObjAccess: TAction
      Tag = 43
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actObjAccess'
    end
    object actCreateMail: TAction
      Tag = 44
      Category = #1057#1086#1079#1076#1072#1090#1100
      Caption = 'actCreateMail'
    end
    object actGotoChildNode: TAction
      Tag = 100
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actGotoChildNode'
    end
    object actRefreshParent: TAction
      Tag = 102
      Category = #1054#1073#1098#1077#1082#1090
      Caption = 'actRefreshParent'
    end
    object actReports: TAction
      Tag = 2000
      Category = #1056#1072#1079#1085#1086#1077
      Caption = 'actReports'
    end
    object actDSSign: TAction
      Tag = 2001
      Category = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1076#1087#1080#1089#1100
      Caption = 'actDSSign'
    end
    object actDSVerify: TAction
      Tag = 2002
      Category = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1076#1087#1080#1089#1100
      Caption = 'actDSVerify'
    end
    object actDSVerifyGroup: TAction
      Tag = 2003
      Category = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1076#1087#1080#1089#1100
      Caption = 'actDSVerifyGroup'
    end
    object actDSExportSign: TAction
      Tag = 2004
      Category = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1076#1087#1080#1089#1100
      Caption = 'actDSExportSign'
    end
    object actFavoriteSettings: TAction
      Tag = 515
      Category = #1056#1072#1079#1085#1086#1077
      Caption = 'actFavoriteSettings'
    end
  end
  object mmActions: TMainMenu
    Left = 368
    Top = 18
    object miN2: TMenuItem
      Caption = #1054#1073#1098#1077#1082#1090
      object miProperties: TMenuItem
        Action = actProperties
      end
      object miObjAccess: TMenuItem
        Action = actObjAccess
      end
      object miDelete: TMenuItem
        Action = actDelete
      end
      object miN6: TMenuItem
        Caption = '-'
      end
      object miRefresh: TMenuItem
        Action = actRefresh
      end
      object miRefreshParent: TMenuItem
        Action = actRefreshParent
      end
      object miSelectAll: TMenuItem
        Action = actSelectAll
      end
      object miAddToFavorites: TMenuItem
        Action = actAddToFavorites
      end
      object miN7: TMenuItem
        Caption = '-'
      end
      object miOpen: TMenuItem
        Action = actOpen
      end
      object miGoto: TMenuItem
        Action = actGoto
      end
      object miGotoChildNode: TMenuItem
        Action = actGotoChildNode
      end
      object miN3: TMenuItem
        Caption = '-'
      end
      object miUnlock: TMenuItem
        Action = actUnlock
      end
      object miCheckout: TMenuItem
        Action = actCheckout
      end
    end
    object miN1: TMenuItem
      Caption = #1041#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      object miCopy: TMenuItem
        Action = actCopy
      end
      object miPaste: TMenuItem
        Action = actPaste
      end
      object miacCut: TMenuItem
        Action = acCut
      end
    end
    object miN5: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100
      object miCreateObject: TMenuItem
        Action = actCreateObject
      end
      object miCreateProject: TMenuItem
        Action = actCreateProject
      end
      object miCreateVersion: TMenuItem
        Action = actCreateVersion
      end
      object miCreateCopy1: TMenuItem
        Action = actCreateCopy
      end
      object miN8: TMenuItem
        Caption = '-'
      end
      object miCreateRoute: TMenuItem
        Action = actCreateRoute
      end
      object miCreateMail: TMenuItem
        Action = actCreateMail
      end
      object miCreateCopy: TMenuItem
        Action = actCreateTask
      end
    end
    object miN4: TMenuItem
      Caption = #1056#1072#1079#1085#1086#1077
      object miReports: TMenuItem
        Action = actReports
      end
      object miFavoriteSettings: TMenuItem
        Action = actFavoriteSettings
      end
    end
    object miN9: TMenuItem
      Caption = #1057#1089#1099#1083#1082#1080
      object miCopyLink: TMenuItem
        Action = actCopyLink
      end
      object miCopyHyperlink: TMenuItem
        Action = actCopyHyperlink
      end
    end
    object miN10: TMenuItem
      Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1076#1087#1080#1089#1100
      object miDSSign: TMenuItem
        Action = actDSSign
      end
      object miDSVerify: TMenuItem
        Action = actDSVerify
      end
      object miDSVerifyGroup: TMenuItem
        Action = actDSVerifyGroup
      end
    end
  end
end
