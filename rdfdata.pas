unit rdfdata;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const

  Bumaga_ofisnaja     = 1001;
  Bumaga_gljancevaja  = 1002;
  Bumaga_gazetnaja    = 1003;
  Bumaga_prochaja     = 1004;
  Karton              = 1005;

  PJeT_butylki        = 1006;
  Polipropilen        = 1007;
  Polijetilen_plenki  = 1008;
  Polijetilen_tara_i_izdelija  = 1009;
  Polistirol          = 1010;
  Polivinilhlorid     = 1011;
  Plenki_prochie      = 1012;
  Prochie_plastmassy_tverdye  = 1013;

  Tetrapak            = 1014;
  Organika            = 1015;
  Steklo              = 1016;
  Chernye_metally     = 1017;
  Alljuminij          = 1018;
  Prochie_metally     = 1019;
  Drevesina           = 1020;
  Tekstil             = 1021;
  Inertnye_materialy  = 1022;
  Prochie_komponenty  = 1023;

  Bumaga  = 1000;
  Polimery  = 2000;
  Cvetnye_metally  = 3000;

  c_calculated = 'calculated';
  c_entered    = 'entered';
  c_untouched  = '0';

type

  TRDFData = record
    //A, // Морфологический состав отходов %
    //B, // Отсев мелких фракций
    //B0,//                      по умолчанию (максимальный)
    //C, // % отбора
    //C0,// Ручная сортировка
    //C1,// Ручная раздельная
    //C2,// Автоматическая
    //F, // Доп. подготовка RDF
    //Z, // Зольность
    //S, // Сера
    //T, // Теплотворность
    //Cl,// Хлор
    //k, // Коэффициенты пересчета
    //  : array[Bumaga_ofisnaja..Prochie_komponenty] of Extended;
  end;

var
  fsettings : TFormatSettings;
implementation

 { TRDF }

begin
  fsettings.DecimalSeparator := '.';
end.

