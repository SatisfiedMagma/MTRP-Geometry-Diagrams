import olympiad;
settings.outformat="pdf";
size(8cm);

pair C = (0,0);
pair D = dir(210);
pair E = dir(300);
pair A = dir(150);
pair B = dir(60);

pair P = (A+B)/2;
pair Q = (D+E)/2;

draw(circle(C,1));
draw(A--B); draw(D--E);
draw(C--P); draw(C--Q);

markscalefactor = 0.01;
draw(rightanglemark(C,Q,D));
draw(rightanglemark(C,P,A));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$E$", E, dir(E));
dot("$D$", D, dir(D));
dot("$C$", C, dir(45));
