if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-5";
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

import geometry;
size(6cm);
pair A = (0,0);
pair B = (6,0);
pair C = (2,5);
real a = length(B - C);
real b = length(C - A);
real c = length(A - B);
pair I = (a*A + b*B + c*C) / (a + b + c);
real s = (a + b + c)/2;
real area = sqrt(s * (s - a) * (s - b) * (s - c));
real r = area / s;
path incircle = circle(I, r);
pair foot(pair P, pair X, pair Y) {
pair v = Y - X;
return X + v * dot(P - X, v) / length(v)^2;
}
pair D = foot(I, A, B);
pair E = foot(I, A, C);
pair O = circumcenter(B, C, I);
draw(A--B--C--cycle, black);
draw(incircle, blue);
draw(circumcircle(B, C, I), dashed + gray);
dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, N);
dot("$I$", I, dir(180));
dot("$D$", D, S);
dot("$E$", E, NE);
dot("$O$", O, dir(90));
draw(O--D, red);
draw(D--B, red);
draw(O--E, red);
draw(E--C, red);
draw(I--D, gray + dotted);
draw(I--E, gray + dotted);
