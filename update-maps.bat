@echo off

git pull
git checkout pf2
git restore *

cd pf2/maps
for /R %%f in (*.bz2) do (
	7z x -y %%f
)	

move /Y *.bsp ../../../pf2/maps
move /Y *.res ../../../pf2/maps
move /Y *.txt ../../../pf2/maps

cd ..
robocopy models ../../pf2/models /e

cd ../../pf2-fastdl/pf2
robocopy materials ../../pf2/materials /e

cd ../../pf2-fastdl/pf2
robocopy sound ../../pf2/sound /e

cd ../../pf2-fastdl/pf2
robocopy particles ../../pf2/particles /e

cd ../../pf2-fastdl/pf2
robocopy scripts ../../pf2/scripts /e

cd ..
move /Y mapcycle.txt ../pf2/cfg
move /Y motd.txt ../pf2/cfg
cd ..
