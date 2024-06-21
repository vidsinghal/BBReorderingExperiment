; ModuleID = 'samples/748.bc'
source_filename = "/local-ssd/chemfiles-sjs75rh7byyy3yhpnsdemghpjwhg2ttt-build/aidengro/spack-stage-chemfiles-0.10.4-sjs75rh7byyy3yhpnsdemghpjwhg2ttt/spack-build-sjs75rh/external/molfiles/src/moldenplugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.molfile_plugin_t = type { i32, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmdata_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, [10 x i8], [8192 x i8], [8192 x i8], [8192 x i8], [8192 x i8], [8192 x i8], i32, [256 x i8], i32, i32, i32, [8192 x i8], i32, i32, i32, i32, float, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i64 }
%struct.moldendata_t = type { i64, i64, i64, i64, [16 x i8], i32 }
%struct.molfile_atom_t = type { [16 x i8], [16 x i8], [8 x i8], i32, [8 x i8], [2 x i8], [2 x i8], [2 x i8], float, float, float, float, float, i32 }
%struct.qm_atom_t = type { [11 x i8], i32, float, float, float }
%struct.molfile_timestep_metadata = type { i32, i32, i32 }
%struct.molfile_timestep_t = type { ptr, ptr, float, float, float, float, float, float, double }
%struct.qm_timestep_t = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.qm_wavefunction_t = type { i32, i32, i32, i32, [81 x i8], i32, i32, i32, i32, double, ptr, ptr, ptr }
%struct.molfile_qm_timestep_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.molfile_qm_wavefunction_t = type { i32, i32, i32, i32, [81 x i8], double, ptr, ptr, ptr, ptr }
%struct.molfile_qm_timestep_metadata = type { i32, i32, i32, i32, [25 x i32], [25 x i32], [25 x i32], i32, i32, i32 }
%struct.molfile_qm_metadata_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.molfile_qm_t = type { %struct.molfile_qm_sysinfo_t, %struct.molfile_qm_basis_t, %struct.molfile_qm_hessian_t }
%struct.molfile_qm_sysinfo_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [81 x i8], [4096 x i8], [81 x i8], [81 x i8] }
%struct.molfile_qm_basis_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.molfile_qm_hessian_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.basis_atom_t = type { [11 x i8], i32, i32, ptr }
%struct.shell_t = type { i32, i32, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.prim_t = type { float, float }

@plugin = internal global %struct.molfile_plugin_t zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"mol file reader\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"molden\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Molden\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Markus Dittrich, Jan Saam, Alexey Titov\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"[MOLDEN FORMAT]\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"moldenplugin) Detected MOLDEN file format!\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"moldenplugin) The file is not in MOLDEN format!\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"[5D]\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"[5D7F]\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"[7F]\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"[5D10F]\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"[9G]\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"moldenplugin) Spherical harmonic basis found %s. \0A\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"moldenplugin)   Currently VMD handles only basis sets/wave functions\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"moldenplugin)   with cartesian Gaussian functions.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"moldenplugin)   Loading coordinates only.\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"[ATOMS]\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"moldenplugin) Found [ATOMS] section ...\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"%*s %s\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"moldenplugin) Missing units in [ATOMS] section!\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"[GEOMETRIES]\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"[GEOMETRIES] XYZ\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"moldenplugin) Found [GEOMETRIES] XYZ section ...\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"moldenplugin) No # atoms found in [GEOMETRIES] section!\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"moldenplugin) Found %d frames\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"[GEOMETRIES] ZMAT\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"moldenplugin) [GEOMETRIES] ZMAT not supported!\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"[GTO]\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"moldenplugin) Found [GTO] section ...\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"[MO]\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"moldenplugin) Found [MO] section ...\0A\00", align 1
@stderr = external global ptr, align 8
@.str.34 = private unnamed_addr constant [48 x i8] c"moldenplugin) Memory allocation for %s failed!\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"data->atoms\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"(AU)\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"%s %d %d %f %f %f\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"%s %*f %*f %*f\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"Sorry, could not obtain structure information \0A\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"from either the [ATOMS] or [GEOMETRIES] section! \0A\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"Please check your MOLDEN output file! \0A\00", align 1
@pte_label = internal global [112 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154], align 16
@.str.43 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"He\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"Li\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"Be\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"Ne\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"Na\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"Mg\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"Al\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"Si\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"Cl\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"Ar\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"Ca\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"Sc\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"Ti\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"Cr\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"Mn\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"Fe\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"Co\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"Ni\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"Cu\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"Zn\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"Ga\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"Ge\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"As\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"Se\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"Br\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"Kr\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"Rb\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"Sr\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"Zr\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"Nb\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"Mo\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"Tc\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"Ru\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"Rh\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"Pd\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"Ag\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"Cd\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"Sn\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"Sb\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"Te\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"Xe\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"Cs\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"Ba\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"La\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"Ce\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"Pr\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"Nd\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"Pm\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"Sm\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"Eu\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"Gd\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"Tb\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"Dy\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"Ho\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"Er\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"Tm\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"Yb\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"Lu\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"Hf\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"Ta\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"Re\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"Ir\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"Pt\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"Au\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"Hg\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"Tl\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"Pb\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"Bi\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"Po\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"At\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"Rn\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"Fr\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"Ra\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"Ac\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"Th\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"Pa\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"Np\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"Pu\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"Am\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"Cm\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"Bk\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"Cf\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"Es\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"Fm\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"Md\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"Lr\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"Rf\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"Db\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"Sg\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"Bh\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"Hs\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"Mt\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"Ds\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"Rg\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"%*s %f %f %f\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"wave->wave_coeffs\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"%d %f\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"Ene=\00", align 1
@.str.159 = private unnamed_addr constant [56 x i8] c"moldenplugin) Error reading wavefunction coefficients!\0A\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"Spin=\00", align 1
@.str.161 = private unnamed_addr constant [61 x i8] c"moldenplugin) Couldn't find keyword 'Spin' in [MO] section!\0A\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c" Spin= %s\0A\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"ALPHA\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c" Ene= %f\0A\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c" Occup= %f\0A\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"BETA\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"data->basis_set\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"%d %*d\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"%s %d %*f\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"%lf %lf %lf\00", align 1
@.str.172 = private unnamed_addr constant [43 x i8] c"moldenplugin) Bad format in [GTO] section\0A\00", align 1
@.str.173 = private unnamed_addr constant [52 x i8] c"moldenplugin) Bad SP-shell format in [GTO] section\0A\00", align 1
@.str.174 = private unnamed_addr constant [23 x i8] c"data->angular_momentum\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.176 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str.180 = private unnamed_addr constant [3 x i8] c"zz\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"xy\00", align 1
@.str.182 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"yz\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"xxx\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"yyy\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"zzz\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"xyy\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"xxy\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"xxz\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"xzz\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"yzz\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"yyz\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"xyz\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"xxxx\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"yyyy\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"zzzz\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"xxxy\00", align 1
@.str.198 = private unnamed_addr constant [5 x i8] c"xxxz\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"yyyx\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"yyyz\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"zzzx\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"zzzy\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"xxyy\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"xxzz\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"yyzz\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"xxyz\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"yyxz\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"zzxy\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"basis\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"shell_types\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"num_shells_per_atom\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c"num_prim_per_shell\00", align 1
@.str.218 = private unnamed_addr constant [24 x i8] c"atomicnum_per_basisatom\00", align 1
@.str.219 = private unnamed_addr constant [40 x i8] c"close_molden_read(): NULL qm_timestep!\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @moldenplugin_init() #0 {
entry:
  call void @llvm.memset.p0.i64(ptr align 8 @plugin, i8 0, i64 264, i1 false)
  store i32 17, ptr @plugin, align 8, !tbaa !5
  store ptr @.str, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 1), align 8, !tbaa !11
  store ptr @.str.1, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 2), align 8, !tbaa !12
  store ptr @.str.2, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 3), align 8, !tbaa !13
  store ptr @.str.3, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 4), align 8, !tbaa !14
  store i32 0, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 5), align 8, !tbaa !15
  store i32 10, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 6), align 4, !tbaa !16
  store i32 1, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 7), align 8, !tbaa !17
  store ptr @.str.1, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 8), align 8, !tbaa !18
  store ptr @open_molden_read, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 9), align 8, !tbaa !19
  store ptr @read_molden_structure, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 10), align 8, !tbaa !20
  store ptr @read_timestep_metadata, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 31), align 8, !tbaa !21
  store ptr @read_timestep, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 30), align 8, !tbaa !22
  store ptr @read_qm_timestep_metadata, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 32), align 8, !tbaa !23
  store ptr @read_molden_metadata, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 28), align 8, !tbaa !24
  store ptr @read_molden_rundata, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 29), align 8, !tbaa !25
  store ptr @close_molden_read, ptr getelementptr inbounds (%struct.molfile_plugin_t, ptr @plugin, i32 0, i32 13), align 8, !tbaa !26
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal ptr @open_molden_read(ptr noundef %filename, ptr noundef %filetype, ptr noundef %natoms) #0 {
entry:
  %retval = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %filetype.addr = alloca ptr, align 8
  %natoms.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %data = alloca ptr, align 8
  %moldendata = alloca ptr, align 8
  %buffer = alloca [1024 x i8], align 16
  %keystring = alloca [20 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca ptr, align 8
  %prevline = alloca i64, align 8
  %natm = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !27
  store ptr %filetype, ptr %filetype.addr, align 8, !tbaa !27
  store ptr %natoms, ptr %natoms.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %fd) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11
  store ptr null, ptr %data, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %moldendata) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buffer) #11
  call void @llvm.memset.p0.i64(ptr align 16 %buffer, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(i64 20, ptr %keystring) #11
  call void @llvm.memset.p0.i64(ptr align 16 %keystring, i8 0, i64 20, i1 false)
  %0 = load ptr, ptr %filename.addr, align 8, !tbaa !27
  %call = call noalias ptr @fopen(ptr noundef %0, ptr noundef @.str.4)
  store ptr %call, ptr %fd, align 8, !tbaa !27
  %1 = load ptr, ptr %fd, align 8, !tbaa !27
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188

if.end:                                           ; preds = %entry
  %call1 = call ptr @init_qmdata()
  store ptr %call1, ptr %data, align 8, !tbaa !27
  %2 = load ptr, ptr %data, align 8, !tbaa !27
  %tobool2 = icmp ne ptr %2, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %fd, align 8, !tbaa !27
  %4 = load ptr, ptr %data, align 8, !tbaa !27
  %file = getelementptr inbounds %struct.qmdata_t, ptr %4, i32 0, i32 1
  store ptr %3, ptr %file, align 8, !tbaa !28
  %call5 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 56) #12
  store ptr %call5, ptr %moldendata, align 8, !tbaa !27
  %5 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %tobool6 = icmp ne ptr %5, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %7 = load ptr, ptr %data, align 8, !tbaa !27
  %format_specific_data = getelementptr inbounds %struct.qmdata_t, ptr %7, i32 0, i32 0
  store ptr %6, ptr %format_specific_data, align 8, !tbaa !32
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %8 = load ptr, ptr %data, align 8, !tbaa !27
  %file9 = getelementptr inbounds %struct.qmdata_t, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %file9, align 8, !tbaa !28
  %call10 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef %9)
  %tobool11 = icmp ne ptr %call10, null
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end8
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188

if.end13:                                         ; preds = %if.end8
  %arraydecay14 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call15 = call ptr @trimright(ptr noundef %arraydecay14)
  %call16 = call ptr @trimleft(ptr noundef %call15)
  %call17 = call ptr @strtoupper(ptr noundef %call16)
  %call18 = call i32 @strcmp(ptr noundef %call17, ptr noundef @.str.5) #13
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end13
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end23

if.else:                                          ; preds = %if.end13
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188

if.end23:                                         ; preds = %if.then20
  %10 = load ptr, ptr %data, align 8, !tbaa !27
  %file24 = getelementptr inbounds %struct.qmdata_t, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %file24, align 8, !tbaa !28
  call void @eatwhitelines(ptr noundef %11)
  br label %while.cond

while.cond:                                       ; preds = %if.end186, %if.then36, %if.then33, %if.end23
  %arraydecay25 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %12 = load ptr, ptr %data, align 8, !tbaa !27
  %file26 = getelementptr inbounds %struct.qmdata_t, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %file26, align 8, !tbaa !28
  %call27 = call ptr @fgets(ptr noundef %arraydecay25, i32 noundef 1024, ptr noundef %13)
  %tobool28 = icmp ne ptr %call27, null
  br i1 %tobool28, label %while.body, label %while.end187

while.body:                                       ; preds = %while.cond
  %arraydecay29 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call31 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay29, ptr noundef @.str.8, ptr noundef %arraydecay30) #11
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end34, label %if.then33

if.then33:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !33

if.end34:                                         ; preds = %while.body
  %arrayidx = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %14 = load i8, ptr %arrayidx, align 16, !tbaa !35
  %conv = sext i8 %14 to i32
  %cmp = icmp ne i32 %conv, 91
  br i1 %cmp, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end34
  br label %while.cond, !llvm.loop !33

if.end37:                                         ; preds = %if.end34
  %arraydecay38 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call39 = call ptr @strtoupper(ptr noundef %arraydecay38)
  %arraydecay40 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call41 = call i32 @strcmp(ptr noundef %arraydecay40, ptr noundef @.str.9) #13
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %lor.lhs.false, label %if.then58

lor.lhs.false:                                    ; preds = %if.end37
  %arraydecay43 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call44 = call i32 @strcmp(ptr noundef %arraydecay43, ptr noundef @.str.10) #13
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %lor.lhs.false46, label %if.then58

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %arraydecay47 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call48 = call i32 @strcmp(ptr noundef %arraydecay47, ptr noundef @.str.11) #13
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %lor.lhs.false50, label %if.then58

lor.lhs.false50:                                  ; preds = %lor.lhs.false46
  %arraydecay51 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call52 = call i32 @strcmp(ptr noundef %arraydecay51, ptr noundef @.str.12) #13
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %lor.lhs.false54, label %if.then58

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %arraydecay55 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call56 = call i32 @strcmp(ptr noundef %arraydecay55, ptr noundef @.str.13) #13
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end64, label %if.then58

if.then58:                                        ; preds = %lor.lhs.false54, %lor.lhs.false50, %lor.lhs.false46, %lor.lhs.false, %if.end37
  %arraydecay59 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %arraydecay59)
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.16)
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.17)
  %15 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %coordsonly = getelementptr inbounds %struct.moldendata_t, ptr %15, i32 0, i32 5
  store i32 1, ptr %coordsonly, align 8, !tbaa !36
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %lor.lhs.false54
  %arraydecay65 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call66 = call i32 @strcmp(ptr noundef %arraydecay65, ptr noundef @.str.18) #13
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.else101, label %if.then68

if.then68:                                        ; preds = %if.end64
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %prevline) #11
  %16 = load ptr, ptr %fd, align 8, !tbaa !27
  %call69 = call i64 @ftell(ptr noundef %16)
  store i64 %call69, ptr %prevline, align 8, !tbaa !38
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str.19)
  %17 = load ptr, ptr %data, align 8, !tbaa !27
  %file71 = getelementptr inbounds %struct.qmdata_t, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %file71, align 8, !tbaa !28
  %call72 = call i64 @ftell(ptr noundef %18)
  %19 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_atoms = getelementptr inbounds %struct.moldendata_t, ptr %19, i32 0, i32 0
  store i64 %call72, ptr %filepos_atoms, align 8, !tbaa !39
  %arraydecay73 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %20 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %units = getelementptr inbounds %struct.moldendata_t, ptr %20, i32 0, i32 4
  %arraydecay74 = getelementptr inbounds [16 x i8], ptr %units, i64 0, i64 0
  %call75 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay73, ptr noundef @.str.20, ptr noundef %arraydecay74) #11
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.then68
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.21)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end79:                                         ; preds = %if.then68
  %21 = load ptr, ptr %natoms.addr, align 8, !tbaa !27
  store i32 0, ptr %21, align 4, !tbaa !40
  %arraydecay80 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %22 = load ptr, ptr %fd, align 8, !tbaa !27
  %call81 = call ptr @fgets(ptr noundef %arraydecay80, i32 noundef 1024, ptr noundef %22)
  store ptr %call81, ptr %s, align 8, !tbaa !27
  br label %while.cond82

while.cond82:                                     ; preds = %while.body94, %if.end79
  %arraydecay83 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call84 = call ptr @trimleft(ptr noundef %arraydecay83)
  %arrayidx85 = getelementptr inbounds i8, ptr %call84, i64 0
  %23 = load i8, ptr %arrayidx85, align 1, !tbaa !35
  %conv86 = sext i8 %23 to i32
  %cmp87 = icmp ne i32 %conv86, 91
  br i1 %cmp87, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond82
  %24 = load ptr, ptr %s, align 8, !tbaa !27
  %cmp89 = icmp ne ptr %24, null
  br i1 %cmp89, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %arraydecay91 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call92 = call i32 @iswhiteline(ptr noundef %arraydecay91)
  %tobool93 = icmp ne i32 %call92, 0
  %lnot = xor i1 %tobool93, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond82
  %25 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond82 ], [ %lnot, %land.rhs ]
  br i1 %25, label %while.body94, label %while.end

while.body94:                                     ; preds = %land.end
  %26 = load ptr, ptr %natoms.addr, align 8, !tbaa !27
  %27 = load i32, ptr %26, align 4, !tbaa !40
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %26, align 4, !tbaa !40
  %28 = load ptr, ptr %fd, align 8, !tbaa !27
  %call95 = call i64 @ftell(ptr noundef %28)
  store i64 %call95, ptr %prevline, align 8, !tbaa !38
  %arraydecay96 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %29 = load ptr, ptr %fd, align 8, !tbaa !27
  %call97 = call ptr @fgets(ptr noundef %arraydecay96, i32 noundef 1024, ptr noundef %29)
  store ptr %call97, ptr %s, align 8, !tbaa !27
  br label %while.cond82, !llvm.loop !41

while.end:                                        ; preds = %land.end
  %30 = load ptr, ptr %natoms.addr, align 8, !tbaa !27
  %31 = load i32, ptr %30, align 4, !tbaa !40
  %32 = load ptr, ptr %data, align 8, !tbaa !27
  %numatoms = getelementptr inbounds %struct.qmdata_t, ptr %32, i32 0, i32 2
  store i32 %31, ptr %numatoms, align 8, !tbaa !42
  %33 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames = getelementptr inbounds %struct.qmdata_t, ptr %33, i32 0, i32 67
  store i32 1, ptr %num_frames, align 4, !tbaa !43
  %34 = load ptr, ptr %data, align 8, !tbaa !27
  %file98 = getelementptr inbounds %struct.qmdata_t, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %file98, align 8, !tbaa !28
  %36 = load i64, ptr %prevline, align 8, !tbaa !38
  %call99 = call i32 @fseek(ptr noundef %35, i64 noundef %36, i32 noundef 0)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then77
  call void @llvm.lifetime.end.p0(i64 8, ptr %prevline) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup188 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end186

if.else101:                                       ; preds = %if.end64
  %arraydecay102 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call103 = call i32 @strcmp(ptr noundef %arraydecay102, ptr noundef @.str.22) #13
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.else167, label %if.then105

if.then105:                                       ; preds = %if.else101
  %arraydecay106 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call107 = call ptr @trimright(ptr noundef %arraydecay106)
  %call108 = call i32 @strcmp(ptr noundef %call107, ptr noundef @.str.23) #13
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.else158, label %if.then110

if.then110:                                       ; preds = %if.then105
  %call111 = call i32 (ptr, ...) @printf(ptr noundef @.str.24)
  %37 = load ptr, ptr %data, align 8, !tbaa !27
  %file112 = getelementptr inbounds %struct.qmdata_t, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %file112, align 8, !tbaa !28
  %call113 = call i64 @ftell(ptr noundef %38)
  %39 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_geomxyz = getelementptr inbounds %struct.moldendata_t, ptr %39, i32 0, i32 1
  store i64 %call113, ptr %filepos_geomxyz, align 8, !tbaa !44
  %40 = load ptr, ptr %data, align 8, !tbaa !27
  %file114 = getelementptr inbounds %struct.qmdata_t, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %file114, align 8, !tbaa !28
  %42 = load ptr, ptr %natoms.addr, align 8, !tbaa !27
  %call115 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %41, ptr noundef @.str.25, ptr noundef %42)
  %cmp116 = icmp ne i32 %call115, 1
  br i1 %cmp116, label %if.then118, label %if.end120

if.then118:                                       ; preds = %if.then110
  %call119 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188

if.end120:                                        ; preds = %if.then110
  %43 = load ptr, ptr %natoms.addr, align 8, !tbaa !27
  %44 = load i32, ptr %43, align 4, !tbaa !40
  %45 = load ptr, ptr %data, align 8, !tbaa !27
  %numatoms121 = getelementptr inbounds %struct.qmdata_t, ptr %45, i32 0, i32 2
  store i32 %44, ptr %numatoms121, align 8, !tbaa !42
  %46 = load ptr, ptr %data, align 8, !tbaa !27
  %file122 = getelementptr inbounds %struct.qmdata_t, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %file122, align 8, !tbaa !28
  %48 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_geomxyz123 = getelementptr inbounds %struct.moldendata_t, ptr %48, i32 0, i32 1
  %49 = load i64, ptr %filepos_geomxyz123, align 8, !tbaa !44
  %call124 = call i32 @fseek(ptr noundef %47, i64 noundef %49, i32 noundef 0)
  %50 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames125 = getelementptr inbounds %struct.qmdata_t, ptr %50, i32 0, i32 67
  store i32 0, ptr %num_frames125, align 4, !tbaa !43
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end120
  call void @llvm.lifetime.start.p0(i64 4, ptr %natm) #11
  store i32 0, ptr %natm, align 4, !tbaa !40
  %51 = load ptr, ptr %data, align 8, !tbaa !27
  %file126 = getelementptr inbounds %struct.qmdata_t, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %file126, align 8, !tbaa !28
  %call127 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %52, ptr noundef @.str.25, ptr noundef %natm)
  %53 = load i32, ptr %natm, align 4, !tbaa !40
  %54 = load ptr, ptr %data, align 8, !tbaa !27
  %numatoms128 = getelementptr inbounds %struct.qmdata_t, ptr %54, i32 0, i32 2
  %55 = load i32, ptr %numatoms128, align 8, !tbaa !42
  %cmp129 = icmp ne i32 %53, %55
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %do.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup153

if.end132:                                        ; preds = %do.body
  %56 = load ptr, ptr %data, align 8, !tbaa !27
  %file133 = getelementptr inbounds %struct.qmdata_t, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %file133, align 8, !tbaa !28
  call void @eatline(ptr noundef %57, i32 noundef 1)
  %58 = load ptr, ptr %data, align 8, !tbaa !27
  %filepos_array = getelementptr inbounds %struct.qmdata_t, ptr %58, i32 0, i32 71
  %59 = load ptr, ptr %filepos_array, align 8, !tbaa !45
  %60 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames134 = getelementptr inbounds %struct.qmdata_t, ptr %60, i32 0, i32 67
  %61 = load i32, ptr %num_frames134, align 4, !tbaa !43
  %add = add nsw i32 %61, 1
  %conv135 = sext i32 %add to i64
  %mul = mul i64 %conv135, 8
  %call136 = call ptr @realloc(ptr noundef %59, i64 noundef %mul) #14
  %62 = load ptr, ptr %data, align 8, !tbaa !27
  %filepos_array137 = getelementptr inbounds %struct.qmdata_t, ptr %62, i32 0, i32 71
  store ptr %call136, ptr %filepos_array137, align 8, !tbaa !45
  %63 = load ptr, ptr %data, align 8, !tbaa !27
  %file138 = getelementptr inbounds %struct.qmdata_t, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %file138, align 8, !tbaa !28
  %call139 = call i64 @ftell(ptr noundef %64)
  %65 = load ptr, ptr %data, align 8, !tbaa !27
  %filepos_array140 = getelementptr inbounds %struct.qmdata_t, ptr %65, i32 0, i32 71
  %66 = load ptr, ptr %filepos_array140, align 8, !tbaa !45
  %67 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames141 = getelementptr inbounds %struct.qmdata_t, ptr %67, i32 0, i32 67
  %68 = load i32, ptr %num_frames141, align 4, !tbaa !43
  %idxprom = sext i32 %68 to i64
  %arrayidx142 = getelementptr inbounds i64, ptr %66, i64 %idxprom
  store i64 %call139, ptr %arrayidx142, align 8, !tbaa !38
  %69 = load ptr, ptr %data, align 8, !tbaa !27
  %file143 = getelementptr inbounds %struct.qmdata_t, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %file143, align 8, !tbaa !28
  %71 = load ptr, ptr %data, align 8, !tbaa !27
  %numatoms144 = getelementptr inbounds %struct.qmdata_t, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %numatoms144, align 8, !tbaa !42
  %add145 = add nsw i32 1, %72
  call void @eatline(ptr noundef %70, i32 noundef %add145)
  %73 = load ptr, ptr %data, align 8, !tbaa !27
  %file146 = getelementptr inbounds %struct.qmdata_t, ptr %73, i32 0, i32 1
  %74 = load ptr, ptr %file146, align 8, !tbaa !28
  %call147 = call i32 @feof(ptr noundef %74) #11
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %if.end132
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup153

if.end150:                                        ; preds = %if.end132
  %75 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames151 = getelementptr inbounds %struct.qmdata_t, ptr %75, i32 0, i32 67
  %76 = load i32, ptr %num_frames151, align 4, !tbaa !43
  %inc152 = add nsw i32 %76, 1
  store i32 %inc152, ptr %num_frames151, align 4, !tbaa !43
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup153

cleanup153:                                       ; preds = %if.end150, %if.then149, %if.then131
  call void @llvm.lifetime.end.p0(i64 4, ptr %natm) #11
  %cleanup.dest154 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest154, label %unreachable [
    i32 0, label %cleanup.cont155
    i32 6, label %do.end
  ]

cleanup.cont155:                                  ; preds = %cleanup153
  br label %do.cond

do.cond:                                          ; preds = %cleanup.cont155
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %cleanup153
  %77 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames156 = getelementptr inbounds %struct.qmdata_t, ptr %77, i32 0, i32 67
  %78 = load i32, ptr %num_frames156, align 4, !tbaa !43
  %call157 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, i32 noundef %78)
  br label %if.end166

if.else158:                                       ; preds = %if.then105
  %arraydecay159 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call160 = call ptr @trimright(ptr noundef %arraydecay159)
  %call161 = call i32 @strcmp(ptr noundef %call160, ptr noundef @.str.28) #13
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.end165, label %if.then163

if.then163:                                       ; preds = %if.else158
  %call164 = call i32 (ptr, ...) @printf(ptr noundef @.str.29)
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %if.else158
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %do.end
  br label %if.end185

if.else167:                                       ; preds = %if.else101
  %arraydecay168 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call169 = call i32 @strcmp(ptr noundef %arraydecay168, ptr noundef @.str.30) #13
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.else175, label %if.then171

if.then171:                                       ; preds = %if.else167
  %call172 = call i32 (ptr, ...) @printf(ptr noundef @.str.31)
  %79 = load ptr, ptr %data, align 8, !tbaa !27
  %file173 = getelementptr inbounds %struct.qmdata_t, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %file173, align 8, !tbaa !28
  %call174 = call i64 @ftell(ptr noundef %80)
  %81 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_gto = getelementptr inbounds %struct.moldendata_t, ptr %81, i32 0, i32 2
  store i64 %call174, ptr %filepos_gto, align 8, !tbaa !46
  br label %if.end184

if.else175:                                       ; preds = %if.else167
  %arraydecay176 = getelementptr inbounds [20 x i8], ptr %keystring, i64 0, i64 0
  %call177 = call i32 @strcmp(ptr noundef %arraydecay176, ptr noundef @.str.32) #13
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.end183, label %if.then179

if.then179:                                       ; preds = %if.else175
  %call180 = call i32 (ptr, ...) @printf(ptr noundef @.str.33)
  %82 = load ptr, ptr %data, align 8, !tbaa !27
  %file181 = getelementptr inbounds %struct.qmdata_t, ptr %82, i32 0, i32 1
  %83 = load ptr, ptr %file181, align 8, !tbaa !28
  %call182 = call i64 @ftell(ptr noundef %83)
  %84 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_mo = getelementptr inbounds %struct.moldendata_t, ptr %84, i32 0, i32 3
  store i64 %call182, ptr %filepos_mo, align 8, !tbaa !47
  br label %if.end183

if.end183:                                        ; preds = %if.then179, %if.else175
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.then171
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.end166
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %cleanup.cont
  br label %while.cond, !llvm.loop !33

while.end187:                                     ; preds = %while.cond
  %85 = load ptr, ptr %data, align 8, !tbaa !27
  store ptr %85, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup188

