import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = (0,0);
pair B = dir(220);
pair C = dir(320);
pair D = (B+C)/2;

draw(circle(A,1));
markscalefactor=0.01;
draw(rightanglemark(A,D,C));
draw(A--B--C--A);
draw(A--D);

dot("$A$", A, dir(90));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(270));
