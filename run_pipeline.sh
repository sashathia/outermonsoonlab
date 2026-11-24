#!/usr/bin/env bash
set -e
LIB="hundredth-grove.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/sashathia/outermonsoonlab/releases/download/calm-harbor-golden-harbor/hundredth-grove.a" --output "$LIB"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
