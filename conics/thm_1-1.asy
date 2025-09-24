import geometry;
import olympiad;
import markers;
settings.outformat="pdf";
size(24cm);
picture p1, p2, p3;

// Ellipse
pair F1 = (-sqrt(20),0);
pair F2 = (sqrt(20),0);
pair X = (1.2,2);
path E = ellipse((0,0), 6, 4);
pair[] _ipE = intersectionpoints(line(F1,X), E);
pair Y = (_ipE.length > 0 ? _ipE[0] : (0,0));

draw(p1, E);
draw(p1, F1--X--F2);
draw(p1, X--Y, dashed);

dot(p1, F1); label(p1, "$F_1$", F1, dir(270));
dot(p1, F2); label(p1, "$F_2$", F2, dir(270));
dot(p1, X);  label(p1, "$X$", X, dir(120));
dot(p1, Y);  label(p1, "$Y$", Y, dir(Y));

// Hyperbola
pair P1 = (-3,0);
pair P2 = (3,0);

draw(p2, box((-5,-5),(5,5)), invisible);
hyperbola H = hyperbola(P1,P2,2.2);

draw(p2, H, linewidth(0.8));
draw(p2, H.A1^^H.A2);
draw(p2, (-5,0)--(5,0));
draw(p2, (0,5)--(0,-5));

dot(p2, P1); label(p2, "$F_1$", P1, dir(270));
dot(p2, P2); label(p2, "$F_2$", P2, dir(270));
label(p2, "$\ell_1$", (3.2,-3), dir(220));
label(p2, "$\ell_2$", (-3.2,-3), dir(330));
label(p2, "$a$", (4.7,0), dir(270));
label(p2, "$b$", (0,4.7), dir(0));

// Parabola
pair P1_par = (0,2);
line l = line((3,0),(0,0));
pair T = (2.8,2.8*2.8/4 + 1);
pair T_ = foot(T,(3,0),(0,0));
parabola P = parabola(P1_par,l);

draw(p3, P, linewidth(0.8));

draw(p3, (-5,0)--(5,0));
draw(p3, (0,5)--(0,-1));
draw(p3, P1_par--T--T_);

draw(p3, T--T_, StickIntervalMarker(1,2));
draw(p3, T--P1_par, StickIntervalMarker(1,2));

draw(p3, rightanglemark(T,T_,(4,0)));

dot(p3, P1_par); label(p3, "$F$", P1_par, dir(180));
label(p3, "$\ell$", (-4.7,0), dir(270));
label(p3, "$\ell'$", (0,4.7), dir(0));
dot(p3, T); label(p3, "$T$", T, dir(0));
dot(p3, T_);

// -------------------- place panels side-by-side --------------------
add(shift((-0.5cm,0))*p1);
add(shift((0cm,0))*p2);
add(shift((0.5cm,-1))*p3);
