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
TITLE                     (idx, [1:  53]) = 'A001_homo_U235_Th0.000_Pu0.000_U2330.000_U235E0.02000' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:   8]) = 'A001.sss' ;
WORKING_DIRECTORY         (idx, [1:  30]) = '/home/sy_lu/Modular/cases/A001' ;
HOSTNAME                  (idx, [1:   6]) = 'master' ;
CPU_TYPE                  (idx, [1:  41]) = 'Intel(R) Xeon(R) Gold 6240R CPU @ 2.40GHz' ;
CPU_MHZ                   (idx, 1)        = 83900417.0 ;
START_DATE                (idx, [1:  24]) = 'Tue Apr 28 21:44:22 2026' ;
COMPLETE_DATE             (idx, [1:  24]) = 'Thu Apr 30 09:41:31 2026' ;

% Run parameters:

POP                       (idx, 1)        = 200000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1777383862470 ;
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
OMP_HISTORY_PROFILE       (idx, [1:  80]) = [  1.09740E+00  9.22718E-01  9.14328E-01  1.02061E+00  1.26674E+00  9.01458E-01  9.25803E-01  9.39270E-01  1.20486E+00  8.99908E-01  9.19199E-01  9.08238E-01  9.02702E-01  9.04619E-01  1.27589E+00  9.16294E-01  9.29575E-01  9.15118E-01  9.16541E-01  9.95460E-01  1.20347E+00  1.24003E+00  1.26717E+00  9.10097E-01  9.16474E-01  9.00187E-01  9.00483E-01  9.08792E-01  9.13965E-01  9.20557E-01  1.27668E+00  9.39620E-01  9.16796E-01  9.12555E-01  1.23076E+00  1.26320E+00  9.22910E-01  9.19379E-01  9.06486E-01  1.27194E+00  9.09646E-01  1.27484E+00  9.20303E-01  9.04142E-01  9.18409E-01  9.17981E-01  9.13808E-01  9.14622E-01  1.26192E+00  9.28967E-01  1.27825E+00  9.17988E-01  9.05383E-01  9.53887E-01  9.89268E-01  1.23878E+00  1.28099E+00  9.20877E-01  1.26653E+00  1.27552E+00  8.96421E-01  9.25058E-01  9.04736E-01  9.03343E-01  9.07322E-01  9.16838E-01  9.07854E-01  9.23196E-01  9.11305E-01  9.29879E-01  9.20160E-01  9.20442E-01  9.00495E-01  9.07623E-01  9.14955E-01  1.12376E+00  9.19907E-01  1.22588E+00  9.16308E-01  9.14112E-01  ];
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

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 9.3E-10  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:   2]) = [  9.00000E-01  9.00000E-01 ] ;
ST_FRAC                   (idx, [1:   4]) = [  2.51453E-02 0.00013  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.74855E-01 3.4E-06  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  7.44617E-01 1.3E-05  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  7.45148E-01 1.3E-05  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  2.96975E+00 5.7E-05  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CELL_SEARCH_FRAC          (idx, [1:  10]) = [  9.19965E-01 8.3E-06  8.00286E-02 9.6E-05  6.80237E-06 0.00383  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  3.21024E+01 6.6E-05  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  3.21024E+01 6.6E-05  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.09795E+01 8.6E-05  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.12393E+00 8.9E-05  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 500 ;
SIMULATED_HISTORIES       (idx, 1)        = 100001789 ;
MEAN_POP_SIZE             (idx, [1:   2]) = [  2.00004E+05 0.00024 ] ;
MEAN_POP_WGT              (idx, [1:   2]) = [  2.00004E+05 0.00024 ] ;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  6.26249E+04 ;
RUNNING_TIME              (idx, 1)        =  2.15715E+03 ;
INIT_TIME                 (idx, [1:   2]) = [  1.07990E+00  1.07990E+00 ] ;
PROCESS_TIME              (idx, [1:   2]) = [  2.07591E+01  5.08217E-01 ] ;
TRANSPORT_CYCLE_TIME      (idx, [1:   3]) = [  2.10766E+03  4.19387E+01  3.04578E+01 ] ;
BURNUP_CYCLE_TIME         (idx, [1:   2]) = [  2.75638E+01  5.65617E-01 ] ;
BATEMAN_SOLUTION_TIME     (idx, [1:   2]) = [  5.66200E-01  2.05000E-03 ] ;
MPI_OVERHEAD_TIME         (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
ESTIMATED_RUNNING_TIME    (idx, [1:   2]) = [  2.15715E+03  2.15715E+03 ] ;
CPU_USAGE                 (idx, 1)        = 29.03132 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  3.40949E+01 0.00194 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  5.39616E-01 ;

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

TOT_ACTIVITY              (idx, 1)        =  1.07116E+16 ;
TOT_DECAY_HEAT            (idx, 1)        =  2.77905E+03 ;
TOT_SF_RATE               (idx, 1)        =  1.58444E+06 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  2.75879E+15 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  1.96872E+02 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  7.95278E+15 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  2.58213E+03 ;
INHALATION_TOXICITY       (idx, 1)        =  1.32324E+08 ;
INGESTION_TOXICITY        (idx, 1)        =  6.01401E+06 ;
ACTINIDE_INH_TOX          (idx, 1)        =  1.21446E+08 ;
ACTINIDE_ING_TOX          (idx, 1)        =  1.37600E+06 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  1.08783E+07 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  4.63801E+06 ;
SR90_ACTIVITY             (idx, 1)        =  3.73577E+12 ;
TE132_ACTIVITY            (idx, 1)        =  6.74953E+13 ;
I131_ACTIVITY             (idx, 1)        =  4.89833E+13 ;
I132_ACTIVITY             (idx, 1)        =  7.01289E+13 ;
CS134_ACTIVITY            (idx, 1)        =  1.50829E+13 ;
CS137_ACTIVITY            (idx, 1)        =  7.08153E+12 ;
PHOTON_DECAY_SOURCE       (idx, [1:   2]) = [  9.36644E+15  1.24378E+03 ] ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  1.08700E+13 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  5.11778E+12 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  1.54560E+16 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  2.46283E+10 0.00012  0.00000E+00 0.0E+00 ];

% Parameters for burnup calculation:

BURN_MATERIALS            (idx, 1)        = 264 ;
BURN_MODE                 (idx, 1)        = 2 ;
BURN_STEP                 (idx, 1)        = 25 ;
BURN_RANDOMIZE_DATA       (idx, [1:   3]) = [ 0 0 0 ] ;
BURNUP                    (idx, [1:   2]) = [  5.00000E+01         -NAN ] ;
BURN_DAYS                 (idx, [1:   2]) = [  1.31579E+03  2.10526E+02 ] ;
FIMA                      (idx, [1:   3]) = [  5.16009E-02  1.57259E+23  2.89035E+24 ] ;

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  9.82676E-01 0.00023 ];
U235_FISS                 (idx, [1:   4]) = [  5.24693E+13 0.00096  3.82724E-02 0.00094 ];
U238_FISS                 (idx, [1:   4]) = [  1.33547E+14 0.00063  9.74119E-02 0.00059 ];
PU239_FISS                (idx, [1:   4]) = [  8.64630E+14 0.00022  6.30684E-01 0.00015 ];
PU240_FISS                (idx, [1:   4]) = [  2.31363E+12 0.00457  1.68761E-03 0.00456 ];
PU241_FISS                (idx, [1:   4]) = [  3.08291E+14 0.00039  2.24876E-01 0.00035 ];
U235_CAPT                 (idx, [1:   4]) = [  1.10091E+13 0.00214  3.08961E-03 0.00214 ];
U238_CAPT                 (idx, [1:   4]) = [  1.31678E+15 0.00022  3.69541E-01 0.00015 ];
PU239_CAPT                (idx, [1:   4]) = [  4.54256E+14 0.00033  1.27482E-01 0.00032 ];
PU240_CAPT                (idx, [1:   4]) = [  4.34383E+14 0.00035  1.21905E-01 0.00031 ];
PU241_CAPT                (idx, [1:   4]) = [  1.09193E+14 0.00065  3.06438E-02 0.00064 ];
XE135_CAPT                (idx, [1:   4]) = [  8.87917E+13 0.00075  2.49184E-02 0.00074 ];
XE135M_CAPT               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC      (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_FISS     (idx, [1:   2]) = [ 100001789 1.00000E+08 ] ;
BALA_SRC_NEUTRON_NXN      (idx, [1:   2]) = [ 0 1.74177E+05 ] ;
BALA_SRC_NEUTRON_VR       (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_TOT      (idx, [1:   2]) = [ 100001789 1.00174E+08 ] ;

BALA_LOSS_NEUTRON_CAPT    (idx, [1:   2]) = [ 72214036 7.23415E+07 ] ;
BALA_LOSS_NEUTRON_FISS    (idx, [1:   2]) = [ 27787753 2.78327E+07 ] ;
BALA_LOSS_NEUTRON_LEAK    (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_CUT     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_ERR     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_TOT     (idx, [1:   2]) = [ 100001789 1.00174E+08 ] ;

BALA_NEUTRON_DIFF         (idx, [1:   2]) = [ 0 -1.08480E-05 ] ;

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   6]) = [  4.57677E+04 4.4E-09  4.57677E+04 4.4E-09  0.00000E+00 0.0E+00 ];
TOT_POWDENS               (idx, [1:   6]) = [  3.80000E-02 0.0E+00  3.80000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_GENRATE               (idx, [1:   6]) = [  3.93268E+15 2.3E-06  3.93268E+15 2.3E-06  0.00000E+00 0.0E+00 ];
TOT_FISSRATE              (idx, [1:   6]) = [  1.37127E+15 1.6E-07  1.37127E+15 1.6E-07  0.00000E+00 0.0E+00 ];
TOT_CAPTRATE              (idx, [1:   6]) = [  3.56318E+15 8.7E-05  3.23098E+15 9.5E-05  3.32196E+14 0.00011 ];
TOT_ABSRATE               (idx, [1:   6]) = [  4.93445E+15 6.3E-05  4.60225E+15 6.6E-05  3.32196E+14 0.00011 ];
TOT_SRCRATE               (idx, [1:   6]) = [  4.92566E+15 0.00012  4.92566E+15 0.00012  0.00000E+00 0.0E+00 ];
TOT_FLUX                  (idx, [1:   6]) = [  2.19024E+17 9.5E-05  6.59212E+16 0.00010  1.53103E+17 9.6E-05 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  4.93445E+15 6.3E-05 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  1.58393E+17 8.0E-05 ];
INI_FMASS                 (idx, 1)        =  1.20441E+00 ;
TOT_FMASS                 (idx, 1)        =  1.14264E+00 ;
INI_BURN_FMASS            (idx, 1)        =  1.20441E+00 ;
TOT_BURN_FMASS            (idx, 1)        =  1.14264E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.22869E+00 0.00016 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.07345E-01 4.1E-05 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.00181E-01 8.1E-05 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.19295E+00 8.5E-05 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  7.98217E-01 0.00016 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  7.98217E-01 0.00016 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.86791E+00 2.3E-06 ];
FISSE                     (idx, [1:   2]) = [  2.08317E+02 1.6E-07 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  7.98200E-01 0.00016  7.94970E-01 0.00016  3.24707E-03 0.00294 ];
IMP_KEFF                  (idx, [1:   2]) = [  7.98374E-01 6.4E-05 ];
COL_KEFF                  (idx, [1:   2]) = [  7.98412E-01 0.00012 ];
ABS_KEFF                  (idx, [1:   2]) = [  7.98374E-01 6.4E-05 ];
ABS_KINF                  (idx, [1:   2]) = [  7.98374E-01 6.4E-05 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.70941E+01 6.2E-05 ];
IMP_ALF                   (idx, [1:   2]) = [  1.70952E+01 2.2E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  7.53837E-07 0.00106 ];
IMP_EALF                  (idx, [1:   2]) = [  7.52860E-07 0.00038 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  3.30744E-01 0.00066 ];
IMP_AFGE                  (idx, [1:   2]) = [  3.30527E-01 0.00024 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  5.49616E-03 0.00159  1.15375E-04 0.01058  1.09678E-03 0.00351  8.41457E-04 0.00391  2.21266E-03 0.00239  9.65381E-04 0.00361  2.64508E-04 0.00705 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.01506E-01 0.00364  1.27695E-02 0.00037  3.00909E-02 4.2E-05  1.12302E-01 0.00016  3.23660E-01 0.00011  1.17625E+00 0.00068  7.09168E+00 0.00352 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  4.07395E-03 0.00232  8.57143E-05 0.01636  8.06856E-04 0.00543  6.19965E-04 0.00607  1.64181E-03 0.00363  7.21631E-04 0.00576  1.97971E-04 0.01084 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.05476E-01 0.00552  1.27643E-02 0.00062  3.00919E-02 6.9E-05  1.12309E-01 0.00025  3.23674E-01 0.00018  1.17626E+00 0.00102  7.06961E+00 0.00523 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  4.03986E-05 0.00034  4.03808E-05 0.00034  4.47475E-05 0.00432 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  3.22457E-05 0.00030  3.22316E-05 0.00030  3.57162E-05 0.00430 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  4.06757E-03 0.00293  8.56851E-05 0.01936  8.12525E-04 0.00690  6.27663E-04 0.00740  1.63165E-03 0.00481  7.12175E-04 0.00705  1.97871E-04 0.01359 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  7.06517E-01 0.00720  1.27487E-02 0.00082  3.00929E-02 8.7E-05  1.12309E-01 0.00032  3.23693E-01 0.00022  1.17641E+00 0.00139  7.13364E+00 0.00674 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  4.03490E-05 0.00082  4.03326E-05 0.00082  4.41952E-05 0.01078 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  3.22063E-05 0.00082  3.21932E-05 0.00082  3.52769E-05 0.01078 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  4.09039E-03 0.01005  9.16091E-05 0.07025  8.28512E-04 0.02124  6.32508E-04 0.02530  1.62213E-03 0.01626  7.29997E-04 0.02501  1.85630E-04 0.04734 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  6.83810E-01 0.02401  1.27812E-02 0.00221  3.00862E-02 0.00029  1.12381E-01 0.00103  3.23569E-01 0.00071  1.18479E+00 0.00435  7.25738E+00 0.02024 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  4.08401E-03 0.00986  9.28005E-05 0.06828  8.26447E-04 0.02087  6.27056E-04 0.02505  1.62568E-03 0.01596  7.24873E-04 0.02457  1.87153E-04 0.04646 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  6.87898E-01 0.02385  1.27791E-02 0.00220  3.00885E-02 0.00029  1.12379E-01 0.00102  3.23528E-01 0.00070  1.18374E+00 0.00432  7.25403E+00 0.02012 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -1.01457E+02 0.01009 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  4.03761E-05 0.00023 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  3.22278E-05 0.00016 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  4.07993E-03 0.00169 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -1.01053E+02 0.00173 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.47993E-07 0.00012 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.53764E-06 9.2E-05  2.53770E-06 9.3E-05  2.52480E-06 0.00141 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  3.73040E-05 0.00014  3.73035E-05 0.00014  3.74197E-05 0.00205 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  6.00613E-01 8.1E-05  6.01207E-01 8.1E-05  4.93775E-01 0.00249 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.10492E+01 0.00346 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  3.21024E+01 6.6E-05  3.58060E+01 0.00012 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:   1]) = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  1.61945E+06 0.00055  5.93603E+06 0.00037  1.16904E+07 0.00020  1.25239E+07 0.00020  1.15687E+07 0.00015  1.24116E+07 0.00015  8.45681E+06 0.00018  7.49356E+06 0.00018  5.73941E+06 0.00024  4.68914E+06 0.00018  4.05082E+06 0.00020  3.65082E+06 0.00021  3.37386E+06 0.00020  3.20934E+06 0.00019  3.13007E+06 0.00018  2.70554E+06 0.00020  2.67541E+06 0.00022  2.65381E+06 0.00027  2.60887E+06 0.00022  5.08920E+06 0.00016  4.93997E+06 0.00013  3.55917E+06 0.00020  2.31599E+06 0.00019  2.65611E+06 0.00021  2.54695E+06 0.00019  2.26042E+06 0.00024  3.60965E+06 0.00018  8.43698E+05 0.00035  1.00622E+06 0.00027  9.29084E+05 0.00024  5.52437E+05 0.00049  9.46630E+05 0.00039  6.02441E+05 0.00035  4.81595E+05 0.00038  7.82058E+04 0.00112  6.36766E+04 0.00071  5.49468E+04 0.00095  5.27693E+04 0.00096  5.34293E+04 0.00110  5.88928E+04 0.00103  7.28662E+04 0.00089  7.73217E+04 0.00060  1.58374E+05 0.00077  2.67600E+05 0.00064  3.52568E+05 0.00062  9.47511E+05 0.00030  9.86527E+05 0.00034  1.02060E+06 0.00031  6.20369E+05 0.00040  4.16177E+05 0.00038  3.04605E+05 0.00063  3.44721E+05 0.00048  6.32239E+05 0.00034  9.04550E+05 0.00036  1.86538E+06 0.00024  3.12621E+06 0.00019  5.05303E+06 0.00025  3.47072E+06 0.00020  2.59255E+06 0.00026  1.92514E+06 0.00027  1.75502E+06 0.00027  1.77323E+06 0.00024  1.51925E+06 0.00028  1.03975E+06 0.00028  9.78261E+05 0.00027  8.77158E+05 0.00028  7.67678E+05 0.00031  5.94523E+05 0.00032  3.93583E+05 0.00052  1.37674E+05 0.00057 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  7.98412E-01 0.00013 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  1.78266E+17 0.00013  4.07585E+16 7.8E-05 ];
INF_FISS_FLX              (idx, [1:   4]) = [  5.45302E+16 0.00015  1.13911E+16 4.2E-05 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  5.61040E-01 1.9E-05  1.43230E+00 2.7E-05 ];
INF_CAPT                  (idx, [1:   4]) = [  9.84201E-03 9.4E-05  4.43758E-02 5.4E-05 ];
INF_ABS                   (idx, [1:   4]) = [  1.10964E-02 8.5E-05  7.25334E-02 6.7E-05 ];
INF_FISS                  (idx, [1:   4]) = [  1.25440E-03 0.00010  2.81576E-02 8.9E-05 ];
INF_NSF                   (idx, [1:   4]) = [  3.56621E-03 0.00010  8.08903E-02 8.9E-05 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.84297E+00 1.3E-05  2.87277E+00 2.3E-07 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.07631E+02 4.3E-07  2.08451E+02 9.4E-08 ];
INF_INVV                  (idx, [1:   4]) = [  5.45457E-08 6.1E-05  2.70619E-06 3.6E-05 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  5.49945E-01 2.0E-05  1.35977E+00 3.1E-05 ];
INF_SCATT1                (idx, [1:   4]) = [  2.52499E-01 3.6E-05  3.46505E-01 5.8E-05 ];
INF_SCATT2                (idx, [1:   4]) = [  9.93417E-02 6.9E-05  8.21940E-02 0.00018 ];
INF_SCATT3                (idx, [1:   4]) = [  7.35835E-03 0.00071  2.46324E-02 0.00055 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.07854E-02 0.00042 -7.31663E-03 0.00190 ];
INF_SCATT5                (idx, [1:   4]) = [  1.95443E-04 0.01628  5.85292E-03 0.00182 ];
INF_SCATT6                (idx, [1:   4]) = [  5.33071E-03 0.00072 -1.45849E-02 0.00077 ];
INF_SCATT7                (idx, [1:   4]) = [  8.06685E-04 0.00451  4.88403E-04 0.02009 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  5.49993E-01 2.0E-05  1.35977E+00 3.1E-05 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.52499E-01 3.6E-05  3.46505E-01 5.8E-05 ];
INF_SCATTP2               (idx, [1:   4]) = [  9.93420E-02 6.9E-05  8.21940E-02 0.00018 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.35844E-03 0.00071  2.46324E-02 0.00055 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.07854E-02 0.00042 -7.31663E-03 0.00190 ];
INF_SCATTP5               (idx, [1:   4]) = [  1.95446E-04 0.01628  5.85292E-03 0.00182 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.33072E-03 0.00072 -1.45849E-02 0.00077 ];
INF_SCATTP7               (idx, [1:   4]) = [  8.06686E-04 0.00452  4.88403E-04 0.02009 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.21721E-01 5.6E-05  9.71045E-01 4.0E-05 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.50339E+00 5.6E-05  3.43273E-01 4.0E-05 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  1.10483E-02 8.7E-05  7.25334E-02 6.7E-05 ];
INF_REMXS                 (idx, [1:   4]) = [  2.79318E-02 3.8E-05  7.36370E-02 0.00013 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  6.82004E-02 2.4E-06  6.62553E-02 3.7E-07 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  3.02014E-03 0.00014  8.28047E-03 1.0E-05 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  2.16040E-09 0.00011  4.71378E-09 1.3E-05 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  5.15256E-09 9.2E-05  9.31598E-09 1.2E-05 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  1.60028E-08 0.00010  3.28993E-08 1.3E-05 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  1.49841E-02 1.2E-05  1.27715E-02 1.5E-06 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  3.34228E-10 8.2E-05  6.03946E-10 1.2E-05 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  8.54962E-01 0.00013  4.36775E+01 6.1E-05 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  1.07939E+02 0.00038  1.71652E+06 6.8E-05 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  4.74646E+01 0.00059  9.02480E+01 6.2E-05 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  8.24538E+01 0.00012  1.09341E+03 6.1E-05 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  1.23620E+02 0.00013  1.74690E+04 0.00012 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  4.58806E+01 0.00014  7.65510E+02 6.1E-05 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  9.15251E+01 0.00044  4.91845E+04 6.8E-05 ];
INF_I135_MACRO_ABS        (idx, [1:   4]) = [  5.69942E-09 0.00013  2.91167E-07 6.1E-05 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  1.36880E-07 0.00038  2.17675E-03 6.8E-05 ];
INF_PM147_MACRO_ABS       (idx, [1:   4]) = [  8.57054E-05 0.00059  1.62958E-04 6.2E-05 ];
INF_PM148_MACRO_ABS       (idx, [1:   4]) = [  1.28040E-06 0.00012  1.69793E-05 6.1E-05 ];
INF_PM148M_MACRO_ABS      (idx, [1:   4]) = [  1.52970E-06 0.00013  2.16166E-04 0.00012 ];
INF_PM149_MACRO_ABS       (idx, [1:   4]) = [  7.69605E-07 0.00014  1.28407E-05 6.1E-05 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  1.31265E-06 0.00044  7.05400E-04 6.8E-05 ];

