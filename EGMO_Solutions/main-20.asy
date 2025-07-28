if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-20";
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

import geometry;
size(10cm);
unitsize(1cm);

pair A = (2,5);
pair B = (0,0);
pair C = (6,0);
pair H = orthocenter(A,B,C);

pair M_A = midpoint(B--C);
pair M_B = midpoint(A--C);
pair M_C = midpoint(A--B);

path circA = circle(M_A, abs(H - M_A));
path circB = circle(M_B, abs(H - M_B));
path circC = circle(M_C, abs(H - M_C));

pair[] A_pts = intersectionpoints(circA, B--C);
pair A1 = A_pts[0], A2 = A_pts[1];

pair[] B_pts = intersectionpoints(circB, A--C);
pair B1 = B_pts[0], B2 = B_pts[1];

pair[] C_pts = intersectionpoints(circC, A--B);
pair C1 = C_pts[0], C2 = C_pts[1];

draw(A--B--C--cycle, black+1);

draw(circA, dashed+red);
draw(circB, dashed+red);
draw(circC, dashed+red);
draw(circumcircle(A1,A2,C2),blue+dotted+1);

draw(B--C, gray);
draw(A--C, gray);
draw(A--B, gray);

dot("$A$", A, dir(90));
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$H$", H, dir(H));
dot("$A_1$", A1, S);
dot("$A_2$", A2, S);
dot("$B_1$", B1, dir(B1));
dot("$B_2$", B2, dir(B2));
dot("$C_1$", C1, NW);
dot("$C_2$", C2, dir(C2));
