with open("./mine.rasi") as f:
    lns = f.readlines()

lns[4:10] = ["bababowie"]*6

for ln in range(len(lns)):
    print(str(ln) + lns[ln])
