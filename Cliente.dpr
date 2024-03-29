program Cliente;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_About in 'U_About.pas' {AboutBox},
  U_DataM in 'U_DataM.pas' {DM: TDataModule},
  Unit_Cadastro in 'Unit_Cadastro.pas' {F_Cadastro},
  U_Relatorio in 'U_Relatorio.pas' {Relatorio},
  U_MalaDireta2 in 'U_MalaDireta2.pas' {MalaDireta2},
  U_MalaDireta3 in 'U_MalaDireta3.pas' {MalaDireta3},
  U_Consulta in 'U_Consulta.pas' {F_Consulta},
  U_AuxImp in 'U_AuxImp.pas' {FormAuxImp},
  U_AuxImp_Relatorio in 'U_AuxImp_Relatorio.pas' {FormAuxImpRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
