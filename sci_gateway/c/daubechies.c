/*
 * -------------------------------------------------------------------------
 * daubechies.c -- Daubechies wavelets coefficents.
 * SWT - Scilab wavelet toolbox
 * Copyright (C) 2005-2006  Roger Liu
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

#include "swt_common.h"
#include "dwt.h"

/*********************************************
 * Local Variable (Filter Coefficent)
 ********************************************/

static const double db1[2] = { 0.70710678, 0.70710678 };

static const double db2[4] = { 0.48296291314453414337487159986,
  0.83651630373780790557529378092,
  0.22414386804201338102597276224,
  -0.12940952255126038117444941881
};


static const double db3[6] = { 0.33267055295008261599851158914,
  0.80689150931109257649449360409,
  0.45987750211849157009515194215,
  -0.13501102001025458869638990670,
  -0.08544127388202666169281916918,
  0.03522629188570953660274066472
};


static const double db4[8] = { 0.23037781330889650086329118304,
  0.71484657055291564708992195527,
  0.63088076792985890788171633830,
  -0.02798376941685985421141374718,
  -0.18703481171909308407957067279,
  0.03084138183556076362721936253,
  0.03288301166688519973540751355,
  -0.01059740178506903210488320852
};


static const double db5[10] = { 0.16010239797419291448072374802,
  0.60382926979718967054011930653,
  0.72430852843777292772807124410,
  0.13842814590132073150539714634,
  -0.24229488706638203186257137947,
  -0.03224486958463837464847975506,
  0.07757149384004571352313048939,
  -0.00624149021279827427419051911,
  -0.01258075199908199946850973993,
  0.00333572528547377127799818342
};


static const double db6[12] = { 0.11154074335010946362132391724,
  0.49462389039845308567720417688,
  0.75113390802109535067893449844,
  0.31525035170919762908598965481,
  -0.22626469396543982007631450066,
  -0.12976686756726193556228960588,
  0.09750160558732304910234355254,
  0.02752286553030572862554083950,
  -0.03158203931748602956507908070,
  0.00055384220116149613925191840,
  0.00477725751094551063963597525,
  -0.00107730108530847956485262161
};


static const double db7[14] = { 0.07785205408500917901996352196,
  0.39653931948191730653900039094,
  0.72913209084623511991694307034,
  0.46978228740519312247159116097,
  -0.14390600392856497540506836221,
  -0.22403618499387498263814042023,
  0.07130921926683026475087657050,
  0.08061260915108307191292248036,
  -0.03802993693501441357959206160,
  -0.01657454163066688065410767489,
  0.01255099855609984061298988603,
  0.00042957797292136652113212912,
  -0.00180164070404749091526826291,
  0.00035371379997452024844629584
};

static const double db8[16] = { 0.05441584224310400995500940520,
  0.31287159091429997065916237551,
  0.67563073629728980680780076705,
  0.58535468365420671277126552005,
  -0.01582910525634930566738054788,
  -0.28401554296154692651620313237,
  0.00047248457391328277036059001,
  0.12874742662047845885702928751,
  -0.01736930100180754616961614887,
  -0.04408825393079475150676372324,
  0.01398102791739828164872293057,
  0.00874609404740577671638274325,
  -0.00487035299345157431042218156,
  -0.00039174037337694704629808036,
  0.00067544940645056936636954757,
  -0.00011747678412476953373062823
};


static const double db9[18] = { 0.03807794736387834658869765888,
  0.24383467461259035373204158165,
  0.60482312369011111190307686743,
  0.65728807805130053807821263905,
  0.13319738582500757619095494590,
  -0.29327378327917490880640319524,
  -0.09684078322297646051350813354,
  0.14854074933810638013507271751,
  0.03072568147933337921231740072,
  -0.06763282906132997367564227483,
  0.00025094711483145195758718975,
  0.02236166212367909720537378270,
  -0.00472320475775139727792570785,
  -0.00428150368246342983449679500,
  0.00184764688305622647661912949,
  0.00023038576352319596720521639,
  -0.00025196318894271013697498868,
  0.00003934732031627159948068988
};


static const double db10[20] = { 0.02667005790055555358661744877,
  0.18817680007769148902089297368,
  0.52720118893172558648174482796,
  0.68845903945360356574187178255,
  0.28117234366057746074872699845,
  -0.24984642432731537941610189792,
  -0.19594627437737704350429925432,
  0.12736934033579326008267723320,
  0.09305736460357235116035228984,
  -0.07139414716639708714533609308,
  -0.02945753682187581285828323760,
  0.03321267405934100173976365318,
  0.00360655356695616965542329142,
  -0.01073317548333057504431811411,
  0.00139535174705290116578931845,
  0.00199240529518505611715874224,
  -0.00068585669495971162656137098,
  -0.00011646685512928545095148097,
  0.00009358867032006959133405013,
  -0.00001326420289452124481243668
};

