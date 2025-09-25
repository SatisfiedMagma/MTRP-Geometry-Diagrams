import olympiad;
settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(8cm);

pair O1 = (0,0);
pair A1 = (-1,0);
pair B1 = (1,0);
pair P1 = (2*O1+A1)/3;

pair O2 = (4,0);
pair A2 = (3,0);
pair B2 = (5,0);
pair P2 = (-2*A2+O2)/-1;

draw(unitcircle);
draw(shift((4,0))*unitcircle);
draw(A1--B1);
draw(P2--B2);

dot("$O$", O1, dir(90));
dot("$O$", O2, dir(90));
dot("$A$", A1, dir(A1));
dot("$A$", A2, dir(130));
dot("$P$", P1, dir(90));
dot("$P$", P2, dir(90));
dot("$B$", B1, dir(B1));
dot("$B$", B2, dir(B2));

label("$P$ is inside", (0,-1.3));
label("$P$ is outside", (4,-1.3));
