if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-1";
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
pair A = dir(100);
pair B = dir(210);
pair C = dir(-30);
pair Dp = foot(A,B,C);
pair Ep = foot(B,A,C);
pair Fp = foot(C,A,B);
pair H = intersectionpoint(A -- Dp, B -- Ep);

dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", Dp, S);
dot("$E$", Ep, NE);
dot("$F$", Fp, NW);
dot("$H$", H, dir(70));

draw(A--B--C--cycle);
draw(Dp--Ep--Fp--cycle);
draw(A--Dp);
draw(B--Ep);
draw(C--Fp);
