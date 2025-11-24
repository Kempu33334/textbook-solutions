if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-80";
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
real xmin = -16.79934673850268, xmax = 8.718569649658587, ymin = -5.14941515574524, ymax = 10.7742976817757;
pen ffttww = rgb(1,0.2,0.4); pen wwzzff = rgb(0.4,0.6,1); pen zzwwff = rgb(0.6,0.4,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255);

pair A = (-4.56,6.39);
pair B = (-6.48,-0.25);
pair C = (1.18,-0.25);
pair O1 = (-4.57889051168988,2.3840712452494017);
pair P = (-7.205657082935733,2.580103653883872);
pair Q = (-2.048481627272199,1.6523867485503128);
pair Q2 = (-5.364849888152278,3.606560803473372);
pair IC = (-10.494551158329056,5.0898479177413565);

draw(A--B--C--cycle, ffttww);
draw(circle((-2.65,2.2401204819277103), 4.568325734283392), wwzzff);
draw(circle(O1, 2.6340712452494017), zzwwff);
draw((-3.1902273382091364,-2.2961505017732597)--(-0.6858943854051713,6.364667626673781), ffttww);
draw(Q2--C, yqqqyq);
draw(circle(IC, 5.3398479177413565), wwzzff);
draw((-10.494551158329054,-0.25)--B, ffttww);
draw(A--(-6.454873403262182,8.581978989139529), ffttww);

dot("$A$", A, N);
dot("$B$", B, S);
dot("$C$", C, SE);
dot("$O_1$", O1, S);
dot("$P$", P, W);
dot("$Q$", Q, NE);
dot("$Q'$", Q2, W);
dot("$I_C$", IC, NE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
