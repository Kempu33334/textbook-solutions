if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-95";
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
size(12cm);
real xmin = -38.08212638231978, xmax = -3.4984231833123896, ymin = -8.07977894806316, ymax = 13.591471098312134;
pen ffttww = rgb(1,0.2,0.4); pen wwzzff = rgb(0.4,0.6,1); pen ffzztt = rgb(1,0.6,0.2); pen ccwwff = rgb(0.8,0.4,1); pen ffwwzz = rgb(1,0.4,0.6);

pair A = (-19.68619026340795,11.046740979230186);
pair B = (-21.69259,-2.53919);
pair C = (-9.59483,-2.53919);
pair D = (-25.74712618443469,-2.53919);
pair F = (-16.479705777838845,6.729872314370661);
pair E = (-22.214402695657174,-6.072539380979241);
pair M = (-15.64371,-2.53919);
pair H = (-19.686190263407948,-1.0488760417360623);
pair P = (-16.3798772220844,-0.06508588155993017);

draw(A--B--C--cycle, ffttww);
draw(circle((-23.719858092217343,4.701321567025623), 7.518964268431816), wwzzff);
draw(circle((-17.670978092217347,2.002803951263559), 9.26573672520111), wwzzff);
draw(circle((-25.747126184434684,3.195507007806055), 9.918508915801635), ffzztt+dashed);
draw(A--M, ccwwff);
draw(H--P, ccwwff);
draw(D--C, ffwwzz);
draw(E--A, ffwwzz);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, SW);
dot("$F$", F, NE);
dot("$E$", E, S);
dot("$M$", M, S);
dot("$H$", H, N);
dot("$P$", P, NE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
