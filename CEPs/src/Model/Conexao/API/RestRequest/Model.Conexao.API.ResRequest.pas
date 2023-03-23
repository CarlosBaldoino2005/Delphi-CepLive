unit Model.Conexao.API.ResRequest;

interface

uses Model.Conexao.API.ResRequest.Interfaces,
     RESTRequest4D;

Type
  TModelConexaoApiResquest = class (TInterfacedObject,IModelConexaoApiResquestInterface)
    private
      FReturn : String;
      FCodeRetorno : Integer;
    public
      Constructor Create;
      Destructor Destroy; override;
      class function New : IModelConexaoApiResquestInterface;
      function Get (aValue : String) : IModelConexaoApiResquestInterface;
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
  aValue: String): IModelConexaoApiResquestInterface;
Var FResponse: IResponse;
begin
  Result := Self;
  try
    FResponse := TRequest.New.BaseURL(aValue)
      .Accept('application/json')
      .Get;
    FCodeRetorno := FResponse.StatusCode;
    if FResponse.StatusCode = 200 then
      FReturn := FResponse.Content
    else
      FReturn := 'Erro ao consultar CEP '+
                 ' Codigo do retorno:'+FResponse.StatusCode.ToString+
                 ' Mensagem: '+FResponse.Content;

  except on  E : Exception do
  begin
    FReturn := 'Erro ao consultar CEP: '+e.Message;
  end;
  end;
end;

class function TModelConexaoApiResquest.New: IModelConexaoApiResquestInterface;
begin
  Result := self.Create;
end;

function TModelConexaoApiResquest.Return: String;
begin
  Result := FReturn;
end;

end.
