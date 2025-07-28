if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-61";
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

pair A = dir(120);
pair B = dir(210);
pair C = dir(-30);

draw(A--B--C--cycle);

path omega = circumcircle(A, B, C);
draw(omega, gray);

pair R = intersectionpoint( C -- (100*incenter(B,C,A) - 99*C), omega );

pair K = midpoint(B--C);
pair L = midpoint(A--C);

pair dir1 = rotate(90)*(C - B);
pair dir2 = rotate(90)*(C - A);

pair P = extension(R, C, K, K + dir1);
pair Q = extension(R, C, L, L + dir2);

draw(C--R);
draw(R--P--K--cycle, red);
draw(R--Q--L--cycle, blue);
draw(B--R--A, dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$R$", R, dir(R));
dot("$P$", P, dir(Q));
dot("$Q$", Q, dir(Q));
dot("$K$", K, dir(K));
dot("$L$", L, dir(L));
