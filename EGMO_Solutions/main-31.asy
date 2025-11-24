if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-31";
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

size(12cm);

pair A = (0,5);
pair B = (-3,0);
pair C = (6,0);
draw(A--B--C--cycle);

pair M = midpoint(B--C);

pair E = foot(B,A,C);
pair F = foot(C,A,B);
draw(B--E, dashed+gray);
draw(C--F, dashed+gray);

pair K = midpoint(M--E);
pair L = midpoint(M--F);

pair vKL = L - K;
pair dirBC = C - B;
real t_inter = cross(A - K, dirBC) / cross(vKL, dirBC);
pair T = K + t_inter * vKL;

draw(A--T--M, heavygreen);
draw(F--M--E, dashed);
draw(L--T, heavyblue);

dot("$A$", A, dir(90));
dot("$B$", B, dir(210));
dot("$C$", C, dir(330));
dot("$M$", M, dir(-90));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
dot("$K$", K, dir(-45));
dot("$L$", L, dir(240));
dot("$T$", T, dir(-90));
