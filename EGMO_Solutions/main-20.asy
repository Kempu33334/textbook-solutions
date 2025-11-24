if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-20";
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
unitsize(1cm);

pair A = (2,5);
pair B = (6,0);
pair C = (0,0);
pair H = orthocenter(A,B,C);

pair A_ = extension(A,H,B,C);
pair B_ = extension(B,H,A,C);
pair C_ = extension(C,H,A,B);

pair O = (A + B)/2;
real R = length(A - B)/2;
path circ = circle(O,R);

pair O2 = (A + C)/2;
real R2 = length(A - C)/2;
path circ2 = circle(O2,R2);

// Construct an extended line through C and C'
path longLine = C + 5*(C_ - C) -- C - 5*(C_ - C);

// Intersections
pair[] X = intersectionpoints(circ, longLine);

// M and N
pair M, N;
if (X.length >= 2) {
M = X[0];
N = X[1];
} else {
// Fallback in case tangent
M = N = X[0];
}

// Construct an extended line through C and C'
path longLine2 = B + 5*(B_ - B) -- B - 5*(B_ - B);

// Intersections
pair[] Y = intersectionpoints(circ2, longLine2);

// M and N
pair P, Q;
if (Y.length >= 2) {
P = Y[0];
Q = Y[1];
} else {
// Fallback in case tangent
P = Q = Y[0];
}

// Draw triangle
draw(A--B--C--cycle);

// Draw altitudes
draw(A--A_, blue);
draw(B--B_, blue);
draw(C--C_, blue);

draw(C_--M, blue+dotted);
draw(B_--P, blue+dotted);

// Draw circles
draw(circ, dashed+purple);
draw(circ2, dashed+purple);

// Draw points
dot("$A$", A, dir(90));
dot("$B$", B, SE);
dot("$C$", C, SW);
dot("$H$", H, E);
dot("$A'$", A_, S);
dot("$B'$", B_, NW);
dot("$C'$", C_, NE);
dot("$M$", M, dir(M));
dot("$N$", N, dir(270));
dot("$P$", P, dir(180));
dot("$Q$", Q, dir(270));
