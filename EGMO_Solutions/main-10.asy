if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-10";
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

size(6cm);
defaultpen(fontsize(10pt));
pair foot(pair P, pair A, pair B) {
pair v = B - A;
return A + v * dot(P - A, v)/dot(v,v);
}
pair intersect(pair A, pair v, pair B, pair w) {
real t = cross(B - A, w)/cross(v, w);
return A + t*v;
}
pair A = (-1,3);
pair B = (-2,0);
pair C = (2,0);
real a = length(B - C);
real b = length(C - A);
real c = length(A - B);
real s = (a+b+c)/2;
pair I = (a*A + b*B + c*C) / (a+b+c);
real r = sqrt((s - a)*(s - b)*(s - c)/s);
pair D = foot(I, B, C);
pair E = foot(I, C, A);
pair F = foot(I, A, B);
pair M = (B+C)/2;
pair N = (A+C)/2;
pair dirEF = F - E;
pair dirBI = I - B;
pair K = intersect(B, dirBI, E, dirEF);
draw(A--B--C--cycle, black+1);
draw(circle(I,r), deepblue);
draw(K--F, dashed+blue);
draw(B--K, dashed+red);
draw(B--K, red);
draw(C--K, red);
draw(M--N, purple);
draw(N--K, dashed+purple);
dot("$A$", A, dir(90));
dot("$B$", B, dir(225));
dot("$C$", C, dir(315));
dot("$I$", I, dir(90));
dot("$D$", D, dir(270));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
dot("$M$", M, dir(270));
dot("$N$", N, dir(45));
dot("$K$", K, dir(45));
