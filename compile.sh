#!/bin/bash

if ! command -v node > /dev/null 2>&1; then
    echo "Node.js is not installed."
    exit 1
fi

if ! command -v npm > /dev/null 2>&1; then
    echo "npm is not installed."
    exit 1
fi

cp -f migupad.html project

cd project
npm install
npm run build
cp -f ./dist/migupad.html ../migupad_compiled.html
cd ..
