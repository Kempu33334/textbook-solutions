if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-16";
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

unitsize(4cm);
draw(unitcircle);
dot("B",(0,0),N);
dot("C",(0,-1),S);
dot("A",(1.4,-1),E);
draw((0,0)--(0,-1)--(1.4,-1)--cycle);
draw((0,-0.95)--(0.05,-0.95)--(0.05,-1));
label("$a$",(0,-0.5),W);
label("$b$",(0.7,-1),S);
label("$c$",(1.1,-0.775),NE);
