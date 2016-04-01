unit koeffform;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, MaskEdit, rdfdata;

type

  { TRDFCoeffForm }

  TRDFCoeffForm = class(TForm)
  published
    BitBtn1: TBitBtn;
    ed_Bumaga_gazetnaja: TEdit;
    ed_Bumaga_gljancevaja: TEdit;
    ed_Bumaga_ofisnaja: TMaskEdit;
    ed_Bumaga_prochaja: TEdit;
    ed_PJeT_butylki: TEdit;
    ed_Plenki_prochie: TEdit;
    ed_Alljuminij: TMaskEdit;
    ed_Polijetilen_plenki: TEdit;
    ed_Polijetilen_tara_i_izdelija: TEdit;
    ed_Polipropilen: TEdit;
    ed_Polistirol: TEdit;
    ed_Polivinilhlorid: TEdit;
    ed_Prochie_plastmassy_tverdye: TEdit;
    ed_Prochie_metally: TEdit;
    lb_Bumaga_gazetnaja: TLabel;
    lb_Bumaga_gljancevaja: TLabel;
    lb_Bumaga_ofisnaja: TLabel;
    lb_Bumaga_prochaja: TLabel;
    lb_PJeT_butylki: TLabel;
    lb_Plenki_prochie: TLabel;
    lb_Alljuminij: TLabel;
    lb_Polijetilen_plenki: TLabel;
    lb_Polijetilen_tara_i_izdelija: TLabel;
    lb_Polipropilen: TLabel;
    lb_Polistirol: TLabel;
    lb_Polivinilhlorid: TLabel;
    lb_Prochie_plastmassy_tverdye: TLabel;
    lb_Prochie_metally: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure poliCheckValid(Sender: TObject);
    procedure readValue(Sender: TObject);
    procedure bumagaCheckValid(Sender: TObject);
  private
    procedure setCalcCoeffValues;
    { private declarations }
  public
    //aCalcCoeff : TCalcCoeff;
  end;

var
  RDFCoeffForm: TRDFCoeffForm;

implementation

uses utils;

procedure TRDFCoeffForm.FormCreate(Sender: TObject);
begin
end;

procedure TRDFCoeffForm.poliCheckValid(Sender: TObject);
var
  x: Extended;
  i: Integer;
  e: TComponent;
begin
  x := 0;
  for i := PJeT_butylki to Plenki_prochie do
  begin
    e := utils.utl.FindControlByTag(RDFCoeffForm,i);
    x += StrToFloat((e as TMaskEdit).Text,fsettings);
  end;
  if x > 1 then ShowMessage('Сумма строк 3.1 - 3.8 > 1, ошибка!')
  else ed_Prochie_plastmassy_tverdye.Text := FormatFloat('0.000',
    1 - x
  );
end;

procedure TRDFCoeffForm.readValue(Sender: TObject);
begin
end;

procedure TRDFCoeffForm.bumagaCheckValid(Sender: TObject);
var
  x: Extended;
begin
  x := StrToFloat(ed_Bumaga_ofisnaja.Text) + StrToFloat(ed_Bumaga_gljancevaja.Text) +
       StrToFloat(ed_Bumaga_gazetnaja.Text);
  if x > 1 then ShowMessage('Сумма строк 1.1, 1.2, 1.3 и 1.4 > 1, ошибка!')
  else ed_Bumaga_prochaja.Text := FormatFloat('0.000',
    1 - x
  );
end;

procedure TRDFCoeffForm.setCalcCoeffValues;
begin
end;

{$R *.lfm}

{ TRDFCoeffForm }


end.

