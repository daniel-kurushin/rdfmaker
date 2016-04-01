unit defvalues;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tfm_DefaultValues }

  Tfm_DefaultValues = class(TForm)
    lb_Colors: TListBox;
    ListBox1: TListBox;
    mm_HTML_tail: TMemo;
    mm_HTML_Head: TMemo;
    mm_Default_Values: TMemo;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fm_DefaultValues: Tfm_DefaultValues;

implementation

{$R *.lfm}

end.

