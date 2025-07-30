if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-66";
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
real xmin = -9.816921654676941, xmax = 13, ymin = -10.5, ymax = 5.573641055555108;
pen zzttqq = rgb(0.6,0.2,0); pen zzwwff = rgb(0.6,0.4,1); pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1);

pair A = (-3.3,3.75);
pair B = (-6.18,-2.21);
pair C = (3.32,-2.37);
pair A1 = (-4.315017989382371,-2.2414102233367177);
pair B1 = (1.9886580958952578,-1.1392126203744681);
pair C1 = (-4.092828186447118,2.109286114158047);
pair A2 = (3.0470584683124935,1.359244765193699);
pair B2 = (-5.1816820896311935,2.385132215702915);
pair C2 = (-5.202461921205966,-4.043159551716485);
pair Am = (-1.43,-2.29);
pair Bm = (0.01,0.69);
pair Cm = (-4.74,0.77);
pair A3 = (1.455017989382371,-2.3385897766632824);
pair B3 = (-1.9686580958952578,2.519212620374468);
pair C3 = (-5.387171813552882,-0.569286114158047);

draw(A--B--C--cycle, zzttqq);
draw(A2--B2--C2--cycle, zzwwff);
draw(A3--B3--C3--cycle, xdxdff);

draw(circle((-1.4056000616669704,-0.8412536614763632), 4.966725411211727), linetype("4 4"));
draw(circle((-0.5566902402914408,1.4124610610312884), 3.604141607776698));
draw(circle((-5.2102704741323675,-0.014667953488532146), 2.399970447272152));
draw(circle((-0.5465410844368217,-5.216985440315512), 4.801610777125358));

dot("$A$", A, dir(135));
dot("$B$", B, dir(225));
dot("$C$", C, dir(0));
dot("$A_1$", A1, dir(S));
dot("$B_1$", B1, dir(90));
dot("$C_1$", C1, dir(NE));
dot("$A_2$", A2, dir(NE));
dot("$B_2$", B2, dir(NW));
dot("$C_2$", C2, dir(SW));
dot("$A_m$", Am, dir(S));
dot("$B_m$", Bm, dir(NE));
dot("$C_m$", Cm, dir(NW));
dot("$A_3$", A3, dir(S));
dot("$B_3$", B3, dir(NE));
dot("$C_3$", C3, dir(NW));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
