unit U_DataM;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM = class(TDataModule)
    Table1: TTable;
    DataSource1: TDataSource;
    Table1Codigo: TAutoIncField;
    Table1Nome: TStringField;
    Table1Data_Nascimento: TDateField;
    Table1Endereco: TStringField;
    Table1Numero: TStringField;
    Table1Complemento: TStringField;
    Table1Bairro: TStringField;
    Table1Cidade: TStringField;
    Table1Estado: TStringField;
    Table1CEP: TStringField;
    Table1Email: TStringField;
    Table1Site: TStringField;
    Table1CPF: TStringField;
    Table1RG: TStringField;
    Table1CNPJ: TStringField;
    Table1IE: TStringField;
    Table1IM: TStringField;
    Table1Foto: TGraphicField;
    Table1Observacao: TStringField;
    Table1Telefone_Residencial: TStringField;
    Table1Telefone_Comercial: TStringField;
    Table1Telefone_Celular: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
