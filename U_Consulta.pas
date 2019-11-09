unit U_Consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls;

type
  TF_Consulta = class(TForm)
    Bevel1: TBevel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    procedure RadioGroup1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Consulta: TF_Consulta;

implementation

uses U_DataM;

{$R *.dfm}

procedure TF_Consulta.RadioGroup1Click(Sender: TObject);
begin
  Case RadioGroup1.ItemIndex of
  0:DM.Table1.IndexName:='';
  1:DM.Table1.IndexName:='iNome';
  2:DM.Table1.IndexName:='iCPF';
  3:DM.Table1.IndexName:='iCNPJ';
  end;
end;

procedure TF_Consulta.Edit1Change(Sender: TObject);
begin
  dm.Table1.FindNearest([Edit1.Text]);
end;

end.
