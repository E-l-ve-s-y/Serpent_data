
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1:  13]) = 'Serpent 2.2.1' ;
COMPILE_DATE              (idx, [1:  20]) = 'Oct 28 2025 11:28:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  53]) = 'A007_homo_U235_Th0.600_Pu0.000_U2330.000_U235E0.02000' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:   8]) = 'A007.sss' ;
WORKING_DIRECTORY         (idx, [1:  30]) = '/home/sy_lu/Modular/cases/A007' ;
HOSTNAME                  (idx, [1:   6]) = 'master' ;
CPU_TYPE                  (idx, [1:  41]) = 'Intel(R) Xeon(R) Gold 6240R CPU @ 2.40GHz' ;
CPU_MHZ                   (idx, 1)        = 83900417.0 ;
START_DATE                (idx, [1:  24]) = 'Tue May  5 16:35:33 2026' ;
COMPLETE_DATE             (idx, [1:  24]) = 'Tue May  5 17:09:04 2026' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1777970133370 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000 ;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ] ;
B1_IMPLICIT_LEAKAGE       (idx, 1)        = 0 ;
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;
SPECTRUM_COLLAPSE         (idx, 1)        = 1 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 80 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  80]) = [  1.23828E+00  9.94712E-01  9.95373E-01  9.95376E-01  1.00696E+00  9.96228E-01  9.95598E-01  9.74776E-01  9.78538E-01  9.99382E-01  1.00281E+00  9.91146E-01  9.90912E-01  9.99718E-01  9.88005E-01  1.00078E+00  9.91334E-01  9.92565E-01  9.77414E-01  9.87513E-01  1.00423E+00  9.96695E-01  9.93385E-01  9.87792E-01  9.98743E-01  9.91368E-01  9.92222E-01  1.00798E+00  1.01299E+00  1.00851E+00  1.00623E+00  9.96028E-01  9.98712E-01  9.88657E-01  9.99867E-01  1.00151E+00  9.99888E-01  9.89659E-01  1.00614E+00  1.01762E+00  1.01462E+00  9.74997E-01  9.89879E-01  9.79414E-01  9.90455E-01  9.68080E-01  1.01256E+00  1.01147E+00  9.98595E-01  9.94454E-01  1.00512E+00  9.88142E-01  9.96964E-01  1.00263E+00  1.00243E+00  9.96426E-01  1.00169E+00  1.00686E+00  1.00850E+00  9.87965E-01  9.88963E-01  1.00408E+00  9.94390E-01  9.99337E-01  1.00405E+00  9.93940E-01  1.00420E+00  9.98869E-01  9.99912E-01  1.00265E+00  9.84975E-01  9.93182E-01  9.78134E-01  1.00749E+00  1.00039E+00  9.91623E-01  1.00013E+00  1.03503E+00  1.00005E+00  9.91691E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1:  42]) = '/home/sy_lu/data/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  38]) = '/home/sy_lu/data/endfb7/sss_endfb7.dec' ;
SFY_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  38]) = '/home/sy_lu/data/endfb7/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:   2]) = [  9.00000E-01  9.00000E-01 ] ;
ST_FRAC                   (idx, [1:   4]) = [  2.43740E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75626E-01 2.8E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.29373E-01 1.1E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.29804E-01 1.1E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10611E+00 5.8E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CELL_SEARCH_FRAC          (idx, [1:  10]) = [  9.29108E-01 7.7E-06  7.08828E-02 0.00010  9.37108E-06 0.00271  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  4.22006E+01 7.1E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  4.22006E+01 7.1E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.56240E+01 8.8E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.80384E+00 9.5E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 100001496 ;
MEAN_POP_SIZE             (idx, [1:   2]) = [  2.00003E+05 0.00025 ] ;
MEAN_POP_WGT              (idx, [1:   2]) = [  2.00003E+05 0.00025 ] ;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.26475E+03 ;
RUNNING_TIME              (idx, 1)        =  3.35142E+01 ;
INIT_TIME                 (idx, [1:   2]) = [  8.19400E-01  8.19400E-01 ] ;
PROCESS_TIME              (idx, [1:   2]) = [  2.25167E-02  2.25167E-02 ] ;
TRANSPORT_CYCLE_TIME      (idx, [1:   3]) = [  3.26717E+01  3.26717E+01  0.00000E+00 ] ;
BURNUP_CYCLE_TIME         (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
BATEMAN_SOLUTION_TIME     (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
MPI_OVERHEAD_TIME         (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
ESTIMATED_RUNNING_TIME    (idx, [1:   2]) = [  3.35117E+01  0.00000E+00 ] ;
CPU_USAGE                 (idx, 1)        = 37.73767 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.88226E+01 0.00060 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.61515E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 257551.17 ;
ALLOC_MEMSIZE             (idx, 1)        = 13955.87 ;
MEMSIZE                   (idx, 1)        = 13374.75 ;
XS_MEMSIZE                (idx, 1)        = 7212.92 ;
MAT_MEMSIZE               (idx, 1)        = 4774.38 ;
RES_MEMSIZE               (idx, 1)        = 50.52 ;
IFC_MEMSIZE               (idx, 1)        = 0.00 ;
MISC_MEMSIZE              (idx, 1)        = 1336.92 ;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00 ;
UNUSED_MEMSIZE            (idx, 1)        = 581.12 ;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  5.00000E-05 ;
NEUTRON_ERG_NE            (idx, 1)        = 282063 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 229 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 1366 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 300 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 1066 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 8370 ;
TOT_TRANSMU_REA           (idx, 1)        = 2717 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:   9]) = [ 0 0 0 0 0 0 0 0 0 ] ;
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  9.61947E+06 ;
TOT_DECAY_HEAT            (idx, 1)        =  6.53914E-06 ;
TOT_SF_RATE               (idx, 1)        =  3.24961E+02 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  9.61947E+06 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  6.53914E-06 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  3.72829E+02 ;
INGESTION_TOXICITY        (idx, 1)        =  9.70351E-01 ;
ACTINIDE_INH_TOX          (idx, 1)        =  3.72829E+02 ;
ACTINIDE_ING_TOX          (idx, 1)        =  9.70351E-01 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, [1:   2]) = [  1.58176E+06  2.15280E-08 ] ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  9.60670E+06 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  3.83131E+06 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  2.47902E+10 0.00011  0.00000E+00 0.0E+00 ];

% Parameters for burnup calculation:

BURN_MATERIALS            (idx, 1)        = 264 ;
BURN_MODE                 (idx, 1)        = 2 ;
BURN_STEP                 (idx, 1)        = 0 ;
BURN_RANDOMIZE_DATA       (idx, [1:   3]) = [ 0 0 0 ] ;
BURNUP                    (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
BURN_DAYS                 (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
FIMA                      (idx, [1:   3]) = [  0.00000E+00  0.00000E+00  3.08846E+24 ] ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.70986E+00 0.00024 ];
TH232_FISS                (idx, [1:   4]) = [  2.02590E+13 0.00154  1.43755E-02 0.00153 ];
U235_FISS                 (idx, [1:   4]) = [  1.33346E+15 0.00018  9.46214E-01 4.4E-05 ];
U238_FISS                 (idx, [1:   4]) = [  5.55395E+13 0.00094  3.94105E-02 0.00092 ];
TH232_CAPT                (idx, [1:   4]) = [  1.82849E+15 0.00017  5.14120E-01 0.00012 ];
U235_CAPT                 (idx, [1:   4]) = [  2.57255E+14 0.00042  7.23331E-02 0.00041 ];
U238_CAPT                 (idx, [1:   4]) = [  8.91441E+14 0.00026  2.50648E-01 0.00021 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC      (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_FISS     (idx, [1:   2]) = [ 100001496 1.00000E+08 ] ;
BALA_SRC_NEUTRON_NXN      (idx, [1:   2]) = [ 0 1.56418E+05 ] ;
BALA_SRC_NEUTRON_VR       (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_TOT      (idx, [1:   2]) = [ 100001496 1.00156E+08 ] ;

BALA_LOSS_NEUTRON_CAPT    (idx, [1:   2]) = [ 71620616 7.17327E+07 ] ;
BALA_LOSS_NEUTRON_FISS    (idx, [1:   2]) = [ 28380880 2.84237E+07 ] ;
BALA_LOSS_NEUTRON_LEAK    (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_CUT     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_ERR     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_TOT     (idx, [1:   2]) = [ 100001496 1.00156E+08 ] ;

BALA_NEUTRON_DIFF         (idx, [1:   2]) = [ 0 -1.99378E-05 ] ;

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   6]) = [  4.56852E+04 0.0E+00  4.56852E+04 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_POWDENS               (idx, [1:   6]) = [  3.80000E-02 0.0E+00  3.80000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   6]) = [  3.45345E+15 2.0E-06  3.45345E+15 2.0E-06  0.00000E+00 0.0E+00 ];
TOT_FISSRATE              (idx, [1:   6]) = [  1.40894E+15 1.1E-07  1.40894E+15 1.1E-07  0.00000E+00 0.0E+00 ];
TOT_CAPTRATE              (idx, [1:   6]) = [  3.55647E+15 6.3E-05  2.98444E+15 7.3E-05  5.72032E+14 8.1E-05 ];
TOT_ABSRATE               (idx, [1:   6]) = [  4.96541E+15 4.5E-05  4.39338E+15 4.9E-05  5.72032E+14 8.1E-05 ];
TOT_SRCRATE               (idx, [1:   6]) = [  4.95805E+15 0.00011  4.95805E+15 0.00011  0.00000E+00 0.0E+00 ];
TOT_FLUX                  (idx, [1:   6]) = [  2.57200E+17 7.9E-05  7.74920E+16 8.5E-05  1.79708E+17 8.1E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  4.96541E+15 4.5E-05 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.09550E+17 6.3E-05 ];
INI_FMASS                 (idx, 1)        =  1.20224E+00 ;
TOT_FMASS                 (idx, 1)        =  1.20224E+00 ;
INI_BURN_FMASS            (idx, 1)        =  1.20224E+00 ;
TOT_BURN_FMASS            (idx, 1)        =  1.20224E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.01170E+00 0.00016 ];
SIX_FF_F                  (idx, [1:   2]) = [  8.54425E-01 5.2E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  7.08343E-01 6.4E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.13783E+00 7.2E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  6.96698E-01 0.00017 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  6.96698E-01 0.00017 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45110E+00 2.0E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02382E+02 1.1E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  6.96681E-01 0.00017  6.91939E-01 0.00017  4.75875E-03 0.00228 ];
IMP_KEFF                  (idx, [1:   2]) = [  6.96585E-01 4.6E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  6.96539E-01 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  6.96585E-01 4.6E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  6.96585E-01 4.6E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.83618E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.83622E+01 1.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.12164E-07 0.00083 ];
IMP_EALF                  (idx, [1:   2]) = [  2.12045E-07 0.00026 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.78897E-01 0.00086 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.78701E-01 0.00027 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  1.02364E-02 0.00130  3.10867E-04 0.00693  1.63421E-03 0.00309  1.62081E-03 0.00293  4.67776E-03 0.00181  1.48062E-03 0.00318  5.12080E-04 0.00500 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.85460E-01 0.00264  1.24863E-02 1.0E-05  3.17674E-02 4.8E-05  1.10363E-01 7.6E-05  3.19496E-01 4.0E-05  1.34153E+00 7.1E-05  8.44484E+00 0.00094 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.86707E-03 0.00186  2.09705E-04 0.01070  1.09795E-03 0.00470  1.09090E-03 0.00456  3.13504E-03 0.00274  9.87057E-04 0.00482  3.46414E-04 0.00796 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.87633E-01 0.00413  1.24861E-02 1.5E-05  3.17655E-02 7.2E-05  1.10373E-01 0.00011  3.19495E-01 5.9E-05  1.34156E+00 0.00011  8.44567E+00 0.00141 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  7.91403E-05 0.00032  7.91051E-05 0.00032  8.42258E-05 0.00303 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.51348E-05 0.00027  5.51102E-05 0.00028  5.86766E-05 0.00301 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83001E-03 0.00231  2.06690E-04 0.01331  1.09056E-03 0.00560  1.07938E-03 0.00577  3.12069E-03 0.00346  9.85740E-04 0.00573  3.46958E-04 0.00995 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.91674E-01 0.00519  1.24863E-02 2.1E-05  3.17667E-02 9.2E-05  1.10364E-01 0.00016  3.19474E-01 7.7E-05  1.34152E+00 0.00014  8.44598E+00 0.00187 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  7.91175E-05 0.00067  7.90769E-05 0.00068  8.49998E-05 0.00788 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.51190E-05 0.00066  5.50907E-05 0.00067  5.92183E-05 0.00788 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.77182E-03 0.00743  2.07714E-04 0.04642  1.07585E-03 0.01987  1.05248E-03 0.01964  3.13700E-03 0.01101  9.47765E-04 0.01954  3.51009E-04 0.03388 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.94531E-01 0.01806  1.24848E-02 7.4E-05  3.17878E-02 0.00030  1.10406E-01 0.00057  3.19569E-01 0.00026  1.34253E+00 0.00043  8.37560E+00 0.00608 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.77514E-03 0.00731  2.07735E-04 0.04602  1.07727E-03 0.01973  1.05644E-03 0.01941  3.13219E-03 0.01092  9.49105E-04 0.01939  3.52401E-04 0.03322 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.96378E-01 0.01792  1.24847E-02 7.4E-05  3.17868E-02 0.00029  1.10401E-01 0.00054  3.19583E-01 0.00025  1.34241E+00 0.00045  8.37914E+00 0.00606 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -8.56512E+01 0.00746 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  7.91748E-05 0.00022 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.51587E-05 0.00013 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.82260E-03 0.00142 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -8.61735E+01 0.00144 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  8.52822E-07 8.9E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.89539E-06 8.7E-05  2.89541E-06 8.7E-05  2.89394E-06 0.00101 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  5.92934E-05 0.00012  5.92939E-05 0.00012  5.92370E-05 0.00137 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.08590E-01 6.4E-05  7.10724E-01 6.6E-05  5.02725E-01 0.00197 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04365E+01 0.00292 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  4.22006E+01 7.1E-05  4.82496E+01 0.00013 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:   4]) = '1001' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.35644E+06 0.00082  5.48887E+06 0.00033  1.14828E+07 0.00024  1.27397E+07 0.00013  1.17984E+07 0.00016  1.26714E+07 0.00016  8.59755E+06 0.00012  7.58080E+06 0.00018  5.78713E+06 0.00018  4.73158E+06 0.00014  4.08843E+06 0.00019  3.68399E+06 0.00015  3.40263E+06 0.00020  3.23559E+06 0.00018  3.15110E+06 0.00018  2.72075E+06 0.00020  2.69018E+06 0.00020  2.65287E+06 0.00021  2.61917E+06 0.00021  5.09274E+06 0.00018  4.82770E+06 0.00018  3.51146E+06 0.00019  2.22123E+06 0.00021  2.73430E+06 0.00022  2.38506E+06 0.00023  2.31798E+06 0.00025  3.97572E+06 0.00014  8.96405E+05 0.00043  1.12241E+06 0.00027  1.01545E+06 0.00036  5.93170E+05 0.00042  1.02619E+06 0.00035  6.99332E+05 0.00052  6.02263E+05 0.00045  1.16448E+05 0.00084  1.15557E+05 0.00091  1.18341E+05 0.00083  1.21581E+05 0.00094  1.20643E+05 0.00074  1.18306E+05 0.00100  1.22258E+05 0.00103  1.14706E+05 0.00064  2.16641E+05 0.00065  3.45829E+05 0.00061  4.39914E+05 0.00053  1.15995E+06 0.00035  1.21808E+06 0.00029  1.30896E+06 0.00035  8.82860E+05 0.00035  6.71637E+05 0.00035  5.37930E+05 0.00043  6.37628E+05 0.00049  1.18612E+06 0.00027  1.68759E+06 0.00026  3.46718E+06 0.00018  5.84777E+06 0.00015  9.54251E+06 0.00015  6.58758E+06 0.00017  4.92944E+06 0.00017  3.66273E+06 0.00018  3.33926E+06 0.00016  3.37613E+06 0.00016  2.89061E+06 0.00019  1.97822E+06 0.00020  1.85950E+06 0.00016  1.66950E+06 0.00020  1.46409E+06 0.00023  1.13202E+06 0.00026  7.50489E+05 0.00032  2.62762E+05 0.00034 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  6.96539E-01 0.00012 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.81726E+17 0.00011  7.54746E+16 5.9E-05 ];
INF_FISS_FLX              (idx, [1:   4]) = [  5.57472E+16 0.00012  2.17449E+16 3.2E-05 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.62904E-01 2.6E-05  1.42110E+00 2.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.09984E-03 0.00011  3.00267E-02 4.4E-05 ];
INF_ABS                   (idx, [1:   4]) = [  7.99859E-03 0.00010  4.65306E-02 5.0E-05 ];
INF_FISS                  (idx, [1:   4]) = [  8.98753E-04 9.6E-05  1.65039E-02 6.0E-05 ];
INF_NSF                   (idx, [1:   4]) = [  2.30163E-03 0.00010  4.02150E-02 6.0E-05 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.56091E+00 1.4E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03237E+02 5.6E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.11787E-08 9.2E-05  2.75892E-06 2.1E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.54904E-01 2.7E-05  1.37456E+00 2.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.53715E-01 3.6E-05  3.40777E-01 5.9E-05 ];
INF_SCATT2                (idx, [1:   4]) = [  9.97337E-02 6.5E-05  7.95147E-02 0.00013 ];
INF_SCATT3                (idx, [1:   4]) = [  7.58240E-03 0.00054  2.38504E-02 0.00044 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.07798E-02 0.00041 -7.63424E-03 0.00134 ];
INF_SCATT5                (idx, [1:   4]) = [  6.09821E-05 0.07341  5.97302E-03 0.00153 ];
INF_SCATT6                (idx, [1:   4]) = [  5.18258E-03 0.00068 -1.46951E-02 0.00069 ];
INF_SCATT7                (idx, [1:   4]) = [  7.56059E-04 0.00423  6.33625E-04 0.01170 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.54947E-01 2.7E-05  1.37456E+00 2.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.53715E-01 3.6E-05  3.40777E-01 5.9E-05 ];
INF_SCATTP2               (idx, [1:   4]) = [  9.97338E-02 6.5E-05  7.95147E-02 0.00013 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.58233E-03 0.00054  2.38504E-02 0.00044 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.07798E-02 0.00041 -7.63424E-03 0.00134 ];
INF_SCATTP5               (idx, [1:   4]) = [  6.09563E-05 0.07358  5.97302E-03 0.00153 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.18258E-03 0.00069 -1.46951E-02 0.00069 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.56020E-04 0.00423  6.33625E-04 0.01170 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.24409E-01 6.9E-05  9.60596E-01 3.2E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.48538E+00 6.9E-05  3.47007E-01 3.2E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  7.95591E-03 0.00011  4.65306E-02 5.0E-05 ];
INF_REMXS                 (idx, [1:   4]) = [  2.76405E-02 3.8E-05  4.72898E-02 0.00012 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  6.41125E-02 2.4E-06  6.28187E-02 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  1.48033E-03 9.3E-05  2.56634E-03 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  1.34504E-11 0.00011  2.48982E-11 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  2.59725E-11 9.0E-05  4.44968E-11 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  4.91468E-11 8.2E-05  8.09942E-11 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  1.26665E-02 1.8E-05  1.08163E-02 2.7E-09 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  9.22389E-13 0.00011  1.70988E-12 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  1.00475E+00 0.00016  4.56561E+01 5.9E-05 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  1.43958E+02 0.00041  1.81390E+06 6.1E-05 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  6.36768E+01 0.00055  9.44719E+01 6.0E-05 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  9.29658E+01 0.00013  1.14273E+03 5.9E-05 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  1.45672E+02 0.00015  1.84296E+04 7.7E-05 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  5.06549E+01 0.00012  7.99916E+02 5.9E-05 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  1.11493E+02 0.00048  5.19556E+04 7.6E-05 ];
INF_I135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MACRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison universe-averaged densities:

I135_ADENS                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
XE135_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM147_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM148_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM148M_ADENS              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM149_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SM149_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  8.37254E-09 ;
PM148_LAMBDA              (idx, 1)        =  1.49451E-06 ;
PM148M_LAMBDA             (idx, 1)        =  1.94297E-07 ;
PM149_LAMBDA              (idx, 1)        =  3.62737E-06 ;
I135_LAMBDA               (idx, 1)        =  2.93061E-05 ;
XE135_LAMBDA              (idx, 1)        =  2.10657E-05 ;
XE135M_LAMBDA             (idx, 1)        =  7.55556E-04 ;
I135_BR                   (idx, 1)        =  9.01450E-01 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  5.35264E-01 2.6E-05  1.96405E-02 6.3E-05  7.57646E-04 0.00092  1.37381E+00 2.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.47920E-01 3.6E-05  5.79425E-03 0.00016  2.64997E-04 0.00186  3.40512E-01 5.8E-05 ];
INF_S2                    (idx, [1:   8]) = [  1.01425E-01 6.1E-05 -1.69137E-03 0.00047  1.60382E-04 0.00258  7.93544E-02 0.00013 ];
INF_S3                    (idx, [1:   8]) = [  9.65522E-03 0.00044 -2.07283E-03 0.00047  6.93856E-05 0.00411  2.37810E-02 0.00044 ];
INF_S4                    (idx, [1:   8]) = [ -1.00790E-02 0.00045 -7.00825E-04 0.00069  1.12602E-05 0.02834 -7.64550E-03 0.00134 ];
INF_S5                    (idx, [1:   8]) = [  4.57758E-05 0.09625  1.52063E-05 0.04386 -1.58013E-05 0.01895  5.98882E-03 0.00151 ];
INF_S6                    (idx, [1:   8]) = [  5.32899E-03 0.00068 -1.46415E-04 0.00399 -2.57170E-05 0.00980 -1.46694E-02 0.00068 ];
INF_S7                    (idx, [1:   8]) = [  9.36970E-04 0.00312 -1.80912E-04 0.00274 -2.65664E-05 0.00961  6.60192E-04 0.01128 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  5.35306E-01 2.6E-05  1.96405E-02 6.3E-05  7.57646E-04 0.00092  1.37381E+00 2.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.47921E-01 3.6E-05  5.79425E-03 0.00016  2.64997E-04 0.00186  3.40512E-01 5.8E-05 ];
INF_SP2                   (idx, [1:   8]) = [  1.01425E-01 6.1E-05 -1.69137E-03 0.00047  1.60382E-04 0.00258  7.93544E-02 0.00013 ];
INF_SP3                   (idx, [1:   8]) = [  9.65516E-03 0.00044 -2.07283E-03 0.00047  6.93856E-05 0.00411  2.37810E-02 0.00044 ];
INF_SP4                   (idx, [1:   8]) = [ -1.00790E-02 0.00045 -7.00825E-04 0.00069  1.12602E-05 0.02834 -7.64550E-03 0.00134 ];
INF_SP5                   (idx, [1:   8]) = [  4.57500E-05 0.09646  1.52063E-05 0.04386 -1.58013E-05 0.01895  5.98882E-03 0.00151 ];
INF_SP6                   (idx, [1:   8]) = [  5.32899E-03 0.00068 -1.46415E-04 0.00399 -2.57170E-05 0.00980 -1.46694E-02 0.00068 ];
INF_SP7                   (idx, [1:   8]) = [  9.36932E-04 0.00313 -1.80912E-04 0.00274 -2.65664E-05 0.00961  6.60192E-04 0.01128 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.38980E-01 0.00014  8.85081E-01 0.00037 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.39091E-01 0.00027  8.88958E-01 0.00053 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.39107E-01 0.00024  8.90009E-01 0.00069 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.38743E-01 0.00019  8.76420E-01 0.00055 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.39482E+00 0.00014  3.76615E-01 0.00037 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.39417E+00 0.00027  3.74973E-01 0.00053 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.39408E+00 0.00024  3.74532E-01 0.00069 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.39620E+00 0.00019  3.80338E-01 0.00055 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.86707E-03 0.00186  2.09705E-04 0.01070  1.09795E-03 0.00470  1.09090E-03 0.00456  3.13504E-03 0.00274  9.87057E-04 0.00482  3.46414E-04 0.00796 ];
LAMBDA                    (idx, [1:  14]) = [  7.87633E-01 0.00413  1.24861E-02 1.5E-05  3.17655E-02 7.2E-05  1.10373E-01 0.00011  3.19495E-01 5.9E-05  1.34156E+00 0.00011  8.44567E+00 0.00141 ];

