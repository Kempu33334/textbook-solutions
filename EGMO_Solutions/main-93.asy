if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-93";
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
size(9.5cm);
real xmin = -25, xmax = -5, ymin = -9.524081138609665, ymax = 12.430126144609881;
pen ffttww = rgb(1,0.2,0.4); pen qqzzff = rgb(0,0.6,1); pen ccwwff = rgb(0.8,0.4,1); pen ffzztt = rgb(1,0.6,0.2);

pair A = (-18.968031606990486,9.545368945295053);
pair B = (-21.69259,-2.53919);
pair C = (-9.59483,-2.53919);
pair F = (-18.968031606990486,-2.53919);
pair E = (-14.139085882374353,3.3195688718993384);
pair K = (-18.968031606990486,2.514307314503706);
pair M = (-18.968031606990486,-7.592687314503707);
pair L = (-20.178577699959565,-1.3648697299774462);
pair N = (-8.099594064789141,8.004007473776124);
pair P = (-20.75696265032431,1.610709626668262);

draw(A--B--C--cycle, ffttww);
draw(circle((-14.281430803495244,3.5030894726475266), 7.646788104616207), qqzzff);
draw(circle((-15.64371,-2.53919), 6.04888), qqzzff);
draw(circumcircle(K, M, N), qqzzff + dotted);
draw(A--M, ccwwff);
draw(B--N, ccwwff);
draw(P--M, ffzztt+dashed);
draw(P--N, ffzztt+dashed);

dot("$A$", A, dir(90));
dot("$B$", B, W);
dot("$C$", C, SE);
dot("$F$", F, NE);
dot("$E$", E, S);
dot("$K$", K, dir(60));
dot("$M$", M, S);
dot("$L$", L, NE);
dot("$N$", N, NE);
dot("$P$", P, NW);
dot("$H$", intersectionpoint(B--N, A--M), dir(60));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
