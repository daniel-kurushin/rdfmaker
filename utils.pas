unit utils;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Controls, ExtCtrls, Graphics, Forms, StdCtrls, rdfdata;

type

  { TUtl }

  TUtl = class
  private
    o: TControl;
    r: Boolean;
    x: TTimer;
    y: TColor;
    z: Integer;
    procedure Blink(Sender: TObject);
  public
    procedure ShowError(Sender: TControl);
    function FindControlByTag(Owner:TForm; aTag : integer):TComponent;
    //procedure rdfDataToForm(aRDF: TRDF; aEdit: TEdit);
    //procedure formToRDFData(aRDF: TRDF; aEdit: TEdit);
    //procedure ccDataToForm(aCalcCoeff: TCalcCoeff; aEdit: TEdit);
    //procedure formToCCData(aCalcCoeff: TCalcCoeff; aEdit: TEdit);
  end;

var utl:TUtl;

implementation

procedure TUtl.Blink(Sender: TObject);
begin
  WriteLn(Sender.ToString);
  if z mod 2 = 0 then o.Color := clRed
  else o.Color := y;
  if z < 3 then
    z += 1
  else
    x.Free;
end;

procedure TUtl.ShowError(Sender: TControl);
begin
  if not r then
  begin
    WriteLn(Sender.Name);
    r := True;
    o := Sender;
    x := TTimer.Create(Sender.Parent);
    x.Interval := 500;
    x.OnTimer  := @Blink;
    y := Sender.Color;
    z := 0;
    x.Enabled  := true;
    r := False;
  end
  else
    WriteLn('!!!!!!!!!!!');

end;

function TUtl.FindControlByTag(Owner: TForm; aTag: integer): TComponent;
var
  i: Integer;
  found: Boolean;
begin
  found := False;
  for i := 0 to Owner.ComponentCount - 1 do
  begin
    if Owner.Components[i].Tag = aTag then
    begin
      Result := Owner.Components[i];
      found := true;
      break;
    end;
  end;
  if not found then raise EAbort.Create('Не найден компонент с тэгом ' +
                       IntToStr(aTag) +
                       ' в форме ' +
                       Owner.Name +
                       ' (' + Owner.Caption + ').');
end;

//procedure TUtl.rdfDataToForm(aRDF: TRDF; aEdit: TEdit);
//begin
//  aEdit.Text := FormatFloat('0.000',aRDF.values[aEdit.Tag]);
//end;
//
//procedure TUtl.formToRDFData(aRDF: TRDF; aEdit: TEdit);
//begin
//  aRDF.values[aEdit.Tag] := StrToFloat(aEdit.Text);
//  rdfDataToForm(aRDF, aEdit);
//end;
//
//procedure TUtl.ccDataToForm(aCalcCoeff: TCalcCoeff; aEdit: TEdit);
//begin
//  aEdit.Text := FormatFloat('0.000',aCalcCoeff.values[aEdit.Tag]);
//end;
//
//procedure TUtl.formToCCData(aCalcCoeff: TCalcCoeff; aEdit: TEdit);
//begin
//  aCalcCoeff.values[aEdit.Tag] := strtofloat(aEdit.Text);
//  ccDataToForm(aCalcCoeff, aEdit);
//end;

begin
  utl := TUtl.Create;
  utl.r := False;
end.

