program Ceps;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {Form1},
  Model.Conexao.API.ResRequest.Interfaces in 'src\Model\Conexao\API\RestRequest\Model.Conexao.API.ResRequest.Interfaces.pas',
  Model.Conexao.API.ResRequest in 'src\Model\Conexao\API\RestRequest\Model.Conexao.API.ResRequest.pas',
  Model.Conexao.API.Factory.Interfaces in 'src\Model\Conexao\API\Model.Conexao.API.Factory.Interfaces.pas',
  Model.Conexao.API.Factory in 'src\Model\Conexao\API\Model.Conexao.API.Factory.pas',
  Model.Conexao.API.Builder.Interfaces in 'src\Model\Conexao\API\Model.Conexao.API.Builder.Interfaces.pas',
  Model.Conexao.API.Builder in 'src\Model\Conexao\API\Model.Conexao.API.Builder.pas',
  Model.Services.Cep.Interfaces in 'src\Model\Services\CEP\Model.Services.Cep.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
