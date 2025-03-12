(* Created with the Wolfram Language : www.wolfram.com *)
{(4*Pi*\[Epsilon]*Y[\[Theta], \[Phi]]*
   (r*B[r]*H1[r]*(p[r] + \[Rho][r])*Derivative[1][A][r] + 
    A[r]*(r*H1[r]*(p[r] + \[Rho][r])*Derivative[1][B][r] + 
      2*B[r]*(r*(p[r] + \[Rho][r])*Derivative[1][H1][r] + 
        H1[r]*(2*p[r] + 2*\[Rho][r] + r*(Derivative[1][p][r] + 
            Derivative[1][\[Rho]][r]))))))/(r*A[r]), 
 (4*Pi*(p[r] + \[Rho][r])*Derivative[1][A][r])/A[r] + 
  8*Pi*Derivative[1][p][r] + (4*Pi*\[Epsilon]*Y[\[Theta], \[Phi]]*
    ((1 + dpd\[Rho])*\[Delta]p[r]*Derivative[1][A][r] + 
     dpd\[Rho]*A[r]*(-((p[r] + \[Rho][r])*Derivative[1][H0][r]) + 
       2*Derivative[1][\[Delta]p][r])))/(dpd\[Rho]*A[r]), 
 -4*Pi*\[Epsilon]*(-2*\[Delta]p[r] + H0[r]*(p[r] + \[Rho][r]))*
  Derivative[1, 0][Y][\[Theta], \[Phi]], 
 -4*Pi*\[Epsilon]*(-2*\[Delta]p[r] + H0[r]*(p[r] + \[Rho][r]))*
  Derivative[0, 1][Y][\[Theta], \[Phi]]}
