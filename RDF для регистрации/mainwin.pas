unit mainwin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, TAGraph, Forms, Controls, Graphics, Dialogs, Menus,
  ComCtrls, Grids, ExtCtrls, StdCtrls, PairSplitter, Buttons, LCLType, rdfdata,
  memds, SdfData;

type

// TODO - нельзя больше 100 в Таблице 1

//

  { TRDFForm }

  TRDFForm = class(TForm)
    bt_Clac_BumagaSubs: TBitBtn;
    bt_Clac_BumagaSubs1: TBitBtn;
    bt_Clac_BumagaSumm: TBitBtn;
    bt_Clac_BumagaSumm1: TBitBtn;
    bt_Clac_BumagaSumm10: TBitBtn;
    bt_Clac_BumagaSumm11: TBitBtn;
    bt_Clac_BumagaSumm12: TBitBtn;
    bt_Clac_BumagaSumm13: TBitBtn;
    bt_Clac_BumagaSumm2: TBitBtn;
    bt_Clac_BumagaSumm3: TBitBtn;
    bt_Clac_BumagaSumm4: TBitBtn;
    bt_Clac_BumagaSumm5: TBitBtn;
    bt_Clac_BumagaSumm6: TBitBtn;
    bt_Clac_BumagaSumm7: TBitBtn;
    bt_Clac_BumagaSumm8: TBitBtn;
    bt_Clac_BumagaSumm9: TBitBtn;
    bt_Clac_Bumaga_gazetnaja: TBitBtn;
    bt_Clac_Bumaga_gljancevaja: TBitBtn;
    bt_Clac_Bumaga_ofisnaja: TBitBtn;
    bt_Clac_Bumaga_prochaja: TBitBtn;
    bt_Clac_PJeT_butylki: TBitBtn;
    bt_Clac_Plenki_prochie: TBitBtn;
    bt_Clac_Plenki_prochie1: TBitBtn;
    bt_Clac_Plenki_prochie2: TBitBtn;
    bt_Clac_Polijetilen_plenki: TBitBtn;
    bt_Clac_Polijetilen_tara_i_izdelija: TBitBtn;
    bt_Clac_PolimerySubs: TBitBtn;
    bt_Clac_PolimerySubs1: TBitBtn;
    bt_Clac_PolimerySumm: TBitBtn;
    bt_Clac_PolimerySumm1: TBitBtn;
    bt_Clac_Polipropilen: TBitBtn;
    bt_Clac_Polistirol: TBitBtn;
    bt_Clac_Polivinilhlorid: TBitBtn;
    bt_Clac_Prochie_plastmassy_tverdye: TBitBtn;
    bt_Clac_Prochie_plastmassy_tverdye1: TBitBtn;
    cb_Melk_Frac: TCheckBox;
    Chart3: TImage;
    Chart4: TImage;
    Chart5: TImage;
    Chart6: TImage;
    cb_allow_fakt_m_rek: TCheckBox;
    ed_F_OtborPVXPercent: TEdit;
    ed_Alljuminij_otbor: TEdit;
    ed_A_otbor: TPanel;
    ed_A_otbor1: TEdit;
    ed_Bumaga_gazetnaja_otbor: TEdit;
    ed_Bumaga_gljancevaja_otbor: TEdit;
    ed_Bumaga_ofisnaja_otbor: TEdit;
    ed_Bumaga_otbor: TEdit;
    ed_Bumaga_prochaja_otbor: TEdit;
    ed_Chernye_metally_otbor: TEdit;
    ed_Cvetnye_metally_otbor: TEdit;
    ed_def_Alljuminij_otbor: TEdit;
    ed_def_A_otbor: TPanel;
    ed_def_A_otbor1: TEdit;
    ed_def_Bumaga_gazetnaja_otbor: TEdit;
    ed_def_Bumaga_gljancevaja_otbor: TEdit;
    ed_def_Bumaga_ofisnaja_otbor: TEdit;
    ed_def_Bumaga_otbor: TEdit;
    ed_def_Bumaga_prochaja_otbor: TEdit;
    ed_def_Chernye_metally_otbor: TEdit;
    ed_def_Cvetnye_metally_otbor: TEdit;
    ed_def_Drevesina_otbor: TEdit;
    ed_def_Inertnye_materialy_otbor: TEdit;
    ed_def_Karton_otbor: TEdit;
    ed_def_Organika_otbor: TEdit;
    ed_def_PJeT_butylki_otbor: TEdit;
    ed_def_Plenki_prochie_otbor: TEdit;
    ed_def_Polijetilen_plenki_otbor: TEdit;
    ed_def_Polijetilen_tara_i_izdelija_otbor: TEdit;
    ed_def_Polimery_otbor: TEdit;
    ed_def_Polipropilen_otbor: TEdit;
    ed_def_Polistirol_otbor: TEdit;
    ed_def_Polivinilhlorid_otbor: TEdit;
    ed_def_Prochie_komponenty_otbor: TEdit;
    ed_def_Prochie_metally_otbor: TEdit;
    ed_def_Prochie_plastmassy_tverdye_otbor: TEdit;
    ed_def_Steklo_otbor: TEdit;
    ed_def_Tekstil_otbor: TEdit;
    ed_def_Tetrapak_otbor: TEdit;
    ed_Drevesina_otbor: TEdit;
    ed_F_Bumaga_gazetnaja: TEdit;
    ed_F_Bumaga_gljancevaja: TEdit;
    ed_F_Bumaga_ofisnaja: TEdit;
    ed_F_Bumaga_prochaja: TEdit;
    ed_F_Drevesina: TEdit;
    ed_F_Karton: TEdit;
    ed_F_PJeT_butylki: TEdit;
    ed_F_Plenki_prochie: TEdit;
    ed_F_Polijetilen_plenki: TEdit;
    ed_F_Polijetilen_tara_i_izdelija: TEdit;
    ed_F_Polipropilen: TEdit;
    ed_F_Polistirol: TEdit;
    ed_F_Prochie_plastmassy_tverdye: TEdit;
    ed_F_Tekstil: TEdit;
    ed_F_Tetrapak: TEdit;
    ed_Itogo: TEdit;
    ed_Inertnye_materialy_otbor: TEdit;
    ed_Karton_otbor: TEdit;
    ed_Organika_otbor: TEdit;
    ed_PJeT_butylki_otbor: TEdit;
    ed_Plenki_prochie_otbor: TEdit;
    ed_Polijetilen_plenki_otbor: TEdit;
    ed_Polijetilen_tara_i_izdelija_otbor: TEdit;
    ed_Polimery_otbor: TEdit;
    ed_Polipropilen_otbor: TEdit;
    ed_Polistirol_otbor: TEdit;
    ed_Polivinilhlorid_otbor: TEdit;
    ed_Prochie_komponenty_otbor: TEdit;
    ed_Prochie_metally_otbor: TEdit;
    ed_Prochie_plastmassy_tverdye_otbor: TEdit;
    ed_Steklo_otbor: TEdit;
    ed_Tekstil_otbor: TEdit;
    ed_Tetrapak_otbor: TEdit;
    GroupBox1: TGroupBox;
    Chart1: TImage;
    Chart2: TImage;
    Label8: TLabel;
    lb_ComponentyOtkhodov: TListBox;
    lb_Itogo: TPanel;
    lb_ToExport: TListBox;
    md_Charts: TMemDataset;
    md_Pies: TMemDataset;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    mi_print: TMenuItem;
    mi_Calc: TMenuItem;
    dl_Open: TOpenDialog;
    pc_Table1: TPageControl;
    rg_F_OtborPVXPercent: TGroupBox;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    pl_Alljuminij_otbor: TPanel;
    pl_A_otbor: TPanel;
    pl_A_otbor1: TPanel;
    pl_Bumaga_gazetnaja_otbor: TPanel;
    pl_Bumaga_gljancevaja_otbor: TPanel;
    pl_Bumaga_ofisnaja_otbor: TPanel;
    pl_Bumaga_otbor: TPanel;
    pl_Bumaga_prochaja_otbor: TPanel;
    pl_B_otbor: TPanel;
    pl_B_otbor1: TPanel;
    pl_B_otbor2: TPanel;
    pl_Chernye_metally_otbor: TPanel;
    pl_Cvetnye_metally_otbor: TPanel;
    pl_Drevesina_otbor: TPanel;
    pl_Inertnye_materialy_otbor: TPanel;
    pl_Karton_otbor: TPanel;
    pl_Organika_otbor: TPanel;
    pl_PJeT_butylki_otbor: TPanel;
    pl_Plenki_prochie_otbor: TPanel;
    pl_Polijetilen_plenki_otbor: TPanel;
    pl_Polijetilen_tara_i_izdelija_otbor: TPanel;
    pl_Polimery_otbor: TPanel;
    pl_Polipropilen_otbor: TPanel;
    pl_Polistirol_otbor: TPanel;
    pl_Polivinilhlorid_otbor: TPanel;
    pl_Prochie_komponenty_otbor: TPanel;
    pl_Prochie_metally_otbor: TPanel;
    pl_Prochie_plastmassy_tverdye_otbor: TPanel;
    pl_Steklo_otbor: TPanel;
    pl_Tekstil_otbor: TPanel;
    pl_Tetrapak_otbor: TPanel;
    rg_OtborPVXPercent: TRadioGroup;
    rg_Alljuminij_otbor: TRadioGroup;
    rg_A_otbor1: TRadioGroup;
    rg_Bumaga_gazetnaja_otbor: TRadioGroup;
    rg_Bumaga_gljancevaja_otbor: TRadioGroup;
    rg_Bumaga_ofisnaja_otbor: TRadioGroup;
    rg_Bumaga_otbor: TRadioGroup;
    rg_Bumaga_prochaja_otbor: TRadioGroup;
    rg_Chernye_metally_otbor: TRadioGroup;
    rg_Cvetnye_metally_otbor: TRadioGroup;
    rg_Drevesina_otbor: TRadioGroup;
    rg_Inertnye_materialy_otbor: TRadioGroup;
    rg_Karton_otbor: TRadioGroup;
    rg_Organika_otbor: TRadioGroup;
    rg_PJeT_butylki_otbor: TRadioGroup;
    rg_Plenki_prochie_otbor: TRadioGroup;
    rg_Polijetilen_plenki_otbor: TRadioGroup;
    rg_Polijetilen_tara_i_izdelija_otbor: TRadioGroup;
    rg_Polimery_otbor: TRadioGroup;
    rg_Polipropilen_otbor: TRadioGroup;
    rg_Polistirol_otbor: TRadioGroup;
    rg_Polivinilhlorid_otbor: TRadioGroup;
    rg_Prochie_komponenty_otbor: TRadioGroup;
    rg_Prochie_metally_otbor: TRadioGroup;
    rg_Prochie_plastmassy_tverdye_otbor: TRadioGroup;
    Edit2: TEdit;
    ed_Alljuminij: TEdit;
    ed_Bumaga: TEdit;
    ed_Bumaga_gazetnaja: TEdit;
    ed_Bumaga_gljancevaja: TEdit;
    ed_Bumaga_ofisnaja: TEdit;
    ed_Bumaga_prochaja: TEdit;
    ed_Chernye_metally: TEdit;
    ed_Cvetnye_metally: TEdit;
    ed_Drevesina: TEdit;
    ed_Inertnye_materialy: TEdit;
    ed_Karton: TEdit;
    ed_Organika: TEdit;
    ed_PJeT_butylki: TEdit;
    ed_Plenki_prochie: TEdit;
    ed_Polijetilen_plenki: TEdit;
    ed_Polijetilen_tara_i_izdelija: TEdit;
    ed_Polimery: TEdit;
    ed_Polipropilen: TEdit;
    ed_Polistirol: TEdit;
    ed_Polivinilhlorid: TEdit;
    ed_Prochie_komponenty: TEdit;
    ed_Prochie_metally: TEdit;
    ed_Prochie_plastmassy_tverdye: TEdit;
    ed_Steklo: TEdit;
    ed_Tekstil: TEdit;
    ed_Tetrapak: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lb_Alljuminij: TPanel;
    lb_Bumaga: TPanel;
    lb_Bumaga_gazetnaja: TPanel;
    lb_Bumaga_gljancevaja: TPanel;
    lb_Bumaga_ofisnaja: TPanel;
    lb_Bumaga_prochaja: TPanel;
    lb_Chernye_metally: TPanel;
    lb_Cvetnye_metally: TPanel;
    lb_Drevesina: TPanel;
    lb_Inertnye_materialy: TPanel;
    lb_Karton: TPanel;
    lb_Organika: TPanel;
    lb_PJeT_butylki: TPanel;
    lb_Plenki_prochie: TPanel;
    lb_Polijetilen_plenki: TPanel;
    lb_Polijetilen_tara_i_izdelija: TPanel;
    lb_Polimery: TPanel;
    lb_Polipropilen: TPanel;
    lb_Polistirol: TPanel;
    lb_Polivinilhlorid: TPanel;
    lb_Prochie_komponenty: TPanel;
    lb_Prochie_metally: TPanel;
    lb_Prochie_plastmassy_tverdye: TPanel;
    lb_Steklo: TPanel;
    lb_Tekstil: TPanel;
    lb_Tetrapak: TPanel;
    MainMenu1: TMainMenu;
    mi_Otbor: TMenuItem;
    mi_Melk_Frac: TMenuItem;
    mi_Sprav: TMenuItem;
    mi_tbo_k_sprav: TMenuItem;
    mi_File: TMenuItem;
    mi_Open: TMenuItem;
    mi_New: TMenuItem;
    mi_SaveAsWord: TMenuItem;
    mi_SaveAs: TMenuItem;
    mi_Exit: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pc_Table2: TPageControl;
    pc_Table3: TPageControl;
    pl_Alljuminij: TPanel;
    pl_Alljuminij_value: TPanel;
    pl_Bumaga: TPanel;
    pl_Bumaga_gazetnaja: TPanel;
    pl_Bumaga_gazetnaja_value: TPanel;
    pl_Bumaga_gljancevaja: TPanel;
    pl_Bumaga_gljancevaja_value: TPanel;
    pl_Bumaga_ofisnaja: TPanel;
    pl_Bumaga_ofisnaja_value: TPanel;
    pl_Bumaga_prochaja: TPanel;
    pl_Bumaga_prochaja_value: TPanel;
    pl_Bumaga_value: TPanel;
    pl_Chart4: TPanel;
    pl_Chart5: TPanel;
    pl_Chart6: TPanel;
    pl_Chernye_metally: TPanel;
    pl_Chernye_metally_value: TPanel;
    pl_Cvetnye_metally: TPanel;
    pl_Cvetnye_metally_value: TPanel;
    pl_Drevesina: TPanel;
    pl_Drevesina_value: TPanel;
    pl_Inertnye_materialy: TPanel;
    pl_Inertnye_materialy_value: TPanel;
    pl_Karton: TPanel;
    pl_Karton_value: TPanel;
    pl_Melk_Frak_names: TPanel;
    pl_Melk_Frak_values: TPanel;
    pl_Organika: TPanel;
    pl_Organika_value: TPanel;
    pl_PJeT_butylki: TPanel;
    pl_PJeT_butylki_value: TPanel;
    pl_Plenki_prochie: TPanel;
    pl_Plenki_prochie_value: TPanel;
    pl_Polijetilen_plenki: TPanel;
    pl_Polijetilen_plenki_value: TPanel;
    pl_Polijetilen_tara_i_izdelija: TPanel;
    pl_Polijetilen_tara_i_izdelija_value: TPanel;
    pl_Polimery: TPanel;
    pl_Polimery_value: TPanel;
    pl_Polipropilen: TPanel;
    pl_Polipropilen_value: TPanel;
    pl_Polistirol: TPanel;
    pl_Polistirol_value: TPanel;
    pl_Polivinilhlorid: TPanel;
    pl_Polivinilhlorid_value: TPanel;
    pl_Prochie_komponenty: TPanel;
    pl_Prochie_komponenty_value: TPanel;
    pl_Prochie_metally: TPanel;
    pl_Prochie_metally_value: TPanel;
    pl_Prochie_plastmassy_tverdye: TPanel;
    pl_Prochie_plastmassy_tverdye_value: TPanel;
    pl_Steklo: TPanel;
    pl_Steklo_value: TPanel;
    pl_tbo_morph_names: TPanel;
    pl_tbo_morph_values: TPanel;
    pl_Tekstil: TPanel;
    pl_Tekstil_value: TPanel;
    pl_Tetrapak: TPanel;
    pl_Tetrapak_value: TPanel;
    ps_tbo_morph: TPairSplitter;
    pss_tbo_morph_names: TPairSplitterSide;
    PairSplitterSide2: TPairSplitterSide;
    rg_RDF_Dop_Podg: TCheckGroup;
    rg_Selectivnost: TRadioGroup;
    rg_Melk_Frac: TRadioGroup;
    rg_Steklo_otbor: TRadioGroup;
    rg_Tekstil_otbor: TRadioGroup;
    rg_Tetrapak_otbor: TRadioGroup;
    dl_Save: TSaveDialog;
    sb_Melk_Frak: TScrollBox;
    sb_tbo_morph: TScrollBox;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    ScrollBox3: TScrollBox;
    ScrollBox4: TScrollBox;
    RDFDataSet: TSdfDataSet;
    sg_Table2: TStringGrid;
    sg_Table3: TStringGrid;
    sg_Table4: TStringGrid;
    sg_Table1: TStringGrid;
    StatusBar1: TStatusBar;
    ts_Chart1: TTabSheet;
    ts_Selectivnost: TTabSheet;
    ts_RDF_Dop_Podg: TTabSheet;
    ts_Procent_Otbora: TTabSheet;
    ts_Chart2: TTabSheet;
    ts_Chart3: TTabSheet;
    ts_Melk_Frac: TTabSheet;
    ts_Result: TTabSheet;
    ts_Table2: TTabSheet;
    ts_Table3: TTabSheet;
    ts_Table1: TTabSheet;
    ts_tbo_morph: TTabSheet;
    procedure bt_CalcM2Click(Sender: TObject);
    procedure bt_CalcM3Click(Sender: TObject);
    procedure bt_CalcClClick(Sender: TObject);
    procedure bt_CalcTClick(Sender: TObject);
    procedure bt_PrintClick(Sender: TObject);
    procedure bt_SaveAsHtmlClick(Sender: TObject);
    procedure calcItog(Sender: TObject);
    procedure calcSub(Sender: TObject);
    procedure calcSubs(Sender: TObject);
    procedure calcSumm(Sender: TObject);
    procedure cb_Melk_FracChange(Sender: TObject);
    procedure check100Perc(Sender: TEdit);
    procedure check100Perc(Sender: TObject);
    procedure checkFloatFormat(Sender: TObject);
    procedure checkOtborPerc(Sender: TObject);
    procedure check_095_F(Sender: TEdit);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mi_FormToWordFile(Sender: TObject);
    procedure mi_CalcClick(Sender: TObject);
    procedure mi_ExitClick(Sender: TObject);
    procedure mi_Melk_FracClick(Sender: TObject);
    procedure mi_NewRDF(Sender: TObject);
    procedure mi_OpenClick(Sender: TObject);
    procedure mi_OtborClick(Sender: TObject);
    procedure mi_SaveAsClick(Sender: TObject);
    procedure mi_tbo_k_spravClick(Sender: TObject);
    procedure FillMelkFracPanels(Sender: TObject);
    procedure Image1Paint(Sender: TObject);
    procedure SetDefPerc(Sender: TRadioGroup);
    procedure SetFValue(Sender: TObject);
    procedure SetFValueByItem(Sender: TObject; Index: integer);
    procedure SetOtborPercent(Sender: TObject);
    procedure SetOtborPercentAll(Sender: TObject);
    procedure SetOtborPVXPercent(Sender: TObject);
    procedure SetPVXFValue(Sender: TObject);
    procedure ts_ResultShow(Sender: TObject);
  private
    procedure FillCharts;
    procedure fillChart1;
    procedure fillChart2;
    procedure fillChart3;
    procedure fillTable1;
    procedure fillTable2;
    procedure fillTable3;
    procedure fillTable4;
    procedure fillChart456;
    procedure EmptyMD;
    { private declarations }
  protected
    procedure DrawPie(aChart: TImage; aPie: String; aValue: Extended; nPie: Integer; alpha, beta: Extended);
    procedure DrawPieChart(const Chart_id: Integer; const aChart: TImage;
      const s: Extended);
    function calcKfromABCF(var a_name: String): Extended;
    function getCByRDFName(a_name: string): extended;
    function getChartTotalValue(var Chart_id: Integer): Extended;
    function getEditTagFromBtn(Sender: TObject): PtrInt;
    function getFByRDFName(a_name: string): extended;
    function getPieColor: TColor;
    function isBumaga(const e: TEdit): boolean;
    function isPolimer(const e: TEdit): boolean;
    function isCvetMet(const e: TEdit): boolean;
    function NewChart(const aName: String): integer;
    procedure NewPie(const chart_id: Integer; const aName: String; const aValue: Extended; const aColor: TColor);
    //procedure RemoveControls(A: TWinControl);
    //procedure DefineTBONames;
    function sbToHtml(atag: integer): string;
    procedure setResultHeight;
    procedure setTableHeight(aTable: TStringGrid);
    function pageToHtml(p: TTabSheet): string;
    function ToHtml_grid(sg: TStringGrid): string;
    function ToHtml_chart(ch: TImage): string;
    function ToHTML_ts_tbo_morph: String;
    function ToHTML_ts_Melk_Frac: String;
    function ToHTML_ts_Procent_Otbora: String;
    function ToHTML_ts_RDF_Dop_Podg: String;
    function ToHTML_ts_Selectivnost: String;
    function ToHTML_ts_Result: String;
    function ToHtml_RadioGroup(aGroup: TRadioGroup): String;

    function p(aText:string):String;
    function ul(aText:string):String;
    function li(aText:string;aLabel:Boolean):String;
    function table(aText:string):String;
    function tr(aText:string):String;
    function th(aText:string):String;
    function td(aText:string):String;
    //function p(aText:string):String;
  public
    { public declarations }
    //aRDF: TRDF;
    //aCalcCoeff: TCalcCoeff;
    procedure FormToFile(const file_name: String);
    procedure FileToForm(const file_name: String);
  end;

