if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-106";
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
real xmin = -9.904273304011298, xmax = 10.49344151335963, ymin = -6.562890034612466, ymax = 7.414560446799067;
pen ffttww = rgb(1,0.2,0.4); pen qqzzff = rgb(0,0.6,1); pen ffqqtt = rgb(1,0,0.2); pen wwqqcc = rgb(0.4,0,0.8); pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen ffzztt = rgb(1,0.6,0.2);

pair A = (-3.6339080342083347,5.169747577903832);
pair B = (-4.80211,-2.76938);
pair C = (5.50985,-2.76938);
pair D = (-0.692178396413846,-2.76938);
pair L = (0.35387,-5.592451014105008);
pair M = (0.35387,-2.76938);
pair Q = (-4.417681689060166,-0.15679630772626565);
pair P = (3.515859889687162,-1.038085075568771);
pair N = (-0.4509108996865021,-0.5974406916475183);
pair H = (-0.9892031145851746,-5.443257209733209);
pair X = (0.35387,6.647361423639995);

draw(A--B--C--cycle, ffttww);
draw(X--N--M--cycle, ffzztt);
draw(X--P--C--cycle, ffzztt);
draw(circle((0.35387,0.5274552047674932), 6.119906218872502), qqzzff);
draw(A--L, ffqqtt);
draw(circle((-0.16915419820692493,1.9389907118199963), 4.737331429384516), wwqqcc);
draw(Q--P, xdxdff);
draw(H--L, xdxdff);
draw(circle((-0.16915419820692235,-4.180915507052504), 1.505319500830293), yqqqyq+dotted);
draw(X--N, ffzztt);
draw(N--M, ffzztt);
draw(M--X, ffzztt);
draw(X--P, ffzztt);
draw(P--C, ffzztt);
draw(C--X, ffzztt);
draw(H--N, xdxdff);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, SW);
dot("$L$", L, S);
dot("$M$", M, S);
dot("$Q$", Q, W);
dot("$P$", P, dir(90));
dot("$N$", N, NW);
dot("$H$", H, SW);
dot("$X$", X, dir(90));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
