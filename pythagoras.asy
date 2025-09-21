import olympiad;
settings.outformat="pdf";
size(8cm);

pair B = (0,0);
pair A = (0,1);
pair C = (1.5,0);
pair D = foot(B, A, C);

draw(B--A--C--B);
draw(B--D, dashed);
markscalefactor=0.008;
draw(rightanglemark(A,B,C));
draw(rightanglemark(B,D,C));

dot("$A$", A, dir(A));
dot("$B$", B, dir(270));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
