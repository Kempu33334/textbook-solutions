if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-53";
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

pair A = dir(115);
pair B = dir(210);
pair C = dir(-30);
pair O = circumcenter(A, B, C);
pair X = dir(240);
pair P = foot(X, C, A);
pair Q = foot(X, C, B);
pair Bfoot = foot(B, A, C);
pair R = intersectionpoint(10*P-9*Q--10*Q-9*P, 10*B-9*Bfoot--10*Bfoot-9*B);
draw(circle(O, abs(O - A)), gray);

pair dirXR = R - X;
pair l = P + dirXR;

draw(A--B--C--cycle, deepblue);
draw(X--P, orange);
draw(X--Q, orange);
draw(R--Bfoot, dashed+gray);
draw(P--R, red);
draw(P--l, heavygreen);
draw(R--X, black);

label("$\ell$", midpoint(P--l), dir(60), heavygreen);

dot("$A$", A, dir(90));
dot("$B$", B, dir(W));
dot("$C$", C, dir(C));
dot("$P$", P, dir(P));
dot("$Q$", Q, SW);
dot("$X$", X, dir(X));
dot("$R$", R, dir(R));
