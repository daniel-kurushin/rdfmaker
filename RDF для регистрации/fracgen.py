# -*- coding: utf8 -*-
top = 0
k = 0
f = open('mf.txt').readlines()
for name, cap, v_50, v_75, v_100 in [
['Bumaga','1 Бумага','','',''],
['Bumaga_ofisnaja','1.1 Бумага офисная*','0','0','0.25'],
['Bumaga_gljancevaja','1.2 Бумага глянцевая (журналы)','0','0','0.3'],
['Bumaga_gazetnaja','1.3 Бумага газетная','0','0','0.35'],
['Bumaga_prochaja','1.4 Бумага прочая','0','0.5','0.7'],
['Karton','2 Картон','0.04','0.09','0.28'],
['Polimery','3 Полимеры','','',''],
['PJeT butylki','3.1 ПЭТ бутылки','0.01','0.02','0.25'],
['Polipropilen','3.2 Полипропилен','0.01','0.21','0.35'],
['Polijetilen_plenki','3.3 Полиэтилен пленки (ПЭНД)','0','0','0.05'],
['Polijetilen_tara_i_izdelija','3.4 Полиэтилен тара и изделия (ПЭВД)','0.03','0.06','0.22'],
['Polistirol','3.5 Полистирол','0.1','0.21','0.35'],
['Polivinilhlorid','3.6 Поливинилхлорид','0.1','0.21','0.35'],
['Plenki_prochie','3.7 Пленки прочие','0.06','0.13','0.3'],
['Prochie_plastmassy_tverdye','3.8 Прочие пластмассы твердые','0.1','0.21','0.35'],
['Tetrapak','4 Тетрапак','0.05','0.1','0.4'],
['Organika','5 Органика','0.25','0.5','0.86'],
['Steklo','6 Стекло','0.1','0.2','0.5'],
['Chernye_metally','7 Черные металлы','0.3','0.65','0.8'],
['Cvetnye_metally','8 Цветные металлы','','',''],
['Alljuminij','8.1.Аллюминий','0.03','0.09','0.46'],
['Prochie_metally','8.2 Прочие металлы','0.3','0.65','0.8'],
['Drevesina','9 Древесина','0.06','0.1','0.17'],
['Tekstil','10 Текстиль','0.07','0.12','0.33'],
['Inertnye_materialy','11 Инертные материалы (камни, штукатурка, бетонные изделия и пр.)','0.15','0.3','0.35'],
['Prochie_komponenty','12 Прочие компоненты','0','0','0.2'],
]:
    for l in f:
        print l.rstrip().replace("%C%",cap).replace("%N%",name).replace("%T50%",v_50).replace("%T75%",v_75).replace("%T100%",v_100).replace('%K%',str(k)).replace("%T%",str(top))
    top += 30
    k += 1
    

