import olympiad;
settings.outformat="pdf";
size(8cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
pair I = incenter(A,B,C);
pair L = extension(A,I,(0,0),(B+C)/2);
pair I_a = 2*L-I;

draw(A--B--C--A);
draw(circumcircle(A,B,C));
draw(circumcircle(B,I,C));
draw(A--I_a,dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$I$", I, dir(140)*1.2);
dot("$L$", L, dir(230));
dot("$I_A$", I_a, dir(I_a));
