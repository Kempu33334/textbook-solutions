if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-90";
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
real xmin = -17.366023594835035, xmax = 3.832267010905154, ymin = -7.238829507204166, ymax = 7;
pen qqzzff = rgb(0,0.6,1); pen ffttww = rgb(1,0.2,0.4); pen ccwwff = rgb(0.8,0.4,1); pen zzwwff = rgb(0.6,0.4,1);

pair A = (-7.889266664418778,3.1218963438728107);
pair B = (-7.72707,-3.49883);
pair C = (2.39255632763439,-1.7406501664227279);
pair D = (-6.264670028158667,4.73290657785438);
pair M = (C + D)/2;
pair N = (-9.55565568200308,0.2214161678487756);
pair F = (-16.018533040382554,-4.939385474725683);
pair E = (-6.654605095875252,2.5379921756958708);
pair H = (-5.046570316705129,3.8220562340828503);
pair G = intersectionpoint(A--2*A-B,C--2*D-C);
pair O = (-3.109663657332503,-0.07336136282618348);

draw(A--B--C--D--cycle, ffttww);
draw(circle(O, 5.74928488749405), qqzzff);
draw(G--B, ffttww);
draw(B--C, ffttww);
draw(C--G, ffttww);
draw(D--A, ffttww);
draw(circle((-5.579792433701486,-0.13387536497681857), 3.9917064825075586), qqzzff);
draw(C--A, ccwwff);
draw(B--D, ccwwff);
draw(F--D, ffttww);
draw(F--C, ffttww);
draw(F--H, zzwwff);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, dir(0));
dot("$D$", D, dir(90));
dot("$M$", M, NE);
dot("$N$", N, dir(-120));
dot("$F$", F, W);
dot("$E$", E, dir(-70));
dot("$H$", H, NE);
dot("$G$", G, dir(90));
dot("$O$", O, W);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
