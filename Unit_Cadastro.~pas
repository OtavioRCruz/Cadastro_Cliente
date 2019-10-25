unit Unit_Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ComCtrls, Buttons, ExtCtrls, DB;

type
  TF_Cadastro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    Edit: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBImage1: TDBImage;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    GroupBox4: TGroupBox;
    Edit1: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Edit4: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DBComboBox1: TDBComboBox;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    ME_CPF: TMaskEdit;
    ME_CNPJ: TMaskEdit;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cadastro: TF_Cadastro;

implementation

uses U_DataM;

{$R *.dfm}

procedure TF_Cadastro.SpeedButton1Click(Sender: TObject);
begin
  dm.Table1.IndexName:='';
  if not dm.Table1.FindKey([Edit1.text]) then
  begin
    ShowMessage('Codigo nao encontrado');
    Edit1.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TF_Cadastro.SpeedButton2Click(Sender: TObject);
begin
  DM.Table1.IndexName:='iCPF';
  if not DM.Table1.FindKey([ME_CPF.text]) then
  begin
    ShowMessage('CPF nao encontrado');
    ME_CPF.Clear;
    ME_CPF.SetFocus;
  end;
end;

procedure TF_Cadastro.SpeedButton3Click(Sender: TObject);
begin
  DM.Table1.IndexName:='iCNPJ';
  if not DM.Table1.FindKey([ME_CNPJ.text]) then
  begin
    ShowMessage('CNPJ nao encontrado');
    ME_CNPJ.Clear;
    ME_CNPJ.SetFocus;
    end;
end;

procedure TF_Cadastro.Edit4Change(Sender: TObject);
begin
  DM.Table1.IndexName:='iNome';
  DM.Table1.FindNearest([Edit4.text]);
end;

procedure TF_Cadastro.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  var resultado: word;
begin
  if (dm.Table1.State=dsEdit) or (dm.Table1.State=dsInsert) then
    Begin
      resultado:= MessageDlg('Dados não salvos!' + #13 + 'Deseja salva-los?', mtConfirmation,mbYesNoCancel,0);
      Case resultado of
        mrYes:
          begin
            DM.Table1.Post;
            CanClose:=True;
          End;
        mrNo:
          begin
            DM.Table1.Cancel;
            CanClose:=True;
          End
      else
        CanClose:=False;
      end;
    end;
end;

end.
