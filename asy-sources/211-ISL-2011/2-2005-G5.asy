pair A = dir(135);
pair B = dir(210);
pair C = dir(330);
pair I = incenter(triangle(A,B,C));
circle om = circumcircle(A,B,C);
pair D = intersectionpoints(om, line(segment(A,I)))[0];
pair E = intersectionpoints(om, line(segment(B,I)))[1];

pair F = extension(D,E,A,C);
pair G = extension(D,E,B,C);

pair P = extension(F,F+D-A,G,G+E-B);
pair K = intersectionpoint(tangent(om,A),tangent(om,B));
pair S = extension(A,E,B,D);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$I$", I, dir(-10));
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$F$", F, dir(-B));
dot("$G$", G, dir(-A));
dot("$P$", P, dir(P));
dot("$K$", K, dir(K));
dot("$S$", S, dir(90));

draw(A--B--C--cycle);
draw(om);
draw(A--D); draw(B--E);
draw(D--E);
draw(F--P--G);
draw(A--K--B);
draw(E--S--D);

/*
  Source: Shortlist 2011 G5
  Points: A B C D E F G I P K S
  Item: S K I P
  Item: A I F E
  Item: B I G D
  Text: $I$ is the incenter of $ABC$.
  Text: $FP$ and $GP$ are parallel to $AD$ and $BE$ respectively.
  Text: $KA$ and $KB$ are tangent to the circumcircle of $ABC$.
*/
