if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-48";
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

size(160);
import geometry;

pair A = dir(195);
pair B = dir(-15);
pair C = dir(103);
pair D = 0.65*A+0.35*B;
pair L = 0.51*D+0.49*C;
pair O = (0,0);
real R = 1;
draw(circle(O, R));

pair M = dir(270);

draw(A--B--C--cycle);
draw(C--D);

real r = 0.57;
pair K = 0.34*A + 0.66*B;

pair dir_perp = rotate(90)*(B - A);
dir_perp = dir_perp / length(dir_perp);
pair P = K + r * dir_perp;

pair T = (0.68,sqrt(1-0.68^2));
pair I = extension(C,M,L,K);

draw(circle(P, r));
draw(M--T, dashed);
draw(L--K, dotted);
draw(C--M, dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$I$", I, dir(NE));
dot("$L$", L, dir(L));
dot("$M$", M, dir(270));
dot("$K$", K, dir(-45));
dot("$T$", T, dir(T));
