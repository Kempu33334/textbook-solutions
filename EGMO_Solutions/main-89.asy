if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-89";
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
real xmin = -8.755517809416997, xmax = 13.833992128854836, ymin = -8.714661141915444, ymax = 6.0464950446791335;
pen zzttqq = rgb(0.6,0.2,0); pen ffqqtt = rgb(1,0,0.2); pen qqwwzz = rgb(0,0.4,0.6); pen wwzzff = rgb(0.4,0.6,1); pen ccwwff = rgb(0.8,0.4,1); pen ttttff = rgb(0.2,0.2,1);

pair A = (0.42,3.8);
pair B = (-2.34,-1.52);
pair C = (6.5,-1.74);
pair P = (1.7208333120188253,-1.6210614625163058);
pair Q = (-1.1488825229557265,-1.549643195130061);
pair M = (3.0216666240376506,-7.042122925032611);
pair N = (-2.717765045911453,-6.899286390260122);
pair D = (0.9109588871140336,-4.868248941548673);

draw(A--B--C--cycle, zzttqq);
draw(B--P--A--cycle, ffqqtt);
draw(A--Q--C--cycle, qqwwzz);

draw(A--B, zzttqq);
draw(B--C, zzttqq);
draw(C--A, zzttqq);
draw(B--P, ffqqtt);
draw(P--A, ffqqtt);
draw(A--B, ffqqtt);
draw(A--Q, qqwwzz);
draw(Q--C, qqwwzz);
draw(C--A, qqwwzz);
draw(P--M, wwzzff);
draw(Q--N, wwzzff);
draw(B--M, ccwwff);
draw(N--C, ccwwff);
draw(circle((2.1093080863212696,-0.45234780418171117), 4.5756118343058185), dotted + ttttff);
draw(A--D, linetype("2 2"));

dot("$A$", A, dir(90));
dot("$B$", B, W);
dot("$C$", C, E);
dot("$P$", P, NE);
dot("$Q$", Q, NE);
dot("$M$", M, SE);
dot("$N$", N, SW);
dot("$D$", D, S);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
