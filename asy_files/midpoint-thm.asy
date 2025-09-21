import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair D = (B+C)/2;
pair E = (A+C)/2;
pair F = (A+B)/2;

draw(A--B--C--A);
draw(D--E--F);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(270));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
