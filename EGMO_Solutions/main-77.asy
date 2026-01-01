if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-77";
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
real xmin = -4, xmax = 8.5, ymin = -6, ymax = 6;
pen wwzzff = rgb(0.4,0.6,1); pen ttttff = rgb(0.2,0.2,1); pen ffttww = rgb(1,0.2,0.4); pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen ccwwff = rgb(0.8,0.4,1); pen wwqqcc = rgb(0.4,0,0.8);

pair A = (-0.38,3.9);
pair B = (-1.8,-1.62);
pair C = (7.72,-1.64);
pair D = (1.6977842933250507,-1.627348286330515);
pair L = (2.9529906214812387,-4.966464174930575);
pair M = (2.96,-1.63);
pair Q = (-1.07224817645602,1.2090070887061752);
pair P = (5.3088918400590766,0.009078914329964771);
pair N = (2.118321831801528,0.60904300151807);
pair H = (1.1341998969726763,-4.624453463994349);

draw(A--B--C--cycle, wwzzff);
draw(A--D--M--cycle, ffttww);

draw(circle((2.963628610770881,0.09721872693937478), 5.063694076216118), ttttff);
draw(circle((2.336025446692786,1.7667766712394046), 3.4536120218477326), xdxdff);
draw(Q--P, yqqqyq);
draw((xmin, 5.317934983760497*xmin-10.656054774682895)--(xmax, 5.317934983760497*xmax-10.656054774682895), ccwwff);
draw(circle((-0.42011408011934853,-1.622898919999752), 3.3801215392287656), dotted + wwqqcc);
draw((xmin, 476.0000000000303*xmin-1410.5900000000897)--(xmax, 476.0000000000303*xmax-1410.5900000000897), ffttww);
draw(N--M, ffttww);
draw(D--L, ffttww);
draw(H--L, wwqqcc);

dot("$A$", A, dir(135));
dot("$B$", B, W);
dot("$C$", C, E);
dot("$D$", D, NE);
dot("$L$", L, NE);
dot("$M$", M, NE);
dot("$Q$", Q, NE);
dot("$P$", P, NE);
dot("$N$", N, NE);
dot("$H$", H, NE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