var
  RDFForm: TRDFForm;

implementation

uses koeffform, utils, melkfrac, otbor, calcunit, defvalues;

{$R *.lfm}

{ TRDFForm }

procedure TRDFForm.FormCreate(Sender: TObject);
begin
  PageControl1.PageIndex := 0;
end;

procedure TRDFForm.FormShow(Sender: TObject);
begin
  try
    FileToForm('default.rdf');
  finally
  end;
end;

procedure TRDFForm.mi_FormToWordFile(Sender: TObject);
var
  i: Integer;
  k: TCaption;
  y: TStringList;
begin
// TODO - расширение doc
  if dl_Save.Execute then
  begin;
    y := TStringList.Create;
    k := fm_DefaultValues.mm_HTML_Head.Text;
    y.Add(k);
    for i := 0 to PageControl1.PageCount - 1 do
    begin
      y.Add(pageToHtml(PageControl1.Pages[i]));
    end;
    y.Add(fm_DefaultValues.mm_HTML_tail.Text);
    y.SaveToFile(dl_Save.FileName);
    y.Free;
  end;
end;

procedure TRDFForm.mi_CalcClick(Sender: TObject);
begin
  calcunit.CalcForm.ShowModal;
end;

function TRDFForm.getEditTagFromBtn(Sender: TObject): PtrInt;
begin
  Result := (Sender as TBitBtn).Tag - 1000;
