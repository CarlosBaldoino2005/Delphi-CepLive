unit Model.Conexao.API.Factory.Interfaces;

interface

uses Model.Conexao.API.ResRequest.Interfaces;

type
  IModelConexaoApiFactoryInterface = interface
    ['{9891F317-75EE-479B-A322-FB2235AAB811}']
    function RestRquest : IModelConexaoApiResquestInterface;
  end;

implementation


end.
