if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-28";
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

pair A = dir(30);
pair B = dir(100);
pair C = dir(180);
pair D = dir(270);

draw(unitcircle);
draw(A--B--C--D--cycle);

draw(A--C, dashed);
draw(B--D, dashed);

pair[] Parray = intersectionpoints(A--C, B--D);
pair P = Parray[0];

dot("A", A, dir(A));
dot("B", B, dir(B));
dot("C", C, dir(C));
dot("D", D, dir(D));
dot("P", P, dir(135));

pair W = foot(P, A, B);
pair X = foot(P, B, C);
pair Y = foot(P, C, D);
pair Z = foot(P, D, A);

dot("W", W, dir(W));
dot("X", X, dir(X));
dot("Y", Y, dir(Y));
dot("Z", Z, dir(Z));

draw(W--X, blue+dashed);
draw(X--Y, blue+dashed);
draw(Y--Z, blue+dashed);
draw(W--Z, blue+dashed);

draw(P--W, dotted);
draw(P--X, dotted);
draw(P--Y, dotted);
draw(P--Z, dotted);
