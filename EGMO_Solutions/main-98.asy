if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-98";
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
size(11cm);
real xmin = -9.657672187345451, xmax = 9.160739993916891, ymin = -5.2, ymax = 6.738666680248742;
pen zzwwff = rgb(0.6,0.4,1); pen ffttww = rgb(1,0.2,0.4); pen wwqqcc = rgb(0.4,0,0.8); pen qqzzff = rgb(0,0.6,1); pen ffzztt = rgb(1,0.6,0.2);

pair A = (-5.150478318017022,-0.10506398501918311);
pair B = (-6.41771,-2.59168);
pair C = (-1.69286,-2.59168);
pair D = (-2.1688509392046047,-0.761874601048858);
pair E = (-3.2895861180597916,3.546457999757625);
pair F = (6.137649811941913,-2.59168);
pair G = (-3.7295827139866535,-4.597153032046367);
pair H = (-3.3506207248652253,0.05439008854969875);
pair K = (-7.087728825759214,6.019454778000761);

draw(A--B--C--D--cycle, ffttww);
draw(circle((-4.055285,-2.2294094044780146), 2.3900401387853), zzwwff);
draw(A--B, ffttww);
draw(B--C, ffttww);
draw(C--D, ffttww);
draw(D--A, ffttww);
draw(B--E, ffttww);
draw(E--C, ffttww);
draw(B--F, ffttww);
draw(A--F, ffttww);
draw(circle((0.6256687879111631,-0.7487738715929458), 5.8119048346816005), wwqqcc);
draw(circle((2.2223949059709565,1.7035518713505677), 5.811904834681599), wwqqcc);
draw(A--C, qqzzff);
draw(B--D, qqzzff);
draw(H--G, qqzzff+dashed);
draw(K--C, ffzztt);
draw(K--G, ffzztt);
draw(K--F, ffzztt);

dot("$A$", A, NE);
dot("$B$", B, SW);
dot("$C$", C, S);
dot("$D$", D, NE);
dot("$E$", E, dir(110));
dot("$F$", F, dir(0));
dot("$G$", G, SW);
dot("$H$", H, NE);
dot("$K$", K, N);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
