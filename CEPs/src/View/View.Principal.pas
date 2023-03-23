unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    edtCep: TEdit;
    btnConsultar: TButton;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Model.Conexao.API.Builder.Interfaces,
     Model.Conexao.API.Builder;

{$R *.dfm}

procedure TForm1.btnConsultarClick(Sender: TObject);
begin
  ShowMessage(TModelConexaoApiResquest.New.Get('https://ws.apicep.com/cep/'+ edtCep.Text +'.json').Return);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
