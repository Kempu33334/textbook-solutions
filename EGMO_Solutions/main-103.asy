if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-103";
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
size(14cm);
real xmin = -22, xmax = 70.31297961882436, ymin = -33, ymax = 20.223006112303406;
pen ffqqtt = rgb(1,0,0.2); pen qqzzff = rgb(0,0.6,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen ccwwff = rgb(0.8,0.4,1); pen ffwwqq = rgb(1,0.4,0); pen wwqqcc = rgb(0.4,0,0.8); pen ttttff = rgb(0.2,0.2,1);

pair A = (4.306757866031473,12.48972280416653);
pair B = (-11.16683,-1.94331);
pair C = (6.753945961338895,-1.9433097898281955);
pair T = (-2.206441859862778,-15.540691602518985);
pair S = (66.4212149940218,-1.943309090060639);
pair B1 = (-18.1801894806756,-18.705613246574345);
pair C1 = (13.767305760950048,-12.375769958463625);
pair A1 = intersectionpoint(B--3*B-2*B1, C--3*C-2*C1);

draw(A--B--C--cycle, ffqqtt);
draw(A--B1--C1--cycle, ffwwqq);
draw(circle((-2.206442088579947,3.9613969442872223), 10.730988566811371), qqzzff);
draw(T--A, yqqqyq);
draw(A--S, yqqqyq);
draw(C--S, ffqqtt);
draw(circle(T, 16.284266703368424), ccwwff);
draw(B--T, wwqqcc);
draw(T--C, wwqqcc);
draw(C1--S, ffwwqq);
draw(B1--A1--C1, ttttff+dashed);

dot("$A$", A, N);
dot("$B$", B, W);
dot("$C$", C, dir(270));
dot("$T$", T, dir(270));
dot("$S$", S, E);
dot("$A'$", A1, N);
dot("$B_1$", B1, W);
dot("$C_1$", C1, SE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
