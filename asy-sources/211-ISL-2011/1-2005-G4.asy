pair A = dir(120);
pair B = dir(210);
pair C = dir(330);
pair G = (A+B+C)/3;
pair D = foot(A,B,C);
circle Om = circumcircle(A,B,C);
pair X = intersectionpoints(Om, line(segment(D, G)))[0];
pair B_0 = (A+C)/2;
pair C_0 = (A+B)/2;

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$G$", G, dir(G));
dot("$X$", X, dir(X));
dot("$B_0$", B_0, dir(B_0));
dot("$C_0$", C_0, dir(C_0));

draw(A--B--C--cycle);
draw(Om);
draw(circumcircle(B_0, C_0, X));

/*
  Source: Shortlist 2011 G4
  Points: A B C D G X B_0 C_0
  Item: X D G
  Item: B G B_0
  Item: C G C_0
  Text: $G$ is the centroid of $ABC$.
  Text: $D$ is the foot of the altitude from $A$ to $BC$.
  Text: $B_0$ and $C_0$ are midpoints of $AC$ and $AB$ respectively.
  Text: $(B_0 C_0 X)$ is tangent to $(ABC)$.
*/
