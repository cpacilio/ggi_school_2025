(* Created with the Wolfram Language : www.wolfram.com *)
{{(-1 + B[r] + r*Derivative[1][B][r])/r^2 + 
   (\[Epsilon]*(-2*B[r]*H2[r]*Y[\[Theta], \[Phi]] + 
      2*K[r]*Y[\[Theta], \[Phi]] - 2*r*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][B][r] - 2*r*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][H2][r] + 6*r*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][K][r] + r^2*Y[\[Theta], \[Phi]]*Derivative[1][B][r]*
       Derivative[1][K][r] + 2*r^2*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[2][K][r] + Csc[\[Theta]]^2*H2[r]*Derivative[0, 2][Y][
        \[Theta], \[Phi]] + Csc[\[Theta]]^2*K[r]*Derivative[0, 2][Y][
        \[Theta], \[Phi]] + Cot[\[Theta]]*H2[r]*Derivative[1, 0][Y][\[Theta], 
        \[Phi]] + Cot[\[Theta]]*K[r]*Derivative[1, 0][Y][\[Theta], \[Phi]] + 
      H2[r]*Derivative[2, 0][Y][\[Theta], \[Phi]] + 
      K[r]*Derivative[2, 0][Y][\[Theta], \[Phi]]))/(2*r^2), 
  (\[Epsilon]*(2*r*B[r]*H1[r]*Y[\[Theta], \[Phi]]*Derivative[1][A][r] - 
     2*r*A[r]*H1[r]*Y[\[Theta], \[Phi]]*Derivative[1][B][r] + 
     A[r]*Csc[\[Theta]]^2*H1[r]*Derivative[0, 2][Y][\[Theta], \[Phi]] + 
     A[r]*Cot[\[Theta]]*H1[r]*Derivative[1, 0][Y][\[Theta], \[Phi]] + 
     A[r]*H1[r]*Derivative[2, 0][Y][\[Theta], \[Phi]]))/(2*r^2*A[r]^2), 
  -1/4*(\[Epsilon]*(A[r]*H1[r]*Derivative[1][B][r] + 
      B[r]*(H1[r]*Derivative[1][A][r] + 2*A[r]*Derivative[1][H1][r]))*
     Derivative[1, 0][Y][\[Theta], \[Phi]])/A[r]^2, 
  -1/4*(\[Epsilon]*(A[r]*H1[r]*Derivative[1][B][r] + 
      B[r]*(H1[r]*Derivative[1][A][r] + 2*A[r]*Derivative[1][H1][r]))*
     Derivative[0, 1][Y][\[Theta], \[Phi]])/A[r]^2}, 
 {-1/2*(\[Epsilon]*B[r]*(Csc[\[Theta]]^2*H1[r]*Derivative[0, 2][Y][\[Theta], 
        \[Phi]] + Cot[\[Theta]]*H1[r]*Derivative[1, 0][Y][\[Theta], \[Phi]] + 
      H1[r]*Derivative[2, 0][Y][\[Theta], \[Phi]]))/r^2, 
  (-A[r] + A[r]*B[r] + r*B[r]*Derivative[1][A][r])/(r^2*A[r]) + 
   (\[Epsilon]*(-2*A[r]*B[r]*H2[r]*Y[\[Theta], \[Phi]] + 
      2*A[r]*K[r]*Y[\[Theta], \[Phi]] - 2*r*B[r]*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r] - 2*r*A[r]*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][H0][r] + 2*r*A[r]*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][K][r] + r^2*B[r]*Y[\[Theta], \[Phi]]*Derivative[1][A][r]*
       Derivative[1][K][r] - A[r]*Csc[\[Theta]]^2*H0[r]*
       Derivative[0, 2][Y][\[Theta], \[Phi]] + A[r]*Csc[\[Theta]]^2*K[r]*
       Derivative[0, 2][Y][\[Theta], \[Phi]] - A[r]*Cot[\[Theta]]*H0[r]*
       Derivative[1, 0][Y][\[Theta], \[Phi]] + A[r]*Cot[\[Theta]]*K[r]*
       Derivative[1, 0][Y][\[Theta], \[Phi]] - 
      A[r]*H0[r]*Derivative[2, 0][Y][\[Theta], \[Phi]] + 
      A[r]*K[r]*Derivative[2, 0][Y][\[Theta], \[Phi]]))/(2*r^2*A[r]), 
  (\[Epsilon]*B[r]*(r*(H0[r] + H2[r])*Derivative[1][A][r] - 
     2*A[r]*(H0[r] - H2[r] - r*Derivative[1][H0][r] + r*Derivative[1][K][r]))*
    Derivative[1, 0][Y][\[Theta], \[Phi]])/(4*r*A[r]), 
  (\[Epsilon]*B[r]*(r*(H0[r] + H2[r])*Derivative[1][A][r] - 
     2*A[r]*(H0[r] - H2[r] - r*Derivative[1][H0][r] + r*Derivative[1][K][r]))*
    Derivative[0, 1][Y][\[Theta], \[Phi]])/(4*r*A[r])}, 
 {(\[Epsilon]*(A[r]*H1[r]*Derivative[1][B][r] + 
     B[r]*(H1[r]*Derivative[1][A][r] + 2*A[r]*Derivative[1][H1][r]))*
    Derivative[1, 0][Y][\[Theta], \[Phi]])/(4*r^2*A[r]), 
  (\[Epsilon]*(r*(H0[r] + H2[r])*Derivative[1][A][r] - 
     2*A[r]*(H0[r] - H2[r] - r*Derivative[1][H0][r] + r*Derivative[1][K][r]))*
    Derivative[1, 0][Y][\[Theta], \[Phi]])/(4*r^3*A[r]), 
  (2*A[r]*B[r]*Derivative[1][A][r] - r*B[r]*Derivative[1][A][r]^2 + 
     2*A[r]^2*Derivative[1][B][r] + r*A[r]*Derivative[1][A][r]*
      Derivative[1][B][r] + 2*r*A[r]*B[r]*Derivative[2][A][r])/(4*r*A[r]^2) + 
   (\[Epsilon]*(-2*r*A[r]*B[r]*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r] + r^2*B[r]*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r]^2 - 2*r*A[r]^2*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][B][r] - r^2*A[r]*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r]*Derivative[1][B][r] - 2*r*A[r]^2*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[1][H0][r] - 2*r^2*A[r]*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[1][A][r]*Derivative[1][H0][r] - 
      r^2*A[r]^2*Y[\[Theta], \[Phi]]*Derivative[1][B][r]*
       Derivative[1][H0][r] - 2*r*A[r]^2*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][H2][r] - r^2*A[r]*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r]*Derivative[1][H2][r] + 4*r*A[r]^2*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[1][K][r] + 
      r^2*A[r]*B[r]*Y[\[Theta], \[Phi]]*Derivative[1][A][r]*
       Derivative[1][K][r] + r^2*A[r]^2*Y[\[Theta], \[Phi]]*
       Derivative[1][B][r]*Derivative[1][K][r] - 2*r^2*A[r]*B[r]*H2[r]*
       Y[\[Theta], \[Phi]]*Derivative[2][A][r] - 2*r^2*A[r]^2*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[2][H0][r] + 2*r^2*A[r]^2*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[2][K][r] - 2*A[r]^2*Csc[\[Theta]]^2*
       H0[r]*Derivative[0, 2][Y][\[Theta], \[Phi]] + 2*A[r]^2*Csc[\[Theta]]^2*
       H2[r]*Derivative[0, 2][Y][\[Theta], \[Phi]] - 
      2*A[r]^2*Cot[\[Theta]]*H0[r]*Derivative[1, 0][Y][\[Theta], \[Phi]] + 
      2*A[r]^2*Cot[\[Theta]]*H2[r]*Derivative[1, 0][Y][\[Theta], \[Phi]]))/
    (4*r^2*A[r]^2), (\[Epsilon]*(-H0[r] + H2[r])*
    (Cot[\[Theta]]*Derivative[0, 1][Y][\[Theta], \[Phi]] - 
     Derivative[1, 1][Y][\[Theta], \[Phi]]))/(2*r^2)}, 
 {(\[Epsilon]*Csc[\[Theta]]^2*(A[r]*H1[r]*Derivative[1][B][r] + 
     B[r]*(H1[r]*Derivative[1][A][r] + 2*A[r]*Derivative[1][H1][r]))*
    Derivative[0, 1][Y][\[Theta], \[Phi]])/(4*r^2*A[r]), 
  (\[Epsilon]*Csc[\[Theta]]^2*(r*(H0[r] + H2[r])*Derivative[1][A][r] - 
     2*A[r]*(H0[r] - H2[r] - r*Derivative[1][H0][r] + r*Derivative[1][K][r]))*
    Derivative[0, 1][Y][\[Theta], \[Phi]])/(4*r^3*A[r]), 
  (\[Epsilon]*Csc[\[Theta]]^2*(-H0[r] + H2[r])*
    (Cot[\[Theta]]*Derivative[0, 1][Y][\[Theta], \[Phi]] - 
     Derivative[1, 1][Y][\[Theta], \[Phi]]))/(2*r^2), 
  (2*A[r]*B[r]*Derivative[1][A][r] - r*B[r]*Derivative[1][A][r]^2 + 
     2*A[r]^2*Derivative[1][B][r] + r*A[r]*Derivative[1][A][r]*
      Derivative[1][B][r] + 2*r*A[r]*B[r]*Derivative[2][A][r])/(4*r*A[r]^2) + 
   (\[Epsilon]*(-2*r*A[r]*B[r]*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r] + r^2*B[r]*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r]^2 - 2*r*A[r]^2*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][B][r] - r^2*A[r]*H2[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r]*Derivative[1][B][r] - 2*r*A[r]^2*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[1][H0][r] - 2*r^2*A[r]*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[1][A][r]*Derivative[1][H0][r] - 
      r^2*A[r]^2*Y[\[Theta], \[Phi]]*Derivative[1][B][r]*
       Derivative[1][H0][r] - 2*r*A[r]^2*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][H2][r] - r^2*A[r]*B[r]*Y[\[Theta], \[Phi]]*
       Derivative[1][A][r]*Derivative[1][H2][r] + 4*r*A[r]^2*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[1][K][r] + 
      r^2*A[r]*B[r]*Y[\[Theta], \[Phi]]*Derivative[1][A][r]*
       Derivative[1][K][r] + r^2*A[r]^2*Y[\[Theta], \[Phi]]*
       Derivative[1][B][r]*Derivative[1][K][r] - 2*r^2*A[r]*B[r]*H2[r]*
       Y[\[Theta], \[Phi]]*Derivative[2][A][r] - 2*r^2*A[r]^2*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[2][H0][r] + 2*r^2*A[r]^2*B[r]*
       Y[\[Theta], \[Phi]]*Derivative[2][K][r] - 2*A[r]^2*Cot[\[Theta]]*H0[r]*
       Derivative[1, 0][Y][\[Theta], \[Phi]] + A[r]^2*Csc[\[Theta]]^2*H0[r]*
       Sin[2*\[Theta]]*Derivative[1, 0][Y][\[Theta], \[Phi]] - 
      2*A[r]^2*H0[r]*Derivative[2, 0][Y][\[Theta], \[Phi]] + 
      2*A[r]^2*H2[r]*Derivative[2, 0][Y][\[Theta], \[Phi]]))/(4*r^2*A[r]^2)}}
