object Form1: TForm1
  Left = 191
  Top = 106
  Width = 942
  Height = 672
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 305
    Height = 565
    Align = alLeft
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Index'
        ReadOnly = True
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Char'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Width'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Height'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vertical'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unknown'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Number of chars'
    end
    object Label2: TLabel
      Left = 168
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Size of char data'
    end
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 84
      Height = 13
      Caption = 'Max width of char'
    end
    object Label4: TLabel
      Left = 168
      Top = 47
      Width = 88
      Height = 13
      Caption = 'Max height of char'
    end
    object Label5: TLabel
      Left = 544
      Top = 36
      Width = 78
      Height = 13
      Caption = 'Unknown long 1'
      Visible = False
    end
    object Label8: TLabel
      Left = 504
      Top = 36
      Width = 78
      Height = 13
      Caption = 'Unknown long 2'
      Visible = False
    end
    object Label7: TLabel
      Left = 352
      Top = 46
      Width = 76
      Height = 13
      Caption = 'Last char in font'
    end
    object Label6: TLabel
      Left = 352
      Top = 18
      Width = 75
      Height = 13
      Caption = 'First char in font'
    end
    object Edit1: TEdit
      Left = 112
      Top = 12
      Width = 41
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 264
      Top = 12
      Width = 65
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 112
      Top = 44
      Width = 41
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 264
      Top = 44
      Width = 33
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 504
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 4
      Visible = False
    end
    object Edit8: TEdit
      Left = 504
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 5
      Visible = False
    end
    object Edit7: TEdit
      Left = 432
      Top = 44
      Width = 49
      Height = 21
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 432
      Top = 12
      Width = 49
      Height = 21
      TabOrder = 7
    end
    object Button1: TButton
      Left = 496
      Top = 8
      Width = 75
      Height = 25
      Caption = 'LOAD'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 496
      Top = 40
      Width = 75
      Height = 25
      Caption = 'SAVE'
      TabOrder = 9
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 305
    Top = 73
    Width = 629
    Height = 565
    Align = alClient
    TabOrder = 2
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 33
      Width = 627
      Height = 531
      DisableThemes = True
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = True
      ControlType.Strings = (
        'p2;ImageIndex;Original Size'
        'p3;ImageIndex;Original Size'
        'p4;ImageIndex;Original Size'
        'p5;ImageIndex;Original Size'
        'p6;ImageIndex;Original Size'
        'p7;ImageIndex;Original Size'
        'p8;ImageIndex;Original Size'
        'p9;ImageIndex;Original Size'
        'p10;ImageIndex;Original Size'
        'p11;ImageIndex;Original Size'
        'p12;ImageIndex;Original Size'
        'p13;ImageIndex;Original Size'
        'p14;ImageIndex;Original Size'
        'p15;ImageIndex;Original Size'
        'p16;ImageIndex;Original Size'
        'p17;ImageIndex;Original Size'
        'p18;ImageIndex;Original Size'
        'p19;ImageIndex;Original Size'
        'p20;ImageIndex;Original Size'
        'p21;ImageIndex;Original Size'
        'p22;ImageIndex;Original Size'
        'p23;ImageIndex;Original Size'
        'p24;ImageIndex;Original Size'
        'p25;ImageIndex;Original Size'
        'p26;ImageIndex;Original Size'
        'p27;ImageIndex;Original Size'
        'p28;ImageIndex;Original Size'
        'p29;ImageIndex;Original Size'
        'p30;ImageIndex;Original Size'
        'p31;ImageIndex;Original Size'
        'p32;ImageIndex;Original Size'
        'p1;ImageIndex;Original Size')
      Selected.Strings = (
        'p1'#9'2'#9' '
        'p2'#9'2'#9' '
        'p3'#9'2'#9' '
        'p4'#9'2'#9' '
        'p5'#9'2'#9' '
        'p6'#9'2'#9' '
        'p7'#9'2'#9' '
        'p8'#9'2'#9' '
        'p9'#9'2'#9' '
        'p10'#9'2'#9' '
        'p11'#9'2'#9' '
        'p12'#9'2'#9' '
        'p13'#9'2'#9' '
        'p14'#9'2'#9' '
        'p15'#9'2'#9' '
        'p16'#9'2'#9' '
        'p17'#9'2'#9' '
        'p18'#9'2'#9' '
        'p19'#9'2'#9' '
        'p20'#9'2'#9' '
        'p21'#9'2'#9' '
        'p22'#9'2'#9' '
        'p23'#9'2'#9' '
        'p24'#9'2'#9' '
        'p25'#9'2'#9' '
        'p26'#9'2'#9' '
        'p27'#9'2'#9' '
        'p28'#9'2'#9' '
        'p29'#9'2'#9' '
        'p30'#9'2'#9' '
        'p31'#9'2'#9' '
        'p32'#9'2'#9' ')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      Ctl3D = False
      DataSource = dsPicture
      Options = [dgEditing, dgAlwaysShowEditor, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentCtl3D = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      LineColors.DataColor = clGray
      LineColors.HighlightColor = clGray
      LineColors.ShadowColor = clGray
      LineColors.FixedColor = clGray
      OnCalcCellColors = wwDBGrid1CalcCellColors
      OnMouseUp = wwDBGrid1MouseUp
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 627
      Height = 32
      Align = alTop
      TabOrder = 1
      object Label9: TLabel
        Left = 40
        Top = 9
        Width = 61
        Height = 13
        Caption = 'CTRL-CLICK'
      end
      object Label10: TLabel
        Left = 160
        Top = 10
        Width = 64
        Height = 13
        Caption = 'SHIFT-CLICK'
      end
      object Label11: TLabel
        Left = 272
        Top = 10
        Width = 30
        Height = 13
        Caption = 'CLICK'
      end
      object Panel4: TPanel
        Left = 8
        Top = 8
        Width = 25
        Height = 17
        Color = clWhite
        TabOrder = 0
        OnClick = Panel4Click
      end
      object Panel5: TPanel
        Left = 128
        Top = 8
        Width = 25
        Height = 17
        Color = clSilver
        TabOrder = 1
        OnClick = Panel5Click
      end
      object Panel6: TPanel
        Left = 240
        Top = 8
        Width = 25
        Height = 17
        Color = clBlack
        TabOrder = 2
        OnClick = Panel6Click
      end
      object Button3: TButton
        Left = 312
        Top = 4
        Width = 75
        Height = 25
        Caption = 'New Column'
        TabOrder = 3
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 392
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Delete Column'
        TabOrder = 4
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 474
        Top = 4
        Width = 75
        Height = 25
        Caption = 'New Row'
        TabOrder = 5
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 554
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Delete Row'
        TabOrder = 6
        OnClick = Button6Click
      end
    end
  end
  object cds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'index'
    Params = <>
    AfterScroll = cdsAfterScroll
    Left = 688
    Top = 160
    Data = {
      B00000009619E0BD010000001800000009000000000003000000B00005496E64
      6578040001000000000004436861720100490000000100055749445448020002
      000100064F666673657404000100000000000557696474680400010000000000
      06486569676874040001000000000008566572746963616C0400010000000000
      07556E6B6E6F776E040001000000000008556E6B6E6F776E3304000100000000
      0008556E6B6E6F776E3204000100000000000000}
    object cdsIndex: TIntegerField
      FieldName = 'Index'
    end
    object cdsChar: TStringField
      DisplayWidth = 10
      FieldName = 'Char'
      Size = 1
    end
    object cdsOffset: TIntegerField
      FieldName = 'Offset'
    end
    object cdsWidth: TIntegerField
      FieldName = 'Width'
    end
    object cdsHeight: TIntegerField
      FieldName = 'Height'
    end
    object cdsVertical: TIntegerField
      FieldName = 'Vertical'
    end
    object cdsUnknown: TIntegerField
      FieldName = 'Unknown'
    end
    object cdsUnknown3: TIntegerField
      FieldName = 'Unknown3'
    end
    object cdsUnknown2: TIntegerField
      FieldName = 'Unknown2'
    end
  end
  object DataSource1: TDataSource
    DataSet = cds
    Left = 688
    Top = 200
  end
  object cdsPicture: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Order'
    Params = <>
    Left = 633
    Top = 161
    Data = {
      AD0100009619E0BD010000001800000022000000000003000000AD0102703104
      0001000000000002703204000100000000000270330400010000000000027034
      0400010000000000027035040001000000000002703604000100000000000270
      3704000100000000000270380400010000000000027039040001000000000003
      7031300400010000000000037031310400010000000000037031320400010000
      0000000370313304000100000000000370313404000100000000000370313504
      0001000000000003703136040001000000000003703137040001000000000003
      7031380400010000000000037031390400010000000000037032300400010000
      0000000370323104000100000000000370323204000100000000000370323304
      0001000000000003703234040001000000000003703235040001000000000003
      7032360400010000000000037032370400010000000000037032380400010000
      0000000370323904000100000000000370333004000100000000000370333104
      0001000000000003703332040001000000000005496E64657804000100000000
      00054F7264657204000100000000000000}
    object cdsPicturep1: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p1'
    end
    object cdsPicturep2: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p2'
    end
    object cdsPicturep3: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p3'
    end
    object cdsPicturep4: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p4'
    end
    object cdsPicturep5: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p5'
    end
    object cdsPicturep6: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p6'
    end
    object cdsPicturep7: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p7'
    end
    object cdsPicturep8: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p8'
    end
    object cdsPicturep9: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p9'
    end
    object cdsPicturep10: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p10'
    end
    object cdsPicturep11: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p11'
    end
    object cdsPicturep12: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p12'
    end
    object cdsPicturep13: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p13'
    end
    object cdsPicturep14: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p14'
    end
    object cdsPicturep15: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p15'
    end
    object cdsPicturep16: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p16'
    end
    object cdsPicturep17: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p17'
    end
    object cdsPicturep18: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p18'
    end
    object cdsPicturep19: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p19'
    end
    object cdsPicturep20: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p20'
    end
    object cdsPicturep21: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p21'
    end
    object cdsPicturep22: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p22'
    end
    object cdsPicturep23: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p23'
    end
    object cdsPicturep24: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p24'
    end
    object cdsPicturep25: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p25'
    end
    object cdsPicturep26: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p26'
    end
    object cdsPicturep27: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p27'
    end
    object cdsPicturep28: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p28'
    end
    object cdsPicturep29: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p29'
    end
    object cdsPicturep30: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p30'
    end
    object cdsPicturep31: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p31'
    end
    object cdsPicturep32: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'p32'
    end
    object cdsPictureIndex: TIntegerField
      DisplayWidth = 10
      FieldName = 'Index'
      Visible = False
    end
    object cdsPictureOrder: TIntegerField
      FieldName = 'Order'
      Visible = False
    end
  end
  object dsPicture: TDataSource
    DataSet = cdsPicture
    Left = 633
    Top = 201
  end
  object OpenDialog1: TOpenDialog
    Left = 680
    Top = 16
  end
end
