// Copyright (C) 2010 - H. Nahrstaedt
//
// shanwavf test



function [psi,X] = ref_cmorwavf(LB,UB,N,Fb,Fc);
X = linspace(LB,UB,N);  

psi = ((%pi*Fb)^(-0.5))*exp(2*%i*%pi*Fc*X).*exp(-(X.*X)/Fb)

endfunction


LB=-20;
UB=20;
N=1000;
Fb=1;
Fc=1.5;

[psi,x] = ref_cmorwavf(LB,UB,N,Fb,Fc);
[PSI,X]=cmorwavf(LB,UB,N,Fc,Fb);

assert_checkalmostequal ( real(PSI) , real(psi) , %eps, 1e-10 );
assert_checkalmostequal ( imag(PSI) , imag(psi) , %eps, 1e-10 );
assert_checkalmostequal ( X , x , %eps, %eps );

LB=-20;
UB=20;
N=1000;
Fb=1.5;
Fc=1;

[psi,x] = ref_cmorwavf(LB,UB,N,Fb,Fc);
[PSI,X]=cmorwavf(LB,UB,N,Fc,Fb);

assert_checkalmostequal ( real(PSI) , real(psi) , %eps, 1e-10 );
assert_checkalmostequal ( imag(PSI) , imag(psi) , %eps, 1e-10 );
assert_checkalmostequal ( X , x , %eps, %eps );