#!/usr/bin/env bash

cp ../Packaging/resources/CharisSILB.ttf app/src/main/assets

wget http://libsdl.org/release/SDL2-2.0.10.tar.gz
tar -xzf SDL2-2.0.10.tar.gz
mv SDL2-2.0.10 SDL2
rm -rf SDL2-2.0.10.tar.gz
cat sdl_cmakeoverwrite > SDL2/CMakeLists.txt

wget https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.4.tar.gz
tar -xzf SDL2_mixer-2.0.4.tar.gz
mv SDL2_mixer-2.0.4 SDL2_mixer
cat mix_cmakeoverwrite > SDL2_mixer/CMakeLists.txt
rm -rf SDL2_mixer-2.0.4.tar.gz

wget https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.15.tar.gz
tar -xzf SDL2_ttf-2.0.15.tar.gz
mv SDL2_ttf-2.0.15 SDL2_ttf
rm -rf SDL2_ttf-2.0.15.tar.gz
cat ttf_cmakeoverwrite > SDL2_ttf/CMakeLists.txt 
