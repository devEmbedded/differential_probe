set style data lines
set ylabel 'Relative gain (dB)'
set xlabel 'Frequency (MHz)'
set yrange [-6:3]
set xrange [10:300]
set key bottom left

plot 0.5 with filledcurves y1=-0.5 lc rgb "#AADDDDDD" title '+- 0.5 dB', \
0.2 with filledcurves y1=-0.2 lc rgb "#AAAAAAAA" title '+- 0.2 dB', \
'amp_response_rev2_3p3.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.25) smooth bezier lw 4 lc rgb '#FFDD66' title 'Revision 2, C = 3.3 pF', \
'amp_response_rev2_6p.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.25) smooth bezier lw 4 lc rgb '#DDAA33' title 'Revision 2, C = 6.0 pF', \
'amp_response_rev3_2p2.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.4) smooth bezier lw 1.5 lc rgb '#99DD55' title 'Revision 3, C = 2.2 pF', \
'amp_response_rev3_2p7.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.4) smooth bezier lw 1.5 lc rgb '#77AA33' title 'Revision 3, C = 2.7 pF', \
'amp_response_rev3_3p0.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.4) smooth bezier lw 1.5 lc rgb '#558811' title 'Revision 3, C = 3.0 pF', \
'amp_response_rev3_3p3.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.4) smooth bezier lw 1.5 lc rgb '#336600' title 'Revision 3, C = 3.3 pF', \
'amp_response_rev3_5p.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.4) smooth bezier lw 1.5 lc rgb '#114400' title 'Revision 3, C = 5.0 pF', \
'amp_response_rev4_3p3.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.1) smooth bezier lw 2 lc rgb '#66DDFF' title 'Revision 4, C = 3.3 pF', \
'amp_response_rev4_4p8.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.1) smooth bezier lw 2 lc rgb '#44BBDD' title 'Revision 4, C = 4.8 pF', \
'amp_response_rev4_5p.s2p' using ($1/1e6):(10*log10($4**2+$5**2)+26.1) smooth bezier lw 2 lc rgb '#2299BB' title 'Revision 4, C = 5.0 pF'


