if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-34";
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

pair A = (0,0);
pair B = (6,0);
pair C = (2,5);
pair H = orthocenter(A,B,C);

draw(A--B--C--cycle, heavyblue);
draw(A--foot(A,B,C), dashed+gray);
draw(B--foot(B,C,A), dashed+gray);
draw(C--foot(C,A,B), dashed+gray);

pair O_C = circumcenter(A,B,H);
pair O_A = circumcenter(B,C,H);
pair O_B = circumcenter(C,A,H);

draw(circle(A,B,H), dashed);
draw(circle(B,C,H), dashed);
draw(circle(C,A,H), dashed);

draw(O_A--O_B--O_C--cycle, red+1.2);

dot("$A$", A, dir(-90));
dot("$B$", B, dir(-90));
dot("$C$", C, dir(90));
dot("$H$", H, dir(90));
dot("$O_A$", O_A, dir(90));
dot("$O_B$", O_B, dir(90));
dot("$O_C$", O_C, dir(90));
