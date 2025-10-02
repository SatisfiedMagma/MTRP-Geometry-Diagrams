import olympiad;
import geometry;
settings.outformat="pdf";
size(14cm); // bigger canvas for both diagrams
defaultpen(fontsize(11pt));

picture pic1, pic2;

// -------- Case 1 --------
pair C1 = dir(30);
pair B1 = dir(330);
pair D1 = dir(210);
pair A1 = dir(110);
pair P1 = extension(A1,B1,C1,D1);

draw(pic1,unitcircle);
draw(pic1,A1--B1--C1--D1--A1);

markscalefactor=0.02;
draw(pic1,anglemark(D1,A1,B1));
draw(pic1,anglemark(D1,C1,B1));

dot(pic1,"$A$", A1, dir(A1));
dot(pic1,"$B$", B1, dir(B1));
dot(pic1,"$C$", C1, dir(C1));
dot(pic1,"$D$", D1, dir(D1));
dot(pic1,"$P$", P1, dir(70)*1.2);

label(pic1,"\textbf{Case 1.}", (0,-1.1), dir(270));

// -------- Case 2 --------
pair B2 = dir(20);
pair C2 = dir(330);
pair D2 = dir(210);
pair A2 = dir(110);
pair P2 = extension(A2,B2,C2,D2);

draw(pic2,unitcircle);
draw(pic2,P2--A2--D2--P2);
draw(pic2,B2--C2);

markscalefactor=0.02;
draw(pic2,anglemark(D2,A2,P2));
draw(pic2,anglemark(P2,C2,B2));

dot(pic2,"$A$", A2, dir(A2));
dot(pic2,"$B$", B2, dir(B2));
dot(pic2,"$C$", C2, dir(300));
dot(pic2,"$D$", D2, dir(D2));
dot(pic2,"$P$", P2, dir(70)*1.2);

label(pic2,"\textbf{Case 2.}", (D2+P2)/2-(0,0.6), dir(270));

// -------- Combine --------
add(pic1);
add(shift(3.5*right)*pic2);
