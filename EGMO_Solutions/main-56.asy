if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-56";
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

size(7cm);
import geometry;

pair A = dir(110), B = dir(210), C = dir(-30); pair M = dir(270);
path circumcircle = circumcircle(A, B, C);
draw(circumcircle);

draw(A--B--C--cycle);

pair D = (B + C)/2;
pair O = (-0.045,-0.75);

real r = 0.248;
path omega = circle(O, r);
draw(omega);

pair P = foot(O, B, C);
draw(O--P);
pair Q = dir(-93);
draw(O--Q);
draw(A--M, dashed+blue);

dot("$A$", A, dir(90));
dot("$B$", B, dir(210));
dot("$C$", C, dir(-30));
dot("$M$", M, dir(SE));
dot("$O$", O, dir(W));
dot("$P$", P, dir(N));
dot("$Q$", Q, dir(Q));
