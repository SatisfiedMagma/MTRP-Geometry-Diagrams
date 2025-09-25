import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = dir(130);
pair B = dir(210);
pair C = dir(330);
pair O = (0,0);
pair P = extension(B,C,A,A+B-foot(B,O,A));

draw(A--B--C--A);
draw(circumcircle(A,B,C));
draw(P--B); draw(P--A);

markscalefactor = 0.02;
draw(anglemark(A,C,B));
draw(anglemark(P,A,B));
draw(anglemark(B,P,A));

markscalefactor = 0.023;
draw(anglemark(A,C,B));
draw(anglemark(P,A,B));

dot("$A$", A, dir(A));
dot("$B$", B, dir(220));
dot("$C$", C, dir(C));
dot("$P$", P, dir(P));
