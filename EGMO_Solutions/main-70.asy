if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-70";
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

pair B = (0,0);
pair C = (6.5,0);
pair A = (2,3);

pair vBC = C - B;
pair vCA = A - C;

pair D = C + vBC;
pair E = A + 2*vCA;

draw(A--B--C--cycle, heavyblue);

draw(C--D, heavyred);
draw(A--E, heavyred);
draw(A--D, dashed+blue);
draw(B--E, dashed+blue);

dot("$A$", A, dir(90));
dot("$B$", B, dir(SW));
dot("$C$", C, dir(SE));
dot("$D$", D, dir(S));
dot("$E$", E, dir(90));
