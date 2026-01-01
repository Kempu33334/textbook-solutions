if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-79";
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
real xmin = -7.678048071730215, xmax = 14.483278369354109, ymin = -3.858992138054801, ymax = 11;
pen ffqqtt = rgb(1,0,0.2); pen zzwwff = rgb(0.6,0.4,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen qqzzff = rgb(0,0.6,1);

pair A = (-2.5616179587527417,0.8130444909437305);
pair B = (5.11302,0.813);
pair C = (-0.41848402953010955,4.256095576932081);
pair D = (4.539345321067233,2.8313489856601204);
pair O = (1.275701020623629,0.8130222454718652);
pair K1 = (2.70713945241218,9.277564920098897);
pair M1 = (2.7070903822328414,0.8130139475086406);

draw(circle(O, 3.837318979440851), ffqqtt);
draw(A--K1--B--cycle, zzwwff);
draw(circle((1.9914101393585786,3.3035449090049256), 2.591320644036969), yqqqyq);

draw(O--M1--K1--cycle, qqzzff);

dot("$A$", A, SW);
dot("$B$", B, E);
dot("$C$", C, NW);
dot("$D$", D, NE);
dot("$O$", O, S);
dot("$K^*$", K1, N);
dot("$M^*$", M1, S);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
