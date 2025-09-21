import olympiad;
settings.outformat="pdf";
size(8cm);

pair E = dir(40);
pair D = dir(120);
pair A = dir(200);
pair B = dir(300);
pair C = E + (E-D)*0.4;
pair O = (0,0);

draw(circumcircle(E,D,A));
draw(E--B--A--D--C--B);

dot("$E$", E, dir(E));
dot("$D$", D, dir(D));
dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$O$", O, dir(120));
dot("$C$", C, dir(C));
