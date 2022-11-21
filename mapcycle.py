from os import listdir, path

def main():
    extension = ".bsp.bz2"
    dir = "pf2/maps"
    
    f = open("mapcycle.txt", "w")
    for file in listdir(dir):
        if file.endswith(extension):
            f.write(path.join(file[:-8]) + "\n")
    
    f.close()

if __name__ == "__main__":
    main()