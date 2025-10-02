import olympiad;
import geometry;
settings.outformat="pdf";
size(8cm);

draw(unitcircle);

pair P = dir(270);
pair S = dir(170);
pair R = dir(95);
pair Q = dir(350);
pair O = (0,0);

pair A = extension(P, P + P*dir(90), O, (S+P)/2);
pair B = extension(A,P, Q, Q + Q*dir(90));
pair C = extension(B,Q, R+R*dir(90), R);
pair D = extension(R,C, S, S+S*dir(90));

draw(S--A); draw(P--A);
draw(P--B); draw(B--Q);
draw(R--C); draw(C--Q);
draw(D--R); draw(D--S);

dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));
dot("$R$", R, dir(R));
dot("$S$", S, dir(S));
dot("$O$", O, dir(270));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));

label("$a$", (D+R)/2, dir(90));
label("$a$", (S+D)/2, dir(160));
label("$z$", (R+C)/2, dir(90));
label("$z$", (C+Q)/2, dir(0));
label("$y$", (B+Q)/2, dir(0));
label("$y$", (P+B)/2, dir(270));
label("$x$", (A+P)/2, dir(270));
label("$x$", (S+A)/2, dir(160));
