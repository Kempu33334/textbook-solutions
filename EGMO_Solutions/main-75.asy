if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-75";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm); // set a reasonable default
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
real xmin = -18.448703986627432, xmax = 29.508377757596868, ymin = -21.342376853898696, ymax = 7.455971228688191;
pen ffqqtt = rgb(1,0,0.2); pen wwzzff = rgb(0.4,0.6,1); pen wwqqcc = rgb(0.4,0,0.8); pen qqzzff = rgb(0,0.6,1);

pair A = (4.942422881708103,0.7082411340234814);
pair B = (2.3819003011433626,-6.431098296492305);
pair C = (14.039808991479296,-6.4009745014268375);
pair G = (7.121377391443587,-4.041277221298554);
pair P = (6.012182563640741,-6.421717722170606);
pair Q = (7.775356326861095,-1.5055744058973943);
pair R = (3.1792491184877476,-4.207902182249728);
pair K = (5.499487536763517,-3.4561590235499082);
pair X = (5.683063931999714,-4.828505235628863);

draw(A--B--C--cycle, ffqqtt);
draw(R--P--Q--cycle, wwzzff);

draw(A--B, ffqqtt);
draw(B--C, ffqqtt);
draw(C--A, ffqqtt);
draw(R--P, wwzzff);
draw(P--Q, wwzzff);
draw(Q--R, wwzzff);
draw(circle((5.031082743365575,-2.097809313892661), 2.807450745306052), wwqqcc);
draw(A--X, linetype("2 2") + qqzzff);
draw(A--G, qqzzff);

dot("$A$", A, N);
dot("$B$", B, W);
dot("$C$", C, E);
dot("$G$", G, SE);
dot("$P$", P, S);
dot("$Q$", Q, NE);
dot("$R$", R, W);
dot("$K$", K, NE);
dot("$X$", X, S);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
