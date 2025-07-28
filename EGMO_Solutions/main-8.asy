if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-8";
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
pair A = (0,0);
pair B = (4,0);
pair C = B + (1,3);
pair D = A + (1,3);
pair O = (2,1.2);
pair O_shifted = O + (A - D);
draw(A--B--C--D--cycle, black+1);
draw(A--C, gray+dashed);
draw(O--A, blue);
draw(O--B, blue);
draw(O--C, blue);
draw(O--D, blue);
draw(O--O_shifted, red);
draw(A--O_shifted, dotted);
draw(B--O_shifted, dotted);
dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, NE);
dot("$D$", D, NW);
dot("$O$", O, dir(90));
dot("$O'$", O_shifted, dir(270));
