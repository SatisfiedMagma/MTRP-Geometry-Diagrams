import olympiad;
import geometry;
settings.outformat="pdf";
size(8cm);

path C1 = unitcircle;
path C2 = scale(2)*shift(2,0)*unitcircle;
pair A = (4,0);
pair B = (0,0);
/* pair S = (-2*B+A)/-1; //there's a nice coord formula */
pair S = extension((0,1),(4,2), (0,-1), (4,-2));
pair[] P = intersectionpoints(C2, circle((S+A)/2,abs(S-A)/2));
pair Q = foot(B, P[0], S);

draw(C1); draw(C2);
draw(S--P[0]+0.2(P[0]-S));
draw(S--P[1]+0.2(P[1]-S));
draw(S--A);
draw(A--P[0]); draw(B--Q);

draw(rightanglemark(S,Q,B));
draw(rightanglemark(S,P[0],A));

dot("$A$", A, dir(0));
dot("$B$", B, dir(300));
dot("$S$", S, dir(180));
dot("$P$", P[0], dir(120));
dot("$Q$", Q, dir(Q));
