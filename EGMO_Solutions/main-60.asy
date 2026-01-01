if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-60";
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

size(6cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(-30);
path Gamma = circumcircle(A, B, C);
pair D = foot(A, B, C);
pair M = midpoint(B--C);
pair H = extension(A, foot(A,B,C), B, foot(B,A,C));
pair P = M + 10*(H - M);
pair E = intersectionpoint(M--P, Gamma);
pair Q = E + 10*(D - E);

pair[] hits = intersectionpoints(Gamma, E--Q);
pair F = (abs(hits[0] - E) > 1e-6 ? hits[0] : hits[1]);

draw(A--B--C--cycle);
draw(A--D, dashed+gray);
draw(M--E, deepgreen);
draw(E--F, deepgreen);
draw(B--F, red);
draw(C--F, red);
draw(Gamma, lightgray);

dot("$A$", A, dir(110));
dot("$B$", B, dir(210));
dot("$C$", C, dir(-30));
dot("$D$", D, dir(270));
dot("$E$", E, dir(70));
dot("$F$", F, dir(270));
dot("$M$", M, dir(270));
dot("$H$", H, dir(60));
