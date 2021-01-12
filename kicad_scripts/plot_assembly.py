#!/usr/bin/python

import sys
from pcbnew import *
filename=sys.argv[1]

board = LoadBoard(filename)
pctl = PLOT_CONTROLLER(board)
popt = pctl.GetPlotOptions()

popt.SetOutputDirectory("gerbers/")
popt.SetPlotFrameRef(False)
popt.SetLineWidth(FromMM(0.35))
popt.SetAutoScale(False)
popt.SetScale(3)
popt.SetMirror(False)
popt.SetUseGerberAttributes(True)
popt.SetExcludeEdgeLayer(False);
popt.SetUseAuxOrigin(True)
popt.SetSubtractMaskFromSilk(False)

# General assembly drawing

popt.SetPlotReference(True)
popt.SetPlotValue(True)
popt.SetPlotInvisibleText(False)

pctl.SetLayer(Edge_Cuts)
pctl.OpenPlotfile("Assembly", PLOT_FORMAT_PDF, "General assembly")
pctl.SetColorMode(True)

def plot(layer, color):
    for i in range(1, 13):
        board.SetElementVisibility(i, True)

    pctl.SetLayer(layer)
    popt.SetColor(color)
    board.Colors().SetLayerColor(layer, color)
    board.Colors().SetAllColorsAs(color)
    pctl.PlotLayer()

lightgrey = COLOR4D(0.8, 0.8, 0.8, 1.0)
black = COLOR4D(0.0, 0.0, 0.0, 1.0)

plot(Edge_Cuts, lightgrey)
plot(F_Paste, lightgrey)

popt.SetPlotPadsOnSilkLayer(True)
plot(F_SilkS, lightgrey)
popt.SetPlotPadsOnSilkLayer(False)

plot(F_Fab, black)