end;

function TRDFForm.GetFByRDFName(a_name: string): extended;
var
  F: extended;
begin
  F := -1;
  if a_name = 'Polivinilhlorid' then
    F := StrToFloat(ed_F_OtborPVXPercent.Text,fsettings);
  if a_name = 'Organika' then
    F := 0;
  if a_name = 'Steklo' then
    F := 0;
  if a_name = 'Chernye_metally' then
    F := 0;
  if a_name = 'Alljuminij' then
    F := 0;
  if a_name = 'Prochie_metally' then
    F := 0;
  if a_name = 'Inertnye_materialy' then
    F := 0;
  if a_name = 'Prochie_komponenty' then
    F := 0;
  if F = -1 then
    F := StrToFloat((FindComponent('ed_F_' + a_name) as TEdit).Text,fsettings);
  Result := F;
end;

function TRDFForm.getPieColor: TColor;
var
  x: TColor;
begin
  x := RGBToColor(50+Random(100), 50+Random(100), 50+Random(100));
  Result:=x;
end;

//procedure TRDFForm.RemoveControls(A: TWinControl);
//begin
//  while True do
//  begin
//    try
//      A.RemoveControl(A.Controls[0]);
//    except
//      break
//    end;
//  end;
//end;
//
function TRDFForm.isBumaga(const e: TEdit): boolean;
begin
  Result := (e.Tag >= Bumaga) and (e.Tag <= Bumaga_prochaja);
end;

function TRDFForm.isPolimer(const e: TEdit): boolean;
begin
  Result := (e.Tag >= Polimery) and (e.Tag <= Prochie_plastmassy_tverdye);
end;

function TRDFForm.isCvetMet(const e: TEdit): boolean;
begin
  Result := (e.Tag >= Alljuminij) and (e.Tag <= Prochie_metally);
end;

function TRDFForm.NewChart(const aName: String): integer;
begin
  Result := md_Charts.RecordCount + 1;
  md_Charts.Insert;
  md_Charts.FieldByName('id').AsInteger := Result;
  md_Charts.FieldByName('Chart').AsString := aName;
  md_Charts.Post;
end;

procedure TRDFForm.NewPie(const chart_id: Integer; const aName: String;
  const aValue: Extended; const aColor: TColor);
