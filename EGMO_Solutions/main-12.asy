if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-12";
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

size(6cm);
defaultpen(fontsize(10pt));
pair A = (-1,3);
pair B = (-2,0);
pair C = (2,0);
real a = length(B - C);
real b = length(C - A);
real c = length(A - B);
pair I = (a*A + b*B + c*C)/(a + b + c);
pair P = (0.3,1.1);
draw(A--B--C--cycle, black+1);
draw(A--I, deepgreen+1.2);
draw(B--I, dotted);
draw(C--I, dotted);
draw(A--P, orange+1.2+dashed);
draw(P--B, black+dashed);
draw(P--C, black+dashed);
dot("$A$", A, dir(90));
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$I$", I, dir(180));
dot("$P$", P, dir(270));
