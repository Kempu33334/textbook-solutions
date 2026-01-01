if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-66";
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
size(7cm);
real labelscalefactor = 0.5;
real xmin = -16.65704336007145, xmax = 17.22341991180641, ymin = -9.932939644779548, ymax = 10.363800653067488;
pen rvwvcq = rgb(0.08235294117647059,0.396078431372549,0.7529411764705882); pen wewdxt = rgb(0.43137254901960786,0.42745098039215684,0.45098039215686275);

pair A = (-9.28,-2.91);
pair B = (-0.24,6.57);
pair C = (4.58,-3.23);
pair L = (2.1016783415546167,1.8089112557603226);
pair C_ = (1.9867222065314467,-3.1701263424307404);
pair B_ = (-1.502621775800476,5.245923182014545);
pair O = (-2.291222349976468,-0.5241930333557728);

draw(A--B--C--cycle, rvwvcq);
draw(L--A, wewdxt);
draw(B_--L, wewdxt);
draw(L--C_, wewdxt);
draw(circle(L, 4.980364476339026), wewdxt);
draw(circle(O, 7.384787601790356), wewdxt);

dot("$A$", A, SW);
dot("$B$", B, NE);
dot("$C$", C, SE);
dot("$L$", L, NE);
dot("$C'$", C_, S);
dot("$B'$", B_, NW);
dot("$O$", O, SW);

clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