cleanup188:                                       ; preds = %while.end187, %if.then118, %cleanup, %if.else, %if.then12, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr %keystring) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buffer) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %moldendata) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %fd) #11
  %86 = load ptr, ptr %retval, align 8
  ret ptr %86

unreachable:                                      ; preds = %cleanup153
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @read_molden_structure(ptr noundef %mydata, ptr noundef %optflags, ptr noundef %atoms) #0 {
entry:
  %retval = alloca i32, align 4
  %mydata.addr = alloca ptr, align 8
  %optflags.addr = alloca ptr, align 8
  %atoms.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %buffer = alloca [1024 x i8], align 16
  %atname = alloca [1024 x i8], align 16
  %num = alloca i32, align 4
  %atomicnum = alloca i32, align 4
  %atom = alloca ptr, align 8
  %data = alloca ptr, align 8
  %moldendata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %unitfac = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  store ptr %mydata, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %optflags, ptr %optflags.addr, align 8, !tbaa !27
  store ptr %atoms, ptr %atoms.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buffer) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %atname) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %atomicnum) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %atom) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11
  %0 = load ptr, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %0, ptr %data, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %moldendata) #11
  %1 = load ptr, ptr %data, align 8, !tbaa !27
  %format_specific_data = getelementptr inbounds %struct.qmdata_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %format_specific_data, align 8, !tbaa !32
  store ptr %2, ptr %moldendata, align 8, !tbaa !27
  %3 = load ptr, ptr %data, align 8, !tbaa !27
  %numatoms = getelementptr inbounds %struct.qmdata_t, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %numatoms, align 8, !tbaa !42
  %conv = sext i32 %4 to i64
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 28) #12
  %5 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms1 = getelementptr inbounds %struct.qmdata_t, ptr %5, i32 0, i32 65
  store ptr %call, ptr %atoms1, align 8, !tbaa !48
  %6 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms2 = getelementptr inbounds %struct.qmdata_t, ptr %6, i32 0, i32 65
  %7 = load ptr, ptr %atoms2, align 8, !tbaa !48
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.34, ptr noundef @.str.35)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %optflags.addr, align 8, !tbaa !27
  store i32 128, ptr %9, align 4, !tbaa !40
  %10 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_atoms = getelementptr inbounds %struct.moldendata_t, ptr %10, i32 0, i32 0
  %11 = load i64, ptr %filepos_atoms, align 8, !tbaa !39
  %tobool = icmp ne i64 %11, 0
  br i1 %tobool, label %if.then5, label %if.end64

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %unitfac) #11
  store float 1.000000e+00, ptr %unitfac, align 4, !tbaa !49
  %12 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %units = getelementptr inbounds %struct.moldendata_t, ptr %12, i32 0, i32 4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %units, i64 0, i64 0
  %call6 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef @.str.36) #13
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then12

lor.lhs.false:                                    ; preds = %if.then5
  %13 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %units8 = getelementptr inbounds %struct.moldendata_t, ptr %13, i32 0, i32 4
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %units8, i64 0, i64 0
  %call10 = call i32 @strcmp(ptr noundef %arraydecay9, ptr noundef @.str.37) #13
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false, %if.then5
  store float 0x3FE0EF0500000000, ptr %unitfac, align 4, !tbaa !49
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false
  %14 = load ptr, ptr %data, align 8, !tbaa !27
  %file = getelementptr inbounds %struct.qmdata_t, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %file, align 8, !tbaa !28
  %16 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_atoms14 = getelementptr inbounds %struct.moldendata_t, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %filepos_atoms14, align 8, !tbaa !39
  %call15 = call i32 @fseek(ptr noundef %15, i64 noundef %17, i32 noundef 0)
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %18 = load i32, ptr %i, align 4, !tbaa !40
  %19 = load ptr, ptr %data, align 8, !tbaa !27
  %numatoms16 = getelementptr inbounds %struct.qmdata_t, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %numatoms16, align 8, !tbaa !42
  %cmp17 = icmp slt i32 %18, %20
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #11
  %21 = load ptr, ptr %atoms.addr, align 8, !tbaa !27
  %22 = load i32, ptr %i, align 4, !tbaa !40
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds %struct.molfile_atom_t, ptr %21, i64 %idx.ext
  store ptr %add.ptr, ptr %atom, align 8, !tbaa !27
  %arraydecay19 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %23 = load ptr, ptr %data, align 8, !tbaa !27
  %file20 = getelementptr inbounds %struct.qmdata_t, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %file20, align 8, !tbaa !28
  %call21 = call ptr @fgets(ptr noundef %arraydecay19, i32 noundef 1024, ptr noundef %24)
  %tobool22 = icmp ne ptr %call21, null
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %arraydecay25 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [1024 x i8], ptr %atname, i64 0, i64 0
  %call27 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay25, ptr noundef @.str.38, ptr noundef %arraydecay26, ptr noundef %num, ptr noundef %atomicnum, ptr noundef %x, ptr noundef %y, ptr noundef %z) #11
  %25 = load ptr, ptr %atom, align 8, !tbaa !27
  %name = getelementptr inbounds %struct.molfile_atom_t, ptr %25, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0
  %arraydecay29 = getelementptr inbounds [1024 x i8], ptr %atname, i64 0, i64 0
  %call30 = call ptr @strncpy(ptr noundef %arraydecay28, ptr noundef %arraydecay29, i64 noundef 16) #11
  %26 = load ptr, ptr %atom, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.molfile_atom_t, ptr %26, i32 0, i32 1
  %arraydecay31 = getelementptr inbounds [16 x i8], ptr %type, i64 0, i64 0
  %27 = load ptr, ptr %atom, align 8, !tbaa !27
  %name32 = getelementptr inbounds %struct.molfile_atom_t, ptr %27, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [16 x i8], ptr %name32, i64 0, i64 0
  %call34 = call ptr @strncpy(ptr noundef %arraydecay31, ptr noundef %arraydecay33, i64 noundef 16) #11
  %28 = load i32, ptr %atomicnum, align 4, !tbaa !40
  %29 = load ptr, ptr %atom, align 8, !tbaa !27
  %atomicnumber = getelementptr inbounds %struct.molfile_atom_t, ptr %29, i32 0, i32 13
  store i32 %28, ptr %atomicnumber, align 4, !tbaa !50
  %30 = load ptr, ptr %atom, align 8, !tbaa !27
  %resname = getelementptr inbounds %struct.molfile_atom_t, ptr %30, i32 0, i32 2
  %arrayidx = getelementptr inbounds [8 x i8], ptr %resname, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 4, !tbaa !35
  %31 = load ptr, ptr %atom, align 8, !tbaa !27
  %resid = getelementptr inbounds %struct.molfile_atom_t, ptr %31, i32 0, i32 3
  store i32 1, ptr %resid, align 4, !tbaa !52
  %32 = load ptr, ptr %atom, align 8, !tbaa !27
  %chain = getelementptr inbounds %struct.molfile_atom_t, ptr %32, i32 0, i32 5
  %arrayidx35 = getelementptr inbounds [2 x i8], ptr %chain, i64 0, i64 0
  store i8 0, ptr %arrayidx35, align 4, !tbaa !35
  %33 = load ptr, ptr %atom, align 8, !tbaa !27
  %segid = getelementptr inbounds %struct.molfile_atom_t, ptr %33, i32 0, i32 4
  %arrayidx36 = getelementptr inbounds [8 x i8], ptr %segid, i64 0, i64 0
  store i8 0, ptr %arrayidx36, align 4, !tbaa !35
  %34 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms37 = getelementptr inbounds %struct.qmdata_t, ptr %34, i32 0, i32 65
  %35 = load ptr, ptr %atoms37, align 8, !tbaa !48
  %36 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %36 to i64
  %arrayidx38 = getelementptr inbounds %struct.qm_atom_t, ptr %35, i64 %idxprom
  %type39 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx38, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [11 x i8], ptr %type39, i64 0, i64 0
  %arraydecay41 = getelementptr inbounds [1024 x i8], ptr %atname, i64 0, i64 0
  %call42 = call ptr @strncpy(ptr noundef %arraydecay40, ptr noundef %arraydecay41, i64 noundef 11) #11
  %37 = load i32, ptr %atomicnum, align 4, !tbaa !40
  %38 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms43 = getelementptr inbounds %struct.qmdata_t, ptr %38, i32 0, i32 65
  %39 = load ptr, ptr %atoms43, align 8, !tbaa !48
  %40 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds %struct.qm_atom_t, ptr %39, i64 %idxprom44
  %atomicnum46 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx45, i32 0, i32 1
  store i32 %37, ptr %atomicnum46, align 4, !tbaa !53
  %41 = load float, ptr %x, align 4, !tbaa !49
  %42 = load float, ptr %unitfac, align 4, !tbaa !49
  %mul = fmul float %41, %42
  %43 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms47 = getelementptr inbounds %struct.qmdata_t, ptr %43, i32 0, i32 65
  %44 = load ptr, ptr %atoms47, align 8, !tbaa !48
  %45 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom48 = sext i32 %45 to i64
  %arrayidx49 = getelementptr inbounds %struct.qm_atom_t, ptr %44, i64 %idxprom48
  %x50 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx49, i32 0, i32 2
  store float %mul, ptr %x50, align 4, !tbaa !55
  %46 = load float, ptr %y, align 4, !tbaa !49
  %47 = load float, ptr %unitfac, align 4, !tbaa !49
  %mul51 = fmul float %46, %47
  %48 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms52 = getelementptr inbounds %struct.qmdata_t, ptr %48, i32 0, i32 65
  %49 = load ptr, ptr %atoms52, align 8, !tbaa !48
  %50 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom53 = sext i32 %50 to i64
  %arrayidx54 = getelementptr inbounds %struct.qm_atom_t, ptr %49, i64 %idxprom53
  %y55 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx54, i32 0, i32 3
  store float %mul51, ptr %y55, align 4, !tbaa !56
  %51 = load float, ptr %z, align 4, !tbaa !49
  %52 = load float, ptr %unitfac, align 4, !tbaa !49
  %mul56 = fmul float %51, %52
  %53 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms57 = getelementptr inbounds %struct.qmdata_t, ptr %53, i32 0, i32 65
  %54 = load ptr, ptr %atoms57, align 8, !tbaa !48
  %55 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom58 = sext i32 %55 to i64
  %arrayidx59 = getelementptr inbounds %struct.qm_atom_t, ptr %54, i64 %idxprom58
  %z60 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx59, i32 0, i32 4
  store float %mul56, ptr %z60, align 4, !tbaa !57
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup63 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %56 = load i32, ptr %i, align 4, !tbaa !40
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  %57 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_read = getelementptr inbounds %struct.qmdata_t, ptr %57, i32 0, i32 68
  store i32 1, ptr %num_frames_read, align 8, !tbaa !59
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %unitfac) #11
  br label %cleanup118

if.end64:                                         ; preds = %if.end
  %58 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_geomxyz = getelementptr inbounds %struct.moldendata_t, ptr %58, i32 0, i32 1
  %59 = load i64, ptr %filepos_geomxyz, align 8, !tbaa !44
  %tobool65 = icmp ne i64 %59, 0
  br i1 %tobool65, label %if.then66, label %if.end114

if.then66:                                        ; preds = %if.end64
  %60 = load ptr, ptr %data, align 8, !tbaa !27
  %file67 = getelementptr inbounds %struct.qmdata_t, ptr %60, i32 0, i32 1
  %61 = load ptr, ptr %file67, align 8, !tbaa !28
  %62 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_geomxyz68 = getelementptr inbounds %struct.moldendata_t, ptr %62, i32 0, i32 1
  %63 = load i64, ptr %filepos_geomxyz68, align 8, !tbaa !44
  %call69 = call i32 @fseek(ptr noundef %61, i64 noundef %63, i32 noundef 0)
  %64 = load ptr, ptr %data, align 8, !tbaa !27
  %file70 = getelementptr inbounds %struct.qmdata_t, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %file70, align 8, !tbaa !28
  call void @eatline(ptr noundef %65, i32 noundef 2)
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc110, %if.then66
  %66 = load i32, ptr %i, align 4, !tbaa !40
  %67 = load ptr, ptr %data, align 8, !tbaa !27
  %numatoms72 = getelementptr inbounds %struct.qmdata_t, ptr %67, i32 0, i32 2
  %68 = load i32, ptr %numatoms72, align 8, !tbaa !42
  %cmp73 = icmp slt i32 %66, %68
  br i1 %cmp73, label %for.body75, label %for.end112

for.body75:                                       ; preds = %for.cond71
  %69 = load ptr, ptr %atoms.addr, align 8, !tbaa !27
  %70 = load i32, ptr %i, align 4, !tbaa !40
  %idx.ext76 = sext i32 %70 to i64
  %add.ptr77 = getelementptr inbounds %struct.molfile_atom_t, ptr %69, i64 %idx.ext76
  store ptr %add.ptr77, ptr %atom, align 8, !tbaa !27
  %arraydecay78 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %71 = load ptr, ptr %data, align 8, !tbaa !27
  %file79 = getelementptr inbounds %struct.qmdata_t, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %file79, align 8, !tbaa !28
  %call80 = call ptr @fgets(ptr noundef %arraydecay78, i32 noundef 1024, ptr noundef %72)
  %tobool81 = icmp ne ptr %call80, null
  br i1 %tobool81, label %if.end83, label %if.then82

if.then82:                                        ; preds = %for.body75
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end83:                                         ; preds = %for.body75
  %arraydecay84 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %arraydecay85 = getelementptr inbounds [1024 x i8], ptr %atname, i64 0, i64 0
  %call86 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay84, ptr noundef @.str.39, ptr noundef %arraydecay85) #11
  %73 = load ptr, ptr %atom, align 8, !tbaa !27
  %type87 = getelementptr inbounds %struct.molfile_atom_t, ptr %73, i32 0, i32 1
  %arraydecay88 = getelementptr inbounds [16 x i8], ptr %type87, i64 0, i64 0
  %arraydecay89 = getelementptr inbounds [1024 x i8], ptr %atname, i64 0, i64 0
  %call90 = call ptr @strncpy(ptr noundef %arraydecay88, ptr noundef %arraydecay89, i64 noundef 16) #11
  %74 = load ptr, ptr %atom, align 8, !tbaa !27
  %name91 = getelementptr inbounds %struct.molfile_atom_t, ptr %74, i32 0, i32 0
  %arraydecay92 = getelementptr inbounds [16 x i8], ptr %name91, i64 0, i64 0
  %arraydecay93 = getelementptr inbounds [1024 x i8], ptr %atname, i64 0, i64 0
  %call94 = call ptr @strncpy(ptr noundef %arraydecay92, ptr noundef %arraydecay93, i64 noundef 16) #11
  %arraydecay95 = getelementptr inbounds [1024 x i8], ptr %atname, i64 0, i64 0
  %call96 = call i32 @get_pte_idx_from_string(ptr noundef %arraydecay95)
  %75 = load ptr, ptr %atom, align 8, !tbaa !27
  %atomicnumber97 = getelementptr inbounds %struct.molfile_atom_t, ptr %75, i32 0, i32 13
  store i32 %call96, ptr %atomicnumber97, align 4, !tbaa !50
  %76 = load ptr, ptr %atom, align 8, !tbaa !27
  %resname98 = getelementptr inbounds %struct.molfile_atom_t, ptr %76, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [8 x i8], ptr %resname98, i64 0, i64 0
  store i8 0, ptr %arrayidx99, align 4, !tbaa !35
  %77 = load ptr, ptr %atom, align 8, !tbaa !27
  %resid100 = getelementptr inbounds %struct.molfile_atom_t, ptr %77, i32 0, i32 3
  store i32 1, ptr %resid100, align 4, !tbaa !52
  %78 = load ptr, ptr %atom, align 8, !tbaa !27
  %chain101 = getelementptr inbounds %struct.molfile_atom_t, ptr %78, i32 0, i32 5
  %arrayidx102 = getelementptr inbounds [2 x i8], ptr %chain101, i64 0, i64 0
  store i8 0, ptr %arrayidx102, align 4, !tbaa !35
  %79 = load ptr, ptr %atom, align 8, !tbaa !27
  %segid103 = getelementptr inbounds %struct.molfile_atom_t, ptr %79, i32 0, i32 4
  %arrayidx104 = getelementptr inbounds [8 x i8], ptr %segid103, i64 0, i64 0
  store i8 0, ptr %arrayidx104, align 4, !tbaa !35
  %80 = load ptr, ptr %atom, align 8, !tbaa !27
  %atomicnumber105 = getelementptr inbounds %struct.molfile_atom_t, ptr %80, i32 0, i32 13
  %81 = load i32, ptr %atomicnumber105, align 4, !tbaa !50
  %82 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms106 = getelementptr inbounds %struct.qmdata_t, ptr %82, i32 0, i32 65
  %83 = load ptr, ptr %atoms106, align 8, !tbaa !48
  %84 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom107 = sext i32 %84 to i64
  %arrayidx108 = getelementptr inbounds %struct.qm_atom_t, ptr %83, i64 %idxprom107
  %atomicnum109 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx108, i32 0, i32 1
  store i32 %81, ptr %atomicnum109, align 4, !tbaa !53
  br label %for.inc110

for.inc110:                                       ; preds = %if.end83
  %85 = load i32, ptr %i, align 4, !tbaa !40
  %inc111 = add nsw i32 %85, 1
  store i32 %inc111, ptr %i, align 4, !tbaa !40
  br label %for.cond71, !llvm.loop !60

for.end112:                                       ; preds = %for.cond71
  %86 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_read113 = getelementptr inbounds %struct.qmdata_t, ptr %86, i32 0, i32 68
  store i32 0, ptr %num_frames_read113, align 8, !tbaa !59
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

if.end114:                                        ; preds = %if.end64
  %call115 = call i32 (ptr, ...) @printf(ptr noundef @.str.40)
  %call116 = call i32 (ptr, ...) @printf(ptr noundef @.str.41)
  %call117 = call i32 (ptr, ...) @printf(ptr noundef @.str.42)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup118

cleanup118:                                       ; preds = %if.end114, %for.end112, %if.then82, %cleanup63, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %moldendata) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %atom) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %atomicnum) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr %atname) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buffer) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal i32 @read_timestep_metadata(ptr noundef %mydata, ptr noundef %meta) #0 {
entry:
  %mydata.addr = alloca ptr, align 8
  %meta.addr = alloca ptr, align 8
  store ptr %mydata, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %meta, ptr %meta.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %count = getelementptr inbounds %struct.molfile_timestep_metadata, ptr %0, i32 0, i32 0
  store i32 -1, ptr %count, align 4, !tbaa !61
  %1 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %has_velocities = getelementptr inbounds %struct.molfile_timestep_metadata, ptr %1, i32 0, i32 2
  store i32 0, ptr %has_velocities, align 4, !tbaa !63
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @read_timestep(ptr noundef %mydata, i32 noundef %natoms, ptr noundef %ts, ptr noundef %qm_metadata, ptr noundef %qm_ts) #0 {
entry:
  %retval = alloca i32, align 4
  %mydata.addr = alloca ptr, align 8
  %natoms.addr = alloca i32, align 4
  %ts.addr = alloca ptr, align 8
  %qm_metadata.addr = alloca ptr, align 8
  %qm_ts.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %data = alloca ptr, align 8
  %cur_ts = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %wave42 = alloca ptr, align 8
  store ptr %mydata, ptr %mydata.addr, align 8, !tbaa !27
  store i32 %natoms, ptr %natoms.addr, align 4, !tbaa !40
  store ptr %ts, ptr %ts.addr, align 8, !tbaa !27
  store ptr %qm_metadata, ptr %qm_metadata.addr, align 8, !tbaa !27
  store ptr %qm_ts, ptr %qm_ts.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11
  %0 = load ptr, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %0, ptr %data, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_ts) #11
  %1 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_sent = getelementptr inbounds %struct.qmdata_t, ptr %1, i32 0, i32 69
  %2 = load i32, ptr %num_frames_sent, align 4, !tbaa !64
  %3 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames = getelementptr inbounds %struct.qmdata_t, ptr %3, i32 0, i32 67
  %4 = load i32, ptr %num_frames, align 4, !tbaa !43
  %cmp = icmp sge i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_sent1 = getelementptr inbounds %struct.qmdata_t, ptr %5, i32 0, i32 69
  %6 = load i32, ptr %num_frames_sent1, align 4, !tbaa !64
  %7 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_read = getelementptr inbounds %struct.qmdata_t, ptr %7, i32 0, i32 68
  %8 = load i32, ptr %num_frames_read, align 8, !tbaa !59
  %cmp2 = icmp eq i32 %6, %8
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %data, align 8, !tbaa !27
  %file = getelementptr inbounds %struct.qmdata_t, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %file, align 8, !tbaa !28
  %11 = load ptr, ptr %data, align 8, !tbaa !27
  %filepos_array = getelementptr inbounds %struct.qmdata_t, ptr %11, i32 0, i32 71
  %12 = load ptr, ptr %filepos_array, align 8, !tbaa !45
  %13 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_read4 = getelementptr inbounds %struct.qmdata_t, ptr %13, i32 0, i32 68
  %14 = load i32, ptr %num_frames_read4, align 8, !tbaa !59
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 %idxprom
  %15 = load i64, ptr %arrayidx, align 8, !tbaa !38
  %call = call i32 @fseek(ptr noundef %10, i64 noundef %15, i32 noundef 0)
  %16 = load ptr, ptr %data, align 8, !tbaa !27
  %call5 = call i32 @read_geom_block(ptr noundef %16)
  %17 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_read6 = getelementptr inbounds %struct.qmdata_t, ptr %17, i32 0, i32 68
  %18 = load i32, ptr %num_frames_read6, align 8, !tbaa !59
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %num_frames_read6, align 8, !tbaa !59
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %19 = load i32, ptr %i, align 4, !tbaa !40
  %20 = load i32, ptr %natoms.addr, align 4, !tbaa !40
  %cmp8 = icmp slt i32 %19, %20
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms = getelementptr inbounds %struct.qmdata_t, ptr %21, i32 0, i32 65
  %22 = load ptr, ptr %atoms, align 8, !tbaa !48
  %23 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom9 = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds %struct.qm_atom_t, ptr %22, i64 %idxprom9
  %x = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx10, i32 0, i32 2
  %24 = load float, ptr %x, align 4, !tbaa !55
  %25 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %coords = getelementptr inbounds %struct.molfile_timestep_t, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %coords, align 8, !tbaa !65
  %27 = load i32, ptr %i, align 4, !tbaa !40
  %mul = mul nsw i32 3, %27
  %idxprom11 = sext i32 %mul to i64
  %arrayidx12 = getelementptr inbounds float, ptr %26, i64 %idxprom11
  store float %24, ptr %arrayidx12, align 4, !tbaa !49
  %28 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms13 = getelementptr inbounds %struct.qmdata_t, ptr %28, i32 0, i32 65
  %29 = load ptr, ptr %atoms13, align 8, !tbaa !48
  %30 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom14 = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds %struct.qm_atom_t, ptr %29, i64 %idxprom14
  %y = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx15, i32 0, i32 3
  %31 = load float, ptr %y, align 4, !tbaa !56
  %32 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %coords16 = getelementptr inbounds %struct.molfile_timestep_t, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %coords16, align 8, !tbaa !65
  %34 = load i32, ptr %i, align 4, !tbaa !40
  %mul17 = mul nsw i32 3, %34
  %add = add nsw i32 %mul17, 1
  %idxprom18 = sext i32 %add to i64
  %arrayidx19 = getelementptr inbounds float, ptr %33, i64 %idxprom18
  store float %31, ptr %arrayidx19, align 4, !tbaa !49
  %35 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms20 = getelementptr inbounds %struct.qmdata_t, ptr %35, i32 0, i32 65
  %36 = load ptr, ptr %atoms20, align 8, !tbaa !48
  %37 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom21 = sext i32 %37 to i64
  %arrayidx22 = getelementptr inbounds %struct.qm_atom_t, ptr %36, i64 %idxprom21
  %z = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx22, i32 0, i32 4
  %38 = load float, ptr %z, align 4, !tbaa !57
  %39 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %coords23 = getelementptr inbounds %struct.molfile_timestep_t, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %coords23, align 8, !tbaa !65
  %41 = load i32, ptr %i, align 4, !tbaa !40
  %mul24 = mul nsw i32 3, %41
  %add25 = add nsw i32 %mul24, 2
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds float, ptr %40, i64 %idxprom26
  store float %38, ptr %arrayidx27, align 4, !tbaa !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, ptr %i, align 4, !tbaa !40
  %inc28 = add nsw i32 %42, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %43 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_sent29 = getelementptr inbounds %struct.qmdata_t, ptr %43, i32 0, i32 69
  %44 = load i32, ptr %num_frames_sent29, align 4, !tbaa !64
  %inc30 = add nsw i32 %44, 1
  store i32 %inc30, ptr %num_frames_sent29, align 4, !tbaa !64
  %45 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_sent31 = getelementptr inbounds %struct.qmdata_t, ptr %45, i32 0, i32 69
  %46 = load i32, ptr %num_frames_sent31, align 4, !tbaa !64
  %47 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames32 = getelementptr inbounds %struct.qmdata_t, ptr %47, i32 0, i32 67
  %48 = load i32, ptr %num_frames32, align 4, !tbaa !43
  %cmp33 = icmp eq i32 %46, %48
  br i1 %cmp33, label %if.then34, label %if.end102

if.then34:                                        ; preds = %for.end
  %49 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep = getelementptr inbounds %struct.qmdata_t, ptr %49, i32 0, i32 64
  %50 = load ptr, ptr %qm_timestep, align 8, !tbaa !69
  store ptr %50, ptr %cur_ts, align 8, !tbaa !27
  %51 = load ptr, ptr %data, align 8, !tbaa !27
  %call35 = call i32 @read_molecular_orbitals(ptr noundef %51)
  %52 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %cmp36 = icmp ne ptr %52, null
  br i1 %cmp36, label %land.lhs.true, label %if.end101

land.lhs.true:                                    ; preds = %if.then34
  %53 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %wave = getelementptr inbounds %struct.qm_timestep_t, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %wave, align 8, !tbaa !70
  %cmp37 = icmp ne ptr %54, null
  br i1 %cmp37, label %if.then38, label %if.end101

if.then38:                                        ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc98, %if.then38
  %55 = load i32, ptr %i, align 4, !tbaa !40
  %56 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %numwave = getelementptr inbounds %struct.qm_timestep_t, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %numwave, align 8, !tbaa !72
  %cmp40 = icmp slt i32 %55, %57
  br i1 %cmp40, label %for.body41, label %for.end100

for.body41:                                       ; preds = %for.cond39
  call void @llvm.lifetime.start.p0(i64 8, ptr %wave42) #11
  %58 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %wave43 = getelementptr inbounds %struct.qm_timestep_t, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %wave43, align 8, !tbaa !70
  %60 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom44 = sext i32 %60 to i64
  %arrayidx45 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %59, i64 %idxprom44
  store ptr %arrayidx45, ptr %wave42, align 8, !tbaa !27
  %61 = load ptr, ptr %wave42, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.qm_wavefunction_t, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %type, align 8, !tbaa !73
  %63 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave46 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %wave46, align 8, !tbaa !75
  %65 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom47 = sext i32 %65 to i64
  %arrayidx48 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %64, i64 %idxprom47
  %type49 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx48, i32 0, i32 0
  store i32 %62, ptr %type49, align 8, !tbaa !77
  %66 = load ptr, ptr %wave42, align 8, !tbaa !27
  %spin = getelementptr inbounds %struct.qm_wavefunction_t, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %spin, align 4, !tbaa !79
  %68 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave50 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %wave50, align 8, !tbaa !75
  %70 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom51 = sext i32 %70 to i64
  %arrayidx52 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %69, i64 %idxprom51
  %spin53 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx52, i32 0, i32 1
  store i32 %67, ptr %spin53, align 4, !tbaa !80
  %71 = load ptr, ptr %wave42, align 8, !tbaa !27
  %exci = getelementptr inbounds %struct.qm_wavefunction_t, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %exci, align 8, !tbaa !81
  %73 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave54 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %wave54, align 8, !tbaa !75
  %75 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom55 = sext i32 %75 to i64
  %arrayidx56 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %74, i64 %idxprom55
  %excitation = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx56, i32 0, i32 2
  store i32 %72, ptr %excitation, align 8, !tbaa !82
  %76 = load ptr, ptr %wave42, align 8, !tbaa !27
  %mult = getelementptr inbounds %struct.qm_wavefunction_t, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %mult, align 4, !tbaa !83
  %78 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave57 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %wave57, align 8, !tbaa !75
  %80 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom58 = sext i32 %80 to i64
  %arrayidx59 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %79, i64 %idxprom58
  %multiplicity = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx59, i32 0, i32 3
  store i32 %77, ptr %multiplicity, align 4, !tbaa !84
  %81 = load ptr, ptr %wave42, align 8, !tbaa !27
  %energy = getelementptr inbounds %struct.qm_wavefunction_t, ptr %81, i32 0, i32 9
  %82 = load double, ptr %energy, align 8, !tbaa !85
  %83 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave60 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %wave60, align 8, !tbaa !75
  %85 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom61 = sext i32 %85 to i64
  %arrayidx62 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %84, i64 %idxprom61
  %energy63 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx62, i32 0, i32 5
  store double %82, ptr %energy63, align 8, !tbaa !86
  %86 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave64 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %wave64, align 8, !tbaa !75
  %88 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom65 = sext i32 %88 to i64
  %arrayidx66 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %87, i64 %idxprom65
  %info = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx66, i32 0, i32 4
  %arraydecay = getelementptr inbounds [81 x i8], ptr %info, i64 0, i64 0
  %89 = load ptr, ptr %wave42, align 8, !tbaa !27
  %info67 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %89, i32 0, i32 4
  %arraydecay68 = getelementptr inbounds [81 x i8], ptr %info67, i64 0, i64 0
  %call69 = call ptr @strncpy(ptr noundef %arraydecay, ptr noundef %arraydecay68, i64 noundef 81) #11
  %90 = load ptr, ptr %wave42, align 8, !tbaa !27
  %wave_coeffs = getelementptr inbounds %struct.qm_wavefunction_t, ptr %90, i32 0, i32 10
  %91 = load ptr, ptr %wave_coeffs, align 8, !tbaa !87
  %tobool = icmp ne ptr %91, null
  br i1 %tobool, label %if.then70, label %if.end78