% Pin-power distribution:

PPW_LATTICE               (idx, [1:   4]) = '1000' ;
PPW_LATTICE_TYPE          (idx, 1)        = 1 ;
PPW_PINS                  (idx, 1)        = 289 ;
PPW_POW                   (idx, [1: 1156]) = [  4.39398E-04 0.00175  3.16599E-03 0.00167  4.39855E-04 0.00135  3.14692E-03 0.00151  4.39394E-04 0.00111  3.17375E-03 0.00168  4.38767E-04 0.00186  3.19302E-03 0.00194  4.40293E-04 0.00169  3.23804E-03 0.00137  4.41629E-04 0.00146  3.26068E-03 0.00149  4.42359E-04 0.00186  3.26687E-03 0.00160  4.40303E-04 0.00173  3.27338E-03 0.00160  4.41772E-04 0.00204  3.28479E-03 0.00167  4.41702E-04 0.00164  3.27221E-03 0.00199  4.41234E-04 0.00180  3.26884E-03 0.00146  4.40463E-04 0.00210  3.26520E-03 0.00170  4.39221E-04 0.00199  3.23569E-03 0.00184  4.39012E-04 0.00139  3.19778E-03 0.00146  4.40597E-04 0.00158  3.17182E-03 0.00158  4.38788E-04 0.00180  3.15437E-03 0.00111  4.39433E-04 0.00144  3.15806E-03 0.00185  4.39485E-04 0.00174  3.14539E-03 0.00162  4.39935E-04 0.00180  3.14765E-03 0.00157  4.39367E-04 0.00167  3.18063E-03 0.00147  4.39914E-04 0.00198  3.23595E-03 0.00167  4.40500E-04 0.00154  3.29228E-03 0.00148  4.39063E-04 0.00172  3.36971E-03 0.00092  4.39683E-04 0.00173  3.31161E-03 0.00147  4.41370E-04 0.00172  3.31759E-03 0.00129  4.39673E-04 0.00162  3.38113E-03 0.00147  4.40470E-04 0.00169  3.31105E-03 0.00176  4.41209E-04 0.00189  3.31460E-03 0.00172  4.40321E-04 0.00185  3.36763E-03 0.00169  4.40338E-04 0.00196  3.28318E-03 0.00192  4.39860E-04 0.00229  3.23423E-03 0.00139  4.40049E-04 0.00178  3.18478E-03 0.00161  4.40380E-04 0.00191  3.15306E-03 0.00131  4.39675E-04 0.00162  3.14231E-03 0.00157  4.39819E-04 0.00152  3.17110E-03 0.00151  4.40541E-04 0.00185  3.17604E-03 0.00147  4.39267E-04 0.00208  3.26046E-03 0.00130  4.40805E-04 0.00171  3.37212E-03 0.00150  4.41567E-04 0.00231  3.42905E-03 0.00173  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40733E-04 0.00196  3.41469E-03 0.00157  4.41416E-04 0.00170  3.42701E-03 0.00159  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41490E-04 0.00195  3.41687E-03 0.00122  4.41389E-04 0.00198  3.42446E-03 0.00132  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40975E-04 0.00185  3.43449E-03 0.00149  4.39907E-04 0.00138  3.37796E-03 0.00176  4.41748E-04 0.00234  3.25655E-03 0.00174  4.42757E-04 0.00169  3.18098E-03 0.00188  4.39964E-04 0.00160  3.16620E-03 0.00163  4.41798E-04 0.00175  3.19788E-03 0.00162  4.41167E-04 0.00210  3.23836E-03 0.00160  4.40207E-04 0.00215  3.37688E-03 0.00159  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41816E-04 0.00194  3.49686E-03 0.00173  4.42066E-04 0.00149  3.48156E-03 0.00140  4.40827E-04 0.00201  3.39213E-03 0.00127  4.41924E-04 0.00133  3.37994E-03 0.00145  4.41591E-04 0.00198  3.44812E-03 0.00107  4.41279E-04 0.00170  3.37704E-03 0.00140  4.41341E-04 0.00164  3.38371E-03 0.00142  4.40783E-04 0.00187  3.47714E-03 0.00158  4.42566E-04 0.00174  3.48411E-03 0.00159  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41398E-04 0.00196  3.37342E-03 0.00138  4.41592E-04 0.00142  3.23100E-03 0.00148  4.39181E-04 0.00152  3.20523E-03 0.00185  4.41270E-04 0.00169  3.23692E-03 0.00158  4.40132E-04 0.00170  3.28705E-03 0.00109  4.39101E-04 0.00168  3.42892E-03 0.00124  4.40554E-04 0.00150  3.48708E-03 0.00152  4.42439E-04 0.00187  3.44466E-03 0.00129  4.41233E-04 0.00197  3.47811E-03 0.00158  4.41932E-04 0.00166  3.39332E-03 0.00165  4.41791E-04 0.00152  3.39623E-03 0.00131  4.40851E-04 0.00154  3.45148E-03 0.00124  4.41462E-04 0.00156  3.38661E-03 0.00182  4.42140E-04 0.00143  3.40062E-03 0.00136  4.41468E-04 0.00151  3.48186E-03 0.00143  4.41276E-04 0.00165  3.44267E-03 0.00138  4.40644E-04 0.00147  3.48639E-03 0.00118  4.42297E-04 0.00214  3.43364E-03 0.00128  4.41435E-04 0.00159  3.29485E-03 0.00135  4.41314E-04 0.00201  3.23558E-03 0.00175  4.41938E-04 0.00185  3.26357E-03 0.00113  4.40783E-04 0.00163  3.36607E-03 0.00150  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41753E-04 0.00141  3.47706E-03 0.00143  4.40826E-04 0.00165  3.48963E-03 0.00146  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.39349E-04 0.00195  3.47812E-03 0.00125  4.41407E-04 0.00153  3.46893E-03 0.00149  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41615E-04 0.00192  3.47021E-03 0.00112  4.41445E-04 0.00208  3.47569E-03 0.00144  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41040E-04 0.00172  3.48308E-03 0.00125  4.42740E-04 0.00191  3.47421E-03 0.00144  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40227E-04 0.00174  3.36278E-03 0.00129  4.39729E-04 0.00166  3.25875E-03 0.00178  4.40812E-04 0.00207  3.25549E-03 0.00156  4.41219E-04 0.00208  3.31418E-03 0.00133  4.41021E-04 0.00159  3.42730E-03 0.00121  4.43146E-04 0.00207  3.38442E-03 0.00172  4.41366E-04 0.00150  3.39780E-03 0.00119  4.41181E-04 0.00164  3.47449E-03 0.00132  4.41054E-04 0.00179  3.40415E-03 0.00128  4.41169E-04 0.00143  3.40432E-03 0.00127  4.41876E-04 0.00165  3.47392E-03 0.00110  4.42280E-04 0.00167  3.39822E-03 0.00131  4.41945E-04 0.00219  3.40247E-03 0.00112  4.40492E-04 0.00231  3.46966E-03 0.00137  4.40657E-04 0.00154  3.39724E-03 0.00132  4.41607E-04 0.00176  3.39451E-03 0.00145  4.40973E-04 0.00186  3.42833E-03 0.00127  4.41408E-04 0.00192  3.30967E-03 0.00122  4.40251E-04 0.00165  3.27034E-03 0.00166  4.38721E-04 0.00161  3.26306E-03 0.00188  4.40626E-04 0.00156  3.32248E-03 0.00111  4.40470E-04 0.00167  3.42653E-03 0.00120  4.42035E-04 0.00135  3.37952E-03 0.00133  4.41870E-04 0.00209  3.39182E-03 0.00147  4.41506E-04 0.00237  3.47471E-03 0.00118  4.40174E-04 0.00107  3.39838E-03 0.00119  4.40408E-04 0.00155  3.41515E-03 0.00150  4.43338E-04 0.00188  3.47526E-03 0.00117  4.40848E-04 0.00149  3.39444E-03 0.00179  4.42248E-04 0.00169  3.40072E-03 0.00157  4.40579E-04 0.00193  3.47419E-03 0.00171  4.42069E-04 0.00147  3.39890E-03 0.00181  4.42895E-04 0.00175  3.37830E-03 0.00188  4.41638E-04 0.00147  3.42366E-03 0.00159  4.39618E-04 0.00175  3.31557E-03 0.00119  4.40682E-04 0.00221  3.26497E-03 0.00143  4.40979E-04 0.00168  3.28040E-03 0.00203  4.41164E-04 0.00159  3.37574E-03 0.00156  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40771E-04 0.00147  3.44590E-03 0.00153  4.42284E-04 0.00141  3.46191E-03 0.00089  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40600E-04 0.00167  3.47065E-03 0.00113  4.41258E-04 0.00163  3.47681E-03 0.00166  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.42773E-04 0.00125  3.47774E-03 0.00117  4.39782E-04 0.00173  3.47006E-03 0.00133  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.42239E-04 0.00170  3.46272E-03 0.00171  4.41915E-04 0.00179  3.44809E-03 0.00147  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40538E-04 0.00194  3.37373E-03 0.00173  4.40180E-04 0.00151  3.27619E-03 0.00137  4.39671E-04 0.00147  3.26275E-03 0.00215  4.41990E-04 0.00157  3.31272E-03 0.00130  4.40791E-04 0.00166  3.42085E-03 0.00134  4.42349E-04 0.00199  3.38818E-03 0.00113  4.40245E-04 0.00173  3.39794E-03 0.00155  4.41859E-04 0.00166  3.47272E-03 0.00163  4.40348E-04 0.00159  3.41550E-03 0.00123  4.41202E-04 0.00132  3.40634E-03 0.00125  4.40824E-04 0.00189  3.47676E-03 0.00112  4.40442E-04 0.00194  3.40553E-03 0.00154  4.40840E-04 0.00184  3.40586E-03 0.00128  4.42367E-04 0.00168  3.48130E-03 0.00150  4.42292E-04 0.00205  3.39061E-03 0.00134  4.42435E-04 0.00178  3.37473E-03 0.00122  4.40394E-04 0.00209  3.41156E-03 0.00155  4.39924E-04 0.00168  3.31546E-03 0.00155  4.41244E-04 0.00134  3.26639E-03 0.00137  4.40318E-04 0.00183  3.26077E-03 0.00108  4.40624E-04 0.00171  3.30718E-03 0.00125  4.39812E-04 0.00177  3.42256E-03 0.00135  4.41977E-04 0.00220  3.38945E-03 0.00097  4.41857E-04 0.00187  3.39720E-03 0.00096  4.40938E-04 0.00160  3.47565E-03 0.00131  4.41464E-04 0.00178  3.40478E-03 0.00125  4.40957E-04 0.00139  3.40310E-03 0.00144  4.40945E-04 0.00218  3.47398E-03 0.00134  4.41585E-04 0.00137  3.40479E-03 0.00151  4.41872E-04 0.00173  3.40205E-03 0.00163  4.42250E-04 0.00133  3.47395E-03 0.00181  4.41858E-04 0.00179  3.39900E-03 0.00127  4.42376E-04 0.00185  3.39369E-03 0.00161  4.40183E-04 0.00151  3.42341E-03 0.00140  4.40732E-04 0.00163  3.31318E-03 0.00171  4.41147E-04 0.00179  3.26282E-03 0.00158  4.40508E-04 0.00184  3.26958E-03 0.00134  4.40687E-04 0.00174  3.36230E-03 0.00128  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41613E-04 0.00168  3.48622E-03 0.00149  4.42258E-04 0.00216  3.49098E-03 0.00146  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40494E-04 0.00209  3.47442E-03 0.00150  4.40781E-04 0.00264  3.47818E-03 0.00135  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41463E-04 0.00185  3.47083E-03 0.00158  4.42888E-04 0.00140  3.48457E-03 0.00121  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41548E-04 0.00139  3.48924E-03 0.00148  4.43286E-04 0.00167  3.47839E-03 0.00119  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41740E-04 0.00158  3.37459E-03 0.00173  4.41603E-04 0.00221  3.27659E-03 0.00147  4.39429E-04 0.00181  3.24527E-03 0.00136  4.40972E-04 0.00155  3.29277E-03 0.00111  4.39156E-04 0.00144  3.43751E-03 0.00113  4.42145E-04 0.00190  3.48792E-03 0.00168  4.41016E-04 0.00193  3.45882E-03 0.00126  4.41306E-04 0.00149  3.48916E-03 0.00206  4.41539E-04 0.00165  3.39954E-03 0.00162  4.42348E-04 0.00157  3.39826E-03 0.00151  4.40645E-04 0.00182  3.46953E-03 0.00131  4.42559E-04 0.00144  3.39939E-03 0.00146  4.42480E-04 0.00125  3.41403E-03 0.00128  4.41119E-04 0.00197  3.47885E-03 0.00167  4.41331E-04 0.00163  3.44868E-03 0.00112  4.41302E-04 0.00160  3.48206E-03 0.00118  4.42053E-04 0.00198  3.43396E-03 0.00119  4.41490E-04 0.00158  3.29311E-03 0.00163  4.40692E-04 0.00147  3.24346E-03 0.00183  4.39877E-04 0.00142  3.19390E-03 0.00153  4.40854E-04 0.00181  3.24035E-03 0.00135  4.40374E-04 0.00216  3.37965E-03 0.00080  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.39657E-04 0.00112  3.48674E-03 0.00126  4.40297E-04 0.00147  3.48164E-03 0.00146  4.42294E-04 0.00192  3.38645E-03 0.00154  4.42525E-04 0.00179  3.37880E-03 0.00156  4.42589E-04 0.00161  3.44853E-03 0.00139  4.41138E-04 0.00188  3.38296E-03 0.00118  4.41964E-04 0.00171  3.39322E-03 0.00113  4.41384E-04 0.00170  3.48393E-03 0.00171  4.40576E-04 0.00143  3.48589E-03 0.00156  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40982E-04 0.00192  3.38004E-03 0.00150  4.40509E-04 0.00143  3.23245E-03 0.00126  4.39943E-04 0.00156  3.19566E-03 0.00106  4.39759E-04 0.00212  3.15805E-03 0.00185  4.40642E-04 0.00183  3.18030E-03 0.00134  4.40922E-04 0.00184  3.25080E-03 0.00171  4.40337E-04 0.00129  3.37992E-03 0.00138  4.38943E-04 0.00152  3.42805E-03 0.00167  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.40682E-04 0.00185  3.41651E-03 0.00126  4.40853E-04 0.00159  3.41456E-03 0.00107  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41279E-04 0.00164  3.42946E-03 0.00153  4.42012E-04 0.00202  3.43432E-03 0.00137  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.41600E-04 0.00172  3.44127E-03 0.00179  4.41253E-04 0.00166  3.38176E-03 0.00121  4.41226E-04 0.00205  3.25192E-03 0.00192  4.40462E-04 0.00205  3.17989E-03 0.00141  4.39727E-04 0.00193  3.16904E-03 0.00141  4.38430E-04 0.00237  3.14856E-03 0.00169  4.40173E-04 0.00240  3.15373E-03 0.00175  4.40991E-04 0.00185  3.17561E-03 0.00166  4.41162E-04 0.00205  3.23976E-03 0.00159  4.38665E-04 0.00212  3.27988E-03 0.00180  4.39308E-04 0.00175  3.36387E-03 0.00103  4.40120E-04 0.00191  3.32186E-03 0.00141  4.40707E-04 0.00168  3.31108E-03 0.00149  4.42667E-04 0.00191  3.38696E-03 0.00142  4.40919E-04 0.00188  3.32129E-03 0.00151  4.39932E-04 0.00188  3.32175E-03 0.00147  4.41251E-04 0.00167  3.36249E-03 0.00127  4.40754E-04 0.00149  3.29402E-03 0.00124  4.42488E-04 0.00181  3.22756E-03 0.00147  4.41703E-04 0.00167  3.18096E-03 0.00168  4.41675E-04 0.00175  3.14349E-03 0.00147  4.39300E-04 0.00160  3.14857E-03 0.00193  4.39574E-04 0.00206  3.16117E-03 0.00152  4.39764E-04 0.00186  3.14991E-03 0.00187  4.40927E-04 0.00160  3.16850E-03 0.00156  4.40758E-04 0.00189  3.20159E-03 0.00147  4.40798E-04 0.00167  3.23971E-03 0.00134  4.40924E-04 0.00154  3.25593E-03 0.00110  4.40497E-04 0.00193  3.26405E-03 0.00146  4.41104E-04 0.00118  3.26333E-03 0.00139  4.41065E-04 0.00236  3.28513E-03 0.00125  4.42419E-04 0.00151  3.27404E-03 0.00139  4.40639E-04 0.00205  3.26542E-03 0.00136  4.39855E-04 0.00195  3.27161E-03 0.00091  4.39136E-04 0.00181  3.24322E-03 0.00186  4.40521E-04 0.00136  3.19779E-03 0.00156  4.39628E-04 0.00136  3.16693E-03 0.00161  4.39687E-04 0.00149  3.14808E-03 0.00174  4.39723E-04 0.00186  3.15459E-03 0.00130 ];
PPW_HOM_FLUX              (idx, [1: 1156]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
PPW_FF                    (idx, [1: 1156]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1:  13]) = 'Serpent 2.2.1' ;
COMPILE_DATE              (idx, [1:  20]) = 'Oct 28 2025 11:28:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  53]) = 'A007_homo_U235_Th0.600_Pu0.000_U2330.000_U235E0.02000' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:   8]) = 'A007.sss' ;
WORKING_DIRECTORY         (idx, [1:  30]) = '/home/sy_lu/Modular/cases/A007' ;
HOSTNAME                  (idx, [1:   6]) = 'master' ;
CPU_TYPE                  (idx, [1:  41]) = 'Intel(R) Xeon(R) Gold 6240R CPU @ 2.40GHz' ;
CPU_MHZ                   (idx, 1)        = 83900417.0 ;
START_DATE                (idx, [1:  24]) = 'Tue May  5 16:35:33 2026' ;
COMPLETE_DATE             (idx, [1:  24]) = 'Tue May  5 17:09:04 2026' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1777970133370 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000 ;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ] ;
B1_IMPLICIT_LEAKAGE       (idx, 1)        = 0 ;
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;
SPECTRUM_COLLAPSE         (idx, 1)        = 1 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 80 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  80]) = [  1.23828E+00  9.94712E-01  9.95373E-01  9.95376E-01  1.00696E+00  9.96228E-01  9.95598E-01  9.74776E-01  9.78538E-01  9.99382E-01  1.00281E+00  9.91146E-01  9.90912E-01  9.99718E-01  9.88005E-01  1.00078E+00  9.91334E-01  9.92565E-01  9.77414E-01  9.87513E-01  1.00423E+00  9.96695E-01  9.93385E-01  9.87792E-01  9.98743E-01  9.91368E-01  9.92222E-01  1.00798E+00  1.01299E+00  1.00851E+00  1.00623E+00  9.96028E-01  9.98712E-01  9.88657E-01  9.99867E-01  1.00151E+00  9.99888E-01  9.89659E-01  1.00614E+00  1.01762E+00  1.01462E+00  9.74997E-01  9.89879E-01  9.79414E-01  9.90455E-01  9.68080E-01  1.01256E+00  1.01147E+00  9.98595E-01  9.94454E-01  1.00512E+00  9.88142E-01  9.96964E-01  1.00263E+00  1.00243E+00  9.96426E-01  1.00169E+00  1.00686E+00  1.00850E+00  9.87965E-01  9.88963E-01  1.00408E+00  9.94390E-01  9.99337E-01  1.00405E+00  9.93940E-01  1.00420E+00  9.98869E-01  9.99912E-01  1.00265E+00  9.84975E-01  9.93182E-01  9.78134E-01  1.00749E+00  1.00039E+00  9.91623E-01  1.00013E+00  1.03503E+00  1.00005E+00  9.91691E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1:  42]) = '/home/sy_lu/data/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  38]) = '/home/sy_lu/data/endfb7/sss_endfb7.dec' ;
SFY_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  38]) = '/home/sy_lu/data/endfb7/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 1.6E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:   2]) = [  9.00000E-01  9.00000E-01 ] ;
ST_FRAC                   (idx, [1:   4]) = [  2.43740E-02 0.00011  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75626E-01 2.8E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.29373E-01 1.1E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.29804E-01 1.1E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10611E+00 5.8E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CELL_SEARCH_FRAC          (idx, [1:  10]) = [  9.29108E-01 7.7E-06  7.08828E-02 0.00010  9.37108E-06 0.00271  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  4.22006E+01 7.1E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  4.22006E+01 7.1E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.56240E+01 8.8E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.80384E+00 9.5E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 100001496 ;
MEAN_POP_SIZE             (idx, [1:   2]) = [  2.00003E+05 0.00025 ] ;
MEAN_POP_WGT              (idx, [1:   2]) = [  2.00003E+05 0.00025 ] ;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.26475E+03 ;
RUNNING_TIME              (idx, 1)        =  3.35143E+01 ;
INIT_TIME                 (idx, [1:   2]) = [  8.19400E-01  8.19400E-01 ] ;
PROCESS_TIME              (idx, [1:   2]) = [  2.25167E-02  2.25167E-02 ] ;
TRANSPORT_CYCLE_TIME      (idx, [1:   3]) = [  3.26717E+01  3.26717E+01  0.00000E+00 ] ;
BURNUP_CYCLE_TIME         (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
BATEMAN_SOLUTION_TIME     (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
MPI_OVERHEAD_TIME         (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
ESTIMATED_RUNNING_TIME    (idx, [1:   2]) = [  3.35117E+01  0.00000E+00 ] ;
CPU_USAGE                 (idx, 1)        = 37.73766 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.88226E+01 0.00060 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.61514E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 257551.17 ;
ALLOC_MEMSIZE             (idx, 1)        = 13955.87 ;
MEMSIZE                   (idx, 1)        = 13374.75 ;
XS_MEMSIZE                (idx, 1)        = 7212.92 ;
MAT_MEMSIZE               (idx, 1)        = 4774.38 ;
RES_MEMSIZE               (idx, 1)        = 50.52 ;
IFC_MEMSIZE               (idx, 1)        = 0.00 ;
MISC_MEMSIZE              (idx, 1)        = 1336.92 ;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00 ;
UNUSED_MEMSIZE            (idx, 1)        = 581.12 ;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  5.00000E-05 ;
NEUTRON_ERG_NE            (idx, 1)        = 282063 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 229 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 1366 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 300 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 1066 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 8370 ;
TOT_TRANSMU_REA           (idx, 1)        = 2717 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:   9]) = [ 0 0 0 0 0 0 0 0 0 ] ;
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  9.61947E+06 ;
TOT_DECAY_HEAT            (idx, 1)        =  6.53914E-06 ;
TOT_SF_RATE               (idx, 1)        =  3.24961E+02 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  9.61947E+06 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  6.53914E-06 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  3.72829E+02 ;
INGESTION_TOXICITY        (idx, 1)        =  9.70351E-01 ;
ACTINIDE_INH_TOX          (idx, 1)        =  3.72829E+02 ;
ACTINIDE_ING_TOX          (idx, 1)        =  9.70351E-01 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, [1:   2]) = [  1.58176E+06  2.15280E-08 ] ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  9.60670E+06 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  3.83131E+06 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  2.47902E+10 0.00011  0.00000E+00 0.0E+00 ];

% Parameters for burnup calculation:

BURN_MATERIALS            (idx, 1)        = 264 ;
BURN_MODE                 (idx, 1)        = 2 ;
BURN_STEP                 (idx, 1)        = 0 ;
BURN_RANDOMIZE_DATA       (idx, [1:   3]) = [ 0 0 0 ] ;
BURNUP                    (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
BURN_DAYS                 (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
FIMA                      (idx, [1:   3]) = [  0.00000E+00  0.00000E+00  3.08846E+24 ] ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.70986E+00 0.00024 ];
TH232_FISS                (idx, [1:   4]) = [  2.02590E+13 0.00154  1.43755E-02 0.00153 ];
U235_FISS                 (idx, [1:   4]) = [  1.33346E+15 0.00018  9.46214E-01 4.4E-05 ];
U238_FISS                 (idx, [1:   4]) = [  5.55395E+13 0.00094  3.94105E-02 0.00092 ];
TH232_CAPT                (idx, [1:   4]) = [  1.82849E+15 0.00017  5.14120E-01 0.00012 ];
U235_CAPT                 (idx, [1:   4]) = [  2.57255E+14 0.00042  7.23331E-02 0.00041 ];
U238_CAPT                 (idx, [1:   4]) = [  8.91441E+14 0.00026  2.50648E-01 0.00021 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC      (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_FISS     (idx, [1:   2]) = [ 100001496 1.00000E+08 ] ;
BALA_SRC_NEUTRON_NXN      (idx, [1:   2]) = [ 0 1.56418E+05 ] ;
BALA_SRC_NEUTRON_VR       (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_TOT      (idx, [1:   2]) = [ 100001496 1.00156E+08 ] ;

BALA_LOSS_NEUTRON_CAPT    (idx, [1:   2]) = [ 71620616 7.17327E+07 ] ;
BALA_LOSS_NEUTRON_FISS    (idx, [1:   2]) = [ 28380880 2.84237E+07 ] ;
BALA_LOSS_NEUTRON_LEAK    (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_CUT     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_ERR     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_TOT     (idx, [1:   2]) = [ 100001496 1.00156E+08 ] ;

BALA_NEUTRON_DIFF         (idx, [1:   2]) = [ 0 -1.99378E-05 ] ;

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   6]) = [  4.56852E+04 0.0E+00  4.56852E+04 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_POWDENS               (idx, [1:   6]) = [  3.80000E-02 0.0E+00  3.80000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   6]) = [  3.45345E+15 2.0E-06  3.45345E+15 2.0E-06  0.00000E+00 0.0E+00 ];
TOT_FISSRATE              (idx, [1:   6]) = [  1.40894E+15 1.1E-07  1.40894E+15 1.1E-07  0.00000E+00 0.0E+00 ];
TOT_CAPTRATE              (idx, [1:   6]) = [  3.55647E+15 6.3E-05  2.98444E+15 7.3E-05  5.72032E+14 8.1E-05 ];
TOT_ABSRATE               (idx, [1:   6]) = [  4.96541E+15 4.5E-05  4.39338E+15 4.9E-05  5.72032E+14 8.1E-05 ];
TOT_SRCRATE               (idx, [1:   6]) = [  4.95805E+15 0.00011  4.95805E+15 0.00011  0.00000E+00 0.0E+00 ];
TOT_FLUX                  (idx, [1:   6]) = [  2.57200E+17 7.9E-05  7.74920E+16 8.5E-05  1.79708E+17 8.1E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  4.96541E+15 4.5E-05 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.09550E+17 6.3E-05 ];
INI_FMASS                 (idx, 1)        =  1.20224E+00 ;
TOT_FMASS                 (idx, 1)        =  1.20224E+00 ;
INI_BURN_FMASS            (idx, 1)        =  1.20224E+00 ;
TOT_BURN_FMASS            (idx, 1)        =  1.20224E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.01170E+00 0.00016 ];
SIX_FF_F                  (idx, [1:   2]) = [  8.54425E-01 5.2E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  7.08343E-01 6.4E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.13783E+00 7.2E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  6.96698E-01 0.00017 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  6.96698E-01 0.00017 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45110E+00 2.0E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02382E+02 1.1E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  6.96681E-01 0.00017  6.91939E-01 0.00017  4.75875E-03 0.00228 ];
IMP_KEFF                  (idx, [1:   2]) = [  6.96585E-01 4.6E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  6.96539E-01 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  6.96585E-01 4.6E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  6.96585E-01 4.6E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.83618E+01 4.5E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.83622E+01 1.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.12164E-07 0.00083 ];
IMP_EALF                  (idx, [1:   2]) = [  2.12045E-07 0.00026 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.78897E-01 0.00086 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.78701E-01 0.00027 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  1.02364E-02 0.00130  3.10867E-04 0.00693  1.63421E-03 0.00309  1.62081E-03 0.00293  4.67776E-03 0.00181  1.48062E-03 0.00318  5.12080E-04 0.00500 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.85460E-01 0.00264  1.24863E-02 1.0E-05  3.17674E-02 4.8E-05  1.10363E-01 7.6E-05  3.19496E-01 4.0E-05  1.34153E+00 7.1E-05  8.44484E+00 0.00094 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.86707E-03 0.00186  2.09705E-04 0.01070  1.09795E-03 0.00470  1.09090E-03 0.00456  3.13504E-03 0.00274  9.87057E-04 0.00482  3.46414E-04 0.00796 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.87633E-01 0.00413  1.24861E-02 1.5E-05  3.17655E-02 7.2E-05  1.10373E-01 0.00011  3.19495E-01 5.9E-05  1.34156E+00 0.00011  8.44567E+00 0.00141 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  7.91403E-05 0.00032  7.91051E-05 0.00032  8.42258E-05 0.00303 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.51348E-05 0.00027  5.51102E-05 0.00028  5.86766E-05 0.00301 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.83001E-03 0.00231  2.06690E-04 0.01331  1.09056E-03 0.00560  1.07938E-03 0.00577  3.12069E-03 0.00346  9.85740E-04 0.00573  3.46958E-04 0.00995 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.91674E-01 0.00519  1.24863E-02 2.1E-05  3.17667E-02 9.2E-05  1.10364E-01 0.00016  3.19474E-01 7.7E-05  1.34152E+00 0.00014  8.44598E+00 0.00187 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  7.91175E-05 0.00067  7.90769E-05 0.00068  8.49998E-05 0.00788 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.51190E-05 0.00066  5.50907E-05 0.00067  5.92183E-05 0.00788 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.77182E-03 0.00743  2.07714E-04 0.04642  1.07585E-03 0.01987  1.05248E-03 0.01964  3.13700E-03 0.01101  9.47765E-04 0.01954  3.51009E-04 0.03388 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.94531E-01 0.01806  1.24848E-02 7.4E-05  3.17878E-02 0.00030  1.10406E-01 0.00057  3.19569E-01 0.00026  1.34253E+00 0.00043  8.37560E+00 0.00608 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.77514E-03 0.00731  2.07735E-04 0.04602  1.07727E-03 0.01973  1.05644E-03 0.01941  3.13219E-03 0.01092  9.49105E-04 0.01939  3.52401E-04 0.03322 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.96378E-01 0.01792  1.24847E-02 7.4E-05  3.17868E-02 0.00029  1.10401E-01 0.00054  3.19583E-01 0.00025  1.34241E+00 0.00045  8.37914E+00 0.00606 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -8.56512E+01 0.00746 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  7.91748E-05 0.00022 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.51587E-05 0.00013 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.82260E-03 0.00142 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -8.61735E+01 0.00144 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  8.52822E-07 8.9E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.89539E-06 8.7E-05  2.89541E-06 8.7E-05  2.89394E-06 0.00101 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  5.92934E-05 0.00012  5.92939E-05 0.00012  5.92370E-05 0.00137 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.08590E-01 6.4E-05  7.10724E-01 6.6E-05  5.02725E-01 0.00197 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04365E+01 0.00292 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  4.22006E+01 7.1E-05  4.82496E+01 0.00013 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:   1]) = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.35644E+06 0.00082  5.48887E+06 0.00033  1.14828E+07 0.00024  1.27397E+07 0.00013  1.17984E+07 0.00016  1.26714E+07 0.00016  8.59755E+06 0.00012  7.58080E+06 0.00018  5.78713E+06 0.00018  4.73158E+06 0.00014  4.08843E+06 0.00019  3.68399E+06 0.00015  3.40263E+06 0.00020  3.23559E+06 0.00018  3.15110E+06 0.00018  2.72075E+06 0.00020  2.69018E+06 0.00020  2.65287E+06 0.00021  2.61917E+06 0.00021  5.09274E+06 0.00018  4.82770E+06 0.00018  3.51146E+06 0.00019  2.22123E+06 0.00021  2.73430E+06 0.00022  2.38506E+06 0.00023  2.31798E+06 0.00025  3.97572E+06 0.00014  8.96405E+05 0.00043  1.12241E+06 0.00027  1.01545E+06 0.00036  5.93170E+05 0.00042  1.02619E+06 0.00035  6.99332E+05 0.00052  6.02263E+05 0.00045  1.16448E+05 0.00084  1.15557E+05 0.00091  1.18341E+05 0.00083  1.21581E+05 0.00094  1.20643E+05 0.00074  1.18306E+05 0.00100  1.22258E+05 0.00103  1.14706E+05 0.00064  2.16641E+05 0.00065  3.45829E+05 0.00061  4.39914E+05 0.00053  1.15995E+06 0.00035  1.21808E+06 0.00029  1.30896E+06 0.00035  8.82860E+05 0.00035  6.71637E+05 0.00035  5.37930E+05 0.00043  6.37628E+05 0.00049  1.18612E+06 0.00027  1.68759E+06 0.00026  3.46718E+06 0.00018  5.84777E+06 0.00015  9.54251E+06 0.00015  6.58758E+06 0.00017  4.92944E+06 0.00017  3.66273E+06 0.00018  3.33926E+06 0.00016  3.37613E+06 0.00016  2.89061E+06 0.00019  1.97822E+06 0.00020  1.85950E+06 0.00016  1.66950E+06 0.00020  1.46409E+06 0.00023  1.13202E+06 0.00026  7.50489E+05 0.00032  2.62762E+05 0.00034 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  6.96539E-01 0.00012 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.81726E+17 0.00011  7.54746E+16 5.9E-05 ];
INF_FISS_FLX              (idx, [1:   4]) = [  5.57472E+16 0.00012  2.17449E+16 3.2E-05 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.62904E-01 2.6E-05  1.42110E+00 2.3E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.09984E-03 0.00011  3.00267E-02 4.4E-05 ];
INF_ABS                   (idx, [1:   4]) = [  7.99859E-03 0.00010  4.65306E-02 5.0E-05 ];
INF_FISS                  (idx, [1:   4]) = [  8.98753E-04 9.6E-05  1.65039E-02 6.0E-05 ];
INF_NSF                   (idx, [1:   4]) = [  2.30163E-03 0.00010  4.02150E-02 6.0E-05 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.56091E+00 1.4E-05  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03237E+02 5.6E-07  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.11787E-08 9.2E-05  2.75892E-06 2.1E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.54904E-01 2.7E-05  1.37456E+00 2.4E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.53715E-01 3.6E-05  3.40777E-01 5.9E-05 ];
INF_SCATT2                (idx, [1:   4]) = [  9.97337E-02 6.5E-05  7.95147E-02 0.00013 ];
INF_SCATT3                (idx, [1:   4]) = [  7.58240E-03 0.00054  2.38504E-02 0.00044 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.07798E-02 0.00041 -7.63424E-03 0.00134 ];
INF_SCATT5                (idx, [1:   4]) = [  6.09821E-05 0.07341  5.97302E-03 0.00153 ];
INF_SCATT6                (idx, [1:   4]) = [  5.18258E-03 0.00068 -1.46951E-02 0.00069 ];
INF_SCATT7                (idx, [1:   4]) = [  7.56059E-04 0.00423  6.33625E-04 0.01170 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.54947E-01 2.7E-05  1.37456E+00 2.4E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.53715E-01 3.6E-05  3.40777E-01 5.9E-05 ];
INF_SCATTP2               (idx, [1:   4]) = [  9.97338E-02 6.5E-05  7.95147E-02 0.00013 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.58233E-03 0.00054  2.38504E-02 0.00044 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.07798E-02 0.00041 -7.63424E-03 0.00134 ];
INF_SCATTP5               (idx, [1:   4]) = [  6.09563E-05 0.07358  5.97302E-03 0.00153 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.18258E-03 0.00069 -1.46951E-02 0.00069 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.56020E-04 0.00423  6.33625E-04 0.01170 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.24409E-01 6.9E-05  9.60596E-01 3.2E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.48538E+00 6.9E-05  3.47007E-01 3.2E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  7.95591E-03 0.00011  4.65306E-02 5.0E-05 ];
INF_REMXS                 (idx, [1:   4]) = [  2.76405E-02 3.8E-05  4.72898E-02 0.00012 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  6.41125E-02 2.4E-06  6.28187E-02 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  1.48033E-03 9.3E-05  2.56634E-03 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  1.34504E-11 0.00011  2.48982E-11 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  2.59725E-11 9.0E-05  4.44968E-11 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  4.91468E-11 8.2E-05  8.09942E-11 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  1.26665E-02 1.8E-05  1.08163E-02 2.7E-09 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  9.22389E-13 0.00011  1.70988E-12 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  1.00475E+00 0.00016  4.56561E+01 5.9E-05 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  1.43958E+02 0.00041  1.81390E+06 6.1E-05 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  6.36768E+01 0.00055  9.44719E+01 6.0E-05 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  9.29658E+01 0.00013  1.14273E+03 5.9E-05 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  1.45672E+02 0.00015  1.84296E+04 7.7E-05 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  5.06549E+01 0.00012  7.99916E+02 5.9E-05 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  1.11493E+02 0.00048  5.19556E+04 7.6E-05 ];
INF_I135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MACRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison universe-averaged densities:

I135_ADENS                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
XE135_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM147_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM148_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM148M_ADENS              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM149_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SM149_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  8.37254E-09 ;
PM148_LAMBDA              (idx, 1)        =  1.49451E-06 ;
PM148M_LAMBDA             (idx, 1)        =  1.94297E-07 ;
PM149_LAMBDA              (idx, 1)        =  3.62737E-06 ;
I135_LAMBDA               (idx, 1)        =  2.93061E-05 ;
XE135_LAMBDA              (idx, 1)        =  2.10657E-05 ;
XE135M_LAMBDA             (idx, 1)        =  7.55556E-04 ;
I135_BR                   (idx, 1)        =  9.01450E-01 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  5.35264E-01 2.6E-05  1.96405E-02 6.3E-05  7.57646E-04 0.00092  1.37381E+00 2.4E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.47920E-01 3.6E-05  5.79425E-03 0.00016  2.64997E-04 0.00186  3.40512E-01 5.8E-05 ];
INF_S2                    (idx, [1:   8]) = [  1.01425E-01 6.1E-05 -1.69137E-03 0.00047  1.60382E-04 0.00258  7.93544E-02 0.00013 ];
INF_S3                    (idx, [1:   8]) = [  9.65522E-03 0.00044 -2.07283E-03 0.00047  6.93856E-05 0.00411  2.37810E-02 0.00044 ];
INF_S4                    (idx, [1:   8]) = [ -1.00790E-02 0.00045 -7.00825E-04 0.00069  1.12602E-05 0.02834 -7.64550E-03 0.00134 ];
INF_S5                    (idx, [1:   8]) = [  4.57758E-05 0.09625  1.52063E-05 0.04386 -1.58013E-05 0.01895  5.98882E-03 0.00151 ];
INF_S6                    (idx, [1:   8]) = [  5.32899E-03 0.00068 -1.46415E-04 0.00399 -2.57170E-05 0.00980 -1.46694E-02 0.00068 ];
INF_S7                    (idx, [1:   8]) = [  9.36970E-04 0.00312 -1.80912E-04 0.00274 -2.65664E-05 0.00961  6.60192E-04 0.01128 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  5.35306E-01 2.6E-05  1.96405E-02 6.3E-05  7.57646E-04 0.00092  1.37381E+00 2.4E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.47921E-01 3.6E-05  5.79425E-03 0.00016  2.64997E-04 0.00186  3.40512E-01 5.8E-05 ];
INF_SP2                   (idx, [1:   8]) = [  1.01425E-01 6.1E-05 -1.69137E-03 0.00047  1.60382E-04 0.00258  7.93544E-02 0.00013 ];
INF_SP3                   (idx, [1:   8]) = [  9.65516E-03 0.00044 -2.07283E-03 0.00047  6.93856E-05 0.00411  2.37810E-02 0.00044 ];
INF_SP4                   (idx, [1:   8]) = [ -1.00790E-02 0.00045 -7.00825E-04 0.00069  1.12602E-05 0.02834 -7.64550E-03 0.00134 ];
INF_SP5                   (idx, [1:   8]) = [  4.57500E-05 0.09646  1.52063E-05 0.04386 -1.58013E-05 0.01895  5.98882E-03 0.00151 ];
INF_SP6                   (idx, [1:   8]) = [  5.32899E-03 0.00068 -1.46415E-04 0.00399 -2.57170E-05 0.00980 -1.46694E-02 0.00068 ];
INF_SP7                   (idx, [1:   8]) = [  9.36932E-04 0.00313 -1.80912E-04 0.00274 -2.65664E-05 0.00961  6.60192E-04 0.01128 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.38980E-01 0.00014  8.85081E-01 0.00037 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.39091E-01 0.00027  8.88958E-01 0.00053 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.39107E-01 0.00024  8.90009E-01 0.00069 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.38743E-01 0.00019  8.76420E-01 0.00055 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.39482E+00 0.00014  3.76615E-01 0.00037 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.39417E+00 0.00027  3.74973E-01 0.00053 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.39408E+00 0.00024  3.74532E-01 0.00069 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.39620E+00 0.00019  3.80338E-01 0.00055 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.86707E-03 0.00186  2.09705E-04 0.01070  1.09795E-03 0.00470  1.09090E-03 0.00456  3.13504E-03 0.00274  9.87057E-04 0.00482  3.46414E-04 0.00796 ];
LAMBDA                    (idx, [1:  14]) = [  7.87633E-01 0.00413  1.24861E-02 1.5E-05  3.17655E-02 7.2E-05  1.10373E-01 0.00011  3.19495E-01 5.9E-05  1.34156E+00 0.00011  8.44567E+00 0.00141 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:   3]) = 'ADF' ;
DF_SURFACE_TYPE           (idx, 1)        = 6 ;
DF_SURFACE_N_PARAM        (idx, 1)        = 3 ;
DF_SURFACE_PARAMS         (idx, [1:   3]) = [ 0.00000E+00  0.00000E+00  1.07500E+01 ];
DF_SYM                    (idx, 1)        = 1 ;
DF_N_SURF                 (idx, 1)        = 4 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_N_SGN                  (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  4.62250E+02 ;
DF_SURF_AREA              (idx, [1:   4]) = [ 2.15000E+01  2.15000E+01  2.15000E+01  2.15000E+01 ];
DF_MID_AREA               (idx, [1:   4]) = [ 2.15000E+00  2.15000E+00  2.15000E+00  2.15000E+00 ];
DF_CORN_AREA              (idx, [1:   4]) = [ 2.15000E+00  2.15000E+00  2.15000E+00  2.15000E+00 ];
DF_SURF_IN_CURR           (idx, [1:  16]) = [  2.12133E+15 0.00016  8.59354E+14 0.00018  2.12133E+15 0.00016  8.59354E+14 0.00018  2.12133E+15 0.00016  8.59354E+14 0.00018  2.12133E+15 0.00016  8.59354E+14 0.00018 ];
DF_SURF_OUT_CURR          (idx, [1:  16]) = [  2.12133E+15 0.00016  8.59354E+14 0.00018  2.12133E+15 0.00016  8.59354E+14 0.00018  2.12133E+15 0.00016  8.59354E+14 0.00018  2.12133E+15 0.00016  8.59354E+14 0.00018 ];
DF_SURF_NET_CURR          (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_IN_CURR            (idx, [1:  16]) = [  2.11418E+14 0.00034  8.75363E+13 0.00059  2.11418E+14 0.00034  8.75363E+13 0.00059  2.11418E+14 0.00034  8.75363E+13 0.00059  2.11418E+14 0.00034  8.75363E+13 0.00059 ];
DF_MID_OUT_CURR           (idx, [1:  16]) = [  2.11418E+14 0.00034  8.75363E+13 0.00059  2.11418E+14 0.00034  8.75363E+13 0.00059  2.11418E+14 0.00034  8.75363E+13 0.00059  2.11418E+14 0.00034  8.75363E+13 0.00059 ];
DF_MID_NET_CURR           (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  2.12843E+14 0.00031  8.42972E+13 0.00084  2.12843E+14 0.00031  8.42972E+13 0.00084  2.12843E+14 0.00031  8.42972E+13 0.00084  2.12843E+14 0.00031  8.42972E+13 0.00084 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  2.12843E+14 0.00031  8.42972E+13 0.00084  2.12843E+14 0.00031  8.42972E+13 0.00084  2.12843E+14 0.00031  8.42972E+13 0.00084  2.12843E+14 0.00031  8.42972E+13 0.00084 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  3.93148E+14 0.00011  1.63275E+14 6.1E-05 ];
DF_HET_SURF_FLUX          (idx, [1:  16]) = [  3.91891E+14 0.00019  1.61509E+14 0.00026  3.91891E+14 0.00019  1.61509E+14 0.00026  3.91891E+14 0.00019  1.61509E+14 0.00026  3.91891E+14 0.00019  1.61509E+14 0.00026 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  3.92705E+14 0.00044  1.58628E+14 0.00111  3.92705E+14 0.00044  1.58628E+14 0.00111  3.92705E+14 0.00044  1.58628E+14 0.00111  3.92705E+14 0.00044  1.58628E+14 0.00111 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  16]) = [  3.93148E+14 0.00011  1.63275E+14 6.1E-05  3.93148E+14 0.00011  1.63275E+14 6.1E-05  3.93148E+14 0.00011  1.63275E+14 6.1E-05  3.93148E+14 0.00011  1.63275E+14 6.1E-05 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  3.93148E+14 0.00011  1.63275E+14 6.1E-05  3.93148E+14 0.00011  1.63275E+14 6.1E-05  3.93148E+14 0.00011  1.63275E+14 6.1E-05  3.93148E+14 0.00011  1.63275E+14 6.1E-05 ];
DF_SURF_DF                (idx, [1:  16]) = [  9.96801E-01 0.00013  9.89183E-01 0.00025  9.96801E-01 0.00013  9.89183E-01 0.00025  9.96801E-01 0.00013  9.89183E-01 0.00025  9.96801E-01 0.00013  9.89183E-01 0.00025 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.98873E-01 0.00042  9.71542E-01 0.00114  9.98873E-01 0.00042  9.71542E-01 0.00114  9.98873E-01 0.00042  9.71542E-01 0.00114  9.98873E-01 0.00042  9.71542E-01 0.00114 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1:  13]) = 'Serpent 2.2.1' ;
COMPILE_DATE              (idx, [1:  20]) = 'Oct 28 2025 11:28:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  53]) = 'A007_homo_U235_Th0.600_Pu0.000_U2330.000_U235E0.02000' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:   8]) = 'A007.sss' ;
WORKING_DIRECTORY         (idx, [1:  30]) = '/home/sy_lu/Modular/cases/A007' ;
HOSTNAME                  (idx, [1:   6]) = 'master' ;
CPU_TYPE                  (idx, [1:  41]) = 'Intel(R) Xeon(R) Gold 6240R CPU @ 2.40GHz' ;
CPU_MHZ                   (idx, 1)        = 83900417.0 ;
START_DATE                (idx, [1:  24]) = 'Tue May  5 16:35:33 2026' ;
COMPLETE_DATE             (idx, [1:  24]) = 'Tue May  5 18:03:19 2026' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1777970133370 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000 ;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ] ;
B1_IMPLICIT_LEAKAGE       (idx, 1)        = 0 ;
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;
SPECTRUM_COLLAPSE         (idx, 1)        = 1 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 80 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  80]) = [  1.25497E+00  9.80340E-01  1.01091E+00  1.01040E+00  9.94523E-01  9.81604E-01  1.01815E+00  9.96814E-01  9.83165E-01  9.78631E-01  9.95431E-01  9.91486E-01  1.00994E+00  9.89031E-01  9.96718E-01  9.92847E-01  9.95191E-01  1.00379E+00  1.00402E+00  9.87098E-01  9.96675E-01  1.00817E+00  9.87917E-01  1.00477E+00  1.00234E+00  9.85074E-01  9.95575E-01  9.87479E-01  1.01836E+00  1.00011E+00  9.99971E-01  9.98421E-01  1.00203E+00  9.88538E-01  1.00449E+00  9.77025E-01  1.01474E+00  9.93231E-01  9.88214E-01  9.79828E-01  1.00069E+00  1.01582E+00  1.00457E+00  1.00099E+00  9.93014E-01  9.99109E-01  9.90263E-01  1.00191E+00  1.01583E+00  9.95881E-01  9.97350E-01  9.98787E-01  9.86944E-01  1.00185E+00  9.94820E-01  9.81065E-01  9.85567E-01  9.92820E-01  9.82063E-01  9.93610E-01  9.89695E-01  9.87760E-01  9.92996E-01  1.00578E+00  9.88992E-01  1.00044E+00  1.00577E+00  9.98438E-01  9.86578E-01  9.96797E-01  9.81750E-01  1.00319E+00  9.96429E-01  1.00836E+00  9.88258E-01  1.00973E+00  9.92649E-01  1.02301E+00  1.00637E+00  9.96089E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1:  42]) = '/home/sy_lu/data/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  38]) = '/home/sy_lu/data/endfb7/sss_endfb7.dec' ;
SFY_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  38]) = '/home/sy_lu/data/endfb7/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:   2]) = [  9.00000E-01  9.00000E-01 ] ;
ST_FRAC                   (idx, [1:   4]) = [  2.43770E-02 0.00012  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75623E-01 3.0E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.30280E-01 1.1E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.30714E-01 1.1E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10183E+00 5.9E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CELL_SEARCH_FRAC          (idx, [1:  10]) = [  9.28730E-01 7.8E-06  7.12605E-02 0.00010  9.25724E-06 0.00289  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  4.17209E+01 7.4E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  4.17209E+01 7.4E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.53752E+01 8.9E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.76971E+00 9.8E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 100000519 ;
MEAN_POP_SIZE             (idx, [1:   2]) = [  2.00001E+05 0.00023 ] ;
MEAN_POP_WGT              (idx, [1:   2]) = [  2.00001E+05 0.00023 ] ;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  3.24365E+03 ;
RUNNING_TIME              (idx, 1)        =  8.77627E+01 ;
INIT_TIME                 (idx, [1:   2]) = [  8.19400E-01  8.19400E-01 ] ;
PROCESS_TIME              (idx, [1:   2]) = [  4.13067E-01  1.96850E-01 ] ;
TRANSPORT_CYCLE_TIME      (idx, [1:   3]) = [  8.56631E+01  3.32117E+01  1.97796E+01 ] ;
BURNUP_CYCLE_TIME         (idx, [1:   2]) = [  8.64067E-01  4.06083E-01 ] ;
BATEMAN_SOLUTION_TIME     (idx, [1:   2]) = [  1.84333E-02  1.36667E-03 ] ;
MPI_OVERHEAD_TIME         (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
ESTIMATED_RUNNING_TIME    (idx, [1:   2]) = [  8.77594E+01  1.37553E+03 ] ;
CPU_USAGE                 (idx, 1)        = 36.95938 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.87661E+01 0.00053 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.47844E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 257551.17 ;
ALLOC_MEMSIZE             (idx, 1)        = 13955.87 ;
MEMSIZE                   (idx, 1)        = 13374.75 ;
XS_MEMSIZE                (idx, 1)        = 7212.92 ;
MAT_MEMSIZE               (idx, 1)        = 4774.38 ;
RES_MEMSIZE               (idx, 1)        = 50.52 ;
IFC_MEMSIZE               (idx, 1)        = 0.00 ;
MISC_MEMSIZE              (idx, 1)        = 1336.92 ;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00 ;
UNUSED_MEMSIZE            (idx, 1)        = 581.12 ;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  5.00000E-05 ;
NEUTRON_ERG_NE            (idx, 1)        = 282063 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 229 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 1366 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 300 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 1066 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 8370 ;
TOT_TRANSMU_REA           (idx, 1)        = 2717 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:   9]) = [ 0 0 0 0 0 0 0 0 0 ] ;
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  1.01807E+16 ;
TOT_DECAY_HEAT            (idx, 1)        =  2.97002E+03 ;
TOT_SF_RATE               (idx, 1)        =  3.25002E+02 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  3.35461E+15 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  2.40528E+02 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  6.82602E+15 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  2.72946E+03 ;
INHALATION_TOXICITY       (idx, 1)        =  1.81476E+06 ;
INGESTION_TOXICITY        (idx, 1)        =  2.00871E+06 ;
ACTINIDE_INH_TOX          (idx, 1)        =  9.79878E+05 ;
ACTINIDE_ING_TOX          (idx, 1)        =  5.17072E+05 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  8.34880E+05 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  1.49164E+06 ;
SR90_ACTIVITY             (idx, 1)        =  1.38994E+10 ;
TE132_ACTIVITY            (idx, 1)        =  2.63042E+13 ;
I131_ACTIVITY             (idx, 1)        =  7.84308E+12 ;
I132_ACTIVITY             (idx, 1)        =  2.56068E+13 ;
CS134_ACTIVITY            (idx, 1)        =  7.77764E+06 ;
CS137_ACTIVITY            (idx, 1)        =  1.43963E+10 ;
PHOTON_DECAY_SOURCE       (idx, [1:   2]) = [  7.39459E+15  1.32034E+03 ] ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  1.68187E+13 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  6.70347E+07 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  1.31870E+16 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  2.55760E+10 0.00011  0.00000E+00 0.0E+00 ];

