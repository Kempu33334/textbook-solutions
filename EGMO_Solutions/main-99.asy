if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-99";
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
real xmin = -6.7182683798956235, xmax = 10.52521111138248, ymin = -2.446630379284739, ymax = 8.08855030207049;
pen ffqqtt = rgb(1,0,0.2); pen qqzzff = rgb(0,0.6,1); pen ccwwff = rgb(0.8,0.4,1); pen ffwwqq = rgb(1,0.4,0); pen wwqqcc = rgb(0.4,0,0.8);

pair A = (-1.6263434375774029,7.080494738909423);
pair B = (-3.91688,0.19014);
pair C = (3.77821,0.19014);
pair H = (-1.6263434375774033,1.9867568247379852);
pair M = (-0.06933499999999992,0.19014);
pair P = (-3.5904166154163843,1.1722018303804715);
pair Q = (-0.834206265209112,6.070585930987493);
pair R = (5.335218437577402,4.873907394237332);
pair S = (-2.359871562422598,-1.7949158589707286);

draw(A--B--C--cycle, ffqqtt);
draw(circle((-1.9931074999999998,0.09592048288362846), 1.9260783860377786), qqzzff);
draw(circle((1.8544375000000002,3.430332109487657), 3.768254972549273), qqzzff);
draw(P--R, ccwwff);
draw(S--Q, ccwwff);
draw(B--S, wwqqcc);
draw(S--R, ffwwqq+dashed);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$H$", H, dir(60));
dot("$M$", M, dir(270));
dot("$P$", P, NW);
dot("$Q$", Q, N);
dot("$R$", R, NE);
dot("$S$", S, dir(270));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