if.then70:                                        ; preds = %for.body41
  %92 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave71 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %wave71, align 8, !tbaa !75
  %94 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom72 = sext i32 %94 to i64
  %arrayidx73 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %93, i64 %idxprom72
  %wave_coeffs74 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx73, i32 0, i32 6
  %95 = load ptr, ptr %wave_coeffs74, align 8, !tbaa !88
  %96 = load ptr, ptr %wave42, align 8, !tbaa !27
  %wave_coeffs75 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %96, i32 0, i32 10
  %97 = load ptr, ptr %wave_coeffs75, align 8, !tbaa !87
  %98 = load ptr, ptr %wave42, align 8, !tbaa !27
  %num_orbitals = getelementptr inbounds %struct.qm_wavefunction_t, ptr %98, i32 0, i32 5
  %99 = load i32, ptr %num_orbitals, align 4, !tbaa !89
  %100 = load ptr, ptr %data, align 8, !tbaa !27
  %wavef_size = getelementptr inbounds %struct.qmdata_t, ptr %100, i32 0, i32 36
  %101 = load i32, ptr %wavef_size, align 8, !tbaa !90
  %mul76 = mul nsw i32 %99, %101
  %conv = sext i32 %mul76 to i64
  %mul77 = mul i64 %conv, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %95, ptr align 4 %97, i64 %mul77, i1 false)
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %for.body41
  %102 = load ptr, ptr %wave42, align 8, !tbaa !27
  %orb_energies = getelementptr inbounds %struct.qm_wavefunction_t, ptr %102, i32 0, i32 11
  %103 = load ptr, ptr %orb_energies, align 8, !tbaa !91
  %tobool79 = icmp ne ptr %103, null
  br i1 %tobool79, label %if.then80, label %if.end88

if.then80:                                        ; preds = %if.end78
  %104 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave81 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %wave81, align 8, !tbaa !75
  %106 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom82 = sext i32 %106 to i64
  %arrayidx83 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %105, i64 %idxprom82
  %orbital_energies = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx83, i32 0, i32 7
  %107 = load ptr, ptr %orbital_energies, align 8, !tbaa !92
  %108 = load ptr, ptr %wave42, align 8, !tbaa !27
  %orb_energies84 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %108, i32 0, i32 11
  %109 = load ptr, ptr %orb_energies84, align 8, !tbaa !91
  %110 = load ptr, ptr %wave42, align 8, !tbaa !27
  %num_orbitals85 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %110, i32 0, i32 5
  %111 = load i32, ptr %num_orbitals85, align 4, !tbaa !89
  %conv86 = sext i32 %111 to i64
  %mul87 = mul i64 %conv86, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %107, ptr align 4 %109, i64 %mul87, i1 false)
  br label %if.end88

if.end88:                                         ; preds = %if.then80, %if.end78
  %112 = load ptr, ptr %wave42, align 8, !tbaa !27
  %has_occup = getelementptr inbounds %struct.qm_wavefunction_t, ptr %112, i32 0, i32 8
  %113 = load i32, ptr %has_occup, align 8, !tbaa !93
  %tobool89 = icmp ne i32 %113, 0
  br i1 %tobool89, label %if.then90, label %if.end97

if.then90:                                        ; preds = %if.end88
  %114 = load ptr, ptr %qm_ts.addr, align 8, !tbaa !27
  %wave91 = getelementptr inbounds %struct.molfile_qm_timestep_t, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %wave91, align 8, !tbaa !75
  %116 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom92 = sext i32 %116 to i64
  %arrayidx93 = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %115, i64 %idxprom92
  %occupancies = getelementptr inbounds %struct.molfile_qm_wavefunction_t, ptr %arrayidx93, i32 0, i32 8
  %117 = load ptr, ptr %occupancies, align 8, !tbaa !94
  %118 = load ptr, ptr %wave42, align 8, !tbaa !27
  %orb_occupancies = getelementptr inbounds %struct.qm_wavefunction_t, ptr %118, i32 0, i32 12
  %119 = load ptr, ptr %orb_occupancies, align 8, !tbaa !95
  %120 = load ptr, ptr %wave42, align 8, !tbaa !27
  %num_orbitals94 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %120, i32 0, i32 5
  %121 = load i32, ptr %num_orbitals94, align 4, !tbaa !89
  %conv95 = sext i32 %121 to i64
  %mul96 = mul i64 %conv95, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %117, ptr align 4 %119, i64 %mul96, i1 false)
  br label %if.end97

if.end97:                                         ; preds = %if.then90, %if.end88
  call void @llvm.lifetime.end.p0(i64 8, ptr %wave42) #11
  br label %for.inc98

for.inc98:                                        ; preds = %if.end97
  %122 = load i32, ptr %i, align 4, !tbaa !40
  %inc99 = add nsw i32 %122, 1
  store i32 %inc99, ptr %i, align 4, !tbaa !40
  br label %for.cond39, !llvm.loop !96

for.end100:                                       ; preds = %for.cond39
  br label %if.end101

if.end101:                                        ; preds = %for.end100, %land.lhs.true, %if.then34
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_ts) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  %123 = load i32, ptr %retval, align 4
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal i32 @read_qm_timestep_metadata(ptr noundef %mydata, ptr noundef %meta) #0 {
entry:
  %retval = alloca i32, align 4
  %mydata.addr = alloca ptr, align 8
  %meta.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %moldendata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %cur_ts = alloca ptr, align 8
  store ptr %mydata, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %meta, ptr %meta.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11
  %0 = load ptr, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %0, ptr %data, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %moldendata) #11
  %1 = load ptr, ptr %data, align 8, !tbaa !27
  %format_specific_data = getelementptr inbounds %struct.qmdata_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %format_specific_data, align 8, !tbaa !32
  store ptr %2, ptr %moldendata, align 8, !tbaa !27
  %3 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_sent = getelementptr inbounds %struct.qmdata_t, ptr %3, i32 0, i32 69
  %4 = load i32, ptr %num_frames_sent, align 4, !tbaa !64
  %5 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames = getelementptr inbounds %struct.qmdata_t, ptr %5, i32 0, i32 67
  %6 = load i32, ptr %num_frames, align 4, !tbaa !43
  %cmp = icmp sge i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %coordsonly = getelementptr inbounds %struct.moldendata_t, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %coordsonly, align 8, !tbaa !36
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

if.end2:                                          ; preds = %if.end
  %9 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames_sent3 = getelementptr inbounds %struct.qmdata_t, ptr %9, i32 0, i32 69
  %10 = load i32, ptr %num_frames_sent3, align 4, !tbaa !64
  %11 = load ptr, ptr %data, align 8, !tbaa !27
  %num_frames4 = getelementptr inbounds %struct.qmdata_t, ptr %11, i32 0, i32 67
  %12 = load i32, ptr %num_frames4, align 4, !tbaa !43
  %sub = sub nsw i32 %12, 1
  %cmp5 = icmp eq i32 %10, %sub
  br i1 %cmp5, label %if.then6, label %if.end28

if.then6:                                         ; preds = %if.end2
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_ts) #11
  %13 = load ptr, ptr %data, align 8, !tbaa !27
  %call = call i32 @count_orbitals(ptr noundef %13)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then6
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.then6
  %14 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep = getelementptr inbounds %struct.qmdata_t, ptr %14, i32 0, i32 64
  %15 = load ptr, ptr %qm_timestep, align 8, !tbaa !69
  store ptr %15, ptr %cur_ts, align 8, !tbaa !27
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %16 = load i32, ptr %i, align 4, !tbaa !40
  %cmp10 = icmp slt i32 %16, 25
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %17 = load i32, ptr %i, align 4, !tbaa !40
  %18 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %numwave = getelementptr inbounds %struct.qm_timestep_t, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %numwave, align 8, !tbaa !72
  %cmp11 = icmp slt i32 %17, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %20 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs ]
  br i1 %20, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %21 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %wave = getelementptr inbounds %struct.qm_timestep_t, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %wave, align 8, !tbaa !70
  %23 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds %struct.qm_wavefunction_t, ptr %22, i64 %idxprom
  %num_orbitals = getelementptr inbounds %struct.qm_wavefunction_t, ptr %arrayidx, i32 0, i32 5
  %24 = load i32, ptr %num_orbitals, align 4, !tbaa !89
  %25 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %num_orbitals_per_wavef = getelementptr inbounds %struct.molfile_qm_timestep_metadata, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds [25 x i32], ptr %num_orbitals_per_wavef, i64 0, i64 %idxprom12
  store i32 %24, ptr %arrayidx13, align 4, !tbaa !40
  %27 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %wave14 = getelementptr inbounds %struct.qm_timestep_t, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %wave14, align 8, !tbaa !70
  %29 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %28, i64 %idxprom15
  %has_occup = getelementptr inbounds %struct.qm_wavefunction_t, ptr %arrayidx16, i32 0, i32 8
  %30 = load i32, ptr %has_occup, align 8, !tbaa !93
  %31 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %has_occup_per_wavef = getelementptr inbounds %struct.molfile_qm_timestep_metadata, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom17 = sext i32 %32 to i64
  %arrayidx18 = getelementptr inbounds [25 x i32], ptr %has_occup_per_wavef, i64 0, i64 %idxprom17
  store i32 %30, ptr %arrayidx18, align 4, !tbaa !40
  %33 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %wave19 = getelementptr inbounds %struct.qm_timestep_t, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %wave19, align 8, !tbaa !70
  %35 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom20 = sext i32 %35 to i64
  %arrayidx21 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %34, i64 %idxprom20
  %has_orben = getelementptr inbounds %struct.qm_wavefunction_t, ptr %arrayidx21, i32 0, i32 7
  %36 = load i32, ptr %has_orben, align 4, !tbaa !97
  %37 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %has_orben_per_wavef = getelementptr inbounds %struct.molfile_qm_timestep_metadata, ptr %37, i32 0, i32 5
  %38 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom22 = sext i32 %38 to i64
  %arrayidx23 = getelementptr inbounds [25 x i32], ptr %has_orben_per_wavef, i64 0, i64 %idxprom22
  store i32 %36, ptr %arrayidx23, align 4, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, ptr %i, align 4, !tbaa !40
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !98

for.end:                                          ; preds = %land.end
  %40 = load ptr, ptr %data, align 8, !tbaa !27
  %wavef_size = getelementptr inbounds %struct.qmdata_t, ptr %40, i32 0, i32 36
  %41 = load i32, ptr %wavef_size, align 8, !tbaa !90
  %42 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %wavef_size24 = getelementptr inbounds %struct.molfile_qm_timestep_metadata, ptr %42, i32 0, i32 8
  store i32 %41, ptr %wavef_size24, align 4, !tbaa !99
  %43 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %numwave25 = getelementptr inbounds %struct.qm_timestep_t, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %numwave25, align 8, !tbaa !72
  %45 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %num_wavef = getelementptr inbounds %struct.molfile_qm_timestep_metadata, ptr %45, i32 0, i32 7
  store i32 %44, ptr %num_wavef, align 4, !tbaa !101
  %46 = load ptr, ptr %cur_ts, align 8, !tbaa !27
  %num_scfiter = getelementptr inbounds %struct.qm_timestep_t, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %num_scfiter, align 8, !tbaa !102
  %48 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %num_scfiter26 = getelementptr inbounds %struct.molfile_qm_timestep_metadata, ptr %48, i32 0, i32 3
  store i32 %47, ptr %num_scfiter26, align 4, !tbaa !103
  %49 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %has_gradient = getelementptr inbounds %struct.molfile_qm_timestep_metadata, ptr %49, i32 0, i32 2
  store i32 0, ptr %has_gradient, align 4, !tbaa !104
  %50 = load ptr, ptr %meta.addr, align 8, !tbaa !27
  %num_charge_sets = getelementptr inbounds %struct.molfile_qm_timestep_metadata, ptr %50, i32 0, i32 9
  store i32 0, ptr %num_charge_sets, align 4, !tbaa !105
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_ts) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end28

if.end28:                                         ; preds = %cleanup.cont, %if.end2
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %if.end28, %cleanup, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %moldendata) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @read_molden_metadata(ptr noundef %mydata, ptr noundef %metadata) #0 {
entry:
  %retval = alloca i32, align 4
  %mydata.addr = alloca ptr, align 8
  %metadata.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %moldendata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mydata, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %metadata, ptr %metadata.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %moldendata) #11
  %0 = load ptr, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %0, ptr %data, align 8, !tbaa !27
  %1 = load ptr, ptr %data, align 8, !tbaa !27
  %format_specific_data = getelementptr inbounds %struct.qmdata_t, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %format_specific_data, align 8, !tbaa !32
  store ptr %2, ptr %moldendata, align 8, !tbaa !27
  %3 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %ncart = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %3, i32 0, i32 2
  store i32 0, ptr %ncart, align 4, !tbaa !106
  %4 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %nimag = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %4, i32 0, i32 0
  store i32 0, ptr %nimag, align 4, !tbaa !108
  %5 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %nintcoords = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %5, i32 0, i32 1
  store i32 0, ptr %nintcoords, align 4, !tbaa !109
  %6 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %have_sysinfo = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %6, i32 0, i32 7
  store i32 0, ptr %have_sysinfo, align 4, !tbaa !110
  %7 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %have_carthessian = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %7, i32 0, i32 8
  store i32 0, ptr %have_carthessian, align 4, !tbaa !111
  %8 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %have_inthessian = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %8, i32 0, i32 9
  store i32 0, ptr %have_inthessian, align 4, !tbaa !112
  %9 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %have_normalmodes = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %9, i32 0, i32 10
  store i32 0, ptr %have_normalmodes, align 4, !tbaa !113
  %10 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %num_basis_funcs = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %10, i32 0, i32 3
  store i32 0, ptr %num_basis_funcs, align 4, !tbaa !114
  %11 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %num_basis_atoms = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %11, i32 0, i32 4
  store i32 0, ptr %num_basis_atoms, align 4, !tbaa !115
  %12 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %num_shells = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %12, i32 0, i32 5
  store i32 0, ptr %num_shells, align 4, !tbaa !116
  %13 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %wavef_size = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %13, i32 0, i32 6
  store i32 0, ptr %wavef_size, align 4, !tbaa !117
  %14 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %coordsonly = getelementptr inbounds %struct.moldendata_t, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %coordsonly, align 8, !tbaa !36
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %data, align 8, !tbaa !27
  %call = call i32 @get_basis(ptr noundef %16)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = load ptr, ptr %data, align 8, !tbaa !27
  %num_basis_funcs3 = getelementptr inbounds %struct.qmdata_t, ptr %17, i32 0, i32 27
  %18 = load i32, ptr %num_basis_funcs3, align 8, !tbaa !118
  %19 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %num_basis_funcs4 = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %19, i32 0, i32 3
  store i32 %18, ptr %num_basis_funcs4, align 4, !tbaa !114
  %20 = load ptr, ptr %data, align 8, !tbaa !27
  %num_basis_atoms5 = getelementptr inbounds %struct.qmdata_t, ptr %20, i32 0, i32 28
  %21 = load i32, ptr %num_basis_atoms5, align 4, !tbaa !119
  %22 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %num_basis_atoms6 = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %22, i32 0, i32 4
  store i32 %21, ptr %num_basis_atoms6, align 4, !tbaa !115
  %23 = load ptr, ptr %data, align 8, !tbaa !27
  %num_shells7 = getelementptr inbounds %struct.qmdata_t, ptr %23, i32 0, i32 31
  %24 = load i32, ptr %num_shells7, align 8, !tbaa !120
  %25 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %num_shells8 = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %25, i32 0, i32 5
  store i32 %24, ptr %num_shells8, align 4, !tbaa !116
  %26 = load ptr, ptr %data, align 8, !tbaa !27
  %wavef_size9 = getelementptr inbounds %struct.qmdata_t, ptr %26, i32 0, i32 36
  %27 = load i32, ptr %wavef_size9, align 8, !tbaa !90
  %28 = load ptr, ptr %metadata.addr, align 8, !tbaa !27
  %wavef_size10 = getelementptr inbounds %struct.molfile_qm_metadata_t, ptr %28, i32 0, i32 6
  store i32 %27, ptr %wavef_size10, align 4, !tbaa !117
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %moldendata) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @read_molden_rundata(ptr noundef %mydata, ptr noundef %qm_data) #0 {
entry:
  %retval = alloca i32, align 4
  %mydata.addr = alloca ptr, align 8
  %qm_data.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %i = alloca i32, align 4
  %hessian_data = alloca ptr, align 8
  %basis_data = alloca ptr, align 8
  %sys_data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mydata, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %qm_data, ptr %qm_data.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11
  %0 = load ptr, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %0, ptr %data, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %hessian_data) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %basis_data) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %sys_data) #11
  %1 = load ptr, ptr %qm_data.addr, align 8, !tbaa !27
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %qm_data.addr, align 8, !tbaa !27
  %hess = getelementptr inbounds %struct.molfile_qm_t, ptr %2, i32 0, i32 2
  store ptr %hess, ptr %hessian_data, align 8, !tbaa !27
  %3 = load ptr, ptr %qm_data.addr, align 8, !tbaa !27
  %basis = getelementptr inbounds %struct.molfile_qm_t, ptr %3, i32 0, i32 1
  store ptr %basis, ptr %basis_data, align 8, !tbaa !27
  %4 = load ptr, ptr %qm_data.addr, align 8, !tbaa !27
  %run = getelementptr inbounds %struct.molfile_qm_t, ptr %4, i32 0, i32 0
  store ptr %run, ptr %sys_data, align 8, !tbaa !27
  %5 = load ptr, ptr %data, align 8, !tbaa !27
  %num_electrons = getelementptr inbounds %struct.qmdata_t, ptr %5, i32 0, i32 18
  %6 = load i32, ptr %num_electrons, align 8, !tbaa !121
  %7 = load ptr, ptr %sys_data, align 8, !tbaa !27
  %num_electrons1 = getelementptr inbounds %struct.molfile_qm_sysinfo_t, ptr %7, i32 0, i32 5
  store i32 %6, ptr %num_electrons1, align 4, !tbaa !122
  %8 = load ptr, ptr %data, align 8, !tbaa !27
  %totalcharge = getelementptr inbounds %struct.qmdata_t, ptr %8, i32 0, i32 16
  %9 = load i32, ptr %totalcharge, align 8, !tbaa !124
  %10 = load ptr, ptr %sys_data, align 8, !tbaa !27
  %totalcharge2 = getelementptr inbounds %struct.molfile_qm_sysinfo_t, ptr %10, i32 0, i32 6
  store i32 %9, ptr %totalcharge2, align 8, !tbaa !125
  %11 = load ptr, ptr %data, align 8, !tbaa !27
  %num_basis_funcs = getelementptr inbounds %struct.qmdata_t, ptr %11, i32 0, i32 27
  %12 = load i32, ptr %num_basis_funcs, align 8, !tbaa !118
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.then4, label %if.end57

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %13 = load i32, ptr %i, align 4, !tbaa !40
  %14 = load ptr, ptr %data, align 8, !tbaa !27
  %num_basis_atoms = getelementptr inbounds %struct.qmdata_t, ptr %14, i32 0, i32 28
  %15 = load i32, ptr %num_basis_atoms, align 4, !tbaa !119
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %data, align 8, !tbaa !27
  %num_shells_per_atom = getelementptr inbounds %struct.qmdata_t, ptr %16, i32 0, i32 30
  %17 = load ptr, ptr %num_shells_per_atom, align 8, !tbaa !126
  %18 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  %19 = load i32, ptr %arrayidx, align 4, !tbaa !40
  %20 = load ptr, ptr %basis_data, align 8, !tbaa !27
  %num_shells_per_atom5 = getelementptr inbounds %struct.molfile_qm_basis_t, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %num_shells_per_atom5, align 8, !tbaa !127
  %22 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom6 = sext i32 %22 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %21, i64 %idxprom6
  store i32 %19, ptr %arrayidx7, align 4, !tbaa !40
  %23 = load ptr, ptr %data, align 8, !tbaa !27
  %atomicnum_per_basisatom = getelementptr inbounds %struct.qmdata_t, ptr %23, i32 0, i32 29
  %24 = load ptr, ptr %atomicnum_per_basisatom, align 8, !tbaa !129
  %25 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom8 = sext i32 %25 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %24, i64 %idxprom8
  %26 = load i32, ptr %arrayidx9, align 4, !tbaa !40
  %27 = load ptr, ptr %basis_data, align 8, !tbaa !27
  %atomic_number = getelementptr inbounds %struct.molfile_qm_basis_t, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %atomic_number, align 8, !tbaa !130
  %29 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom10 = sext i32 %29 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %28, i64 %idxprom10
  store i32 %26, ptr %arrayidx11, align 4, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4, !tbaa !40
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc25, %for.end
  %31 = load i32, ptr %i, align 4, !tbaa !40
  %32 = load ptr, ptr %data, align 8, !tbaa !27
  %num_shells = getelementptr inbounds %struct.qmdata_t, ptr %32, i32 0, i32 31
  %33 = load i32, ptr %num_shells, align 8, !tbaa !120
  %cmp13 = icmp slt i32 %31, %33
  br i1 %cmp13, label %for.body14, label %for.end27

for.body14:                                       ; preds = %for.cond12
  %34 = load ptr, ptr %data, align 8, !tbaa !27
  %num_prim_per_shell = getelementptr inbounds %struct.qmdata_t, ptr %34, i32 0, i32 32
  %35 = load ptr, ptr %num_prim_per_shell, align 8, !tbaa !132
  %36 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom15 = sext i32 %36 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %35, i64 %idxprom15
  %37 = load i32, ptr %arrayidx16, align 4, !tbaa !40
  %38 = load ptr, ptr %basis_data, align 8, !tbaa !27
  %num_prim_per_shell17 = getelementptr inbounds %struct.molfile_qm_basis_t, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %num_prim_per_shell17, align 8, !tbaa !133
  %40 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom18 = sext i32 %40 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %39, i64 %idxprom18
  store i32 %37, ptr %arrayidx19, align 4, !tbaa !40
  %41 = load ptr, ptr %data, align 8, !tbaa !27
  %shell_types = getelementptr inbounds %struct.qmdata_t, ptr %41, i32 0, i32 33
  %42 = load ptr, ptr %shell_types, align 8, !tbaa !134
  %43 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom20 = sext i32 %43 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %42, i64 %idxprom20
  %44 = load i32, ptr %arrayidx21, align 4, !tbaa !40
  %45 = load ptr, ptr %basis_data, align 8, !tbaa !27
  %shell_types22 = getelementptr inbounds %struct.molfile_qm_basis_t, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %shell_types22, align 8, !tbaa !135
  %47 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom23 = sext i32 %47 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %46, i64 %idxprom23
  store i32 %44, ptr %arrayidx24, align 4, !tbaa !40
  br label %for.inc25

for.inc25:                                        ; preds = %for.body14
  %48 = load i32, ptr %i, align 4, !tbaa !40
  %inc26 = add nsw i32 %48, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !40
  br label %for.cond12, !llvm.loop !136

for.end27:                                        ; preds = %for.cond12
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc38, %for.end27
  %49 = load i32, ptr %i, align 4, !tbaa !40
  %50 = load ptr, ptr %data, align 8, !tbaa !27
  %num_basis_funcs29 = getelementptr inbounds %struct.qmdata_t, ptr %50, i32 0, i32 27
  %51 = load i32, ptr %num_basis_funcs29, align 8, !tbaa !118
  %mul = mul nsw i32 2, %51
  %cmp30 = icmp slt i32 %49, %mul
  br i1 %cmp30, label %for.body31, label %for.end40

for.body31:                                       ; preds = %for.cond28
  %52 = load ptr, ptr %data, align 8, !tbaa !27
  %basis32 = getelementptr inbounds %struct.qmdata_t, ptr %52, i32 0, i32 25
  %53 = load ptr, ptr %basis32, align 8, !tbaa !137
  %54 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom33 = sext i32 %54 to i64
  %arrayidx34 = getelementptr inbounds float, ptr %53, i64 %idxprom33
  %55 = load float, ptr %arrayidx34, align 4, !tbaa !49
  %56 = load ptr, ptr %basis_data, align 8, !tbaa !27
  %basis35 = getelementptr inbounds %struct.molfile_qm_basis_t, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %basis35, align 8, !tbaa !138
  %58 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom36 = sext i32 %58 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %57, i64 %idxprom36
  store float %55, ptr %arrayidx37, align 4, !tbaa !49
  br label %for.inc38

for.inc38:                                        ; preds = %for.body31
  %59 = load i32, ptr %i, align 4, !tbaa !40
  %inc39 = add nsw i32 %59, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !40
  br label %for.cond28, !llvm.loop !139

for.end40:                                        ; preds = %for.cond28
  %60 = load ptr, ptr %data, align 8, !tbaa !27
  %angular_momentum = getelementptr inbounds %struct.qmdata_t, ptr %60, i32 0, i32 37
  %61 = load ptr, ptr %angular_momentum, align 8, !tbaa !140
  %tobool41 = icmp ne ptr %61, null
  br i1 %tobool41, label %if.then42, label %if.end56

if.then42:                                        ; preds = %for.end40
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc53, %if.then42
  %62 = load i32, ptr %i, align 4, !tbaa !40
  %63 = load ptr, ptr %data, align 8, !tbaa !27
  %wavef_size = getelementptr inbounds %struct.qmdata_t, ptr %63, i32 0, i32 36
  %64 = load i32, ptr %wavef_size, align 8, !tbaa !90
  %mul44 = mul nsw i32 3, %64
  %cmp45 = icmp slt i32 %62, %mul44
  br i1 %cmp45, label %for.body46, label %for.end55

for.body46:                                       ; preds = %for.cond43
  %65 = load ptr, ptr %data, align 8, !tbaa !27
  %angular_momentum47 = getelementptr inbounds %struct.qmdata_t, ptr %65, i32 0, i32 37
  %66 = load ptr, ptr %angular_momentum47, align 8, !tbaa !140
  %67 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom48 = sext i32 %67 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %66, i64 %idxprom48
  %68 = load i32, ptr %arrayidx49, align 4, !tbaa !40
  %69 = load ptr, ptr %basis_data, align 8, !tbaa !27
  %angular_momentum50 = getelementptr inbounds %struct.molfile_qm_basis_t, ptr %69, i32 0, i32 4
  %70 = load ptr, ptr %angular_momentum50, align 8, !tbaa !141
  %71 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom51 = sext i32 %71 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %70, i64 %idxprom51
  store i32 %68, ptr %arrayidx52, align 4, !tbaa !40
  br label %for.inc53

for.inc53:                                        ; preds = %for.body46
  %72 = load i32, ptr %i, align 4, !tbaa !40
  %inc54 = add nsw i32 %72, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !40
  br label %for.cond43, !llvm.loop !142

for.end55:                                        ; preds = %for.cond43
  br label %if.end56

