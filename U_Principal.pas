unit U_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, StdCtrls, ExtCtrls;

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
    SpeedButton1: TSpeedButton;
    btnSobre: TSpeedButton;
    btnSair: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Sobre2: TMenuItem;
    N1: TMenuItem;
    Fechar2: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSobreClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

uses U_About, Unit_Cadastro;

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
  AboutBox.showModal;
end;

procedure TF_Principal.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TF_Principal.SpeedButton1Click(Sender: TObject);
begin
  F_Cadastro.showmodal;
end;

end.

