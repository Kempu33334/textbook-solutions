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

size(8cm);

pair A = dir(180/pi * atan(4/3) + 90);
pair B = dir(180/pi * atan(4/3));
pair C = dir(180/pi * atan(4/3) - 90);
pair D = dir(-18);
pair E = 2*(0.3,0.4)-B;
pair F = 0.7*C + 0.3*E;
pair M = -1*B;
pair P = extension(A,C,B,D);
pair Z = (0.58,-0.015);

draw(unitcircle);
draw(circle((0.3,0.4),0.5));
draw(circle((0.714,-0.224),0.2459));
draw(Z--E--B--cycle, dashed);

draw(A--P);
draw(B--P);

dot("$A$", A, dir(A));
dot("$C$", B, dir(B));
dot("$B$", C, dir(S));
dot("$D$", D, dir(D));
dot("$E$", E, dir(SW));
dot("$F$", F, dir(SW));
dot("$M$", M, dir(M));
dot("$P$", P, dir(P));
dot("$Z$", Z, dir(NW));