if.end56:                                         ; preds = %for.end55, %for.end40
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sys_data) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %basis_data) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %hessian_data) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11
  %73 = load i32, ptr %retval, align 4
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal void @close_molden_read(ptr noundef %mydata) #0 {
entry:
  %mydata.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr %mydata, ptr %mydata.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11
  %0 = load ptr, ptr %mydata.addr, align 8, !tbaa !27
  store ptr %0, ptr %data, align 8, !tbaa !27
  %1 = load ptr, ptr %data, align 8, !tbaa !27
  %file = getelementptr inbounds %struct.qmdata_t, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %file, align 8, !tbaa !28
  %call = call i32 @fclose(ptr noundef %2)
  %3 = load ptr, ptr %data, align 8, !tbaa !27
  %atoms = getelementptr inbounds %struct.qmdata_t, ptr %3, i32 0, i32 65
  %4 = load ptr, ptr %atoms, align 8, !tbaa !48
  call void @free(ptr noundef %4) #11
  %5 = load ptr, ptr %data, align 8, !tbaa !27
  %basis = getelementptr inbounds %struct.qmdata_t, ptr %5, i32 0, i32 25
  %6 = load ptr, ptr %basis, align 8, !tbaa !137
  call void @free(ptr noundef %6) #11
  %7 = load ptr, ptr %data, align 8, !tbaa !27
  %shell_types = getelementptr inbounds %struct.qmdata_t, ptr %7, i32 0, i32 33
  %8 = load ptr, ptr %shell_types, align 8, !tbaa !134
  call void @free(ptr noundef %8) #11
  %9 = load ptr, ptr %data, align 8, !tbaa !27
  %atomicnum_per_basisatom = getelementptr inbounds %struct.qmdata_t, ptr %9, i32 0, i32 29
  %10 = load ptr, ptr %atomicnum_per_basisatom, align 8, !tbaa !129
  call void @free(ptr noundef %10) #11
  %11 = load ptr, ptr %data, align 8, !tbaa !27
  %num_shells_per_atom = getelementptr inbounds %struct.qmdata_t, ptr %11, i32 0, i32 30
  %12 = load ptr, ptr %num_shells_per_atom, align 8, !tbaa !126
  call void @free(ptr noundef %12) #11
  %13 = load ptr, ptr %data, align 8, !tbaa !27
  %num_prim_per_shell = getelementptr inbounds %struct.qmdata_t, ptr %13, i32 0, i32 32
  %14 = load ptr, ptr %num_prim_per_shell, align 8, !tbaa !132
  call void @free(ptr noundef %14) #11
  %15 = load ptr, ptr %data, align 8, !tbaa !27
  %angular_momentum = getelementptr inbounds %struct.qmdata_t, ptr %15, i32 0, i32 37
  %16 = load ptr, ptr %angular_momentum, align 8, !tbaa !140
  call void @free(ptr noundef %16) #11
  %17 = load ptr, ptr %data, align 8, !tbaa !27
  %basis_set = getelementptr inbounds %struct.qmdata_t, ptr %17, i32 0, i32 26
  %18 = load ptr, ptr %basis_set, align 8, !tbaa !143
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %if.then
  %19 = load i32, ptr %i, align 4, !tbaa !40
  %20 = load ptr, ptr %data, align 8, !tbaa !27
  %num_basis_atoms = getelementptr inbounds %struct.qmdata_t, ptr %20, i32 0, i32 28
  %21 = load i32, ptr %num_basis_atoms, align 4, !tbaa !119
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !40
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %22 = load i32, ptr %j, align 4, !tbaa !40
  %23 = load ptr, ptr %data, align 8, !tbaa !27
  %basis_set2 = getelementptr inbounds %struct.qmdata_t, ptr %23, i32 0, i32 26
  %24 = load ptr, ptr %basis_set2, align 8, !tbaa !143
  %25 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds %struct.basis_atom_t, ptr %24, i64 %idxprom
  %numshells = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx, i32 0, i32 2
  %26 = load i32, ptr %numshells, align 8, !tbaa !144
  %cmp3 = icmp slt i32 %22, %26
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %27 = load ptr, ptr %data, align 8, !tbaa !27
  %basis_set5 = getelementptr inbounds %struct.qmdata_t, ptr %27, i32 0, i32 26
  %28 = load ptr, ptr %basis_set5, align 8, !tbaa !143
  %29 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom6 = sext i32 %29 to i64
  %arrayidx7 = getelementptr inbounds %struct.basis_atom_t, ptr %28, i64 %idxprom6
  %shell = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx7, i32 0, i32 3
  %30 = load ptr, ptr %shell, align 8, !tbaa !146
  %31 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom8 = sext i32 %31 to i64
  %arrayidx9 = getelementptr inbounds %struct.shell_t, ptr %30, i64 %idxprom8
  %prim = getelementptr inbounds %struct.shell_t, ptr %arrayidx9, i32 0, i32 3
  %32 = load ptr, ptr %prim, align 8, !tbaa !147
  call void @free(ptr noundef %32) #11
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %33 = load i32, ptr %j, align 4, !tbaa !40
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %j, align 4, !tbaa !40
  br label %for.cond1, !llvm.loop !149

for.end:                                          ; preds = %for.cond1
  %34 = load ptr, ptr %data, align 8, !tbaa !27
  %basis_set10 = getelementptr inbounds %struct.qmdata_t, ptr %34, i32 0, i32 26
  %35 = load ptr, ptr %basis_set10, align 8, !tbaa !143
  %36 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom11 = sext i32 %36 to i64
  %arrayidx12 = getelementptr inbounds %struct.basis_atom_t, ptr %35, i64 %idxprom11
  %shell13 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx12, i32 0, i32 3
  %37 = load ptr, ptr %shell13, align 8, !tbaa !146
  call void @free(ptr noundef %37) #11
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %38 = load i32, ptr %i, align 4, !tbaa !40
  %inc15 = add nsw i32 %38, 1
  store i32 %inc15, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !150

for.end16:                                        ; preds = %for.cond
  %39 = load ptr, ptr %data, align 8, !tbaa !27
  %basis_set17 = getelementptr inbounds %struct.qmdata_t, ptr %39, i32 0, i32 26
  %40 = load ptr, ptr %basis_set17, align 8, !tbaa !143
  call void @free(ptr noundef %40) #11
  br label %if.end

if.end:                                           ; preds = %for.end16, %entry
  %41 = load ptr, ptr %data, align 8, !tbaa !27
  %format_specific_data = getelementptr inbounds %struct.qmdata_t, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %format_specific_data, align 8, !tbaa !32
  call void @free(ptr noundef %42) #11
  %43 = load ptr, ptr %data, align 8, !tbaa !27
  %filepos_array = getelementptr inbounds %struct.qmdata_t, ptr %43, i32 0, i32 71
  %44 = load ptr, ptr %filepos_array, align 8, !tbaa !45
  call void @free(ptr noundef %44) #11
  %45 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep = getelementptr inbounds %struct.qmdata_t, ptr %45, i32 0, i32 64
  %46 = load ptr, ptr %qm_timestep, align 8, !tbaa !69
  %cmp18 = icmp ne ptr %46, null
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end
  store i32 0, ptr %j, align 4, !tbaa !40
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %if.then19
  %47 = load i32, ptr %j, align 4, !tbaa !40
  %48 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep21 = getelementptr inbounds %struct.qmdata_t, ptr %48, i32 0, i32 64
  %49 = load ptr, ptr %qm_timestep21, align 8, !tbaa !69
  %arrayidx22 = getelementptr inbounds %struct.qm_timestep_t, ptr %49, i64 0
  %numwave = getelementptr inbounds %struct.qm_timestep_t, ptr %arrayidx22, i32 0, i32 1
  %50 = load i32, ptr %numwave, align 8, !tbaa !72
  %cmp23 = icmp slt i32 %47, %50
  br i1 %cmp23, label %for.body24, label %for.end41

for.body24:                                       ; preds = %for.cond20
  %51 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep25 = getelementptr inbounds %struct.qmdata_t, ptr %51, i32 0, i32 64
  %52 = load ptr, ptr %qm_timestep25, align 8, !tbaa !69
  %arrayidx26 = getelementptr inbounds %struct.qm_timestep_t, ptr %52, i64 0
  %wave = getelementptr inbounds %struct.qm_timestep_t, ptr %arrayidx26, i32 0, i32 0
  %53 = load ptr, ptr %wave, align 8, !tbaa !70
  %54 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom27 = sext i32 %54 to i64
  %arrayidx28 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %53, i64 %idxprom27
  %wave_coeffs = getelementptr inbounds %struct.qm_wavefunction_t, ptr %arrayidx28, i32 0, i32 10
  %55 = load ptr, ptr %wave_coeffs, align 8, !tbaa !87
  call void @free(ptr noundef %55) #11
  %56 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep29 = getelementptr inbounds %struct.qmdata_t, ptr %56, i32 0, i32 64
  %57 = load ptr, ptr %qm_timestep29, align 8, !tbaa !69
  %arrayidx30 = getelementptr inbounds %struct.qm_timestep_t, ptr %57, i64 0
  %wave31 = getelementptr inbounds %struct.qm_timestep_t, ptr %arrayidx30, i32 0, i32 0
  %58 = load ptr, ptr %wave31, align 8, !tbaa !70
  %59 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom32 = sext i32 %59 to i64
  %arrayidx33 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %58, i64 %idxprom32
  %orb_energies = getelementptr inbounds %struct.qm_wavefunction_t, ptr %arrayidx33, i32 0, i32 11
  %60 = load ptr, ptr %orb_energies, align 8, !tbaa !91
  call void @free(ptr noundef %60) #11
  %61 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep34 = getelementptr inbounds %struct.qmdata_t, ptr %61, i32 0, i32 64
  %62 = load ptr, ptr %qm_timestep34, align 8, !tbaa !69
  %arrayidx35 = getelementptr inbounds %struct.qm_timestep_t, ptr %62, i64 0
  %wave36 = getelementptr inbounds %struct.qm_timestep_t, ptr %arrayidx35, i32 0, i32 0
  %63 = load ptr, ptr %wave36, align 8, !tbaa !70
  %64 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom37 = sext i32 %64 to i64
  %arrayidx38 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %63, i64 %idxprom37
  %orb_occupancies = getelementptr inbounds %struct.qm_wavefunction_t, ptr %arrayidx38, i32 0, i32 12
  %65 = load ptr, ptr %orb_occupancies, align 8, !tbaa !95
  call void @free(ptr noundef %65) #11
  br label %for.inc39

for.inc39:                                        ; preds = %for.body24
  %66 = load i32, ptr %j, align 4, !tbaa !40
  %inc40 = add nsw i32 %66, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !40
  br label %for.cond20, !llvm.loop !151

for.end41:                                        ; preds = %for.cond20
  %67 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep42 = getelementptr inbounds %struct.qmdata_t, ptr %67, i32 0, i32 64
  %68 = load ptr, ptr %qm_timestep42, align 8, !tbaa !69
  %arrayidx43 = getelementptr inbounds %struct.qm_timestep_t, ptr %68, i64 0
  %wave44 = getelementptr inbounds %struct.qm_timestep_t, ptr %arrayidx43, i32 0, i32 0
  %69 = load ptr, ptr %wave44, align 8, !tbaa !70
  call void @free(ptr noundef %69) #11
  %70 = load ptr, ptr %data, align 8, !tbaa !27
  %qm_timestep45 = getelementptr inbounds %struct.qmdata_t, ptr %70, i32 0, i32 64
  %71 = load ptr, ptr %qm_timestep45, align 8, !tbaa !69
  call void @free(ptr noundef %71) #11
  br label %if.end47

if.else:                                          ; preds = %if.end
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.219)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %for.end41
  %72 = load ptr, ptr %data, align 8, !tbaa !27
  call void @free(ptr noundef %72) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @moldenplugin_register(ptr noundef %v, ptr noundef %cb) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %cb.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8, !tbaa !27
  store ptr %cb, ptr %cb.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %cb.addr, align 8, !tbaa !27
  %1 = load ptr, ptr %v.addr, align 8, !tbaa !27
  %call = call i32 %0(ptr noundef %1, ptr noundef @plugin)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @moldenplugin_fini() #0 {
entry:
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal ptr @strtoupper(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sz = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #11
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !27
  %call = call i64 @strlen(ptr noundef %0) #13
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %sz, align 4, !tbaa !40
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !27
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4, !tbaa !40
  %3 = load i32, ptr %sz, align 4, !tbaa !40
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11
  %call4 = call ptr @__ctype_toupper_loc() #15
  %4 = load ptr, ptr %call4, align 8, !tbaa !27
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !27
  %6 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !35
  %conv5 = sext i8 %7 to i32
  %idxprom6 = sext i32 %conv5 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %4, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !40
  store i32 %8, ptr %__res, align 4, !tbaa !40
  %9 = load i32, ptr %__res, align 4, !tbaa !40
  store i32 %9, ptr %tmp, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11
  %10 = load i32, ptr %tmp, align 4, !tbaa !40
  %conv8 = trunc i32 %10 to i8
  %11 = load ptr, ptr %s.addr, align 8, !tbaa !27
  %12 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 %idxprom9
  store i8 %conv8, ptr %arrayidx10, align 1, !tbaa !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4, !tbaa !40
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !152

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal ptr @trimleft(ptr noundef %the_string) #0 {
entry:
  %the_string.addr = alloca ptr, align 8
  %new_string = alloca ptr, align 8
  store ptr %the_string, ptr %the_string.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_string) #11
  %0 = load ptr, ptr %the_string.addr, align 8, !tbaa !27
  store ptr %0, ptr %new_string, align 8, !tbaa !27
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %new_string, align 8, !tbaa !27
  %2 = load i8, ptr %1, align 1, !tbaa !35
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %3 = load ptr, ptr %new_string, align 8, !tbaa !27
  %4 = load i8, ptr %3, align 1, !tbaa !35
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %land.rhs, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %new_string, align 8, !tbaa !27
  %6 = load i8, ptr %5, align 1, !tbaa !35
  %conv6 = sext i8 %6 to i32
  %cmp7 = icmp eq i32 %conv6, 9
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %while.cond
  %7 = load ptr, ptr %new_string, align 8, !tbaa !27
  %8 = load i8, ptr %7, align 1, !tbaa !35
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp ne i32 %conv9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false5
  %9 = phi i1 [ false, %lor.lhs.false5 ], [ %cmp10, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %new_string, align 8, !tbaa !27
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %new_string, align 8, !tbaa !27
  br label %while.cond, !llvm.loop !153

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr %new_string, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_string) #11
  ret ptr %11
}

; Function Attrs: nounwind uwtable
define internal ptr @trimright(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !27
  %call = call i64 @strlen(ptr noundef %0) #13
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !40
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call ptr @__ctype_b_loc() #15
  %2 = load ptr, ptr %call2, align 8, !tbaa !27
  %3 = load ptr, ptr %s.addr, align 8, !tbaa !27
  %4 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !35
  %conv3 = sext i8 %5 to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %2, i64 %idxprom4
  %6 = load i16, ptr %arrayidx5, align 2, !tbaa !154
  %conv6 = zext i16 %6 to i32
  %and = and i32 %conv6, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !40
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !156

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load ptr, ptr %s.addr, align 8, !tbaa !27
  %9 = load i32, ptr %i, align 4, !tbaa !40
  %add = add nsw i32 %9, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %idxprom7
  store i8 0, ptr %arrayidx8, align 1, !tbaa !35
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  ret ptr %10
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal void @eatwhitelines(ptr noundef %file) #0 {
entry:
  %file.addr = alloca ptr, align 8
  %buffer = alloca [8192 x i8], align 16
  %filepos = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8192, ptr %buffer) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %filepos) #11
  %0 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %call = call i64 @ftell(ptr noundef %0)
  store i64 %call, ptr %filepos, align 8, !tbaa !38
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %buffer, i64 0, i64 0
  %1 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %call1 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 8192, ptr noundef %1)
  %tobool = icmp ne ptr %call1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay2 = getelementptr inbounds [8192 x i8], ptr %buffer, i64 0, i64 0
  %call3 = call ptr @trimright(ptr noundef %arraydecay2)
  %call4 = call i64 @strlen(ptr noundef %call3) #13
  %tobool5 = icmp ne i64 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %3 = load i64, ptr %filepos, align 8, !tbaa !38
  %call6 = call i32 @fseek(ptr noundef %2, i64 noundef %3, i32 noundef 0)
  br label %while.end

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %call7 = call i64 @ftell(ptr noundef %4)
  store i64 %call7, ptr %filepos, align 8, !tbaa !38
  br label %while.cond, !llvm.loop !157

while.end:                                        ; preds = %if.then, %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %filepos) #11
  call void @llvm.lifetime.end.p0(i64 8192, ptr %buffer) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #6

declare i64 @ftell(ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @iswhiteline(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !27
  %call = call ptr @trimleft(ptr noundef %0)
  %call1 = call i64 @strlen(ptr noundef %call) #13
  %tobool = icmp ne i64 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind uwtable
define internal void @eatline(ptr noundef %fd, i32 noundef %n) #0 {
entry:
  %fd.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %readbuf = alloca [1025 x i8], align 16
  store ptr %fd, ptr %fd.addr, align 8, !tbaa !27
  store i32 %n, ptr %n.addr, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !40
  %1 = load i32, ptr %n.addr, align 4, !tbaa !40
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1025, ptr %readbuf) #11
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %readbuf, i64 0, i64 0
  %2 = load ptr, ptr %fd.addr, align 8, !tbaa !27
  %call = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 1025, ptr %readbuf) #11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !40
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !158

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  ret void
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #7

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #6

; Function Attrs: nounwind uwtable
define internal ptr @init_qmdata() #0 {
entry:
  %retval = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 49808) #12
  store ptr %call, ptr %data, align 8, !tbaa !27
  %0 = load ptr, ptr %data, align 8, !tbaa !27
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %data, align 8, !tbaa !27
  %runtype = getelementptr inbounds %struct.qmdata_t, ptr %1, i32 0, i32 3
  store i32 0, ptr %runtype, align 4, !tbaa !159
  %2 = load ptr, ptr %data, align 8, !tbaa !27
  %scftype = getelementptr inbounds %struct.qmdata_t, ptr %2, i32 0, i32 4
  store i32 0, ptr %scftype, align 8, !tbaa !160
  %3 = load ptr, ptr %data, align 8, !tbaa !27
  %dfttype = getelementptr inbounds %struct.qmdata_t, ptr %3, i32 0, i32 5
  store i32 0, ptr %dfttype, align 4, !tbaa !161
  %4 = load ptr, ptr %data, align 8, !tbaa !27
  %citype = getelementptr inbounds %struct.qmdata_t, ptr %4, i32 0, i32 6
  store i32 0, ptr %citype, align 8, !tbaa !162
  %5 = load ptr, ptr %data, align 8, !tbaa !27
  %status = getelementptr inbounds %struct.qmdata_t, ptr %5, i32 0, i32 66
  store i32 -1, ptr %status, align 8, !tbaa !163
  %6 = load ptr, ptr %data, align 8, !tbaa !27
  %trajectory_done = getelementptr inbounds %struct.qmdata_t, ptr %6, i32 0, i32 70
  store i32 0, ptr %trajectory_done, align 8, !tbaa !164
  %7 = load ptr, ptr %data, align 8, !tbaa !27
  %have_internals = getelementptr inbounds %struct.qmdata_t, ptr %7, i32 0, i32 45
  store i32 0, ptr %have_internals, align 8, !tbaa !165
  %8 = load ptr, ptr %data, align 8, !tbaa !27
  %have_int_hessian = getelementptr inbounds %struct.qmdata_t, ptr %8, i32 0, i32 47
  store i32 0, ptr %have_int_hessian, align 8, !tbaa !166
  %9 = load ptr, ptr %data, align 8, !tbaa !27
  %have_cart_hessian = getelementptr inbounds %struct.qmdata_t, ptr %9, i32 0, i32 46
  store i32 0, ptr %have_cart_hessian, align 4, !tbaa !167
  %10 = load ptr, ptr %data, align 8, !tbaa !27
  %have_normal_modes = getelementptr inbounds %struct.qmdata_t, ptr %10, i32 0, i32 39
  store i32 0, ptr %have_normal_modes, align 4, !tbaa !168
  %11 = load ptr, ptr %data, align 8, !tbaa !27
  %basis_string = getelementptr inbounds %struct.qmdata_t, ptr %11, i32 0, i32 9
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %basis_string, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 2 %arraydecay, i8 0, i64 8192, i1 false)
  %12 = load ptr, ptr %data, align 8, !tbaa !27
  %version_string = getelementptr inbounds %struct.qmdata_t, ptr %12, i32 0, i32 13
  %arraydecay1 = getelementptr inbounds [8192 x i8], ptr %version_string, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 2 %arraydecay1, i8 0, i64 8192, i1 false)
  %13 = load ptr, ptr %data, align 8, !tbaa !27
  %memory = getelementptr inbounds %struct.qmdata_t, ptr %13, i32 0, i32 15
  %arraydecay2 = getelementptr inbounds [256 x i8], ptr %memory, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay2, i8 0, i64 256, i1 false)
  %14 = load ptr, ptr %data, align 8, !tbaa !27
  store ptr %14, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() #8

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #8

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind uwtable
define internal i32 @get_pte_idx_from_string(ptr noundef %label) #0 {
entry:
  %retval = alloca i32, align 4
  %label.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ind = alloca i32, align 4
  %atom = alloca [3 x i8], align 1
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res30 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %__res43 = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  store ptr %label, ptr %label.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %ind) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr %atom) #11
  %0 = load ptr, ptr %label.addr, align 8, !tbaa !27
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end61

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [3 x i8], ptr %atom, i64 0, i64 2
  store i8 0, ptr %arrayidx, align 1, !tbaa !35
  %arrayidx1 = getelementptr inbounds [3 x i8], ptr %atom, i64 0, i64 1
  store i8 0, ptr %arrayidx1, align 1, !tbaa !35
  %arrayidx2 = getelementptr inbounds [3 x i8], ptr %atom, i64 0, i64 0
  store i8 0, ptr %arrayidx2, align 1, !tbaa !35
  store i32 0, ptr %ind, align 4, !tbaa !40
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %ind, align 4, !tbaa !40
  %cmp3 = icmp slt i32 %1, 2
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %label.addr, align 8, !tbaa !27
  %3 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx4, align 1, !tbaa !35
  %conv = sext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load ptr, ptr %label.addr, align 8, !tbaa !27
  %7 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 %idxprom7
  %8 = load i8, ptr %arrayidx8, align 1, !tbaa !35
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp ne i32 %conv9, 32
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11
  %call = call ptr @__ctype_toupper_loc() #15
  %9 = load ptr, ptr %call, align 8, !tbaa !27
  %10 = load ptr, ptr %label.addr, align 8, !tbaa !27
  %11 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %10, i64 %idxprom13
  %12 = load i8, ptr %arrayidx14, align 1, !tbaa !35
  %conv15 = sext i8 %12 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %9, i64 %idxprom16
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !40
  store i32 %13, ptr %__res, align 4, !tbaa !40
  %14 = load i32, ptr %__res, align 4, !tbaa !40
  store i32 %14, ptr %tmp, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11
  %15 = load i32, ptr %tmp, align 4, !tbaa !40
  %conv18 = trunc i32 %15 to i8
  %16 = load i32, ptr %ind, align 4, !tbaa !40
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [3 x i8], ptr %atom, i64 0, i64 %idxprom19
  store i8 %conv18, ptr %arrayidx20, align 1, !tbaa !35
  %17 = load i32, ptr %ind, align 4, !tbaa !40
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %ind, align 4, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4, !tbaa !40
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !169

for.end:                                          ; preds = %land.end
  %19 = load i32, ptr %ind, align 4, !tbaa !40
  %cmp22 = icmp slt i32 %19, 1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end25:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc58, %if.end25
  %20 = load i32, ptr %i, align 4, !tbaa !40
  %cmp27 = icmp slt i32 %20, 112
  br i1 %cmp27, label %for.body29, label %for.end60

for.body29:                                       ; preds = %for.cond26
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res30) #11
  %call31 = call ptr @__ctype_toupper_loc() #15
  %21 = load ptr, ptr %call31, align 8, !tbaa !27
  %22 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [112 x ptr], ptr @pte_label, i64 0, i64 %idxprom32
  %23 = load ptr, ptr %arrayidx33, align 8, !tbaa !27
  %arrayidx34 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx34, align 1, !tbaa !35
  %conv35 = sext i8 %24 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %21, i64 %idxprom36
  %25 = load i32, ptr %arrayidx37, align 4, !tbaa !40
  store i32 %25, ptr %__res30, align 4, !tbaa !40
  %26 = load i32, ptr %__res30, align 4, !tbaa !40
  store i32 %26, ptr %tmp38, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res30) #11
  %27 = load i32, ptr %tmp38, align 4, !tbaa !40
  %arrayidx39 = getelementptr inbounds [3 x i8], ptr %atom, i64 0, i64 0
  %28 = load i8, ptr %arrayidx39, align 1, !tbaa !35
  %conv40 = sext i8 %28 to i32
  %cmp41 = icmp eq i32 %27, %conv40
  br i1 %cmp41, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %for.body29
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res43) #11
  %call44 = call ptr @__ctype_toupper_loc() #15
  %29 = load ptr, ptr %call44, align 8, !tbaa !27
  %30 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom45 = sext i32 %30 to i64
  %arrayidx46 = getelementptr inbounds [112 x ptr], ptr @pte_label, i64 0, i64 %idxprom45
  %31 = load ptr, ptr %arrayidx46, align 8, !tbaa !27
  %arrayidx47 = getelementptr inbounds i8, ptr %31, i64 1
  %32 = load i8, ptr %arrayidx47, align 1, !tbaa !35
  %conv48 = sext i8 %32 to i32
  %idxprom49 = sext i32 %conv48 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %29, i64 %idxprom49
  %33 = load i32, ptr %arrayidx50, align 4, !tbaa !40
  store i32 %33, ptr %__res43, align 4, !tbaa !40
  %34 = load i32, ptr %__res43, align 4, !tbaa !40
  store i32 %34, ptr %tmp51, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res43) #11
  %35 = load i32, ptr %tmp51, align 4, !tbaa !40
  %arrayidx52 = getelementptr inbounds [3 x i8], ptr %atom, i64 0, i64 1
  %36 = load i8, ptr %arrayidx52, align 1, !tbaa !35
  %conv53 = sext i8 %36 to i32
  %cmp54 = icmp eq i32 %35, %conv53
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  %37 = load i32, ptr %i, align 4, !tbaa !40
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true, %for.body29
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %38 = load i32, ptr %i, align 4, !tbaa !40
  %inc59 = add nsw i32 %38, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !40
  br label %for.cond26, !llvm.loop !170

for.end60:                                        ; preds = %for.cond26
  br label %if.end61

