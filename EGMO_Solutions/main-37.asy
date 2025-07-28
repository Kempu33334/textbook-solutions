if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-37";
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
import geometry;

pair A = (2,6);
pair B = (0,0);
pair C = (7,0);
pair O = circumcenter(A,B,C);
pair H = orthocenter(A,B,C);
pair M = midpoint(A--B);
pair N = midpoint(A--C);
path omega = circumcircle(A,B,C);

pair[] X = intersectionpoints(omega, M--(M + 5*(H - M)));
pair[] Y = intersectionpoints(omega, N--(N + 5*(H - N)));
pair P = ( abs(X[0]-M) > 1e-3 ? X[0] : X[1] );
pair Q = ( abs(Y[0]-N) > 1e-3 ? Y[0] : Y[1] );

pair R = extension(M,N, P,Q);

draw(omega, gray+dashed);

draw(A--B--C--cycle, heavyblue);

draw(A--M, gray);
draw(A--N, gray);
draw(P--M, gray+dotted);
draw(Q--N, gray+dotted);
draw(P--Q, purple+1);
draw(M--N, purple+1);
draw(O--A, heavygreen);
draw(A--R, dashed+red);
draw(Q--R--M, dashed+gray);

dot("$A$", A, dir(90));
dot("$B$", B, dir(240));
dot("$C$", C, dir(SE));
dot("$O$", O, dir(270));
dot("$H$", H, dir(135));
dot("$M$", M, dir(135));
dot("$N$", N, dir(0));
dot("$P$", P, dir(315));
dot("$Q$", Q, dir(210));
dot("$R$", R, dir(135));
