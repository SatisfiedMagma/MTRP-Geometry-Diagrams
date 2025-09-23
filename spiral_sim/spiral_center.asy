import olympiad;
settings.outformat="pdf";
size(8cm);

pair O = (0,0);
pair A = (-4,1.5);
pair B = (-3,6);

pair C = rotate(-70)*scale(2)*A;
pair D = rotate(-70)*scale(2)*B;

pair X = extension(A,C,B,D);

draw(O--A); draw(O--B);
draw(A--B, linewidth(1));
draw(O--C); draw(O--D);
draw(C--D, linewidth(1));

draw(circumcircle(A,B,X));
draw(circumcircle(C,D,X));

draw(A--C); draw(B--D);

dot("$A$", A, dir(240));
dot("$B$", B, dir(B));
dot("$O$", O, dir(250)*1.2);
dot("$C$", C, dir(120));
dot("$D$", D, dir(D));
dot("$X$", X, dir(120)*1.3);
