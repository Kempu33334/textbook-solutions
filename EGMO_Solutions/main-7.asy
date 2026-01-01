if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-7";
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

size(6cm);
pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair O = (0,0);
pair X = dir((degrees(B)+degrees(C))/2);
pair Y = -dir((degrees(C)+degrees(A))/2);
pair Z = dir((degrees(A)+degrees(B))/2);
pair I = incenter(A,B,C);
pair foot(pair P, pair A, pair B)
{
pair v = B - A;
return A + v * dot(P - A, v)/dot(v,v);
}
draw(unitcircle, gray);
draw(A--B--C--cycle, black+1);
draw(X--Y--Z--cycle, blue);
draw(X--foot(X,Y,Z), dashed+red);
draw(Y--foot(Y,Z,X), dashed+red);
draw(Z--foot(Z,X,Y), dashed+red);
dot("$A$", A, dir(90));
dot("$B$", B, dir(210));
dot("$C$", C, dir(330));
dot("$X$", X, dir(X));
dot("$Y$", Y, dir(Y));
dot("$Z$", Z, dir(Z));
dot("$I$", I, dir(270));
dot(I, red+1.5);
