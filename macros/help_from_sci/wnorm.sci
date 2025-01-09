function M=wnorm(X,[MIN],[MAX])
// Matrix Normalization
// Calling Sequence
// M=wnorm(X,[MIN],[MAX])
// Parameters
// X : input double matrix or vector
// MIN : minimum
// MAX : maximum
// M : normalized matrix with value ranging from MIN to MAX.
// Description
// wnorm is an utility to normalize a matrix for displaying
// Examples
// x = rand(100,100);
// m = wnorm(x);
// gcf().color_map = parula(512);
// grayplot(1:100,1:100,m);
// colorbar(0,1);
//  
//  
// 
// Authors
// Roger Liu and Isaac Zhi
// Copyright (C) 2010-2015 - Holger Nahrstaedt

