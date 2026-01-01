if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-39";
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
import geometry;

pair A = (1,5);
pair B = (0,0);
pair C = (6,0);
pair O = circumcenter(A,B,C);
pair H = orthocenter(A,B,C);
pair A2 = foot(A,H,O);
pair B2 = foot(B,H,O);
pair C2 = foot(C,H,O);
pair G = (2*O + H)/3;

draw(A--B--C--cycle, heavyblue);

draw(3*O-2*H--2*H-O, dashed+gray);
draw(O--A, gray);
draw(O--B, gray);
draw(O--C, gray);
draw(H--A, gray);
draw(H--B, gray);
draw(H--C, gray);

draw(circumcircle(A,B,C), purple+dashed);

filldraw(A--O--H--cycle, rgb(1,0.8,0.8)+opacity(0.4), red+1);
filldraw(B--O--H--cycle, rgb(0.8,1,0.8)+opacity(0.4), green+1);
filldraw(C--O--H--cycle, rgb(0.8,0.8,1)+opacity(0.4), blue+1);

dot("$A$", A, dir(90));
dot("$B$", B, dir(270));
dot("$C$", C, dir(SE));
dot("$O$", O, dir(90));
dot("$H$", H, dir(135));
dot("$A'$", A2, dir(-30));
dot("$B'$", B2, dir(164));
dot("$C'$", C2, dir(150));
dot("$G$", G, dir(150));
dot("$M$", (B + C)/2, dir(270));

draw(A--foot(A,H,O), dotted+0.5);
draw(B--foot(B,H,O), dotted+0.5);
draw(C--foot(C,H,O), dotted+0.5);
draw(B--extension(H,O,B,C), dashed+gray);
draw(A--(B + C)/2);
