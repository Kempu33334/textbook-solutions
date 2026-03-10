if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-102";
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
real xmin = -22.7, xmax = 6.392949132493202, ymin = -6.211327746425079, ymax = 11.479794076376661;
pen ffqqtt = rgb(1,0,0.2); pen qqzzff = rgb(0,0.6,1); pen ttttff = rgb(0.2,0.2,1); pen ffwwqq = rgb(1,0.4,0); pen wwqqcc = rgb(0.4,0,0.8);

pair A = (-8.26898980323787,8.585120841324207);
pair B = (-11.166834038661097,-1.9433097898281955);
pair C = (5.2539459613389,-1.9433097898281955);
pair P = (-4.775954180205028,-1.9433097898281952);
pair X = (-8.676381773350723,9.813049371093266);
pair Y = (-4.368562210092178,-3.1712383195972516);
pair OB = (-7.971394109433062,2.8401941310989747);
pair OC = (0.238995890566936,5.564169408490674);
pair D = (-22.38979194581583,-1.9434226332574827);
pair E = (-8.36242359856085,-2.8991300487555596);
pair F = (-0.3747008216235048,-3.443346590438933);
pair M = (-6.522471991721449,3.3209055257480067);

draw(A--B--C--cycle, ffqqtt);
draw(circle(OB, 5.752629494659853), qqzzff);
draw(circle(OC, 9.028397871467908), qqzzff);
draw(D--(xmax, -0.06813162610683883*xmax-3.4688755667197175), ttttff);
draw(D--(xmax, 0.8572974815524985*xmax + 17.25128961437484), ttttff);
draw(X--Y, ffwwqq);
draw(D--OC, wwqqcc);
draw(OB--E, wwqqcc);
draw(OC--F, wwqqcc);

dot("$A$", A, NE);
dot("$B$", B, dir(210));
dot("$C$", C, SE);
dot("$P$", P, S);
dot("$X$", X, NW);
dot("$Y$", Y, S);
dot("$O_B$", OB, dir(75));
dot("$O_C$", OC, N);
dot("$D$", D, S);
dot("$E$", E, S);
dot("$F$", F, S);
dot("$M$", M, dir(60));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
