object Form1: TForm1
  Left = 203
  Top = 131
  Width = 235
  Height = 526
  Caption = 'Form1'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 144
    Top = 448
    Width = 36
    Height = 24
    Caption = 'Jack'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Jokerman'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 185
    Height = 113
    Caption = 'Description'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 168
      Height = 24
      Caption = 'Input otomatis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 48
      Width = 80
      Height = 22
      Caption = '(Single)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 80
      Width = 168
      Height = 15
      Caption = '(isi 0 dan isikan nilai)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 360
    Width = 185
    Height = 81
    TabOrder = 1
    object Label3: TLabel
      Left = 33
      Top = 16
      Width = 120
      Height = 24
      Caption = '1210962025'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 48
      Width = 140
      Height = 22
      Caption = 'Hidayat Riva'#39'i'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 128
    Width = 185
    Height = 225
    TabOrder = 2
    object Edit1: TEdit
      Left = 32
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object ListBox1: TListBox
      Left = 32
      Top = 80
      Width = 121
      Height = 97
      ItemHeight = 13
      TabOrder = 1
    end
    object Input: TButton
      Left = 56
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Input'
      TabOrder = 2
      OnClick = InputClick
    end
    object Nilai: TButton
      Left = 56
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Nilai'
      Enabled = False
      TabOrder = 3
      OnClick = NilaiClick
    end
  end
end
