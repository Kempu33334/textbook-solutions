if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-13";
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
pair A = (-4,0), B = (4,0), O = (0,0);
path semicirc = arc(O,4,0,180);
draw(semicirc);
draw(A--B, gray);

pair X = 4*dir(135);
pair Y = 4*dir(80);
pair Z = 4*dir(30);

draw(A--X--Y--Z--B--cycle, blue+linewidth(1));

pair P = foot(Y, A, X);
pair Q = foot(Y, B, X);
pair R = foot(Y, A, Z);
pair S = foot(Y, B, Z);
pair T = intersectionpoint(line(P,Q), line(R,S));

dot(T, blue);

draw(Y--P, gray+dotted);
draw(Y--Q, gray+dotted);
draw(Y--R, gray+dotted);
draw(Y--S, gray+dotted);
draw(X--P, gray+dashed);
draw(B--X, gray+dashed);
draw(A--Z, gray+dashed);
draw(Z--S, gray+dashed);

draw(P--Q, red+linewidth(1.2));
draw(R--S, red+linewidth(1.2));

draw(O--X, dashed+gray);
draw(O--Z, dashed+gray);

draw(Q--T, red+dashed);
draw(R--T, red+dashed);

label("$A$", A, SW);
label("$B$", B, SE);
label("$O$", O, dir(270));
label("$X$", X, dir(X));
label("$Y$", Y, dir(Y));
label("$Z$", Z, dir(Z));
label("$P$", P, dir(P-Y));
label("$Q$", Q, dir(Q-Y));
label("$R$", R, dir(R-Y));
label("$S$", S, dir(S-Y));
label("$T$", T, dir(270));
