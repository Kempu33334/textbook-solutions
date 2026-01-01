if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-6";
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

size(10cm);
pair A = (0,4);
pair B = (0,0);
pair C = (5,0);
pair D = (4,3);
pair E = B + 0.3*(C - B);
pair F = B + 0.6*(C - B);
draw(A--B--C--D--cycle, linewidth(0.8));
dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, NE);
dot("$E$", E, S);
dot("$F$", F, S);
draw(A--E, dashed);
draw(A--F, dashed);
draw(D--E, dashed);
draw(D--F, dashed);
draw(A--C, dotted);
draw(D--B, dotted);
markangle(B,A,E, radius=15);
markangle(F,D,C, radius=15);
markangle(E,A,F, radius=25, n=2);
markangle(E,D,F, radius=25, n=2);
