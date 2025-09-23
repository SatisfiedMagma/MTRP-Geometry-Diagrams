import olympiad;
import geometry;
settings.outformat="pdf";
size(8cm);

pair O = (0,0);
pair A = (-2.5,0);
pair P = intersectionpoints(unitcircle,circle(A/2,2.5/2))[0];
pair Q = intersectionpoints(unitcircle,circle(A/2,2.5/2))[1];

draw(unitcircle);
draw(A--P--O--Q--A); draw(A--O);
markscalefactor=0.014;
draw(rightanglemark(A,P,O));
draw(rightanglemark(O,Q,A));

dot("$A$", A, dir(A));
dot("$O$", O, dir(0));
dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));
