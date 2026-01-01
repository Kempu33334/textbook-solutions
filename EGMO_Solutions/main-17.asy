if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-17";
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

unitsize(4cm);
pair A = (-0.22,1.6);
pair B = (-1,0);
pair C = (1,0);
pair M = (B + C)/2;
pair P = 0.38*A + 0.62*M;
pair O1 = circumcenter(A,B,P);
pair O2 = circumcenter(A,C,P);
real widen = 15;
real thetaA1 = degrees(dir(A - O1));
real thetaB1 = degrees(dir(B - O1));
real start1 = thetaA1 + widen;
real end1 = thetaB1 - widen;
if (start1 < end1) start1 += 360;
draw(arc(O1, abs(A - O1), start1, end1, CW));
real thetaA2 = degrees(dir(A - O2));
real thetaC2 = degrees(dir(C - O2));
real start2 = thetaA2 - widen;
real end2 = thetaC2 + widen;
if (start2 > end2) end2 += 360;
draw(arc(O2, abs(A - O2), start2, end2, CCW));
draw(A--B--C--cycle);
draw(A--M, dashed);
dot("$A$", A, N);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$P$", P, E);
dot("$M$", M, S);