begin
  md_Pies.Insert;
  md_Pies.FieldByName('Chart_id').AsInteger := chart_id;
  md_Pies.FieldByName('Name').AsString := aName;
  md_Pies.FieldByName('Value').AsFloat := aValue;
  md_Pies.FieldByName('Color').AsLongint := aColor;
  md_Pies.Post;
end;

function TRDFForm.GetCByRDFName(a_name: string): extended;
var
  C: extended;
begin
  C := 0;
  try
    C := StrToFloat((FindComponent('ed_' + a_name + '_otbor') as TEdit).Text,fsettings);
  except
    C := StrToFloat((FindComponent('ed_def_' + a_name) as TEdit).Text,fsettings);
  end;
  Result := C;
end;

function TRDFForm.getChartTotalValue(var Chart_id: Integer): Extended;
var
  s: Extended;
begin
  s := 0.0;
  md_Pies.First;
  while not md_Pies.EOF do
  begin
    if md_Pies.FieldByName('Chart_id').AsInteger = Chart_id then s +=
      md_Pies.FieldByName('Value').AsFloat;
    md_Pies.Next;
  end;
  Result:=s;
end;

procedure TRDFForm.fillChart2;
var
  n: Integer;
  i: Integer;
begin
  n := NewChart('chart2');
  for i := 1 to sg_Table2.RowCount - 2 do
  begin
    if sg_Table2.Cells[2,i] <> '' then
    begin
      NewPie(
        n,
        sg_Table2.Cells[0,i],
        StrToFloat(sg_Table2.Cells[2,i],fsettings),
        RGBToColor(Random(255),Random(255),Random(255))
      );
    end;
  end;
end;

procedure TRDFForm.fillChart3;
var
  n: Integer;
  i: Integer;
begin
  n := NewChart('chart3');
  for i := 1 to sg_Table3.RowCount - 2 do
  begin
    if sg_Table3.Cells[2,i] <> '' then
    begin
      NewPie(
        n,
        sg_Table3.Cells[0,i],
        StrToFloat(sg_Table3.Cells[2,i],fsettings),
        RGBToColor(Random(255),Random(255),Random(255))
      );
    end;
  end;
end;

procedure TRDFForm.fillTable1;
var
  A: extended;
  S_M1: extended;
  S_M2: extended;
  S_M3: extended;
  S_M4: extended;
  B: extended;
  C: extended;
  F: extended;
  i: integer;
  a_name: string;
begin
  S_M1 := 0.0;
  S_M2 := 0.0;
  S_M3 := 0.0;
  S_M4 := 0.0;
  for i := 0 to lb_ComponentyOtkhodov.Items.Count - 1 do
  begin
    a_name := lb_ComponentyOtkhodov.Items[i];
    try
      A := StrToFloat((FindComponent('ed_' + a_name) as TEdit).Text,fsettings);
      B := StrToFloat((FindComponent('pl_' + a_name + '_value') as TPanel).Caption,fsettings);
      try
        C := StrToFloat((FindComponent('ed_' + a_name + '_otbor') as TEdit).Text,fsettings);
      except
        C := StrToFloat((FindComponent('ed_def_' + a_name) as TEdit).Text,fsettings);
      end;
      F := GetFByRDFName(a_name);
      S_M1 := S_M1 + (A - A * B - A * C) * F;         // Вторичное топливо
      S_M2 := S_M2 + A * C;                           // Вторичное сырье
      S_M3 := S_M3 + A * B;                           // Отсев
      S_M4 := S_M4 + (A - A * B - A * C) * (1 - F);   // Хвосты
    finally
    end;
  end;
  sg_Table1.Cells[1, 1] := FormatFloat('0.000', S_M2,fsettings);
  sg_Table1.Cells[1, 2] := FormatFloat('0.000', S_M1,fsettings);
  sg_Table1.Cells[1, 3] := FormatFloat('0.000', S_M3,fsettings);
  sg_Table1.Cells[1, 4] := FormatFloat('0.000', S_M4,fsettings);
  sg_Table1.Cells[1, 5] := FormatFloat('0.000', S_M1 + S_M2 + S_M3 + S_M4,fsettings);
end;

procedure TRDFForm.bt_PrintClick(Sender: TObject);
var
  html: string;
begin
  html := sbToHtml(1);
  ShowMessage(html);
end;

procedure TRDFForm.bt_CalcM3Click(Sender: TObject);
begin
  //S := 0.0;
  //for i := 0 to lb_ComponentyOtkhodov.Items.Count - 1 do
  //begin
  //  name := lb_ComponentyOtkhodov.Items[i];
  //  x := FindComponent('pl_' + name + '_value');
  //  B := strtofloat((Components[i] as TEdit).Text);
  //  y := FindComponent('ed_' + name);
  //  A := strtofloat((Components[i] as TEdit).Text);
  //  S := S + A * B;
  //end;
  //ed_M3.Text := FormatFloat('0.0000',S);
end;

procedure TRDFForm.bt_CalcClClick(Sender: TObject);
begin
  //name := 'Polivinilhlorid';
  //z := FindComponent('ed_' + name);
  //y := FindComponent('pl_' + name + '_value');
  //x := FindComponent('ed_' + name + '_otbor');
  //w := FindComponent('ed_F_' + name);
  //v := calcunit.CalcForm.FindComponent('ed_' + name + '_Cl');
  //A := z
  //B := y
  //C := x
  //F := w
  //Cl := v
  //S := S + Cl * (((A - A * B - A * C) * F) / 100.0);
end;

procedure TRDFForm.bt_CalcTClick(Sender: TObject);
begin
  //S_T := 0.0;
  //S_Z := 0.0;
  //S_S := 0.0;
  //S_M1 := 0.0;
  //S_M4 := 0.0;
  //for i := 0 to lb_ComponentyOtkhodov.Items.Count - 1 do
  //begin
  //  name := lb_ComponentyOtkhodov.Items[i];
  //  z := FindComponent('ed_' + name);
  //  y := FindComponent('pl_' + name + '_value');
  //  x := FindComponent('ed_' + name + '_otbor');
  //  w := FindComponent('ed_F_' + name);
  //  v := calcunit.CalcForm.FindComponent('ed_' + name + '_T');
  //  u := calcunit.CalcForm.FindComponent('ed_' + name + '_S');
  //  t := calcunit.CalcForm.FindComponent('ed_' + name + '_Z');
  //  A := z
  //  B := y
  //  C := x
  //  F := w
  //  T := v
  //  S := u
  //  Z := t
  //  S_T := S + T * (((A - A * B - A * C) * F) / 100.0);
  //  S_Z := S + Z * (((A - A * B - A * C) * F) / 100.0);
  //  S_S := S + S * (((A - A * B - A * C) * F) / 100.0);
  //  S_M1 := S_M1 + (A - A * B - A * C) * F;
  //  S_M4 := S_M4 + (A - A * B - A * C) * (1 - F);
  //end;
  //ed_T.Text := FormatFloat('0.0000',S);
end;

procedure TRDFForm.bt_CalcM2Click(Sender: TObject);
begin
  //S := 0.0;
  //for i := 0 to lb_ComponentyOtkhodov.Items.Count - 1 do
  //begin
  //  name := lb_ComponentyOtkhodov.Items[i];
  //  x := FindComponent('ed_' + name + '_otbor');
  //  C := strtofloat((Components[i] as TEdit).Text);
  //  y := FindComponent('ed_' + name);
  //  A := strtofloat((Components[i] as TEdit).Text);
  //  S := S + A * C;
  //end;
  //ed_M2.Text := FormatFloat('0.0000',S);
end;

procedure TRDFForm.bt_SaveAsHtmlClick(Sender: TObject);
begin
end;

procedure TRDFForm.calcItog(Sender: TObject);
var
  s: Extended;
  i: Integer;
begin
  s := 0.0;
  for i := 0 to lb_ToExport.Items.Count - 2 do
  begin
    s += StrToFloat((FindComponent('ed_' + lb_ToExport.Items[i]) as TEdit).Text,fsettings);
  end;
  ed_Itogo.Text := FormatFloat('0.000',s,fsettings);
end;

procedure TRDFForm.calcSub(Sender: TObject);
var
  e: TEdit;
  v: extended;
  k: extended;
begin
  e := utl.FindControlByTag(RDFForm, getEditTagFromBtn(Sender)) as TEdit;
  if (isBumaga(e) or isPolimer(e)) and ((e.Hint = c_calculated) or
    (e.Hint = c_untouched)) then
  begin
    v := 0;
    if isBumaga(e) then
      v := StrToFloat(ed_Bumaga.Text,fsettings);
    if isPolimer(e) then
      v := StrToFloat(ed_Polimery.Text,fsettings);
    k := StrToFloat((utils.utl.FindControlByTag(RDFCoeffForm, e.Tag) as
      TCustomEdit).Text,fsettings);
    e.Text := FormatFloat('0.000', k * v,fsettings);
  end;
