import sys
import os
import os.path
from pcbnew import *

board_file = sys.argv[1]

twolayer = True
if len(sys.argv) > 2: twolayer = bool(int(sys.argv[2]))

base = os.path.splitext(os.path.basename(board_file))[0]
board = LoadBoard(board_file)
pctl = PLOT_CONTROLLER(board)
popt = pctl.GetPlotOptions()
popt.SetOutputDirectory("gerbers/")

# Set some important plot options:
popt.SetPlotFrameRef(False)
popt.SetLineWidth(FromMM(0.35))

popt.SetAutoScale(False)
popt.SetScale(1)
popt.SetMirror(False)
popt.SetUseGerberAttributes(False)
popt.SetUseGerberProtelExtensions(False)
popt.SetExcludeEdgeLayer(True);
popt.SetUseAuxOrigin(True)
popt.SetSubtractMaskFromSilk(True)

def plot(extension, layer):
    pctl.SetLayer(layer)
    pctl.OpenPlotfile("", PLOT_FORMAT_GERBER, "")
    pctl.PlotLayer()
    pctl.ClosePlot()
    
    origname = os.path.join(pctl.GetPlotDirName(), base + ".gbr")
    newname = os.path.join(pctl.GetPlotDirName(), base + extension)
    os.rename(origname, newname)

plot(".GTL", F_Cu)
plot(".GTP", F_Paste)
plot(".GTS", F_Mask)
plot(".GTO", F_SilkS)
plot(".GBL", B_Cu)
plot(".GBP", B_Paste)
plot(".GBS", B_Mask)
plot(".GBO", B_SilkS)
plot(".GML", Edge_Cuts)
if not twolayer: plot(".G2L", In1_Cu)
if not twolayer: plot(".G3L", In2_Cu)

# Drill file
drlwriter = EXCELLON_WRITER( board )
drlwriter.SetOptions(False, True, board.GetAuxOrigin(), True)
drlwriter.SetFormat(True)
drlwriter.CreateDrillandMapFilesSet(pctl.GetPlotDirName(), True, False);
os.rename(os.path.join(pctl.GetPlotDirName(), base + ".drl"),
          os.path.join(pctl.GetPlotDirName(), base + ".TXT"))
