if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-68";
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
size(10cm);
real xmin = -17.5, xmax = 10.5, ymin = -8.75, ymax = 9;
pen zzttqq = rgb(0.6,0.2,0); pen qqzzff = rgb(0,0.6,1); pen ffttww = rgb(1,0.2,0.4); pen qqqqcc = rgb(0,0,0.8);

pair A = (-5.52,6.84);
pair B = (-9.8,-1.7);
pair C = (2.02,-1.82);
pair M_B = (-1.75,2.51);
pair M_C = (-7.66,2.57);
pair D = (1.4652359360497094,4.191508483325376);
pair E = (-9.614644632195763,3.456455571832582);
pair O_2 = (-15.349058945517482,1.0810271998612202);
pair O_1 = (5.914406858512622,1.5707422301599507);
pair O = (-3.8653479129951394,0.6682305699788278);
pair N_9 = (-4.717326043502431,1.325884715010586);

draw(circle(O, 6.3897270228370004), qqzzff);
draw(E--C);
draw(B--D);
draw((xmin, 1.9953271028037376*xmin + 17.85420560747663)--(xmax, 1.9953271028037376*xmax + 17.85420560747663));
draw((xmin, -1.1485411140583557*xmin + 0.5000530503978781)--(xmax, -1.1485411140583557*xmax + 0.5000530503978781));
draw(E--B);
draw(circle(O_2, 6.206945099418515), ffttww);
draw(D--C);
draw(circle(O_1, 5.163674820418132), ffttww);
draw(O_2--O_1, qqqqcc);
draw(O_2--B);
draw(O_1--C);

draw(A--B--C--cycle, zzttqq);

dot("$A$", A, dir(100));
dot("$B$", B, dir(210));
dot("$C$", C, dir(-30));
dot("$M_B$", M_B, N);
dot("$M_C$", M_C, N);
dot("$D$", D, N);
dot("$E$", E, W);
dot("$O$", O, dir(S));
dot("$O_2$", O_2, dir(NW));
dot("$O_1$", O_1, NE);
dot("$N_{9}$", N_9, N);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
