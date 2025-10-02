import olympiad;
import geometry;
settings.outformat="pdf";
size(8cm);

pair A = dir(210);
pair B = dir(330);
pair C = dir(60);
pair D = dir(140);
pair T_help = A+incenter(A,D,C)-(A+B)/2;
pair T = extension(A,T_help,C,D);

draw(unitcircle);
draw(A--B--C--D--A);
draw(B--D); draw(A--C);
draw(T--D); draw(T--A);

draw(anglemark(D,C,A));
draw(anglemark(D,B,A));
draw(anglemark(B,A,C));
draw(anglemark(D,A,T));

markscalefactor=0.027;
draw(anglemark(B,A,C));
draw(anglemark(D,A,T));

markscalefactor=0.035;
draw(anglemark(C,A,D));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$T$", T, dir(T));

label("$2$", A, dir(100)*7);
label("$3$", A, dir(65)*8);
label("$1$", A, dir(20)*7);
label("$4$", B, dir(165)*7);
label("$5$", C, dir(208)*7);
