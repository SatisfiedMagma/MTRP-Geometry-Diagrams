import olympiad;
import geometry;
settings.outformat="pdf";
size(8cm);

pair A = dir(110);
pair B = dir(200);
pair C = dir(340);
pair P = dir(50);
pair H = orthocenter(A,B,C);

pair Y = foot(P, A, C);
pair Z = foot(P, A, B);
pair X = foot(P, B, C);
pair D = foot(A, B, C);
pair L = extension(Y,X,A,H);
pair K = intersectionpoints(line(P,X), circumcircle(A,B,C))[1];

draw(A--B--C--A);
draw(circumcircle(A,B,C));
draw(P--Y); draw(P--Z);
draw(P--H);
draw(L--X); draw(L--D);
draw(A--Z);
draw(P--K);
draw(K--A);

markscalefactor = 0.01;
draw(rightanglemark(A,Z,P));
draw(rightanglemark(A,Y,P));
draw(rightanglemark(P,X,C));
draw(rightanglemark(A,D,B));

dot("$A$", A, dir(130));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$H$", H, dir(H));
dot("$P$", P, dir(P));
dot("$X$", X, dir(310));
dot("$Y$", Y, dir(0)*1.4);
dot("$Z$", Z, dir(60));
dot("$L$", L, dir(L));
dot("$D$", D, dir(D));
dot("$K$", K, dir(K));
