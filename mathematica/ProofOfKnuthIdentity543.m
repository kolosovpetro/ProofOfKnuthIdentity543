(* ::Package:: *)

BeginPackage["ProofOfKnuthIdentity543`"]

(*BEGIN: Definitions *)
KnuthBinomialIdentity::usage=""
F::usage=""
ForwardDifferenceOfF::usage=""

(*END: Definitions *)
(* =========================================================================DOCS END=================================================================== *)

(*BEGIN: Define 0^x = 1 for all x *)
Begin["`Private`"]
Unprotect[Power];
Power[0|0., 0|0.] = 1;
Protect[Power];
(*END: Define 0^x = 1 for all x *)

(* =========================================================================FUNCTIONS BEGIN=========================================================== *)

(*BEGIN: Definitions *)

KnuthBinomialIdentity[s_, n_, r_] := Sum[Binomial[n,k] * Binomial[r-s*k, n] (-1)^k, {k, 0, n}];
F[x_, s_, r_, n_] := Binomial[r-s*x, n];
ForwardDifferenceOfF[x_, s_, r_, n_, t_] := Sum[Binomial[t,k] * (-1)^(n-k) * F[x+k, s, r, n], {k, 0, t}];

(*END: Definitions *)

End[ ]
EndPackage[ ]



