object frmSetResume: TfrmSetResume
  Left = 294
  Top = 72
  Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1103
  ClientHeight = 436
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 34
    Width = 442
    Height = 399
    Margins.Top = 0
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    ExplicitLeft = 0
    ExplicitTop = 28
    ExplicitWidth = 448
    ExplicitHeight = 408
    object TVTREE: TcxGridDBTableView
      OnDblClick = TVTREEDblClick
      OnKeyDown = TVTREEKeyDown
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = TVTREEFocusedRecordChanged
      DataController.DataSource = dsTree
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      OptionsView.Indicator = True
      object TVIMAGE: TcxGridDBColumn
        Caption = '_'
        DataBinding.FieldName = 'COUNTCHILD'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = IL2
        Properties.Items = <
          item
            Value = 0
          end
          item
            ImageIndex = 1
            Value = 1
          end>
        Width = 25
      end
      object TVFC_NAME: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
        DataBinding.FieldName = 'FC_NAME'
        Width = 775
      end
      object TVFK_OWNER: TcxGridDBColumn
        DataBinding.FieldName = 'FK_OWNER'
        Visible = False
        Width = 64
      end
      object VTREEColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTCHILD'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = TVTREE
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 442
    Height = 28
    Align = dalTop
    BarManager = BM
    SunkenBorder = True
    UseOwnSunkenBorder = True
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 448
  end
  object dsTree: TDataSource
    DataSet = odsTree
    Left = 136
    Top = 80
  end
  object odsTree: TOracleDataSet
    SQL.Strings = (
      'SELECT -2 AS FK_ID, '
      '       '#39'...'#39' AS FC_NAME, '
      '       (SELECT DISTINCT FK_OWNER '
      '          FROM TSHABLON_XRAY_ZAKL'
      '         WHERE FK_OWNER = :PFK_OWNER) FK_OWNER, '
      '       0 AS COUNTCHILD '
      'FROM DUAL'
      ''
      'UNION ALL'
      ''
      'SELECT SHA.FK_ID, '
      '       SHA.FC_NAME, '
      '       SHA.FK_OWNER, '
      
        '       DECODE((SELECT COUNT(FK_ID) FROM TSHABLON_XRAY_ZAKL WHERE' +
        ' FK_OWNER = SHA.FK_ID), 0, 0, 1) AS COUNTCHILD '
      '  FROM ASU.TSHABLON_XRAY_ZAKL SHA'
      ' WHERE SHA.FK_OWNER = :PFK_OWNER'
      '   AND SHA.FK_KABINETID = :PFK_KABINETID'
      'ORDER BY FK_ID'
      '')
    Optimize = False
    Variables.Data = {
      03000000020000000A0000003A50464B5F4F574E455203000000040000000000
      0000000000000E0000003A50464B5F4B4142494E455449440300000000000000
      00000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000005000000464B5F49440100000000000700000046435F4E41
      4D4501000000000008000000464B5F4F574E45520100000000000A000000434F
      554E544348494C44010000000000}
    Cursor = crSQLWait
    Session = frmMain.os
    BeforeOpen = odsTreeBeforeOpen
    Left = 176
    Top = 80
    object odsTreeFK_ID: TFloatField
      FieldName = 'FK_ID'
      Required = True
    end
    object odsTreeFC_NAME: TStringField
      FieldName = 'FC_NAME'
      Size = 1000
    end
    object odsTreeFK_OWNER: TFloatField
      FieldName = 'FK_OWNER'
    end
    object odsTreeCOUNTCHILD: TFloatField
      FieldName = 'COUNTCHILD'
    end
  end
  object IL2: TImageList
    Left = 56
    Top = 128
    Bitmap = {
      494C010102000400080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCD1
      C7FF00000000000000000000000000000000EFE8E1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3A17FFE9E63
      2AFFC4B3A2FF0000000000000000F2EAE3FFAA7643FF885D32FE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1B69CFFA0662DFFA065
      2CFF9C6129FFC4B2A1FFFAF8F6FFAE7C4CFEA0652CFF9F642BFF8D633BFE0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BE9772FEA065
      2CFFA0652CFF9D6229FFC4B3A2FFEADDD2FFA66F3AFFA0652CFF9F652CFF875B
      30FE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD96
      71FE9F642BFFA0652CFF9C6129FFC4B3A2FFE5D7C9FFA66F39FFA0652CFF9F65
      2BFF8E643CFE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD9772FEA0652CFFA0652CFF9D6229FFC4B2A1FFE9DDD2FFA66F3AFFA065
      2CFFA0652CFF875B30FE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BE9872FEA0652BFFA0652CFF9C6129FFC4B2A1FFE5D7C9FFA66F
      3AFFA0652CFF9F642BFF8E633BFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8DCD0FFA46B34FFA0652CFF9D6229FFB6A08BFFFDFCFBFFB384
      57FEA0652CFF9F642BFF895B2FFE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6D9CBFFA6703BFFA0652CFF9E632AFFB7A18BFF00000000B18255FE9F64
      2BFFA0652BFF87572AFE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7DA
      CEFFA7703BFFA0652CFF9D6229FFB7A18CFFFDFCFBFFB28357FEA0652CFF9F64
      2BFF8A5C31FE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6D8CBFFA770
      3BFFA0652CFF9E632AFFB7A18BFF00000000B18355FE9F642BFF9F642BFF8757
      2AFE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2EBE4FFA7703BFFA065
      2CFF9D6229FFB7A08BFF00000000B38659FEA0652CFFA0652BFF8A5B2FFE0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BE9975FE9E63
      2AFFB7A18BFF0000000000000000EADED2FFA7713CFF87582BFE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0C1
      B3FF00000000000000000000000000000000EAE1D8FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFEF7F00000000
      FFFFC63F00000000FFFF801F00000000FFFFC00F00000000FFFFE00700000000
      FFFFF00300000000FFFFF80100000000FFFFF80100000000FFFFF04300000000
      FFFFE00700000000FFFFC10F00000000FFFF821F00000000FFFFC63F00000000
      FFFFEF7F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object BM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = IL
    LookAndFeel.Kind = lfFlat
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 16
    Top = 80
    DockControlHeights = (
      0
      0
      0
      0)
    object BMBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Main'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 404
      FloatTop = 232
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSet'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbAdd'
        end
        item
          Visible = True
          ItemName = 'bbEdit'
        end
        item
          Visible = True
          ItemName = 'bbAddChild'
        end
        item
          Visible = True
          ItemName = 'bbDel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClose'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'Main'
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bbClose: TdxBarButton
      Action = aClose
      Category = 0
    end
    object bbSet: TdxBarButton
      Action = aSet
      Category = 0
    end
    object bbAdd: TdxBarButton
      Action = aAdd
      Category = 0
    end
    object bbEdit: TdxBarButton
      Action = aEdit
      Category = 0
    end
    object bbAddChild: TdxBarButton
      Action = aAddChild
      Category = 0
    end
    object bbRefresh: TdxBarButton
      Action = aRefresh
      Category = 0
    end
    object bbDel: TdxBarButton
      Action = aDel
      Category = 0
    end
  end
  object al: TActionList
    Images = IL
    Left = 16
    Top = 128
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1092#1086#1088#1084#1091' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1081
      ImageIndex = 3
      ShortCut = 27
      OnExecute = aCloseExecute
    end
    object aSet: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Hint = #1042#1099#1073#1088#1072#1090#1100
      ImageIndex = 6
      ShortCut = 113
      OnExecute = aSetExecute
    end
    object aAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1086#1077' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1077
      ImageIndex = 0
      ShortCut = 115
      OnExecute = aAddExecute
    end
    object aEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 2
      ShortCut = 114
      OnExecute = aEditExecute
    end
    object aAddChild: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1076#1091#1088#1086#1074#1077#1085#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1076#1091#1088#1086#1074#1077#1085#1100
      ImageIndex = 1
      ShortCut = 117
      OnExecute = aAddChildExecute
    end
    object aDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Enabled = False
      Hint = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 4
      ShortCut = 119
      Visible = False
      OnExecute = aDelExecute
    end
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1081
      ImageIndex = 5
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
  end
  object IL: TImageList
    Left = 56
    Top = 80
    Bitmap = {
      494C010107000C00080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCE8400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000008484
      84008484840084848400FFCE8400FF0000008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000008484
      840000000000000000000000000000000000000000000000000084848400FF00
      0000FF000000FF000000FF000000FF000000FF00000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000008484
      84000000000000000000000000000000000000000000FFDEAD00FF000000FF00
      0000FFCE8400FFCE8400FF000000FF000000FF000000FF000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000008484
      840000000000000000000000000000000000FFDEAD00FF000000FF000000FF00
      00000000000000000000FFCE8400FF000000FF00000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000000000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000008484
      840000000000000000000000000000000000FFDEAD00FF000000848484000000
      00000000000000000000FFCE8400FF000000848484000000000000000000FF00
      0000848484000000000000000000000000000000000000000000000000000080
      0000008000000080000000800000000000000000000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000008484
      840000000000000000000000000000000000FFDEAD00FF000000848484000000
      00000000000000000000FFCE840084848400000000000000000000000000FFCE
      8400FF0000008484840000000000000000000000000000000000008000000080
      0000008000000080000000000000000000000000000000000000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000000000084848400000000008484
      840000000000000000000000000000000000FFDEAD00FF000000848484000000
      000000000000000000000000000000000000000000000000000000000000FFCE
      8400FF0000008484840000000000000000000000000000000000008000000080
      0000008000000000000000000000000000000000000000000000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000008484
      840000000000000000000000000000000000FFDEAD00FF000000848484000000
      00000000000000000000FF00000084848400000000000000000000000000FFCE
      8400FF0000008484840000000000000000000000000000000000008000000080
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400848484008484
      84000000000000000000000000000000000000000000FFA5A500FF0000000000
      000000000000FF000000FF000000848484000000000000000000FF000000FF00
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000848484008484840084848400FF000000FF00
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      840000000000000000000000000000000000000000000000000000000000FFCE
      8400FF000000FF000000FF000000FF000000FF000000FF000000FF0000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000FFCE8400FF000000FF000000FFCE8400FFCE8400FFCE8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFCE8400FF000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFCE8400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      000000000000000000000000000000000000000000000000000092635D00A467
      6900A4676900A4676900A4676900A4676900A4676900A4676900A4676900A467
      6900A4676900A4676900A4676900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824B4B004E1E1F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400848484008484840084848400C6C6C6000000
      000000000000000000000000000000000000000000000000000093655F00F2D8
      B000F2D7AD00F0D3A500EFD1A300EFCE9C00EECC9900EDCA9300EEC99100EBC5
      8B00EBC48900EBC286009F6F60000000000000000000838582007A7B79007071
      6F006C6D6B005151510000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000824B
      4B00824B4B009C4B4C00B64B4C009F4B4C004E1E1F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60084848400008400000084000084848400C6C6C6000000
      000000000000000000000000000000000000000000000000000093655F00F3DA
      B60000810000F2D5AA00F0D4A700811E0000811E0000811E0000811E0000811E
      0000811E0000EDC488009F6F60000000000000000000878A8600878A86000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B009A4D
      4E00AF4E4F00C04D4E00BF4C4D009F4B4C004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B00000000000000000000000000000000000000
      000000000000C6C6C60084848400008400000084000084848400C6C6C6000000
      000000000000000000000000000000000000000000000000000065444100A798
      8100A6977F00A5957B00A5937900A5907200A5907200A48F6D00A38C6A00A18A
      6600A1896500A18860006C4C4100000000000000000000000000A0C6DC004472
      9D0020416B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00CC57
      5800CB565700C9545500C7535400A34E4F004E1E1F001EBC4C001EBC4C001EBC
      4C001EBC4C00F7B5B600824B4B00000000000000000000000000000000000000
      000000000000C6C6C60084848400008400000084000084848400C6C6C6000000
      00000000000000000000000000000000000000000000004B0000004B0000004B
      0000004B0000004B0000004B0000004B0000004B0000004B0000004B0000004B
      0000004B0000004B0000004B0000004B000000000000000000006F9BC0006F9B
      C00043729D005A86970000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00D05A
      5B00CF595A00CC575800CB565700A55050004E1E1F001EBC4C001EBC4C001EBC
      4C001EBC4C00F7B5B600824B4B0000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084848400008400000084000084848400C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000009E6E6400F7E6
      CE00004B0000F6E2C200F4E0BF00004B0000004B0000004B0000004B0000004B
      0000004B0000EECC99009F6F6000004B00000000000000000000000000007DE3
      FC002FD4FD0039B5D8005A869700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00D962
      6300D8606200D55E5F00D45D5E00A95354004E1E1F001EBC4C001EBC4C001EBC
      4C001EBC4C00F7B5B600824B4B0000000000C6C6C60084848400848484008484
      8400848484008484840084848400008400000084000084848400848484008484
      8400848484008484840084848400C6C6C6000000000000000000A3726600F8EA
      D300004B0000F6E3C600F6E1C400F4DEBC00F4DCB800F2D8B000F2D7AD00F0D3
      A600F0D1A500EFCE9C009F6F6000004B000000000000000000000000000039B5
      D8002FD4FD002FD4FD0039B5D8005A8697000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00DD65
      6600DC646500D9626300D8606200AB5555004E1E1F001EBC4C001EBC4C001EBC
      4C001EBC4C00F7B5B600824B4B0000000000C6C6C60000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000840000C6C6C60000000000004B0000004B00000049
      000000490000004B0000004B0000004B0000004B0000004B0000004B0000004B
      0000004B0000004B0000004B0000004B00000000000000000000000000000000
      0000000000002FD4FD002FD4FD0039B5D800229BC10000000000000000000000
      0000000000000000000000000000000000000000000000000000824B4B00E66C
      6D00E56B6C00EEA6A700FFFFFF00AF5859004E1E1F00B7EBAA005ED3770045CA
      670045CA6700F7B5B600824B4B000000000000FF000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000008400000084000000FF00000000000000000000A7776600D4CC
      BF00D4CABB00EBE0CA00F4E6CF00F7E5CA00F6E3C600F4E0C000F4DEBC00F3DC
      B500F3D9B200F0D5AA00A0726400000000000000000000000000000000000000
      00000000000039B5D8007DE3FC0014CDFD0039B5D8005A869700000000000000
      0000000000000000000000000000000000000000000000000000824B4B00EA6F
      7000E96E6F00F2A9AA00FFFFFF00B15A5A004E1E1F00FFFFD300FFFFD300FFFF
      D300D9F6BD00F7B5B600824B4B000000000000FF000000840000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      000000840000008400000084000000FF00000000000000000000004B0000004B
      0000004B0000CEC5B600E7DCCB00F6E7D000F6E7D000F7E5CA00F6E3C600F4E0
      BF00F3DEBB00F3D9B400A0726400000000000000000000000000000000000000
      0000000000000000000039B5D8007DE3FC002FD4FD0039B5D8005A8697000000
      0000000000000000000000000000000000000000000000000000824B4B00F377
      7800F2767700EF747500EE737400B55D5D004E1E1F00FFFFD300FFFFD300FFFF
      D300FFFFD300F7B5B600824B4B000000000000FF000000FF000000FF000000FF
      000000FF000000FF00000084000000840000008400000084000000FF000000FF
      000000FF000000FF000000FF000000FF00000000000000000000004B00000690
      0E00004B0000B8B0A600CEC5B800EBE1CE00F6E9D300F7E6CE00F7E6CB00F6E1
      C400F6E1C100F3DDB800A0726400000000000000000000000000000000000000
      000000000000000000000000000039B5D8002FD4FD002FD4FD0039B5D8005A86
      9700000000000000000000000000000000000000000000000000824B4B00F77A
      7B00F6797A00F3777800F2767700B75F5F004E1E1F00FFFFD300FFFFD300FFFF
      D300FFFFD300F7B5B600824B4B00000000000000000000000000000000000000
      00000000000000FF00000084000000840000008400000084000000FF00000000
      000000000000000000000000000000000000004B0000004B0000004B00000EA1
      1D00004B0000004B0000004B0000D5CCC100F0E6D700FAEDD800F8EAD400F7E6
      CC00F7E5CA00F6E1C100A0726400000000000000000000000000000000000000
      000000000000000000000000000000000000000000002FD4FD00ABCAD3008989
      8900636364000000000000000000000000000000000000000000824B4B00FF81
      8200FE808100FC7F8000FB7E7F00BB6363004E1E1F00FFFFD300FFFFD300FFFF
      D300FFFFD300F7B5B600824B4B00000000000000000000000000000000000000
      00000000000000FF00000084000000840000008400000084000000FF00000000
      000000000000000000000000000000000000004B000020C140001CBA380014AC
      290011A522000A9A1700004B00006E1900007D1D0000811E0000811E0000811E
      0000811E0000F6E3C600A0726400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000039B5D800D0D6D700B9B8
      B90071727E001108750000000000000000000000000000000000824B4B00FF81
      8200FF818200FF818200FE808100BD6565004E1E1F00FFFFD300FFFFD300FFFF
      D300FFFFD300F7B5B600824B4B00000000000000000000000000000000000000
      00000000000000FF00000084000000840000008400000084000000FF00000000
      000000000000000000000000000000000000004B0000004B0000004B000022C4
      4300004B0000004B0000004B0000EFEAE200FAF3E900FBF2E500FBF2E300FAEE
      DA00F8EBD800F6E7D000A0726400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0AFAF007E99
      DC00455FC400212D9A0000000000000000000000000000000000824B4B00AF5E
      5F00D56F7000FF818200FF818200BF6666004E1E1F00FFFFD300FFFFD300FFFF
      D300FFFFD300F7B5B600824B4B00000000000000000000000000000000000000
      00000000000000FF00000084000000840000008400000084000000FF00000000
      0000000000000000000000000000000000000000000000000000004B000029CF
      5200004B0000D0CFCC00EBE9E500FBF6EF00FBF6EF00FCF4E900FBF2E600FBEF
      E000FAEFDD00F8EAD400A0726400000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000455F
      C400708AD500000000000000000000000000000000000000000000000000824B
      4B00824B4B00B6626300EE7A7B00BF6666004E1E1F00824B4B00824B4B00824B
      4B00824B4B00824B4B00824B4B00000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000004B0000004B
      0000004B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000824B4B004E1E1F0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000C007FC7FFF7F0000
      DE07E03FFE3F0000D407C01FFC3F0000D407801FF81F0000D4070C3FF09F0000
      D4071C67E18F0000D4071CE3C3CF0000D4071FE3C7C70000D5071CE3CFE70000
      DF8798C7FFE30000C007F007FFF30000DF07E00FFFF10000C007F03FFFF90000
      FC7FF8FFFFF90000FFFFFCFFFFFF0000F81FC001FFFFFE7FF81FC00183FFE07F
      F81FC0019FFFC001F81FC001C7FFC001F81F8000C3FFC0010000C000E1FFC001
      0000C000E0FFC00100008000F87FC0010000C001F83FC0010000C001FC1FC001
      0000C001FE0FC001F81F0001FF87C001F81F0001FF83C001F81F0001FFC3C001
      F81FC001FFE7E001F81FC7FFFFFFFE7F00000000000000000000000000000000
      000000000000}
  end
end