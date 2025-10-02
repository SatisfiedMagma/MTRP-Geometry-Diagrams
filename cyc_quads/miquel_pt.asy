import olympiad;
import geometry;
settings.outformat="pdf";
size(8cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair E = 0.4*A + 0.6*C;
pair F = (B+A)/2;
pair D = (B+C)/2;
pair M = intersectionpoints(circumcircle(A,F,E), circumcircle(E,C,D))[0];

draw(A--B--C--A);
draw(circumcircle(A,E,F));
draw(circumcircle(F,B,D));
draw(circumcircle(E,C,D));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$E$", E, dir(35)*1.8);
dot("$F$", F, dir(F));
dot("$M$", M, dir(140));
dot("$D$", D, dir(258)*1.6);
