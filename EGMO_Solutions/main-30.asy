if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-30";
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

size(12cm);

pair A = (0,5);
pair B = (-3,0);
pair C = (4,0);

draw(A--B--C--cycle);

pair I = incenter(A,B,C);
real r = length(foot(I,B,C)-I);
draw(circle(I,r), gray);

pair D = foot(I,B,C);
pair E = foot(I,C,A);
pair F = foot(I,A,B);

path omega = circumcircle(A,B,C);
draw(omega, lightgray);

path omega1 = circumcircle(A,E,F);
path omega2 = circumcircle(B,D,F);
path omega3 = circumcircle(C,D,E);

draw(omega1, heavyblue);
draw(omega2, heavyred);
draw(omega3, heavygreen);

pair[] pP = intersectionpoints(omega, omega1);
pair[] pQ = intersectionpoints(omega, omega2);
pair[] pR = intersectionpoints(omega, omega3);

pair P;
if(pP.length==2)
P = ( abs(pP[0]-A)>0.01 ? pP[0]: pP[1] );
else
P = pP[0];

pair Q;
if(pQ.length==2)
Q = ( abs(pQ[0]-B)>0.01 ? pQ[0]: pQ[1] );
else
Q = pQ[0];

pair R;
if(pR.length==2)
R = ( abs(pR[0]-C)>0.01 ? pR[0]: pR[1] );
else
R = pR[0];

draw(P--D, dashed+blue);
draw(Q--E, dashed+red);
draw(R--F, dashed+darkgreen);

dot("$A$", A, dir(90));
dot("$B$", B, dir(210));
dot("$C$", C, dir(330));
dot("$D$", D, dir(-90));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));
dot("$R$", R, dir(R));
dot("$I$", I, dir(90));
