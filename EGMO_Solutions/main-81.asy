if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-81";
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
real xmin = -6.5114032381716385, xmax = 7.421152943124423, ymin = -5.288411647426961, ymax = 3.4057944291520323;
pen ffttww = rgb(1,0.2,0.4); pen wwzzff = rgb(0.4,0.6,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen ccwwff = rgb(0.8,0.4,1); pen ffzzcc = rgb(1,0.6,0.8);

pair A = (-2.71,2.64);
pair B = (-3.89,-2.62);
pair C = (3.17,-2.62);
pair D = (-1.0241635699543983,-2.62);
pair E = (-0.36,-4.692265325210487);
pair F = (-1.2422846270423993,-4.5948158035076725);
pair M = (B+C)/2;

draw(A--B--C--cycle, ffttww);
draw(circle((-0.36,-0.6495437262357414), 4.042721598974746), wwzzff);
draw(circle((-0.6920817849771992,-3.656132662605243), 1.0880483474694833), wwzzff);
draw(A--F, yqqqyq);
draw(A--M, yqqqyq);
draw(A--E, ccwwff);
draw(F--D, ffzzcc);
draw(F--E, ffzzcc);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$E$", E, S);
dot("$F$", F, SW);
dot("$M$", M, NE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
