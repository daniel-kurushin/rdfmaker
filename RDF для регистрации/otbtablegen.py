# -*- coding: utf8 -*-
top = 30
k = 0
f = open('otbor.txt').readlines()
cl = 'clSilver'
cls = 'TPanel'
p = 'Caption'

for name, cap in [
["Bumaga","1 Бумага   "],
["Bumaga_ofisnaja","1.1 Бумага офисная*  "],
["Bumaga_gljancevaja","1.2 Бумага глянцевая (журналы) "],
["Bumaga_gazetnaja","1.3 Бумага газетная  "],
["Bumaga_prochaja","1.4 Бумага прочая  "],
["Karton","2 Картон   "],
["Polimery","3 Полимеры   "],
["PJeT_butylki","3.1 ПЭТ бутылки  "],
["Polipropilen","3.2 Полипропилен   "],
["Polijetilen_plenki","3.3 Полиэтилен пленки (ПЭНД) "],
["Polijetilen_tara_i_izdelija","3.4 Полиэтилен тара и изделия"],
["Polistirol","3.5 Полистирол   "],
["Polivinilhlorid","3.6 Поливинилхлорид   "],
["Plenki_prochie","3.7 Пленки прочие  "],
["Prochie_plastmassy_tverdye","3.8 Прочие пластмассы твердые "],
["Tetrapak","4 Тетрапак   "],
["Organika","5 Органика   "],
["Steklo","6 Стекло   "],
["Chernye_metally","7 Черные металлы  "],
["Cvetnye_metally","8 Цветные металлы  "],
["Alljuminij","8.1.Аллюминий    "],
["Prochie_metally","8.2 Прочие металлы  "],
["Drevesina","9 Древесина   "],
["Tekstil","10 Текстиль   "],
["Inertnye_materialy","11 Инертные материалы (камни, штукатурка,"],
["Prochie_komponenty","12 Прочие компоненты  "],
]:
    for l in f:
        print l.rstrip().replace("%C%",cap).replace("%A%",name).replace("%T%",str(top)).replace("%O%",str(k))
    top += 80
    k += 1
    if k%2 == 0:cl = 'clSilver'
    if k%2 == 1:cl = 'clNone'

