import olympiad;
import markers;
settings.outformat="pdf";
size(8cm);

real t = 5;
real s = -3;
pair F1 = (-sqrt(20),0);
pair F2 = (sqrt(20),0);

pair X = (t, (4/6) * sqrt(36 - t^2));
pair Y = (s, (4/6) * sqrt(36 - s^2));

real a = 6, b = 4;
real slopeX = (-b^2 * X.x) / (a^2 * X.y);
real slopeY = (-b^2 * Y.x) / (a^2 * Y.y);

real px = (slopeX * X.x - slopeY * Y.x - X.y + Y.y) / (slopeX - slopeY);
real py = slopeX * (px - X.x) + X.y;
pair P = (px, py);

pair F1_ = 2*foot(F1,P,Y)-F1;
pair F2_ = 2*foot(F2,P,X)-F2;

path ellipsePath = ellipse((0,0), 6, 4);
draw(ellipsePath, linewidth(0.8));

draw(F1_--F2, dashed);
draw(F1--F2_, dashed);
draw(F1--Y, dashed); draw(F2--X, dashed);
draw(F2_--P--F2);
draw(F1_--P--F1);

draw(P--F2_, StickIntervalMarker(1,1));
draw(P--F2, StickIntervalMarker(1,1));

draw(P--F1, StickIntervalMarker(1,2));
draw(P--F1_, StickIntervalMarker(1,2));

markscalefactor=0.1;
draw(anglemark(X,P,F2_));
draw(anglemark(Y,P,F1));

markscalefactor=0.105;
draw(anglemark(F1_,P,Y));
draw(anglemark(F2,P,X));

dot("$F_1$", F1, dir(270));
dot("$F_2$", F2, dir(270));
dot("$X$", X, dir(80));
dot("$Y$", Y, dir(80));
dot("$P$", P, dir(135));

dot("$F_1'$", F1_, dir(F1_));
dot("$F_2'$", F2_, dir(F2_));
draw(P -- X + 2.5*(1,slopeX));
draw(Y - 3*(1,slopeY) -- P);
