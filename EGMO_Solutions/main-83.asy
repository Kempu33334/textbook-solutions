if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-83";
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

import graph;
size(9cm);
real xmin = -8.5, xmax = 4.5, ymin = -5, ymax = 7.5;
pen ffttww = rgb(1,0.2,0.4); pen ccwwff = rgb(0.8,0.4,1); pen wwzzff = rgb(0.4,0.6,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen qqzzcc = rgb(0,0.6,0.8);

pair O = (-3.24,1.69);
pair X = (-1.1661587792138677,4.62340243730447);
pair Y = (-1.0314499810139903,-1.1433679750170853);
pair O_2 = (2.7840310646686453,1.8307182750515567);
pair A = (-6.679694777746566,0.653579668204773);
pair B = (0.19969477774656585,2.726420331795227);
pair F = (-1.7443601666415995,0.12873193873645472);
pair G = (-1.6656932113796599,3.7288854173120076);
pair F2 = (0.8633803715875084,-2.609347664546387);
pair G2 = (-0.16581470458699887,5.664971079760108);

draw(circle(O, 3.5924458615566532), ffttww);
draw(O--X, ccwwff);
draw(O--Y, ccwwff);
draw(circle(O_2, 4.8376734731491355), ffttww);
draw(Y--O_2, ccwwff);
draw(X--O_2, ccwwff);
draw(circle((-4.345750338201854,-0.8662890740615139), 2.78519256795644), wwzzff);
draw(circle((-1.4341824413576045,1.9228904602482757), 1.820773193337335), linetype("4 4") + yqqqyq);
draw(circle((-6.323744273283834,5.698321055817838), 5.05728350298097), wwzzff);
draw(A--G2, qqzzcc);
draw(A--F2, qqzzcc);
draw(F2--O_2, qqzzcc);
draw(G2--O_2, qqzzcc);
draw(G2--F2, qqzzcc);

dot("$O$", O, NE);
dot("$X$", X, NE);
dot("$Y$", Y, NE);
dot("$O_2$", O_2, E);
dot("$A$", A, SW);
dot("$B$", B, E);
dot("$F$", F, NE);
dot("$G$", G, SE);
dot("$F^*$", F2, S);
dot("$G^*$", G2, N);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
