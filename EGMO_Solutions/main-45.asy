if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-45";
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

size(8cm);

pair A = (1,7);
pair B = (0,0);
pair C = (8,0);

pair I = incenter(A,B,C);
real r = inradius(A,B,C);

pair D = foot(I,B,C);
pair E = foot(I,A,C);
pair F = foot(I,A,B);
pair M = (B + C)/2;
pair X = extension(D,D+(0,10),E,F);

pair dirBC = C - B;
pair Bp = intersectionpoint((X - dirBC)--(X + dirBC), A--B);
pair Cp = intersectionpoint((X - dirBC)--(X + dirBC), A--C);

draw(A--B--C--cycle);
draw(circle(I, r));

draw(A--M, dashed);
draw(Bp--Cp, dotted);
draw(E--F);
draw(F--I--E, dotted);
draw(D--X);

dot(A); dot(B); dot(C);
dot(D); dot(E); dot(F);
dot(I); dot(M); dot(Bp); dot(Cp); dot(X);

label("$A$", A, N);
label("$B$", B, SW);
label("$C$", C, SE);
label("$D$", D, S);
label("$E$", E, NE);
label("$F$", F, dir(150));
label("$I$", I, dir(225));
label("$M$", M, S);
label("$B'$", Bp, W);
label("$C'$", Cp, dir(15));
label("$X$", X, dir(60));
