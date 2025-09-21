import olympiad;
settings.outformat="pdf";
size(8cm);
defaultpen(fontsize(11pt));

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);

pair H = orthocenter(A,B,C);
pair S = (0,0);
pair N = (H+S)/2;

pair D = extension(A,H, B,C);
pair E = extension(B,H,A,C);
pair F = extension(C,H,B,A);

pair A_ = (B+C)/2;
pair B_ = (A+C)/2;
pair C_ = (A+B)/2;

pair P_ = (A+H)/2;
pair Q_ = (B+H)/2;
pair R_ = (C+H)/2;

draw(A--B--C--A);
draw(A--D); draw(C--F); draw(B--E);
draw(H--S);
draw(circumcircle(A,B,C));

draw(P_--B_--R_-- A_--Q_--C_--P_);
draw(C_--B_); draw(P_--Q_--R_--P_);
draw(A_--B_--C_--A_,linewidth(1pt));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$H$", H, dir(190)*2);
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
dot("$S$", S, dir(0));
dot("$A'$", A_, dir(A_));
dot("$B'$", B_, dir(B_));
dot("$C'$", C_, dir(C_));
dot("$P_1$", P_, dir(P_));
dot("$Q_1$", Q_, dir(130));
dot("$R_1$", R_, dir(30));
dot("$N$", N, dir(70));
