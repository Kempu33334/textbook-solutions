if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-71";
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
size(8cm);
real xmin = -6.47449544810409, xmax = 17.53416921907353, ymin = -17.667273855911667, ymax = 3.7808682307011616;
pen ffttww = rgb(1,0.2,0.4); pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255); pen qqqqcc = rgb(0,0,0.8); pen wwqqcc = rgb(0.4,0,0.8);

pair A = (2.809446608741314,1.723143860320889);
pair B = (0.9257007355566466,-3.2795910815793654);
pair C = (8.306278828853952,-3.295031621523502);
pair J = (5.6503397262813735,-10.12238878718936);
pair M = (5.664634461884546,-3.2895051688729384);
pair K = (-0.7442524473621845,-7.714548714904778);
pair L = (10.25721778144884,-5.076085440605913);
pair F = (-0.8052399365315669,-0.7726319503600323);
pair G = (9.279321044220803,-0.7937292629169216);
pair T = (15.749195972577892,-3.3106025778911246);
pair S = (-4.419926481804446,-3.268407761040953);

draw(A--B--C--cycle, ffttww);

draw(circle(J, 6.8328985709523655), xdxdff);
draw((xmin, -0.0020920502092049926*xmin-3.277654469161883)--(xmax, -0.0020920502092049926*xmax-3.277654469161883), yqqqyq);
draw(B--K, ffttww);
draw(C--L, ffttww);
draw(F--J, qqqqcc);
draw(J--G, qqqqcc);
draw(F--L, wwqqcc);
draw(K--G, wwqqcc);
draw((2.809446608741314,1.7231438603208893)--(xmin, 0.6904542840498248*xmin-0.21665058649380325), qqqqcc);
draw(A--(xmax, -0.3890142147791594*xmax + 2.8160585267843636), qqqqcc);

dot("$A$", A, dir(N));
dot("$B$", B, dir(NW));
dot("$C$", C, dir(NE));
dot("$J$", J, dir(270));
dot("$M$", M, dir(90));
dot("$K$", K, dir(SW));
dot("$L$", L, dir(E));
dot("$F$", F, dir(NW));
dot("$G$", G, dir(NE));
dot("$T$", T, dir(NE));
dot("$S$", S, dir(NW));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
