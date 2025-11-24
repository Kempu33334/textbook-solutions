if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-21";
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
size(10cm);
unitsize(1cm);

pair A = (0, 0);
pair B = (6, 0);
pair M = (2.5, 0);
pair C = rotate(-60, M)*A;
pair D = rotate(60, M)*B;
pair K = rotate(60, B)*A;

path circ1 = circumcircle(A, M, C);
path circ2 = circumcircle(B, M, D);

pair[] X = intersectionpoints(circ1, circ2);

pair N;
if (X.length == 2) {
N = (X[0] == M) ? X[1] : X[0];
} else {
N = X[0];
}

draw(A--B, black+1);
draw(A--C--M--cycle, blue);
draw(B--D--M--cycle, blue);
draw(A--K--B, black);

draw(circ1, dashed+blue);
draw(circ2, dashed+blue);

draw(A--D, red);
draw(B--C, red);
draw(M--N, heavygray+1);
draw(M--K, heavygray+1+dotted);
draw(C--D,blue+dotted+1);

dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$M$", M, S);
dot("$C$", C, NW);
dot("$D$", D, NE);
dot("$K$", K, S);
dot("$N$", N, dir(N));
