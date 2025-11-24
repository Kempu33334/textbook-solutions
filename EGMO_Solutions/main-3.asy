if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-3";
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

import geometry;

size(7cm);
pair A = dir(100);
pair B = dir(210);
pair C = dir(-30);
pair O = circumcenter(A, B, C);
pair D = intersectionpoint(A--2*O-A, B--C);
pair K = intersectionpoint(D--3*(A-B+D)-2*D, C--3*((B-C)*dir(-90)+C)-2*C);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$O$", O, NE);
dot("$D$", D, S);
dot("$K$", K, NE);

draw(A--B--C--cycle);
draw(A--D);
draw(A--K--D--K--C);
draw(circumcircle(A,B,C));
