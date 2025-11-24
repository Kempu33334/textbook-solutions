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
pair A,B,C,D,M,O,P,E; A = dir(130); B = dir(52.5); E = dir(200); D = dir(300); C = dir(10); M = (A+C)/2; O = (0,0); P = (1.8,-0.12);

dot("$A$",A,dir(A)); dot("$B$",B,dir(B)); dot("$C$",C,dir(C)); dot("$D$",D,dir(D)); dot("$E$",E,dir(E)); dot("$M$",M,dir(100)); dot("$P$",P,dir(P)); dot("$O$",O,NE);

draw(unitcircle); draw(A--C); draw(E--D); draw(P--D); draw(P--B); draw(E--B); draw(A--P); draw(A--B--C--D--cycle, dashed);
