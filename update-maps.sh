    #!/bin/env bash
git pull
git clean -df
git restore .

echo Extracting map archives
cd maps
for i in *.bz2; do
    if [ -f "$i" ]; then
        bzip2 -vdk $i
    fi
done

echo Removing outdated map files
suffixes=(
    .res
    _*.txt
)

for i in *.bsp; do

    if [ -f "${i}.bz2" ]; then 
        continue
    fi

    map=${i%".bsp"}
    echo Removing $map

    for s in "${suffixes[@]}"; do
        rm ${map}${s}
    done

    rm $i
done

cd ..