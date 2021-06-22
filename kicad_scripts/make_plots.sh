#!/bin/bash -x

PROJECT=$( ls *.pro | head -n 1 )
SCRIPT_DIR=$( dirname $0 )

mkdir -p images
rm -f images/*.png images/*.html

BASE=${PROJECT%.*}
BOARD=$BASE.kicad_pcb
TWOLAYER=$( grep -q In1.Cu $BOARD; echo $? )

python3 $SCRIPT_DIR/plot_assembly.py $BOARD
python3 $SCRIPT_DIR/plot_gerbers.py $BOARD $TWOLAYER

gerbv -D 1200 -a -x png -o images/${BASE}_top.png \
    -f '#000000ff' gerbers/$BASE.TXT \
    -f '#ffffffaa' gerbers/$BASE.GTO \
    -f '#888888FF' gerbers/$BASE.GTP \
    -f '#ff880088' gerbers/$BASE.GTS \
    -f '#008800ff' gerbers/$BASE.GTL \
    -f '#aaaaaaff' gerbers/$BASE.GML

gerbv -D 1200 -a -x png -o images/${BASE}_bottom.png \
    -f '#000000ff' gerbers/$BASE.TXT \
    -f '#ffffffaa' gerbers/$BASE.GBO \
    -f '#888888FF' gerbers/$BASE.GBP \
    -f '#ff880088' gerbers/$BASE.GBS \
    -f '#008800ff' gerbers/$BASE.GBL \
    -f '#aaaaaaff' gerbers/$BASE.GML

if [ $TWOLAYER == 0 ]
then
gerbv -D 1200 -a -x png -o images/${BASE}_mid1.png \
    -f '#000000ff' gerbers/$BASE.TXT \
    -f '#008800ff' gerbers/$BASE.G2L \
    -f '#aaaaaaff' gerbers/$BASE.GML
    
gerbv -D 1200 -a -x png -o images/${BASE}_mid2.png \
    -f '#000000ff' gerbers/$BASE.TXT \
    -f '#008800ff' gerbers/$BASE.G3L \
    -f '#aaaaaaff' gerbers/$BASE.GML
fi

kicad_html_bom --dest-dir images --no-browser $BOARD

