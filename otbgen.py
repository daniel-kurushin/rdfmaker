# -*- coding: utf8 -*-
top = 0
k = 0
f = open('fr.txt').readlines()
cl = 'clSilver'
cls = 'TPanel'
p = 'Caption'

for name, cap, t0, t1, t2 in [
['a','Фракция','Ручная сортировка смешанных','Ручная сортировка раздельно отобранных','Автоматическая сортировка'],
['Bumaga','Бумага','0.22','0.55','0.37'],
['Karton','Картон','0.22','0.55','0.7'],
['Polimery','Полимеры (для всех)','0.3','0.45','0.5'],
['Tetrapak','Тетрапак','1','1','1'],
['Organika','Органика','1','1','1'],
['Steklo','Стекло','0.3','0.4','0.4'],
['Chernye_metally','Черные металлы','1','1','1'],
['Cvetnye_metally','Цветные металлы','1','1','1'],
['Drevesina','Древесина','1','1','1'],
['Tekstil','Текстиль','1','1','1'],
['Inertnye_materialy','Инертные материалы','1','1','1'],
['Prochee','Прочее','1','1','1'],
]:
    for l in f:
        print l.rstrip().replace("%C%",cap).replace("%N%",name).replace("%T0%",t0).replace("%T1%",t1).replace("%T2%",t2).replace('%K%',str(k)).replace("%T%",str(top)).replace("%CL%",cl).replace("%CLS%",cls).replace("%P%",p)
    top += 30
    k += 1
    if k%2 == 0:cl = 'clSilver'
    if k%2 == 1:cl = 'clNone'
    cls = 'TEdit'
    p = 'Text'

