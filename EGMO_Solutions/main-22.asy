if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-22";
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

unitsize(1cm);

pair A = (-3, 0);
pair B = (-1, 0);
pair C = (2, 0);
pair D = (5, 0);

dot("$A$", A, W);
dot("$B$", B, NW);
dot("$C$", C, NE);
dot("$D$", D, E);
draw(A--B--C--D);

path circleAC = circle((A+C)/2, (C-A).x/2);
path circleBD = circle((B+D)/2, (D-B).x/2);
draw(circleAC);
draw(circleBD);

pair[] circleIntersects = intersectionpoints(circleAC, circleBD);
pair X = circleIntersects[0];
pair Y = circleIntersects[1];

dot("$X$", X, NW);
dot("$Y$", Y, S);
draw(X--Y);

pair[] Z = intersectionpoints(X--Y, B--C);
dot("$Z$", Z[0], NE);

pair P = 0.75*X+0.25*Y;
dot("$P$", P, W);

pair CPlong = 3*P+(-2*C);
draw(CPlong--C);
pair[] M = intersectionpoints(CPlong--C, circleAC);
dot("$M$", M[0], N);

pair BPlong = 3.5*P+(-2.5*B);
draw(BPlong--B);
pair[] N = intersectionpoints(BPlong--B, circleBD);
dot("$N$", N[0], dir(90));

pair E = extension(A,M[0],D,N[0]);
dot("$E$", E, dir(90));
draw(A--E--X, black+dashed);
draw(E--D, black+dashed);
