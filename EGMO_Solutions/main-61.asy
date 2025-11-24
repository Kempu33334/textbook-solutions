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
import geometry;

pair A = dir(110);
pair B = dir(210);
pair C = dir(-30);
path omega = incircle(A,B,C);
pair D = foot(A,B,C);
pair I = incenter(A,B,C);
pair K = foot(I,B,C);
pair M = midpoint(A--D);
pair N = intersectionpoint(omega, K--2*M-K, 0);
pair I_A = excenter(B,C,A);
pair T = intersectionpoint(circumcircle(B,C,N), K--I_A);
circle excircle = circle(B, C, I_A);

draw(circle(B,C,N), dashed+deepgreen);
draw(omega, red+1.2);
draw(circle(B,I_A,C), dashed+orange);

draw(A--B--C--cycle, heavyblue);
draw(A--D, dashed+gray);
draw(K--N, dashed+purple);
draw(K--I_A, dotted+purple);
draw(T--foot(T,B,C), dotted);

dot("$A$", A, dir(110));
dot("$B$", B, dir(210));
dot("$C$", C, dir(-30));
dot("$D$", D, dir(270));
dot("$I$", I, dir(90));
dot("$I_A$", I_A, dir(270));
dot("$K$", K, dir(270));
dot("$M$", M, dir(180));
dot("$N$", N, dir(90));
dot("$T$", T, dir(45));