if.end61:                                         ; preds = %for.end60, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then56, %if.then24
  call void @llvm.lifetime.end.p0(i64 3, ptr %atom) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ind) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @read_geom_block(ptr noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %buffer = alloca [1024 x i8], align 16
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buffer) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #11
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file = getelementptr inbounds %struct.qmdata_t, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %file, align 8, !tbaa !28
  call void @eatline(ptr noundef %1, i32 noundef 1)
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !40
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %numatoms = getelementptr inbounds %struct.qmdata_t, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %numatoms, align 8, !tbaa !42
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file1 = getelementptr inbounds %struct.qmdata_t, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %file1, align 8, !tbaa !28
  %call = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef %6)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arraydecay2 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call3 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay2, ptr noundef @.str.155, ptr noundef %x, ptr noundef %y, ptr noundef %z) #11
  %7 = load float, ptr %x, align 4, !tbaa !49
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %atoms = getelementptr inbounds %struct.qmdata_t, ptr %8, i32 0, i32 65
  %9 = load ptr, ptr %atoms, align 8, !tbaa !48
  %10 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.qm_atom_t, ptr %9, i64 %idxprom
  %x4 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx, i32 0, i32 2
  store float %7, ptr %x4, align 4, !tbaa !55
  %11 = load float, ptr %y, align 4, !tbaa !49
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %atoms5 = getelementptr inbounds %struct.qmdata_t, ptr %12, i32 0, i32 65
  %13 = load ptr, ptr %atoms5, align 8, !tbaa !48
  %14 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds %struct.qm_atom_t, ptr %13, i64 %idxprom6
  %y8 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx7, i32 0, i32 3
  store float %11, ptr %y8, align 4, !tbaa !56
  %15 = load float, ptr %z, align 4, !tbaa !49
  %16 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %atoms9 = getelementptr inbounds %struct.qmdata_t, ptr %16, i32 0, i32 65
  %17 = load ptr, ptr %atoms9, align 8, !tbaa !48
  %18 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds %struct.qm_atom_t, ptr %17, i64 %idxprom10
  %z12 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx11, i32 0, i32 4
  store float %15, ptr %z12, align 4, !tbaa !57
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4, !tbaa !40
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !171

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buffer) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @read_molecular_orbitals(ptr noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %moldendata = alloca ptr, align 8
  %wave = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %moldendata) #11
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %format_specific_data = getelementptr inbounds %struct.qmdata_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %format_specific_data, align 8, !tbaa !32
  store ptr %1, ptr %moldendata, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %wave) #11
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %qm_timestep = getelementptr inbounds %struct.qmdata_t, ptr %2, i32 0, i32 64
  %3 = load ptr, ptr %qm_timestep, align 8, !tbaa !69
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %coordsonly = getelementptr inbounds %struct.moldendata_t, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %coordsonly, align 8, !tbaa !36
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file = getelementptr inbounds %struct.qmdata_t, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %file, align 8, !tbaa !28
  %8 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_mo = getelementptr inbounds %struct.moldendata_t, ptr %8, i32 0, i32 3
  %9 = load i64, ptr %filepos_mo, align 8, !tbaa !47
  %call = call i32 @fseek(ptr noundef %7, i64 noundef %9, i32 noundef 0)
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %qm_timestep2 = getelementptr inbounds %struct.qmdata_t, ptr %10, i32 0, i32 64
  %11 = load ptr, ptr %qm_timestep2, align 8, !tbaa !69
  %wave3 = getelementptr inbounds %struct.qm_timestep_t, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %wave3, align 8, !tbaa !70
  %arrayidx = getelementptr inbounds %struct.qm_wavefunction_t, ptr %12, i64 0
  store ptr %arrayidx, ptr %wave, align 8, !tbaa !27
  %13 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_coeffs = getelementptr inbounds %struct.qm_wavefunction_t, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %num_coeffs, align 8, !tbaa !172
  %15 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_orbitals = getelementptr inbounds %struct.qm_wavefunction_t, ptr %15, i32 0, i32 5
  %16 = load i32, ptr %num_orbitals, align 4, !tbaa !89
  %mul = mul nsw i32 %14, %16
  %conv = sext i32 %mul to i64
  %call4 = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #12
  %17 = load ptr, ptr %wave, align 8, !tbaa !27
  %wave_coeffs = getelementptr inbounds %struct.qm_wavefunction_t, ptr %17, i32 0, i32 10
  store ptr %call4, ptr %wave_coeffs, align 8, !tbaa !87
  %18 = load ptr, ptr %wave, align 8, !tbaa !27
  %wave_coeffs5 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %wave_coeffs5, align 8, !tbaa !87
  %cmp = icmp eq ptr %19, null
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %20 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.34, ptr noundef @.str.156)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %21 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file10 = getelementptr inbounds %struct.qmdata_t, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %file10, align 8, !tbaa !28
  %23 = load ptr, ptr %wave, align 8, !tbaa !27
  %call11 = call i32 @read_wave_coeffs(ptr noundef %22, ptr noundef %23)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %24 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %qm_timestep15 = getelementptr inbounds %struct.qmdata_t, ptr %24, i32 0, i32 64
  %25 = load ptr, ptr %qm_timestep15, align 8, !tbaa !69
  %numwave = getelementptr inbounds %struct.qm_timestep_t, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %numwave, align 8, !tbaa !72
  %cmp16 = icmp eq i32 %26, 1
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %qm_timestep20 = getelementptr inbounds %struct.qmdata_t, ptr %27, i32 0, i32 64
  %28 = load ptr, ptr %qm_timestep20, align 8, !tbaa !69
  %wave21 = getelementptr inbounds %struct.qm_timestep_t, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %wave21, align 8, !tbaa !70
  %arrayidx22 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %29, i64 1
  store ptr %arrayidx22, ptr %wave, align 8, !tbaa !27
  %30 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_coeffs23 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %30, i32 0, i32 6
  %31 = load i32, ptr %num_coeffs23, align 8, !tbaa !172
  %32 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_orbitals24 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %num_orbitals24, align 4, !tbaa !89
  %mul25 = mul nsw i32 %31, %33
  %conv26 = sext i32 %mul25 to i64
  %call27 = call noalias ptr @calloc(i64 noundef %conv26, i64 noundef 4) #12
  %34 = load ptr, ptr %wave, align 8, !tbaa !27
  %wave_coeffs28 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %34, i32 0, i32 10
  store ptr %call27, ptr %wave_coeffs28, align 8, !tbaa !87
  %35 = load ptr, ptr %wave, align 8, !tbaa !27
  %wave_coeffs29 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %35, i32 0, i32 10
  %36 = load ptr, ptr %wave_coeffs29, align 8, !tbaa !87
  %cmp30 = icmp eq ptr %36, null
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end19
  %37 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.34, ptr noundef @.str.156)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end19
  %38 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file35 = getelementptr inbounds %struct.qmdata_t, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %file35, align 8, !tbaa !28
  %40 = load ptr, ptr %wave, align 8, !tbaa !27
  %call36 = call i32 @read_wave_coeffs(ptr noundef %39, ptr noundef %40)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end34
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then38, %if.then32, %if.then18, %if.then13, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %wave) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %moldendata) #11
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal i32 @read_wave_coeffs(ptr noundef %file, ptr noundef %wave) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %wave.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nr = alloca i32, align 4
  %buffer = alloca [1024 x i8], align 16
  %AOid = alloca i32, align 4
  %wf_coeff = alloca float, align 4
  %keystring = alloca [10 x i8], align 1
  %wave_coeffs = alloca ptr, align 8
  %nr2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !27
  store ptr %wave, ptr %wave.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buffer) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %AOid) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %wf_coeff) #11
  call void @llvm.lifetime.start.p0(i64 10, ptr %keystring) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %wave_coeffs) #11
  %0 = load ptr, ptr %wave.addr, align 8, !tbaa !27
  %wave_coeffs1 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %wave_coeffs1, align 8, !tbaa !87
  store ptr %1, ptr %wave_coeffs, align 8, !tbaa !27
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !40
  %3 = load ptr, ptr %wave.addr, align 8, !tbaa !27
  %num_orbitals = getelementptr inbounds %struct.qm_wavefunction_t, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %num_orbitals, align 4, !tbaa !89
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !40
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !tbaa !40
  %6 = load ptr, ptr %wave.addr, align 8, !tbaa !27
  %num_coeffs = getelementptr inbounds %struct.qm_wavefunction_t, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %num_coeffs, align 8, !tbaa !172
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load ptr, ptr %wave_coeffs, align 8, !tbaa !27
  %9 = load i32, ptr %i, align 4, !tbaa !40
  %10 = load ptr, ptr %wave.addr, align 8, !tbaa !27
  %num_coeffs5 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %num_coeffs5, align 8, !tbaa !172
  %mul = mul nsw i32 %9, %11
  %12 = load i32, ptr %j, align 4, !tbaa !40
  %add = add nsw i32 %mul, %12
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, ptr %8, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4, !tbaa !49
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %13 = load i32, ptr %j, align 4, !tbaa !40
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !40
  br label %for.cond2, !llvm.loop !173

for.end:                                          ; preds = %for.cond2
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4, !tbaa !40
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !174

for.end8:                                         ; preds = %for.cond
  %15 = load ptr, ptr %file.addr, align 8, !tbaa !27
  call void @eatline(ptr noundef %15, i32 noundef 3)
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc33, %for.end8
  %16 = load i32, ptr %i, align 4, !tbaa !40
  %17 = load ptr, ptr %wave.addr, align 8, !tbaa !27
  %num_orbitals10 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %num_orbitals10, align 4, !tbaa !89
  %cmp11 = icmp slt i32 %16, %18
  br i1 %cmp11, label %for.body12, label %for.end35

for.body12:                                       ; preds = %for.cond9
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %for.body12
  br label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr2) #11
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %19 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %call = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef %19)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %arraydecay13 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call14 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay13, ptr noundef @.str.157, ptr noundef %AOid, ptr noundef %wf_coeff) #11
  store i32 %call14, ptr %nr, align 4, !tbaa !40
  %20 = load float, ptr %wf_coeff, align 4, !tbaa !49
  %21 = load ptr, ptr %wave_coeffs, align 8, !tbaa !27
  %22 = load i32, ptr %i, align 4, !tbaa !40
  %23 = load ptr, ptr %wave.addr, align 8, !tbaa !27
  %num_coeffs15 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %23, i32 0, i32 6
  %24 = load i32, ptr %num_coeffs15, align 8, !tbaa !172
  %mul16 = mul nsw i32 %22, %24
  %25 = load i32, ptr %AOid, align 4, !tbaa !40
  %add17 = add nsw i32 %mul16, %25
  %sub = sub nsw i32 %add17, 1
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds float, ptr %21, i64 %idxprom18
  store float %20, ptr %arrayidx19, align 4, !tbaa !49
  %arraydecay20 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [10 x i8], ptr %keystring, i64 0, i64 0
  %call22 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay20, ptr noundef @.str.8, ptr noundef %arraydecay21) #11
  store i32 %call22, ptr %nr2, align 4, !tbaa !40
  %arraydecay23 = getelementptr inbounds [10 x i8], ptr %keystring, i64 0, i64 0
  %call24 = call i32 @strcmp(ptr noundef %arraydecay23, ptr noundef @.str.158) #13
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %lor.lhs.false, label %if.then27

lor.lhs.false:                                    ; preds = %if.end
  %26 = load i32, ptr %nr2, align 4, !tbaa !40
  %cmp26 = icmp eq i32 %26, -1
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false, %if.end
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %27 = load i32, ptr %nr, align 4, !tbaa !40
  %cmp29 = icmp eq i32 %27, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.159)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then30, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr2) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup36 [
    i32 0, label %cleanup.cont
    i32 12, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup
  %28 = load ptr, ptr %file.addr, align 8, !tbaa !27
  call void @eatline(ptr noundef %28, i32 noundef 2)
  br label %for.inc33

for.inc33:                                        ; preds = %while.end
  %29 = load i32, ptr %i, align 4, !tbaa !40
  %inc34 = add nsw i32 %29, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !40
  br label %for.cond9, !llvm.loop !175

for.end35:                                        ; preds = %for.cond9
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %for.end35, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %wave_coeffs) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr %keystring) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %wf_coeff) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %AOid) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buffer) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @count_orbitals(ptr noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %nr = alloca i32, align 4
  %num_wave_coeff = alloca i32, align 4
  %orbenergy = alloca float, align 4
  %occu = alloca float, align 4
  %spin = alloca [1024 x i8], align 16
  %wave = alloca ptr, align 8
  %moldendata = alloca ptr, align 8
  %dummy1 = alloca i32, align 4
  %dummy2 = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %check_reads = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %check_reads63 = alloca i32, align 4
  %__res85 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_wave_coeff) #11
  store i32 0, ptr %num_wave_coeff, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %orbenergy) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %occu) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %spin) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %wave) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %moldendata) #11
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %format_specific_data = getelementptr inbounds %struct.qmdata_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %format_specific_data, align 8, !tbaa !32
  store ptr %1, ptr %moldendata, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy2) #11
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file = getelementptr inbounds %struct.qmdata_t, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %file, align 8, !tbaa !28
  %4 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_mo = getelementptr inbounds %struct.moldendata_t, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %filepos_mo, align 8, !tbaa !47
  %call = call i32 @fseek(ptr noundef %3, i64 noundef %5, i32 noundef 0)
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file1 = getelementptr inbounds %struct.qmdata_t, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %file1, align 8, !tbaa !28
  %call2 = call i32 (ptr, ...) @goto_keyline(ptr noundef %7, ptr noundef @.str.160, ptr noundef null)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.161)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup105

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file4 = getelementptr inbounds %struct.qmdata_t, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %file4, align 8, !tbaa !28
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %call5 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %9, ptr noundef @.str.162, ptr noundef %arraydecay)
  store i32 %call5, ptr %nr, align 4, !tbaa !40
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file6 = getelementptr inbounds %struct.qmdata_t, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %file6, align 8, !tbaa !28
  call void @eatline(ptr noundef %11, i32 noundef 1)
  %arraydecay7 = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %call8 = call ptr @strtoupper(ptr noundef %arraydecay7)
  %arraydecay9 = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %call10 = call i32 @strcmp(ptr noundef %arraydecay9, ptr noundef @.str.163) #13
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup105

if.end13:                                         ; preds = %if.end
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %wavef_size = getelementptr inbounds %struct.qmdata_t, ptr %12, i32 0, i32 36
  %13 = load i32, ptr %wavef_size, align 8, !tbaa !90
  store i32 %13, ptr %num_wave_coeff, align 4, !tbaa !40
  %call14 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 80) #12
  %14 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %qm_timestep = getelementptr inbounds %struct.qmdata_t, ptr %14, i32 0, i32 64
  store ptr %call14, ptr %qm_timestep, align 8, !tbaa !69
  %15 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %qm_timestep15 = getelementptr inbounds %struct.qmdata_t, ptr %15, i32 0, i32 64
  %16 = load ptr, ptr %qm_timestep15, align 8, !tbaa !69
  %call16 = call ptr @add_wavefunction(ptr noundef %16)
  store ptr %call16, ptr %wave, align 8, !tbaa !27
  %17 = load ptr, ptr %wave, align 8, !tbaa !27
  %spin17 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %17, i32 0, i32 1
  store i32 0, ptr %spin17, align 4, !tbaa !79
  %18 = load ptr, ptr %wave, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.qm_wavefunction_t, ptr %18, i32 0, i32 0
  store i32 18, ptr %type, align 8, !tbaa !73
  %19 = load ptr, ptr %wave, align 8, !tbaa !27
  %exci = getelementptr inbounds %struct.qm_wavefunction_t, ptr %19, i32 0, i32 2
  store i32 0, ptr %exci, align 8, !tbaa !81
  %20 = load ptr, ptr %wave, align 8, !tbaa !27
  %mult = getelementptr inbounds %struct.qm_wavefunction_t, ptr %20, i32 0, i32 3
  store i32 1, ptr %mult, align 4, !tbaa !83
  %21 = load i32, ptr %num_wave_coeff, align 4, !tbaa !40
  %22 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_coeffs = getelementptr inbounds %struct.qm_wavefunction_t, ptr %22, i32 0, i32 6
  store i32 %21, ptr %num_coeffs, align 8, !tbaa !172
  %23 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file18 = getelementptr inbounds %struct.qmdata_t, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %file18, align 8, !tbaa !28
  %25 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_mo19 = getelementptr inbounds %struct.moldendata_t, ptr %25, i32 0, i32 3
  %26 = load i64, ptr %filepos_mo19, align 8, !tbaa !47
  %call20 = call i32 @fseek(ptr noundef %24, i64 noundef %26, i32 noundef 0)
  %27 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file21 = getelementptr inbounds %struct.qmdata_t, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %file21, align 8, !tbaa !28
  %call22 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %28, ptr noundef @.str.164, ptr noundef %orbenergy)
  %29 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file23 = getelementptr inbounds %struct.qmdata_t, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %file23, align 8, !tbaa !28
  %arraydecay24 = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %call25 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %30, ptr noundef @.str.162, ptr noundef %arraydecay24)
  %31 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file26 = getelementptr inbounds %struct.qmdata_t, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %file26, align 8, !tbaa !28
  %call27 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %32, ptr noundef @.str.165, ptr noundef %occu)
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end13
  br label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %check_reads) #11
  store i32 2, ptr %check_reads, align 4, !tbaa !40
  %33 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_orbitals = getelementptr inbounds %struct.qm_wavefunction_t, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %num_orbitals, align 4, !tbaa !89
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %num_orbitals, align 4, !tbaa !89
  br label %while.cond28

while.cond28:                                     ; preds = %while.body29, %while.body
  %35 = load i32, ptr %check_reads, align 4, !tbaa !40
  %cmp = icmp eq i32 %35, 2
  br i1 %cmp, label %while.body29, label %while.end

while.body29:                                     ; preds = %while.cond28
  %36 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file30 = getelementptr inbounds %struct.qmdata_t, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %file30, align 8, !tbaa !28
  %call31 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %37, ptr noundef @.str.157, ptr noundef %dummy1, ptr noundef %dummy2)
  store i32 %call31, ptr %check_reads, align 4, !tbaa !40
  br label %while.cond28, !llvm.loop !176

while.end:                                        ; preds = %while.cond28
  %38 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file32 = getelementptr inbounds %struct.qmdata_t, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %file32, align 8, !tbaa !28
  %call33 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %39, ptr noundef @.str.164, ptr noundef %orbenergy)
  store i32 %call33, ptr %nr, align 4, !tbaa !40
  %40 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file34 = getelementptr inbounds %struct.qmdata_t, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %file34, align 8, !tbaa !28
  %arraydecay35 = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %call36 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %41, ptr noundef @.str.162, ptr noundef %arraydecay35)
  %42 = load i32, ptr %nr, align 4, !tbaa !40
  %add = add nsw i32 %42, %call36
  store i32 %add, ptr %nr, align 4, !tbaa !40
  %43 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file37 = getelementptr inbounds %struct.qmdata_t, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %file37, align 8, !tbaa !28
  %call38 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %44, ptr noundef @.str.165, ptr noundef %occu)
  %45 = load i32, ptr %nr, align 4, !tbaa !40
  %add39 = add nsw i32 %45, %call38
  store i32 %add39, ptr %nr, align 4, !tbaa !40
  %46 = load i32, ptr %nr, align 4, !tbaa !40
  %cmp40 = icmp ne i32 %46, 3
  br i1 %cmp40, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11
  %call41 = call ptr @__ctype_toupper_loc() #15
  %47 = load ptr, ptr %call41, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %48 = load i8, ptr %arrayidx, align 16, !tbaa !35
  %conv = sext i8 %48 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %47, i64 %idxprom
  %49 = load i32, ptr %arrayidx42, align 4, !tbaa !40
  store i32 %49, ptr %__res, align 4, !tbaa !40
  %50 = load i32, ptr %__res, align 4, !tbaa !40
  store i32 %50, ptr %tmp, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11
  %51 = load i32, ptr %tmp, align 4, !tbaa !40
  %cmp43 = icmp ne i32 %51, 65
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false, %while.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then45
  call void @llvm.lifetime.end.p0(i64 4, ptr %check_reads) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end47
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end47:                                      ; preds = %cleanup
  %arraydecay48 = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %call49 = call ptr @strtoupper(ptr noundef %arraydecay48)
  %call50 = call i32 @strcmp(ptr noundef %call49, ptr noundef @.str.166) #13
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end104, label %if.then52

if.then52:                                        ; preds = %while.end47
  %52 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %qm_timestep53 = getelementptr inbounds %struct.qmdata_t, ptr %52, i32 0, i32 64
  %53 = load ptr, ptr %qm_timestep53, align 8, !tbaa !69
  %call54 = call ptr @add_wavefunction(ptr noundef %53)
  store ptr %call54, ptr %wave, align 8, !tbaa !27
  %54 = load ptr, ptr %wave, align 8, !tbaa !27
  %spin55 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %54, i32 0, i32 1
  store i32 1, ptr %spin55, align 4, !tbaa !79
  %55 = load ptr, ptr %wave, align 8, !tbaa !27
  %type56 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %55, i32 0, i32 0
  store i32 18, ptr %type56, align 8, !tbaa !73
  %56 = load ptr, ptr %wave, align 8, !tbaa !27
  %exci57 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %56, i32 0, i32 2
  store i32 0, ptr %exci57, align 8, !tbaa !81
  %57 = load ptr, ptr %wave, align 8, !tbaa !27
  %mult58 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %57, i32 0, i32 3
  store i32 1, ptr %mult58, align 4, !tbaa !83
  %58 = load i32, ptr %num_wave_coeff, align 4, !tbaa !40
  %59 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_coeffs59 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %59, i32 0, i32 6
  store i32 %58, ptr %num_coeffs59, align 8, !tbaa !172
  %60 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_orbitals60 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %60, i32 0, i32 5
  store i32 1, ptr %num_orbitals60, align 4, !tbaa !89
  br label %while.cond61

while.cond61:                                     ; preds = %cleanup.cont102, %if.then52
  br label %while.body62

while.body62:                                     ; preds = %while.cond61
  call void @llvm.lifetime.start.p0(i64 4, ptr %check_reads63) #11
  store i32 2, ptr %check_reads63, align 4, !tbaa !40
  %61 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_orbitals64 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %num_orbitals64, align 4, !tbaa !89
  %inc65 = add nsw i32 %62, 1
  store i32 %inc65, ptr %num_orbitals64, align 4, !tbaa !89
  br label %while.cond66

while.cond66:                                     ; preds = %while.body69, %while.body62
  %63 = load i32, ptr %check_reads63, align 4, !tbaa !40
  %cmp67 = icmp eq i32 %63, 2
  br i1 %cmp67, label %while.body69, label %while.end72

while.body69:                                     ; preds = %while.cond66
  %64 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file70 = getelementptr inbounds %struct.qmdata_t, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %file70, align 8, !tbaa !28
  %call71 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %65, ptr noundef @.str.157, ptr noundef %dummy1, ptr noundef %dummy2)
  store i32 %call71, ptr %check_reads63, align 4, !tbaa !40
  br label %while.cond66, !llvm.loop !177

while.end72:                                      ; preds = %while.cond66
  %66 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file73 = getelementptr inbounds %struct.qmdata_t, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %file73, align 8, !tbaa !28
  %call74 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %67, ptr noundef @.str.164, ptr noundef %orbenergy)
  store i32 %call74, ptr %nr, align 4, !tbaa !40
  %68 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file75 = getelementptr inbounds %struct.qmdata_t, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %file75, align 8, !tbaa !28
  %arraydecay76 = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %call77 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %69, ptr noundef @.str.162, ptr noundef %arraydecay76)
  %70 = load i32, ptr %nr, align 4, !tbaa !40
  %add78 = add nsw i32 %70, %call77
  store i32 %add78, ptr %nr, align 4, !tbaa !40
  %71 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file79 = getelementptr inbounds %struct.qmdata_t, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %file79, align 8, !tbaa !28
  %call80 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %72, ptr noundef @.str.165, ptr noundef %occu)
  %73 = load i32, ptr %nr, align 4, !tbaa !40
  %add81 = add nsw i32 %73, %call80
  store i32 %add81, ptr %nr, align 4, !tbaa !40
  %74 = load i32, ptr %nr, align 4, !tbaa !40
  %cmp82 = icmp ne i32 %74, 3
  br i1 %cmp82, label %if.then98, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %while.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res85) #11
  %call86 = call ptr @__ctype_toupper_loc() #15
  %75 = load ptr, ptr %call86, align 8, !tbaa !27
  %arrayidx87 = getelementptr inbounds [1024 x i8], ptr %spin, i64 0, i64 0
  %76 = load i8, ptr %arrayidx87, align 16, !tbaa !35
  %conv88 = sext i8 %76 to i32
  %idxprom89 = sext i32 %conv88 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %75, i64 %idxprom89
  %77 = load i32, ptr %arrayidx90, align 4, !tbaa !40
  store i32 %77, ptr %__res85, align 4, !tbaa !40
  %78 = load i32, ptr %__res85, align 4, !tbaa !40
  store i32 %78, ptr %tmp91, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res85) #11
  %79 = load i32, ptr %tmp91, align 4, !tbaa !40
  %cmp92 = icmp ne i32 %79, 66
  br i1 %cmp92, label %if.then98, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %lor.lhs.false84
  %80 = load ptr, ptr %wave, align 8, !tbaa !27
  %num_orbitals95 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %80, i32 0, i32 5
  %81 = load i32, ptr %num_orbitals95, align 4, !tbaa !89
  %82 = load i32, ptr %num_wave_coeff, align 4, !tbaa !40
  %cmp96 = icmp sge i32 %81, %82
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %lor.lhs.false94, %lor.lhs.false84, %while.end72
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup100

if.end99:                                         ; preds = %lor.lhs.false94
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup100

cleanup100:                                       ; preds = %if.end99, %if.then98
  call void @llvm.lifetime.end.p0(i64 4, ptr %check_reads63) #11
  %cleanup.dest101 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest101, label %unreachable [
    i32 0, label %cleanup.cont102
    i32 7, label %while.end103
  ]

cleanup.cont102:                                  ; preds = %cleanup100
  br label %while.cond61

while.end103:                                     ; preds = %cleanup100
  br label %if.end104

if.end104:                                        ; preds = %while.end103, %while.end47
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup105

cleanup105:                                       ; preds = %if.end104, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %moldendata) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %wave) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr %spin) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %occu) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %orbenergy) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_wave_coeff) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #11
  %83 = load i32, ptr %retval, align 4
  ret i32 %83

unreachable:                                      ; preds = %cleanup100, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @goto_keyline(ptr noundef %file, ...) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %buffer = alloca [8192 x i8], align 16
  %keystring = alloca ptr, align 8
  %found = alloca i32, align 4
  %loop = alloca i32, align 4
  %filepos = alloca i64, align 8
  %curline = alloca i64, align 8
  %argptr = alloca [1 x %struct.__va_list_tag], align 16
  %narg = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8192, ptr %buffer) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %keystring) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #11
  store i32 0, ptr %found, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %loop) #11
  store i32 1, ptr %loop, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %filepos) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %curline) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr %argptr) #11
  %0 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %call = call i64 @ftell(ptr noundef %0)
  store i64 %call, ptr %filepos, align 8, !tbaa !38
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %1 = load i32, ptr %loop, align 4, !tbaa !40
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end16

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %narg) #11
  store i32 0, ptr %narg, align 4, !tbaa !40
  %2 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %call1 = call i64 @ftell(ptr noundef %2)
  store i64 %call1, ptr %curline, align 8, !tbaa !38
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %buffer, i64 0, i64 0
  %3 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %call2 = call ptr @fgets(ptr noundef %arraydecay, i32 noundef 8192, ptr noundef %3)
  %tobool3 = icmp ne ptr %call2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %5 = load i64, ptr %filepos, align 8, !tbaa !38
  %call4 = call i32 @fseek(ptr noundef %4, i64 noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argptr, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay5)
  br label %while.cond6

while.cond6:                                      ; preds = %if.end14, %if.end
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argptr, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay7, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond6
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay7, i32 0, i32 3
  %reg_save_area = load ptr, ptr %6, align 16
  %7 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %8 = add i32 %gp_offset, 8
  store i32 %8, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond6
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %arraydecay7, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %7, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %9 = load ptr, ptr %vaarg.addr, align 8
  store ptr %9, ptr %keystring, align 8, !tbaa !27
  %cmp = icmp ne ptr %9, null
  br i1 %cmp, label %while.body8, label %while.end

while.body8:                                      ; preds = %vaarg.end
  %arraydecay9 = getelementptr inbounds [8192 x i8], ptr %buffer, i64 0, i64 0
  %10 = load ptr, ptr %keystring, align 8, !tbaa !27
  %call10 = call ptr @strstr(ptr noundef %arraydecay9, ptr noundef %10) #13
  %tobool11 = icmp ne ptr %call10, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %while.body8
  %11 = load i32, ptr %narg, align 4, !tbaa !40
  %add = add nsw i32 %11, 1
  store i32 %add, ptr %found, align 4, !tbaa !40
  %12 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %13 = load i64, ptr %curline, align 8, !tbaa !38
  %call13 = call i32 @fseek(ptr noundef %12, i64 noundef %13, i32 noundef 0)
  store i32 0, ptr %loop, align 4, !tbaa !40
  br label %while.end

if.end14:                                         ; preds = %while.body8
  %14 = load i32, ptr %narg, align 4, !tbaa !40
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %narg, align 4, !tbaa !40
  br label %while.cond6, !llvm.loop !178

while.end:                                        ; preds = %if.then12, %vaarg.end
  %arraydecay15 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %argptr, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay15)
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %narg) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !179

