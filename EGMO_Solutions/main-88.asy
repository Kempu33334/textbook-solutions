if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-88";
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
real xmin = -15.694531306669717, xmax = 5.667162098277674, ymin = -5.446236927044979, ymax = 7.939680611303118;
pen ffttww = rgb(1,0.2,0.4); pen qqzzff = rgb(0,0.6,1); pen wwqqcc = rgb(0.4,0,0.8); pen ffzztt = rgb(1,0.6,0.2);

pair A = (-9.168896506724952,5.987567636960687);
pair B = (-7.72707,-3.49883);
pair C = (3.61065,-3.49883);
pair I = (-5.218373551470239,-0.5800289390151371);
pair D = (-5.218373551470239,-3.49883);
pair P = (-6.25423862047516,-1.0114054098586613);
pair Q = (-12.227295610980175,-3.49883);
pair E = (-3.478647380684786,1.7636332559887737);
pair F = (-8.104034631114123,-1.0186173189739016);
pair X = (-7.290103689480081,1.4760191802826774);

draw(A--B--C--cycle, ffttww);
draw(F--D--E--X--cycle, ffzztt);
draw(circle(I, 2.9188010609848623), qqzzff);
draw(A--D, wwqqcc);
draw(B--P, wwqqcc);
draw(P--C, wwqqcc);
draw(Q--C, ffttww);
draw(Q--I, wwqqcc);
draw(F--D, ffzztt);
draw(D--E, ffzztt);
draw(E--X, ffzztt);
draw(X--F, ffzztt);

dot("$A$", A, N);
dot("$B$", B, S);
dot("$C$", C, SE);
dot("$I$", I, NE);
dot("$D$", D, S);
dot("$P$", P, dir(60));
dot("$Q$", Q, SW);
dot("$E$", E, NE);
dot("$F$", F, W);
dot("$X$", X, NE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