static const double db11[22] = {
  0.018694297761470441, 0.14406702115061959,   
  0.44989976435603013,   0.68568677491617847,   
  0.41196436894789695,  -0.16227524502747828,  
  -0.27423084681792875,   0.066043588196690886,  
  0.14981201246638268,  -0.04647995511667613,  
  -0.066438785695020222,  0.031335090219045313,  
  0.020840904360180039,  -0.015364820906201324,  
  -0.0033408588730145018,  0.0049284176560587777,  
  -0.00030859285881515924,  -0.00089302325066623663,  
  0.00024915252355281426,  5.4439074699366381e-005,
  -3.4634984186983789e-005,  4.4942742772363519e-006
};

static const double db12[24] = {
  0.013112257957229239, 0.10956627282118277, 
  0.37735513521420411, 0.65719872257929113, 
  0.51588647842780067, -0.044763885653777619, 
  -0.31617845375277914, -0.023779257256064865, 
  0.18247860592758275, 0.0053595696743599965, 
  -0.09643212009649671, 0.010849130255828966, 
  0.041546277495087637, -0.01221864906974642, 
  -0.012840825198299882, 0.0067114990087955486, 
  0.0022486072409952287, -0.0021795036186277044, 
  6.5451282125215034e-006, 0.00038865306282092672, 
  -8.8504109208203182e-005, -2.4241545757030318e-005, 
  1.2776952219379579e-005, -1.5290717580684923e-006
};

static const double db13[26] = {
  0.0092021335389622788, 0.082861243872901946, 
  0.31199632216043488, 0.61105585115878114, 
  0.58888957043121193, 0.086985726179645007, 
  -0.31497290771138414, -0.12457673075080665, 
  0.17947607942935084, 0.072948933656788742, 
  -0.10580761818792761, -0.026488406475345658, 
  0.056139477100276156, 0.0023799722540522269, 
  -0.023831420710327809, 0.0039239414487955773, 
  0.0072555894016171187, -0.002761911234656831, 
  -0.0013156739118922766, 0.00093232613086724904, 
  4.9251525126285676e-005, -0.00016512898855650571, 
  3.0678537579324358e-005, 1.0441930571407941e-005, 
  -4.7004164793608082e-006, 5.2200350984547998e-007
};

static const double db14[28] = {
  0.0064611534600864905, 0.062364758849384874, 
  0.25485026779256437, 0.55430561794077093, 
  0.63118784910471981, 0.21867068775886594, 
  -0.27168855227867705, -0.21803352999321651, 
  0.13839521386479153, 0.13998901658445695, 
  -0.086748411568110598, -0.071548955503983505, 
  0.05523712625925082, 0.026981408307947971, 
  -0.030185351540353976, -0.0056150495303375755, 
  0.012789493266340071, -0.00074621898926387534, 
  -0.003849638868019787, 0.001061691085606874, 
  0.00070802115423540481, -0.00038683194731287514, 
  -4.1777245770370672e-005, 6.875504252695734e-005, 
  -1.0337209184568496e-005, -4.3897049017804176e-006, 
  1.7249946753674012e-006, -1.7871399683109222e-007
};

static const double db15[30] = {
 0.0045385373615773762, 0.046743394892750617, 
 0.20602386398692688, 0.49263177170797529, 
 0.64581314035721027, 0.33900253545462167, 
 -0.19320413960907623, -0.28888259656686216, 
 0.065282952848765688, 0.19014671400708816, 
 -0.039666176555733602, -0.11112093603713753, 
 0.033877143923563204, 0.054780550584559995, 
 -0.025767007328366939, -0.020810050169636805, 
 0.015083918027862582, 0.0051010003604228726, 
 -0.0064877345603061454, -0.00024175649075894543, 
 0.0019433239803823459, -0.00037348235413726472, 
 -0.00035956524436229364, 0.00015589648992055726, 
 2.579269915531323e-005, -2.8133296266037558e-005, 
 3.3629871817363823e-006, 1.8112704079399406e-006, 
 -6.3168823258794506e-007, 6.1333599133037138e-008
};