% Parameters for burnup calculation:

BURN_MATERIALS            (idx, 1)        = 264 ;
BURN_MODE                 (idx, 1)        = 2 ;
BURN_STEP                 (idx, 1)        = 1 ;
BURN_RANDOMIZE_DATA       (idx, [1:   3]) = [ 0 0 0 ] ;
BURNUP                    (idx, [1:   2]) = [  1.00000E-01         -NAN ] ;
BURN_DAYS                 (idx, [1:   2]) = [  2.63158E+00  2.63158E+00 ] ;
FIMA                      (idx, [1:   3]) = [  1.03640E-04  3.20090E+20  3.08814E+24 ] ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.73778E+00 0.00023 ];
TH232_FISS                (idx, [1:   4]) = [  2.09962E+13 0.00154  1.48985E-02 0.00152 ];
U233_FISS                 (idx, [1:   4]) = [  8.04780E+11 0.00806  5.71103E-04 0.00807 ];
U235_FISS                 (idx, [1:   4]) = [  1.32291E+15 0.00019  9.38721E-01 4.8E-05 ];
U238_FISS                 (idx, [1:   4]) = [  5.73931E+13 0.00098  4.07248E-02 0.00094 ];
PU239_FISS                (idx, [1:   4]) = [  7.09324E+12 0.00273  5.03339E-03 0.00274 ];
PU240_FISS                (idx, [1:   4]) = [  1.52905E+08 0.57619  1.09158E-07 0.57619 ];
PU241_FISS                (idx, [1:   4]) = [  8.19489E+08 0.24622  5.81535E-07 0.24622 ];
TH232_CAPT                (idx, [1:   4]) = [  1.85267E+15 0.00018  4.98852E-01 0.00012 ];
U233_CAPT                 (idx, [1:   4]) = [  8.98581E+10 0.02496  2.41948E-05 0.02496 ];
U235_CAPT                 (idx, [1:   4]) = [  2.55965E+14 0.00045  6.89215E-02 0.00043 ];
U238_CAPT                 (idx, [1:   4]) = [  9.11449E+14 0.00026  2.45418E-01 0.00021 ];
PU239_CAPT                (idx, [1:   4]) = [  3.76560E+12 0.00367  1.01393E-03 0.00367 ];
PU240_CAPT                (idx, [1:   4]) = [  7.62621E+10 0.02487  2.05356E-05 0.02487 ];
PU241_CAPT                (idx, [1:   4]) = [  1.53063E+08 0.57620  4.12552E-08 0.57621 ];
XE135_CAPT                (idx, [1:   4]) = [  8.57680E+13 0.00080  2.30941E-02 0.00080 ];
XE135M_CAPT               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC      (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_FISS     (idx, [1:   2]) = [ 100000519 1.00000E+08 ] ;
BALA_SRC_NEUTRON_NXN      (idx, [1:   2]) = [ 0 1.55279E+05 ] ;
BALA_SRC_NEUTRON_VR       (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_TOT      (idx, [1:   2]) = [ 100000519 1.00155E+08 ] ;

BALA_LOSS_NEUTRON_CAPT    (idx, [1:   2]) = [ 72491076 7.26045E+07 ] ;
BALA_LOSS_NEUTRON_FISS    (idx, [1:   2]) = [ 27509443 2.75508E+07 ] ;
BALA_LOSS_NEUTRON_LEAK    (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_CUT     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_ERR     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_TOT     (idx, [1:   2]) = [ 100000519 1.00155E+08 ] ;

BALA_NEUTRON_DIFF         (idx, [1:   2]) = [ 0 -1.71661E-05 ] ;

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   6]) = [  4.56852E+04 0.0E+00  4.56852E+04 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_POWDENS               (idx, [1:   6]) = [  3.80000E-02 0.0E+00  3.80000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   6]) = [  3.45674E+15 1.9E-06  3.45674E+15 1.9E-06  0.00000E+00 0.0E+00 ];
TOT_FISSRATE              (idx, [1:   6]) = [  1.40873E+15 1.1E-07  1.40873E+15 1.1E-07  0.00000E+00 0.0E+00 ];
TOT_CAPTRATE              (idx, [1:   6]) = [  3.71427E+15 6.5E-05  3.13668E+15 7.5E-05  5.77592E+14 8.0E-05 ];
TOT_ABSRATE               (idx, [1:   6]) = [  5.12300E+15 4.7E-05  4.54541E+15 5.2E-05  5.77592E+14 8.0E-05 ];
TOT_SRCRATE               (idx, [1:   6]) = [  5.11519E+15 0.00011  5.11519E+15 0.00011  0.00000E+00 0.0E+00 ];
TOT_FLUX                  (idx, [1:   6]) = [  2.63592E+17 8.2E-05  7.94121E+16 8.6E-05  1.84180E+17 8.5E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  5.12300E+15 4.7E-05 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.13734E+17 6.5E-05 ];
INI_FMASS                 (idx, 1)        =  1.20224E+00 ;
TOT_FMASS                 (idx, 1)        =  1.20212E+00 ;
INI_BURN_FMASS            (idx, 1)        =  1.20224E+00 ;
TOT_BURN_FMASS            (idx, 1)        =  1.20212E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  9.75547E-01 0.00016 ];
SIX_FF_F                  (idx, [1:   2]) = [  8.57727E-01 4.8E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  7.07411E-01 6.9E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.14210E+00 7.7E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  6.76041E-01 0.00017 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  6.76041E-01 0.00017 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45380E+00 2.0E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02413E+02 1.1E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  6.76043E-01 0.00017  6.71447E-01 0.00017  4.59396E-03 0.00231 ];
IMP_KEFF                  (idx, [1:   2]) = [  6.75800E-01 4.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  6.75783E-01 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  6.75800E-01 4.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  6.75800E-01 4.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.83130E+01 4.7E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.83162E+01 1.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.22770E-07 0.00086 ];
IMP_EALF                  (idx, [1:   2]) = [  2.22033E-07 0.00025 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.84937E-01 0.00090 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.84475E-01 0.00026 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  1.05223E-02 0.00128  3.18335E-04 0.00731  1.68309E-03 0.00295  1.65769E-03 0.00289  4.81327E-03 0.00187  1.52411E-03 0.00313  5.25841E-04 0.00537 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.84147E-01 0.00284  1.24857E-02 1.1E-05  3.17584E-02 5.0E-05  1.10379E-01 7.9E-05  3.19554E-01 4.2E-05  1.34124E+00 8.0E-05  8.42120E+00 0.00092 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.83275E-03 0.00186  2.06129E-04 0.01057  1.09496E-03 0.00419  1.07666E-03 0.00456  3.12112E-03 0.00284  9.91687E-04 0.00471  3.42199E-04 0.00821 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.83937E-01 0.00431  1.24856E-02 1.6E-05  3.17588E-02 7.5E-05  1.10387E-01 0.00012  3.19587E-01 6.5E-05  1.34121E+00 0.00012  8.39535E+00 0.00149 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  7.93546E-05 0.00032  7.93200E-05 0.00032  8.43973E-05 0.00291 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.36463E-05 0.00026  5.36229E-05 0.00026  5.70563E-05 0.00292 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.79126E-03 0.00235  2.06530E-04 0.01306  1.07683E-03 0.00567  1.07070E-03 0.00536  3.11304E-03 0.00346  9.86389E-04 0.00595  3.37768E-04 0.01018 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.82165E-01 0.00529  1.24853E-02 2.4E-05  3.17600E-02 9.1E-05  1.10365E-01 0.00016  3.19587E-01 8.3E-05  1.34115E+00 0.00015  8.40075E+00 0.00181 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  7.93018E-05 0.00068  7.92674E-05 0.00068  8.42828E-05 0.00751 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.36108E-05 0.00066  5.35875E-05 0.00067  5.69772E-05 0.00751 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.84774E-03 0.00770  1.98755E-04 0.04372  1.09393E-03 0.02020  1.09288E-03 0.01948  3.14190E-03 0.01171  9.90405E-04 0.02122  3.29872E-04 0.03683 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.68566E-01 0.01891  1.24852E-02 7.1E-05  3.17831E-02 0.00036  1.10268E-01 0.00048  3.19655E-01 0.00027  1.34093E+00 0.00051  8.41169E+00 0.00610 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85301E-03 0.00762  1.98734E-04 0.04288  1.09543E-03 0.01999  1.09949E-03 0.01895  3.14344E-03 0.01157  9.83484E-04 0.02075  3.32432E-04 0.03654 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.69935E-01 0.01884  1.24850E-02 7.3E-05  3.17842E-02 0.00035  1.10271E-01 0.00048  3.19651E-01 0.00026  1.34107E+00 0.00049  8.41688E+00 0.00600 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -8.64067E+01 0.00773 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  7.93783E-05 0.00022 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.36624E-05 0.00013 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.86452E-03 0.00147 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -8.64822E+01 0.00151 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  8.38644E-07 9.2E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.89325E-06 9.5E-05  2.89332E-06 9.5E-05  2.88382E-06 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  5.79271E-05 0.00012  5.79273E-05 0.00012  5.78941E-05 0.00137 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.07655E-01 6.9E-05  7.10001E-01 7.0E-05  4.87482E-01 0.00188 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04406E+01 0.00286 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  4.17209E+01 7.4E-05  4.75101E+01 0.00012 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:   4]) = '1001' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.35968E+06 0.00073  5.49178E+06 0.00035  1.14818E+07 0.00017  1.27386E+07 0.00013  1.17940E+07 0.00013  1.26746E+07 0.00015  8.59989E+06 0.00016  7.58167E+06 0.00015  5.78830E+06 0.00013  4.73251E+06 0.00017  4.08853E+06 0.00020  3.68342E+06 0.00015  3.40179E+06 0.00018  3.23395E+06 0.00017  3.15087E+06 0.00022  2.72117E+06 0.00018  2.69071E+06 0.00020  2.65357E+06 0.00018  2.61846E+06 0.00020  5.09315E+06 0.00014  4.82675E+06 0.00013  3.51171E+06 0.00017  2.22129E+06 0.00021  2.73480E+06 0.00025  2.38466E+06 0.00024  2.31766E+06 0.00026  3.97504E+06 0.00017  8.95017E+05 0.00044  1.12160E+06 0.00030  1.01512E+06 0.00028  5.92545E+05 0.00038  1.02397E+06 0.00027  6.97276E+05 0.00038  6.01185E+05 0.00045  1.16361E+05 0.00089  1.15248E+05 0.00084  1.18046E+05 0.00058  1.21382E+05 0.00096  1.20219E+05 0.00082  1.18109E+05 0.00062  1.22177E+05 0.00062  1.14561E+05 0.00079  2.16260E+05 0.00055  3.45321E+05 0.00053  4.39439E+05 0.00059  1.15844E+06 0.00035  1.21630E+06 0.00035  1.30632E+06 0.00037  8.78676E+05 0.00039  6.66876E+05 0.00046  5.32994E+05 0.00045  6.31076E+05 0.00032  1.17075E+06 0.00030  1.66280E+06 0.00022  3.40610E+06 0.00019  5.72430E+06 0.00016  9.31469E+06 0.00020  6.41826E+06 0.00019  4.79942E+06 0.00021  3.56506E+06 0.00020  3.25050E+06 0.00023  3.28708E+06 0.00022  2.81486E+06 0.00021  1.92587E+06 0.00029  1.81115E+06 0.00033  1.62544E+06 0.00019  1.42539E+06 0.00024  1.10182E+06 0.00023  7.30737E+05 0.00032  2.55917E+05 0.00048 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  6.75783E-01 0.00012 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.87475E+17 0.00012  7.61171E+16 6.4E-05 ];
INF_FISS_FLX              (idx, [1:   4]) = [  5.75081E+16 0.00013  2.19042E+16 4.1E-05 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.62890E-01 2.0E-05  1.42158E+00 2.8E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.13120E-03 0.00014  3.12330E-02 4.3E-05 ];
INF_ABS                   (idx, [1:   4]) = [  8.02517E-03 0.00012  4.75386E-02 5.0E-05 ];
INF_FISS                  (idx, [1:   4]) = [  8.93977E-04 9.3E-05  1.63057E-02 6.2E-05 ];
INF_NSF                   (idx, [1:   4]) = [  2.29072E-03 9.2E-05  3.97717E-02 6.2E-05 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.56239E+00 1.5E-05  2.43913E+00 5.4E-08 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03248E+02 6.1E-07  2.02300E+02 7.1E-09 ];
INF_INVV                  (idx, [1:   4]) = [  6.11244E-08 8.7E-05  2.75367E-06 2.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.54864E-01 2.0E-05  1.37404E+00 3.0E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.53690E-01 2.7E-05  3.40993E-01 5.9E-05 ];
INF_SCATT2                (idx, [1:   4]) = [  9.97317E-02 6.6E-05  7.96580E-02 0.00022 ];
INF_SCATT3                (idx, [1:   4]) = [  7.59349E-03 0.00061  2.38891E-02 0.00051 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.07779E-02 0.00044 -7.60909E-03 0.00158 ];
INF_SCATT5                (idx, [1:   4]) = [  6.61495E-05 0.05709  5.96151E-03 0.00140 ];
INF_SCATT6                (idx, [1:   4]) = [  5.18671E-03 0.00049 -1.46604E-02 0.00061 ];
INF_SCATT7                (idx, [1:   4]) = [  7.63052E-04 0.00347  6.29734E-04 0.01361 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.54907E-01 2.0E-05  1.37404E+00 3.0E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.53691E-01 2.7E-05  3.40993E-01 5.9E-05 ];
INF_SCATTP2               (idx, [1:   4]) = [  9.97318E-02 6.6E-05  7.96580E-02 0.00022 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.59355E-03 0.00061  2.38891E-02 0.00051 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.07778E-02 0.00044 -7.60909E-03 0.00158 ];
INF_SCATTP5               (idx, [1:   4]) = [  6.62311E-05 0.05723  5.96151E-03 0.00140 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.18668E-03 0.00049 -1.46604E-02 0.00061 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.63084E-04 0.00348  6.29734E-04 0.01361 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.24384E-01 7.3E-05  9.60459E-01 3.4E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.48555E+00 7.3E-05  3.47056E-01 3.4E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  7.98281E-03 0.00013  4.75386E-02 5.0E-05 ];
INF_REMXS                 (idx, [1:   4]) = [  2.76415E-02 4.1E-05  4.83138E-02 0.00013 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  6.41139E-02 2.6E-06  6.28264E-02 1.2E-08 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  1.49270E-03 9.5E-05  2.61659E-03 9.8E-07 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  2.36552E-11 0.00012  6.16243E-11 3.3E-05 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  4.59988E-11 0.00012  1.15925E-10 3.4E-05 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  1.20019E-10 0.00014  3.35891E-10 4.2E-05 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  1.26775E-02 1.9E-05  1.08222E-02 3.9E-08 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  2.16590E-12 0.00015  6.31844E-12 4.1E-05 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  1.00375E+00 0.00018  4.55459E+01 5.9E-05 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  1.43685E+02 0.00034  1.80503E+06 6.8E-05 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  6.36090E+01 0.00082  9.42373E+01 6.0E-05 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  9.28952E+01 0.00017  1.14057E+03 6.0E-05 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  1.45536E+02 0.00017  1.84218E+04 8.7E-05 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  5.06290E+01 0.00018  7.97967E+02 5.9E-05 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  1.11323E+02 0.00043  5.17400E+04 8.8E-05 ];
INF_I135_MACRO_ABS        (idx, [1:   4]) = [  6.52634E-09 0.00018  2.96137E-07 5.9E-05 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  8.96116E-08 0.00034  1.12574E-03 6.8E-05 ];
INF_PM147_MACRO_ABS       (idx, [1:   4]) = [  7.70675E-08 0.00082  1.14176E-07 6.0E-05 ];
INF_PM148_MACRO_ABS       (idx, [1:   4]) = [  1.70886E-10 0.00017  2.09815E-09 6.0E-05 ];
INF_PM148M_MACRO_ABS      (idx, [1:   4]) = [  2.16055E-10 0.00017  2.73480E-08 8.7E-05 ];
INF_PM149_MACRO_ABS       (idx, [1:   4]) = [  2.52074E-07 0.00018  3.97295E-06 5.9E-05 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  1.41279E-07 0.00043  6.56624E-05 8.8E-05 ];

