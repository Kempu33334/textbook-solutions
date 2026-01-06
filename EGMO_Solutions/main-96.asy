if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-96";
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
size(7cm);
real xmin = -46.050673523763216, xmax = 21.716782756101985, ymin = -23.585542700689306, ymax = 17.847409843476914;
pen ffttww = rgb(1,0.2,0.4); pen wwzzff = rgb(0.4,0.6,1); pen zzwwff = rgb(0.6,0.4,1); pen ffzztt = rgb(1,0.6,0.2); pen wwqqcc = rgb(0.4,0,0.8);

pair A = (-22.765176685635975,11.035852069846012);
pair B = (-21.69259,-2.53919);
pair C = (-8.201881338838602,-4.871747462809504);
pair D = (-2.846750624460082,1.5658708074778183);
pair F = (-20.354040902595354,-19.48034781331771);
pair E = (-12.225255421580687,-0.47698500319893666);
pair T = (-15.856998647097685,-8.96722432725054);

draw(A--B--C--D--cycle, ffttww);
draw(C--D, ffttww);
draw(D--A, ffttww);
draw(circle((-13.452114288685415,4.9417981771925135), 11.129718058246569), wwzzff);
draw(B--D, zzwwff);
draw(C--A, zzwwff);
draw(F--E, ffzztt+dashed);
draw(A--T, wwqqcc);
draw(A--F, ffttww);
draw(F--D, ffttww);
draw(B--T, wwqqcc);
draw(T--C, wwqqcc);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, dir(0));
dot("$F$", F, S);
dot("$E$", E, N);
dot("$T$", T, dir(-60));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
