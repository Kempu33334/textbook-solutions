if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-87";
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
real xmin = -19.809015272476206, xmax = 14.935361094028092, ymin = -10.267864509229835, ymax = 11.504068461947517;
pen ffttww = rgb(1,0.2,0.4); pen zzwwff = rgb(0.6,0.4,1); pen wwqqcc = rgb(0.4,0,0.8); pen qqzzff = rgb(0,0.6,1);

pair A = (-7.72707,9.03827);
pair B = (-7.72707,-3.49883);
pair C = (3.61065,-3.49883);
pair D = (-1.490079916520107,2.1414893090325244);
pair E = (-5.072659835925073,1.3021142702755153);
pair P = (3.61065,6.754250441122755);

draw(A--B--C--cycle, ffttww);
draw(circle((-2.05821,-3.49883), 5.66886), zzwwff);
draw(C--(-7.72707,2.76972), wwqqcc);
draw(B--P, qqzzff);
draw(E--P, qqzzff);
draw(C--P, qqzzff);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, N);
dot("$E$", E, N);
dot("$P$", P, N);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
