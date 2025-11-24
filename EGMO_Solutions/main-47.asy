if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-47";
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

pair A = dir(165);
pair B = dir(15);
pair O = (0,0);
real R = 1;
draw(circle(O, R));

pair M = dir(270);

draw(A--B);
draw(A--M, dotted);
draw(B--M, dotted);

real r = 0.31;
pair K = 0.3*A + 0.7*B;

pair dir_perp = rotate(90)*(B - A);
dir_perp = dir_perp / length(dir_perp);
pair P = K + r * dir_perp;

pair T = (0.56,sqrt(1-0.56^2));

draw(circle(P, r));
draw(M--T, dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$M$", M, dir(270));
dot("$O$", O, dir(-90));
dot("$P$", P, dir(135));
dot("$K$", K, dir(-45));
dot("$T$", T, dir(T));
