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
    procedure copyValuesToKk(Sender: TObject);
    procedure poliCheckValid(Sender: TObject);
    procedure readValue(Sender: TObject);
    procedure bumagaCheckValid(Sender: TObject);
  private
    procedure setCalcCoeffValues;
    { private declarations }
  public
    k_Bumaga_gazetnaja: Extended;
    k_Bumaga_gljancevaja: Extended;
    k_Bumaga_ofisnaja: Extended;
    k_Bumaga_prochaja: Extended;
    k_PJeT_butylki: Extended;
    k_Plenki_prochie: Extended;
    k_Alljuminij: Extended;
    k_Polijetilen_plenki: Extended;
    k_Polijetilen_tara_i_izdelija: Extended;
    k_Polipropilen: Extended;
    k_Polistirol: Extended;
    k_Polivinilhlorid: Extended;
    k_Prochie_plastmassy_tverdye: Extended;
    k_Prochie_metally: Extended;
  end;

var
  RDFCoeffForm: TRDFCoeffForm;

implementation

uses utils;

procedure TRDFCoeffForm.copyValuesToKk(Sender: TObject);
begin
  try
    k_Bumaga_gazetnaja := StrToFloat(ed_Bumaga_gazetnaja.Text, fsettings);
    k_Bumaga_gljancevaja  := StrToFloat(ed_Bumaga_gljancevaja.Text, fsettings);
    k_Bumaga_ofisnaja := StrToFloat(ed_Bumaga_ofisnaja.Text, fsettings);
    k_Bumaga_prochaja := StrToFloat(ed_Bumaga_prochaja.Text, fsettings);
    k_PJeT_butylki := StrToFloat(ed_PJeT_butylki.Text, fsettings);
    k_Plenki_prochie := StrToFloat(ed_Plenki_prochie.Text, fsettings);
    k_Alljuminij := StrToFloat(ed_Alljuminij.Text, fsettings);
    k_Polijetilen_plenki := StrToFloat(ed_Polijetilen_plenki.Text, fsettings);
    k_Polijetilen_tara_i_izdelija := StrToFloat(ed_Polijetilen_tara_i_izdelija.Text, fsettings);
    k_Polipropilen := StrToFloat(ed_Polipropilen.Text, fsettings);
    k_Polistirol := StrToFloat(ed_Polistirol.Text, fsettings);
    k_Polivinilhlorid := StrToFloat(ed_Polivinilhlorid.Text, fsettings);
    k_Prochie_plastmassy_tverdye := StrToFloat(ed_Prochie_plastmassy_tverdye.Text, fsettings);
    k_Prochie_metally := StrToFloat(ed_Prochie_metally.Text, fsettings);
  finally
  end;
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
  copyValuesToKk(Sender);
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
  copyValuesToKk(Sender);
end;

procedure TRDFCoeffForm.setCalcCoeffValues;
begin
end;

{$R *.lfm}

{ TRDFCoeffForm }


end.

