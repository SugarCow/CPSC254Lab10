#!/bin/bash

if command -V python3 >/dev/null 2>&1 ; then
    echo "python3 found"
    echo "version: $(python3 -V)"
else
    echo "python3 not found"
fi

if command -V pip >/dev/null 2>&1 ; then
    echo "pip found"
    echo "version: $(pip -V)"
else
    echo "pip not found. Use: apt install python3-pip"
fi

if pip show pygame &>/dev/null; then
    echo "pygame found"
    echo "version: $(pip show pygame)"
else
    echo "pygame not found. Use: python3 -m pip install -U pygame --user"
fi