end;

procedure TRDFForm.calcSubs(Sender: TObject);
var
  e: TEdit;
  v: extended;
  i: integer;
  k: extended;

  procedure calcValue;
  begin
    k := StrToFloat((utils.utl.FindControlByTag(RDFCoeffForm, i) as TCustomEdit).Text,fsettings);
    (utils.utl.FindControlByTag(RDFForm, i) as TEdit).Text :=
      FormatFloat('0.000', v * k,fsettings);
    (utils.utl.FindControlByTag(RDFForm, i) as TEdit).Hint := c_calculated;
  end;

begin
  e := utl.FindControlByTag(RDFForm, getEditTagFromBtn(Sender)) as TEdit;
  try
    if e.Hint <> c_calculated then
    begin
      v := StrToFloat(e.Text,fsettings);
      if e.Tag = Bumaga then
        for i := Bumaga_ofisnaja to Bumaga_prochaja do
          calcValue;
      if e.Tag = Polimery then
        for i := PJeT_butylki to Prochie_plastmassy_tverdye do
          calcValue;
      if e.Tag = Cvetnye_metally then
        for i := Alljuminij to Prochie_metally do
          calcValue;
      e.Hint := c_entered;
      e.Text := FormatFloat('0.000', v,fsettings);
    end;
  except
    on Ex: EConvertError do
      e.Text := '0.000';
  end;
end;

procedure TRDFForm.calcSumm(Sender: TObject);
var
  e: TEdit;
  s: extended;
  t: PtrInt;
  i: integer;
begin
  t := getEditTagFromBtn(Sender);
  e := utl.FindControlByTag(RDFForm, t) as TEdit;
  s := 0.0;
  try
    if isBumaga(e) then
      for i := Bumaga_ofisnaja to Bumaga_prochaja do
        s += StrToFloat((utl.FindControlByTag(RDFForm, i) as TEdit).Text,fsettings);
    if isPolimer(e) then
      for i := PJeT_butylki to Prochie_plastmassy_tverdye do
        s += StrToFloat((utl.FindControlByTag(RDFForm, i) as TEdit).Text,fsettings);
    if isCvetMet(e) then
      for i := Alljuminij to Prochie_metally do
        s += StrToFloat((utl.FindControlByTag(RDFForm, i) as TEdit).Text,fsettings);
  except
    on Ex: EConvertError do
      s := 0;
  end;
  e.Text := FormatFloat('0.000', s,fsettings);
end;

procedure TRDFForm.cb_Melk_FracChange(Sender: TObject);
begin
  rg_Melk_Frac.Enabled := cb_Melk_Frac.Checked;
  sb_Melk_Frak.Enabled := cb_Melk_Frac.Checked;
end;

procedure TRDFForm.check100Perc(Sender: TEdit);
var
  k: extended;
begin
  try
    k := StrToFloat(Sender.Text,fsettings);
    if k > 1 then
      k := k / 100;
    if k > 1 then
      k := 1;
    Sender.Text := FormatFloat('0.000', k,fsettings);
  except
    Sender.Text := '0';
  end;
end;

procedure TRDFForm.check100Perc(Sender: TObject);
begin

end;

procedure TRDFForm.checkFloatFormat(Sender: TObject);
var
  e: TCustomEdit;
  v: extended;
begin
  e := Sender as TCustomEdit;
  try
    v := StrToFloat(trim(e.Text),fsettings);
  except
    on Ex: EConvertError do
      v := 0;
  end;
  e.Text := FormatFloat('0.000', v,fsettings);
end;

procedure TRDFForm.checkOtborPerc(Sender: TObject);
var
  x: TEdit;
  v1: extended;
  y: TEdit;
  v2: extended;
begin
  x := Sender as TEdit;
  y := FindComponent('ed_def_' + copy(x.Name, 4, 100)) as TEdit;
  check100Perc(x);
  try
    v1 := StrToFloat(x.Text,fsettings);
    v2 := StrToFloat(y.Text,fsettings);
    if cb_allow_fakt_m_rek.Checked and (v1 > v2) then
      X.Text := FormatFloat('0.000', v2,fsettings);
    // TODO - возможно необходимо копировать не 0 из отбора
  except
    x.Text := '0.00';
  end;
end;

procedure TRDFForm.check_095_F(Sender: TEdit);
var
  x: TCaption;
  y: Extended;
begin
  x := Sender.Text;
  try
    y := StrToFloat(x, fsettings);
    if y > 0.95 then y := 0.95;
  except
    y := 0.95;
// TODO - установить галку
  end;
  Sender.Text := FormatFloat('0.000', y, fsettings);
end;

procedure TRDFForm.FillCharts;
var
  s: Extended;
  aChart: TImage;
  Chart_id: Integer;
begin
  md_Charts.First;
  while not md_Charts.EOF do
  begin
    Chart_id := md_Charts.FieldByName('id').AsInteger;
    s := getChartTotalValue(Chart_id);
    if s <> 0 then
    begin
      md_Pies.First;
      aChart := FindComponent(md_Charts.FieldByName('Chart').AsString) as TImage;
      DrawPieChart(Chart_id, aChart, s);
    end;
    md_Charts.Next;
  end;
end;

procedure TRDFForm.mi_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure TRDFForm.mi_Melk_FracClick(Sender: TObject);
begin
  RDFMelkFracForm.ShowModal;
end;

procedure TRDFForm.mi_NewRDF(Sender: TObject);
var
  x: String;
begin
  x := GetTempFileName + '.csv';
  fm_DefaultValues.mm_Default_Values.Lines.SaveToFile(x);
  fileToForm(x);
  //formToFile(x);
end;

procedure TRDFForm.mi_OpenClick(Sender: TObject);
begin
  if dl_Open.Execute then FileToForm(dl_Open.FileName);
end;

procedure TRDFForm.mi_OtborClick(Sender: TObject);
begin
  RDFOtborForm.ShowModal;
end;

procedure TRDFForm.mi_SaveAsClick(Sender: TObject);
begin
  if dl_Save.Execute then FormToFile(dl_Save.FileName);
end;

procedure TRDFForm.mi_tbo_k_spravClick(Sender: TObject);
begin
  koeffform.RDFCoeffForm.ShowModal;
end;

procedure TRDFForm.FillMelkFracPanels(Sender: TObject);
var
  i: integer;
  N: integer;
  x: string;
  frac_name: TComponentName;
  frac_comp: TControl;
  edit_name: string;
  edit_cont: TEdit;
  pl: TPanel;
begin
  if rg_Melk_Frac.ItemIndex = 0 then
    x := '_50';
  if rg_Melk_Frac.ItemIndex = 1 then
    x := '_75';
  if rg_Melk_Frac.ItemIndex = 2 then
    x := '_100';
  N := melkfrac.RDFMelkFracForm.ScrollBox1.ControlCount - 1;
  for i := 0 to N do
  begin
    frac_comp := melkfrac.RDFMelkFracForm.ScrollBox1.Controls[i];
    frac_name := frac_comp.Name;
    if pos('pl_', ' ' + frac_name) = 2 then
    begin
      pl := FindComponent(frac_name + '_value') as TPanel;
      edit_name := StringReplace(frac_name, 'pl_', 'ed_', []) + x;
      edit_cont := melkfrac.RDFMelkFracForm.FindComponent(edit_name) as TEdit;
      if edit_cont <> nil then
        pl.Caption := edit_cont.Text;
    end;
  end;
end;

procedure TRDFForm.Image1Paint(Sender: TObject);
begin
  Chart1.Canvas.Pie(0, 0, 100, 100, 0, 0, 100, 100);
  Chart1.Picture.SaveToFile('/tmp/a.png');
end;

procedure TRDFForm.SetDefPerc(Sender: TRadioGroup);
var
  n: TComponentName;
  x: integer;
  edit_type: string;
  edit_name: string;
  edit_cont: TEdit;
begin
  n := Sender.Name;
  x := Sender.ItemIndex;
  if x = 0 then
    edit_type := 'ed_rss_';
  if x = 1 then
    edit_type := 'ed_rso_';
  if x = 2 then
    edit_type := 'ed_avs_';
  edit_name := StringReplace(n, 'rg_', edit_type, []) + '_otbor';
  edit_cont := melkfrac.RDFMelkFracForm.FindComponent(edit_name) as TEdit;
  if edit_cont <> nil then
    edit_cont.Text := edit_cont.Text;
end;

procedure TRDFForm.SetFValue(Sender: TObject);
var
  x: TCheckGroup;
  i: integer;
begin
  x := Sender as TCheckGroup;
  for i := 0 to x.Items.Count - 1 do
  begin
    SetFValueByItem(x, i);
  end;
end;

