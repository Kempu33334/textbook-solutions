if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-86";
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
real xmin = -15.619014441145383, xmax = 12.7623434568197, ymin = -8.315505863643153, ymax = 8.728129427562834;
pen ffttww = rgb(1,0.2,0.4); pen ccwwff = rgb(0.8,0.4,1); pen wwzzff = rgb(0.4,0.6,1);

pair A = (-5.170524980014633,4.837734415439729);
pair B = (-7.72707,-3.49883);
pair C = (3.61065,-3.49883);
pair D = (-5.1705249800146325,-3.49883);
pair H = (-5.1705249800146325,-1.5351031282285972);
pair E = (-1.4599617303039418,1.3150452970496749);
pair F = (-6.999434892296064,-1.1261055226723826);
pair P = (-3.879425641624649,-1.8238306015670762);
pair Q = (-12.383634613497483,-3.49883);

draw(A--B--C--cycle, ffttww);
draw(A--D, ccwwff);
draw(B--E, ccwwff);
draw(F--C, ccwwff);
draw(F--D, wwzzff);
draw(D--E, wwzzff);
draw(Q--E, ffttww);
draw(Q--C, ffttww);

dot("$A$", A, N);
dot("$B$", B, S);
dot("$C$", C, SE);
dot("$D$", D, S);
dot("$H$", H, S);
dot("$E$", E, NE);
dot("$F$", F, NW);
dot("$P$", P, S);
dot("$Q$", Q, W);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