while.end16:                                      ; preds = %while.cond
  %15 = load i32, ptr %found, align 4, !tbaa !40
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %while.end16
  %16 = load ptr, ptr %file.addr, align 8, !tbaa !27
  %17 = load i64, ptr %filepos, align 8, !tbaa !38
  %call19 = call i32 @fseek(ptr noundef %16, i64 noundef %17, i32 noundef 0)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.end16
  %18 = load i32, ptr %found, align 4, !tbaa !40
  store i32 %18, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %if.end20, %cleanup
  call void @llvm.lifetime.end.p0(i64 24, ptr %argptr) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %curline) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %filepos) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %loop) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %keystring) #11
  call void @llvm.lifetime.end.p0(i64 8192, ptr %buffer) #11
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal ptr @add_wavefunction(ptr noundef %ts) #0 {
entry:
  %ts.addr = alloca ptr, align 8
  store ptr %ts, ptr %ts.addr, align 8, !tbaa !27
  %0 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %numwave = getelementptr inbounds %struct.qm_timestep_t, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %numwave, align 8, !tbaa !72
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %wave = getelementptr inbounds %struct.qm_timestep_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %wave, align 8, !tbaa !70
  %4 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %numwave1 = getelementptr inbounds %struct.qm_timestep_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %numwave1, align 8, !tbaa !72
  %add = add nsw i32 %5, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 152
  %call = call ptr @realloc(ptr noundef %3, i64 noundef %mul) #14
  %6 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %wave2 = getelementptr inbounds %struct.qm_timestep_t, ptr %6, i32 0, i32 0
  store ptr %call, ptr %wave2, align 8, !tbaa !70
  %7 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %wave3 = getelementptr inbounds %struct.qm_timestep_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %wave3, align 8, !tbaa !70
  %9 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %numwave4 = getelementptr inbounds %struct.qm_timestep_t, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %numwave4, align 8, !tbaa !72
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.qm_wavefunction_t, ptr %8, i64 %idxprom
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx, i8 0, i64 152, i1 false)
  %11 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %numwave5 = getelementptr inbounds %struct.qm_timestep_t, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %numwave5, align 8, !tbaa !72
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %numwave5, align 8, !tbaa !72
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 152) #12
  %13 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %wave7 = getelementptr inbounds %struct.qm_timestep_t, ptr %13, i32 0, i32 0
  store ptr %call6, ptr %wave7, align 8, !tbaa !70
  %14 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %numwave8 = getelementptr inbounds %struct.qm_timestep_t, ptr %14, i32 0, i32 1
  store i32 1, ptr %numwave8, align 8, !tbaa !72
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %wave9 = getelementptr inbounds %struct.qm_timestep_t, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %wave9, align 8, !tbaa !70
  %17 = load ptr, ptr %ts.addr, align 8, !tbaa !27
  %numwave10 = getelementptr inbounds %struct.qm_timestep_t, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %numwave10, align 8, !tbaa !72
  %sub = sub nsw i32 %18, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds %struct.qm_wavefunction_t, ptr %16, i64 %idxprom11
  ret ptr %arrayidx12
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @get_basis(ptr noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %buffer = alloca [1024 x i8], align 16
  %shelltype = alloca [1024 x i8], align 16
  %atomid = alloca i32, align 4
  %numprims = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %numshells = alloca i32, align 4
  %moldendata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %shell16 = alloca ptr, align 8
  %shell2 = alloca ptr, align 8
  %nr = alloca i32, align 4
  %expon = alloca double, align 8
  %coeff1 = alloca double, align 8
  %coeff2 = alloca double, align 8
  store ptr %data, ptr %data.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 1024, ptr %buffer) #11
  call void @llvm.lifetime.start.p0(i64 1024, ptr %shelltype) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %atomid) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %numprims) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  store i32 0, ptr %j, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %numshells) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %moldendata) #11
  %0 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %format_specific_data = getelementptr inbounds %struct.qmdata_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %format_specific_data, align 8, !tbaa !32
  store ptr %1, ptr %moldendata, align 8, !tbaa !27
  %2 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_shells = getelementptr inbounds %struct.qmdata_t, ptr %2, i32 0, i32 31
  store i32 0, ptr %num_shells, align 8, !tbaa !120
  %3 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_funcs = getelementptr inbounds %struct.qmdata_t, ptr %3, i32 0, i32 27
  store i32 0, ptr %num_basis_funcs, align 8, !tbaa !118
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_atoms = getelementptr inbounds %struct.qmdata_t, ptr %4, i32 0, i32 28
  store i32 0, ptr %num_basis_atoms, align 4, !tbaa !119
  %5 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_string = getelementptr inbounds %struct.qmdata_t, ptr %5, i32 0, i32 9
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %basis_string, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 2 %arraydecay, i8 0, i64 8192, i1 false)
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file = getelementptr inbounds %struct.qmdata_t, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %file, align 8, !tbaa !28
  %8 = load ptr, ptr %moldendata, align 8, !tbaa !27
  %filepos_gto = getelementptr inbounds %struct.moldendata_t, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %filepos_gto, align 8, !tbaa !46
  %call = call i32 @fseek(ptr noundef %7, i64 noundef %9, i32 noundef 0)
  %10 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %numatoms = getelementptr inbounds %struct.qmdata_t, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %numatoms, align 8, !tbaa !42
  %conv = sext i32 %11 to i64
  %call1 = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 32) #12
  %12 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set = getelementptr inbounds %struct.qmdata_t, ptr %12, i32 0, i32 26
  store ptr %call1, ptr %basis_set, align 8, !tbaa !143
  %13 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set2 = getelementptr inbounds %struct.qmdata_t, ptr %13, i32 0, i32 26
  %14 = load ptr, ptr %basis_set2, align 8, !tbaa !143
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.34, ptr noundef @.str.167)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup364

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc159, %if.end
  %16 = load i32, ptr %i, align 4, !tbaa !40
  %17 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %numatoms5 = getelementptr inbounds %struct.qmdata_t, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %numatoms5, align 8, !tbaa !42
  %cmp6 = icmp slt i32 %16, %18
  br i1 %cmp6, label %for.body, label %for.end161

for.body:                                         ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %19 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file9 = getelementptr inbounds %struct.qmdata_t, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %file9, align 8, !tbaa !28
  %call10 = call ptr @fgets(ptr noundef %arraydecay8, i32 noundef 1024, ptr noundef %20)
  %tobool = icmp ne ptr %call10, null
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup364

if.end12:                                         ; preds = %for.body
  %arraydecay13 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call14 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay13, ptr noundef @.str.168, ptr noundef %atomid) #11
  store i32 0, ptr %numshells, align 4, !tbaa !40
  %21 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set15 = getelementptr inbounds %struct.qmdata_t, ptr %21, i32 0, i32 26
  %22 = load ptr, ptr %basis_set15, align 8, !tbaa !143
  %23 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds %struct.basis_atom_t, ptr %22, i64 %idxprom
  %shell = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx, i32 0, i32 3
  store ptr null, ptr %shell, align 8, !tbaa !146
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont152, %if.end12
  br label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %shell16) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %shell2) #11
  store ptr null, ptr %shell2, align 8, !tbaa !27
  %arraydecay17 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %24 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file18 = getelementptr inbounds %struct.qmdata_t, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %file18, align 8, !tbaa !28
  %call19 = call ptr @fgets(ptr noundef %arraydecay17, i32 noundef 1024, ptr noundef %25)
  %tobool20 = icmp ne ptr %call19, null
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup149

if.end22:                                         ; preds = %while.body
  %arraydecay23 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call24 = call ptr @trimleft(ptr noundef %arraydecay23)
  %call25 = call i64 @strlen(ptr noundef %call24) #13
  %tobool26 = icmp ne i64 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end22
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup149

if.end28:                                         ; preds = %if.end22
  %arraydecay29 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %arraydecay30 = getelementptr inbounds [1024 x i8], ptr %shelltype, i64 0, i64 0
  %call31 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay29, ptr noundef @.str.169, ptr noundef %arraydecay30, ptr noundef %numprims) #11
  %arraydecay32 = getelementptr inbounds [1024 x i8], ptr %shelltype, i64 0, i64 0
  %call33 = call i32 @strcasecmp(ptr noundef %arraydecay32, ptr noundef @.str.170) #13
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end28
  %26 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set36 = getelementptr inbounds %struct.qmdata_t, ptr %26, i32 0, i32 26
  %27 = load ptr, ptr %basis_set36, align 8, !tbaa !143
  %28 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds %struct.basis_atom_t, ptr %27, i64 %idxprom37
  %shell39 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx38, i32 0, i32 3
  %29 = load ptr, ptr %shell39, align 8, !tbaa !146
  %30 = load i32, ptr %numshells, align 4, !tbaa !40
  %add = add nsw i32 %30, 2
  %conv40 = sext i32 %add to i64
  %mul = mul i64 %conv40, 24
  %call41 = call ptr @realloc(ptr noundef %29, i64 noundef %mul) #14
  %31 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set42 = getelementptr inbounds %struct.qmdata_t, ptr %31, i32 0, i32 26
  %32 = load ptr, ptr %basis_set42, align 8, !tbaa !143
  %33 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds %struct.basis_atom_t, ptr %32, i64 %idxprom43
  %shell45 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx44, i32 0, i32 3
  store ptr %call41, ptr %shell45, align 8, !tbaa !146
  br label %if.end58

if.else:                                          ; preds = %if.end28
  %34 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set46 = getelementptr inbounds %struct.qmdata_t, ptr %34, i32 0, i32 26
  %35 = load ptr, ptr %basis_set46, align 8, !tbaa !143
  %36 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds %struct.basis_atom_t, ptr %35, i64 %idxprom47
  %shell49 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx48, i32 0, i32 3
  %37 = load ptr, ptr %shell49, align 8, !tbaa !146
  %38 = load i32, ptr %numshells, align 4, !tbaa !40
  %add50 = add nsw i32 %38, 1
  %conv51 = sext i32 %add50 to i64
  %mul52 = mul i64 %conv51, 24
  %call53 = call ptr @realloc(ptr noundef %37, i64 noundef %mul52) #14
  %39 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set54 = getelementptr inbounds %struct.qmdata_t, ptr %39, i32 0, i32 26
  %40 = load ptr, ptr %basis_set54, align 8, !tbaa !143
  %41 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom55 = sext i32 %41 to i64
  %arrayidx56 = getelementptr inbounds %struct.basis_atom_t, ptr %40, i64 %idxprom55
  %shell57 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx56, i32 0, i32 3
  store ptr %call53, ptr %shell57, align 8, !tbaa !146
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then35
  %42 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set59 = getelementptr inbounds %struct.qmdata_t, ptr %42, i32 0, i32 26
  %43 = load ptr, ptr %basis_set59, align 8, !tbaa !143
  %44 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom60 = sext i32 %44 to i64
  %arrayidx61 = getelementptr inbounds %struct.basis_atom_t, ptr %43, i64 %idxprom60
  %shell62 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx61, i32 0, i32 3
  %45 = load ptr, ptr %shell62, align 8, !tbaa !146
  %46 = load i32, ptr %numshells, align 4, !tbaa !40
  %idxprom63 = sext i32 %46 to i64
  %arrayidx64 = getelementptr inbounds %struct.shell_t, ptr %45, i64 %idxprom63
  store ptr %arrayidx64, ptr %shell16, align 8, !tbaa !27
  %47 = load ptr, ptr %shell16, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 8 %47, i8 0, i64 24, i1 false)
  %48 = load i32, ptr %numprims, align 4, !tbaa !40
  %49 = load ptr, ptr %shell16, align 8, !tbaa !27
  %numprims65 = getelementptr inbounds %struct.shell_t, ptr %49, i32 0, i32 0
  store i32 %48, ptr %numprims65, align 8, !tbaa !180
  %arraydecay66 = getelementptr inbounds [1024 x i8], ptr %shelltype, i64 0, i64 0
  %call67 = call i32 @shelltype_int(ptr noundef %arraydecay66)
  %50 = load ptr, ptr %shell16, align 8, !tbaa !27
  %type = getelementptr inbounds %struct.shell_t, ptr %50, i32 0, i32 1
  store i32 %call67, ptr %type, align 4, !tbaa !181
  %51 = load i32, ptr %numprims, align 4, !tbaa !40
  %conv68 = sext i32 %51 to i64
  %call69 = call noalias ptr @calloc(i64 noundef %conv68, i64 noundef 8) #12
  %52 = load ptr, ptr %shell16, align 8, !tbaa !27
  %prim = getelementptr inbounds %struct.shell_t, ptr %52, i32 0, i32 3
  store ptr %call69, ptr %prim, align 8, !tbaa !147
  %arraydecay70 = getelementptr inbounds [1024 x i8], ptr %shelltype, i64 0, i64 0
  %call71 = call i32 @strcasecmp(ptr noundef %arraydecay70, ptr noundef @.str.170) #13
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end87, label %if.then73

if.then73:                                        ; preds = %if.end58
  %53 = load ptr, ptr %shell16, align 8, !tbaa !27
  %type74 = getelementptr inbounds %struct.shell_t, ptr %53, i32 0, i32 1
  store i32 -2, ptr %type74, align 4, !tbaa !181
  %54 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set75 = getelementptr inbounds %struct.qmdata_t, ptr %54, i32 0, i32 26
  %55 = load ptr, ptr %basis_set75, align 8, !tbaa !143
  %56 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom76 = sext i32 %56 to i64
  %arrayidx77 = getelementptr inbounds %struct.basis_atom_t, ptr %55, i64 %idxprom76
  %shell78 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx77, i32 0, i32 3
  %57 = load ptr, ptr %shell78, align 8, !tbaa !146
  %58 = load i32, ptr %numshells, align 4, !tbaa !40
  %add79 = add nsw i32 %58, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds %struct.shell_t, ptr %57, i64 %idxprom80
  store ptr %arrayidx81, ptr %shell2, align 8, !tbaa !27
  %59 = load i32, ptr %numprims, align 4, !tbaa !40
  %60 = load ptr, ptr %shell2, align 8, !tbaa !27
  %numprims82 = getelementptr inbounds %struct.shell_t, ptr %60, i32 0, i32 0
  store i32 %59, ptr %numprims82, align 8, !tbaa !180
  %61 = load ptr, ptr %shell2, align 8, !tbaa !27
  %type83 = getelementptr inbounds %struct.shell_t, ptr %61, i32 0, i32 1
  store i32 -1, ptr %type83, align 4, !tbaa !181
  %62 = load i32, ptr %numprims, align 4, !tbaa !40
  %conv84 = sext i32 %62 to i64
  %call85 = call noalias ptr @calloc(i64 noundef %conv84, i64 noundef 8) #12
  %63 = load ptr, ptr %shell2, align 8, !tbaa !27
  %prim86 = getelementptr inbounds %struct.shell_t, ptr %63, i32 0, i32 3
  store ptr %call85, ptr %prim86, align 8, !tbaa !147
  br label %if.end87

if.end87:                                         ; preds = %if.then73, %if.end58
  store i32 0, ptr %j, align 4, !tbaa !40
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc, %if.end87
  %64 = load i32, ptr %j, align 4, !tbaa !40
  %65 = load i32, ptr %numprims, align 4, !tbaa !40
  %cmp89 = icmp slt i32 %64, %65
  br i1 %cmp89, label %for.body91, label %for.end

for.body91:                                       ; preds = %for.cond88
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %expon) #11
  store double 0.000000e+00, ptr %expon, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr %coeff1) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %coeff2) #11
  store double 0.000000e+00, ptr %coeff2, align 8, !tbaa !182
  %arraydecay92 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %66 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %file93 = getelementptr inbounds %struct.qmdata_t, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %file93, align 8, !tbaa !28
  %call94 = call ptr @fgets(ptr noundef %arraydecay92, i32 noundef 1024, ptr noundef %67)
  %tobool95 = icmp ne ptr %call94, null
  br i1 %tobool95, label %if.end97, label %if.then96

if.then96:                                        ; preds = %for.body91
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end97:                                         ; preds = %for.body91
  %arraydecay98 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call99 = call i32 @fpexpftoc(ptr noundef %arraydecay98)
  %arraydecay100 = getelementptr inbounds [1024 x i8], ptr %buffer, i64 0, i64 0
  %call101 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %arraydecay100, ptr noundef @.str.171, ptr noundef %expon, ptr noundef %coeff1, ptr noundef %coeff2) #11
  store i32 %call101, ptr %nr, align 4, !tbaa !40
  %68 = load i32, ptr %nr, align 4, !tbaa !40
  %cmp102 = icmp slt i32 %68, 2
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %if.end97
  %call105 = call i32 (ptr, ...) @printf(ptr noundef @.str.172)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %if.end97
  %69 = load double, ptr %expon, align 8, !tbaa !182
  %conv107 = fptrunc double %69 to float
  %70 = load ptr, ptr %shell16, align 8, !tbaa !27
  %prim108 = getelementptr inbounds %struct.shell_t, ptr %70, i32 0, i32 3
  %71 = load ptr, ptr %prim108, align 8, !tbaa !147
  %72 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom109 = sext i32 %72 to i64
  %arrayidx110 = getelementptr inbounds %struct.prim_t, ptr %71, i64 %idxprom109
  %exponent = getelementptr inbounds %struct.prim_t, ptr %arrayidx110, i32 0, i32 0
  store float %conv107, ptr %exponent, align 4, !tbaa !183
  %73 = load double, ptr %coeff1, align 8, !tbaa !182
  %conv111 = fptrunc double %73 to float
  %74 = load ptr, ptr %shell16, align 8, !tbaa !27
  %prim112 = getelementptr inbounds %struct.shell_t, ptr %74, i32 0, i32 3
  %75 = load ptr, ptr %prim112, align 8, !tbaa !147
  %76 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom113 = sext i32 %76 to i64
  %arrayidx114 = getelementptr inbounds %struct.prim_t, ptr %75, i64 %idxprom113
  %contraction_coeff = getelementptr inbounds %struct.prim_t, ptr %arrayidx114, i32 0, i32 1
  store float %conv111, ptr %contraction_coeff, align 4, !tbaa !185
  %arraydecay115 = getelementptr inbounds [1024 x i8], ptr %shelltype, i64 0, i64 0
  %call116 = call i32 @strcasecmp(ptr noundef %arraydecay115, ptr noundef @.str.170) #13
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.end134, label %if.then118

if.then118:                                       ; preds = %if.end106
  %77 = load i32, ptr %nr, align 4, !tbaa !40
  %cmp119 = icmp ne i32 %77, 3
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.then118
  %call122 = call i32 (ptr, ...) @printf(ptr noundef @.str.173)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end123:                                        ; preds = %if.then118
  %78 = load double, ptr %expon, align 8, !tbaa !182
  %conv124 = fptrunc double %78 to float
  %79 = load ptr, ptr %shell2, align 8, !tbaa !27
  %prim125 = getelementptr inbounds %struct.shell_t, ptr %79, i32 0, i32 3
  %80 = load ptr, ptr %prim125, align 8, !tbaa !147
  %81 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom126 = sext i32 %81 to i64
  %arrayidx127 = getelementptr inbounds %struct.prim_t, ptr %80, i64 %idxprom126
  %exponent128 = getelementptr inbounds %struct.prim_t, ptr %arrayidx127, i32 0, i32 0
  store float %conv124, ptr %exponent128, align 4, !tbaa !183
  %82 = load double, ptr %coeff2, align 8, !tbaa !182
  %conv129 = fptrunc double %82 to float
  %83 = load ptr, ptr %shell2, align 8, !tbaa !27
  %prim130 = getelementptr inbounds %struct.shell_t, ptr %83, i32 0, i32 3
  %84 = load ptr, ptr %prim130, align 8, !tbaa !147
  %85 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom131 = sext i32 %85 to i64
  %arrayidx132 = getelementptr inbounds %struct.prim_t, ptr %84, i64 %idxprom131
  %contraction_coeff133 = getelementptr inbounds %struct.prim_t, ptr %arrayidx132, i32 0, i32 1
  store float %conv129, ptr %contraction_coeff133, align 4, !tbaa !185
  br label %if.end134

if.end134:                                        ; preds = %if.end123, %if.end106
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.then121, %if.then104, %if.then96
  call void @llvm.lifetime.end.p0(i64 8, ptr %coeff2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %coeff1) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %expon) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup149 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %86 = load i32, ptr %j, align 4, !tbaa !40
  %inc = add nsw i32 %86, 1
  store i32 %inc, ptr %j, align 4, !tbaa !40
  br label %for.cond88, !llvm.loop !186

for.end:                                          ; preds = %for.cond88
  %87 = load i32, ptr %numprims, align 4, !tbaa !40
  %88 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_funcs138 = getelementptr inbounds %struct.qmdata_t, ptr %88, i32 0, i32 27
  %89 = load i32, ptr %num_basis_funcs138, align 8, !tbaa !118
  %add139 = add nsw i32 %89, %87
  store i32 %add139, ptr %num_basis_funcs138, align 8, !tbaa !118
  %90 = load i32, ptr %numshells, align 4, !tbaa !40
  %inc140 = add nsw i32 %90, 1
  store i32 %inc140, ptr %numshells, align 4, !tbaa !40
  %arraydecay141 = getelementptr inbounds [1024 x i8], ptr %shelltype, i64 0, i64 0
  %call142 = call i32 @strcasecmp(ptr noundef %arraydecay141, ptr noundef @.str.170) #13
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.end148, label %if.then144

if.then144:                                       ; preds = %for.end
  %91 = load i32, ptr %numshells, align 4, !tbaa !40
  %inc145 = add nsw i32 %91, 1
  store i32 %inc145, ptr %numshells, align 4, !tbaa !40
  %92 = load i32, ptr %numprims, align 4, !tbaa !40
  %93 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_funcs146 = getelementptr inbounds %struct.qmdata_t, ptr %93, i32 0, i32 27
  %94 = load i32, ptr %num_basis_funcs146, align 8, !tbaa !118
  %add147 = add nsw i32 %94, %92
  store i32 %add147, ptr %num_basis_funcs146, align 8, !tbaa !118
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup149

cleanup149:                                       ; preds = %if.end148, %cleanup, %if.then27, %if.then21
  call void @llvm.lifetime.end.p0(i64 8, ptr %shell2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %shell16) #11
  %cleanup.dest151 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest151, label %cleanup364 [
    i32 0, label %cleanup.cont152
    i32 6, label %while.end
  ]

cleanup.cont152:                                  ; preds = %cleanup149
  br label %while.cond

while.end:                                        ; preds = %cleanup149
  %95 = load i32, ptr %numshells, align 4, !tbaa !40
  %96 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set153 = getelementptr inbounds %struct.qmdata_t, ptr %96, i32 0, i32 26
  %97 = load ptr, ptr %basis_set153, align 8, !tbaa !143
  %98 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom154 = sext i32 %98 to i64
  %arrayidx155 = getelementptr inbounds %struct.basis_atom_t, ptr %97, i64 %idxprom154
  %numshells156 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx155, i32 0, i32 2
  store i32 %95, ptr %numshells156, align 8, !tbaa !144
  %99 = load i32, ptr %numshells, align 4, !tbaa !40
  %100 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_shells157 = getelementptr inbounds %struct.qmdata_t, ptr %100, i32 0, i32 31
  %101 = load i32, ptr %num_shells157, align 8, !tbaa !120
  %add158 = add nsw i32 %101, %99
  store i32 %add158, ptr %num_shells157, align 8, !tbaa !120
  br label %for.inc159

for.inc159:                                       ; preds = %while.end
  %102 = load i32, ptr %i, align 4, !tbaa !40
  %inc160 = add nsw i32 %102, 1
  store i32 %inc160, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !187

for.end161:                                       ; preds = %for.cond
  %103 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %numatoms162 = getelementptr inbounds %struct.qmdata_t, ptr %103, i32 0, i32 2
  %104 = load i32, ptr %numatoms162, align 8, !tbaa !42
  %105 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_atoms163 = getelementptr inbounds %struct.qmdata_t, ptr %105, i32 0, i32 28
  store i32 %104, ptr %num_basis_atoms163, align 4, !tbaa !119
  %106 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %call164 = call i32 @fill_basis_arrays(ptr noundef %106)
  %107 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %wavef_size = getelementptr inbounds %struct.qmdata_t, ptr %107, i32 0, i32 36
  store i32 0, ptr %wavef_size, align 8, !tbaa !90
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc186, %for.end161
  %108 = load i32, ptr %i, align 4, !tbaa !40
  %109 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_shells166 = getelementptr inbounds %struct.qmdata_t, ptr %109, i32 0, i32 31
  %110 = load i32, ptr %num_shells166, align 8, !tbaa !120
  %cmp167 = icmp slt i32 %108, %110
  br i1 %cmp167, label %for.body169, label %for.end188

for.body169:                                      ; preds = %for.cond165
  %111 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %shell_types = getelementptr inbounds %struct.qmdata_t, ptr %111, i32 0, i32 33
  %112 = load ptr, ptr %shell_types, align 8, !tbaa !134
  %113 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom170 = sext i32 %113 to i64
  %arrayidx171 = getelementptr inbounds i32, ptr %112, i64 %idxprom170
  %114 = load i32, ptr %arrayidx171, align 4, !tbaa !40
  switch i32 %114, label %sw.epilog [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb
    i32 1, label %sw.bb174
    i32 -1, label %sw.bb174
    i32 2, label %sw.bb177
    i32 3, label %sw.bb180
    i32 4, label %sw.bb183
  ]

sw.bb:                                            ; preds = %for.body169, %for.body169
  %115 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %wavef_size172 = getelementptr inbounds %struct.qmdata_t, ptr %115, i32 0, i32 36
  %116 = load i32, ptr %wavef_size172, align 8, !tbaa !90
  %add173 = add nsw i32 %116, 1
  store i32 %add173, ptr %wavef_size172, align 8, !tbaa !90
  br label %sw.epilog

sw.bb174:                                         ; preds = %for.body169, %for.body169
  %117 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %wavef_size175 = getelementptr inbounds %struct.qmdata_t, ptr %117, i32 0, i32 36
  %118 = load i32, ptr %wavef_size175, align 8, !tbaa !90
  %add176 = add nsw i32 %118, 3
  store i32 %add176, ptr %wavef_size175, align 8, !tbaa !90
  br label %sw.epilog

sw.bb177:                                         ; preds = %for.body169
  %119 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %wavef_size178 = getelementptr inbounds %struct.qmdata_t, ptr %119, i32 0, i32 36
  %120 = load i32, ptr %wavef_size178, align 8, !tbaa !90
  %add179 = add nsw i32 %120, 6
  store i32 %add179, ptr %wavef_size178, align 8, !tbaa !90
  br label %sw.epilog

sw.bb180:                                         ; preds = %for.body169
  %121 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %wavef_size181 = getelementptr inbounds %struct.qmdata_t, ptr %121, i32 0, i32 36
  %122 = load i32, ptr %wavef_size181, align 8, !tbaa !90
  %add182 = add nsw i32 %122, 10
  store i32 %add182, ptr %wavef_size181, align 8, !tbaa !90
  br label %sw.epilog

sw.bb183:                                         ; preds = %for.body169
  %123 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %wavef_size184 = getelementptr inbounds %struct.qmdata_t, ptr %123, i32 0, i32 36
  %124 = load i32, ptr %wavef_size184, align 8, !tbaa !90
  %add185 = add nsw i32 %124, 15
  store i32 %add185, ptr %wavef_size184, align 8, !tbaa !90
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body169, %sw.bb183, %sw.bb180, %sw.bb177, %sw.bb174, %sw.bb
  br label %for.inc186

for.inc186:                                       ; preds = %sw.epilog
  %125 = load i32, ptr %i, align 4, !tbaa !40
  %inc187 = add nsw i32 %125, 1
  store i32 %inc187, ptr %i, align 4, !tbaa !40
  br label %for.cond165, !llvm.loop !188

for.end188:                                       ; preds = %for.cond165
  %126 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %wavef_size189 = getelementptr inbounds %struct.qmdata_t, ptr %126, i32 0, i32 36
  %127 = load i32, ptr %wavef_size189, align 8, !tbaa !90
  %mul190 = mul nsw i32 3, %127
  %conv191 = sext i32 %mul190 to i64
  %call192 = call noalias ptr @calloc(i64 noundef %conv191, i64 noundef 4) #12
  %128 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum = getelementptr inbounds %struct.qmdata_t, ptr %128, i32 0, i32 37
  store ptr %call192, ptr %angular_momentum, align 8, !tbaa !140
  %129 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum193 = getelementptr inbounds %struct.qmdata_t, ptr %129, i32 0, i32 37
  %130 = load ptr, ptr %angular_momentum193, align 8, !tbaa !140
  %cmp194 = icmp eq ptr %130, null
  br i1 %cmp194, label %if.then196, label %if.end198

if.then196:                                       ; preds = %for.end188
  %131 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef @.str.34, ptr noundef @.str.174)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup364

if.end198:                                        ; preds = %for.end188
  store i32 0, ptr %j, align 4, !tbaa !40
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond199

for.cond199:                                      ; preds = %for.inc361, %if.end198
  %132 = load i32, ptr %i, align 4, !tbaa !40
  %133 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_shells200 = getelementptr inbounds %struct.qmdata_t, ptr %133, i32 0, i32 31
  %134 = load i32, ptr %num_shells200, align 8, !tbaa !120
  %cmp201 = icmp slt i32 %132, %134
  br i1 %cmp201, label %for.body203, label %for.end363

for.body203:                                      ; preds = %for.cond199
  %135 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %shell_types204 = getelementptr inbounds %struct.qmdata_t, ptr %135, i32 0, i32 33
  %136 = load ptr, ptr %shell_types204, align 8, !tbaa !134
  %137 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom205 = sext i32 %137 to i64
  %arrayidx206 = getelementptr inbounds i32, ptr %136, i64 %idxprom205
  %138 = load i32, ptr %arrayidx206, align 4, !tbaa !40
  switch i32 %138, label %sw.epilog360 [
    i32 0, label %sw.bb207
    i32 -2, label %sw.bb207
    i32 1, label %sw.bb220
    i32 -1, label %sw.bb220
    i32 2, label %sw.bb233
    i32 3, label %sw.bb258
    i32 4, label %sw.bb299
  ]

