if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-51";
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

size(7cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(-30);
pair D = foot(A, B, C);
pair E = foot(B, C, A);
pair F = foot(C, A, B);
pair H = orthocenter(A, B, C);
pair EF = extension(E, F, A, A + (F - E) * dir(90));
pair P = foot(A, E, F);
pair Q = foot(H, E, F);
pair R = extension(D, P, Q, H);

filldraw(A--B--C--cycle, invisible, black+1);
draw(A--D, gray);
draw(B--E, gray);
draw(C--F, gray);

draw(E--F, lightgray);
draw(A--P, blue);
draw(R--Q, red);
draw(D--P, dashed+blue);
draw(Q--H, dashed+red);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
dot("$H$", H, dir(80));
dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));
dot("$R$", R, dir(270));
