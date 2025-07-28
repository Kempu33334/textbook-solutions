if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-56";
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

size(10cm);

pair A = dir(210);
pair B = dir(-30);
pair C = dir(120);
pair I = incenter(A, B, C);
pair A1 = foot(I, B, C);
pair B1 = foot(I, C, A);
pair C1 = foot(I, A, B);
pair M = (A + B)/2;
pair H = foot(I, C, M);
pair K = extension(I, H, A1, B1);

path inc = incircle(A, B, C);

draw(A--B--C--cycle);
draw(inc, orange);
draw(B1--K, deepgreen);
draw(C--K, red);
draw(I--K, gray+dashed);
draw(C--M, gray+dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$I$", I, dir(210));
dot("$M$", M, dir(270));
dot("$A_1$", A1, dir(270));
dot("$B_1$", B1, dir(180));
dot("$C_1$", C1, dir(270));
dot("$K$", K, dir(90));
