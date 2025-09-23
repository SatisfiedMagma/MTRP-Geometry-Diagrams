import olympiad;
import geometry;
settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(8cm);

pair A = dir(110)*1.5;
pair B = dir(160);
pair C = dir(20);
pair D = dir(50);
pair M = (A+C)/2;
pair N = (B+D)/2;
pair E = extension(A,C,B,D);
pair K = intersectionpoints(circumcircle(A,B,E), circumcircle(C,D,E))[1];

draw(A--B--C--D--A);
draw(A--C); draw(B--D);
draw(circumcircle(A,B,E));
draw(circumcircle(C,D,E));
draw(circumcircle(M,K,N), dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(100));
dot("$M$", M, dir(M));
dot("$N$", N, dir(140));
dot("$E$", E, dir(65)*1.4);
dot("$K$", K, dir(270)*1.4);
