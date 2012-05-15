// Copyright (C) 2010 - H. Nahrstaedt
//
// dwt1d  Test 

loadmatfile("-mat",get_swt_path()+"tests/unit_tests/Data.mat");

// idwt
// haar
[cA,cD]=dwt(x1,'haar');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('haar');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'haar');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'haar');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('haar');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'haar');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'haar');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('haar');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'haar');
assert_checkalmostequal ( r , x0 , %eps );


// db1
[cA,cD]=dwt(x1,'db1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db1');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db1');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db1');
assert_checkalmostequal ( r , x0 , %eps );



// db2
[cA,cD]=dwt(x1,'db2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db2');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db2');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db2');
assert_checkalmostequal ( r , x0 , %eps );


// db3
[cA,cD]=dwt(x1,'db3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db3');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db3');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db3');
assert_checkalmostequal ( r , x0 , %eps );


// db4
[cA,cD]=dwt(x1,'db4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db4');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db4');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db4');
assert_checkalmostequal ( r , x0 , %eps );


// db5
[cA,cD]=dwt(x1,'db5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db5');
assert_checkalmostequal ( r , x0 , %eps );


// db6
[cA,cD]=dwt(x1,'db6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db6');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db6');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db6');
assert_checkalmostequal ( r , x0 , %eps );


// db7
[cA,cD]=dwt(x1,'db7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db7');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db7');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db7');
assert_checkalmostequal ( r , x0 , %eps );



// db8
[cA,cD]=dwt(x1,'db8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db8');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db8');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db8');
assert_checkalmostequal ( r , x0 , %eps );


// db9
[cA,cD]=dwt(x1,'db9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db9');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db9');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db9');
assert_checkalmostequal ( r , x0 , %eps );


// db10

[cA,cD]=dwt(x1,'db10');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db10');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db10');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'db10');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db10');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db10');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'db10');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('db10');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'db10');
assert_checkalmostequal ( r , x0 , %eps );


// coif1
[cA,cD]=dwt(x1,'coif1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif1');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'coif1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif1');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'coif1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif1');
assert_checkalmostequal ( r , x0 , %eps );


// coif2
[cA,cD]=dwt(x1,'coif2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif2');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'coif2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif2');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'coif2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif2');
assert_checkalmostequal ( r , x0 , %eps );


// coif3
[cA,cD]=dwt(x1,'coif3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif3');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'coif3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif3');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'coif3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif3');
assert_checkalmostequal ( r , x0 , %eps );

// coif4
[cA,cD]=dwt(x1,'coif4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif4');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'coif4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif4');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'coif4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif4');
assert_checkalmostequal ( r , x0 , %eps );



// coif5
[cA,cD]=dwt(x1,'coif5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'coif5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'coif5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('coif5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'coif5');
assert_checkalmostequal ( r , x0 , %eps );



// sym4
[cA,cD]=dwt(x1,'sym4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym4');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'sym4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym4');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'sym4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym4');
assert_checkalmostequal ( r , x0 , %eps );


// sym5
[cA,cD]=dwt(x1,'sym5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'sym5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'sym5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym5');
assert_checkalmostequal ( r , x0 , %eps );


// sym6
[cA,cD]=dwt(x1,'sym6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym6');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'sym6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym6');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'sym6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym6');
assert_checkalmostequal ( r , x0 , %eps );



// sym7
[cA,cD]=dwt(x1,'sym7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym7');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'sym7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym7');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'sym7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym7');
assert_checkalmostequal ( r , x0 , %eps );


// sym8
[cA,cD]=dwt(x1,'sym8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym8');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'sym8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym8');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'sym8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym8');
assert_checkalmostequal ( r , x0 , %eps );


// sym9
[cA,cD]=dwt(x1,'sym9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym9');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'sym9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym9');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'sym9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym9');
assert_checkalmostequal ( r , x0 , %eps );


// sym10
[cA,cD]=dwt(x1,'sym10');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym10');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym10');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'sym10');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym10');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym10');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'sym10');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym10');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'sym10');
assert_checkalmostequal ( r , x0 , %eps );


// bior1.1
[cA,cD]=dwt(x1,'bior1.1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.1');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior1.1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.1');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior1.1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.1');
assert_checkalmostequal ( r , x0 , %eps );


// boir1.3
[cA,cD]=dwt(x1,'bior1.3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.3');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior1.3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.3');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior1.3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.3');
assert_checkalmostequal ( r , x0 , %eps );


// bior1.5
[cA,cD]=dwt(x1,'bior1.5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior1.5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior1.5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior1.5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior1.5');
assert_checkalmostequal ( r , x0 , %eps );


// bior2.2
[cA,cD]=dwt(x1,'bior2.2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.2');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior2.2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.2');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior2.2');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.2');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.2');
assert_checkalmostequal ( r , x0 , %eps );


