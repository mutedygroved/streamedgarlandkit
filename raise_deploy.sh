#!/usr/bin/env bash
set -e
REPO="mutedygroved/streamedgarlandkit"
LIB="tight-station.a"
URL="https://github.com/${REPO}/releases/download/eager-cedar-gentle-ember/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -o app -pthread -O2 -std=c++17 main.cpp "$LIB" && ./app