procedure TRDFForm.SetFValueByItem(Sender: TObject; Index: integer);
var
  x: TCheckGroup;
  v: string;
  j: integer;
begin
  x := Sender as TCheckGroup;
  for j := 0 to ComponentCount - 1 do
  begin
    if x.Checked[Index] then
      v := '0.95'
    else
      v := '0.00';
    if (Components[j] is TEdit) and (Components[j].Tag = Index + 10000) then
    begin
      (Components[j] as TEdit).Text := v;
      if v = '0.95' then
        (Components[j] as TEdit).Color := clBackground
      else
        (Components[j] as TEdit).Color := clDefault;
    end;
  end;
end;

procedure TRDFForm.SetOtborPercent(Sender: TObject);
var
  x: TRadioGroup;
  k: string;
  z: TEdit;
  y: TEdit;
begin
  x := Sender as TRadioGroup;
  k := 'rss_';
  if x.ItemIndex = 1 then
    k := 'rso_';
  if x.ItemIndex = 2 then
    k := 'avs_';
  try
    y := otbor.RDFOtborForm.FindComponent('ed_' + k + x.HelpKeyword) as TEdit;
    z := FindComponent('ed_def_' + Copy(x.Name, 4, 100)) as TEdit;
    z.Text := y.Text;
    z := FindComponent('ed_' + Copy(x.Name, 4, 100)) as TEdit;
    z.Text := y.Text;
  finally
  end;

end;

procedure TRDFForm.SetOtborPercentAll(Sender: TObject);
var
  i: integer;
  x: TRadioGroup;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TRadioGroup then
    begin
      x := Components[i] as TRadioGroup;
      if x.HelpKeyword <> '' then
        SetOtborPercent(x);
    end;
  end;
end;

procedure TRDFForm.SetOtborPVXPercent(Sender: TObject);
var
  x: boolean;
begin
  x := (Sender as TRadioGroup).ItemIndex = 0;
  rg_OtborPVXPercent.Visible := x;
  rg_OtborPVXPercent.Enabled := x;
  rg_F_OtborPVXPercent.Visible := x;
  rg_F_OtborPVXPercent.Enabled := x;
end;

procedure TRDFForm.SetPVXFValue(Sender: TObject);
var
  x: TRadioGroup;
  p1: SizeInt;
  p2: SizeInt;
  v: string;
  s: string;
  ii: Integer;
begin
  x := Sender as TRadioGroup;
  ii := x.ItemIndex;
  if ii <= x.Items.Count then
  begin
    s := x.Items[ii];
    p1 := pos('(', s);
    p2 := pos(')', s);
    v := Copy(s, p1 + 3, p2 - p1 - 3);
  end else v := '00';
  ed_F_OtborPVXPercent.Text := '0.' + v;
end;

procedure TRDFForm.ts_ResultShow(Sender: TObject);
begin
  EmptyMD;
  fillTable1;
  fillChart1;
  fillTable2;
  fillChart2;
  fillTable3;
  fillTable4;
  fillChart3;
  fillChart456;
  setResultHeight;
  FillCharts;
end;

procedure TRDFForm.fillChart1;
var
  n: Integer;
  i: Integer;
begin
  n := NewChart('chart1');
  for i := 1 to 4 do
  begin
    NewPie(
      n,
      sg_Table1.Cells[0,i],
      StrToFloat(sg_Table1.Cells[1,i],fsettings),
      RGBToColor(Random(255),Random(255),Random(255))
    );
  end;
end;

function TRDFForm.sbToHtml(atag: integer): string;
//var
//  html: string;
//  i: integer;
//  x: TComponent;
begin
  //html := '';
  //for i := 0 to RDFForm.ComponentCount - 1 do
  //begin
  //  x := RDFForm.Components[i];
  //  if (x is TLabel) or (x is TStringGrid) or (x is TChart) then
  //  begin
  //    if (x as TControl).Tag = atag then
  //    begin
  //      Caption := x.Name;
  //      Application.ProcessMessages;
  //      if x is TLabel then
  //        html += ToHtml_label(x as TLabel);
  //      if x is TStringGrid then
  //        html += ToHtml_grid(x as TStringGrid);
  //      if x is TImage then
  //        html += ToHtml_chart(x as TImage);
  //    end;
  //  end;
  //end;
  //Result := html;
end;

procedure TRDFForm.setResultHeight;
begin
  pc_Table2.Height := 300;
  pc_Table3.Height := 300;
  setTableHeight(sg_Table4);
  pl_Chart4.Height := 300;
  pl_Chart5.Height := 300;
  pl_Chart6.Height := 300;
end;

procedure TRDFForm.setTableHeight(aTable: TStringGrid);
begin
  aTable.Height := aTable.DefaultRowHeight * aTable.RowCount + 3;
end;

function TRDFForm.pageToHtml(p: TTabSheet): string;
begin
  Result := '<div>';
  Result += '<h1>'+p.Caption+'</h1>'+#13+#10;
  if p = ts_tbo_morph      then Result += ToHTML_ts_tbo_morph;
  if p = ts_Melk_Frac      then Result += ToHTML_ts_Melk_Frac;
  if p = ts_Procent_Otbora then Result += ToHTML_ts_Procent_Otbora;
  if p = ts_RDF_Dop_Podg   then Result += ToHTML_ts_RDF_Dop_Podg;
  if p = ts_Selectivnost   then Result += ToHTML_ts_Selectivnost;
  if p = ts_Result         then Result += ToHTML_ts_Result;
  Result += '</div>';
  //
end;

function TRDFForm.ToHtml_grid(sg: TStringGrid): string;
var
  aCol: integer;
  html: string;
  aRow: integer;
  r: String;
begin
  with sg do
  begin
    html := '';
    for aRow := 0 to RowCount - 1 do
    begin
      r := '';
      for aCol := 0 to ColCount - 1 do
      begin
        if aRow = 0 then r += th(Cells[aCol, aRow])
                    else r += td(Cells[aCol, aRow]);
      end;
      html += tr(r);
    end;
  end;
  Result := table(html);
end;

function TRDFForm.ToHtml_chart(ch: TImage): string;
var
  aname: TComponentName;
begin
  aname := GetTempDir + ch.Name + '.png';
  ch.Picture.SaveToFile(aname);
  Result := '<img id="' + ch.Name + '" src="' + aname + '" alt="' + ch.Hint + '" />';
end;

function TRDFForm.ToHTML_ts_tbo_morph: String;
var
  i: Integer;
  y: TEdit;
  x: TPanel;
begin
  Result := tr(th('Наименование')+th('Значение'));
  for i := 0 to lb_ToExport.Items.Count - 1 do
  begin
    x := FindComponent('lb_' + lb_ToExport.Items[i]) as TPanel;
    y := FindComponent('ed_' + lb_ToExport.Items[i]) as TEdit;
    Result += tr(td(x.Caption)+td(y.Text));
  end;
  Result := table(Result);;
end;

function TRDFForm.ToHTML_ts_Melk_Frac: String;
var
  i: Integer;
  x: TPanel;
  y: TPanel;
begin
  if not cb_Melk_Frac.Checked then
  begin
    Result := p('При выбранном методе сортировки отсев мелкой фракции отсутствует.');
  end
  else
  begin
    Result := tr(th('Наименование')+th('Значение'));
    for i := 0 to lb_ToExport.Items.Count - 2 do
    begin
      WriteLn(lb_ToExport.Items[i]);
      x := FindComponent('pl_' + lb_ToExport.Items[i]) as TPanel;
      y := FindComponent('pl_' + lb_ToExport.Items[i] + '_value') as TPanel;
      Result += tr(td(x.Caption)+td(y.Caption));
    end;
    Result := ToHtml_RadioGroup(rg_Melk_Frac) +
              table(Result);
  end;
end;

function TRDFForm.ToHTML_ts_Procent_Otbora: String;
var
  i: Integer;
  x: TPanel;
  y: TRadioGroup;
  a: TEdit;
  b: TEdit;
  z: String;
begin
  Result := tr(th(pl_A_otbor.Caption)+
               th(pl_B_otbor1.Caption)+
               th(pl_B_otbor.Caption)+
               th(pl_B_otbor2.Caption));
  for i := 0 to lb_ToExport.Items.Count - 2 do
  begin
    x := FindComponent('pl_' + lb_ToExport.Items[i] + '_otbor') as TPanel;
    y := FindComponent('rg_' + lb_ToExport.Items[i] + '_otbor') as TRadioGroup;
    z := y.Items[y.ItemIndex];
    a := FindComponent('ed_def_' + lb_ToExport.Items[i] + '_otbor') as TEdit;
    b := FindComponent('ed_' + lb_ToExport.Items[i] + '_otbor') as TEdit;
    Result += tr(td(x.Caption)+td(z)+td(a.Text)+td(b.Text));
  end;
  Result := table(Result);
