if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-27";
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

pair O1 = (-2,0);
pair O2 = (2,1);
real r1 = 4;
real r2 = 2;

draw(circle(O1, r1), heavyblue);
draw(circle(O2, r2), heavyred);

pair Dvec = O2 - O1;
real d = length(Dvec);
real theta = acos((r1 - r2)/d)*180/pi;
pair u = Dvec / d;
pair v = rotate(theta)*u;

pair A = O1 + r1 * v;
pair B = O2 + r2 * v;

draw(A--B, black+1bp);
label("$A$", A, dir(A));
label("$B$", B, dir(B));

pair[] circleIntersections = intersectionpoints(circle(O1, r1), circle(O2, r2));
pair M = circleIntersections[0];
pair N = circleIntersections[1];

dot("$M$", M, dir(90));
dot("$N$", N, dir(-90));

pair dirAB = unit(B - A);

pair C = intersectionpoint(M - 1*dirAB -- M - 10*dirAB, circle(O1, r1));
pair D = intersectionpoint(M -- M + 10*dirAB, circle(O2, r2));
draw(C--D, black+1bp);
label("$C$", C, dir(135));
label("$D$", D, dir(45));

pair E = extension(A, C, B, D);
draw(C--E, dashed);
draw(D--E, dashed);
dot("$E$", E, dir(90));

pair P = extension(A, N, C, D);
pair Q = extension(B, N, C, D);
draw(A--N, gray+dashed);
draw(B--N, gray+dashed);
draw(D--P, gray+dashed);
dot("$P$", P, dir(-90));
dot("$Q$", Q, dir(-90));

draw(E--P, blue);
draw(E--Q, blue);