% Poison universe-averaged densities:

I135_ADENS                (idx, [1:   2]) = [  6.50195E-09 4.7E-09 ];
XE135_ADENS               (idx, [1:   2]) = [  6.23669E-10 0.0E+00 ];
PM147_ADENS               (idx, [1:   2]) = [  1.21158E-09 0.0E+00 ];
PM148_ADENS               (idx, [1:   2]) = [  1.83956E-12 0.0E+00 ];
PM148M_ADENS              (idx, [1:   2]) = [  1.48454E-12 0.0E+00 ];
PM149_ADENS               (idx, [1:   2]) = [  4.97885E-09 2.7E-09 ];
SM149_ADENS               (idx, [1:   2]) = [  1.26908E-09 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  8.37254E-09 ;
PM148_LAMBDA              (idx, 1)        =  1.49451E-06 ;
PM148M_LAMBDA             (idx, 1)        =  1.94297E-07 ;
PM149_LAMBDA              (idx, 1)        =  3.62737E-06 ;
I135_LAMBDA               (idx, 1)        =  2.93061E-05 ;
XE135_LAMBDA              (idx, 1)        =  2.10657E-05 ;
XE135M_LAMBDA             (idx, 1)        =  7.55556E-04 ;
I135_BR                   (idx, 1)        =  9.01450E-01 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  5.35248E-01 2.0E-05  1.96160E-02 6.6E-05  7.74687E-04 0.00088  1.37327E+00 3.0E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.47903E-01 2.6E-05  5.78748E-03 0.00020  2.70939E-04 0.00132  3.40722E-01 5.9E-05 ];
INF_S2                    (idx, [1:   8]) = [  1.01420E-01 6.2E-05 -1.68855E-03 0.00047  1.64912E-04 0.00211  7.94931E-02 0.00022 ];
INF_S3                    (idx, [1:   8]) = [  9.66304E-03 0.00046 -2.06955E-03 0.00037  7.11563E-05 0.00378  2.38179E-02 0.00051 ];
INF_S4                    (idx, [1:   8]) = [ -1.00781E-02 0.00045 -6.99828E-04 0.00099  1.15462E-05 0.01732 -7.62064E-03 0.00158 ];
INF_S5                    (idx, [1:   8]) = [  5.15215E-05 0.07341  1.46281E-05 0.02909 -1.60243E-05 0.01424  5.97754E-03 0.00139 ];
INF_S6                    (idx, [1:   8]) = [  5.33309E-03 0.00048 -1.46386E-04 0.00342 -2.61095E-05 0.00753 -1.46343E-02 0.00061 ];
INF_S7                    (idx, [1:   8]) = [  9.43646E-04 0.00261 -1.80594E-04 0.00296 -2.67860E-05 0.00582  6.56520E-04 0.01299 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  5.35291E-01 2.0E-05  1.96160E-02 6.6E-05  7.74687E-04 0.00088  1.37327E+00 3.0E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.47903E-01 2.6E-05  5.78748E-03 0.00020  2.70939E-04 0.00132  3.40722E-01 5.9E-05 ];
INF_SP2                   (idx, [1:   8]) = [  1.01420E-01 6.2E-05 -1.68855E-03 0.00047  1.64912E-04 0.00211  7.94931E-02 0.00022 ];
INF_SP3                   (idx, [1:   8]) = [  9.66310E-03 0.00046 -2.06955E-03 0.00037  7.11563E-05 0.00378  2.38179E-02 0.00051 ];
INF_SP4                   (idx, [1:   8]) = [ -1.00780E-02 0.00045 -6.99828E-04 0.00099  1.15462E-05 0.01732 -7.62064E-03 0.00158 ];
INF_SP5                   (idx, [1:   8]) = [  5.16031E-05 0.07356  1.46281E-05 0.02909 -1.60243E-05 0.01424  5.97754E-03 0.00139 ];
INF_SP6                   (idx, [1:   8]) = [  5.33307E-03 0.00048 -1.46386E-04 0.00342 -2.61095E-05 0.00753 -1.46343E-02 0.00061 ];
INF_SP7                   (idx, [1:   8]) = [  9.43678E-04 0.00261 -1.80594E-04 0.00296 -2.67860E-05 0.00582  6.56520E-04 0.01299 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.38959E-01 0.00014  8.84494E-01 0.00045 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.39058E-01 0.00017  8.89510E-01 0.00076 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.39158E-01 0.00022  8.89123E-01 0.00084 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.38662E-01 0.00020  8.75030E-01 0.00072 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.39494E+00 0.00014  3.76865E-01 0.00045 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.39436E+00 0.00017  3.74743E-01 0.00076 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.39378E+00 0.00022  3.74908E-01 0.00084 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.39668E+00 0.00020  3.80944E-01 0.00072 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.83275E-03 0.00186  2.06129E-04 0.01057  1.09496E-03 0.00419  1.07666E-03 0.00456  3.12112E-03 0.00284  9.91687E-04 0.00471  3.42199E-04 0.00821 ];
LAMBDA                    (idx, [1:  14]) = [  7.83937E-01 0.00431  1.24856E-02 1.6E-05  3.17588E-02 7.5E-05  1.10387E-01 0.00012  3.19587E-01 6.5E-05  1.34121E+00 0.00012  8.39535E+00 0.00149 ];