end;

function TRDFForm.ToHTML_ts_RDF_Dop_Podg: String;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to rg_RDF_Dop_Podg.Items.Count - 1 do
  begin
    Result += li(rg_RDF_Dop_Podg.Items[i],rg_RDF_Dop_Podg.Checked[i]);
  end;
  Result := p(rg_RDF_Dop_Podg.Hint) + ul(Result);
end;

function TRDFForm.ToHTML_ts_Selectivnost: String;
begin
  Result := ToHtml_RadioGroup(rg_Selectivnost);
  if rg_OtborPVXPercent.Enabled then Result += ToHtml_RadioGroup(rg_OtborPVXPercent);
  if ed_F_OtborPVXPercent.Enabled then Result += p('F<sub>PBX</sub> = ' + ed_F_OtborPVXPercent.Text);
end;

function TRDFForm.ToHTML_ts_Result: String;
begin
  Result := p(Label8.Caption);
  Result += ToHtml_grid(sg_Table1);
  Result += p(Chart1.Hint);
  Result += ToHtml_chart(Chart1);
  Result += p(Label2.Caption);
  Result += ToHtml_grid(sg_Table2);
  Result += p(Chart2.Hint);
  Result += ToHtml_chart(Chart2);
  Result += p(Label3.Caption);
  Result += ToHtml_grid(sg_Table3);
  Result += p(Chart3.Hint);
  Result += ToHtml_chart(Chart3);
  Result += p(Label4.Caption);
  Result += ToHtml_grid(sg_Table4);
  Result += p(Label5.Caption);
  Result += ToHtml_chart(Chart4);
  Result += p(Label6.Caption);
  Result += ToHtml_chart(Chart5);
  Result += p(Label7.Caption);
  Result += ToHtml_chart(Chart6);
end;

function TRDFForm.ToHtml_RadioGroup(aGroup:TRadioGroup): String;
var
  i: Integer;
  x: String;
begin
  Result := '';
  if aGroup.Visible then
  begin
    if aGroup.Hint <> '' then x := aGroup.Hint else x := aGroup.Caption;
    for i := 0 to aGroup.Items.Count - 1 do Result += li(aGroup.Items[i],aGroup.ItemIndex = i);
    Result := p(x) + ul(Result);
  end;
end;

function TRDFForm.p(aText: string): String;
begin
  Result := '<p>'+aText+'</p>'+#13+#10;
end;

function TRDFForm.ul(aText: string): String;
begin
  Result := '<ul>'+#13+#10+aText+#13+#10+'</ul>'+#13+#10;
end;

function TRDFForm.li(aText: string; aLabel: Boolean): String;
var
  x: String;
begin
  if aLabel then x := 'disc' else x := 'circle';
  Result := '<li type="'+x+'">'+aText+'</li>'+#13+#10;
end;

function TRDFForm.table(aText: string): String;
begin
  Result := '<table border="1" width="100%">'+#13+#10+aText+#13+#10+'</table>'+#13+#10;
end;

function TRDFForm.tr(aText: string): String;
begin
  Result := '<tr>'+#13+#10+aText+#13+#10+'</tr>'+#13+#10;
end;

function TRDFForm.th(aText: string): String;
begin
  Result := '<th>'+aText+'</th>';
end;

function TRDFForm.td(aText: string): String;
begin
  Result := '<td>'+aText+'</td>';
end;


procedure TRDFForm.DrawPie(aChart: TImage; aPie: String; aValue: Extended;
  nPie: Integer; alpha, beta: Extended);
var
  x3, y3, x4, y4: Integer;
  w: Integer;
  h: Integer;
  aColor: TColor;
  aX: Integer;
  aY: Integer;
begin
  w := aChart.Height;
  h := aChart.Height;
  x3 := w div 2 + round(100 * cos(beta));
  y3 := h div 2 + round(100 * sin(beta));
  x4 := w div 2 + round(100 * cos(alpha));
  y4 := h div 2 + round(100 * sin(alpha));

  //if (x3 = x4) and (y3 = y4) then
  //begin
  //  x3 := x4 - 1;
  //  y3 := y4 - 1;
  //end;

  aColor := getPieColor;
  aChart.Canvas.Brush.Color := aColor;
  aChart.Canvas.Pie(
    20, 20, w - 20, h - 20,
    x3, y3, x4, y4
  );
  aChart.Canvas.Brush.Color := clWhite;
  aChart.Canvas.Font.Color := aColor;
  if nPie < 13 then begin
    aX := w+20;
    aY := nPie * 20 + 5;
  end else
  begin
    aX := w+400;
    aY := ( nPie - 13 ) * 20 + 5;
  end;

  aChart.Canvas.TextOut(aX, aY, aPie + ' (' + FormatFloat('0.000',aValue,fsettings) + ' %)');
end;

procedure TRDFForm.formToFile(const file_name: String);
var
  j: Integer;
  a: TCheckGroup;
  i: Integer;
  aType: String;
  aName: TComponentName;
  aValue: TCaption;
  z: TComponent;
  y: TStringList;
begin
  y := TStringList.Create;
  y.Add(
    'aName^' +
    'aType^' +
    'aValue^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-^-'
  );
  for i := 0 to ComponentCount - 1 do
  begin
    z := Components[i];
    aName := z.Name;
    aValue := '^';
    if z is TEdit then
    begin
      aValue := (z as TEdit).Text;
      aType := 'TEdit';
    end;
    if z is TRadioGroup then
    begin
      aValue := IntToStr((z as TRadioGroup).ItemIndex);
      aType := 'TRadioGroup';
    end;
    if z is TCheckBox then
    begin
      if (z as TCheckBox).Checked then aValue := '1' else aValue := '0';
      aType := 'TCheckBox';
    end;
    if z is TCheckGroup then
    begin
      a := z as TCheckGroup;
      aType := 'TCheckGroup';
      aValue := '';
      for j := 1 to a.Items.Count - 1 do
        if a.Checked[j] then aValue += '1^' else aValue += '0^';
    end;
    if aValue <> '^' then y.Add(
      aName + '^' +
      aType + '^' +
      aValue
    );
  end;
  y.SaveToFile(file_name);
  y.Free;
end;

procedure TRDFForm.FileToForm(const file_name: String);
var
  n,t: String;
  chg: TCheckGroup;
  i: Integer;
begin
  RDFDataSet.Close;
  RDFDataSet.FileName  := file_name;
  RDFDataSet.Open;
  while not RDFDataSet.EOF do
  begin
    n := RDFDataSet.Fields[0].AsString;
    t := RDFDataSet.Fields[1].AsString;
    if t = 'TEdit' then (FindComponent(n) as TEdit).Text := RDFDataSet.Fields[2].AsString;
    if t = 'TCheckBox' then (FindComponent(n) as TCheckBox).Checked := RDFDataSet.Fields[2].AsInteger = 1;
    if t = 'TRadioGroup' then (FindComponent(n) as TRadioGroup).ItemIndex := RDFDataSet.Fields[2].AsInteger;
    if t = 'TCheckGroup' then
    begin
      chg := FindComponent(n) as TCheckGroup;
      for i := 1 to chg.Items.Count - 1 do chg.Checked[i] := RDFDataSet.Fields[1+i].AsInteger = 1;
    end;
    RDFDataSet.Next;
  end;
  RDFDataSet.Close;
end;

procedure TRDFForm.fillTable2;
var
  i: integer;
  x: TControl;
  a_name: string;
  A: extended;
  C: extended;
  y: Extended;
  M2: Extended;
  s1: Extended;
  s2: Extended;
begin
  sg_Table2.ColCount := 3;
  sg_Table2.RowCount := 1;
  M2 := StrToFloat(sg_Table1.Cells[1,1],fsettings);
  s1 := 0.0;
  s2 := 0.0;
  for i := 0 to pl_tbo_morph_names.ControlCount - 1 do
  begin
    x := pl_tbo_morph_names.Controls[i];
    if x.Name <> 'lb_Itogo' then
    begin
      sg_Table2.RowCount := i + 2;
      sg_Table2.Cells[0, sg_Table2.RowCount - 1] := x.Caption;
      a_name := Copy(X.Name, 4, 100);
      A := StrToFloat((FindComponent('ed_' + a_name) as TEdit).Text,fsettings);
      s1 += A;
      sg_Table2.Cells[1, sg_Table2.RowCount - 1] := FormatFloat('0.000', A,fsettings);
      if (FindComponent('pl_' + a_name + '_value') as TPanel).Caption <> '' then
      begin
        C := GetCByRDFName(a_name);
        y := (A * C * 100) / M2;
        if y > 0 then
        begin
          sg_Table2.Cells[2, sg_Table2.RowCount - 1] := FormatFloat('0.000', y,fsettings);
          s2 += y;
        end;
      end;
    end;
  end;
  sg_Table2.RowCount := sg_Table2.RowCount + 1;
  sg_Table2.Cells[0, sg_Table2.RowCount - 1] := 'Итого';
  sg_Table2.Cells[1, sg_Table2.RowCount - 1] := FormatFloat('0.000', s1,fsettings);
  sg_Table2.Cells[2, sg_Table2.RowCount - 1] := FormatFloat('0.000', s2,fsettings);
  setTableHeight(sg_Table2);
