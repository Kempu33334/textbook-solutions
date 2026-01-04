if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-91";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm);
usepackage("amsmath");
usepackage("amssymb");
settings.tex="pdflatex";
settings.outformat="pdf";
import geometry;
void filldraw(picture pic = currentpicture, conic g, pen fillpen=defaultpen, pen drawpen=defaultpen) { filldraw(pic, (path) g, fillpen, drawpen); }
void fill(picture pic = currentpicture, conic g, pen p=defaultpen) { filldraw(pic, (path) g, p); }
pair foot(pair P, pair A, pair B) { return foot(triangle(A,B,P).VC); }
pair centroid(pair A, pair B, pair C) { return (A+B+C)/3; }

import graph;
size(8cm);
real xmin = -22.93296404192154, xmax = 3.7044333078138414, ymin = -7.814623479516631, ymax = 8.87721820177956;
pen ffttww = rgb(1,0.2,0.4); pen ccwwff = rgb(0.8,0.4,1); pen qqzzff = rgb(0,0.6,1); pen ffzzqq = rgb(1,0.6,0); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255);

pair A = (-17.628567859561258,6.4134688335943215);
pair B = (-13.57468,-4.11167);
pair C = (-4.60831,-4.11167);
pair I = (-11.823233573917346,-1.560209456242414);
pair A1 = (-11.823233573917346,-4.11167);
pair B1 = (-10.219246904522814,0.42402280605864906);
pair C1 = (-14.204191403963925,-2.477264916883493);
pair M = (-15.60162392978063,1.1508994167971607);
pair K = (-8.369708676279739,5.654077018129606);
pair D = (-10.778665978408492,-1.157881281681098);
pair E = (-11.471798427319529,-0.8260743624274294);

draw(A--B--C--cycle, ffttww);
draw(circle(I, 2.551460543757586), ccwwff);
draw(M--C, ccwwff);
draw(A1--K, qqzzff);
draw(I--K, ffzzqq);
draw(K--C, qqzzff);
draw(circle((-8.215771786958673,-2.8359397281212066), 3.8263910243145562), yqqqyq+dashed);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$I$", I, NW);
dot("$A'$", A1, S);
dot("$B'$", B1, dir(30));
dot("$C'$", C1, W);
dot("$M$", M, W);
dot("$K'$", K, N);
dot("$D$", D, NE);
dot("$E$", E, N);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
