function F=dbwavf(wname)
// daubechies scaling filter
// Calling Sequence
// F=dbwavf(wname)
// Parameters
// wname : wavelet name, 'db1' to 'db20'
// F : scaling filter
// Description
// dbwavf is an utility function for obtaining scaling filter of daubechies wavelet.
// Examples
// F=dbwavf('db2');
//  
//  
// 
// Authors
// Roger Liu and Isaac Zhi
// See Also
// biorwavf
// rbiorwavf
// coifwavf
// legdwavf
// symwavf