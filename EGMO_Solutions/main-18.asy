if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-18";
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
import geometry;

pair A = (-1,3.5);
pair B = (-2,0);
pair C = (2,0);

real a = length(B - C);
real b = length(C - A);
real c = length(A - B);

pair I = incenter(A,B,C);
real r = inradius(A,B,C);
path incircle = circle(I,r);

pair IA = (-a*A + b*B + c*C)/(-a + b + c);

pair X = foot(IA,B,C);
real R = abs(IA - X);
path excircle = circle(IA,R);

pair D = foot(I,B,C);
pair E = foot(I,A,C);
pair F = foot(I,A,B);

draw(A--B--C--cycle);

draw(incircle);
draw(excircle, dashed);

draw(A--IA, dashed);
draw(IA--B, dashed);
draw(IA--C, dashed);

pair[] bInts = intersectionpoints(excircle, A--B + 10*(B - A));
pair B1 = (abs(bInts[0]-B)>abs(bInts[1]-B)) ? bInts[0] : bInts[1];

pair[] cInts = intersectionpoints(excircle, A--C + 10*(C - A));
pair C1 = (abs(cInts[0]-C)>abs(cInts[1]-C)) ? cInts[0] : cInts[1];

draw(B1--A--C1);

label("$A$",A,dir(90));
label("$B$",B,W);
label("$C$",C,E);
label("$I$",I,NE);
label("$I_A$",IA,S);
label("$D$",D,N);
label("$E$",E,NE);
label("$F$",F,NW);
label("$X$",X,N);
label("$B_1$",B1,W);
label("$C_1$",C1,E);

dot(A);
dot(B);
dot(C);
dot(I);
dot(IA);
dot(D);
dot(E);
dot(F);
dot(X);
dot(B1);
dot(C1);
