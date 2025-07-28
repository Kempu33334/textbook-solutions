if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-32";
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

pen dps = linewidth(0.7) + fontsize(10);
defaultpen(dps);
pen dotstyle = black;
real xmin = -20.822117921646104, xmax = 15.220392207712228, ymin = -22.87276025399806, ymax = 10.101509444507066;
pen rvwvcq = rgb(0.08235294117647059,0.396078431372549,0.7529411764705882);
pen wewdxt = rgb(0.43137254901960786,0.42745098039215684,0.45098039215686275);

draw((-8.42,-1.71)--(-6.06,5.77)--(4.66,-2.67)--cycle, rvwvcq);
draw((4.66,-2.67)--(-4.940066938624354,-11.92002478947892), wewdxt);
draw((-4.940066938624354,-11.92002478947892)--(-14.540133877248708,-21.170049578957837), wewdxt);
draw((-6.06,5.77)--(-4.940066938624354,-11.92002478947892), wewdxt);
draw((xmin, 2.146905693794536*xmin + 10.046246630642239)--(xmax, 2.146905693794536*xmax + 10.046246630642239), wewdxt);
draw(circle((-6.726343211928719,1.8679371631218953), 3.958548680896659), wewdxt);
draw((xmin, 3.1694915254237284*xmin + 24.977118644067794)--(xmax, 3.1694915254237284*xmax + 24.977118644067794), wewdxt);

dot((-8.42,-1.71),dotstyle);
label("$A$", (-8.275147355484613,-1.3534810278926073), NE);
dot((-6.06,5.77),dotstyle);
label("$B$", (-5.896315468245058,6.14898877032443), NE);
dot((4.66,-2.67),dotstyle);
label("$C$", (4.790129317508022,-2.3050137827884267), NE);
dot((-4.940066938624354,-11.92002478947892),dotstyle);
label("$M$", (-4.798393058749879,-11.564159436197746), SE);
dot((-14.540133877248708,-21.170049578957837),dotstyle);
label("$F$", (-14.38691543500778,-20.786707675957224), SE);
dot((-5.573223090358711,-1.918937754836058),linewidth(4pt) + dotstyle);
label("$D$", (-5.420549090797147,-1.6096629234414817), NE);
dot((-3.083398220506205,3.426481434801527),linewidth(4pt) + dotstyle);
label("$E$", (-2.9319249626080732,3.7335594694350425), NE);

clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
