unit U_AuxImp_Relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormAuxImpRelatorio = class(TForm)
    RadioGroup1: TRadioGroup;
    btnSair: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAuxImpRelatorio: TFormAuxImpRelatorio;

implementation

uses U_MalaDireta2, U_MalaDireta3, U_Relatorio, U_DataM;

{$R *.dfm}

procedure TFormAuxImpRelatorio.RadioGroup1Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex of
  0:
  begin
    DM.Table1.IndexName:='iNome';
    Relatorio:=TRelatorio.Create(Self);
    Relatorio.QuickRep1.Preview;
    Relatorio.Destroy;
  end;
  1:
  begin
    DM.Table1.IndexName:='';
    Relatorio:=TRelatorio.Create(Self);
    Relatorio.QuickRep1.Preview;
    Relatorio.Destroy;
  end;
  end;
end;

procedure TFormAuxImpRelatorio.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TFormAuxImpRelatorio.SpeedButton1Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex:= -1;
end;

end.
