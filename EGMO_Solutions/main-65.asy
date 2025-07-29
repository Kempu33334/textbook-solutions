if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-65";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm); // set a reasonable default
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
real xmin = -6.366275491463624, xmax = 2.8694523706242374, ymin = -2.307211476470278, ymax = 3.456075622848261;
pen zzttqq = rgb(0.6,0.2,0); pen ccqqqq = rgb(0.8,0,0); pen qqwwzz = rgb(0,0.4,0.6);

pair A = (-0.8363636363636365,-0.2696969696969697);
pair B = (-3.406060606060605,1.3484848484848486);
pair C = (-3.957575757575756,-0.2696969696969697);
pair O = (-2.396969696969696,0.1014867778912726);
pair H = (-3.406060606060605,0.6061173533083641);
pair M = (-2.7365770906845905,0.9268997102645751);
pair N = (-2.854545454545453,-0.2696969696969697);
pair P = (-2.8647650963041333,0.3354239379795299);

draw(A--B--C--cycle, zzttqq);
draw(H--N--M--cycle, qqwwzz);

draw(circle(O, 1.6041410944408905), linetype("4 4"));
draw(circle((-2.396969696969696,-0.6408807172852117), 1.6041410944408903), ccqqqq);
draw(circle((-1.8454545454545448,0.9773011008966063), 1.6041410944408903), ccqqqq);
draw(circle(P, 0.6052071992176787));
draw(H--O);

dot("$A$", A, dir(-30));
dot("$B$", B, NW);
dot("$C$", C, SW);
dot("$O$", O, dir(90));
dot("$H$", H, NW);
dot("$M$", M, dir(90));
dot("$N$", N, SW);
dot("$P$", P, dir(90));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
