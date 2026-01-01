if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-78";
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

import graph;
size(10cm);
real xmin = -3.358449390393843, xmax = 13.671420780771244, ymin = -4.185116974847158, ymax = 6.370434362182181;
pen qqzzff = rgb(0,0.6,1); pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1); pen wwqqcc = rgb(0.4,0,0.8); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen ffqqtt = rgb(1,0,0.2);

pair A = (-2.5616179587527417,0.8130444909437305);
pair B = (5.11302,0.813);
pair C = (-0.41848402953010955,4.256095576932081);
pair D = (4.539345321067233,2.8313489856601204);
pair M = (11.562920797727344,0.8129626090279434);
pair O = (1.275701020623629,0.8130222454718652);
pair K = (1.5617074055079536,2.5042673568975014);

draw(A--M--C, qqzzff);
draw(circle((-0.6429515457851321,2.007291314029801), 2.2599792651042545), xdxdff);
draw(circle((3.1943636717931376,1.3583631098169713), 1.9946586242556583), xdxdff);
draw(shift((6.419310909175486,0.8129924272499043))*xscale(5.143609888638288)*yscale(5.143609888638288)*arc((0,0),1,-0.00033215160324039864,179.99966784839677), yqqqyq+dashed);
draw(circle(O, 3.837318979440851), ffqqtt);

draw(K--O--M--cycle, wwqqcc);

dot("$A$", A, NE);
dot("$B$", B, NE);
dot("$C$", C, N);
dot("$D$", D, NE);
dot("$M$", M, NE);
dot("$O$", O, NE);
dot("$K$", K, NE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
