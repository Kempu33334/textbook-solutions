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

size(10cm);

pair A = dir(110);
pair B = 1.5*dir(5);
pair C = dir(-130);
real a = length(B - C);
real b = length(C - A);
real c = length(A - B);

pair I = incenter(A,B,C);

pair I_A = (-a*A + b*B + c*C)/(-a + b + c);
pair I_B = (a*A - b*B + c*C)/(a - b + c);
pair I_C = (a*A + b*B - c*C)/(a + b - c);

draw(A--B--C--cycle, black+1);
draw(I_A--I_B--I_C--cycle, blue+1);

dot("$I$", I, dir(90));

dot("$I_A$", I_A, dir(I_A));
dot("$I_B$", I_B, dir(I_B));
dot("$I_C$", I_C, dir(I_C));

pair Ha = foot(I, I_B, I_C);
pair Hb = foot(I, I_C, I_A);
pair Hc = foot(I, I_A, I_B);

dot("$A$", Ha, dir(Ha));
dot("$B$", Hb, dir(Hb));
dot("$C$", Hc, dir(Hc));

draw(I--Ha, dashed+red);
draw(I--Hb, dashed+red);
draw(I--Hc, dashed+red);
draw(I--I_A, dashed+red);
draw(I--I_B, dashed+red);
draw(I--I_C, dashed+red);
