if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-42";
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

size(8cm);
import geometry;

pair A = dir(110);
pair B = dir(190);
pair C = dir(-10);
pair D = foot(A,B,C);
pair H = orthocenter(A,B,C);
pair P = dir(60);
pair X = foot(P,B,C);
pair Y = foot(P,A,C);
pair Z = foot(P,A,B);
pair L = extension(A,D,X,Y);

path ABC = circumcircle(A,B,C);

pair[] K = intersectionpoints(ABC, X-(0,2)--P-(0,0.1));
pair KX = 2*X-K[0];

dot("$A$", A, dir(NW));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(NW));
dot("$H$", H, dir(SW));
dot("$K$", K[0], dir(SE));
dot("$K'$", KX, dir(KX));
dot("$L$", L, dir(L));
dot("$P$", P, dir(P));
dot("$X$", X, dir(NE));
dot("$Y$", Y, dir(SW));
dot("$Z$", Z, dir(NE));

draw(A--B--C--cycle);
draw(P--K[0]);
draw(P--Y);
draw(P--Z);
draw(A--D);
draw(A--K[0]);
draw(P--H);
draw(X--L);
draw(A--Z, dotted);
draw(A--L);
draw(ABC);