sw.bb207:                                         ; preds = %for.body203, %for.body203
  %139 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum208 = getelementptr inbounds %struct.qmdata_t, ptr %139, i32 0, i32 37
  %140 = load ptr, ptr %angular_momentum208, align 8, !tbaa !140
  %141 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom209 = sext i32 %141 to i64
  %arrayidx210 = getelementptr inbounds i32, ptr %140, i64 %idxprom209
  store i32 0, ptr %arrayidx210, align 4, !tbaa !40
  %142 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum211 = getelementptr inbounds %struct.qmdata_t, ptr %142, i32 0, i32 37
  %143 = load ptr, ptr %angular_momentum211, align 8, !tbaa !140
  %144 = load i32, ptr %j, align 4, !tbaa !40
  %add212 = add nsw i32 %144, 1
  %idxprom213 = sext i32 %add212 to i64
  %arrayidx214 = getelementptr inbounds i32, ptr %143, i64 %idxprom213
  store i32 0, ptr %arrayidx214, align 4, !tbaa !40
  %145 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum215 = getelementptr inbounds %struct.qmdata_t, ptr %145, i32 0, i32 37
  %146 = load ptr, ptr %angular_momentum215, align 8, !tbaa !140
  %147 = load i32, ptr %j, align 4, !tbaa !40
  %add216 = add nsw i32 %147, 2
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds i32, ptr %146, i64 %idxprom217
  store i32 0, ptr %arrayidx218, align 4, !tbaa !40
  %148 = load i32, ptr %j, align 4, !tbaa !40
  %add219 = add nsw i32 %148, 3
  store i32 %add219, ptr %j, align 4, !tbaa !40
  br label %sw.epilog360

sw.bb220:                                         ; preds = %for.body203, %for.body203
  %149 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum221 = getelementptr inbounds %struct.qmdata_t, ptr %149, i32 0, i32 37
  %150 = load ptr, ptr %angular_momentum221, align 8, !tbaa !140
  %151 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom222 = sext i32 %151 to i64
  %arrayidx223 = getelementptr inbounds i32, ptr %150, i64 %idxprom222
  call void @angular_momentum_expon(ptr noundef %arrayidx223, ptr noundef @.str.175)
  %152 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum224 = getelementptr inbounds %struct.qmdata_t, ptr %152, i32 0, i32 37
  %153 = load ptr, ptr %angular_momentum224, align 8, !tbaa !140
  %154 = load i32, ptr %j, align 4, !tbaa !40
  %add225 = add nsw i32 %154, 3
  %idxprom226 = sext i32 %add225 to i64
  %arrayidx227 = getelementptr inbounds i32, ptr %153, i64 %idxprom226
  call void @angular_momentum_expon(ptr noundef %arrayidx227, ptr noundef @.str.176)
  %155 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum228 = getelementptr inbounds %struct.qmdata_t, ptr %155, i32 0, i32 37
  %156 = load ptr, ptr %angular_momentum228, align 8, !tbaa !140
  %157 = load i32, ptr %j, align 4, !tbaa !40
  %add229 = add nsw i32 %157, 6
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds i32, ptr %156, i64 %idxprom230
  call void @angular_momentum_expon(ptr noundef %arrayidx231, ptr noundef @.str.177)
  %158 = load i32, ptr %j, align 4, !tbaa !40
  %add232 = add nsw i32 %158, 9
  store i32 %add232, ptr %j, align 4, !tbaa !40
  br label %sw.epilog360

sw.bb233:                                         ; preds = %for.body203
  %159 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum234 = getelementptr inbounds %struct.qmdata_t, ptr %159, i32 0, i32 37
  %160 = load ptr, ptr %angular_momentum234, align 8, !tbaa !140
  %161 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom235 = sext i32 %161 to i64
  %arrayidx236 = getelementptr inbounds i32, ptr %160, i64 %idxprom235
  call void @angular_momentum_expon(ptr noundef %arrayidx236, ptr noundef @.str.178)
  %162 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum237 = getelementptr inbounds %struct.qmdata_t, ptr %162, i32 0, i32 37
  %163 = load ptr, ptr %angular_momentum237, align 8, !tbaa !140
  %164 = load i32, ptr %j, align 4, !tbaa !40
  %add238 = add nsw i32 %164, 3
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds i32, ptr %163, i64 %idxprom239
  call void @angular_momentum_expon(ptr noundef %arrayidx240, ptr noundef @.str.179)
  %165 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum241 = getelementptr inbounds %struct.qmdata_t, ptr %165, i32 0, i32 37
  %166 = load ptr, ptr %angular_momentum241, align 8, !tbaa !140
  %167 = load i32, ptr %j, align 4, !tbaa !40
  %add242 = add nsw i32 %167, 6
  %idxprom243 = sext i32 %add242 to i64
  %arrayidx244 = getelementptr inbounds i32, ptr %166, i64 %idxprom243
  call void @angular_momentum_expon(ptr noundef %arrayidx244, ptr noundef @.str.180)
  %168 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum245 = getelementptr inbounds %struct.qmdata_t, ptr %168, i32 0, i32 37
  %169 = load ptr, ptr %angular_momentum245, align 8, !tbaa !140
  %170 = load i32, ptr %j, align 4, !tbaa !40
  %add246 = add nsw i32 %170, 9
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds i32, ptr %169, i64 %idxprom247
  call void @angular_momentum_expon(ptr noundef %arrayidx248, ptr noundef @.str.181)
  %171 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum249 = getelementptr inbounds %struct.qmdata_t, ptr %171, i32 0, i32 37
  %172 = load ptr, ptr %angular_momentum249, align 8, !tbaa !140
  %173 = load i32, ptr %j, align 4, !tbaa !40
  %add250 = add nsw i32 %173, 12
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds i32, ptr %172, i64 %idxprom251
  call void @angular_momentum_expon(ptr noundef %arrayidx252, ptr noundef @.str.182)
  %174 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum253 = getelementptr inbounds %struct.qmdata_t, ptr %174, i32 0, i32 37
  %175 = load ptr, ptr %angular_momentum253, align 8, !tbaa !140
  %176 = load i32, ptr %j, align 4, !tbaa !40
  %add254 = add nsw i32 %176, 15
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds i32, ptr %175, i64 %idxprom255
  call void @angular_momentum_expon(ptr noundef %arrayidx256, ptr noundef @.str.183)
  %177 = load i32, ptr %j, align 4, !tbaa !40
  %add257 = add nsw i32 %177, 18
  store i32 %add257, ptr %j, align 4, !tbaa !40
  br label %sw.epilog360

sw.bb258:                                         ; preds = %for.body203
  %178 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum259 = getelementptr inbounds %struct.qmdata_t, ptr %178, i32 0, i32 37
  %179 = load ptr, ptr %angular_momentum259, align 8, !tbaa !140
  %180 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom260 = sext i32 %180 to i64
  %arrayidx261 = getelementptr inbounds i32, ptr %179, i64 %idxprom260
  call void @angular_momentum_expon(ptr noundef %arrayidx261, ptr noundef @.str.184)
  %181 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum262 = getelementptr inbounds %struct.qmdata_t, ptr %181, i32 0, i32 37
  %182 = load ptr, ptr %angular_momentum262, align 8, !tbaa !140
  %183 = load i32, ptr %j, align 4, !tbaa !40
  %add263 = add nsw i32 %183, 3
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds i32, ptr %182, i64 %idxprom264
  call void @angular_momentum_expon(ptr noundef %arrayidx265, ptr noundef @.str.185)
  %184 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum266 = getelementptr inbounds %struct.qmdata_t, ptr %184, i32 0, i32 37
  %185 = load ptr, ptr %angular_momentum266, align 8, !tbaa !140
  %186 = load i32, ptr %j, align 4, !tbaa !40
  %add267 = add nsw i32 %186, 6
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %185, i64 %idxprom268
  call void @angular_momentum_expon(ptr noundef %arrayidx269, ptr noundef @.str.186)
  %187 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum270 = getelementptr inbounds %struct.qmdata_t, ptr %187, i32 0, i32 37
  %188 = load ptr, ptr %angular_momentum270, align 8, !tbaa !140
  %189 = load i32, ptr %j, align 4, !tbaa !40
  %add271 = add nsw i32 %189, 9
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %188, i64 %idxprom272
  call void @angular_momentum_expon(ptr noundef %arrayidx273, ptr noundef @.str.187)
  %190 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum274 = getelementptr inbounds %struct.qmdata_t, ptr %190, i32 0, i32 37
  %191 = load ptr, ptr %angular_momentum274, align 8, !tbaa !140
  %192 = load i32, ptr %j, align 4, !tbaa !40
  %add275 = add nsw i32 %192, 12
  %idxprom276 = sext i32 %add275 to i64
  %arrayidx277 = getelementptr inbounds i32, ptr %191, i64 %idxprom276
  call void @angular_momentum_expon(ptr noundef %arrayidx277, ptr noundef @.str.188)
  %193 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum278 = getelementptr inbounds %struct.qmdata_t, ptr %193, i32 0, i32 37
  %194 = load ptr, ptr %angular_momentum278, align 8, !tbaa !140
  %195 = load i32, ptr %j, align 4, !tbaa !40
  %add279 = add nsw i32 %195, 15
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds i32, ptr %194, i64 %idxprom280
  call void @angular_momentum_expon(ptr noundef %arrayidx281, ptr noundef @.str.189)
  %196 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum282 = getelementptr inbounds %struct.qmdata_t, ptr %196, i32 0, i32 37
  %197 = load ptr, ptr %angular_momentum282, align 8, !tbaa !140
  %198 = load i32, ptr %j, align 4, !tbaa !40
  %add283 = add nsw i32 %198, 18
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds i32, ptr %197, i64 %idxprom284
  call void @angular_momentum_expon(ptr noundef %arrayidx285, ptr noundef @.str.190)
  %199 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum286 = getelementptr inbounds %struct.qmdata_t, ptr %199, i32 0, i32 37
  %200 = load ptr, ptr %angular_momentum286, align 8, !tbaa !140
  %201 = load i32, ptr %j, align 4, !tbaa !40
  %add287 = add nsw i32 %201, 21
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds i32, ptr %200, i64 %idxprom288
  call void @angular_momentum_expon(ptr noundef %arrayidx289, ptr noundef @.str.191)
  %202 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum290 = getelementptr inbounds %struct.qmdata_t, ptr %202, i32 0, i32 37
  %203 = load ptr, ptr %angular_momentum290, align 8, !tbaa !140
  %204 = load i32, ptr %j, align 4, !tbaa !40
  %add291 = add nsw i32 %204, 24
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds i32, ptr %203, i64 %idxprom292
  call void @angular_momentum_expon(ptr noundef %arrayidx293, ptr noundef @.str.192)
  %205 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum294 = getelementptr inbounds %struct.qmdata_t, ptr %205, i32 0, i32 37
  %206 = load ptr, ptr %angular_momentum294, align 8, !tbaa !140
  %207 = load i32, ptr %j, align 4, !tbaa !40
  %add295 = add nsw i32 %207, 27
  %idxprom296 = sext i32 %add295 to i64
  %arrayidx297 = getelementptr inbounds i32, ptr %206, i64 %idxprom296
  call void @angular_momentum_expon(ptr noundef %arrayidx297, ptr noundef @.str.193)
  %208 = load i32, ptr %j, align 4, !tbaa !40
  %add298 = add nsw i32 %208, 30
  store i32 %add298, ptr %j, align 4, !tbaa !40
  br label %sw.epilog360

sw.bb299:                                         ; preds = %for.body203
  %209 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum300 = getelementptr inbounds %struct.qmdata_t, ptr %209, i32 0, i32 37
  %210 = load ptr, ptr %angular_momentum300, align 8, !tbaa !140
  %211 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom301 = sext i32 %211 to i64
  %arrayidx302 = getelementptr inbounds i32, ptr %210, i64 %idxprom301
  call void @angular_momentum_expon(ptr noundef %arrayidx302, ptr noundef @.str.194)
  %212 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum303 = getelementptr inbounds %struct.qmdata_t, ptr %212, i32 0, i32 37
  %213 = load ptr, ptr %angular_momentum303, align 8, !tbaa !140
  %214 = load i32, ptr %j, align 4, !tbaa !40
  %add304 = add nsw i32 %214, 3
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds i32, ptr %213, i64 %idxprom305
  call void @angular_momentum_expon(ptr noundef %arrayidx306, ptr noundef @.str.195)
  %215 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum307 = getelementptr inbounds %struct.qmdata_t, ptr %215, i32 0, i32 37
  %216 = load ptr, ptr %angular_momentum307, align 8, !tbaa !140
  %217 = load i32, ptr %j, align 4, !tbaa !40
  %add308 = add nsw i32 %217, 6
  %idxprom309 = sext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds i32, ptr %216, i64 %idxprom309
  call void @angular_momentum_expon(ptr noundef %arrayidx310, ptr noundef @.str.196)
  %218 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum311 = getelementptr inbounds %struct.qmdata_t, ptr %218, i32 0, i32 37
  %219 = load ptr, ptr %angular_momentum311, align 8, !tbaa !140
  %220 = load i32, ptr %j, align 4, !tbaa !40
  %add312 = add nsw i32 %220, 9
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds i32, ptr %219, i64 %idxprom313
  call void @angular_momentum_expon(ptr noundef %arrayidx314, ptr noundef @.str.197)
  %221 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum315 = getelementptr inbounds %struct.qmdata_t, ptr %221, i32 0, i32 37
  %222 = load ptr, ptr %angular_momentum315, align 8, !tbaa !140
  %223 = load i32, ptr %j, align 4, !tbaa !40
  %add316 = add nsw i32 %223, 12
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %222, i64 %idxprom317
  call void @angular_momentum_expon(ptr noundef %arrayidx318, ptr noundef @.str.198)
  %224 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum319 = getelementptr inbounds %struct.qmdata_t, ptr %224, i32 0, i32 37
  %225 = load ptr, ptr %angular_momentum319, align 8, !tbaa !140
  %226 = load i32, ptr %j, align 4, !tbaa !40
  %add320 = add nsw i32 %226, 15
  %idxprom321 = sext i32 %add320 to i64
  %arrayidx322 = getelementptr inbounds i32, ptr %225, i64 %idxprom321
  call void @angular_momentum_expon(ptr noundef %arrayidx322, ptr noundef @.str.199)
  %227 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum323 = getelementptr inbounds %struct.qmdata_t, ptr %227, i32 0, i32 37
  %228 = load ptr, ptr %angular_momentum323, align 8, !tbaa !140
  %229 = load i32, ptr %j, align 4, !tbaa !40
  %add324 = add nsw i32 %229, 18
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds i32, ptr %228, i64 %idxprom325
  call void @angular_momentum_expon(ptr noundef %arrayidx326, ptr noundef @.str.200)
  %230 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum327 = getelementptr inbounds %struct.qmdata_t, ptr %230, i32 0, i32 37
  %231 = load ptr, ptr %angular_momentum327, align 8, !tbaa !140
  %232 = load i32, ptr %j, align 4, !tbaa !40
  %add328 = add nsw i32 %232, 21
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds i32, ptr %231, i64 %idxprom329
  call void @angular_momentum_expon(ptr noundef %arrayidx330, ptr noundef @.str.201)
  %233 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum331 = getelementptr inbounds %struct.qmdata_t, ptr %233, i32 0, i32 37
  %234 = load ptr, ptr %angular_momentum331, align 8, !tbaa !140
  %235 = load i32, ptr %j, align 4, !tbaa !40
  %add332 = add nsw i32 %235, 24
  %idxprom333 = sext i32 %add332 to i64
  %arrayidx334 = getelementptr inbounds i32, ptr %234, i64 %idxprom333
  call void @angular_momentum_expon(ptr noundef %arrayidx334, ptr noundef @.str.202)
  %236 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum335 = getelementptr inbounds %struct.qmdata_t, ptr %236, i32 0, i32 37
  %237 = load ptr, ptr %angular_momentum335, align 8, !tbaa !140
  %238 = load i32, ptr %j, align 4, !tbaa !40
  %add336 = add nsw i32 %238, 27
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %237, i64 %idxprom337
  call void @angular_momentum_expon(ptr noundef %arrayidx338, ptr noundef @.str.203)
  %239 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum339 = getelementptr inbounds %struct.qmdata_t, ptr %239, i32 0, i32 37
  %240 = load ptr, ptr %angular_momentum339, align 8, !tbaa !140
  %241 = load i32, ptr %j, align 4, !tbaa !40
  %add340 = add nsw i32 %241, 30
  %idxprom341 = sext i32 %add340 to i64
  %arrayidx342 = getelementptr inbounds i32, ptr %240, i64 %idxprom341
  call void @angular_momentum_expon(ptr noundef %arrayidx342, ptr noundef @.str.204)
  %242 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum343 = getelementptr inbounds %struct.qmdata_t, ptr %242, i32 0, i32 37
  %243 = load ptr, ptr %angular_momentum343, align 8, !tbaa !140
  %244 = load i32, ptr %j, align 4, !tbaa !40
  %add344 = add nsw i32 %244, 33
  %idxprom345 = sext i32 %add344 to i64
  %arrayidx346 = getelementptr inbounds i32, ptr %243, i64 %idxprom345
  call void @angular_momentum_expon(ptr noundef %arrayidx346, ptr noundef @.str.205)
  %245 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum347 = getelementptr inbounds %struct.qmdata_t, ptr %245, i32 0, i32 37
  %246 = load ptr, ptr %angular_momentum347, align 8, !tbaa !140
  %247 = load i32, ptr %j, align 4, !tbaa !40
  %add348 = add nsw i32 %247, 36
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %246, i64 %idxprom349
  call void @angular_momentum_expon(ptr noundef %arrayidx350, ptr noundef @.str.206)
  %248 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum351 = getelementptr inbounds %struct.qmdata_t, ptr %248, i32 0, i32 37
  %249 = load ptr, ptr %angular_momentum351, align 8, !tbaa !140
  %250 = load i32, ptr %j, align 4, !tbaa !40
  %add352 = add nsw i32 %250, 39
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds i32, ptr %249, i64 %idxprom353
  call void @angular_momentum_expon(ptr noundef %arrayidx354, ptr noundef @.str.207)
  %251 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %angular_momentum355 = getelementptr inbounds %struct.qmdata_t, ptr %251, i32 0, i32 37
  %252 = load ptr, ptr %angular_momentum355, align 8, !tbaa !140
  %253 = load i32, ptr %j, align 4, !tbaa !40
  %add356 = add nsw i32 %253, 42
  %idxprom357 = sext i32 %add356 to i64
  %arrayidx358 = getelementptr inbounds i32, ptr %252, i64 %idxprom357
  call void @angular_momentum_expon(ptr noundef %arrayidx358, ptr noundef @.str.208)
  %254 = load i32, ptr %j, align 4, !tbaa !40
  %add359 = add nsw i32 %254, 45
  store i32 %add359, ptr %j, align 4, !tbaa !40
  br label %sw.epilog360

sw.epilog360:                                     ; preds = %for.body203, %sw.bb299, %sw.bb258, %sw.bb233, %sw.bb220, %sw.bb207
  br label %for.inc361

for.inc361:                                       ; preds = %sw.epilog360
  %255 = load i32, ptr %i, align 4, !tbaa !40
  %inc362 = add nsw i32 %255, 1
  store i32 %inc362, ptr %i, align 4, !tbaa !40
  br label %for.cond199, !llvm.loop !189

for.end363:                                       ; preds = %for.cond199
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup364

cleanup364:                                       ; preds = %for.end363, %if.then196, %cleanup149, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %moldendata) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %numshells) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %numprims) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %atomid) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr %shelltype) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr %buffer) #11
  %256 = load i32, ptr %retval, align 4
  ret i32 %256
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i32 @shelltype_int(ptr noundef %type) #0 {
entry:
  %type.addr = alloca ptr, align 8
  %shelltype = alloca i32, align 4
  store ptr %type, ptr %type.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %shelltype) #11
  %0 = load ptr, ptr %type.addr, align 8, !tbaa !27
  %call = call i32 @strcasecmp(ptr noundef %0, ptr noundef @.str.170) #13
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 -10, ptr %shelltype, align 4, !tbaa !40
  br label %if.end25

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %type.addr, align 8, !tbaa !27
  %call1 = call i32 @strcasecmp(ptr noundef %1, ptr noundef @.str.209) #13
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else4, label %if.then3

if.then3:                                         ; preds = %if.else
  store i32 0, ptr %shelltype, align 4, !tbaa !40
  br label %if.end24

if.else4:                                         ; preds = %if.else
  %2 = load ptr, ptr %type.addr, align 8, !tbaa !27
  %call5 = call i32 @strcasecmp(ptr noundef %2, ptr noundef @.str.210) #13
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else4
  store i32 1, ptr %shelltype, align 4, !tbaa !40
  br label %if.end23

if.else8:                                         ; preds = %if.else4
  %3 = load ptr, ptr %type.addr, align 8, !tbaa !27
  %call9 = call i32 @strcasecmp(ptr noundef %3, ptr noundef @.str.211) #13
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else8
  store i32 2, ptr %shelltype, align 4, !tbaa !40
  br label %if.end22

if.else12:                                        ; preds = %if.else8
  %4 = load ptr, ptr %type.addr, align 8, !tbaa !27
  %call13 = call i32 @strcasecmp(ptr noundef %4, ptr noundef @.str.212) #13
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.else12
  store i32 3, ptr %shelltype, align 4, !tbaa !40
  br label %if.end21

if.else16:                                        ; preds = %if.else12
  %5 = load ptr, ptr %type.addr, align 8, !tbaa !27
  %call17 = call i32 @strcasecmp(ptr noundef %5, ptr noundef @.str.213) #13
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.else16
  store i32 4, ptr %shelltype, align 4, !tbaa !40
  br label %if.end

if.else20:                                        ; preds = %if.else16
  store i32 -666, ptr %shelltype, align 4, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then19
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then11
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then7
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then3
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %6 = load i32, ptr %shelltype, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %shelltype) #11
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @fpexpftoc(ptr noundef %ftocstr) #0 {
entry:
  %ftocstr.addr = alloca ptr, align 8
  %convcnt = alloca i32, align 4
  %len = alloca i32, align 4
  %lenm2 = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ftocstr, ptr %ftocstr.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %convcnt) #11
  store i32 0, ptr %convcnt, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #11
  %0 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %call = call i64 @strlen(ptr noundef %0) #13
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %lenm2) #11
  %1 = load i32, ptr %len, align 4, !tbaa !40
  %sub = sub nsw i32 %1, 2
  store i32 %sub, ptr %lenm2, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  store i32 1, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !40
  %3 = load i32, ptr %lenm2, align 4, !tbaa !40
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %5 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !35
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp eq i32 %conv2, 68
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %8 = load i32, ptr %i, align 4, !tbaa !40
  %add = add nsw i32 %8, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 %idxprom5
  %9 = load i8, ptr %arrayidx6, align 1, !tbaa !35
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %land.lhs.true16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %11 = load i32, ptr %i, align 4, !tbaa !40
  %add10 = add nsw i32 %11, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %10, i64 %idxprom11
  %12 = load i8, ptr %arrayidx12, align 1, !tbaa !35
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 43
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %14 = load i32, ptr %i, align 4, !tbaa !40
  %sub17 = sub nsw i32 %14, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %13, i64 %idxprom18
  %15 = load i8, ptr %arrayidx19, align 1, !tbaa !35
  %conv20 = sext i8 %15 to i32
  %cmp21 = icmp sge i32 %conv20, 48
  br i1 %cmp21, label %land.lhs.true23, label %if.end

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %16 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %17 = load i32, ptr %i, align 4, !tbaa !40
  %sub24 = sub nsw i32 %17, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %16, i64 %idxprom25
  %18 = load i8, ptr %arrayidx26, align 1, !tbaa !35
  %conv27 = sext i8 %18 to i32
  %cmp28 = icmp sle i32 %conv27, 57
  br i1 %cmp28, label %land.lhs.true30, label %if.end

land.lhs.true30:                                  ; preds = %land.lhs.true23
  %19 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %20 = load i32, ptr %i, align 4, !tbaa !40
  %add31 = add nsw i32 %20, 2
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %19, i64 %idxprom32
  %21 = load i8, ptr %arrayidx33, align 1, !tbaa !35
  %conv34 = sext i8 %21 to i32
  %cmp35 = icmp sge i32 %conv34, 48
  br i1 %cmp35, label %land.lhs.true37, label %if.end

land.lhs.true37:                                  ; preds = %land.lhs.true30
  %22 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %23 = load i32, ptr %i, align 4, !tbaa !40
  %add38 = add nsw i32 %23, 2
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %22, i64 %idxprom39
  %24 = load i8, ptr %arrayidx40, align 1, !tbaa !35
  %conv41 = sext i8 %24 to i32
  %cmp42 = icmp sle i32 %conv41, 57
  br i1 %cmp42, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true37
  %25 = load ptr, ptr %ftocstr.addr, align 8, !tbaa !27
  %26 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom44 = sext i32 %26 to i64
  %arrayidx45 = getelementptr inbounds i8, ptr %25, i64 %idxprom44
  store i8 69, ptr %arrayidx45, align 1, !tbaa !35
  %27 = load i32, ptr %convcnt, align 4, !tbaa !40
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %convcnt, align 4, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true37, %land.lhs.true30, %land.lhs.true23, %land.lhs.true16, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %i, align 4, !tbaa !40
  %inc46 = add nsw i32 %28, 1
  store i32 %inc46, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %convcnt, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %lenm2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %convcnt) #11
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @fill_basis_arrays(ptr noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %shellcount = alloca i32, align 4
  %primcount = alloca i32, align 4
  %basis = alloca ptr, align 8
  %num_shells_per_atom = alloca ptr, align 8
  %num_prim_per_shell = alloca ptr, align 8
  %shell_types = alloca ptr, align 8
  %atomicnum_per_basisatom = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %shellcount) #11
  store i32 0, ptr %shellcount, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %primcount) #11
  store i32 0, ptr %primcount, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %basis) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_shells_per_atom) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_prim_per_shell) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %shell_types) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr %atomicnum_per_basisatom) #11
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !40
  %1 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_atoms = getelementptr inbounds %struct.qmdata_t, ptr %1, i32 0, i32 28
  %2 = load i32, ptr %num_basis_atoms, align 4, !tbaa !119
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !40
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !40
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set = getelementptr inbounds %struct.qmdata_t, ptr %4, i32 0, i32 26
  %5 = load ptr, ptr %basis_set, align 8, !tbaa !143
  %6 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.basis_atom_t, ptr %5, i64 %idxprom
  %numshells = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx, i32 0, i32 2
  %7 = load i32, ptr %numshells, align 8, !tbaa !144
  %cmp2 = icmp slt i32 %3, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set4 = getelementptr inbounds %struct.qmdata_t, ptr %8, i32 0, i32 26
  %9 = load ptr, ptr %basis_set4, align 8, !tbaa !143
  %10 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.basis_atom_t, ptr %9, i64 %idxprom5
  %shell = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx6, i32 0, i32 3
  %11 = load ptr, ptr %shell, align 8, !tbaa !146
  %12 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds %struct.shell_t, ptr %11, i64 %idxprom7
  %numprims = getelementptr inbounds %struct.shell_t, ptr %arrayidx8, i32 0, i32 0
  %13 = load i32, ptr %numprims, align 8, !tbaa !180
  %14 = load i32, ptr %primcount, align 4, !tbaa !40
  %add = add nsw i32 %14, %13
  store i32 %add, ptr %primcount, align 4, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, ptr %j, align 4, !tbaa !40
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !40
  br label %for.cond1, !llvm.loop !191

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !40
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !192

