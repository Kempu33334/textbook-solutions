if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-36";
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

pair A = (2,5);
pair B = (0,0);
pair C = (6,0);
path omega = circumcircle(A,B,C);

pair dirBC = C - B;

pair[] Xcand = intersectionpoints(omega, A--(A + 10*dirBC));

pair X = (abs(Xcand[0]-A) > 1e-3) ? Xcand[0] : Xcand[1];

pair G = (A + B + C)/3;
pair K = foot(A, B, C);

pair D = midpoint(B--C);
pair E = midpoint(C--A);
pair F = midpoint(A--B);

draw(A--B--C--cycle, heavyblue);
draw(omega, gray+dashed);
draw(A--X, red);
draw(A--K, dashed);
draw(K--X, heavygreen);

draw(D--E--F--cycle, purple+1);

dot("$A$", A, dir(90));
dot("$B$", B, dir(SW));
dot("$C$", C, dir(SE));
dot("$X$", X, dir(90));
dot("$G$", G, dir(90));
dot("$K$", K, dir(-90));
dot("$D$", D, dir(-90));
dot("$E$", E, dir(135));
dot("$F$", F, dir(135));
