if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-29";
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

pair A = dir(130);
pair B = dir(170);
pair C = dir(260);
pair D = dir(20);
pair X = orthocenter(A,B,C);
pair Y = orthocenter(B,C,D);

pair Xr = 2*foot(X,B,C) - X;
pair Yr = 2*foot(Y,B,C) - Y;

draw(circumcircle(A,B,C), gray+dashed);

draw(A--B--C--D--cycle, black+1);
draw(A--C, gray+dashed);
draw(B--D, gray+dashed);

draw(A--Y, blue);
draw(Y--D, blue);
draw(D--X, blue);
draw(X--A, blue);

draw(X--Xr, red+dashed);
draw(Y--Yr, red+dashed);

dot("$A$", A, dir(90));
dot("$B$", B, dir(180));
dot("$C$", C, dir(270));
dot("$D$", D, dir(30));
dot("$X$", X, dir(180));
dot("$Y$", Y, dir(270));
dot("$X'$", Xr, dir(90));
dot("$Y'$", Yr, dir(225));
