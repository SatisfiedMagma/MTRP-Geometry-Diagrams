import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair S = (0,0);

pair D = (B+C)/2;
pair E = (A+C)/2;

draw(A--B--C--A);
draw(S--D); draw(S--E);
draw(circumcircle(A,B,C));

markscalefactor=0.01;
draw(rightanglemark(S,D,C));
draw(rightanglemark(S,E,C));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$S$", S, dir(110));

