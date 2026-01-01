if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-24";
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

size(10cm);

pair A = (-2,0), B = (2,0), C = (-1.5,3);
pair M_AB = (A + B)/2;
pair M_BC = (B + C)/2;
pair M_CA = (C + A)/2;

pair dir_AB = rotate(90)*(B - A);
pair dir_BC = rotate(90)*(C - B);
pair dir_CA = rotate(90)*(A - C);

pair pAB1 = M_AB - dir_AB;
pair pAB2 = M_AB + dir_AB;
pair pBC1 = M_BC - dir_BC;
pair pBC2 = M_BC + dir_BC;
pair pCA1 = M_CA - dir_CA;
pair pCA2 = M_CA + dir_CA;

draw(A--B--C--cycle, black+1.2bp);

draw(pAB1--pAB2, gray+dashed+0.7bp);
draw(pBC1--pBC2, gray+dashed+0.7bp);
draw(pCA1--pCA2, gray+dashed+0.7bp);

pair D = M_BC + dir_BC;
pair E = M_CA + dir_CA;
pair F = M_AB + dir_AB;

dot(D, blue+3bp); label("$D$", D, dir(270));
dot(E, blue+3bp); label("$E$", E, dir(0));
dot(F, blue+3bp); label("$F$", F, dir(90));

draw(E--F--D--cycle, blue);

pair dir_EF = F - E;
pair dir_FD = D - F;
pair dir_DE = E - D;

pair perp_EF = rotate(90)*dir_EF;
pair perp_FD = rotate(90)*dir_FD;
pair perp_DE = rotate(90)*dir_DE;

pair EF1 = E - 0.25*dir_EF;
pair EF2 = F + 0.25*dir_EF;
pair FD1 = F - 0.25*dir_FD;
pair FD2 = D + 0.25*dir_FD;
pair DE1 = D - 0.25*dir_DE;
pair DE2 = E + 0.25*dir_DE;

pair A_line_far = A + 10*perp_EF;
pair B_line_far = B + 10*perp_FD;
pair C_line_far = C + 10*perp_DE;
pair A_intersect = extension(A, A_line_far, EF1, EF2);
pair B_intersect = extension(B, B_line_far, FD1, FD2);
pair C_intersect = extension(C, C_line_far, DE1, DE2);

draw(A--A_intersect, red+dotted+1bp);
draw(B--B_intersect, red+dotted+1bp);
draw(C--C_intersect, red+dotted+1bp);

pair P = extension(A, A_intersect, B, B_intersect);
dot(P, heavyred+4bp);
label("$P$", P, dir(60));

label("$A$", A, dir(180));
label("$B$", B, dir(-90));
label("$C$", C, dir(90));