static const double db16[32] = {
 0.0031892209253436892, 0.034907714323629047, 
 0.1650642834886438, 0.43031272284545874, 
 0.63735633208298326, 0.44029025688580486, 
 -0.089751089402363524, -0.32706331052747578, 
 -0.02791820813292813, 0.21119069394696974, 
 0.027340263752899923, -0.13238830556335474, 
 -0.0062397227521562536, 0.075924236044457791, 
 -0.0075889743686425939, -0.036888397691556774, 
 0.010297659641009963, 0.013993768859843242, 
 -0.0069900145633907508, -0.0036442796214883506, 
 0.00312802338120381, 0.00040789698084934395, 
 -0.00094102174935854332, 0.00011424152003843815, 
 0.00017478724522506327, -6.103596621404321e-005, 
 -1.394566898819319e-005, 1.133660866126152e-005, 
 -1.0435713423102517e-006, -7.3636567854418147e-007, 
 2.3087840868545578e-007, -2.1093396300980412e-008
};

static const double db17[34] = {
 0.0022418070010387899, 0.025985393703623173, 
 0.13121490330791097, 0.37035072415288578, 
 0.61099661568502728, 0.5183157640572823, 
 0.027314970403312946, -0.32832074836418546, 
 -0.12659975221599248, 0.19731058956508457, 
 0.10113548917744287, -0.12681569177849797, 
 -0.057091419631858077, 0.081105986654080822, 
 0.022312336178011833, -0.046922438389378908, 
 -0.0032709555358783646, 0.022733676583919053, 
 -0.0030429899813869555, -0.0086029215203478147, 
 0.0029679966915180638, 0.0023012052421511474, 
 -0.001436845304805, -0.00032813251941022427, 
 0.00043946542776894542, -2.5610109566546042e-005, 
 -8.2048032024582121e-005, 2.3186813798761639e-005, 
 6.9906009850812941e-006, -4.5059424772259631e-006, 
 3.0165496099963414e-007, 2.9577009333187617e-007, 
 -8.4239484460081536e-008, 7.2674929685663697e-009
};

static const double db18[36] = {
 0.0015763102184365595, 0.019288531724094969, 
 0.10358846582214751, 0.31467894133619284, 
 0.57182680776508177, 0.57180165488712198, 
 0.14722311196952223, -0.29365404073579809, 
 -0.21648093400458224, 0.14953397556500755, 
 0.16708131276294505, -0.092331884150304119, 
 -0.10675224665906288, 0.064887216212358198, 
 0.057051247739058272, -0.04452614190225633, 
 -0.023733210395336858, 0.026670705926689853, 
 0.0062621679544386608, -0.013051480946517112, 
 0.00011863003387493042, 0.0049433436054565939, 
 -0.0011187326669886426, -0.0013405962983313922, 
 0.00062846568296447147, 0.0002135815619103188, 
 -0.00019864855231101547, -1.5359171230213409e-007, 
 3.7412378807308472e-005, -8.5206025374234635e-006, 
 -3.3326344788769603e-006, 1.7687129836228861e-006, 
 -7.691632689865049e-008, -1.1760987670250871e-007, 
 3.0688358630370302e-008, -2.5079344549419292e-009
};

static const double db19[38] = {
 0.0011086697631864314, 0.01428109845082521, 
 0.08127811326580564, 0.26438843174202237, 
 0.52443637746688621, 0.60170454913009164, 
 0.26089495265212009, -0.22809139421653665, 
 -0.28583863175723145, 0.074652269708066474, 
 0.21234974330662043, -0.033518541903202262, 
 -0.14278569504021468, 0.027584350624887129, 
 0.086906755555450702, -0.026501236250778635, 
 -0.045674226277784918, 0.021623767409452484, 
 0.019375549889114482, -0.013988388678695632, 
 -0.0058669222811121953, 0.0070407473670804953, 
 0.00076895435922424884, -0.0026875518007344408, 
 0.00034180865344939543, 0.0007358025205041731, 
 -0.00026067613568119951, -0.00012460079173506306, 
 8.7112704672504432e-005, 5.1059504870906939e-006, 
 -1.6640176297224622e-005, 3.0109643163099385e-006, 
 1.5319314766978769e-006, -6.8627556577981102e-007, 
 1.4470882988040879e-008, 4.6369377758023682e-008, 
 -1.1164020670405678e-008, 8.6668488390344833e-010
};

