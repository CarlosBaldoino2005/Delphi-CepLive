unit Model.Conexao.API.Builder;

interface

uses Model.Conexao.API.Builder.Interfaces,
     Model.Conexao.API.Factory.Interfaces,
     Model.Conexao.API.Factory;

Type
  TModelConexaoApiResquest = class (TInterfacedObject,IModelConexaoApiBuilderInterface)
    private
      FReturn : String;
      FCodeRetorno : Integer;
      FRestRequest : IModelConexaoApiFactoryInterface;
    public
      Constructor Create;
      Destructor Destroy; override;
      class function New : IModelConexaoApiBuilderInterface;
      function Get (aValue : String) : IModelConexaoApiBuilderInterface;
      function CodeRetorno : Integer;
      function Return : String;
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoApiResquest }

function TModelConexaoApiResquest.CodeRetorno: Integer;
begin
  Result := FCodeRetorno;
end;

constructor TModelConexaoApiResquest.Create;
begin
  FReturn := '';
  FCodeRetorno := -1;
end;

destructor TModelConexaoApiResquest.Destroy;
begin
  inherited;
end;

function TModelConexaoApiResquest.Get(
  aValue: String): IModelConexaoApiBuilderInterface;
begin
  Result := Self;
  try
    if not (Assigned(FRestRequest)) then
      FRestRequest := TModelConexaoApiFactory.New;
     FRestRequest.RestRquest.Get(aValue);

    FCodeRetorno := FRestRequest.RestRquest.CodeRetorno;
    if FCodeRetorno = 200 then
      FReturn := FRestRequest.RestRquest.Return
    else
      FReturn := 'Erro ao consultar CEP '+
                 ' Codigo do retorno:'+FRestRequest.RestRquest.CodeRetorno.ToString+
                 ' Mensagem: '+FRestRequest.RestRquest.Return;

  except on  E : Exception do
  begin
    FReturn := 'Erro ao consultar CEP: '+e.Message;
  end;
  end;
end;

class function TModelConexaoApiResquest.New: IModelConexaoApiBuilderInterface;
begin
  Result := self.Create;
end;

function TModelConexaoApiResquest.Return: String;
begin
  Result := FReturn;
end;

end.
