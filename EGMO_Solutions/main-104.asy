if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-104";
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
real xmin = -16.30238043953256, xmax = 30.413114039432763, ymin = -24.703320959370334, ymax = 4.5700959465084985;
pen ffttww = rgb(1,0.2,0.4); pen qqzzff = rgb(0,0.6,1); pen wwqqcc = rgb(0.4,0,0.8); pen ffwwqq = rgb(1,0.4,0); pen ttttff = rgb(0.2,0.2,1);

pair A = (13.287,-2.71633);
pair B = (-7.87369,1.39825);
pair C = (-7.52101,-17.88149);
pair D = (24.966892628578385,-18.05950000606068);
pair E = (-7.661979428632627,-10.175201205666319);
pair F = (17.95556014047047,-8.849135685515572);
pair P = (6.91228613765296,-7.362307951601851);
pair Q = (10.107405289988117,-9.255387328689782);
pair R = (3.8719307049993654,-9.578160240843397);
pair M = (5.363707797340579,-13.70267868389062);

draw(A--B--C--D--cycle, ffttww);
draw(C--D, ffttww);
draw(D--A, ffttww);
draw(A--C, qqzzff);
draw(B--D, qqzzff);
draw(F--E, wwqqcc);
draw(circle((7.059067049281271,-10.757456374133056), 3.398319797640383), ffwwqq);
draw(circle((-3.552034131382946,-8.165790657874854), 10.495121874101104), ttttff+dotted);
draw(circle((15.828028066376485,-12.899195977617618), 10.4951218741011), ttttff+dotted);

dot("$A$", A, N);
dot("$B$", B, NW);
dot("$C$", C, SW);
dot("$D$", D, SE);
dot("$E$", E, W);
dot("$F$", F, NE);
dot("$P$", P, N);
dot("$Q$", Q, NE);
dot("$R$", R, NW);
dot("$M$", M, dir(250));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