% Poison universe-averaged densities:

I135_ADENS                (idx, [1:   2]) = [  6.66629E-09 0.0E+00 ];
XE135_ADENS               (idx, [1:   2]) = [  1.26812E-09 3.8E-09 ];
PM147_ADENS               (idx, [1:   2]) = [  1.80567E-06 7.6E-09 ];
PM148_ADENS               (idx, [1:   2]) = [  1.55287E-08 2.7E-09 ];
PM148M_ADENS              (idx, [1:   2]) = [  1.23742E-08 7.6E-09 ];
PM149_ADENS               (idx, [1:   2]) = [  1.67741E-08 0.0E+00 ];
SM149_ADENS               (idx, [1:   2]) = [  1.43419E-08 4.7E-09 ];

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

INF_S0                    (idx, [1:   8]) = [  5.33109E-01 1.9E-05  1.68363E-02 8.2E-05  1.10522E-03 0.00109  1.35867E+00 3.1E-05 ];
INF_S1                    (idx, [1:   8]) = [  2.47635E-01 3.6E-05  4.86336E-03 0.00018  4.05888E-04 0.00179  3.46100E-01 5.8E-05 ];
INF_S2                    (idx, [1:   8]) = [  1.00937E-01 6.7E-05 -1.59549E-03 0.00050  2.43034E-04 0.00171  8.19509E-02 0.00018 ];
INF_S3                    (idx, [1:   8]) = [  9.15510E-03 0.00053 -1.79676E-03 0.00041  1.05476E-04 0.00397  2.45270E-02 0.00055 ];
INF_S4                    (idx, [1:   8]) = [ -1.02527E-02 0.00045 -5.32720E-04 0.00135  1.73380E-05 0.02243 -7.33397E-03 0.00190 ];
INF_S5                    (idx, [1:   8]) = [  1.35169E-04 0.02393  6.02745E-05 0.00866 -2.35251E-05 0.01418  5.87644E-03 0.00182 ];
INF_S6                    (idx, [1:   8]) = [  5.45296E-03 0.00069 -1.22252E-04 0.00417 -3.88301E-05 0.01152 -1.45461E-02 0.00076 ];
INF_S7                    (idx, [1:   8]) = [  9.73297E-04 0.00382 -1.66612E-04 0.00342 -3.93125E-05 0.00924  5.27715E-04 0.01869 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  5.33157E-01 1.9E-05  1.68363E-02 8.2E-05  1.10522E-03 0.00109  1.35867E+00 3.1E-05 ];
INF_SP1                   (idx, [1:   8]) = [  2.47636E-01 3.6E-05  4.86336E-03 0.00018  4.05888E-04 0.00179  3.46100E-01 5.8E-05 ];
INF_SP2                   (idx, [1:   8]) = [  1.00937E-01 6.7E-05 -1.59549E-03 0.00050  2.43034E-04 0.00171  8.19509E-02 0.00018 ];
INF_SP3                   (idx, [1:   8]) = [  9.15520E-03 0.00053 -1.79676E-03 0.00041  1.05476E-04 0.00397  2.45270E-02 0.00055 ];
INF_SP4                   (idx, [1:   8]) = [ -1.02527E-02 0.00045 -5.32720E-04 0.00135  1.73380E-05 0.02243 -7.33397E-03 0.00190 ];
INF_SP5                   (idx, [1:   8]) = [  1.35172E-04 0.02391  6.02745E-05 0.00866 -2.35251E-05 0.01418  5.87644E-03 0.00182 ];
INF_SP6                   (idx, [1:   8]) = [  5.45297E-03 0.00069 -1.22252E-04 0.00417 -3.88301E-05 0.01152 -1.45461E-02 0.00076 ];
INF_SP7                   (idx, [1:   8]) = [  9.73298E-04 0.00384 -1.66612E-04 0.00342 -3.93125E-05 0.00924  5.27715E-04 0.01869 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.35822E-01 0.00018  8.80262E-01 0.00042 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.35905E-01 0.00024  8.83080E-01 0.00070 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.35921E-01 0.00022  8.83181E-01 0.00075 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.35640E-01 0.00021  8.74601E-01 0.00075 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.41350E+00 0.00018  3.78677E-01 0.00042 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.41300E+00 0.00024  3.77471E-01 0.00070 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.41290E+00 0.00022  3.77428E-01 0.00075 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.41459E+00 0.00021  3.81131E-01 0.00075 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  4.07395E-03 0.00232  8.57143E-05 0.01636  8.06856E-04 0.00543  6.19965E-04 0.00607  1.64181E-03 0.00363  7.21631E-04 0.00576  1.97971E-04 0.01084 ];
LAMBDA                    (idx, [1:  14]) = [  7.05476E-01 0.00552  1.27643E-02 0.00062  3.00919E-02 6.9E-05  1.12309E-01 0.00025  3.23674E-01 0.00018  1.17626E+00 0.00102  7.06961E+00 0.00523 ];

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
DF_SURF_IN_CURR           (idx, [1:  16]) = [  2.08619E+15 0.00015  4.52874E+14 0.00033  2.08619E+15 0.00015  4.52874E+14 0.00033  2.08619E+15 0.00015  4.52874E+14 0.00033  2.08619E+15 0.00015  4.52874E+14 0.00033 ];
DF_SURF_OUT_CURR          (idx, [1:  16]) = [  2.08619E+15 0.00015  4.52874E+14 0.00033  2.08619E+15 0.00015  4.52874E+14 0.00033  2.08619E+15 0.00015  4.52874E+14 0.00033  2.08619E+15 0.00015  4.52874E+14 0.00033 ];
DF_SURF_NET_CURR          (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_MID_IN_CURR            (idx, [1:  16]) = [  2.07539E+14 0.00029  4.68521E+13 0.00075  2.07539E+14 0.00029  4.68521E+13 0.00075  2.07539E+14 0.00029  4.68521E+13 0.00075  2.07539E+14 0.00029  4.68521E+13 0.00075 ];
DF_MID_OUT_CURR           (idx, [1:  16]) = [  2.07539E+14 0.00029  4.68521E+13 0.00075  2.07539E+14 0.00029  4.68521E+13 0.00075  2.07539E+14 0.00029  4.68521E+13 0.00075  2.07539E+14 0.00029  4.68521E+13 0.00075 ];
DF_MID_NET_CURR           (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_CORN_IN_CURR           (idx, [1:  16]) = [  2.09794E+14 0.00043  4.35861E+13 0.00119  2.09794E+14 0.00043  4.35861E+13 0.00119  2.09794E+14 0.00043  4.35861E+13 0.00119  2.09794E+14 0.00043  4.35861E+13 0.00119 ];
DF_CORN_OUT_CURR          (idx, [1:  16]) = [  2.09794E+14 0.00043  4.35861E+13 0.00119  2.09794E+14 0.00043  4.35861E+13 0.00119  2.09794E+14 0.00043  4.35861E+13 0.00119  2.09794E+14 0.00043  4.35861E+13 0.00119 ];
DF_CORN_NET_CURR          (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HET_VOL_FLUX           (idx, [1:   4]) = [  3.85637E+14 0.00011  8.81739E+13 8.2E-05 ];
DF_HET_SURF_FLUX          (idx, [1:  16]) = [  3.85980E+14 0.00015  8.57843E+13 0.00034  3.85980E+14 0.00015  8.57843E+13 0.00034  3.85980E+14 0.00015  8.57843E+13 0.00034  3.85980E+14 0.00015  8.57843E+13 0.00034 ];
DF_HET_CORN_FLUX          (idx, [1:  16]) = [  3.87370E+14 0.00048  8.28275E+13 0.00131  3.87370E+14 0.00048  8.28275E+13 0.00131  3.87370E+14 0.00048  8.28275E+13 0.00131  3.87370E+14 0.00048  8.28275E+13 0.00131 ];
DF_HOM_VOL_FLUX           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_HOM_SURF_FLUX          (idx, [1:  16]) = [  3.85637E+14 0.00011  8.81739E+13 8.2E-05  3.85637E+14 0.00011  8.81739E+13 8.2E-05  3.85637E+14 0.00011  8.81739E+13 8.2E-05  3.85637E+14 0.00011  8.81739E+13 8.2E-05 ];
DF_HOM_CORN_FLUX          (idx, [1:  16]) = [  3.85637E+14 0.00011  8.81739E+13 8.2E-05  3.85637E+14 0.00011  8.81739E+13 8.2E-05  3.85637E+14 0.00011  8.81739E+13 8.2E-05  3.85637E+14 0.00011  8.81739E+13 8.2E-05 ];
DF_SURF_DF                (idx, [1:  16]) = [  1.00089E+00 0.00011  9.72900E-01 0.00032  1.00089E+00 0.00011  9.72900E-01 0.00032  1.00089E+00 0.00011  9.72900E-01 0.00032  1.00089E+00 0.00011  9.72900E-01 0.00032 ];
DF_CORN_DF                (idx, [1:  16]) = [  1.00449E+00 0.00044  9.39366E-01 0.00133  1.00449E+00 0.00044  9.39366E-01 0.00133  1.00449E+00 0.00044  9.39366E-01 0.00133  1.00449E+00 0.00044  9.39366E-01 0.00133 ];
DF_SGN_SURF_IN_CURR       (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_OUT_CURR      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_NET_CURR      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HET_SURF_FLUX      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_HOM_SURF_FLUX      (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
DF_SGN_SURF_DF            (idx, [1:  16]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

