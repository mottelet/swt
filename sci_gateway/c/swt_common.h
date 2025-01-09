/*
* -------------------------------------------------------------------------
* swt_common.h -- Declarations for wavelet functions.
* SWT - Scilab wavelet toolbox
* Copyright (C) 2005-2007  Roger Liu
* Copyright (C) 20010-2012  Holger Nahrstaedt
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
* -------------------------------------------------------------------------
*/

#ifndef __SWT_H__
#define __SWT_H__ 1

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <math.h>
#include <string.h>
#include "api_scilab.h"
#include <sciprint.h>
#include <machine.h>
#include "Scierror.h"
#include "swtlib.h"
#include "swt_gwsupport.h"

/*********************************************
* Global Variables CWT
********************************************/
//
extern cwt_identity ci[];
extern cwt_family cif[];
extern int cwtFamilyNum;
extern int cwtIdentityNum;


/*********************************************
* Function Prototype
********************************************/
//swt_int
int int_swt(char *fname, void* pvApiCtx);
int  int_iswt(char *fname, void* pvApiCtx);
int  int_swt2(char *fname, void* pvApiCtx);
int  int_iswt2(char *fname, void* pvApiCtx);
//cowt_int
int int_FSfarras(char *fname, void* pvApiCtx);
int int_dualfilt1(char *fname, void* pvApiCtx);
int int_dualtree(char *fname, void* pvApiCtx);
int int_idualtree(char *fname, void* pvApiCtx);
int int_dualtree2D(char *fname, void* pvApiCtx);
int int_idualtree2D(char *fname, void* pvApiCtx);
int int_cplxdual2D(char *fname, void* pvApiCtx);
int int_icplxdual2D(char *fname, void* pvApiCtx);
//dwt_int
int int_orthfilt (char *fname, void* pvApiCtx);
int int_biorfilt (char *fname, void* pvApiCtx);
int int_dbwavf (char *fname, void* pvApiCtx);
int int_coifwavf (char *fname, void* pvApiCtx);
int int_symwavf (char *fname, void* pvApiCtx);
int int_legdwavf (char *fname, void* pvApiCtx);
int int_biorwavf (char *fname, void* pvApiCtx);
int int_rbiorwavf (char *fname, void* pvApiCtx);
int int_wfilters (char *fname, void* pvApiCtx);
int int_wmaxlev (char *fname, void* pvApiCtx);
int int_dwtmode (char *fname, void* pvApiCtx);
//dwt1d_int
int int_dwt(char *fname, void* pvApiCtx);
int int_idwt (char *fname, void* pvApiCtx);
int int_wavedec (char *fname, void* pvApiCtx);
int int_waverec (char *fname, void* pvApiCtx);
int int_wrcoef (char *fname, void* pvApiCtx);
int int_appcoef (char *fname, void* pvApiCtx);
int int_detcoef (char *fname, void* pvApiCtx);
int int_wenergy (char *fname, void* pvApiCtx);
int int_upcoef (char *fname, void* pvApiCtx);
int int_upwlev (char *fname, void* pvApiCtx);
//dwt2d_int
int int_dwt2 (char *fname, void* pvApiCtx);
int int_idwt2 (char *fname, void* pvApiCtx);
int int_wavedec2 (char *fname, void* pvApiCtx);
int int_waverec2 (char *fname, void* pvApiCtx);
int int_wenergy2 (char *fname, void* pvApiCtx);
int int_detcoef2 (char *fname, void* pvApiCtx);
int int_appcoef2 (char *fname, void* pvApiCtx);
int int_wrcoef2 (char *fname, void* pvApiCtx);
int int_upwlev2 (char *fname, void* pvApiCtx);
int int_upcoef2 (char *fname, void* pvApiCtx);
//dwt3d_int
int int_dwt3 (char *fname, void* pvApiCtx);
int int_idwt3 (char *fname, void* pvApiCtx);
// utility_int
int int_conv (char *fname, void* pvApiCtx);
int int_iconv (char *fname, void* pvApiCtx);
int int_wrev (char *fname, void* pvApiCtx);
int int_qmf (char *fname, void* pvApiCtx);
int int_dyaddown (char *fname, void* pvApiCtx);
int int_dyadup (char *fname, void* pvApiCtx);
int int_wkeep (char *fname, void* pvApiCtx);
int int_wextend (char *fname, void* pvApiCtx);
int int_wcodemat (char *fname, void* pvApiCtx);
int int_mat3Dtran (char *fname, void* pvApiCtx);
int int_wrev3 (char *fname, void* pvApiCtx);
int int_wrev2(char *fname, void* pvApiCtx);
int int_wnorm (char *fname, void* pvApiCtx);
int int_waveletfamilies (char *fname, void* pvApiCtx);
#else
//swt_int
int int_swt(char *fname);
int  int_iswt(char *fname);
int  int_swt2(char *fname);
int  int_iswt2(char *fname);
//cowt_int
int int_FSfarras(char *fname);
int int_dualfilt1(char *fname);
int int_dualtree(char *fname);
int int_idualtree(char *fname);
int int_dualtree2D(char *fname);
int int_idualtree2D(char *fname);
int int_cplxdual2D(char *fname);
int int_icplxdual2D(char *fname);
//dwt_int
int int_orthfilt (char *fname);
int int_biorfilt (char *fname);
int int_dbwavf (char *fname);
int int_coifwavf (char *fname);
int int_symwavf (char *fname);
int int_legdwavf (char *fname);
int int_biorwavf (char *fname);
int int_rbiorwavf (char *fname);
int int_wfilters (char *fname);
int int_wmaxlev (char *fname);
int int_dwtmode (char *fname);
//dwt1d_int
int int_dwt(char *fname);
int int_idwt (char *fname);
int int_wavedec (char *fname);
int int_waverec (char *fname);
int int_wrcoef (char *fname);
int int_appcoef (char *fname);
int int_detcoef (char *fname);
int int_wenergy (char *fname);
int int_upcoef (char *fname);
int int_upwlev (char *fname);
//dwt2d_int
int int_dwt2 (char *fname);
int int_idwt2 (char *fname);
int int_wavedec2 (char *fname);
int int_waverec2 (char *fname);
int int_wenergy2 (char *fname);
int int_detcoef2 (char *fname);
int int_appcoef2 (char *fname);
int int_wrcoef2 (char *fname);
int int_upwlev2 (char *fname);
int int_upcoef2 (char *fname);
//dwt3d_int
int int_dwt3 (char *fname);
int int_idwt3 (char *fname);
// utility_int
int int_conv (char *fname);
int int_iconv (char *fname);
int int_wrev (char *fname);
int int_qmf (char *fname);
int int_dyaddown (char *fname);
int int_dyadup (char *fname);
int int_wkeep (char *fname);
int int_wextend (char *fname);
int int_wcodemat (char *fname);
int int_mat3Dtran (char *fname);
int int_wrev3 (char *fname);
int int_wrev2(char *fname);
int int_wnorm (char *fname);
int int_waveletfamilies (char *fname);

#endif //__SWT_H__
