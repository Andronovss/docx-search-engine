#!/bin/sh

    unzip PMI.docx -d tmp #unzip
    sed -i '' -e "s/Table of Contents/Оглавление/g" tmp/word/document.xml #find/replace
    cd tmp && zip -r ../PMI1.docx * && cd .. #zip
    rm -rf tmp
