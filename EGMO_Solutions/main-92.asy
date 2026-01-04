if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-92";
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
size(12cm);
real xmin = -21, xmax = 2.2500125831189157, ymin = -8.019013174935774, ymax = 12.214175054835977;
pen ffqqtt = rgb(1,0,0.2); pen wwqqcc = rgb(0.4,0,0.8); pen wwzzff = rgb(0.4,0.6,1); pen cczzff = rgb(0.8,0.6,1); pen ttttff = rgb(0.2,0.2,1); pen ffzztt = rgb(1,0.6,0.2);

pair A = (-19.51505300234463,-2.4678316778012928);
pair B = (-7.294346997655373,0.9570916778012921);
pair C = (-8.083736031378045,2.7024156000375266);
pair D = (-5.374131622768526,3.9279371084704136);
pair E = (-7.326643277016389,-2.5791477505479423);
pair F = (-7.207469803561276,10.469597924905866);
pair G = (-11.999077781834828,5.432777137148601);
pair G1 = (-8.987864903828532,-5.311739886700151);

draw(circle((-13.4047,-0.75537), 6.345781182108314), ffqqtt);
draw((xmin, -3.5681691926618697*xmin-15.247873785202179)--(xmax, -3.5681691926618697*xmax-15.247873785202179), ffqqtt);
draw(A--B, wwqqcc);
draw(A--D, wwzzff);
draw(D--E, cczzff);
draw(F--E, ttttff);
draw(A--F, ttttff);
draw(G1--F, ffzztt+dashed);
draw(G--D, cczzff);

dot("$A$", A, W);
dot("$B$", B, NE);
dot("$C$", C, NE);
dot("$D$", D, NE);
dot("$E$", E, NE);
dot("$F$", F, NE);
dot("$G$", G, N);
dot("$G'$", G1, SE);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
