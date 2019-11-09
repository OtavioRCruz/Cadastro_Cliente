unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, StdCtrls, ExtCtrls, DBTables;

type
  TF_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Consulta1: TMenuItem;
    Dados1: TMenuItem;
    Relatorios1: TMenuItem;
    OrdemCodigo1: TMenuItem;
    OrdemAlfabetica1: TMenuItem;
    Maladireta1: TMenuItem;
    Sobre1: TMenuItem;
    Suporte1: TMenuItem;
    Sair1: TMenuItem;
    Fechar1: TMenuItem;
    Estiquetas1: TMenuItem;
    N201: TMenuItem;
    N301: TMenuItem;
    Bevel1: TBevel;
    Panel1: TPanel;
    Bevel2: TBevel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    btnCadastro: TSpeedButton;
    btnSobre: TSpeedButton;
    btnSair: TSpeedButton;
    btnConsultas: TSpeedButton;
    btnRelatorio: TSpeedButton;
    btnMalaDireta: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Sobre2: TMenuItem;
    N1: TMenuItem;
    Fechar2: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSobreClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultasClick(Sender: TObject);
    procedure N201Click(Sender: TObject);
    procedure N301Click(Sender: TObject);
    procedure btnMalaDiretaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

uses U_About, Unit_Cadastro, U_Relatorio, U_MalaDireta2, U_MalaDireta3,
  U_Consulta, U_AuxImp;

{$R *.dfm}

procedure TF_Principal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=MessageDlg('Deseja realmente fechar?',mtError,[MByes,MBno],0)=MRyes;
  {CanClose:=MessageDlg('Deseja realmente fechar?',mtConfirmation,[MByes,MBno],0)=MRyes;}

  {CanClose:=MessageDlg('Deseja realmente fechar?',mtConfirmation,mbYesNoCancel,0)=MRyes;}

end;

procedure TF_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ShowMessage('Nao esqueça de fazer o Backup!');
end;

procedure TF_Principal.btnSobreClick(Sender: TObject);
begin
  AboutBox:=TAboutBox.Create(Self);
  AboutBox.showModal;
  AboutBox.Free;
end;

procedure TF_Principal.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TF_Principal.btnCadastroClick(Sender: TObject);
begin
  F_Cadastro:=TF_Cadastro.Create(Self);
  F_Cadastro.showmodal;
  F_Cadastro.Destroy;
end;

procedure TF_Principal.btnRelatorioClick(Sender: TObject);
begin
  Relatorio:=TRelatorio.Create(self);
  Relatorio.QuickRep1.Preview;
  Relatorio.Destroy;
end;

procedure TF_Principal.FormCreate(Sender: TObject);
begin
  If not Session.IsAlias('Cad_Cli') Then
  Session.AddStandardAlias('Cad_Cli','C:\workspace\Cadastro_Cliente\BD','Paradox');
end;

procedure TF_Principal.btnConsultasClick(Sender: TObject);
begin
  F_Consulta:=TF_Consulta.Create(Self);
  F_Consulta.ShowModal;
  F_Consulta.Destroy;
end;

procedure TF_Principal.N201Click(Sender: TObject);
begin
  MalaDireta2:=TMalaDireta2.Create(Self);
  MalaDireta2.QuickRep1.PreviewModal;
  MalaDireta2.Destroy;
end;

procedure TF_Principal.N301Click(Sender: TObject);
begin
  MalaDireta3:=TMalaDireta3.Create(Self);
  MalaDireta3.QuickRep1.PreviewModal;
  MalaDireta3.Destroy;
end;

procedure TF_Principal.btnMalaDiretaClick(Sender: TObject);
begin
  FormAuxImp:=TFormAuxImp.Create(Self);
  FormAuxImp.ShowModal;
  FormAuxImp.Free;
end;

end.