static const double db20[40] = {
 0.00077995361366591117, 0.010549394624937735, 
 0.063423780459005291, 0.21994211355113222, 
 0.47269618531033147, 0.61049323893785579, 
 0.36150229873889705, -0.13921208801128787, 
 -0.32678680043353758, -0.016727088308801888, 
 0.22829105082013823, 0.039850246458519104, 
 -0.15545875070604531, -0.024716827337521424, 
 0.10229171917513397, 0.0056322468576854544, 
 -0.061722899624668884, 0.0058746818113949465, 
 0.032294299530119162, -0.0087893249245557647, 
 -0.013810526137727442, 0.0067216273018096935, 
 0.0044205423867663502, -0.003581494259744107, 
 -0.00083156217287724745, 0.0013925596193045254, 
 -5.3497598443404532e-005, -0.0003851047486990061, 
 0.00010153288973669777, 6.7742808283730477e-005, 
 -3.7105861833906152e-005, -4.3761438621821972e-006, 
 7.2412482876637907e-006, -1.0119940100181473e-006, 
 -6.847079596993149e-007, 2.633924226266962e-007, 
 2.0143220235374613e-010, -1.8148432482976221e-008, 
 4.05612705554717e-009, -2.9988364896157532e-010
};

/*********************************************
 * Global Function
 ********************************************/

void
daubechies_analysis_initialize (int member, swt_wavelet *pWaveStruct)
{
  double *pFilterCoef;

  pWaveStruct->length = 2 * member;

  switch (member)
    {
    case 1:
      pFilterCoef = db1;
      break;
    case 2:
      pFilterCoef = db2;
      break;
    case 3:
      pFilterCoef = db3;
      break;
    case 4:
      pFilterCoef = db4;
      break;
    case 5:
      pFilterCoef = db5;
      break;
    case 6:
      pFilterCoef = db6;
      break;
    case 7:
      pFilterCoef = db7;
      break;
    case 8:
      pFilterCoef = db8;
      break;
    case 9:
      pFilterCoef = db9;
      break;
    case 10:
      pFilterCoef = db10;
      break;
    case 11:
      pFilterCoef = db11;
      break;
    case 12:
      pFilterCoef = db12;
      break;
    case 13:
      pFilterCoef = db13;
      break;
    case 14:
      pFilterCoef = db14;
      break;
    case 15:
      pFilterCoef = db15;
      break;
    case 16:
      pFilterCoef = db16;
      break;
    case 17:
      pFilterCoef = db17;
      break;
    case 18:
      pFilterCoef = db18;
      break;
    case 19:
      pFilterCoef = db19;
      break;
    case 20:
      pFilterCoef = db20;
      break;
    default:
      printf("db%d is not available!\n",member);
      exit(0);
    }

  wrev(pFilterCoef, pWaveStruct->length, 
       LowDecomFilCoef, pWaveStruct->length);
  qmf_wrev(pFilterCoef, pWaveStruct->length, 
	   HiDecomFilCoef, pWaveStruct->length);
  pWaveStruct->pLowPass = LowDecomFilCoef;
  pWaveStruct->pHiPass = HiDecomFilCoef;
  
  return;
}


void
daubechies_synthesis_initialize (int member, swt_wavelet *pWaveStruct)
{
  double *pFilterCoef;

  pWaveStruct->length = 2 * member;

  switch (member)
    {
    case 1:
      pFilterCoef = db1;
      break;
    case 2:
      pFilterCoef = db2;
      break;
    case 3:
      pFilterCoef = db3;
      break;
    case 4:
      pFilterCoef = db4;
      break;
    case 5:
      pFilterCoef = db5;
      break;
    case 6:
      pFilterCoef = db6;
      break;
    case 7:
      pFilterCoef = db7;
      break;
    case 8:
      pFilterCoef = db8;
      break;
    case 9:
      pFilterCoef = db9;
      break;
    case 10:
      pFilterCoef = db10;
      break;
    case 11:
      pFilterCoef = db11;
      break;
    case 12:
      pFilterCoef = db12;
      break;
    case 13:
      pFilterCoef = db13;
      break;
    case 14:
      pFilterCoef = db14;
      break;
    case 15:
      pFilterCoef = db15;
      break;
    case 16:
      pFilterCoef = db16;
      break;
    case 17:
      pFilterCoef = db17;
      break;
    case 18:
      pFilterCoef = db18;
      break;
    case 19:
      pFilterCoef = db19;
      break;
    case 20:
      pFilterCoef = db20;
      break;
    default:
      printf("db%d is not available!\n",member);
      exit(0);
    }

  verbatim_copy(pFilterCoef, pWaveStruct->length,
		LowReconFilCoef, pWaveStruct->length);
  qmf_even(pFilterCoef, pWaveStruct->length,
      HiReconFilCoef, pWaveStruct->length);
  pWaveStruct->pLowPass = LowReconFilCoef;
  pWaveStruct->pHiPass = HiReconFilCoef;
  
  return;
}
