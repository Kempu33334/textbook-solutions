if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-43";
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

size(10cm);
import geometry;

pair A = (-2,7);
pair B = (-4,0);
pair C = (5,0);

pair I = incenter(A,B,C);
real r = inradius(A,B,C);
pair IA = excenter(B,C,A);
real ra = exradius(B,C,A);
path incircle = circle(I,r);
path excircle = circle(IA,ra);

pair D = foot(I,B,C);
pair Bp = A*0.685 + B*0.315;
pair Cp = A*0.685 + C*0.315;
pair X = foot(IA,B,C);

pair dirBC = dir(B--C);
pair dirPerp = rotate(90)*dirBC;
pair E = I + r * unit(dirPerp);

draw(A--B--C--cycle, heavyblue);

draw(incircle, black);
draw(excircle, dotted);

draw(Bp--Cp, black);
draw(B--C, black);

draw(A--X, dashed);
draw(B--foot(IA,A,B));
draw(C--foot(IA,A,C));

dot("$A$", A, dir(90));
dot("$B$", B, dir(B));
dot("$C$", C, dir(0));
dot("$I$", I, dir(SW));
dot("$I_A$", IA, dir(-90));
dot("$D$", D, dir(-90));
dot("$X$", X, dir(-90));
dot("$B'$", Bp, dir(180));
dot("$C'$", Cp, dir(0));
dot("$E$", E, dir(240));

draw(B--D, black);
draw(C--D, black);
