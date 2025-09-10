object Form2: TForm2
  Left = 338
  Top = 22
  Width = 642
  Height = 615
  Caption = #1057#1087#1080#1089#1086#1082
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
  object Label1: TLabel
    Left = 408
    Top = 8
    Width = 65
    Height = 24
    Caption = #1060#1048#1054':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 400
    Top = 40
    Width = 77
    Height = 24
    Caption = #1051#1086#1075#1080#1085':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 384
    Top = 72
    Width = 90
    Height = 24
    Caption = #1055#1072#1088#1086#1083#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 408
    Top = 472
    Width = 65
    Height = 24
    Caption = #1060#1048#1054':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 400
    Top = 504
    Width = 77
    Height = 24
    Caption = #1051#1086#1075#1080#1085':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 384
    Top = 536
    Width = 90
    Height = 24
    Caption = #1055#1072#1088#1086#1083#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 536
    Top = 440
    Width = 73
    Height = 24
    Caption = #1055#1086#1080#1089#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Image1: TImage
    Left = 384
    Top = 184
    Width = 233
    Height = 217
    Center = True
    Proportional = True
    OnClick = Image1Click
  end
  object Label8: TLabel
    Left = 432
    Top = 152
    Width = 135
    Height = 24
    Caption = #1060#1086#1090#1086#1075#1088#1072#1092#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 488
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 488
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 488
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 384
    Top = 112
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 464
    Top = 112
    Width = 73
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 544
    Top = 112
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 5
    OnClick = Button3Click
  end
  object Edit4: TEdit
    Left = 480
    Top = 472
    Width = 129
    Height = 21
    TabOrder = 6
    OnChange = Edit4Change
  end
  object Edit5: TEdit
    Left = 480
    Top = 504
    Width = 129
    Height = 21
    TabOrder = 7
    OnChange = Edit5Change
  end
  object Edit6: TEdit
    Left = 480
    Top = 536
    Width = 129
    Height = 21
    TabOrder = 8
    OnChange = Edit6Change
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 361
    Height = 553
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Login'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pass'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date'
        Visible = True
      end>
  end
  object Button4: TButton
    Left = 384
    Top = 408
    Width = 75
    Height = 25
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 544
    Top = 408
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 11
    OnClick = Button5Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=ert.m' +
      'db;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:Sy' +
      'stem database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database P' +
      'assword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mo' +
      'de=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk T' +
      'ransactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Creat' +
      'e System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLE' +
      'DB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without ' +
      'Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'spisok'
    Left = 32
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 32
    Top = 104
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 536
    Top = 248
  end
end
