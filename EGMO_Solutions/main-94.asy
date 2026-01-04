if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-94";
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
real xmin = -28.021658713109268, xmax = -2.215572665559474, ymin = -6, ymax = 10.482286615632948;
pen ffttww = rgb(1,0.2,0.4); pen qqzzff = rgb(0,0.6,1); pen ccwwff = rgb(0.8,0.4,1); pen wwqqcc = rgb(0.4,0,0.8); pen ffzztt = rgb(1,0.6,0.2);

pair A = (-18.214850328063324,9.180151224113565);
pair B = (-21.69259,-2.53919);
pair C = (-9.59483,-2.53919);
pair H = (-18.214850328063324,0.018819541195343906);
pair H1 = (-18.214850328063324,-5.0971995412);
pair D = (-13.84208144131003,3.2351570445508124);
pair E = (-20.713462774471257,0.7602881496686739);
pair F = (-22.795456128720122,4.576032235751239);
pair P = (-17.768233112194448,-2.53919);

draw(A--B--C--cycle, ffttww);
draw(circle((-15.64371,2.041475841459112), 7.5875851761618), qqzzff);
draw(circle((-18.214850328063324,4.599485382654454), 4.580665841459111), qqzzff);
draw(B--D, ccwwff);
draw(C--E, ccwwff);
draw(F--B, wwqqcc);
draw(F--C, wwqqcc);
draw(F--P, ffzztt+dashed);
draw(H--P, ffzztt+dashed);
draw(B--H1--C, ccwwff+dashed);
draw(H1--P, ffzztt+dashed);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$H$", H, N);
dot("$H'$", H1, SW);
dot("$D$", D, NE);
dot("$E$", E, NW);
dot("$F$", F, NW);
dot("$P$", P, S);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
