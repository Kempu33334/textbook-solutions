if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-33";
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

size(7cm);

pair A = (0,0);
pair B = (0,-5);
pair C = (4,-6);

real theta = degrees(angle(C - A) - angle(B - A));

// Scale factor
real scale_factor = abs(C - A)/abs(B - A);

// Rotate AC by theta about A and rescale
pair D = scale_factor * (rotate(theta,A)*C);
pair E = scale_factor * (rotate(theta,A)*D);

pair P = intersectionpoint(B--D, C--E);
pair M = 0.5*(C+D);

draw(A--B--C--D--E--cycle, black);
draw(B--D, blue);
draw(C--E, blue);

pair X = intersectionpoint(B--D, A--C);
pair Y = intersectionpoint(C--E, A--D);

draw(A--P, red);
draw(C--D, dashed);
draw(A--M, gray+dashed);
draw(C--A--D, dashed);

dot("$A$", A, dir(135));
dot("$B$", B, dir(-90));
dot("$C$", C, dir(270));
dot("$D$", D, dir(0));
dot("$E$", E, dir(90));
dot("$P$", P, dir(90));
dot("$M$", M, dir(-45));
dot("$X$", X, dir(150));
dot("$Y$", Y, dir(90));
