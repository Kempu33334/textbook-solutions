if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-4";
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
pair A, B, C, D;
real r = 3;
pair O = (0,0);
A = dir(120)*r;
B = dir(200)*r;
C = dir(340)*r;
D = dir(60)*r;
draw(circle(O,r), gray);
draw(A--B--C--D--cycle, dashed+gray);
dot("$A$", A, dir(120));
dot("$B$", B, dir(200));
dot("$C$", C, dir(340));
dot("$D$", D, dir(60));
pair incenter(pair X, pair Y, pair Z) {
real a=abs(Y-Z), b=abs(Z-X), c=abs(X-Y);
return (a*X + b*Y + c*Z)/(a+b+c);
}
pair I1 = incenter(A,B,C);
pair I2 = incenter(D,B,C);
draw(A--B--C--cycle, blue);
draw(D--B--C--cycle, red);
dot("$I_1$", I1, dir(90));
dot("$I_2$", I2, dir(90));
draw(I1--I2--C--B--cycle, heavygreen);
draw(circumcircle(I1,I2,B), dashed+purple);
draw(incircle(A,B,C), gray+dashed);
draw(incircle(D,B,C), gray+dashed);