% Pin-power distribution:

PPW_LATTICE               (idx, [1:   4]) = '1000' ;
PPW_LATTICE_TYPE          (idx, 1)        = 1 ;
PPW_PINS                  (idx, 1)        = 289 ;
PPW_POW                   (idx, [1: 1156]) = [  4.51902E-04 0.00196  3.14220E-03 0.00162  4.51741E-04 0.00171  3.13728E-03 0.00191  4.51210E-04 0.00210  3.15371E-03 0.00142  4.53062E-04 0.00120  3.19198E-03 0.00147  4.51936E-04 0.00213  3.21983E-03 0.00134  4.52756E-04 0.00220  3.25192E-03 0.00146  4.52819E-04 0.00161  3.25583E-03 0.00134  4.51920E-04 0.00207  3.25224E-03 0.00152  4.51780E-04 0.00152  3.27080E-03 0.00132  4.52857E-04 0.00188  3.25197E-03 0.00151  4.52310E-04 0.00197  3.24894E-03 0.00147  4.53235E-04 0.00165  3.25892E-03 0.00167  4.50758E-04 0.00172  3.23228E-03 0.00156  4.51662E-04 0.00171  3.19074E-03 0.00162  4.51096E-04 0.00182  3.14999E-03 0.00161  4.51086E-04 0.00168  3.13710E-03 0.00177  4.50651E-04 0.00172  3.14404E-03 0.00171  4.52522E-04 0.00229  3.13522E-03 0.00167  4.52342E-04 0.00170  3.13376E-03 0.00136  4.51839E-04 0.00244  3.17317E-03 0.00148  4.50489E-04 0.00127  3.22057E-03 0.00137  4.52483E-04 0.00165  3.27480E-03 0.00162  4.51552E-04 0.00207  3.35854E-03 0.00151  4.51836E-04 0.00161  3.30815E-03 0.00145  4.52414E-04 0.00222  3.30037E-03 0.00123  4.52102E-04 0.00228  3.35805E-03 0.00121  4.52154E-04 0.00141  3.29408E-03 0.00132  4.53877E-04 0.00168  3.30458E-03 0.00139  4.52348E-04 0.00177  3.35426E-03 0.00189  4.52167E-04 0.00190  3.28046E-03 0.00144  4.52327E-04 0.00160  3.22777E-03 0.00130  4.52044E-04 0.00202  3.16712E-03 0.00167  4.51368E-04 0.00142  3.13328E-03 0.00183  4.50957E-04 0.00176  3.14125E-03 0.00151  4.51857E-04 0.00179  3.15724E-03 0.00174  4.52870E-04 0.00168  3.17074E-03 0.00153  4.52229E-04 0.00169  3.24171E-03 0.00175  4.52668E-04 0.00207  3.37831E-03 0.00168  4.53425E-04 0.00165  3.43771E-03 0.00115  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52400E-04 0.00172  3.41309E-03 0.00138  4.52944E-04 0.00155  3.40901E-03 0.00166  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52578E-04 0.00150  3.41577E-03 0.00154  4.51702E-04 0.00184  3.41557E-03 0.00169  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52078E-04 0.00142  3.43807E-03 0.00122  4.51406E-04 0.00189  3.37562E-03 0.00115  4.52228E-04 0.00176  3.23936E-03 0.00189  4.51603E-04 0.00154  3.16805E-03 0.00153  4.51958E-04 0.00151  3.15302E-03 0.00097  4.51494E-04 0.00147  3.18579E-03 0.00154  4.50560E-04 0.00172  3.22281E-03 0.00148  4.52539E-04 0.00189  3.36537E-03 0.00153  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52848E-04 0.00195  3.47551E-03 0.00122  4.53202E-04 0.00199  3.46781E-03 0.00126  4.53497E-04 0.00173  3.37571E-03 0.00153  4.52857E-04 0.00120  3.37588E-03 0.00121  4.53020E-04 0.00145  3.43813E-03 0.00123  4.53420E-04 0.00180  3.37143E-03 0.00160  4.53401E-04 0.00163  3.38250E-03 0.00117  4.54065E-04 0.00219  3.46546E-03 0.00152  4.53907E-04 0.00143  3.48164E-03 0.00110  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51819E-04 0.00208  3.36786E-03 0.00154  4.52148E-04 0.00171  3.22845E-03 0.00138  4.51456E-04 0.00098  3.18909E-03 0.00170  4.52102E-04 0.00178  3.22265E-03 0.00143  4.54043E-04 0.00180  3.27901E-03 0.00126  4.52420E-04 0.00149  3.41964E-03 0.00126  4.53292E-04 0.00177  3.48175E-03 0.00192  4.54227E-04 0.00168  3.44110E-03 0.00107  4.54409E-04 0.00172  3.48427E-03 0.00162  4.53239E-04 0.00179  3.39480E-03 0.00116  4.51948E-04 0.00215  3.38855E-03 0.00132  4.52916E-04 0.00171  3.44398E-03 0.00120  4.52161E-04 0.00146  3.38548E-03 0.00131  4.52340E-04 0.00189  3.39120E-03 0.00169  4.53651E-04 0.00158  3.47991E-03 0.00099  4.52577E-04 0.00182  3.43196E-03 0.00135  4.53100E-04 0.00148  3.48234E-03 0.00135  4.52499E-04 0.00159  3.42280E-03 0.00139  4.51593E-04 0.00187  3.27984E-03 0.00132  4.52171E-04 0.00180  3.22474E-03 0.00138  4.52741E-04 0.00171  3.26327E-03 0.00207  4.53239E-04 0.00184  3.36308E-03 0.00113  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52162E-04 0.00186  3.47165E-03 0.00125  4.53393E-04 0.00207  3.46762E-03 0.00157  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51899E-04 0.00173  3.47168E-03 0.00133  4.53258E-04 0.00120  3.46565E-03 0.00131  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52481E-04 0.00155  3.45881E-03 0.00130  4.52874E-04 0.00175  3.46705E-03 0.00149  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52275E-04 0.00165  3.47371E-03 0.00153  4.53856E-04 0.00168  3.46158E-03 0.00163  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51033E-04 0.00202  3.35303E-03 0.00175  4.51984E-04 0.00148  3.25600E-03 0.00144  4.53314E-04 0.00179  3.26278E-03 0.00162  4.52831E-04 0.00208  3.30040E-03 0.00151  4.51912E-04 0.00154  3.39708E-03 0.00145  4.53992E-04 0.00210  3.37075E-03 0.00142  4.52299E-04 0.00190  3.38148E-03 0.00145  4.54403E-04 0.00165  3.46003E-03 0.00144  4.52925E-04 0.00188  3.39178E-03 0.00160  4.54398E-04 0.00194  3.39815E-03 0.00128  4.53863E-04 0.00187  3.46335E-03 0.00126  4.52868E-04 0.00170  3.39584E-03 0.00127  4.52757E-04 0.00175  3.39157E-03 0.00142  4.52095E-04 0.00178  3.45420E-03 0.00148  4.52279E-04 0.00216  3.39147E-03 0.00109  4.53379E-04 0.00184  3.37881E-03 0.00165  4.52028E-04 0.00167  3.41389E-03 0.00144  4.52340E-04 0.00158  3.30596E-03 0.00139  4.53167E-04 0.00135  3.25452E-03 0.00114  4.52448E-04 0.00162  3.25066E-03 0.00144  4.52618E-04 0.00143  3.30461E-03 0.00160  4.52828E-04 0.00163  3.40708E-03 0.00107  4.52529E-04 0.00188  3.36605E-03 0.00120  4.51377E-04 0.00119  3.38348E-03 0.00143  4.53293E-04 0.00179  3.45904E-03 0.00150  4.54092E-04 0.00173  3.38950E-03 0.00126  4.52709E-04 0.00131  3.39280E-03 0.00098  4.51348E-04 0.00152  3.46763E-03 0.00160  4.52932E-04 0.00188  3.39079E-03 0.00184  4.52556E-04 0.00166  3.38791E-03 0.00146  4.53426E-04 0.00153  3.45792E-03 0.00117  4.53212E-04 0.00113  3.38727E-03 0.00143  4.52154E-04 0.00213  3.37050E-03 0.00163  4.52445E-04 0.00203  3.41225E-03 0.00118  4.53266E-04 0.00157  3.29073E-03 0.00113  4.53604E-04 0.00197  3.25511E-03 0.00145  4.52205E-04 0.00196  3.27522E-03 0.00126  4.52927E-04 0.00176  3.35690E-03 0.00152  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.53318E-04 0.00168  3.43459E-03 0.00181  4.51880E-04 0.00163  3.44770E-03 0.00101  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52913E-04 0.00186  3.46687E-03 0.00168  4.52077E-04 0.00159  3.46827E-03 0.00111  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.53285E-04 0.00211  3.45710E-03 0.00158  4.53322E-04 0.00191  3.45703E-03 0.00141  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51844E-04 0.00156  3.45424E-03 0.00101  4.52767E-04 0.00108  3.43791E-03 0.00140  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.53551E-04 0.00131  3.36103E-03 0.00117  4.52628E-04 0.00164  3.26545E-03 0.00167  4.52379E-04 0.00236  3.25240E-03 0.00111  4.52578E-04 0.00222  3.30374E-03 0.00162  4.51751E-04 0.00189  3.41540E-03 0.00132  4.52995E-04 0.00161  3.36541E-03 0.00173  4.52051E-04 0.00156  3.38002E-03 0.00176  4.52407E-04 0.00164  3.46226E-03 0.00178  4.53092E-04 0.00168  3.38693E-03 0.00122  4.54030E-04 0.00169  3.39762E-03 0.00130  4.54144E-04 0.00177  3.46474E-03 0.00159  4.53002E-04 0.00156  3.38709E-03 0.00127  4.52075E-04 0.00175  3.39243E-03 0.00144  4.51590E-04 0.00164  3.45806E-03 0.00162  4.54441E-04 0.00164  3.38665E-03 0.00130  4.52208E-04 0.00150  3.36794E-03 0.00153  4.53177E-04 0.00161  3.40764E-03 0.00111  4.51879E-04 0.00134  3.30042E-03 0.00110  4.51656E-04 0.00196  3.24596E-03 0.00164  4.50282E-04 0.00168  3.24963E-03 0.00161  4.51541E-04 0.00188  3.30187E-03 0.00124  4.51192E-04 0.00174  3.42091E-03 0.00134  4.51784E-04 0.00184  3.37522E-03 0.00131  4.52187E-04 0.00115  3.39365E-03 0.00153  4.54752E-04 0.00167  3.45621E-03 0.00119  4.53427E-04 0.00143  3.38922E-03 0.00102  4.52717E-04 0.00175  3.38748E-03 0.00176  4.53181E-04 0.00171  3.45757E-03 0.00141  4.52630E-04 0.00174  3.39468E-03 0.00127  4.53129E-04 0.00173  3.37969E-03 0.00148  4.52765E-04 0.00211  3.46553E-03 0.00176  4.52684E-04 0.00130  3.38457E-03 0.00128  4.53140E-04 0.00149  3.38126E-03 0.00113  4.52510E-04 0.00154  3.40828E-03 0.00104  4.53321E-04 0.00141  3.29241E-03 0.00148  4.51335E-04 0.00176  3.25002E-03 0.00158  4.52827E-04 0.00183  3.25497E-03 0.00164  4.52311E-04 0.00169  3.35214E-03 0.00186  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52924E-04 0.00204  3.46061E-03 0.00179  4.53397E-04 0.00201  3.47825E-03 0.00116  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51741E-04 0.00182  3.47249E-03 0.00136  4.53387E-04 0.00190  3.45375E-03 0.00133  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.54635E-04 0.00162  3.45349E-03 0.00141  4.51318E-04 0.00245  3.45602E-03 0.00105  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51495E-04 0.00186  3.47151E-03 0.00146  4.52852E-04 0.00185  3.46782E-03 0.00131  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51988E-04 0.00187  3.34798E-03 0.00153  4.52799E-04 0.00122  3.25428E-03 0.00180  4.51155E-04 0.00232  3.22190E-03 0.00178  4.52591E-04 0.00196  3.27679E-03 0.00154  4.52100E-04 0.00186  3.42031E-03 0.00147  4.53339E-04 0.00225  3.48245E-03 0.00144  4.51846E-04 0.00173  3.44180E-03 0.00153  4.53802E-04 0.00163  3.47302E-03 0.00117  4.52789E-04 0.00181  3.39028E-03 0.00102  4.52086E-04 0.00177  3.38154E-03 0.00128  4.52998E-04 0.00191  3.45125E-03 0.00163  4.53493E-04 0.00178  3.37870E-03 0.00118  4.52134E-04 0.00181  3.38590E-03 0.00142  4.55130E-04 0.00156  3.46564E-03 0.00141  4.52528E-04 0.00144  3.42998E-03 0.00125  4.53300E-04 0.00154  3.47611E-03 0.00128  4.52996E-04 0.00253  3.42137E-03 0.00157  4.52689E-04 0.00177  3.27933E-03 0.00152  4.50994E-04 0.00126  3.21014E-03 0.00202  4.52539E-04 0.00114  3.19287E-03 0.00153  4.52034E-04 0.00178  3.23122E-03 0.00184  4.52899E-04 0.00172  3.36855E-03 0.00124  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52807E-04 0.00130  3.47617E-03 0.00140  4.51994E-04 0.00210  3.46571E-03 0.00149  4.52394E-04 0.00162  3.38022E-03 0.00149  4.53731E-04 0.00217  3.37054E-03 0.00131  4.50921E-04 0.00175  3.43722E-03 0.00128  4.52954E-04 0.00167  3.36199E-03 0.00167  4.52109E-04 0.00166  3.36972E-03 0.00139  4.52724E-04 0.00190  3.46732E-03 0.00109  4.53785E-04 0.00206  3.47279E-03 0.00147  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.52573E-04 0.00206  3.37783E-03 0.00150  4.54015E-04 0.00160  3.22214E-03 0.00145  4.53855E-04 0.00153  3.18864E-03 0.00159  4.53075E-04 0.00171  3.15732E-03 0.00150  4.51106E-04 0.00145  3.17223E-03 0.00131  4.52454E-04 0.00198  3.24643E-03 0.00164  4.52869E-04 0.00196  3.36365E-03 0.00148  4.51441E-04 0.00174  3.42252E-03 0.00146  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51372E-04 0.00140  3.40837E-03 0.00125  4.51404E-04 0.00144  3.40089E-03 0.00154  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.53341E-04 0.00173  3.41638E-03 0.00165  4.52808E-04 0.00193  3.41887E-03 0.00167  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  4.51051E-04 0.00180  3.42670E-03 0.00125  4.51750E-04 0.00170  3.36370E-03 0.00132  4.51442E-04 0.00244  3.24400E-03 0.00137  4.52328E-04 0.00223  3.17029E-03 0.00174  4.52405E-04 0.00243  3.14809E-03 0.00162  4.51194E-04 0.00258  3.13694E-03 0.00174  4.52950E-04 0.00141  3.13968E-03 0.00165  4.53160E-04 0.00197  3.17062E-03 0.00171  4.53832E-04 0.00141  3.23009E-03 0.00213  4.50805E-04 0.00148  3.28146E-03 0.00109  4.52593E-04 0.00170  3.35222E-03 0.00106  4.51933E-04 0.00185  3.29896E-03 0.00140  4.52425E-04 0.00193  3.30568E-03 0.00161  4.53170E-04 0.00140  3.36215E-03 0.00148  4.53359E-04 0.00185  3.30243E-03 0.00166  4.52617E-04 0.00166  3.29814E-03 0.00160  4.51333E-04 0.00220  3.35765E-03 0.00170  4.53074E-04 0.00181  3.28615E-03 0.00164  4.52869E-04 0.00199  3.22709E-03 0.00116  4.51811E-04 0.00195  3.16957E-03 0.00104  4.52974E-04 0.00201  3.14093E-03 0.00173  4.51804E-04 0.00194  3.13893E-03 0.00182  4.50752E-04 0.00176  3.14653E-03 0.00162  4.51448E-04 0.00142  3.13749E-03 0.00169  4.51074E-04 0.00154  3.16774E-03 0.00183  4.51877E-04 0.00118  3.18772E-03 0.00156  4.52516E-04 0.00214  3.22915E-03 0.00154  4.53625E-04 0.00158  3.25614E-03 0.00142  4.52069E-04 0.00152  3.25745E-03 0.00195  4.52399E-04 0.00217  3.25512E-03 0.00129  4.52028E-04 0.00152  3.26803E-03 0.00138  4.50666E-04 0.00145  3.26102E-03 0.00165  4.52441E-04 0.00195  3.25497E-03 0.00142  4.52583E-04 0.00187  3.25728E-03 0.00175  4.52873E-04 0.00150  3.23368E-03 0.00145  4.52400E-04 0.00175  3.20002E-03 0.00136  4.51944E-04 0.00180  3.15362E-03 0.00118  4.51081E-04 0.00196  3.14350E-03 0.00195  4.52138E-04 0.00196  3.15833E-03 0.00191 ];
PPW_HOM_FLUX              (idx, [1: 1156]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
PPW_FF                    (idx, [1: 1156]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1:  13]) = 'Serpent 2.2.1' ;
COMPILE_DATE              (idx, [1:  20]) = 'Oct 28 2025 11:28:10' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  53]) = 'A007_homo_U235_Th0.600_Pu0.000_U2330.000_U235E0.02000' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:   8]) = 'A007.sss' ;
WORKING_DIRECTORY         (idx, [1:  30]) = '/home/sy_lu/Modular/cases/A007' ;
HOSTNAME                  (idx, [1:   6]) = 'master' ;
CPU_TYPE                  (idx, [1:  41]) = 'Intel(R) Xeon(R) Gold 6240R CPU @ 2.40GHz' ;
CPU_MHZ                   (idx, 1)        = 83900417.0 ;
START_DATE                (idx, [1:  24]) = 'Tue May  5 16:35:33 2026' ;
COMPLETE_DATE             (idx, [1:  24]) = 'Tue May  5 18:03:19 2026' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1777970133370 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000 ;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ] ;
B1_IMPLICIT_LEAKAGE       (idx, 1)        = 0 ;
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;
SPECTRUM_COLLAPSE         (idx, 1)        = 1 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 1 ;
OMP_THREADS               (idx, 1)        = 80 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
OMP_HISTORY_PROFILE       (idx, [1:  80]) = [  1.25497E+00  9.80340E-01  1.01091E+00  1.01040E+00  9.94523E-01  9.81604E-01  1.01815E+00  9.96814E-01  9.83165E-01  9.78631E-01  9.95431E-01  9.91486E-01  1.00994E+00  9.89031E-01  9.96718E-01  9.92847E-01  9.95191E-01  1.00379E+00  1.00402E+00  9.87098E-01  9.96675E-01  1.00817E+00  9.87917E-01  1.00477E+00  1.00234E+00  9.85074E-01  9.95575E-01  9.87479E-01  1.01836E+00  1.00011E+00  9.99971E-01  9.98421E-01  1.00203E+00  9.88538E-01  1.00449E+00  9.77025E-01  1.01474E+00  9.93231E-01  9.88214E-01  9.79828E-01  1.00069E+00  1.01582E+00  1.00457E+00  1.00099E+00  9.93014E-01  9.99109E-01  9.90263E-01  1.00191E+00  1.01583E+00  9.95881E-01  9.97350E-01  9.98787E-01  9.86944E-01  1.00185E+00  9.94820E-01  9.81065E-01  9.85567E-01  9.92820E-01  9.82063E-01  9.93610E-01  9.89695E-01  9.87760E-01  9.92996E-01  1.00578E+00  9.88992E-01  1.00044E+00  1.00577E+00  9.98438E-01  9.86578E-01  9.96797E-01  9.81750E-01  1.00319E+00  9.96429E-01  1.00836E+00  9.88258E-01  1.00973E+00  9.92649E-01  1.02301E+00  1.00637E+00  9.96089E-01  ];
SHARE_BUF_ARRAY           (idx, 1)        = 0 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1:  42]) = '/home/sy_lu/data/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  38]) = '/home/sy_lu/data/endfb7/sss_endfb7.dec' ;
SFY_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  38]) = '/home/sy_lu/data/endfb7/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:   2]) = [  9.00000E-01  9.00000E-01 ] ;
ST_FRAC                   (idx, [1:   4]) = [  2.43770E-02 0.00012  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75623E-01 3.0E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.30280E-01 1.1E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.30714E-01 1.1E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.10183E+00 5.9E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CELL_SEARCH_FRAC          (idx, [1:  10]) = [  9.28730E-01 7.8E-06  7.12605E-02 0.00010  9.25724E-06 0.00289  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  4.17209E+01 7.4E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  4.17209E+01 7.4E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.53752E+01 8.9E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.76971E+00 9.8E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 100000519 ;
MEAN_POP_SIZE             (idx, [1:   2]) = [  2.00001E+05 0.00023 ] ;
MEAN_POP_WGT              (idx, [1:   2]) = [  2.00001E+05 0.00023 ] ;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  3.24365E+03 ;
RUNNING_TIME              (idx, 1)        =  8.77627E+01 ;
INIT_TIME                 (idx, [1:   2]) = [  8.19400E-01  8.19400E-01 ] ;
PROCESS_TIME              (idx, [1:   2]) = [  4.13067E-01  1.96850E-01 ] ;
TRANSPORT_CYCLE_TIME      (idx, [1:   3]) = [  8.56631E+01  3.32117E+01  1.97796E+01 ] ;
BURNUP_CYCLE_TIME         (idx, [1:   2]) = [  8.64067E-01  4.06083E-01 ] ;
BATEMAN_SOLUTION_TIME     (idx, [1:   2]) = [  1.84333E-02  1.36667E-03 ] ;
MPI_OVERHEAD_TIME         (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
ESTIMATED_RUNNING_TIME    (idx, [1:   2]) = [  8.77594E+01  1.37553E+03 ] ;
CPU_USAGE                 (idx, 1)        = 36.95937 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.87661E+01 0.00053 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  7.47844E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 257551.17 ;
ALLOC_MEMSIZE             (idx, 1)        = 13955.87 ;
MEMSIZE                   (idx, 1)        = 13374.75 ;
XS_MEMSIZE                (idx, 1)        = 7212.92 ;
MAT_MEMSIZE               (idx, 1)        = 4774.38 ;
RES_MEMSIZE               (idx, 1)        = 50.52 ;
IFC_MEMSIZE               (idx, 1)        = 0.00 ;
MISC_MEMSIZE              (idx, 1)        = 1336.92 ;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00 ;
UNUSED_MEMSIZE            (idx, 1)        = 581.12 ;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 4 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  5.00000E-05 ;
NEUTRON_ERG_NE            (idx, 1)        = 282063 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 229 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 1366 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 300 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 1066 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 8370 ;
TOT_TRANSMU_REA           (idx, 1)        = 2717 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:   9]) = [ 0 0 0 0 0 0 0 0 0 ] ;
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  1.01807E+16 ;
TOT_DECAY_HEAT            (idx, 1)        =  2.97002E+03 ;
TOT_SF_RATE               (idx, 1)        =  3.25002E+02 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  3.35461E+15 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  2.40528E+02 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  6.82602E+15 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  2.72946E+03 ;
INHALATION_TOXICITY       (idx, 1)        =  1.81476E+06 ;
INGESTION_TOXICITY        (idx, 1)        =  2.00871E+06 ;
ACTINIDE_INH_TOX          (idx, 1)        =  9.79878E+05 ;
ACTINIDE_ING_TOX          (idx, 1)        =  5.17072E+05 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  8.34880E+05 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  1.49164E+06 ;
SR90_ACTIVITY             (idx, 1)        =  1.38994E+10 ;
TE132_ACTIVITY            (idx, 1)        =  2.63042E+13 ;
I131_ACTIVITY             (idx, 1)        =  7.84308E+12 ;
I132_ACTIVITY             (idx, 1)        =  2.56068E+13 ;
CS134_ACTIVITY            (idx, 1)        =  7.77764E+06 ;
CS137_ACTIVITY            (idx, 1)        =  1.43963E+10 ;
PHOTON_DECAY_SOURCE       (idx, [1:   2]) = [  7.39459E+15  1.32034E+03 ] ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  1.68187E+13 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  6.70347E+07 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  1.31870E+16 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  2.55760E+10 0.00011  0.00000E+00 0.0E+00 ];

