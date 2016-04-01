unit calcunit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls;

type

  { TCalcForm }

  TCalcForm = class(TForm)
    BitBtn1: TBitBtn;
    ed_Alljuminij_Cl: TEdit;
    ed_Alljuminij_S: TEdit;
    ed_Alljuminij_T: TEdit;
    ed_Alljuminij_Z: TEdit;
    ed_Bumaga_gazetnaja_Cl: TEdit;
    ed_Bumaga_gazetnaja_S: TEdit;
    ed_Bumaga_gazetnaja_T: TEdit;
    ed_Bumaga_gazetnaja_Z: TEdit;
    ed_Bumaga_gljancevaja_Cl: TEdit;
    ed_Bumaga_gljancevaja_S: TEdit;
    ed_Bumaga_gljancevaja_T: TEdit;
    ed_Bumaga_gljancevaja_Z: TEdit;
    ed_Bumaga_ofisnaja_Cl: TEdit;
    ed_Bumaga_ofisnaja_S: TEdit;
    ed_Bumaga_ofisnaja_T: TEdit;
    ed_Bumaga_ofisnaja_Z: TEdit;
    ed_Bumaga_prochaja_Cl: TEdit;
    ed_Bumaga_prochaja_S: TEdit;
    ed_Bumaga_prochaja_T: TEdit;
    ed_Bumaga_prochaja_Z: TEdit;
    ed_Chernye_metally_Cl: TEdit;
    ed_Chernye_metally_S: TEdit;
    ed_Chernye_metally_T: TEdit;
    ed_Chernye_metally_Z: TEdit;
    ed_Drevesina_Cl: TEdit;
    ed_Drevesina_S: TEdit;
    ed_Drevesina_T: TEdit;
    ed_Drevesina_Z: TEdit;
    ed_Inertnye_materialy_Cl: TEdit;
    ed_Inertnye_materialy_S: TEdit;
    ed_Inertnye_materialy_T: TEdit;
    ed_Inertnye_materialy_Z: TEdit;
    ed_Karton_Cl: TEdit;
    ed_Karton_S: TEdit;
    ed_Karton_T: TEdit;
    ed_Karton_Z: TEdit;
    ed_Organika_Cl: TEdit;
    ed_Organika_S: TEdit;
    ed_Organika_T: TEdit;
    ed_Organika_Z: TEdit;
    ed_PJeT_butylki_Cl: TEdit;
    ed_PJeT_butylki_S: TEdit;
    ed_PJeT_butylki_T: TEdit;
    ed_PJeT_butylki_Z: TEdit;
    ed_Plenki_prochie_Cl: TEdit;
    ed_Plenki_prochie_S: TEdit;
    ed_Plenki_prochie_T: TEdit;
    ed_Plenki_prochie_Z: TEdit;
    ed_Polijetilen_plenki_Cl: TEdit;
    ed_Polijetilen_plenki_S: TEdit;
    ed_Polijetilen_plenki_T: TEdit;
    ed_Polijetilen_plenki_Z: TEdit;
    ed_Polijetilen_tara_i_izdelija_Cl: TEdit;
    ed_Polijetilen_tara_i_izdelija_S: TEdit;
    ed_Polijetilen_tara_i_izdelija_T: TEdit;
    ed_Polijetilen_tara_i_izdelija_Z: TEdit;
    ed_Polipropilen_Cl: TEdit;
    ed_Polipropilen_S: TEdit;
    ed_Polipropilen_T: TEdit;
    ed_Polipropilen_Z: TEdit;
    ed_Polistirol_Cl: TEdit;
    ed_Polistirol_S: TEdit;
    ed_Polistirol_T: TEdit;
    ed_Polistirol_Z: TEdit;
    ed_Polivinilhlorid_Cl: TEdit;
    ed_Polivinilhlorid_S: TEdit;
    ed_Polivinilhlorid_T: TEdit;
    ed_Polivinilhlorid_Z: TEdit;
    ed_Prochie_komponenty_Cl: TEdit;
    ed_Prochie_komponenty_S: TEdit;
    ed_Prochie_komponenty_T: TEdit;
    ed_Prochie_komponenty_Z: TEdit;
    ed_Prochie_metally_Cl: TEdit;
    ed_Prochie_metally_S: TEdit;
    ed_Prochie_metally_T: TEdit;
    ed_Prochie_metally_Z: TEdit;
    ed_Prochie_plastmassy_tverdye_Cl: TEdit;
    ed_Prochie_plastmassy_tverdye_S: TEdit;
    ed_Prochie_plastmassy_tverdye_T: TEdit;
    ed_Prochie_plastmassy_tverdye_Z: TEdit;
    ed_Steklo_Cl: TEdit;
    ed_Steklo_S: TEdit;
    ed_Steklo_T: TEdit;
    ed_Steklo_Z: TEdit;
    ed_Tekstil_Cl: TEdit;
    ed_Tekstil_S: TEdit;
    ed_Tekstil_T: TEdit;
    ed_Tekstil_Z: TEdit;
    ed_Tetrapak_Cl: TEdit;
    ed_Tetrapak_S: TEdit;
    ed_Tetrapak_T: TEdit;
    ed_Tetrapak_Z: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pl_Alljuminij: TPanel;
    pl_Bumaga: TPanel;
    pl_Bumaga_gazetnaja: TPanel;
    pl_Bumaga_gljancevaja: TPanel;
    pl_Bumaga_ofisnaja: TPanel;
    pl_Bumaga_prochaja: TPanel;
    pl_Chernye_metally: TPanel;
    pl_Cvetnye_metally: TPanel;
    pl_Drevesina: TPanel;
    pl_Inertnye_materialy: TPanel;
    pl_Karton: TPanel;
    pl_Organika: TPanel;
    pl_PJeT_butylki: TPanel;
    pl_Plenki_prochie: TPanel;
    pl_Polijetilen_plenki: TPanel;
    pl_Polijetilen_tara_i_izdelija: TPanel;
    pl_Polimery: TPanel;
    pl_Polipropilen: TPanel;
    pl_Polistirol: TPanel;
    pl_Polivinilhlorid: TPanel;
    pl_Prochie_komponenty: TPanel;
    pl_Prochie_metally: TPanel;
    pl_Prochie_plastmassy_tverdye: TPanel;
    pl_Steklo: TPanel;
    pl_Tekstil: TPanel;
    pl_Tetrapak: TPanel;
    ScrollBox1: TScrollBox;
    procedure ed_Alljuminij_ZChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  CalcForm: TCalcForm;

implementation

{$R *.lfm}

{ TCalcForm }

procedure TCalcForm.ed_Alljuminij_ZChange(Sender: TObject);
begin

end;

end.

