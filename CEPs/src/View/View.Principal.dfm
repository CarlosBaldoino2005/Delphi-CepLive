object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 316
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 41
    Width = 447
    Height = 275
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 40
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 104
    ExplicitTop = 152
    ExplicitWidth = 289
    object edtCep: TEdit
      Left = 8
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '88523-100'
    end
    object btnConsultar: TButton
      Left = 135
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 1
      OnClick = btnConsultarClick
    end
  end
end
