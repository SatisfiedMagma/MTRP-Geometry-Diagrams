import olympiad;
import geometry;
settings.outformat="pdf";
defaultpen(fontsize(11pt));
size(8cm);

pair O1 = (0,0);
pair O2 = (5.5,0);

path C1 = scale(3)*unitcircle;
path C2 = shift((5.5,0))*unitcircle;
path C3 = shift((2,-1))*scale(4)*unitcircle;

pair[] A = intersectionpoints(C1,C3);
pair[] B = intersectionpoints(C2,C3);

pair T = extension(A[0],A[1],B[0],B[1]);
pair L = foot(T,O1,O2);
pair P = L+(0,2.5);
pair M = (O1+O2)/2;
/* pair */ 

draw(C1); draw(C2);
draw(O1--O2, linewidth(0.7));
draw(L-0.4(L-T)--L+0.4(L-T),linewidth(0.8)+dashed);
draw(P--O1); draw(P--O2);

draw(rightanglemark(T,L,O2));

dot("$O_1$", O1, dir(180));
dot("$O_2$", O2, dir(O2));
dot("$P$", P, dir(P));
dot("$L$", L, dir(310));
dot("$M$", M, dir(270));

label("$\omega_1$", (0,-3.1), dir(270));
label("$\omega_2$", (5.5,-1.1), dir(270));
