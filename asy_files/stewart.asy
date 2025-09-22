import olympiad;
settings.outformat="pdf";
size(8cm);

pair P = (3,2);
pair A = (0,0);
pair B = (1,0);
pair C = (2,0);
pair H = foot(P, A, B);

draw(P--A); draw(P--B); draw(P--C);
draw(P--H, dashed);
draw((-0.5,0)--(3.5,0));

dot("$P$", P, dir(P));
dot("$A$", A, dir(270));
dot("$B$", B, dir(270));
dot("$C$", C, dir(270));
dot("$H$", H, dir(270));
