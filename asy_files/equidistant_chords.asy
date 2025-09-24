import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = dir(160);
pair B = dir(70);
pair C = dir(200);
pair D = dir(290);

pair O = (0,0);
pair P = (A+B)/2;
pair Q = (C+D)/2;

draw(unitcircle);
draw(A--B); draw(C--D);
draw(O--P); draw(O--Q);

markscalefactor=0.01;
draw(rightanglemark(O,Q,C));
draw(rightanglemark(A,P,O));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));
dot("$O$", O, dir(0));
