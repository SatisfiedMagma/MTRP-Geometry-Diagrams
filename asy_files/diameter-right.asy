import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = (-1,0);
pair B = (1,0);
pair C = dir(110);
pair O = (0,0);

draw(A--C--B--A);
draw(arc(O,1,0,180));

markscalefactor=0.01;
draw(rightanglemark(A,C,B));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$O$", O, dir(270));