% Parameters for burnup calculation:

BURN_MATERIALS            (idx, 1)        = 264 ;
BURN_MODE                 (idx, 1)        = 2 ;
BURN_STEP                 (idx, 1)        = 1 ;
BURN_RANDOMIZE_DATA       (idx, [1:   3]) = [ 0 0 0 ] ;
BURNUP                    (idx, [1:   2]) = [  1.00000E-01         -NAN ] ;
BURN_DAYS                 (idx, [1:   2]) = [  2.63158E+00  2.63158E+00 ] ;
FIMA                      (idx, [1:   3]) = [  1.03640E-04  3.20090E+20  3.08814E+24 ] ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  1.73778E+00 0.00023 ];
TH232_FISS                (idx, [1:   4]) = [  2.09962E+13 0.00154  1.48985E-02 0.00152 ];
U233_FISS                 (idx, [1:   4]) = [  8.04780E+11 0.00806  5.71103E-04 0.00807 ];
U235_FISS                 (idx, [1:   4]) = [  1.32291E+15 0.00019  9.38721E-01 4.8E-05 ];
U238_FISS                 (idx, [1:   4]) = [  5.73931E+13 0.00098  4.07248E-02 0.00094 ];
PU239_FISS                (idx, [1:   4]) = [  7.09324E+12 0.00273  5.03339E-03 0.00274 ];
PU240_FISS                (idx, [1:   4]) = [  1.52905E+08 0.57619  1.09158E-07 0.57619 ];
PU241_FISS                (idx, [1:   4]) = [  8.19489E+08 0.24622  5.81535E-07 0.24622 ];
TH232_CAPT                (idx, [1:   4]) = [  1.85267E+15 0.00018  4.98852E-01 0.00012 ];
U233_CAPT                 (idx, [1:   4]) = [  8.98581E+10 0.02496  2.41948E-05 0.02496 ];
U235_CAPT                 (idx, [1:   4]) = [  2.55965E+14 0.00045  6.89215E-02 0.00043 ];
U238_CAPT                 (idx, [1:   4]) = [  9.11449E+14 0.00026  2.45418E-01 0.00021 ];
PU239_CAPT                (idx, [1:   4]) = [  3.76560E+12 0.00367  1.01393E-03 0.00367 ];
PU240_CAPT                (idx, [1:   4]) = [  7.62621E+10 0.02487  2.05356E-05 0.02487 ];
PU241_CAPT                (idx, [1:   4]) = [  1.53063E+08 0.57620  4.12552E-08 0.57621 ];
XE135_CAPT                (idx, [1:   4]) = [  8.57680E+13 0.00080  2.30941E-02 0.00080 ];
XE135M_CAPT               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC      (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_FISS     (idx, [1:   2]) = [ 100000519 1.00000E+08 ] ;
BALA_SRC_NEUTRON_NXN      (idx, [1:   2]) = [ 0 1.55279E+05 ] ;
BALA_SRC_NEUTRON_VR       (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_TOT      (idx, [1:   2]) = [ 100000519 1.00155E+08 ] ;

BALA_LOSS_NEUTRON_CAPT    (idx, [1:   2]) = [ 72491076 7.26045E+07 ] ;
BALA_LOSS_NEUTRON_FISS    (idx, [1:   2]) = [ 27509443 2.75508E+07 ] ;
BALA_LOSS_NEUTRON_LEAK    (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_CUT     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_ERR     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_TOT     (idx, [1:   2]) = [ 100000519 1.00155E+08 ] ;

BALA_NEUTRON_DIFF         (idx, [1:   2]) = [ 0 -1.71661E-05 ] ;

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   6]) = [  4.56852E+04 0.0E+00  4.56852E+04 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_POWDENS               (idx, [1:   6]) = [  3.80000E-02 0.0E+00  3.80000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   6]) = [  3.45674E+15 1.9E-06  3.45674E+15 1.9E-06  0.00000E+00 0.0E+00 ];
TOT_FISSRATE              (idx, [1:   6]) = [  1.40873E+15 1.1E-07  1.40873E+15 1.1E-07  0.00000E+00 0.0E+00 ];
TOT_CAPTRATE              (idx, [1:   6]) = [  3.71427E+15 6.5E-05  3.13668E+15 7.5E-05  5.77592E+14 8.0E-05 ];
TOT_ABSRATE               (idx, [1:   6]) = [  5.12300E+15 4.7E-05  4.54541E+15 5.2E-05  5.77592E+14 8.0E-05 ];
TOT_SRCRATE               (idx, [1:   6]) = [  5.11519E+15 0.00011  5.11519E+15 0.00011  0.00000E+00 0.0E+00 ];
TOT_FLUX                  (idx, [1:   6]) = [  2.63592E+17 8.2E-05  7.94121E+16 8.6E-05  1.84180E+17 8.5E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  5.12300E+15 4.7E-05 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  2.13734E+17 6.5E-05 ];
INI_FMASS                 (idx, 1)        =  1.20224E+00 ;
TOT_FMASS                 (idx, 1)        =  1.20212E+00 ;
INI_BURN_FMASS            (idx, 1)        =  1.20224E+00 ;
TOT_BURN_FMASS            (idx, 1)        =  1.20212E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  9.75547E-01 0.00016 ];
SIX_FF_F                  (idx, [1:   2]) = [  8.57727E-01 4.8E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  7.07411E-01 6.9E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.14210E+00 7.7E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  6.76041E-01 0.00017 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  6.76041E-01 0.00017 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45380E+00 2.0E-06 ];
FISSE                     (idx, [1:   2]) = [  2.02413E+02 1.1E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  6.76043E-01 0.00017  6.71447E-01 0.00017  4.59396E-03 0.00231 ];
IMP_KEFF                  (idx, [1:   2]) = [  6.75800E-01 4.7E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  6.75783E-01 0.00011 ];
ABS_KEFF                  (idx, [1:   2]) = [  6.75800E-01 4.7E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  6.75800E-01 4.7E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.83130E+01 4.7E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.83162E+01 1.4E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.22770E-07 0.00086 ];
IMP_EALF                  (idx, [1:   2]) = [  2.22033E-07 0.00025 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.84937E-01 0.00090 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.84475E-01 0.00026 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  1.05223E-02 0.00128  3.18335E-04 0.00731  1.68309E-03 0.00295  1.65769E-03 0.00289  4.81327E-03 0.00187  1.52411E-03 0.00313  5.25841E-04 0.00537 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.84147E-01 0.00284  1.24857E-02 1.1E-05  3.17584E-02 5.0E-05  1.10379E-01 7.9E-05  3.19554E-01 4.2E-05  1.34124E+00 8.0E-05  8.42120E+00 0.00092 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.83275E-03 0.00186  2.06129E-04 0.01057  1.09496E-03 0.00419  1.07666E-03 0.00456  3.12112E-03 0.00284  9.91687E-04 0.00471  3.42199E-04 0.00821 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.83937E-01 0.00431  1.24856E-02 1.6E-05  3.17588E-02 7.5E-05  1.10387E-01 0.00012  3.19587E-01 6.5E-05  1.34121E+00 0.00012  8.39535E+00 0.00149 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  7.93546E-05 0.00032  7.93200E-05 0.00032  8.43973E-05 0.00291 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  5.36463E-05 0.00026  5.36229E-05 0.00026  5.70563E-05 0.00292 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.79126E-03 0.00235  2.06530E-04 0.01306  1.07683E-03 0.00567  1.07070E-03 0.00536  3.11304E-03 0.00346  9.86389E-04 0.00595  3.37768E-04 0.01018 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.82165E-01 0.00529  1.24853E-02 2.4E-05  3.17600E-02 9.1E-05  1.10365E-01 0.00016  3.19587E-01 8.3E-05  1.34115E+00 0.00015  8.40075E+00 0.00181 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  7.93018E-05 0.00068  7.92674E-05 0.00068  8.42828E-05 0.00751 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  5.36108E-05 0.00066  5.35875E-05 0.00067  5.69772E-05 0.00751 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.84774E-03 0.00770  1.98755E-04 0.04372  1.09393E-03 0.02020  1.09288E-03 0.01948  3.14190E-03 0.01171  9.90405E-04 0.02122  3.29872E-04 0.03683 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.68566E-01 0.01891  1.24852E-02 7.1E-05  3.17831E-02 0.00036  1.10268E-01 0.00048  3.19655E-01 0.00027  1.34093E+00 0.00051  8.41169E+00 0.00610 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.85301E-03 0.00762  1.98734E-04 0.04288  1.09543E-03 0.01999  1.09949E-03 0.01895  3.14344E-03 0.01157  9.83484E-04 0.02075  3.32432E-04 0.03654 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.69935E-01 0.01884  1.24850E-02 7.3E-05  3.17842E-02 0.00035  1.10271E-01 0.00048  3.19651E-01 0.00026  1.34107E+00 0.00049  8.41688E+00 0.00600 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -8.64067E+01 0.00773 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  7.93783E-05 0.00022 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  5.36624E-05 0.00013 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.86452E-03 0.00147 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -8.64822E+01 0.00151 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  8.38644E-07 9.2E-05 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.89325E-06 9.5E-05  2.89332E-06 9.5E-05  2.88382E-06 0.00108 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  5.79271E-05 0.00012  5.79273E-05 0.00012  5.78941E-05 0.00137 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.07655E-01 6.9E-05  7.10001E-01 7.0E-05  4.87482E-01 0.00188 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.04406E+01 0.00286 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  4.17209E+01 7.4E-05  4.75101E+01 0.00012 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:   1]) = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.35968E+06 0.00073  5.49178E+06 0.00035  1.14818E+07 0.00017  1.27386E+07 0.00013  1.17940E+07 0.00013  1.26746E+07 0.00015  8.59989E+06 0.00016  7.58167E+06 0.00015  5.78830E+06 0.00013  4.73251E+06 0.00017  4.08853E+06 0.00020  3.68342E+06 0.00015  3.40179E+06 0.00018  3.23395E+06 0.00017  3.15087E+06 0.00022  2.72117E+06 0.00018  2.69071E+06 0.00020  2.65357E+06 0.00018  2.61846E+06 0.00020  5.09315E+06 0.00014  4.82675E+06 0.00013  3.51171E+06 0.00017  2.22129E+06 0.00021  2.73480E+06 0.00025  2.38466E+06 0.00024  2.31766E+06 0.00026  3.97504E+06 0.00017  8.95017E+05 0.00044  1.12160E+06 0.00030  1.01512E+06 0.00028  5.92545E+05 0.00038  1.02397E+06 0.00027  6.97276E+05 0.00038  6.01185E+05 0.00045  1.16361E+05 0.00089  1.15248E+05 0.00084  1.18046E+05 0.00058  1.21382E+05 0.00096  1.20219E+05 0.00082  1.18109E+05 0.00062  1.22177E+05 0.00062  1.14561E+05 0.00079  2.16260E+05 0.00055  3.45321E+05 0.00053  4.39439E+05 0.00059  1.15844E+06 0.00035  1.21630E+06 0.00035  1.30632E+06 0.00037  8.78676E+05 0.00039  6.66876E+05 0.00046  5.32994E+05 0.00045  6.31076E+05 0.00032  1.17075E+06 0.00030  1.66280E+06 0.00022  3.40610E+06 0.00019  5.72430E+06 0.00016  9.31469E+06 0.00020  6.41826E+06 0.00019  4.79942E+06 0.00021  3.56506E+06 0.00020  3.25050E+06 0.00023  3.28708E+06 0.00022  2.81486E+06 0.00021  1.92587E+06 0.00029  1.81115E+06 0.00033  1.62544E+06 0.00019  1.42539E+06 0.00024  1.10182E+06 0.00023  7.30737E+05 0.00032  2.55917E+05 0.00048 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  6.75783E-01 0.00012 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.87475E+17 0.00012  7.61171E+16 6.4E-05 ];
INF_FISS_FLX              (idx, [1:   4]) = [  5.75081E+16 0.00013  2.19042E+16 4.1E-05 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.62890E-01 2.0E-05  1.42158E+00 2.8E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  7.13120E-03 0.00014  3.12330E-02 4.3E-05 ];
INF_ABS                   (idx, [1:   4]) = [  8.02517E-03 0.00012  4.75386E-02 5.0E-05 ];
INF_FISS                  (idx, [1:   4]) = [  8.93977E-04 9.3E-05  1.63057E-02 6.2E-05 ];
INF_NSF                   (idx, [1:   4]) = [  2.29072E-03 9.2E-05  3.97717E-02 6.2E-05 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.56239E+00 1.5E-05  2.43913E+00 5.4E-08 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03248E+02 6.1E-07  2.02300E+02 7.1E-09 ];
INF_INVV                  (idx, [1:   4]) = [  6.11244E-08 8.7E-05  2.75367E-06 2.5E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.54864E-01 2.0E-05  1.37404E+00 3.0E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.53690E-01 2.7E-05  3.40993E-01 5.9E-05 ];
INF_SCATT2                (idx, [1:   4]) = [  9.97317E-02 6.6E-05  7.96580E-02 0.00022 ];
INF_SCATT3                (idx, [1:   4]) = [  7.59349E-03 0.00061  2.38891E-02 0.00051 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.07779E-02 0.00044 -7.60909E-03 0.00158 ];
INF_SCATT5                (idx, [1:   4]) = [  6.61495E-05 0.05709  5.96151E-03 0.00140 ];
INF_SCATT6                (idx, [1:   4]) = [  5.18671E-03 0.00049 -1.46604E-02 0.00061 ];
INF_SCATT7                (idx, [1:   4]) = [  7.63052E-04 0.00347  6.29734E-04 0.01361 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.54907E-01 2.0E-05  1.37404E+00 3.0E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.53691E-01 2.7E-05  3.40993E-01 5.9E-05 ];
INF_SCATTP2               (idx, [1:   4]) = [  9.97318E-02 6.6E-05  7.96580E-02 0.00022 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.59355E-03 0.00061  2.38891E-02 0.00051 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.07778E-02 0.00044 -7.60909E-03 0.00158 ];
INF_SCATTP5               (idx, [1:   4]) = [  6.62311E-05 0.05723  5.96151E-03 0.00140 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.18668E-03 0.00049 -1.46604E-02 0.00061 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.63084E-04 0.00348  6.29734E-04 0.01361 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.24384E-01 7.3E-05  9.60459E-01 3.4E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.48555E+00 7.3E-05  3.47056E-01 3.4E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  7.98281E-03 0.00013  4.75386E-02 5.0E-05 ];
INF_REMXS                 (idx, [1:   4]) = [  2.76415E-02 4.1E-05  4.83138E-02 0.00013 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  6.41139E-02 2.6E-06  6.28264E-02 1.2E-08 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  1.49270E-03 9.5E-05  2.61659E-03 9.8E-07 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  2.36552E-11 0.00012  6.16243E-11 3.3E-05 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  4.59988E-11 0.00012  1.15925E-10 3.4E-05 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  1.20019E-10 0.00014  3.35891E-10 4.2E-05 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  1.26775E-02 1.9E-05  1.08222E-02 3.9E-08 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  2.16590E-12 0.00015  6.31844E-12 4.1E-05 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  1.00375E+00 0.00018  4.55459E+01 5.9E-05 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  1.43685E+02 0.00034  1.80503E+06 6.8E-05 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  6.36090E+01 0.00082  9.42373E+01 6.0E-05 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  9.28952E+01 0.00017  1.14057E+03 6.0E-05 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  1.45536E+02 0.00017  1.84218E+04 8.7E-05 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  5.06290E+01 0.00018  7.97967E+02 5.9E-05 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  1.11323E+02 0.00043  5.17400E+04 8.8E-05 ];
INF_I135_MACRO_ABS        (idx, [1:   4]) = [  6.52634E-09 0.00018  2.96137E-07 5.9E-05 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  8.96116E-08 0.00034  1.12574E-03 6.8E-05 ];
INF_PM147_MACRO_ABS       (idx, [1:   4]) = [  7.70675E-08 0.00082  1.14176E-07 6.0E-05 ];
INF_PM148_MACRO_ABS       (idx, [1:   4]) = [  1.70886E-10 0.00017  2.09815E-09 6.0E-05 ];
INF_PM148M_MACRO_ABS      (idx, [1:   4]) = [  2.16055E-10 0.00017  2.73480E-08 8.7E-05 ];
INF_PM149_MACRO_ABS       (idx, [1:   4]) = [  2.52074E-07 0.00018  3.97295E-06 5.9E-05 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  1.41279E-07 0.00043  6.56624E-05 8.8E-05 ];

