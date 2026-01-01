if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-85";
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
real xmin = -14.989140962992112, xmax = 13.392216934972977, ymin = -8.982430722864256, ymax = 8.061204568341731;
pen ffttww = rgb(1,0.2,0.4); pen zzwwff = rgb(0.6,0.4,1); pen wwzzff = rgb(0.4,0.6,1); pen wwqqcc = rgb(0.4,0,0.8);

pair A = (-8.640569965533299,3.364855165018686);
pair B = (-8.596063114257976,-4.067788997960112);
pair C = (4.711008272978479,-3.988105935761091);
pair O = (-1.9647808462774101,-0.3116253853712023);
pair P = (-12.181624111991955,-3.065025373617022);
pair D = (1.755885893444752,-6.96288907087456);
pair E = (12.138978701221554,3.4892836001489544);
pair Q = (4.666501421703156,3.4445382272177074);

draw(A--B--C--cycle, ffttww);
draw(circle((-1.96478084627741,-0.3116253853712024), 7.621198698509995), zzwwff);
draw(P--D, wwzzff);
draw(P--E, wwqqcc);
draw(P--A, wwzzff);
draw(D--E, wwqqcc);
draw(A--E, wwqqcc);
draw(B--Q, ffttww+dashed);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$O$", O, N);
dot("$P$", P, W);
dot("$D$", D, S);
dot("$E$", E, NE);
dot("$Q$", Q, NE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
