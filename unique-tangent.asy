import olympiad;
settings.outformat="pdf";
size(8cm);

pair C = (0,0);
pair A = (1,1.2);
pair B = (1,-1.1);
pair eps = (0,0.1);
pair P = (1,0);
pair X = (1,0.6);

draw(circle(C,1));
draw(A+eps--B-eps);
draw(C--P); draw(C--X);

markscalefactor=0.01;
draw(rightanglemark(C,P,X));

dot("$C$", C, dir(120));
dot("$A$", A, dir(0));
dot("$B$", B, dir(0));
dot("$P$", P, dir(P));
dot("$X$", X, dir(X));