% Poison universe-averaged densities:

I135_ADENS                (idx, [1:   2]) = [  6.50195E-09 4.7E-09 ];
XE135_ADENS               (idx, [1:   2]) = [  6.23669E-10 0.0E+00 ];
PM147_ADENS               (idx, [1:   2]) = [  1.21158E-09 0.0E+00 ];
PM148_ADENS               (idx, [1:   2]) = [  1.83956E-12 0.0E+00 ];
PM148M_ADENS              (idx, [1:   2]) = [  1.48454E-12 0.0E+00 ];
PM149_ADENS               (idx, [1:   2]) = [  4.97885E-09 2.7E-09 ];
SM149_ADENS               (idx, [1:   2]) = [  1.26908E-09 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  8.37254E-09 ;
PM148_LAMBDA              (idx, 1)        =  1.49451E-06 ;
PM148M_LAMBDA             (idx, 1)        =  1.94297E-07 ;
PM149_LAMBDA              (idx, 1)        =  3.62737E-06 ;
I135_LAMBDA               (idx, 1)        =  2.93061E-05 ;
XE135_LAMBDA              (idx, 1)        =  2.10657E-05 ;
XE135M_LAMBDA             (idx, 1)        =  7.55556E-04 ;
I135_BR                   (idx, 1)        =  9.01450E-01 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  5.35248E-01 2.0E-05  1.96160E-02 6.6E-05  7.74687E-04 0.00088  1.37327E+00 3.0E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.47903E-01 2.6E-05  5.78748E-03 0.00020  2.70939E-04 0.00132  3.40722E-01 5.9E-05 ];
INF_S2                    (idx, [1:   8]) = [  1.01420E-01 6.2E-05 -1.68855E-03 0.00047  1.64912E-04 0.00211  7.94931E-02 0.00022 ];
INF_S3                    (idx, [1:   8]) = [  9.66304E-03 0.00046 -2.06955E-03 0.00037  7.11563E-05 0.00378  2.38179E-02 0.00051 ];
INF_S4                    (idx, [1:   8]) = [ -1.00781E-02 0.00045 -6.99828E-04 0.00099  1.15462E-05 0.01732 -7.62064E-03 0.00158 ];
INF_S5                    (idx, [1:   8]) = [  5.15215E-05 0.07341  1.46281E-05 0.02909 -1.60243E-05 0.01424  5.97754E-03 0.00139 ];
INF_S6                    (idx, [1:   8]) = [  5.33309E-03 0.00048 -1.46386E-04 0.00342 -2.61095E-05 0.00753 -1.46343E-02 0.00061 ];
INF_S7                    (idx, [1:   8]) = [  9.43646E-04 0.00261 -1.80594E-04 0.00296 -2.67860E-05 0.00582  6.56520E-04 0.01299 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  5.35291E-01 2.0E-05  1.96160E-02 6.6E-05  7.74687E-04 0.00088  1.37327E+00 3.0E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.47903E-01 2.6E-05  5.78748E-03 0.00020  2.70939E-04 0.00132  3.40722E-01 5.9E-05 ];
INF_SP2                   (idx, [1:   8]) = [  1.01420E-01 6.2E-05 -1.68855E-03 0.00047  1.64912E-04 0.00211  7.94931E-02 0.00022 ];
INF_SP3                   (idx, [1:   8]) = [  9.66310E-03 0.00046 -2.06955E-03 0.00037  7.11563E-05 0.00378  2.38179E-02 0.00051 ];
INF_SP4                   (idx, [1:   8]) = [ -1.00780E-02 0.00045 -6.99828E-04 0.00099  1.15462E-05 0.01732 -7.62064E-03 0.00158 ];
INF_SP5                   (idx, [1:   8]) = [  5.16031E-05 0.07356  1.46281E-05 0.02909 -1.60243E-05 0.01424  5.97754E-03 0.00139 ];
INF_SP6                   (idx, [1:   8]) = [  5.33307E-03 0.00048 -1.46386E-04 0.00342 -2.61095E-05 0.00753 -1.46343E-02 0.00061 ];
INF_SP7                   (idx, [1:   8]) = [  9.43678E-04 0.00261 -1.80594E-04 0.00296 -2.67860E-05 0.00582  6.56520E-04 0.01299 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.38959E-01 0.00014  8.84494E-01 0.00045 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.39058E-01 0.00017  8.89510E-01 0.00076 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.39158E-01 0.00022  8.89123E-01 0.00084 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.38662E-01 0.00020  8.75030E-01 0.00072 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.39494E+00 0.00014  3.76865E-01 0.00045 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.39436E+00 0.00017  3.74743E-01 0.00076 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.39378E+00 0.00022  3.74908E-01 0.00084 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.39668E+00 0.00020  3.80944E-01 0.00072 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.83275E-03 0.00186  2.06129E-04 0.01057  1.09496E-03 0.00419  1.07666E-03 0.00456  3.12112E-03 0.00284  9.91687E-04 0.00471  3.42199E-04 0.00821 ];
LAMBDA                    (idx, [1:  14]) = [  7.83937E-01 0.00431  1.24856E-02 1.6E-05  3.17588E-02 7.5E-05  1.10387E-01 0.00012  3.19587E-01 6.5E-05  1.34121E+00 0.00012  8.39535E+00 0.00149 ];

