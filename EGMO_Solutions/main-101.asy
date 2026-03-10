if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-101";
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
size(10cm);
real xmin = -15.9944687659554, xmax = 18.043151381248187, ymin = -7.987180674963583, ymax = 12.808649911056115;
pen ffqqtt = rgb(1,0,0.2); pen wwqqcc = rgb(0.4,0,0.8); pen qqzzff = rgb(0,0.6,1); pen ffwwqq = rgb(1,0.4,0); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen newcolor = rgb(0.4, 0.6, 1);

pair A = (-7.916086052889812,3.4783046508282225);
pair C = (2.3247352385394753,9.262629543888165);
pair B = (1.8859964298727578,6.181994493571158);
pair D = (7.8502926236372685,4.119158573717387);
pair P = (4.7774323851178115,6.979533795743456);
pair Q = (4.912765170321544,-0.32937191034121793);
pair X = (-1.2246217152413856,7.257845630776387);
pair Y = (-3.2435496430258905,9.753703505399173);
pair Z = (0.8122089070587095,4.739855920505206);

draw(circle((-1.0142693277289683,3.2165880113195935), 6.906777085378218), ffqqtt);
draw(circle((4.232850258803973,3.3137444580570854), 3.706019584486243), ffqqtt);
draw(X--D, wwqqcc);
draw(Y--P, wwqqcc);
draw(A--C, qqzzff);
draw(Y--Q, ffwwqq+dashed);
draw(Z--P, qqzzff);
draw(circle((-1.8206198626849714,0.4998259963415375), 6.7842496395079035), yqqqyq+dotted);
draw(circle((2.815252537344694,4.249836104380978), 5.036735578486672), yqqqyq+dotted);
draw(A--P, newcolor+opacity(0.3));
draw(C--D, newcolor+opacity(0.3));

dot("$A$", A, W);
dot("$C$", C, NE);
dot("$B$", B, N);
dot("$D$", D, E);
dot("$P$", P, NE);
dot("$Q$", Q, SE);
dot("$X$", X, N);
dot("$Y$", Y, NW);
dot("$Z$", Z, dir(210));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
