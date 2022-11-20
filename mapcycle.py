from os import listdir, path

maps = """ad_dustbowl
ad_gravelpit
arena_well
cp_badlands
cp_granary
cp_powerhouse
cp_well
ctf_2fort
ctf_badlands
ctf_well
koth_crossover
pl_goldrush
tc_hydro"""

def main():
    extension = ".bsp.bz2"
    dir = "pf2/maps"
    
    f = open("mapcycle.txt", "w")
    f.write(maps)
    for file in listdir(dir):
        if file.endswith(extension):
            f.write(path.join(file[:-8]) + "\n")
    
    f.close()

if __name__ == "__main__":
    main()