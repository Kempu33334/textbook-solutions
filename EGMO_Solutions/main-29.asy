if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-29";
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

pair A = dir(110);
pair B = dir(-10);
pair C = dir(-150);

pair O = circumcenter(A,B,C);
draw(circumcircle(A,B,C), gray);
dot("$O$", O, dir(90));

draw(A--B--C--cycle);

pair P = 0.4*C + 0.6*A;
pair Q = 0.72*A + 0.28*B;
dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));

draw(P--Q, heavyblue);
draw(C--Q, dashed);
draw(B--P, dashed);

pair K = midpoint(B--P);
pair L = midpoint(C--Q);
pair M = midpoint(P--Q);

path circleKLM = circumcircle(K,L,M);
draw(circleKLM, red);

draw(M--L--K--cycle, black);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$K$", K, dir(K));
dot("$L$", L, dir(L));
dot("$M$", M, dir(M));
