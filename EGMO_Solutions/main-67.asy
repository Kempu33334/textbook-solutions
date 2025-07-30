if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-67";
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
size(10cm);
real xmin = -6.879558855252829, xmax = 9.855880704965523, ymin = -5.552548589245369, ymax = 4.883902956461574;
pen wqwqwq = rgb(0.3764705882352941,0.3764705882352941,0.3764705882352941); pen ffqqtt = rgb(1,0,0.2); pen ffttww = rgb(1,0.2,0.4);

pair O = (-0.79,-0.53);
pair A = (-1.01087447301805,2.5220836271585023);
pair B = (-3.4244914454426043,-2.0867449450342654);
pair C = (0.36352213978057746,-3.3643229655485696);
pair D = (2.0352892511345346,-1.7054746477162581);
pair P = (0.20543806228253392,-0.7164104775840971);
pair O_1 = (-2.221578743407652,0.21970954079270222);
pair O_2 = (-1.331946672857116,-2.1368696598449937);
pair O_3 = (0.6849701221038328,-2.0164569073953023);
pair O_4 = (2.9418698890673203,2.1589958553370785);
pair M_1 = (-0.7683043106519096,-0.8983736833013001);
pair M_2 = (0.8049616081051021,0.011063097746042416);
pair M_OP = (-0.29228096885873306,-0.6232052387920486);

draw(B--P--C--cycle, ffqqtt);
draw(P--C--D--cycle, ffqqtt);
draw(A--P--D--cycle, ffttww);
draw(P--A--B--cycle, ffttww);

draw(circle(O, 3.0600653587791227), wqwqwq);
draw(B--P, ffqqtt);
draw(P--C, ffqqtt);
draw(C--B, ffqqtt);
draw(P--C, ffqqtt);
draw(C--D, ffqqtt);
draw(D--P, ffqqtt);
draw(A--P, ffttww);
draw(P--D, ffttww);
draw(D--A, ffttww);
draw(P--A, ffttww);
draw(A--B, ffttww);
draw(B--P, ffttww);
draw(circle(O_2, 2.0931450289718843), linetype("2 2"));
draw(circle(O_3, 1.385666524118021), linetype("2 2"));
draw(circle(O_1, 2.6012941517460826), linetype("2 2"));
draw(circle(O_4, 3.9693854337975196), linetype("2 2"));
draw(O_1--O_3);
draw(O_2--O_4);
draw(O--P);
draw(M_1--M_2, blue);

dot("$O$", O, dir(120));
dot("$A$", A, dir(120));
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$P$", P, dir(37.5));
dot("$O_1$", O_1, NW);
dot("$O_2$", O_2, dir(240));
dot("$O_3$", O_3, E);
dot("$O_4$", O_4, NE);
dot("$M_1$", M_1, dir(210));
dot("$M_2$", M_2, E);
dot("$M$", M_OP, dir(90));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
