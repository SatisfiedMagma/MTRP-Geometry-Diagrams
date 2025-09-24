import olympiad;
import geometry;
settings.outformat="pdf";
size(8cm);

real t = 2;
pair F1 = (-sqrt(20),0);
pair F2 = (sqrt(20),0);
pair P = (t, 4/6 * (sqrt(36-t^2)));
path E = ellipse((0,0), 6, 4);
pair w = (6, 2.887);
pair X = P + (P-w)*0.6;

draw(E, linewidth(0.8));
draw(F1--P--F2);
draw(w--(P + (P-w)*1.3));
draw(F2--X--F1, dashed);

markscalefactor = 0.08;
draw(anglemark(F2, P, w));
draw(anglemark(X,P,F1));

dot("$F_1$", F1, dir(270));
dot("$F_2$", F2, dir(270));
dot("$P$", P, dir(P));
dot("$X$", X, dir(X));
label("$\ell$", w-(0.4,0), dir(90));
