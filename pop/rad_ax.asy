import olympiad;
import geometry;
settings.outformat = "pdf";
defaultpen(fontsize(11pt));
size(14cm);

picture pic1;
pair O1a = (0,0);
pair O2a = (5.5,0);
path C1a = unitcircle;
path C2a = shift(O2a)*scale(3)*unitcircle;
path C3a = shift((2,-1))*scale(2)*unitcircle;

pair[] A1 = intersectionpoints(C1a,C3a);
pair[] B1 = intersectionpoints(C2a,C3a);

if (A1.length>=2 && B1.length>=2) {
    pair Ta = extension(A1[0],A1[1], B1[0], B1[1]);
    pair La = foot(Ta, O1a, O2a);

    draw(pic1, C1a); draw(pic1, C2a);
    draw(pic1, O1a--O2a, linewidth(0.7));
    draw(pic1, La - (La - Ta) -- La + 1.15*(La - Ta), linewidth(0.8));
    draw(pic1, rightanglemark(Ta, La, O2a));

    dot(pic1, O1a); label(pic1, "$O_1$", O1a, W);
    dot(pic1, O2a); label(pic1, "$O_2$", O2a, dir(O2a));
    label(pic1, "$\omega_1$", (0,-1.1), S);
    label(pic1, "$\omega_2$", O2a + (0,-3.1), S);
} else {
    draw(pic1, C1a); draw(pic1, C2a);
    draw(pic1, O1a--O2a, linewidth(0.7));
    label(pic1, "(no two intersection points for one pair)", (2.75, -2));
}

picture pic2;
pair O1b = (0,0);
pair O2b = (3.5,0);
path C1b = unitcircle;
path C2b = shift(O2b)*scale(3)*unitcircle;
path C3b = shift((2,-1))*scale(3)*unitcircle;

pair[] A2 = intersectionpoints(C1b,C3b);
pair[] B2 = intersectionpoints(C2b,C3b);

if (A2.length>=2 && B2.length>=2) {
    pair Tb = extension(A2[0],A2[1], B2[0], B2[1]);
    pair Lb = foot(Tb, O1b, O2b);

    draw(pic2, C1b); draw(pic2, C2b);
    draw(pic2, O1b--O2b, linewidth(0.7));
    draw(pic2, Lb - 1.1*(Lb - Tb) -- Lb + 1.2*(Lb - Tb), linewidth(0.8));
    draw(pic2, rightanglemark(Tb, Lb, O2b));

    dot(pic2, O1b); label(pic2, "$O_1$", O1b, W);
    dot(pic2, O2b); label(pic2, "$O_2$", O2b, dir(O2b));
    label(pic2, "$\omega_1$", (0,-1), S);
    label(pic2, "$\omega_2$", O2b + (0,-3), S);
} else {
    draw(pic2, C1b); draw(pic2, C2b);
    draw(pic2, O1b--O2b, linewidth(0.7));
    label(pic2, "(no two intersection points for one pair)", (1.75, -2));
}

// place side by side
add(pic1);
add(shift((11,0)) * pic2);
