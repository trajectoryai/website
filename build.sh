#!/bin/sh
# Build the project.
cd _source && hugo -t hugo-coder && cd ..

rm -rf docs/*
# Go To Public folder
mv -f _source/public/* docs/
