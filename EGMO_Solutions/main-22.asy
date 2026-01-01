if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-22";
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
size(10.46cm);
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps);
pen dotstyle = black;
real xmin = -5.9, xmax = 14.56, ymin = -3.95, ymax = 11.77;
pen zzttqq = rgb(0.6,0.2,0);

pair A = (2.72,5.22);
pair B = (1.18,3.1);
pair C = (5.42,2.82);
pair P = (1.97,4.19);
pair Q = (3.67,4.37);
pair R = (3.9,2.92);
pair S = (1.84,3.06);

draw(A--B--C--cycle, zzttqq);
draw(circle((2.91,3.51), 1.16), black+dotted+1);

dot(A,dotstyle);
label("$A$", A, dir(90));
dot(B,dotstyle);
label("$B$", B, dir(180));
dot(C,dotstyle);
label("$C$", C, dir(0));
dot(P,dotstyle);
label("$P$", P, dir(135));
dot(Q,dotstyle);
label("$Q$", Q, dir(45));
dot(R,dotstyle);
label("$R$", R, dir(45));
dot(S,dotstyle);
label("$S$", S, dir(135));

draw(S--P--R, blue+dashed);
draw(R--Q--S, deepblue+dashed);

clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
