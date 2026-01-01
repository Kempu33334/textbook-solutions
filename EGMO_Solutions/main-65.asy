if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-65";
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
size(7cm);
real xmin = -24.47656912781325, xmax = 16.148404256900236, ymin = -16.46119422429786, ymax = 8.889637731176146;
pen rvwvcq = rgb(0.08235294117647059,0.396078431372549,0.7529411764705882); pen wewdxt = rgb(0.43137254901960786,0.42745098039215684,0.45098039215686275);

pair A = (-11.598646674642438,1.3321101199286858);
pair B = (-12.02,-5.87);
pair C = (-3.3,-5.75);
pair D = (-9.490072611327445,-4.6002459632794555);
pair E = (-7.66,-5.81);
pair F = (-6.066215558214146,-3.3892966266904376);
pair G = (D+F)/2;

draw(A--B--C--cycle, rvwvcq);
draw(B--D, wewdxt);
draw(D--A, wewdxt);
draw(D--B, wewdxt);
draw(D--C, wewdxt);
draw(C--F, wewdxt);
draw(D--E--F--cycle, wewdxt);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$E$", E, S);
dot("$F$", F, NE);
dot("$G$", G, N);

clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
