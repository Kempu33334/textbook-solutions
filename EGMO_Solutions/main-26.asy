if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-26";
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

pair O = (0,0);

real R1 = 5;
real R2 = 3;

draw(circle(O, R1), black+1bp);
draw(circle(O, R2), gray+0.8bp);

pair A = dir(100)*R1;
pair B = dir(100+180/pi*asin(0.8))*R2;
pair C = 2*B - A;
pair D = (A + B)/2;

pair dirLine = dir(-98.5);
path lineAEF = A -- (A + 10*dirLine);

pair[] inters = intersectionpoints(lineAEF, circle(O, R2));
pair E, F;
if (inters.length == 2) {
E = inters[0];
F = inters[1];
} else {
E = R2*dir(30);
F = R2*dir(210);
}

pair M = 0.625*C + 0.375*A;

void drawPerpBisector(pair P, pair Q, pen p=black) {
pair M = (P + Q)/2;
pair v = rotate(90)*(Q - P);
draw(M + 5*unit(v) -- M - 5*unit(v), p);
}

draw(A--B);
draw(B--C, dashed);
draw(lineAEF, dotted);
draw(D--E, dotted);
draw(C--F, dotted);

drawPerpBisector(D, E, blue+dashed);
drawPerpBisector(C, F, red+dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(-90));
dot("$D$", D, dir(B));
dot("$E$", E, dir(60));
dot("$F$", F, dir(-60));
dot("$M$", M, dir(B));
dot("$O$", O, dir(45));
