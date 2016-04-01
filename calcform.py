x = open('form').readlines()
y = open('a.csv').readlines()

j = 0

for i in range(len(x)):
    if x[i].strip() == "Text = '0.00'":
        x[i] = x[i].replace("Text = '0.00'","Text = '"+y[j].strip()+"'")
        j += 1
    print x[i] ,


