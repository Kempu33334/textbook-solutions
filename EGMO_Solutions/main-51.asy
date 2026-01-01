if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-51";
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

size(7cm);

pair A = dir(115);
pair B = dir(210);
pair C = dir(-30);
pair O = circumcenter(A, B, C);
pair I = incenter(A, B, C);
pair O1 = circumcenter(I, A, B);
pair O2 = circumcenter(I, B, C);
pair O3 = circumcenter(I, C, A);
path gamma = circumcircle(O1, O2, O3);

draw(circle(O, 1), lightblue);
draw(circumcircle(A, C, I), dashed+deepgreen);
draw(circumcircle(A, B, I), dashed+deepgreen);
draw(circumcircle(B, C, I), dashed+deepgreen);

draw(A--B--C--cycle);
draw(I--A--B--cycle, gray);
draw(I--B--C--cycle, gray);
draw(I--C--A--cycle, gray);
draw(O--O1, dotted);
draw(O--O2, dotted);
draw(O--O3, dotted);

dot("$I$", I, dir(-90));
dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$O$", O, dir(90));
dot("$O_1$", O1, dir(O1));
dot("$O_2$", O2, dir(O2));
dot("$O_3$", O3, dir(O3));