for.end11:                                        ; preds = %for.cond
  %17 = load i32, ptr %primcount, align 4, !tbaa !40
  %18 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_funcs = getelementptr inbounds %struct.qmdata_t, ptr %18, i32 0, i32 27
  store i32 %17, ptr %num_basis_funcs, align 8, !tbaa !118
  %19 = load i32, ptr %primcount, align 4, !tbaa !40
  %mul = mul nsw i32 2, %19
  %conv = sext i32 %mul to i64
  %call = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 4) #12
  store ptr %call, ptr %basis, align 8, !tbaa !27
  %20 = load ptr, ptr %basis, align 8, !tbaa !27
  %cmp12 = icmp eq ptr %20, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end11
  %21 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.34, ptr noundef @.str.214)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.end11
  %22 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_shells = getelementptr inbounds %struct.qmdata_t, ptr %22, i32 0, i32 31
  %23 = load i32, ptr %num_shells, align 8, !tbaa !120
  %conv15 = sext i32 %23 to i64
  %call16 = call noalias ptr @calloc(i64 noundef %conv15, i64 noundef 4) #12
  store ptr %call16, ptr %shell_types, align 8, !tbaa !27
  %24 = load ptr, ptr %shell_types, align 8, !tbaa !27
  %cmp17 = icmp eq ptr %24, null
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end
  %25 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.34, ptr noundef @.str.215)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %26 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_atoms22 = getelementptr inbounds %struct.qmdata_t, ptr %26, i32 0, i32 28
  %27 = load i32, ptr %num_basis_atoms22, align 4, !tbaa !119
  %conv23 = sext i32 %27 to i64
  %call24 = call noalias ptr @calloc(i64 noundef %conv23, i64 noundef 4) #12
  store ptr %call24, ptr %num_shells_per_atom, align 8, !tbaa !27
  %28 = load ptr, ptr %num_shells_per_atom, align 8, !tbaa !27
  %cmp25 = icmp eq ptr %28, null
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end21
  %29 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.34, ptr noundef @.str.216)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %30 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_shells30 = getelementptr inbounds %struct.qmdata_t, ptr %30, i32 0, i32 31
  %31 = load i32, ptr %num_shells30, align 8, !tbaa !120
  %conv31 = sext i32 %31 to i64
  %call32 = call noalias ptr @calloc(i64 noundef %conv31, i64 noundef 4) #12
  store ptr %call32, ptr %num_prim_per_shell, align 8, !tbaa !27
  %32 = load ptr, ptr %num_prim_per_shell, align 8, !tbaa !27
  %cmp33 = icmp eq ptr %32, null
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end29
  %33 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.34, ptr noundef @.str.217)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %34 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_atoms38 = getelementptr inbounds %struct.qmdata_t, ptr %34, i32 0, i32 28
  %35 = load i32, ptr %num_basis_atoms38, align 4, !tbaa !119
  %conv39 = sext i32 %35 to i64
  %call40 = call noalias ptr @calloc(i64 noundef %conv39, i64 noundef 4) #12
  store ptr %call40, ptr %atomicnum_per_basisatom, align 8, !tbaa !27
  %36 = load ptr, ptr %atomicnum_per_basisatom, align 8, !tbaa !27
  %cmp41 = icmp eq ptr %36, null
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end37
  %37 = load ptr, ptr @stderr, align 8, !tbaa !27
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.34, ptr noundef @.str.218)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %38 = load ptr, ptr %basis, align 8, !tbaa !27
  %39 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis46 = getelementptr inbounds %struct.qmdata_t, ptr %39, i32 0, i32 25
  store ptr %38, ptr %basis46, align 8, !tbaa !137
  %40 = load ptr, ptr %shell_types, align 8, !tbaa !27
  %41 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %shell_types47 = getelementptr inbounds %struct.qmdata_t, ptr %41, i32 0, i32 33
  store ptr %40, ptr %shell_types47, align 8, !tbaa !134
  %42 = load ptr, ptr %num_shells_per_atom, align 8, !tbaa !27
  %43 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_shells_per_atom48 = getelementptr inbounds %struct.qmdata_t, ptr %43, i32 0, i32 30
  store ptr %42, ptr %num_shells_per_atom48, align 8, !tbaa !126
  %44 = load ptr, ptr %num_prim_per_shell, align 8, !tbaa !27
  %45 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_prim_per_shell49 = getelementptr inbounds %struct.qmdata_t, ptr %45, i32 0, i32 32
  store ptr %44, ptr %num_prim_per_shell49, align 8, !tbaa !132
  %46 = load ptr, ptr %atomicnum_per_basisatom, align 8, !tbaa !27
  %47 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %atomicnum_per_basisatom50 = getelementptr inbounds %struct.qmdata_t, ptr %47, i32 0, i32 29
  store ptr %46, ptr %atomicnum_per_basisatom50, align 8, !tbaa !129
  store i32 0, ptr %primcount, align 4, !tbaa !40
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc142, %if.end45
  %48 = load i32, ptr %i, align 4, !tbaa !40
  %49 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %num_basis_atoms52 = getelementptr inbounds %struct.qmdata_t, ptr %49, i32 0, i32 28
  %50 = load i32, ptr %num_basis_atoms52, align 4, !tbaa !119
  %cmp53 = icmp slt i32 %48, %50
  br i1 %cmp53, label %for.body55, label %for.end144

for.body55:                                       ; preds = %for.cond51
  %51 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %atoms = getelementptr inbounds %struct.qmdata_t, ptr %51, i32 0, i32 65
  %52 = load ptr, ptr %atoms, align 8, !tbaa !48
  %53 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom56 = sext i32 %53 to i64
  %arrayidx57 = getelementptr inbounds %struct.qm_atom_t, ptr %52, i64 %idxprom56
  %atomicnum = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx57, i32 0, i32 1
  %54 = load i32, ptr %atomicnum, align 4, !tbaa !53
  %55 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set58 = getelementptr inbounds %struct.qmdata_t, ptr %55, i32 0, i32 26
  %56 = load ptr, ptr %basis_set58, align 8, !tbaa !143
  %57 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom59 = sext i32 %57 to i64
  %arrayidx60 = getelementptr inbounds %struct.basis_atom_t, ptr %56, i64 %idxprom59
  %atomicnum61 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx60, i32 0, i32 1
  store i32 %54, ptr %atomicnum61, align 4, !tbaa !193
  %58 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %atoms62 = getelementptr inbounds %struct.qmdata_t, ptr %58, i32 0, i32 65
  %59 = load ptr, ptr %atoms62, align 8, !tbaa !48
  %60 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom63 = sext i32 %60 to i64
  %arrayidx64 = getelementptr inbounds %struct.qm_atom_t, ptr %59, i64 %idxprom63
  %atomicnum65 = getelementptr inbounds %struct.qm_atom_t, ptr %arrayidx64, i32 0, i32 1
  %61 = load i32, ptr %atomicnum65, align 4, !tbaa !53
  %62 = load ptr, ptr %atomicnum_per_basisatom, align 8, !tbaa !27
  %63 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom66 = sext i32 %63 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %62, i64 %idxprom66
  store i32 %61, ptr %arrayidx67, align 4, !tbaa !40
  %64 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set68 = getelementptr inbounds %struct.qmdata_t, ptr %64, i32 0, i32 26
  %65 = load ptr, ptr %basis_set68, align 8, !tbaa !143
  %66 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom69 = sext i32 %66 to i64
  %arrayidx70 = getelementptr inbounds %struct.basis_atom_t, ptr %65, i64 %idxprom69
  %numshells71 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx70, i32 0, i32 2
  %67 = load i32, ptr %numshells71, align 8, !tbaa !144
  %68 = load ptr, ptr %num_shells_per_atom, align 8, !tbaa !27
  %69 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom72 = sext i32 %69 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %68, i64 %idxprom72
  store i32 %67, ptr %arrayidx73, align 4, !tbaa !40
  store i32 0, ptr %j, align 4, !tbaa !40
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc139, %for.body55
  %70 = load i32, ptr %j, align 4, !tbaa !40
  %71 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set75 = getelementptr inbounds %struct.qmdata_t, ptr %71, i32 0, i32 26
  %72 = load ptr, ptr %basis_set75, align 8, !tbaa !143
  %73 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom76 = sext i32 %73 to i64
  %arrayidx77 = getelementptr inbounds %struct.basis_atom_t, ptr %72, i64 %idxprom76
  %numshells78 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx77, i32 0, i32 2
  %74 = load i32, ptr %numshells78, align 8, !tbaa !144
  %cmp79 = icmp slt i32 %70, %74
  br i1 %cmp79, label %for.body81, label %for.end141

for.body81:                                       ; preds = %for.cond74
  %75 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set82 = getelementptr inbounds %struct.qmdata_t, ptr %75, i32 0, i32 26
  %76 = load ptr, ptr %basis_set82, align 8, !tbaa !143
  %77 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom83 = sext i32 %77 to i64
  %arrayidx84 = getelementptr inbounds %struct.basis_atom_t, ptr %76, i64 %idxprom83
  %shell85 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx84, i32 0, i32 3
  %78 = load ptr, ptr %shell85, align 8, !tbaa !146
  %79 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom86 = sext i32 %79 to i64
  %arrayidx87 = getelementptr inbounds %struct.shell_t, ptr %78, i64 %idxprom86
  %type = getelementptr inbounds %struct.shell_t, ptr %arrayidx87, i32 0, i32 1
  %80 = load i32, ptr %type, align 4, !tbaa !181
  %81 = load ptr, ptr %shell_types, align 8, !tbaa !27
  %82 = load i32, ptr %shellcount, align 4, !tbaa !40
  %idxprom88 = sext i32 %82 to i64
  %arrayidx89 = getelementptr inbounds i32, ptr %81, i64 %idxprom88
  store i32 %80, ptr %arrayidx89, align 4, !tbaa !40
  %83 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set90 = getelementptr inbounds %struct.qmdata_t, ptr %83, i32 0, i32 26
  %84 = load ptr, ptr %basis_set90, align 8, !tbaa !143
  %85 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom91 = sext i32 %85 to i64
  %arrayidx92 = getelementptr inbounds %struct.basis_atom_t, ptr %84, i64 %idxprom91
  %shell93 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx92, i32 0, i32 3
  %86 = load ptr, ptr %shell93, align 8, !tbaa !146
  %87 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom94 = sext i32 %87 to i64
  %arrayidx95 = getelementptr inbounds %struct.shell_t, ptr %86, i64 %idxprom94
  %numprims96 = getelementptr inbounds %struct.shell_t, ptr %arrayidx95, i32 0, i32 0
  %88 = load i32, ptr %numprims96, align 8, !tbaa !180
  %89 = load ptr, ptr %num_prim_per_shell, align 8, !tbaa !27
  %90 = load i32, ptr %shellcount, align 4, !tbaa !40
  %idxprom97 = sext i32 %90 to i64
  %arrayidx98 = getelementptr inbounds i32, ptr %89, i64 %idxprom97
  store i32 %88, ptr %arrayidx98, align 4, !tbaa !40
  store i32 0, ptr %k, align 4, !tbaa !40
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc135, %for.body81
  %91 = load i32, ptr %k, align 4, !tbaa !40
  %92 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set100 = getelementptr inbounds %struct.qmdata_t, ptr %92, i32 0, i32 26
  %93 = load ptr, ptr %basis_set100, align 8, !tbaa !143
  %94 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom101 = sext i32 %94 to i64
  %arrayidx102 = getelementptr inbounds %struct.basis_atom_t, ptr %93, i64 %idxprom101
  %shell103 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx102, i32 0, i32 3
  %95 = load ptr, ptr %shell103, align 8, !tbaa !146
  %96 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom104 = sext i32 %96 to i64
  %arrayidx105 = getelementptr inbounds %struct.shell_t, ptr %95, i64 %idxprom104
  %numprims106 = getelementptr inbounds %struct.shell_t, ptr %arrayidx105, i32 0, i32 0
  %97 = load i32, ptr %numprims106, align 8, !tbaa !180
  %cmp107 = icmp slt i32 %91, %97
  br i1 %cmp107, label %for.body109, label %for.end137

for.body109:                                      ; preds = %for.cond99
  %98 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set110 = getelementptr inbounds %struct.qmdata_t, ptr %98, i32 0, i32 26
  %99 = load ptr, ptr %basis_set110, align 8, !tbaa !143
  %100 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom111 = sext i32 %100 to i64
  %arrayidx112 = getelementptr inbounds %struct.basis_atom_t, ptr %99, i64 %idxprom111
  %shell113 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx112, i32 0, i32 3
  %101 = load ptr, ptr %shell113, align 8, !tbaa !146
  %102 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom114 = sext i32 %102 to i64
  %arrayidx115 = getelementptr inbounds %struct.shell_t, ptr %101, i64 %idxprom114
  %prim = getelementptr inbounds %struct.shell_t, ptr %arrayidx115, i32 0, i32 3
  %103 = load ptr, ptr %prim, align 8, !tbaa !147
  %104 = load i32, ptr %k, align 4, !tbaa !40
  %idxprom116 = sext i32 %104 to i64
  %arrayidx117 = getelementptr inbounds %struct.prim_t, ptr %103, i64 %idxprom116
  %exponent = getelementptr inbounds %struct.prim_t, ptr %arrayidx117, i32 0, i32 0
  %105 = load float, ptr %exponent, align 4, !tbaa !183
  %106 = load ptr, ptr %basis, align 8, !tbaa !27
  %107 = load i32, ptr %primcount, align 4, !tbaa !40
  %mul118 = mul nsw i32 2, %107
  %idxprom119 = sext i32 %mul118 to i64
  %arrayidx120 = getelementptr inbounds float, ptr %106, i64 %idxprom119
  store float %105, ptr %arrayidx120, align 4, !tbaa !49
  %108 = load ptr, ptr %data.addr, align 8, !tbaa !27
  %basis_set121 = getelementptr inbounds %struct.qmdata_t, ptr %108, i32 0, i32 26
  %109 = load ptr, ptr %basis_set121, align 8, !tbaa !143
  %110 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom122 = sext i32 %110 to i64
  %arrayidx123 = getelementptr inbounds %struct.basis_atom_t, ptr %109, i64 %idxprom122
  %shell124 = getelementptr inbounds %struct.basis_atom_t, ptr %arrayidx123, i32 0, i32 3
  %111 = load ptr, ptr %shell124, align 8, !tbaa !146
  %112 = load i32, ptr %j, align 4, !tbaa !40
  %idxprom125 = sext i32 %112 to i64
  %arrayidx126 = getelementptr inbounds %struct.shell_t, ptr %111, i64 %idxprom125
  %prim127 = getelementptr inbounds %struct.shell_t, ptr %arrayidx126, i32 0, i32 3
  %113 = load ptr, ptr %prim127, align 8, !tbaa !147
  %114 = load i32, ptr %k, align 4, !tbaa !40
  %idxprom128 = sext i32 %114 to i64
  %arrayidx129 = getelementptr inbounds %struct.prim_t, ptr %113, i64 %idxprom128
  %contraction_coeff = getelementptr inbounds %struct.prim_t, ptr %arrayidx129, i32 0, i32 1
  %115 = load float, ptr %contraction_coeff, align 4, !tbaa !185
  %116 = load ptr, ptr %basis, align 8, !tbaa !27
  %117 = load i32, ptr %primcount, align 4, !tbaa !40
  %mul130 = mul nsw i32 2, %117
  %add131 = add nsw i32 %mul130, 1
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds float, ptr %116, i64 %idxprom132
  store float %115, ptr %arrayidx133, align 4, !tbaa !49
  %118 = load i32, ptr %primcount, align 4, !tbaa !40
  %inc134 = add nsw i32 %118, 1
  store i32 %inc134, ptr %primcount, align 4, !tbaa !40
  br label %for.inc135

for.inc135:                                       ; preds = %for.body109
  %119 = load i32, ptr %k, align 4, !tbaa !40
  %inc136 = add nsw i32 %119, 1
  store i32 %inc136, ptr %k, align 4, !tbaa !40
  br label %for.cond99, !llvm.loop !194

for.end137:                                       ; preds = %for.cond99
  %120 = load i32, ptr %shellcount, align 4, !tbaa !40
  %inc138 = add nsw i32 %120, 1
  store i32 %inc138, ptr %shellcount, align 4, !tbaa !40
  br label %for.inc139

for.inc139:                                       ; preds = %for.end137
  %121 = load i32, ptr %j, align 4, !tbaa !40
  %inc140 = add nsw i32 %121, 1
  store i32 %inc140, ptr %j, align 4, !tbaa !40
  br label %for.cond74, !llvm.loop !195

for.end141:                                       ; preds = %for.cond74
  br label %for.inc142

for.inc142:                                       ; preds = %for.end141
  %122 = load i32, ptr %i, align 4, !tbaa !40
  %inc143 = add nsw i32 %122, 1
  store i32 %inc143, ptr %i, align 4, !tbaa !40
  br label %for.cond51, !llvm.loop !196

for.end144:                                       ; preds = %for.cond51
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end144, %if.then43, %if.then35, %if.then27, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %atomicnum_per_basisatom) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %shell_types) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_prim_per_shell) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_shells_per_atom) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %basis) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %primcount) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %shellcount) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  %123 = load i32, ptr %retval, align 4
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal void @angular_momentum_expon(ptr noundef %ang_mom_expon, ptr noundef %ang_mom_str) #0 {
entry:
  %ang_mom_expon.addr = alloca ptr, align 8
  %ang_mom_str.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %xexp = alloca i32, align 4
  %yexp = alloca i32, align 4
  %zexp = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %ang_mom_expon, ptr %ang_mom_expon.addr, align 8, !tbaa !27
  store ptr %ang_mom_str, ptr %ang_mom_str.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %xexp) #11
  store i32 0, ptr %xexp, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %yexp) #11
  store i32 0, ptr %yexp, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %zexp) #11
  store i32 0, ptr %zexp, align 4, !tbaa !40
  store i32 0, ptr %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !40
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %ang_mom_str.addr, align 8, !tbaa !27
  %call = call i64 @strlen(ptr noundef %1) #13
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #11
  %call2 = call ptr @__ctype_toupper_loc() #15
  %2 = load ptr, ptr %call2, align 8, !tbaa !27
  %3 = load ptr, ptr %ang_mom_str.addr, align 8, !tbaa !27
  %4 = load i32, ptr %i, align 4, !tbaa !40
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !35
  %conv3 = sext i8 %5 to i32
  %idxprom4 = sext i32 %conv3 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %2, i64 %idxprom4
  %6 = load i32, ptr %arrayidx5, align 4, !tbaa !40
  store i32 %6, ptr %__res, align 4, !tbaa !40
  %7 = load i32, ptr %__res, align 4, !tbaa !40
  store i32 %7, ptr %tmp, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #11
  %8 = load i32, ptr %tmp, align 4, !tbaa !40
  switch i32 %8, label %sw.epilog [
    i32 88, label %sw.bb
    i32 89, label %sw.bb6
    i32 90, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body
  %9 = load i32, ptr %xexp, align 4, !tbaa !40
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %xexp, align 4, !tbaa !40
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  %10 = load i32, ptr %yexp, align 4, !tbaa !40
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, ptr %yexp, align 4, !tbaa !40
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  %11 = load i32, ptr %zexp, align 4, !tbaa !40
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, ptr %zexp, align 4, !tbaa !40
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb8, %sw.bb6, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %12 = load i32, ptr %i, align 4, !tbaa !40
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !40
  br label %for.cond, !llvm.loop !197

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %xexp, align 4, !tbaa !40
  %14 = load ptr, ptr %ang_mom_expon.addr, align 8, !tbaa !27
  %arrayidx11 = getelementptr inbounds i32, ptr %14, i64 0
  store i32 %13, ptr %arrayidx11, align 4, !tbaa !40
  %15 = load i32, ptr %yexp, align 4, !tbaa !40
  %16 = load ptr, ptr %ang_mom_expon.addr, align 8, !tbaa !27
  %arrayidx12 = getelementptr inbounds i32, ptr %16, i64 1
  store i32 %15, ptr %arrayidx12, align 4, !tbaa !40
  %17 = load i32, ptr %zexp, align 4, !tbaa !40
  %18 = load ptr, ptr %ang_mom_expon.addr, align 8, !tbaa !27
  %arrayidx13 = getelementptr inbounds i32, ptr %18, i64 2
  store i32 %17, ptr %arrayidx13, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %zexp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %yexp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %xexp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  ret void
}

declare i32 @fclose(ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!6, !10, i64 16}
!13 = !{!6, !10, i64 24}
!14 = !{!6, !10, i64 32}
!15 = !{!6, !7, i64 40}
!16 = !{!6, !7, i64 44}
!17 = !{!6, !7, i64 48}
!18 = !{!6, !10, i64 56}
!19 = !{!6, !10, i64 64}
!20 = !{!6, !10, i64 72}
!21 = !{!6, !10, i64 240}
!22 = !{!6, !10, i64 232}
!23 = !{!6, !10, i64 248}
!24 = !{!6, !10, i64 216}
!25 = !{!6, !10, i64 224}
!26 = !{!6, !10, i64 96}
!27 = !{!10, !10, i64 0}
!28 = !{!29, !10, i64 8}
!29 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !8, i64 40, !8, i64 50, !8, i64 8242, !8, i64 16434, !8, i64 24626, !8, i64 32818, !7, i64 41012, !8, i64 41016, !7, i64 41272, !7, i64 41276, !7, i64 41280, !8, i64 41284, !7, i64 49476, !7, i64 49480, !7, i64 49484, !7, i64 49488, !30, i64 49492, !10, i64 49496, !10, i64 49504, !7, i64 49512, !7, i64 49516, !10, i64 49520, !10, i64 49528, !7, i64 49536, !10, i64 49544, !10, i64 49552, !7, i64 49560, !7, i64 49564, !7, i64 49568, !10, i64 49576, !7, i64 49584, !7, i64 49588, !7, i64 49592, !10, i64 49600, !10, i64 49608, !10, i64 49616, !10, i64 49624, !7, i64 49632, !7, i64 49636, !7, i64 49640, !7, i64 49644, !7, i64 49648, !7, i64 49652, !7, i64 49656, !7, i64 49660, !10, i64 49664, !10, i64 49672, !10, i64 49680, !10, i64 49688, !10, i64 49696, !10, i64 49704, !10, i64 49712, !10, i64 49720, !10, i64 49728, !10, i64 49736, !10, i64 49744, !10, i64 49752, !10, i64 49760, !7, i64 49768, !7, i64 49772, !7, i64 49776, !7, i64 49780, !7, i64 49784, !10, i64 49792, !31, i64 49800}
!30 = !{!"float", !8, i64 0}
!31 = !{!"long", !8, i64 0}
!32 = !{!29, !10, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!8, !8, i64 0}
!36 = !{!37, !7, i64 48}
!37 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !8, i64 32, !7, i64 48}
!38 = !{!31, !31, i64 0}
!39 = !{!37, !31, i64 0}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !34}
!42 = !{!29, !7, i64 16}
!43 = !{!29, !7, i64 49772}
!44 = !{!37, !31, i64 8}
!45 = !{!29, !10, i64 49792}
!46 = !{!37, !31, i64 16}
!47 = !{!37, !31, i64 24}
!48 = !{!29, !10, i64 49760}
!49 = !{!30, !30, i64 0}
!50 = !{!51, !7, i64 80}
!51 = !{!"", !8, i64 0, !8, i64 16, !8, i64 32, !7, i64 40, !8, i64 44, !8, i64 52, !8, i64 54, !8, i64 56, !30, i64 60, !30, i64 64, !30, i64 68, !30, i64 72, !30, i64 76, !7, i64 80}
!52 = !{!51, !7, i64 40}
!53 = !{!54, !7, i64 12}
!54 = !{!"", !8, i64 0, !7, i64 12, !30, i64 16, !30, i64 20, !30, i64 24}
!55 = !{!54, !30, i64 16}
!56 = !{!54, !30, i64 20}
!57 = !{!54, !30, i64 24}
!58 = distinct !{!58, !34}
!59 = !{!29, !7, i64 49776}
!60 = distinct !{!60, !34}
!61 = !{!62, !7, i64 0}
!62 = !{!"molfile_timestep_metadata", !7, i64 0, !7, i64 4, !7, i64 8}
!63 = !{!62, !7, i64 8}
!64 = !{!29, !7, i64 49780}
!65 = !{!66, !10, i64 0}
!66 = !{!"", !10, i64 0, !10, i64 8, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !30, i64 32, !30, i64 36, !67, i64 40}
!67 = !{!"double", !8, i64 0}
!68 = distinct !{!68, !34}
!69 = !{!29, !10, i64 49752}
!70 = !{!71, !10, i64 0}
!71 = !{!"", !10, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 68, !7, i64 72}
!72 = !{!71, !7, i64 8}
!73 = !{!74, !7, i64 0}
!74 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !8, i64 16, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !67, i64 120, !10, i64 128, !10, i64 136, !10, i64 144}
!75 = !{!76, !10, i64 0}
!76 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!77 = !{!78, !7, i64 0}
!78 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !8, i64 16, !67, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136}
!79 = !{!74, !7, i64 4}
!80 = !{!78, !7, i64 4}
!81 = !{!74, !7, i64 8}
!82 = !{!78, !7, i64 8}
!83 = !{!74, !7, i64 12}
!84 = !{!78, !7, i64 12}
!85 = !{!74, !67, i64 120}
!86 = !{!78, !67, i64 104}
!87 = !{!74, !10, i64 128}
!88 = !{!78, !10, i64 112}
!89 = !{!74, !7, i64 100}
!90 = !{!29, !7, i64 49568}
!91 = !{!74, !10, i64 136}
!92 = !{!78, !10, i64 120}
!93 = !{!74, !7, i64 112}
!94 = !{!78, !10, i64 128}
!95 = !{!74, !10, i64 144}
!96 = distinct !{!96, !34}
!97 = !{!74, !7, i64 108}
!98 = distinct !{!98, !34}
!99 = !{!100, !7, i64 320}
!100 = !{!"molfile_qm_timestep_metadata", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 116, !8, i64 216, !7, i64 316, !7, i64 320, !7, i64 324}
!101 = !{!100, !7, i64 316}
!102 = !{!71, !7, i64 24}
!103 = !{!100, !7, i64 12}
!104 = !{!100, !7, i64 8}
!105 = !{!100, !7, i64 324}
!106 = !{!107, !7, i64 8}
!107 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40}
!108 = !{!107, !7, i64 0}
!109 = !{!107, !7, i64 4}
!110 = !{!107, !7, i64 28}
!111 = !{!107, !7, i64 32}
!112 = !{!107, !7, i64 36}
!113 = !{!107, !7, i64 40}
!114 = !{!107, !7, i64 12}
!115 = !{!107, !7, i64 16}
!116 = !{!107, !7, i64 20}
!117 = !{!107, !7, i64 24}
!118 = !{!29, !7, i64 49512}
!119 = !{!29, !7, i64 49516}
!120 = !{!29, !7, i64 49536}
!121 = !{!29, !7, i64 41280}
!122 = !{!123, !7, i64 20}
!123 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !8, i64 48, !8, i64 129, !8, i64 4225, !8, i64 4306}
!124 = !{!29, !7, i64 41272}
!125 = !{!123, !7, i64 24}
!126 = !{!29, !10, i64 49528}
!127 = !{!128, !10, i64 0}
!128 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!129 = !{!29, !10, i64 49520}
!130 = !{!128, !10, i64 24}
!131 = distinct !{!131, !34}
!132 = !{!29, !10, i64 49544}
!133 = !{!128, !10, i64 8}
!134 = !{!29, !10, i64 49552}
!135 = !{!128, !10, i64 40}
!136 = distinct !{!136, !34}
!137 = !{!29, !10, i64 49496}
!138 = !{!128, !10, i64 16}
!139 = distinct !{!139, !34}
!140 = !{!29, !10, i64 49576}
!141 = !{!128, !10, i64 32}
!142 = distinct !{!142, !34}
!143 = !{!29, !10, i64 49504}
!144 = !{!145, !7, i64 16}
!145 = !{!"", !8, i64 0, !7, i64 12, !7, i64 16, !10, i64 24}
!146 = !{!145, !10, i64 24}
!147 = !{!148, !10, i64 16}
!148 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16}
!149 = distinct !{!149, !34}
!150 = distinct !{!150, !34}
!151 = distinct !{!151, !34}
!152 = distinct !{!152, !34}
!153 = distinct !{!153, !34}
!154 = !{!155, !155, i64 0}
!155 = !{!"short", !8, i64 0}
!156 = distinct !{!156, !34}
!157 = distinct !{!157, !34}
!158 = distinct !{!158, !34}
!159 = !{!29, !7, i64 20}
!160 = !{!29, !7, i64 24}
!161 = !{!29, !7, i64 28}
!162 = !{!29, !7, i64 32}
!163 = !{!29, !7, i64 49768}
!164 = !{!29, !7, i64 49784}
!165 = !{!29, !7, i64 49632}
!166 = !{!29, !7, i64 49640}
!167 = !{!29, !7, i64 49636}
!168 = !{!29, !7, i64 49588}
!169 = distinct !{!169, !34}
!170 = distinct !{!170, !34}
!171 = distinct !{!171, !34}
!172 = !{!74, !7, i64 104}
!173 = distinct !{!173, !34}
!174 = distinct !{!174, !34}
!175 = distinct !{!175, !34}
!176 = distinct !{!176, !34}
!177 = distinct !{!177, !34}
!178 = distinct !{!178, !34}
!179 = distinct !{!179, !34}
!180 = !{!148, !7, i64 0}
!181 = !{!148, !7, i64 4}
!182 = !{!67, !67, i64 0}
!183 = !{!184, !30, i64 0}
!184 = !{!"", !30, i64 0, !30, i64 4}
!185 = !{!184, !30, i64 4}
!186 = distinct !{!186, !34}
!187 = distinct !{!187, !34}
!188 = distinct !{!188, !34}
!189 = distinct !{!189, !34}
!190 = distinct !{!190, !34}
!191 = distinct !{!191, !34}
!192 = distinct !{!192, !34}
!193 = !{!145, !7, i64 12}
!194 = distinct !{!194, !34}
!195 = distinct !{!195, !34}
!196 = distinct !{!196, !34}
!197 = distinct !{!197, !34}