// bior2.4
[cA,cD]=dwt(x1,'bior2.4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.4');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior2.4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.4');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior2.4');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.4');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.4');
assert_checkalmostequal ( r , x0 , %eps );


// bior2.6
[cA,cD]=dwt(x1,'bior2.6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.6');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior2.6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.6');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior2.6');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.6');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.6');
assert_checkalmostequal ( r , x0 , %eps );

// bior2.8
[cA,cD]=dwt(x1,'bior2.8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.8');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior2.8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.8');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior2.8');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior2.8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior2.8');
assert_checkalmostequal ( r , x0 , %eps );


// bior3.1
[cA,cD]=dwt(x1,'bior3.1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.1');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior3.1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.1');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior3.1');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.1');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.1');
assert_checkalmostequal ( r , x0 , %eps );


// bior3.3
[cA,cD]=dwt(x1,'bior3.3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.3');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior3.3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.3');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior3.3');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.3');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.3');
assert_checkalmostequal ( r , x0 , %eps );


// bior3.5
[cA,cD]=dwt(x1,'bior3.5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior3.5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.5');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior3.5');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.5');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.5');
assert_checkalmostequal ( r , x0 , %eps );


// bior3.7
[cA,cD]=dwt(x1,'bior3.7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.7');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior3.7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.7');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior3.7');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.7');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.7');
assert_checkalmostequal ( r , x0 , %eps );


// bior3.9
[cA,cD]=dwt(x1,'bior3.9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.9');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'bior3.9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.9');
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'bior3.9');
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('bior3.9');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
r=idwt(cA,cD,'bior3.9');
assert_checkalmostequal ( r , x0 , %eps );


// // type 2
// [cA,cD]=dwt(x1,'bior3.9');
// Lo_R=rand(1,50,'normal');
// Hi_R=rand(1,50,'normal');
// a0=conv(dyadup(cA),Lo_R);
// d0=conv(dyadup(cD),Hi_R);
// x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
// r=idwt(cA,cD,Lo_R,Hi_R);
// assert_checkalmostequal ( r , x0 , %eps );
// [cA,cD]=dwt(x2,'bior3.9');
// Lo_R=rand(1,50,'normal');
// Hi_R=rand(1,50,'normal');
// a0=conv(dyadup(cA),Lo_R);
// d0=conv(dyadup(cD),Hi_R);
// x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
// r=idwt(cA,cD,Lo_R,Hi_R);
// assert_checkalmostequal ( r , x0 , %eps );
// [cA,cD]=dwt(s1,'bior3.9');
// Lo_R=rand(1,50,'normal');
// Hi_R=rand(1,50,'normal');
// a0=conv(dyadup(cA),Lo_R);
// d0=conv(dyadup(cD),Hi_R);
// x0=wkeep(a0+d0,2*length(cA)-length(Lo_R)+2);
// r=idwt(cA,cD,Lo_R,Hi_R);
// assert_checkalmostequal ( r , x0 , %eps );


// type 3
[cA,cD]=dwt(x1,'sym8');
r=idwt(cA,cD,'sym8',50);
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,50);
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(x2,'sym8');
r=idwt(cA,cD,'sym8',50);
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,50);
assert_checkalmostequal ( r , x0 , %eps );
[cA,cD]=dwt(s1,'sym8');
r=idwt(cA,cD,'sym8',50);
[Lo_D,Hi_D,Lo_R,Hi_R]=wfilters('sym8');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,50);
assert_checkalmostequal ( r , x0 , %eps );
Lo_R=rand(1,50,'normal');
Hi_R=rand(1,50,'normal');
a0=conv(dyadup(cA),Lo_R);
d0=conv(dyadup(cD),Hi_R);
x0=wkeep(a0+d0,50);
r=idwt(cA,cD,Lo_R,Hi_R,50);
assert_checkalmostequal ( r , x0 , %eps );



// type 4
[cA,cD]=dwt(x1,'db7');
a0=idwt(cA,cD,'db7','mode','symh');
a1=idwt(cA,cD,'db7','mode','symw');
a2=idwt(cA,cD,'db7','mode','asymh');
a3=idwt(cA,cD,'db7','mode','asymw');
a4=idwt(cA,cD,'db7','mode','sp0');
a5=idwt(cA,cD,'db7','mode','sp1');
a6=idwt(cA,cD,'db7','mode','zpd');
a7=idwt(cA,cD,'db7','mode','ppd');
a8=idwt(cA,cD,'db7','mode','per');
[Lo_R,Hi_R]=wfilters('db7','r');
aa0=conv(dyadup(cA),Lo_R);
dd0=conv(dyadup(cD),Hi_R);
x0=wkeep(aa0+dd0,2*length(cA)-length(Lo_R)+2);
xx1=wkeep(aa0+dd0,2*length(cA));
assert_checkalmostequal ( a0 , x0 , %eps );
assert_checkalmostequal ( a1 , x0 , %eps );
assert_checkalmostequal ( a3 , x0 , %eps );
assert_checkalmostequal ( a4 , x0 , %eps );
assert_checkalmostequal ( a5 , x0 , %eps );
assert_checkalmostequal ( a6 , x0 , %eps );
assert_checkalmostequal ( a7 , x0 , %eps );
assert_checkalmostequal ( a8 , xx1 , %eps );



