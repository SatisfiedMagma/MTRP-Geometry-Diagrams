import olympiad;
settings.outformat="pdf";
size(8cm);

pair O = (0,0);
pair A = (-3,2);
pair B = (-2,3);

pair C = rotate(-60)*scale(2.5)*A;
pair D = rotate(-60)*scale(2.5)*B;

draw(O--A); draw(O--B);
draw(A--B, linewidth(1));
draw(O--C); draw(O--D);
draw(C--D, linewidth(1));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$O$", O, dir(270));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
