import olympiad;
settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(16cm);

picture pic1;

pair A1 = dir(190);
pair B1 = dir(350);
pair C1 = dir(40);
pair D1 = dir(90);
pair O11 = (0,0);

pair Q1 = extension(B1,C1,A1,D1);
pair P1 = extension(A1,B1,C1,D1);
pair[] E1 = intersectionpoints(circumcircle(A1,B1,C1), circle((Q1+O11)/2, abs(Q1-O11)/2));

draw(pic1, A1--B1--C1--D1--A1);
draw(pic1, circumcircle(A1,B1,C1));
draw(pic1, Q1--D1);
draw(pic1, Q1--C1);
draw(pic1, P1--B1);
draw(pic1, P1--C1);
draw(pic1, Q1--E1[0]);
draw(pic1, Q1--E1[1]);
draw(pic1, P1--E1[1], dashed);

dot(pic1, A1); label(pic1, "$A$", A1, dir(210));
dot(pic1, B1); label(pic1, "$B$", B1, dir(320));
dot(pic1, C1); label(pic1, "$C$", C1, dir(C1));
dot(pic1, D1); label(pic1, "$D$", D1, dir(D1));
dot(pic1, Q1); label(pic1, "$Q$", Q1, dir(Q1));
dot(pic1, P1); label(pic1, "$P$", P1, dir(P1));
dot(pic1, E1[0]); label(pic1, "$E$", E1[0], dir(30));
dot(pic1, E1[1]); label(pic1, "$F$", E1[1], dir(E1[1]));


picture pic2;

pair A2 = dir(190);
pair B2 = dir(350);
pair C2 = dir(30);
pair D2 = dir(90);
pair O12 = (0,0);

pair Q2 = extension(B2,C2,A2,D2);
pair P2 = extension(A2,B2,C2,D2);
pair[] E2 = intersectionpoints(circumcircle(A2,B2,C2), circle((Q2+O12)/2, abs(Q2-O12)/2));
pair R2 = foot(O12,P2,Q2);

draw(pic2, A2--B2--C2--D2--A2);
draw(pic2, circumcircle(A2,B2,C2));
draw(pic2, circumcircle(Q2,R2,D2), dashed);
draw(pic2, Q2--D2);
draw(pic2, Q2--C2);
draw(pic2, P2--B2);
draw(pic2, P2--C2);
draw(pic2, Q2--E2[0]);
draw(pic2, Q2--E2[1]);
draw(pic2, P2--E2[1], dashed);
draw(pic2, P2--Q2, dashed);
draw(pic2, O12--R2, dashed);

markscalefactor=0.014;
draw(pic2, rightanglemark(O12,R2,P2));

dot(pic2, A2); label(pic2, "$A$", A2, dir(210));
dot(pic2, B2); label(pic2, "$B$", B2, dir(320));
dot(pic2, C2); label(pic2, "$C$", C2, dir(0)*2);
dot(pic2, D2); label(pic2, "$D$", D2, dir(140));
dot(pic2, Q2); label(pic2, "$Q$", Q2, dir(Q2));
dot(pic2, P2); label(pic2, "$P$", P2, dir(P2));
dot(pic2, E2[0]); label(pic2, "$E$", E2[0], dir(30));
dot(pic2, E2[1]); label(pic2, "$F$", E2[1], dir(E2[1]));
dot(pic2, O12); label(pic2, "$O_1$", O12, dir(210));
dot(pic2, R2); label(pic2, "$R$", R2, dir(R2));

label(pic2, "$\omega_1$", (0,-1), dir(270));
label(pic2, "$\omega_2$", Q2+dir(-20)*0.5, dir(30));

// Combine side by side
add(pic1);
add(shift((4.2,0))*(pic2));
