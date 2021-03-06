#!/bin/bash

set -eo pipefail

xcodebuild -project Pokedex.xcodeproj \
            -scheme Pokedex \
            -destination platform=iOS\ Simulator,OS=14.4,name=iPhone\ 12 \
            clean test | xcpretty
