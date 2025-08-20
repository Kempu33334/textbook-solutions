if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-73";
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
real xmin = -15.44, xmax = 15.2, ymin = -9.56, ymax = 9.56;
pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1); pen ffttww = rgb(1,0.2,0.4); pen ffwwzz = rgb(1,0.4,0.6); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen ccwwff = rgb(0.8,0.4,1);

pair A = (-2.11,5.72);
pair B = (-4.95,-1.6);
pair C = (5.67,-1.6);
pair I = (-1.0553208207258764,1.0664846703129858);
pair D_1 = (-1.0553208207258764,-1.6);
pair E_1 = (0.7718821693855402,3.0085118920434253);
pair D_2 = (1.7753208207258764,-1.6);
pair E_2 = (2.7881178306144596,1.111488107956574);
pair P = (0.7206416414517535,0.38703065937402836);
pair Q = (-1.0553208207258769,3.7329693406259716);

draw(A--B--C--cycle, xdxdff);

draw(circle(I, 2.666484670312986), ffttww);
draw(I--D_1, ffwwzz);
draw(I--E_1, ffwwzz);
draw(E_2--D_2, yqqqyq);
draw(E_1--D_1, yqqqyq);
draw(B--E_2, ccwwff);
draw(A--D_2, ccwwff);

dot("$A$", A, N);
dot("$B$", B, W);
dot("$C$", C, E);
dot("$I$", I, NW);
dot("$D_1$", D_1, S);
dot("$E_1$", E_1, NE);
dot("$D_2$", D_2, S);
dot("$E_2$", E_2, NE);
dot("$P$", P, NE);
dot("$Q$", Q, S);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
