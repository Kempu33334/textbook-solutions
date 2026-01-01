if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-9";
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

size(6cm);
defaultpen(fontsize(10pt));
pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair E = foot(B, A, C);
pair F = foot(C, A, B);
pair M = (B + C)/2;
pair foot(pair P, pair A, pair B)
{
pair v = B - A;
return A + v * dot(P - A, v)/dot(v,v);
}
pair O;
real R;
{
pair midAE = (A + E)/2;
pair vAE = E - A;
pair perpAE = rotate(90)*vAE;

pair midAF = (A + F)/2;
pair vAF = F - A;
pair perpAF = rotate(90)*vAF;

real t = cross(midAF - midAE, perpAF) / cross(perpAE, perpAF);
O = midAE + t * perpAE;
R = length(O - A);
}
pair dirBC = C - B;
pair Q = A + dirBC;
draw(A--B--C--cycle, black+1);
draw(B--E, gray);
draw(C--F, gray);
draw(circle(O,R), deepblue);
draw(M--E, red+dashed);
draw(M--F, red+dashed);
pair v = (C - B)/3;
draw(A - v -- A + v, dashed+blue);
dot("$A$", A, dir(90));
dot("$B$", B, dir(210));
dot("$C$", C, dir(330));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
dot("$M$", M, dir(270));
pair intersect(pair A, pair v, pair B, pair w)
{
real t = cross(B - A, w) / cross(v, w);
return A + t * v;
}
pair H = intersect(B, E - B, C, F - C);
dot("$H$", H, dir(270));
