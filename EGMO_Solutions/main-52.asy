if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-52";
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

size(6cm);

pair A = dir(115);
pair B = dir(210);
pair C = dir(-20);

pair A1 = midpoint(B--C);
pair B1 = midpoint(C--A);
pair C1 = midpoint(A--B);

pair O = circumcenter(A, B, C);

real kA = abs(O - A)^2 / abs(O - A1)^2;
real kB = abs(O - B)^2 / abs(O - B1)^2;
real kC = abs(O - C)^2 / abs(O - C1)^2;

pair A2 = O + kA * (A1 - O);
pair B2 = O + kB * (B1 - O);
pair C2 = O + kC * (C1 - O);

draw(circle(O, abs(O - A)), lightblue);
draw(A--B--C--cycle);
draw(O--A1, gray+dashed);
draw(O--B1, gray+dashed);
draw(O--C1, gray+dashed);

draw(A--A2, heavygreen);
draw(B--B2, heavygreen);
draw(C--C2, heavygreen);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$O$", O, dir(90));
dot("$A_1$", A1, dir(A1));
dot("$B_1$", B1, dir(B1));
dot("$C_1$", C1, dir(C1));
dot("$A_2$", A2, dir(A2));
dot("$B_2$", B2, dir(B2));
dot("$C_2$", C2, dir(C2));
