if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-58";
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
size(10cm);
real xmin=-3.4012066955558575,xmax=28.266942882916428,ymin=-9.3203210542584065,ymax=14.233001568944603;
pen xdxdff=rgb(0.49019607843137253,0.49019607843137253,1.), qqccqq=rgb(0.,0.8,0.), ffttcc=rgb(1.,0.2,0.8), ffqqtt=rgb(1.,0.,0.2);

pair A = (9.011309345848499,7.215059903683832);
pair B = (7.060803027120685,-0.9462221037893297);
pair C = (14.294050373775246,-1.2914678077732946);
pair I = (9.97820131745357,1.2452595365401127);
pair O = (10.848355810206165,2.462293101426641);
pair F = (7.713890745265604,1.7864186429857236);
pair D = (9.867207656966674,-1.0801728862885847);
pair E = (11.955936837608213,2.4734768455411915);
pair I_A = (11.232649004007717,-6.499969895476381);
pair I_B = (20.375805631921757,9.05569770470921);
pair I_C = (1.8067677366971093,6.0481844618646425);
pair P = (11.71851037050289,3.6793262492811234);

draw(A--B--C--cycle);
draw(circle((10.848355810206167,2.4622931014266416),5.095442276078402), xdxdff);
draw(circle(I,2.3280797979904406), qqccqq);
draw(D--E--F--cycle);
draw((xmin,1.3986407873809124*xmin-12.710659810748405)--(xmax,1.3986407873809124*xmax-12.710659810748405), linetype("4 4")+ffttcc);
draw(circle(P,10.190884714789368), ffqqtt);
draw(I_A--I_B--I_C--cycle);

dot("$A$",A,N);
dot("$B$",B,SW);
dot("$C$",C,SE);
dot("$I$",I,S);
dot("$O$",O,NW);
dot("$E$",E,NE);
dot("$F$",F,NW);
dot("$D$",D,S);
dot("$I_A$",I_A,S);
dot("$I_B$",I_B,NE);
dot("$I_C$",I_C,NW);
dot("$P$",P,NE);

clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
