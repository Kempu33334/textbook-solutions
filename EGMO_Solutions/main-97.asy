if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-97";
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
size(10cm);
real xmin = -7.916540161446352, xmax = 10.404569724248793, ymin = -5.21816154348399, ymax = 5.9833460550239455;
pen ffttww = rgb(1,0.2,0.4); pen wwzzff = rgb(0.4,0.6,1); pen wwqqcc = rgb(0.4,0,0.8); pen ttttff = rgb(0.2,0.2,1); pen ffzztt = rgb(1,0.6,0.2);

pair A = (-2.4,3.18);
pair B = (-3.5,-2.34);
pair C = (2.94,-2.34);
pair D = (-0.42,-2.34);
pair E = (-2.8112864736556356,1.1160896958371778);
pair H = (-3.7586790320233723,1.6854012183783875);
pair G = (0.17581702083115314,-4.001065633832305);
pair L = (-3.6723833940355695,2.360619879246222);
pair M = (1.26,-4.768078255354445);
pair P1 = (-4.098927708431797,-0.9768684050181313);
pair P = (-2.4,-1.2758695652173913);

draw(A--B--C--cycle, ffttww);
draw(circle((1.26,1.3777173913043481), 4.079684130126597), wwzzff+dotted);
draw(circle((-0.28,-0.11206521739130437), 3.9156217125199495), wwzzff);
draw(A--G, wwqqcc);
draw(C--H, wwqqcc);
draw(A--L--M--C, ttttff);
draw(L--P1--M, ffzztt+dashed);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, SW);
dot("$E$", E, NE);
dot("$H$", H, NW);
dot("$G$", G, S);
dot("$L$", L, NW);
dot("$M$", M, S);
dot("$P'$", P1, W);
dot("$P$", P, S);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
