object F_Consulta: TF_Consulta
  Left = 367
  Top = 182
  Width = 587
  Height = 419
  Caption = 'U_Consulta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 136
    Top = 16
    Width = 297
    Height = 73
  end
  object Panel1: TPanel
    Left = 184
    Top = 32
    Width = 193
    Height = 41
    Caption = 'Consultas e Filtros'
    Color = cl3DLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -21
    Font.Name = 'Yu Gothic UI Semibold'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 104
    Width = 545
    Height = 120
    DataSource = DM.DataSource1
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 272
    Width = 257
    Height = 105
    Caption = 'Pesquisa'
    Items.Strings = (
      'Codigo'
      'Nome'
      'CPF'
      'CNPJ')
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 168
    Top = 232
    Width = 215
    Height = 25
    DataSource = DM.DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 128
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 4
    OnChange = Edit1Change
  end
end
