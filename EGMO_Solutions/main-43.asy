if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-43";
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

pair A = (1.5,5);
pair B = (0,0);
pair C = (6,0);
pair P = (3,1.8);

pair angleBisector(pair V, pair VA, pair VB) {
pair u = (VA - V)/length(VA - V);
pair v = (VB - V)/length(VB - V);
return u + v;
}

pair dirA = angleBisector(A,B,C);
pair dirB = angleBisector(B,C,A);
pair dirC = angleBisector(C,A,B);

pair reflAP = reflect(A, A + dirA)*P;
pair reflBP = reflect(B, B + dirB)*P;
pair reflCP = reflect(C, C + dirC)*P;

pair Pstar = extension(A, reflAP, B, reflBP);

draw(A--B--C--cycle);
draw(A--P, gray+0.4);
draw(B--P, gray+0.4);
draw(C--P, gray+0.4);

draw(A--Pstar, dashed+blue);
draw(B--Pstar, dashed+blue);
draw(C--Pstar, dashed+blue);

dot(A); dot(B); dot(C);
dot(P, red);
dot(Pstar, blue);

label("$A$", A, N);
label("$B$", B, SW);
label("$C$", C, SE);
label("$P$", P, NE);
label("$P^*$", Pstar, NW);