% Assembly discontinuity factors (order: W-S-E-N / NW-NE-SE-SW):

DF_SURFACE                (idx, [1:   3]) = 'ADF' ;
DF_SURFACE_TYPE           (idx, 1)        = 6 ;
DF_SURFACE_N_PARAM        (idx, 1)        = 3 ;
DF_SURFACE_PARAMS         (idx, [1:   3]) = [ 0.00000E+00  0.00000E+00  1.07500E+01 ];
DF_SYM                    (idx, 1)        = 1 ;
DF_N_SURF                 (idx, 1)        = 4 ;
DF_N_CORN                 (idx, 1)        = 4 ;
DF_N_SGN                  (idx, 1)        = 4 ;
DF_VOLUME                 (idx, 1)        =  4.62250E+02 ;
DF_SURF_AREA              (idx, [1:   4]) = [ 2.15000E+01  2.15000E+01  2.15000E+01  2.15000E+01 ];
DF_MID_AREA               (idx, [1:   4]) = [ 2.15000E+00  2.15000E+00  2.15000E+00  2.15000E+00 ];
DF_CORN_AREA              (idx, [1:   4]) = [ 2.15000E+00  2.15000E+00  2.15000E+00  2.15000E+00 ];
DF_SURF_IN_CURR           (idx, [1:  16]) = [  2.18821E+15 0.00015  8.66488E+14 0.00020  2.18821E+15 0.00015  8.66488E+14 0.00020  2.18821E+15 0.00015  8.66488E+14 0.00020  2.18821E+15 0.00015  8.66488E+14 0.00020 ];
DF_SURF_OUT_CURR          (idx, [1:  16]) = [  2.18821E+15 0.00015  8.66488E+14 0.00020  2.18821E+15 0.00015  8.66488E+14 0.00020  2.18821E+15 0.00015  8.66488E+14 0.00020  2.18821E+15 0.00015  8.66488E+14 0.00020 ];
DF_SURF_NET_CURR          (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_IN_CURR            (idx, [1:  16]) = [  2.18092E+14 0.00035  8.82540E+13 0.00069  2.18092E+14 0.00035  8.82540E+13 0.00069  2.18092E+14 0.00035  8.82540E+13 0.00069  2.18092E+14 0.00035  8.82540E+13 0.00069 ];
DF_MID_OUT_CURR           (idx, [1:  16]) = [  2.18092E+14 0.00035  8.82540E+13 0.00069  2.18092E+14 0.00035  8.82540E+13 0.00069  2.18092E+14 0.00035  8.82540E+13 0.00069  2.18092E+14 0.00035  8.82540E+13 0.00069 ];
DF_MID_NET_CURR           (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  2.19467E+14 0.00046  8.51020E+13 0.00082  2.19467E+14 0.00046  8.51020E+13 0.00082  2.19467E+14 0.00046  8.51020E+13 0.00082  2.19467E+14 0.00046  8.51020E+13 0.00082 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  2.19467E+14 0.00046  8.51020E+13 0.00082  2.19467E+14 0.00046  8.51020E+13 0.00082  2.19467E+14 0.00046  8.51020E+13 0.00082  2.19467E+14 0.00046  8.51020E+13 0.00082 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  4.05569E+14 0.00012  1.64664E+14 7.6E-05 ];
DF_HET_SURF_FLUX          (idx, [1:  16]) = [  4.04299E+14 0.00021  1.62864E+14 0.00021  4.04299E+14 0.00021  1.62864E+14 0.00021  4.04299E+14 0.00021  1.62864E+14 0.00021  4.04299E+14 0.00021  1.62864E+14 0.00021 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  4.04850E+14 0.00056  1.60156E+14 0.00096  4.04850E+14 0.00056  1.60156E+14 0.00096  4.04850E+14 0.00056  1.60156E+14 0.00096  4.04850E+14 0.00056  1.60156E+14 0.00096 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  16]) = [  4.05569E+14 0.00012  1.64664E+14 7.6E-05  4.05569E+14 0.00012  1.64664E+14 7.6E-05  4.05569E+14 0.00012  1.64664E+14 7.6E-05  4.05569E+14 0.00012  1.64664E+14 7.6E-05 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  4.05569E+14 0.00012  1.64664E+14 7.6E-05  4.05569E+14 0.00012  1.64664E+14 7.6E-05  4.05569E+14 0.00012  1.64664E+14 7.6E-05  4.05569E+14 0.00012  1.64664E+14 7.6E-05 ];
DF_SURF_DF                (idx, [1:  16]) = [  9.96869E-01 0.00015  9.89066E-01 0.00020  9.96869E-01 0.00015  9.89066E-01 0.00020  9.96869E-01 0.00015  9.89066E-01 0.00020  9.96869E-01 0.00015  9.89066E-01 0.00020 ];
DF_CORN_DF                (idx, [1:  16]) = [  9.98229E-01 0.00054  9.72621E-01 0.00098  9.98229E-01 0.00054  9.72621E-01 0.00098  9.98229E-01 0.00054  9.72621E-01 0.00098  9.98229E-01 0.00054  9.72621E-01 0.00098 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