// type 5
[cA,cD]=dwt(x1,'db7');
a0=idwt(cA,cD,'db7',50,'mode','symh');
a1=idwt(cA,cD,'db7',50,'mode','symw');
a2=idwt(cA,cD,'db7',50,'mode','asymh');
a3=idwt(cA,cD,'db7',50,'mode','asymw');
a4=idwt(cA,cD,'db7',50,'mode','sp0');
a5=idwt(cA,cD,'db7',50,'mode','sp1');
a6=idwt(cA,cD,'db7',50,'mode','zpd');
a7=idwt(cA,cD,'db7',50,'mode','ppd');
a8=idwt(cA,cD,'db7',50,'mode','per');
[Lo_R,Hi_R]=wfilters('db7','r');
aa0=conv(dyadup(cA),Lo_R);
dd0=conv(dyadup(cD),Hi_R);
x0=wkeep(aa0+dd0,50);
assert_checkalmostequal ( a0 , x0 , %eps );
assert_checkalmostequal ( a1 , x0 , %eps );
assert_checkalmostequal ( a3 , x0 , %eps );
assert_checkalmostequal ( a4 , x0 , %eps );
assert_checkalmostequal ( a5 , x0 , %eps );
assert_checkalmostequal ( a6 , x0 , %eps );
assert_checkalmostequal ( a7 , x0 , %eps );
assert_checkalmostequal ( a8 , x0 , %eps );


// type 6
// [cA,cD]=dwt(x1,'db7');
// Lo_R=rand(1,50,'normal');
// Hi_R=rand(1,50,'normal');
// a0=idwt(cA,cD,Lo_R,Hi_R,50,'mode','symh');
// a1=idwt(cA,cD,Lo_R,Hi_R,50,'mode','symw');
// a2=idwt(cA,cD,Lo_R,Hi_R,50,'mode','asymh');
// a3=idwt(cA,cD,Lo_R,Hi_R,50,'mode','asymw');
// a4=idwt(cA,cD,Lo_R,Hi_R,50,'mode','sp0');
// a5=idwt(cA,cD,Lo_R,Hi_R,50,'mode','sp1');
// a6=idwt(cA,cD,Lo_R,Hi_R,50,'mode','zpd');
// a7=idwt(cA,cD,Lo_R,Hi_R,50,'mode','ppd');
// a8=idwt(cA,cD,Lo_R,Hi_R,50,'mode','per');
// aa0=conv(dyadup(cA),Lo_R);
// dd0=conv(dyadup(cD),Hi_R);
// x0=wkeep(aa0+dd0,50);
// assert_checkalmostequal ( a0 , x0 , %eps );
// assert_checkalmostequal ( a1 , x0 , %eps );
// assert_checkalmostequal ( a3 , x0 , %eps );
// assert_checkalmostequal ( a4 , x0 , %eps );
// assert_checkalmostequal ( a5 , x0 , %eps );
// assert_checkalmostequal ( a6 , x0 , %eps );
// assert_checkalmostequal ( a7 , x0 , %eps );
// assert_checkalmostequal ( a8 , x0 , %eps );


// column vector
[cA,cD]=dwt(x1','sym9');
[cA1,cD1]=dwt(x1,'sym9');
a0=idwt(cA,cD,'sym9');
a1=idwt(cA',cD,'sym9');
a2=idwt(cA,cD','sym9');
a3=idwt(cA',cD','sym9');

assert_checkalmostequal ( cA , cA1 , %eps );
assert_checkalmostequal ( cD , cD1 , %eps );
assert_checkalmostequal ( a1 , a0 , %eps );
assert_checkalmostequal ( a2 , a0 , %eps );
assert_checkalmostequal ( a3 , a0 , %eps );

// void coef
[cA,cD]=dwt(x1,'sym9');
a0=idwt(cA,[],'sym9');
d0=idwt([],cD,'sym9');
[Lo_R,Hi_R]=wfilters('sym9','r');
aa0=wkeep(conv(dyadup(cA),Lo_R),2*length(cA)-length(Lo_R)+2);
dd0=wkeep(conv(dyadup(cD),Hi_R),2*length(cA)-length(Lo_R)+2);

assert_checkalmostequal ( a0 , aa0 , %eps );
assert_checkalmostequal ( d0 , dd0 , %eps );