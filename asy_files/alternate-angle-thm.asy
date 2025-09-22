import olympiad;
settings.outformat="pdf";
size(8cm);

pair O = (0,0);
pair P = (0,-1);
pair R = (0,1);
pair Q = dir(45);
pair A = dir(330);
pair T = (1.1,-1);

draw(circle(O,1));
draw((-1.5,-1)--(1.5,-1));
draw(P--R--Q--A--P);
draw(R--A); draw(Q--P);
markscalefactor=0.015;
draw(rightanglemark(R,P,2*P-T));
draw(anglemark(T,P,A));
draw(anglemark(P,Q,A));
draw(anglemark(P,R,A));

dot("$O$", O, dir(180));
dot("$P$", P, dir(270));
dot("$R$", R, dir(R));
dot("$Q$", Q, dir(Q));
dot("$A$", A, dir(A));
dot("$T$", T, dir(T));
