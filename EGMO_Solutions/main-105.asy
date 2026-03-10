if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-105";
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
size(9cm);
real xmin = -10.134330452786024, xmax = 14.585999419056483, ymin = -6.286190677119013, ymax = 8.827793389603316;
pen ffttww = rgb(1,0.2,0.4); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen qqzzff = rgb(0,0.6,1); pen ffzztt = rgb(1,0.6,0.2); pen wwqqcc = rgb(0.4,0,0.8);

pair A = (-2.4140760367776237,6.638027397137153);
pair B = (-4.80211,-2.76938);
pair C = (5.50985,-2.76938);
pair M = (-3.985699124673725,0.4467843535772529);
pair N = (2.800851932411015,0.4467843535772528);
pair P = (-0.21683125457031627,-0.8297398724596172);
pair Q = (-0.7536851626831149,-3.317459057140531);

draw(A--B--C--cycle, ffttww);
draw(M--N, ffttww);
draw(B--N, yqqqyq);
draw(M--C, yqqqyq);
draw(circle((-2.585250429631419,-1.6204176757158477), 2.4969142511025906), qqzzff);
draw(circle((2.3466968335000638,-2.6847400393985343), 3.1642853660296173), qqzzff);
draw(A--Q, ffzztt);
draw(P--A, ffzztt);
draw(circle((-2.1539785880278886,1.565202377515724), 5.079488592618677), wwqqcc+dotted);
draw(circle((1.9154249918965318,2.243903573900834), 6.168703537310212), wwqqcc+dotted);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$M$", M, NW);
dot("$N$", N, NE);
dot("$P$", P, dir(90));
dot("$Q$", Q, dir(250));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
