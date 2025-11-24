if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-82";
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
real xmin = -2.2740675560792454, xmax = 2.585902435885857, ymin = -6.514941502313417, ymax = 0.4299483516753705;
pen ffttww = rgb(1,0.2,0.4); pen wwzzff = rgb(0.4,0.6,1); pen xdxdff = rgb(0.49019607843137253,0.49019607843137253,1); pen yqqqyq = rgb(0.5019607843137255,0,0.5019607843137255);

pair A = (-1.4763482095919265,-3.591177584686755);
pair B = (1.77947,-3.5912);
pair C = (-0.3948779588505968,-1.465442745175504);
pair H = (-0.3948849781506938,-2.484994193088567);
pair F = (0.11476400884329398,-1.9636956148592564);
pair M = (0.6922960205747016,-2.5283213725877522);
pair Q = (-1.4306187344387362,-2.4437173289558514);
pair K = (-1.1879690064257522,-2.025188858090599);

draw(A--B--C--cycle, ffttww);
draw(circle((0.15156440485408545,-3.0814130683868464), 1.705860293913581), ffttww);
draw(A--F, wwzzff);
draw(H--Q, wwzzff);
draw(circle((-0.9356165938713101,-3.038085888887661), 0.7734992593414333), xdxdff);
draw(circle((-0.912751856294715,-2.464355761022209), 0.518277964375095), yqqqyq);
draw(circle((-0.48197365648088647,-3.1517530681036097), 1.329502295382002), yqqqyq);
draw(circle(((0.15156440485408545,-3.0814130683868464) + H) / 2, 1.705860293913581 / 2), ffttww + dashed);

dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, N);
dot("$H$", H, NE);
dot("$F$", F, NE);
dot("$M$", M, NE);
dot("$Q$", Q, NW);
dot("$K$", K, NW);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
