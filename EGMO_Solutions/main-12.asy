if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-12";
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

size(10cm);
import graph;

pair O = (0,0);
real R = 4;
draw(circle(O,R), deepcyan);

pair A = R*dir(168.5);
pair B = R*dir(11.5);
pair D = R*dir(110);
pair C = reflect(O, A+B)*(D);

draw(A--B--C--D--cycle, blue+linewidth(1));

pair O2 = (A + B)/2;
real r = 2.93;
draw(circle(O2, r), orange);

dot("$A$", A, dir(150));
dot("$B$", B, dir(30));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$O$", O, dir(90));
dot("$O'$", O2, dir(60));
dot("$P$", O2-(0.1, 0), dir(270));
