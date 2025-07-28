if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-60";
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

pair A = (3,-1);
pair B = (0,1);
pair C = (0,-1);
path g1 = circle((0,0),1);
path g2 = circle((1.5,0),sqrt(3.25));

pair[] E = intersectionpoints(g1, A--B);
pair[] F = intersectionpoints(g2, C--3*E[0] - 2*C);
pair H = 0.4*A + 0.6*F[0];
pair[] G = intersectionpoints(g1, 3*E[0] - 2*H--H);
pair D = extension(A,C,B,G[1]);

draw(g1, blue);
draw(g2, red);

draw(A--B, black);
draw(B--C, black);
draw(C--F[0], orange);
draw(A--F[0], orange);
draw(B--F[0], black);

draw(H--G[1], purple);
draw(B--D--A, heavygray);

dot("$A$", A, S);
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, S);
dot("$E$", E[0], S);
dot("$F$", F[0], dir(F[0]));
dot("$G$", G[1], NW);
dot("$H$", H, NE);
