if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-50";
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

pair P = dir(-70);
pair Q = dir(50);
pair R = dir(110);
pair S = dir(190);
pair H = foot(Q,P,R);
pair K = foot(Q,P,S);

draw(unitcircle);
draw(P--Q--R--S--cycle);
draw(P--R, dashed);
draw(Q--H, dotted);
draw(Q--K, dotted);
draw(Q--S);
draw(H--K, dashed);

dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));
dot("$R$", R, dir(R));
dot("$S$", S, dir(S));
dot("$H$", H, dir(150));
dot("$K$", K, dir(K));
