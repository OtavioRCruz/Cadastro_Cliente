unit U_DataM;

interface

uses
  SysUtils, Classes, DB, DBTables, DBIProcs;
  //BDIProcs unit utilizada para controle do Paradox

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
    procedure Table1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses BDE;

{$R *.dfm}

procedure TDM.Table1AfterPost(DataSet: TDataSet);
begin
  DbiSaveChanges(Table1.Handle);
  //comando utilizado para fazer commit, no paradox (BDE Administrator)
  //Não funciona para as outras DBs
end;

end.
