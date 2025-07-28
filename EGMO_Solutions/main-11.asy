if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-11";
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

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair H = orthocenter(A,B,C);
pair M = foot(B, A, C);
pair N = foot(C, A, B);
pair W = (5*B + 3*C)/8;

pair O1 = circumcenter(B,W,N);
real r1 = abs(O1 - B);
pair O2 = circumcenter(C,W,M);
real r2 = abs(O2 - C);

pair X = 2*O1 - W;
pair Y = 2*O2 - W;

pair[] inter = intersectionpoints(circle(O1,r1), circle(O2,r2));

pair P;
if (abs(inter[0]-W) < 1e-6)
P = inter[1];
else
P = inter[0];

// Draw triangle
draw(A--B--C--cycle, blue);

draw(B--M, dotted+gray);
draw(C--N, dotted+gray);

draw(B--C);

pair O3 = circumcenter(A,H,P);
real r3 = abs(O3 - A);

draw(circle(O1, r1), orange);
draw(circle(O2, r2), purple);
draw(circle(O3, r3), gray+dashed);

draw(W--X, orange+linewidth(1));
draw(W--Y, purple+linewidth(1));

draw(H--X, dashed+red);
draw(H--Y, dashed+red);

draw(A--P, gray);

dot(A); dot(B); dot(C); dot(H); dot(W);
dot(M); dot(N);
dot(X, blue);
dot(Y, blue);
dot(P, red);

label("$A$", A, dir(90));
label("$B$", B, SW);
label("$C$", C, SE);
label("$H$", H, dir(140));
label("$W$", W, dir(-90));
label("$M$", M, dir(M));
label("$N$", N, dir(N));
label("$X$", X, dir(X));
label("$Y$", Y, dir(Y));
label("$P$", P, dir(NE));
