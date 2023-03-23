unit Model.Conexao.API.Factory;

interface
uses Model.Conexao.API.Factory.Interfaces,
     Model.Conexao.API.ResRequest.Interfaces,
     Model.Conexao.API.ResRequest;

Type
  TModelConexaoApiFactory = class(TInterfacedObject,IModelConexaoApiFactoryInterface)
    private
      FRestRequest : IModelConexaoApiResquestInterface;
    public
      Constructor Create;
      Destructor Destroy; Override;
      class function New : IModelConexaoApiFactoryInterface;
      function RestRquest : IModelConexaoApiResquestInterface;
  end;

implementation

{ TModelConexaoApiFactoryInterface }

constructor TModelConexaoApiFactory.Create;
begin

end;

destructor TModelConexaoApiFactory.Destroy;
begin

  inherited;
end;

class function TModelConexaoApiFactory.New: IModelConexaoApiFactoryInterface;
begin
  Result := self.Create;
end;

function TModelConexaoApiFactory.RestRquest: IModelConexaoApiResquestInterface;
begin
  if not Assigned(FRestRequest) then
    FRestRequest := TModelConexaoApiResquest.New;
  Result := FRestRequest;
end;

end.
