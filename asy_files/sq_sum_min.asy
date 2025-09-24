import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = dir(130);
pair B = dir(200);
pair C = dir(340);
pair P = dir(50)*1.2;
pair G = centroid(A,B,C);
pair D = (B+C)/2;
pair E = (C+A)/2;
pair F = (A+B)/2;
pair H = (A+G)/2;

draw(A--B--C--A);
draw(P--A); draw(P--D);
draw(P--C); draw(P--H);
draw(P--B);
draw(A--D);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$G$", G, dir(G));
dot("$P$", P, dir(P));
dot("$D$", D, dir(D));
dot("$H$", H, dir(180));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
