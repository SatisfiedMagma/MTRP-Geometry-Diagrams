import olympiad;
settings.outformat="pdf";
size(8cm);

pair O1 = (0,0);
pair O2 = (0,1.8);

pair P1 = (6,0);
pair P2 = (6,1.8);
pair eps = (0.3,0);

pair A = (1,0);
pair B = (3.3,0);
pair D = (0.3,1.8);
pair C = B+D-A;
pair E = D + (C-D)*0.7;
pair F = E+B-A;

draw(O1--P1); draw(O2--P2);
draw(D--A); draw(B--C);
draw(A--E); draw(B--F);

label("$\ell_1$", P2-eps, dir(90));
label("$\ell_2$", P1-eps, dir(90));
dot("$A$", A, dir(270));
dot("$B$", B, dir(270));
dot("$D$", D, dir(D));
dot("$C$", C, dir(80));
dot("$E$", E, dir(80));
dot("$F$", F, dir(80));
