unit U_AuxImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormAuxImp = class(TForm)
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
  FormAuxImp: TFormAuxImp;

implementation

uses U_MalaDireta2, U_MalaDireta3;

{$R *.dfm}

procedure TFormAuxImp.RadioGroup1Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex of
  0:
  begin
    MalaDireta2:=TMalaDireta2.Create(Self);
    MalaDireta2.QuickRep1.PreviewModal;
    MalaDireta2.Destroy;
  end;
  1:
  begin
    MalaDireta3:=TMalaDireta3.Create(Self);
    MalaDireta3.QuickRep1.PreviewModal;
    MalaDireta3.Destroy;
  end;
  end;
end;

procedure TFormAuxImp.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TFormAuxImp.SpeedButton1Click(Sender: TObject);
begin
  RadioGroup1.ItemIndex:= -1;
end;

end.
