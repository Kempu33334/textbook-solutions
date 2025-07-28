if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-54";
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
size(12cm);
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps);
real xmin = 0.27779675568007156, xmax = 20.911933462597446, ymin = -5.291465940083503, ymax = 8.741047833021009;

pen ffqqtt = rgb(1.,0.,0.2);
pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1.);
pen qqccqq = rgb(0.,0.8,0.);

pair A = (7.564429508362937,7.111087743387977);
pair B = (5.271254483433206,-1.890952256513832);
pair C = (15.713341480225136,-1.9521363600106596);
pair I = (9.060379938688135,1.0361776804168898);
pair O = (10.512738295975648,1.5669359727364884);
pair T = (7.925316426377514,-4.154549116980838);
pair D = (9.043099290699278,-1.9130529096814068);
pair P = (13.525812944292843,7.076157762318077);
pair E = (11.941496672959069,-1.9300357068430851);

draw(A--B--C--cycle);
draw(circle(O, 6.279342605968587));
draw(circle((9.48779109952155,-0.6994977198760377), 3.7919265895916805), ffqqtt);
draw(circle(I, 2.9492812165621745), xdxdff);
draw((xmin, 2.005305573063604*xmin-20.047230315088193)--(xmax, 2.005305573063604*xmax-20.047230315088193), linetype("4 4"));

draw(A--P);
draw(P--C);
draw(B--T);
draw(C--T);
draw(T--A, qqccqq);
draw(A--E, qqccqq);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, dir(C));
dot("$I$", I, NE);
dot("$O$", O, SE);
dot("$T$", T, S);
dot("$D$", D, NE);
dot("$P$", P, dir(P));
dot("$E$", E, NE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
