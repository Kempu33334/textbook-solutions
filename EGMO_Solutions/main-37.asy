if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-37";
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

size(10cm);

pair reflectLine(pair P, pair A, pair B) {
return 2*foot(P,A,B)-P;
}

pair A = (0,-1);
pair B = (5,1);
pair C = (4,5);
C = 1.1*C - 0.1*A;
pair D = reflectLine(B,A,C);
D = 1.3*D - 0.3*B;
pair E = intersectionpoint(A--C, B--D);

pair EA = reflectLine(E, A,B);
pair EB = reflectLine(E, B,C);
pair EC = reflectLine(E, C,D);
pair ED = reflectLine(E, D,A);

draw(A--B--C--D--cycle, heavyblue);
draw(A--C, dashed+gray);
draw(B--D, dashed+gray);
draw(E--EA, dotted);
draw(E--EB, dotted);
draw(E--EC, dotted);
draw(E--ED, dotted);
draw(EA--EB--EC--ED--cycle, gray+dashed);

draw(circumcircle(EA,EB,EC), purple+dashed);

dot("$A$", A, dir(SW));
dot("$B$", B, dir(SE));
dot("$C$", C, dir(45));
dot("$D$", D, dir(NW));
dot("$E$", E, dir(90));
dot("$E_A$", EA, dir(-45));
dot("$E_B$", EB, dir(0));
dot("$E_C$", EC, dir(90));
dot("$E_D$", ED, dir(180));