end;

procedure TRDFForm.fillTable3;
var
  i: integer;
  x: TControl;
  a_name: string;
  A: extended;
  B: extended;
  C: extended;
  F: extended;
  y: Extended;
  M1: Extended;
  s1: Extended;
  s2: Extended;
begin
  sg_Table3.ColCount := 3;
  sg_Table3.RowCount := 1;
  M1 := StrToFloat(sg_Table1.Cells[1,2],fsettings);
  s1 := 0.0;
  s2 := 0.0;
  for i := 0 to pl_tbo_morph_names.ControlCount - 1 do
  begin
    x := pl_tbo_morph_names.Controls[i];
    if x.Name <> 'lb_Itogo' then
    begin
      sg_Table3.RowCount := i + 2;
      sg_Table3.Cells[0, sg_Table3.RowCount - 1] := x.Caption;
      a_name := Copy(X.Name, 4, 100);
      A := StrToFloat((FindComponent('ed_' + a_name) as TEdit).Text,fsettings);
      s1 += A;
      sg_Table3.Cells[1, sg_Table3.RowCount - 1] := FormatFloat('0.000', A,fsettings);
      if (FindComponent('pl_' + a_name + '_value') as TPanel).Caption <> '' then
      begin
        B := StrToFloat((FindComponent('pl_' + a_name + '_value') as TPanel).Caption,fsettings);
        C := GetCByRDFName(a_name);
        F := GetFByRDFName(a_name);
        y := ((A - A * B - A * C) * F * 100) / M1;
        if y > 0 then
        begin
          sg_Table3.Cells[2, sg_Table3.RowCount - 1] := FormatFloat('0.000', y,fsettings);
          s2 += y;
        end;
      end;
    end;
  end;
  sg_Table3.RowCount := sg_Table3.RowCount + 1;
  sg_Table3.Cells[0, sg_Table3.RowCount - 1] := 'Итого';
  sg_Table3.Cells[1, sg_Table3.RowCount - 1] := FormatFloat('0.000', s1,fsettings);
  sg_Table3.Cells[2, sg_Table3.RowCount - 1] := FormatFloat('0.000', s2,fsettings);
  setTableHeight(sg_Table3);
end;

procedure TRDFForm.fillTable4;
var
  A: extended;
  S_T: extended;
  S_Z: extended;
  S_S: extended;
  B: extended;
  C: extended;
  F: extended;
  T: extended;
  S: extended;
  Z: extended;
  i: integer;
  a_name: string;
  Cl: extended;
  S_Cl: extended;
  n1: Integer;
  n2: Integer;
  n3: Integer;
  k: Extended;
begin
  S_T := 0.0;
  S_Z := 0.0;

  S_S := 0.0;
  S_Cl := 0.0;

  n1 := NewChart('chart4');
  n2 := NewChart('chart5');
  n3 := NewChart('chart6');

  for i := 0 to lb_ComponentyOtkhodov.Items.Count - 1 do
  begin
    a_name := lb_ComponentyOtkhodov.Items[i];
    try
      A := StrToFloat((FindComponent('ed_' + a_name) as TEdit).Text,fsettings);
      B := StrToFloat((FindComponent('pl_' + a_name + '_value') as TPanel).Caption,fsettings);
      C := GetCByRDFName(a_name);
      F := GetFByRDFName(a_name);
      T := StrToFloat((calcunit.CalcForm.FindComponent('ed_' + a_name + '_T') as
        TEdit).Text,fsettings);
      S := StrToFloat((calcunit.CalcForm.FindComponent('ed_' + a_name + '_S') as
        TEdit).Text,fsettings);
      Z := StrToFloat((calcunit.CalcForm.FindComponent('ed_' + a_name + '_Z') as
        TEdit).Text,fsettings);
      Cl := StrToFloat((calcunit.CalcForm.FindComponent('ed_' + a_name + '_Cl') as
        TEdit).Text,fsettings);
      k := calcKfromABCF(a_name);
      S_T := S_T + T * k;
      S_Z := S_Z + Z * k;
      S_S := S_S + S * k;
      if T * k > 0 then NewPie(n1, a_name, T * k, getPieColor);
      if Z * k > 0 then NewPie(n2, a_name, Z * k, getPieColor);
      if S * k > 0 then NewPie(n3, a_name, S * k, getPieColor);

      S_Cl := S_Cl + Cl * (((A - A * B - A * C) * F) / 1.0);
    finally
    end;
  end;
  sg_Table4.Cells[1, 1] := FormatFloat('0.000', S_T,fsettings);
  sg_Table4.Cells[1, 2] := FormatFloat('0.000', S_Cl,fsettings);
  sg_Table4.Cells[1, 3] := FormatFloat('0.000', S_Z,fsettings);
  sg_Table4.Cells[1, 4] := FormatFloat('0.000', S_S,fsettings);
  setTableHeight(sg_Table4);
end;

procedure TRDFForm.fillChart456;
var
  n1: Integer;
  n2: Integer;
  n3: Integer;
  S_T: Extended;
  S_Z: Extended;
  S_S: Extended;
  i: Integer;
  a_name: String;
  T: Extended;
  S: Extended;
  Z: Extended;
  k: Extended;
  b_name: TCaption;
begin
  n1 := NewChart('chart4');
  n2 := NewChart('chart5');
  n3 := NewChart('chart6');
  S_T := StrToFloat(sg_Table4.Cells[1,1],fsettings);
  S_Z := StrToFloat(sg_Table4.Cells[1,3],fsettings);
  S_S := StrToFloat(sg_Table4.Cells[1,4],fsettings);
  for i := 0 to lb_ComponentyOtkhodov.Items.Count - 1 do
  begin
    a_name := lb_ComponentyOtkhodov.Items[i];
    b_name := (FindComponent('lb_' + a_name) as TPanel).Caption;
    try
      k := calcKfromABCF(a_name);
      T := StrToFloat((calcunit.CalcForm.FindComponent('ed_' + a_name + '_T') as
        TEdit).Text,fsettings);
      S := StrToFloat((calcunit.CalcForm.FindComponent('ed_' + a_name + '_S') as
        TEdit).Text,fsettings);
      Z := StrToFloat((calcunit.CalcForm.FindComponent('ed_' + a_name + '_Z') as
        TEdit).Text,fsettings);
      if T * k > 0 then NewPie(n1, b_name, (T * k * 100) / S_T, getPieColor);
      if Z * k > 0 then NewPie(n2, b_name, (Z * k * 100) / S_Z, getPieColor);
      if S * k > 0 then NewPie(n3, b_name, (S * k * 100) / S_S, getPieColor);
    finally
    end;
  end;
end;

procedure TRDFForm.EmptyMD;
begin
  while md_Pies.RecordCount > 0 do
  begin
    md_Pies.Delete;
  end;
  while md_Charts.RecordCount > 0 do
  begin
    md_Charts.Delete;
  end;
end;

function TRDFForm.calcKfromABCF(var a_name: String): Extended;
var
  F: Extended;
  C: Extended;
  B: Extended;
  A: Extended;
begin
  A := StrToFloat((FindComponent('ed_' + a_name) as TEdit).Text,fsettings);
  B := StrToFloat((FindComponent('pl_' + a_name + '_value') as TPanel).Caption,fsettings);
  C := GetCByRDFName(a_name);
  F := GetFByRDFName(a_name);
  Result := (A - A * B - A * C) * F;
end;

procedure TRDFForm.DrawPieChart(const Chart_id: Integer; const aChart: TImage;
  const s: Extended);
var
  v: Double;
  nPie: Integer;
  aPie: String;
  b: Extended;
  a: Extended;
begin
  aChart.Canvas.Brush.Color := clWhite;
  aChart.Canvas.Clear;
  b := 0.0;
  nPie := 0;
  while not md_Pies.EOF do
  begin
    if md_Pies.FieldByName('Chart_id').AsInteger = Chart_id then
    begin
      v := md_Pies.FieldByName('Value').AsFloat;
      a := v * 2 * pi / s;
      aPie := md_Pies.FieldByName('Name').AsString;
      DrawPie(
        aChart,
        aPie,
        v,
        nPie,
        b,
        b + a
      );
      nPie += 1;
      b += a;
    end;
    md_Pies.Next;
  end;
end;

begin

end.
