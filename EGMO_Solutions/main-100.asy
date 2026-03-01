if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-100";
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
real xmin = -11.75659685834083, xmax = 10.326062719850178, ymin = -3.398201377790828, ymax = 10.093554082513783;
pen qqzzff = rgb(0,0.6,1); pen ffqqtt = rgb(1,0,0.2); pen wwqqcc = rgb(0.4,0,0.8); pen ffwwqq = rgb(1,0.4,0); pen zzwwff = rgb(0.6,0.4,1);

pair A = (-5.804631203399878,4.872963654038035);
pair B = (-6.411376507817345,-0.5355317113650413);
pair C = (1.2837134921826552,-0.5355317113650413);
pair D = (-3.3976766270625802,6.178943986439741);
pair E = (-4.448335332850326,3.8380929973452127);
pair F = (-5.344818266865938,8.971711708765621);
pair H1 = (-4.75397249761213,4.401389973701132);
pair H2 = (-4.448335332850326,2.037219406958338);

draw(A--B--C--D--cycle, ffqqtt);
draw(circle((-2.5638315078173446,1.7711174185441119), 4.4860040944626505), qqzzff);
draw(A--C, wwqqcc);
draw(B--D, wwqqcc);
draw(F--A, ffqqtt);
draw(D--F, ffqqtt);
draw(F--H2, ffwwqq);
draw(circle((-6.108003855608612,2.1687159713364967), 2.7212112184659243), zzwwff+dotted);
draw(circle((-1.0569815674399625,2.82170613753735), 4.092664087882669), zzwwff+dotted);
draw(circle((-4.6011539152312291,5.525953820238888), 1.3692164694790896), zzwwff+dotted);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, SE);
dot("$D$", D, dir(75));
dot("$E$", E, dir(30));
dot("$F$", F, N);
dot("$H_1$", H1, NE);
dot("$H_2$", H2, S);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
