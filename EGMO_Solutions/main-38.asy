if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-38";
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

size(10cm);
import geometry;

pair O = (0,0);
real R = 5;
pair A = R*dir(270);
pair B = R*dir(90);
pair P = R*dir(150);
pair Q = R*dir(30);

path omega = circle(O,R);

real lenAP = abs(A-P);
real lenAQ = abs(A-Q);

pair X = 0.4*P + 0.6*Q;

pair[] Ssol = intersectionpoints(omega, A--(A + 10*(X - A)));
pair S = (abs(Ssol[0]-A)>1e-3 ? Ssol[0] : Ssol[1]);

pair dirAX = X - A;
pair perpDir = rotate(90)*dirAX;
pair[] Tsol = intersectionpoints(omega, X--(X - 10*perpDir));

pair T = Tsol[0];
pair M = midpoint(S--T);

draw(omega, gray+dashed);
draw(A--P--B--Q--cycle, heavyblue);
draw(P--Q, heavyblue);
draw(A--S, red);
draw(X--T, dashed+purple);
draw(S--T, heavygreen);
draw(A--B, dashed);

dot("$A$", A, dir(270));
dot("$B$", B, dir(90));
dot("$P$", P, dir(150));
dot("$Q$", Q, dir(30));
dot("$X$", X, dir(-90));
dot("$S$", S, dir(60));
dot("$T$", T, dir(0));
dot("$M$", M, dir(45));

label("$P$", P, dir(P));
label("$Q$", Q, dir(Q));
