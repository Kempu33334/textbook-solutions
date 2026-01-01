if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-49";
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

size(200);

pair A = dir(115);
pair B = dir(210);
pair C = dir(-30);
pair K = 0.26*A + 0.74*B;
pair L = 0.42*A + 0.58*C;
pair T = (-0.41,-sqrt(1-0.41^2));
pair I = incenter(A, B, C);
pair S = dir(90);
pair MB = dir(85/2);
pair MC = dir(325/2);

draw(circle((0,0),1));
draw(circle((-0.143,-0.332),0.6335));

draw(A--B--C--cycle);
draw(MC--MB--T--cycle);
draw(B--C);
draw(T--S, dashed);
draw(K--L);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$K$", K, dir(K));
dot("$L$", L, dir(L));
dot("$T$", T, dir(T));
dot("$I$", I, dir(NW));
dot("$S$", S, dir(90));
dot("$M_B$", MB, dir(MB));
dot("$M_C$", MC, dir(MC));
