program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, dbflaz, tachartlazaruspkg, lazcontrols, memdslaz, sdflaz, mainwin,
  rdfdata, koeffform, utils, melkfrac, otbor, calcunit, defvalues,
  laz_fpspreadsheet;

{$R *.res}

begin
  Application.Title:='Калькулятор RDF';
  Application.Initialize;
  Application.CreateForm(TRDFForm, RDFForm);
  Application.CreateForm(TRDFCoeffForm, RDFCoeffForm);
  Application.CreateForm(TRDFMelkFracForm, RDFMelkFracForm);
  Application.CreateForm(TRDFOtborForm, RDFOtborForm);
  Application.CreateForm(TCalcForm, CalcForm);
  Application.CreateForm(Tfm_DefaultValues, fm_DefaultValues);
  Application.Run;
end.

