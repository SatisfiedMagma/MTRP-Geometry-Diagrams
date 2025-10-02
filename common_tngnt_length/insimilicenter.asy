import olympiad;
import geometry;
settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(8cm);

path C1 = scale(1.7)*unitcircle;
path C2 = shift((4,0))*unitcircle;

pair O1 = (0,0);
pair O2 = (4,0);
pair T = extension(O1,O2,(0,1.7), (4,-1));
pair[] A = intersectionpoints(circle(T/2,abs((T-O1)/2)), C1);
pair[] B = intersectionpoints(line(O2,O2+A[0]), C2);
pair M = foot(O2,O1,A[0]);

draw(C1); draw(C2);
draw(O1--O2);
draw(A[0]--B[1]);
draw(M--O1);
draw(O2--M);
draw(O2--B[1]);

dot("$O_1$", O1, dir(270));
dot("$O_2$", O2, dir(300));
dot("$K$", A[0], dir(90)*1.6);
dot("$Y$", B[1], dir(240));
dot("$M$", M, dir(130));

markscalefactor=0.025;
draw(rightanglemark(O2,M,A[0]));
draw(rightanglemark(M,A[0], B[1]));
draw(rightanglemark(A[0],B[1],O2));

label("$T_\ell$", (A[0]+B[1])/2, dir(90));
label("$d$", (O1+O2)/2, dir(270));
label("$R$", (O1+M)/2, dir(160));
