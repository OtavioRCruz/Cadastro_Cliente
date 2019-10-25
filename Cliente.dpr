program Cliente;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_About in 'U_About.pas' {AboutBox},
  Unit1 in 'Unit1.pas' {CustomerData: TDataModule},
  U_DataM in 'U_DataM.pas' {DM: TDataModule},
  Unit_Cadastro in 'Unit_Cadastro.pas' {F_Cadastro},
  U_Relatorio in 'U_Relatorio.pas' {Relatorio},
  U_MalaDireta2 in 'U_MalaDireta2.pas' {MalaDireta2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TCustomerData, CustomerData);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_Cadastro, F_Cadastro);
  Application.CreateForm(TRelatorio, Relatorio);
  Application.CreateForm(TMalaDireta2, MalaDireta2);
  Application.Run;
end.