unit DFeFactoryModel;

interface

uses DFeModel.Interf;

type
  TDFeFactoryModel = class(TInterfacedObject, IDFeFactory)
  public
    constructor Create;
    destructor Destroy; override;

    class function New: IDFeFactory;

    function DFe(AValue: TDFe): IDFe;
  end;

implementation

{ TDFeFactoryModel }

uses NotaFiscalEletronical.Model;

constructor TDFeFactoryModel.Create;
begin

end;

destructor TDFeFactoryModel.Destroy;
begin

  inherited;
end;

function TDFeFactoryModel.DFe(AValue: TDFe): IDFe;
begin
  case AValue of
    dfeNotaFiscalEletronica : Result := TNotaFiscalEletronicaModel.New;
  end;
end;

class function TDFeFactoryModel.New: IDFeFactory;
begin
  Result := Self.Create;
end;

end.
