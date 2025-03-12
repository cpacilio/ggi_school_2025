(* ::Package:: *)

BeginPackage["stellar`"];


(* ::Subsubsection:: *)
(*Usage*)


tov::usage =
 	"tov[eos,p0,poly,K,\[Gamma],profile] solves the TOV equations for central pressure p0.";

interpeos::usage = 
	"Interpolation of energy and density profiles.";




Begin["`Private`"];


(* ::Subsection:: *)
(*Logarithmic interpolation of energy and pressure profiles*)


interpeos[eos_]:=Block[{mB=938.27*10^6,\[Rho]fact=1.322*10^(-12),\[Epsilon]fact=7.42427*10^(-19),
	pfact = 8.2611*10^(-40),\[Epsilon],\[Rho],x},


\[Rho] = Interpolation[Thread[{Log[eos[[All,4]]pfact],eos[[All,2]] mB \[Rho]fact}]];
\[Epsilon] = Interpolation[Thread[{Log[eos[[All,4]]pfact],eos[[All,3]]\[Epsilon]fact}]];

Return[{\[Rho],\[Epsilon]}]

]


(* ::Subsection:: *)
(*TOV solver*)


tov[eos_,p0_,poly_,K_,\[Gamma]_]:=Block[{msun=1.4768,\[Rho],\[Epsilon],r,m,\[Nu],p,rI,mI,\[Nu]I,sol,M,R,x1,x2,
		rules,H,\[Beta],a0,HI,\[Beta]I,A,B,grr,f,\[ScriptCapitalC],w,k2,\[Lambda],n},

rules = Join[{Method->{"DoubleStep",Method->{"ExplicitRungeKutta",
	"DifferenceOrder"->8}},PrecisionGoal->8,AccuracyGoal->8}];

(* --- Interpolate energy-density profiles for the EOS --- *)

Which[poly == "F",
 
	{\[Rho],\[Epsilon]} = interpeos[eos],
	
poly == "T",

	\[Rho][p_] = (Exp[p]/K)^(1/\[Gamma]);
	\[Epsilon][p_] = \[Rho][p] + 0 Exp[p]/(\[Gamma]-1)
	
];

(* --- Initial Conditions --- *)

{x1,x2} = {Log[p0],Log[p0 10^-12]};

rI = Sqrt[(1.5 10^(-9) p0/\[Pi])/((\[Epsilon][x1]+p0)(\[Epsilon][x1]+3p0))];
mI = 4/3 \[Pi] \[Epsilon][x1] rI^3;

\[Nu]I = 0;
a0 = 0.1;
HI = a0*rI^2;
\[Beta]I = 2*a0 rI;


(* --- Solve TOV to find \[Nu]0 --- *)

sol = NDSolve[
	{r'[p] == -r[p]*(r[p]-2m[p])/(\[Epsilon][p]+Exp[p])/(m[p]+4\[Pi] r[p]^3*Exp[p])Exp[p],
	m'[p] == 4\[Pi] r[p]^2 \[Epsilon][p] r'[p],
	\[Nu]'[p] == -Exp[p]/(\[Epsilon][p]+Exp[p]),
	r[x1] == rI, m[x1] == mI, \[Nu][x1] == \[Nu]I},
	{r,m,\[Nu]},{p,x1,x2},rules];

{M,R} = {m[x2],r[x2]}/.sol[[1]];

\[Nu]I = 0.5 (Log[1-2M/R]-2(\[Nu][x2]/.sol[[1]]));

(* --- Functions for the Love number integration --- *)

grr[p_] = 1/(1-2m[p]/r[p]);

f[p_]= \[Epsilon]'[p]/Exp[p];

A[p_] = 2grr[p](-2\[Pi](5\[Epsilon][p]+9Exp[p]+(\[Epsilon][p]+Exp[p])*f[p])+3/r[p]^2+2grr[p](m[p]/r[p]^2
			+4\[Pi] r[p]Exp[p])^2);
B[p_] = 2/r[p]grr[p]*(-1+m[p]/r[p]+2\[Pi] r[p]^2 (\[Epsilon][p]-Exp[p]));

(* --- Solve TOV for the complete configuration --- *)

sol = NDSolve[
	{r'[p] == -r[p]*(r[p]-2 m[p])/(\[Epsilon][p]+Exp[p])/(m[p]+4\[Pi] r[p]^3*Exp[p])Exp[p],
	m'[p] == 4\[Pi] r[p]^2 \[Epsilon][p] r'[p],
	H'[p] == \[Beta][p]*r'[p],
	\[Beta]'[p] == (H[p]*A[p]+\[Beta][p]*B[p])r'[p],
	r[x1] == rI, m[x1] == mI,H[x1] == HI, \[Beta][x1] == \[Beta]I},
	{r,m,H,\[Beta]},{p,x1,x2},rules];

\[ScriptCapitalC] = M/R ;

w = R (\[Beta][x2]/.sol[[1]])/(H[x2]/.sol[[1]]);

k2 = 8/5\[ScriptCapitalC]^5*(1-2*\[ScriptCapitalC])^2*(2+2\[ScriptCapitalC]*(w-1)-w)/(2\[ScriptCapitalC]*(6-3w + 
		3\[ScriptCapitalC]*(5w-8))+4\[ScriptCapitalC]^3*(13-11w+\[ScriptCapitalC]*(3w-2)+2\[ScriptCapitalC]^2 * 
		(1+w))+3(1-2\[ScriptCapitalC])^2*(2-w+2\[ScriptCapitalC]*(w-1))*Log[1-2\[ScriptCapitalC]]);   

\[Lambda]   = 2/3k2 R^5;
		
(* --- Print results --- *)

Print[TableForm[{{"",M/msun,R,\[ScriptCapitalC],k2,\[Lambda] ""}},
		TableAlignments->Center,TableHeadings->{None,
		{"","M[\!\(\*SubscriptBox[\(M\), \(\[CircleDot]\)]\)]","R[km]","\[ScriptCapitalC]","\!\(\*SubscriptBox[\(k\), \(2\)]\)","\[Lambda][\!\(\*SuperscriptBox[\(km\), \(5\)]\)]"}}]];

Return[{M/msun,R,\[ScriptCapitalC],k2,\[Lambda]}]
]


(* ::Subsection::Closed:: *)
(*End*)


End[];

EndPackage[];

