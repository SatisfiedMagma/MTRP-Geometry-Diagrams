import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = dir(60);
pair B = dir(200);
pair C = dir(340);
pair M = (B+C)/2;
pair H = foot(A,B,C);

draw(A--B--C--A);
draw(A--M);
draw(A--H, dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$M$", M, dir(270));
dot("$H$", H, dir(270));
