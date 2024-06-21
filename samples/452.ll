; ModuleID = 'samples/452.bc'
source_filename = "../spack-src/test/arm/neon/cltz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [2 x float], [2 x i32] }
%struct.anon.1 = type { [1 x double], [1 x i64] }
%struct.anon.2 = type { [8 x i8], [8 x i8] }
%struct.anon.3 = type { [4 x i16], [4 x i16] }
%struct.anon.4 = type { [2 x i32], [2 x i32] }
%struct.anon.5 = type { [1 x i64], [1 x i64] }
%struct.anon.6 = type { [4 x float], [4 x i32] }
%struct.anon.7 = type { [2 x double], [2 x i64] }
%struct.anon.8 = type { [16 x i8], [16 x i8] }
%struct.anon.9 = type { [8 x i16], [8 x i16] }
%struct.anon.10 = type { [4 x i32], [4 x i32] }
%struct.anon.11 = type { [2 x i64], [2 x i64] }
%struct.anon.12 = type { double, i64 }
%struct.anon.13 = type { i64, i64 }
%struct.anon.14 = type { float, i32 }
%union.simde_float32x2_private = type { <2 x float> }
%union.simde_uint32x2_private = type { <2 x i32> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.simde_float64x1_private = type { <1 x double> }
%union.simde_uint64x1_private = type { <1 x i64> }
%union.simde_int8x8_private = type { <8 x i8> }
%union.simde_uint8x8_private = type { <8 x i8> }
%union.simde_int16x4_private = type { <4 x i16> }
%union.simde_uint16x4_private = type { <4 x i16> }
%union.simde_int32x2_private = type { <2 x i32> }
%union.simde_int64x1_private = type { <1 x i64> }
%union.simde_float32x4_private = type { <4 x float> }
%union.simde_uint32x4_private = type { <4 x i32> }
%union.simde_float64x2_private = type { <2 x double> }
%union.simde_uint64x2_private = type { <2 x i64> }
%union.simde_int8x16_private = type { <16 x i8> }
%union.simde_uint8x16_private = type { <16 x i8> }
%union.simde_int16x8_private = type { <8 x i16> }
%union.simde_uint16x8_private = type { <8 x i16> }
%union.simde_int32x4_private = type { <4 x i32> }
%union.simde_int64x2_private = type { <2 x i64> }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [15 x %struct.anon] [%struct.anon { ptr @test_simde_vcltz_f32, ptr @.str.3 }, %struct.anon { ptr @test_simde_vcltz_f64, ptr @.str.4 }, %struct.anon { ptr @test_simde_vcltz_s8, ptr @.str.5 }, %struct.anon { ptr @test_simde_vcltz_s16, ptr @.str.6 }, %struct.anon { ptr @test_simde_vcltz_s32, ptr @.str.7 }, %struct.anon { ptr @test_simde_vcltz_s64, ptr @.str.8 }, %struct.anon { ptr @test_simde_vcltzq_f32, ptr @.str.9 }, %struct.anon { ptr @test_simde_vcltzq_f64, ptr @.str.10 }, %struct.anon { ptr @test_simde_vcltzq_s8, ptr @.str.11 }, %struct.anon { ptr @test_simde_vcltzq_s16, ptr @.str.12 }, %struct.anon { ptr @test_simde_vcltzq_s32, ptr @.str.13 }, %struct.anon { ptr @test_simde_vcltzq_s64, ptr @.str.14 }, %struct.anon { ptr @test_simde_vcltzd_f64, ptr @.str.15 }, %struct.anon { ptr @test_simde_vcltzd_s64, ptr @.str.16 }, %struct.anon { ptr @test_simde_vcltzs_f32, ptr @.str.17 }], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"not ok %zu cltz/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ok %zu cltz/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"vcltz_f32\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vcltz_f64\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"vcltz_s8\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"vcltz_s16\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"vcltz_s32\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"vcltz_s64\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"vcltzq_f32\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"vcltzq_f64\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"vcltzq_s8\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"vcltzq_s16\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"vcltzq_s32\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"vcltzq_s64\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"vcltzd_f64\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"vcltzd_s64\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"vcltzs_f32\00", align 1
@test_simde_vcltz_f32.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { [2 x float] [float 0xC082C23D80000000, float 0xC0636051E0000000], [2 x i32] [i32 -1, i32 -1] }, %struct.anon.0 { [2 x float] [float 0x408D681480000000, float 0x40866B99A0000000], [2 x i32] zeroinitializer }, %struct.anon.0 { [2 x float] [float 0x403668F5C0000000, float 0xC080F451E0000000], [2 x i32] [i32 0, i32 -1] }, %struct.anon.0 { [2 x float] [float 0xC07905EB80000000, float 0xC08638A3E0000000], [2 x i32] [i32 -1, i32 -1] }, %struct.anon.0 { [2 x float] [float 0x40827EF5C0000000, float 0xC08219C280000000], [2 x i32] [i32 0, i32 -1] }, %struct.anon.0 { [2 x float] [float 0xC07425EB80000000, float 0x40575C2900000000], [2 x i32] [i32 -1, i32 0] }, %struct.anon.0 { [2 x float] [float 0xC07C728F60000000, float 0x4080E08F60000000], [2 x i32] [i32 -1, i32 0] }, %struct.anon.0 { [2 x float] [float 0x408EBAF5C0000000, float 0x405C4A3D80000000], [2 x i32] zeroinitializer }], align 16
@.str.18 = private unnamed_addr constant [34 x i8] c"../spack-src/test/arm/neon/cltz.c\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"simde_vld1_u32(test_vec[i].r)\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%u == %u)\0A\00", align 1
@stderr = external global ptr, align 8
@test_simde_vcltz_f64.test_vec = internal constant [8 x %struct.anon.1] [%struct.anon.1 { [1 x double] [double -3.836800e+02], [1 x i64] [i64 -1] }, %struct.anon.1 { [1 x double] [double -4.378900e+02], [1 x i64] [i64 -1] }, %struct.anon.1 { [1 x double] [double 7.622400e+02], [1 x i64] zeroinitializer }, %struct.anon.1 { [1 x double] [double -5.292600e+02], [1 x i64] [i64 -1] }, %struct.anon.1 { [1 x double] [double 0x408AFC3D70A3D70A], [1 x i64] zeroinitializer }, %struct.anon.1 { [1 x double] [double 0xC0881547AE147AE1], [1 x i64] [i64 -1] }, %struct.anon.1 { [1 x double] [double -3.877800e+02], [1 x i64] [i64 -1] }, %struct.anon.1 { [1 x double] [double 3.546300e+02], [1 x i64] zeroinitializer }], align 16
@.str.22 = private unnamed_addr constant [30 x i8] c"simde_vld1_u64(test_vec[i].r)\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%lu == %lu)\0A\00", align 1
@test_simde_vcltz_s8.test_vec = internal constant [8 x %struct.anon.2] [%struct.anon.2 { [8 x i8] c"{\19+\FA[\0F\FC\B2", [8 x i8] c"\00\00\00\FF\00\00\FF\FF" }, %struct.anon.2 { [8 x i8] c"\09\BD\0E2\7F\9EzW", [8 x i8] c"\00\FF\00\00\00\FF\00\00" }, %struct.anon.2 { [8 x i8] c"\C5\D8\17\85\00Q\91\F5", [8 x i8] c"\FF\FF\00\FF\00\00\FF\FF" }, %struct.anon.2 { [8 x i8] c"N\88\D3ht\E1\A2\EF", [8 x i8] c"\00\FF\FF\00\00\FF\FF\FF" }, %struct.anon.2 { [8 x i8] c"\FA\CD\E9V\DC\E5\08\E5", [8 x i8] c"\FF\FF\FF\00\FF\FF\00\FF" }, %struct.anon.2 { [8 x i8] c"\A2\16\18!\B4\92xy", [8 x i8] c"\FF\00\00\00\FF\FF\00\00" }, %struct.anon.2 { [8 x i8] c"j\8F\FEj\E0\90_/", [8 x i8] c"\00\FF\FF\00\FF\FF\00\00" }, %struct.anon.2 { [8 x i8] c"\183\97\8C\149{\0E", [8 x i8] c"\00\00\FF\FF\00\00\00\00" }], align 16
@.str.24 = private unnamed_addr constant [29 x i8] c"simde_vld1_u8(test_vec[i].r)\00", align 1
@test_simde_vcltz_s16.test_vec = internal constant [8 x %struct.anon.3] [%struct.anon.3 { [4 x i16] [i16 -3899, i16 -2710, i16 -12036, i16 14864], [4 x i16] [i16 -1, i16 -1, i16 -1, i16 0] }, %struct.anon.3 { [4 x i16] [i16 15179, i16 -3300, i16 -24965, i16 -23761], [4 x i16] [i16 0, i16 -1, i16 -1, i16 -1] }, %struct.anon.3 { [4 x i16] [i16 27808, i16 -10552, i16 -3829, i16 -15215], [4 x i16] [i16 0, i16 -1, i16 -1, i16 -1] }, %struct.anon.3 { [4 x i16] [i16 -18422, i16 -27002, i16 16021, i16 23504], [4 x i16] [i16 -1, i16 -1, i16 0, i16 0] }, %struct.anon.3 { [4 x i16] [i16 14894, i16 10832, i16 24586, i16 21860], [4 x i16] zeroinitializer }, %struct.anon.3 { [4 x i16] [i16 -32613, i16 5704, i16 30494, i16 -16455], [4 x i16] [i16 -1, i16 0, i16 0, i16 -1] }, %struct.anon.3 { [4 x i16] [i16 -32285, i16 -4203, i16 9843, i16 32179], [4 x i16] [i16 -1, i16 -1, i16 0, i16 0] }, %struct.anon.3 { [4 x i16] [i16 14814, i16 29715, i16 -7305, i16 -23089], [4 x i16] [i16 0, i16 0, i16 -1, i16 -1] }], align 16
@.str.25 = private unnamed_addr constant [30 x i8] c"simde_vld1_u16(test_vec[i].r)\00", align 1
@test_simde_vcltz_s32.test_vec = internal constant [8 x %struct.anon.4] [%struct.anon.4 { [2 x i32] [i32 887751135, i32 -1880768565], [2 x i32] [i32 0, i32 -1] }, %struct.anon.4 { [2 x i32] [i32 1143275059, i32 -106841879], [2 x i32] [i32 0, i32 -1] }, %struct.anon.4 { [2 x i32] [i32 -1429312649, i32 192520880], [2 x i32] [i32 -1, i32 0] }, %struct.anon.4 { [2 x i32] [i32 -1228640489, i32 -1630219841], [2 x i32] [i32 -1, i32 -1] }, %struct.anon.4 { [2 x i32] [i32 -1630290221, i32 -1322403714], [2 x i32] [i32 -1, i32 -1] }, %struct.anon.4 { [2 x i32] [i32 -1594535498, i32 -2120641014], [2 x i32] [i32 -1, i32 -1] }, %struct.anon.4 { [2 x i32] [i32 -1322555391, i32 566076426], [2 x i32] [i32 -1, i32 0] }, %struct.anon.4 { [2 x i32] [i32 -757628653, i32 628206418], [2 x i32] [i32 -1, i32 0] }], align 16
@test_simde_vcltz_s64.test_vec = internal constant [8 x %struct.anon.5] [%struct.anon.5 { [1 x i64] [i64 -8326563804285590750], [1 x i64] [i64 -1] }, %struct.anon.5 { [1 x i64] [i64 -3208424567556038596], [1 x i64] [i64 -1] }, %struct.anon.5 { [1 x i64] [i64 2329024188526806682], [1 x i64] zeroinitializer }, %struct.anon.5 { [1 x i64] [i64 -8809616594128501407], [1 x i64] [i64 -1] }, %struct.anon.5 { [1 x i64] [i64 106393993243962263], [1 x i64] zeroinitializer }, %struct.anon.5 { [1 x i64] [i64 -6536608672518002276], [1 x i64] [i64 -1] }, %struct.anon.5 { [1 x i64] [i64 8384819676651960083], [1 x i64] zeroinitializer }, %struct.anon.5 { [1 x i64] [i64 9028095364871221859], [1 x i64] zeroinitializer }], align 16
@test_simde_vcltzq_f32.test_vec = internal constant [8 x %struct.anon.6] [%struct.anon.6 { [4 x float] [float 0xC07BA73340000000, float 0x408142F5C0000000, float 0xC0616EB860000000, float 0x408B85D700000000], [4 x i32] [i32 -1, i32 0, i32 -1, i32 0] }, %struct.anon.6 { [4 x float] [float 0xC080BCE140000000, float 0xC073AF8520000000, float 0xC07445EB80000000, float 0xC08AFD0A40000000], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] }, %struct.anon.6 { [4 x float] [float 0xC061D570A0000000, float 0xC07C83AE20000000, float 0x4074A2E140000000, float 0xC05FEF5C20000000], [4 x i32] [i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.6 { [4 x float] [float 0x4086AB0A40000000, float 0xC077EA8F60000000, float 0x408DFA2900000000, float 0xC0750EE140000000], [4 x i32] [i32 0, i32 -1, i32 0, i32 -1] }, %struct.anon.6 { [4 x float] [float 0x406F223D80000000, float 0x408AE770A0000000, float 0x404715C280000000, float 0x4089628F60000000], [4 x i32] zeroinitializer }, %struct.anon.6 { [4 x float] [float 0xC08A898520000000, float -3.365000e+02, float 0x4074273340000000, float 0xC07FF78520000000], [4 x i32] [i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.6 { [4 x float] [float 0xC05A5D70A0000000, float 0x408ACEA3E0000000, float 0x4070B999A0000000, float 0xC082D23D80000000], [4 x i32] [i32 -1, i32 0, i32 0, i32 -1] }, %struct.anon.6 { [4 x float] [float 0x408801D700000000, float 0xC087843D80000000, float 0xC08031EB80000000, float 0xC08511C280000000], [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1] }], align 16
@.str.26 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u32(test_vec[i].r)\00", align 1
@test_simde_vcltzq_f64.test_vec = internal constant [8 x %struct.anon.7] [%struct.anon.7 { [2 x double] [double 0xC0541147AE147AE1, double 3.268200e+02], [2 x i64] [i64 -1, i64 0] }, %struct.anon.7 { [2 x double] [double -4.894600e+02, double -4.576800e+02], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.7 { [2 x double] [double -4.414700e+02, double 2.140000e+00], [2 x i64] [i64 -1, i64 0] }, %struct.anon.7 { [2 x double] [double 0xC085A70A3D70A3D7, double 2.706500e+02], [2 x i64] [i64 -1, i64 0] }, %struct.anon.7 { [2 x double] [double 8.062500e+02, double 0x40860B1EB851EB85], [2 x i64] zeroinitializer }, %struct.anon.7 { [2 x double] [double -3.982200e+02, double -5.041500e+02], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.7 { [2 x double] [double 0x408DC370A3D70A3D, double 0xC081E970A3D70A3D], [2 x i64] [i64 0, i64 -1] }, %struct.anon.7 { [2 x double] [double -4.432400e+02, double 0x408AED3333333333], [2 x i64] [i64 -1, i64 0] }], align 16
@.str.27 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u64(test_vec[i].r)\00", align 1
@test_simde_vcltzq_s8.test_vec = internal constant [8 x %struct.anon.8] [%struct.anon.8 { [16 x i8] c"x?+\FE\B1/y\07;\7F\AF\EC\C3\E2Z<", [16 x i8] c"\00\00\00\FF\FF\00\00\00\00\00\FF\FF\FF\FF\00\00" }, %struct.anon.8 { [16 x i8] c"\A9 h\B2\16U\A3\9F\1A\F9\9E8\D8\0BgQ", [16 x i8] c"\FF\00\00\FF\00\00\FF\FF\00\FF\FF\00\FF\00\00\00" }, %struct.anon.8 { [16 x i8] c"J\92O\FB\C1\C9\02\FCH\B1\E9\0B\93CH<", [16 x i8] c"\00\FF\00\FF\FF\FF\00\FF\00\FF\FF\00\FF\00\00\00" }, %struct.anon.8 { [16 x i8] c"c\B0\EEy\05\91\19\1F\8A\B7Wc\C3\BF\B4\0D", [16 x i8] c"\00\FF\FF\00\00\FF\00\00\FF\FF\00\00\FF\FF\FF\00" }, %struct.anon.8 { [16 x i8] c"Q\03\09\13\CC\0B\0F\15\BD\F8 P<h\8D\9F", [16 x i8] c"\00\00\00\00\FF\00\00\00\FF\FF\00\00\00\00\FF\FF" }, %struct.anon.8 { [16 x i8] c"\18{\19\1D\0D2=\97\E9\94\FA\ACS\AE\BA\A5", [16 x i8] c"\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\00\FF\FF\FF" }, %struct.anon.8 { [16 x i8] c"\B2\C3\B8~\CE\C7\93\8B\C0\B4\DC\FC\1Ci\9B5", [16 x i8] c"\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\00\00\FF\00" }, %struct.anon.8 { [16 x i8] c"\E4\B4R\F1\E6\8F\89\D0$\83|w26\1C\E4", [16 x i8] c"\FF\FF\00\FF\FF\FF\FF\FF\00\FF\00\00\00\00\00\FF" }], align 16
@.str.28 = private unnamed_addr constant [30 x i8] c"simde_vld1q_u8(test_vec[i].r)\00", align 1
@test_simde_vcltzq_s16.test_vec = internal constant [8 x %struct.anon.9] [%struct.anon.9 { [8 x i16] [i16 -30173, i16 19444, i16 -28978, i16 -15017, i16 17496, i16 7636, i16 -12918, i16 3110], [8 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 0] }, %struct.anon.9 { [8 x i16] [i16 -17031, i16 23923, i16 -15294, i16 828, i16 7152, i16 -19786, i16 22798, i16 12797], [8 x i16] [i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 0] }, %struct.anon.9 { [8 x i16] [i16 -3613, i16 -20099, i16 -11137, i16 -10378, i16 19224, i16 -23820, i16 6936, i16 -27986], [8 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 -1] }, %struct.anon.9 { [8 x i16] [i16 8920, i16 6895, i16 11238, i16 -10723, i16 -11450, i16 21896, i16 -31188, i16 3974], [8 x i16] [i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 0] }, %struct.anon.9 { [8 x i16] [i16 887, i16 -2111, i16 14295, i16 -4146, i16 -15486, i16 -25711, i16 16606, i16 -18899], [8 x i16] [i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1] }, %struct.anon.9 { [8 x i16] [i16 7266, i16 18640, i16 -4792, i16 -29153, i16 -22591, i16 -4637, i16 27181, i16 -23043], [8 x i16] [i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1] }, %struct.anon.9 { [8 x i16] [i16 -16787, i16 17820, i16 27381, i16 30772, i16 -14803, i16 2835, i16 16390, i16 26817], [8 x i16] [i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0] }, %struct.anon.9 { [8 x i16] [i16 -28324, i16 -23376, i16 -12417, i16 16435, i16 5751, i16 -23507, i16 10880, i16 -4535], [8 x i16] [i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1] }], align 16
@.str.29 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u16(test_vec[i].r)\00", align 1
@test_simde_vcltzq_s32.test_vec = internal constant [8 x %struct.anon.10] [%struct.anon.10 { [4 x i32] [i32 104066264, i32 1548859983, i32 -983940808, i32 1490571068], [4 x i32] [i32 0, i32 0, i32 -1, i32 0] }, %struct.anon.10 { [4 x i32] [i32 -222302292, i32 -1438018326, i32 756148753, i32 -1515649587], [4 x i32] [i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.10 { [4 x i32] [i32 1085070577, i32 -811729513, i32 2073425726, i32 -221024954], [4 x i32] [i32 0, i32 -1, i32 0, i32 -1] }, %struct.anon.10 { [4 x i32] [i32 1189450332, i32 955264550, i32 -446365160, i32 -108392953], [4 x i32] [i32 0, i32 0, i32 -1, i32 -1] }, %struct.anon.10 { [4 x i32] [i32 -2126956822, i32 1917965875, i32 351135437, i32 -1358512045], [4 x i32] [i32 -1, i32 0, i32 0, i32 -1] }, %struct.anon.10 { [4 x i32] [i32 2046159698, i32 833742105, i32 -283765017, i32 250126628], [4 x i32] [i32 0, i32 0, i32 -1, i32 0] }, %struct.anon.10 { [4 x i32] [i32 193995223, i32 -981605896, i32 450456263, i32 2093604906], [4 x i32] [i32 0, i32 -1, i32 0, i32 0] }, %struct.anon.10 { [4 x i32] [i32 -436879669, i32 -1961449821, i32 -528863812, i32 -1511038258], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] }], align 16
@test_simde_vcltzq_s64.test_vec = internal constant [8 x %struct.anon.11] [%struct.anon.11 { [2 x i64] [i64 -4367700174058313457, i64 -7730538683494878666], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.11 { [2 x i64] [i64 -4741576537993497024, i64 -8245872675751211559], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.11 { [2 x i64] [i64 7856281297696352367, i64 -4329458411663726768], [2 x i64] [i64 0, i64 -1] }, %struct.anon.11 { [2 x i64] [i64 -2313814442133127710, i64 -2844345970244083077], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.11 { [2 x i64] [i64 -5627489208313822654, i64 7589113511113448203], [2 x i64] [i64 -1, i64 0] }, %struct.anon.11 { [2 x i64] [i64 -552410599904063889, i64 -4948198726902374637], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.11 { [2 x i64] [i64 -6932135403521281863, i64 3956552763142165751], [2 x i64] [i64 -1, i64 0] }, %struct.anon.11 { [2 x i64] [i64 -378018798689814963, i64 -2029775254167571808], [2 x i64] [i64 -1, i64 -1] }], align 16
@test_simde_vcltzd_f64.test_vec = internal constant [8 x %struct.anon.12] [%struct.anon.12 { double 0x408CB628F5C28F5C, i64 0 }, %struct.anon.12 { double -7.064400e+02, i64 -1 }, %struct.anon.12 { double -1.087300e+02, i64 -1 }, %struct.anon.12 { double 0xC08D7F1EB851EB85, i64 -1 }, %struct.anon.12 { double 6.540100e+02, i64 0 }, %struct.anon.12 { double 6.898000e+02, i64 0 }, %struct.anon.12 { double 1.013700e+02, i64 0 }, %struct.anon.12 { double 7.634600e+02, i64 0 }], align 16
@.str.30 = private unnamed_addr constant [14 x i8] c"test_vec[i].r\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"%s:%d: assertion failed: %s == %s (%lu == %lu)\0A\00", align 1
@test_simde_vcltzd_s64.test_vec = internal constant [8 x %struct.anon.13] [%struct.anon.13 { i64 4895556179217159423, i64 0 }, %struct.anon.13 { i64 -5958045163452274988, i64 -1 }, %struct.anon.13 { i64 -7404907283308324771, i64 -1 }, %struct.anon.13 { i64 -5357149720396651297, i64 -1 }, %struct.anon.13 { i64 3626495416649243816, i64 0 }, %struct.anon.13 { i64 2771735539879904332, i64 0 }, %struct.anon.13 { i64 -8777399505245099129, i64 -1 }, %struct.anon.13 { i64 -7459753252293551091, i64 -1 }], align 16
@test_simde_vcltzs_f32.test_vec = internal constant [8 x %struct.anon.14] [%struct.anon.14 { float 0x407A2CCCC0000000, i32 0 }, %struct.anon.14 { float 0xC04351EB80000000, i32 -1 }, %struct.anon.14 { float 0x408A1CF5C0000000, i32 0 }, %struct.anon.14 { float 0xC06A5570A0000000, i32 -1 }, %struct.anon.14 { float 0x40878DAE20000000, i32 0 }, %struct.anon.14 { float 0x4082CA2900000000, i32 0 }, %struct.anon.14 { float 0xC07B78F5C0000000, i32 -1 }, %struct.anon.14 { float 0x4068028F60000000, i32 0 }], align 16
@.str.32 = private unnamed_addr constant [46 x i8] c"%s:%d: assertion failed: %s == %s (%u == %u)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #15
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 15)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 15
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #15
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [15 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
  %func = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %func, align 16, !tbaa !13
  %call2 = call i32 %3()
  store i32 %call2, ptr %res, align 4, !tbaa !5
  %4 = load i32, ptr %res, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval1, align 4, !tbaa !5
  %5 = load ptr, ptr @stdout, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %add = add i64 %6, 1
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [15 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [15 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #15
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltz_f32() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x float>, align 8
  %coerce = alloca <2 x float>, align 8
  %r = alloca <2 x i32>, align 8
  %coerce2 = alloca <2 x float>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  %coerce9 = alloca <2 x i32>, align 8
  %coerce10 = alloca <2 x i32>, align 8
  %coerce11 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_vcltz_f32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x float], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_f32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x float>, ptr %coerce, align 8, !tbaa !16
  store <2 x float> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  %3 = load <2 x float>, ptr %a, align 8, !tbaa !16
  store <2 x float> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_vcltz_f32(double noundef %4)
  store double %call3, ptr %coerce4, align 8
  %5 = load <2 x i32>, ptr %coerce4, align 8, !tbaa !16
  store <2 x i32> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_vcltz_f32.test_vec, i64 0, i64 %7
  %r6 = getelementptr inbounds %struct.anon.0, ptr %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [2 x i32], ptr %r6, i64 0, i64 0
  %call8 = call double @simde_vld1_u32(ptr noundef %arraydecay7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <2 x i32>, ptr %coerce9, align 8, !tbaa !16
  store <2 x i32> %6, ptr %coerce10, align 8, !tbaa !16
  %9 = load double, ptr %coerce10, align 8
  store <2 x i32> %8, ptr %coerce11, align 8, !tbaa !16
  %10 = load double, ptr %coerce11, align 8
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u32x2_(double noundef %9, double noundef %10, ptr noundef @.str.18, i32 noundef 35, ptr noundef @.str.19, ptr noundef @.str.20)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltz_f64() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <1 x double>, align 8
  %r = alloca <1 x i64>, align 8
  %indirect-arg-temp = alloca <1 x double>, align 8
  %coerce = alloca <1 x i64>, align 8
  %coerce7 = alloca <1 x i64>, align 8
  %coerce8 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup12

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_vcltz_f64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x double], ptr %a1, i64 0, i64 0
  %call = call <1 x double> @simde_vld1_f64(ptr noundef %arraydecay)
  store <1 x double> %call, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  %2 = load <1 x double>, ptr %a, align 8, !tbaa !16
  store <1 x double> %2, ptr %indirect-arg-temp, align 8, !tbaa !16
  %call2 = call double @simde_vcltz_f64(ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp)
  store double %call2, ptr %coerce, align 8
  %3 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %3, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %4 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_vcltz_f64.test_vec, i64 0, i64 %5
  %r4 = getelementptr inbounds %struct.anon.1, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %r4, i64 0, i64 0
  %call6 = call double @simde_vld1_u64(ptr noundef %arraydecay5)
  store double %call6, ptr %coerce7, align 8
  %6 = load <1 x i64>, ptr %coerce7, align 8, !tbaa !16
  store <1 x i64> %4, ptr %coerce8, align 8, !tbaa !16
  %7 = load double, ptr %coerce8, align 8
  store <1 x i64> %6, ptr %coerce9, align 8, !tbaa !16
  %8 = load double, ptr %coerce9, align 8
  %call10 = call i32 @simde_test_arm_neon_assert_equal_u64x1_(double noundef %7, double noundef %8, ptr noundef @.str.18, i32 noundef 69, ptr noundef @.str.19, ptr noundef @.str.22)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %10 = load i32, ptr %retval, align 4
  ret i32 %10

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltz_s8() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %r = alloca <8 x i8>, align 8
  %coerce2 = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  %coerce9 = alloca <8 x i8>, align 8
  %coerce10 = alloca <8 x i8>, align 8
  %coerce11 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_vcltz_s8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_s8(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  %3 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_vcltz_s8(double noundef %4)
  store double %call3, ptr %coerce4, align 8
  %5 = load <8 x i8>, ptr %coerce4, align 8, !tbaa !16
  store <8 x i8> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_vcltz_s8.test_vec, i64 0, i64 %7
  %r6 = getelementptr inbounds %struct.anon.2, ptr %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [8 x i8], ptr %r6, i64 0, i64 0
  %call8 = call double @simde_vld1_u8(ptr noundef %arraydecay7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <8 x i8>, ptr %coerce9, align 8, !tbaa !16
  store <8 x i8> %6, ptr %coerce10, align 8, !tbaa !16
  %9 = load double, ptr %coerce10, align 8
  store <8 x i8> %8, ptr %coerce11, align 8, !tbaa !16
  %10 = load double, ptr %coerce11, align 8
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u8x8_(double noundef %9, double noundef %10, ptr noundef @.str.18, i32 noundef 103, ptr noundef @.str.19, ptr noundef @.str.24)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltz_s16() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %r = alloca <4 x i16>, align 8
  %coerce2 = alloca <4 x i16>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  %coerce9 = alloca <4 x i16>, align 8
  %coerce10 = alloca <4 x i16>, align 8
  %coerce11 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_vcltz_s16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.3, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_s16(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  %3 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  store <4 x i16> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_vcltz_s16(double noundef %4)
  store double %call3, ptr %coerce4, align 8
  %5 = load <4 x i16>, ptr %coerce4, align 8, !tbaa !16
  store <4 x i16> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_vcltz_s16.test_vec, i64 0, i64 %7
  %r6 = getelementptr inbounds %struct.anon.3, ptr %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [4 x i16], ptr %r6, i64 0, i64 0
  %call8 = call double @simde_vld1_u16(ptr noundef %arraydecay7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <4 x i16>, ptr %coerce9, align 8, !tbaa !16
  store <4 x i16> %6, ptr %coerce10, align 8, !tbaa !16
  %9 = load double, ptr %coerce10, align 8
  store <4 x i16> %8, ptr %coerce11, align 8, !tbaa !16
  %10 = load double, ptr %coerce11, align 8
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u16x4_(double noundef %9, double noundef %10, ptr noundef @.str.18, i32 noundef 137, ptr noundef @.str.19, ptr noundef @.str.25)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltz_s32() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %r = alloca <2 x i32>, align 8
  %coerce2 = alloca <2 x i32>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  %coerce9 = alloca <2 x i32>, align 8
  %coerce10 = alloca <2 x i32>, align 8
  %coerce11 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.4], ptr @test_simde_vcltz_s32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.4, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_s32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  %3 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  store <2 x i32> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_vcltz_s32(double noundef %4)
  store double %call3, ptr %coerce4, align 8
  %5 = load <2 x i32>, ptr %coerce4, align 8, !tbaa !16
  store <2 x i32> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds [8 x %struct.anon.4], ptr @test_simde_vcltz_s32.test_vec, i64 0, i64 %7
  %r6 = getelementptr inbounds %struct.anon.4, ptr %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [2 x i32], ptr %r6, i64 0, i64 0
  %call8 = call double @simde_vld1_u32(ptr noundef %arraydecay7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <2 x i32>, ptr %coerce9, align 8, !tbaa !16
  store <2 x i32> %6, ptr %coerce10, align 8, !tbaa !16
  %9 = load double, ptr %coerce10, align 8
  store <2 x i32> %8, ptr %coerce11, align 8, !tbaa !16
  %10 = load double, ptr %coerce11, align 8
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u32x2_(double noundef %9, double noundef %10, ptr noundef @.str.18, i32 noundef 171, ptr noundef @.str.19, ptr noundef @.str.20)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltz_s64() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <1 x i64>, align 8
  %coerce = alloca <1 x i64>, align 8
  %r = alloca <1 x i64>, align 8
  %coerce2 = alloca <1 x i64>, align 8
  %coerce4 = alloca <1 x i64>, align 8
  %coerce9 = alloca <1 x i64>, align 8
  %coerce10 = alloca <1 x i64>, align 8
  %coerce11 = alloca <1 x i64>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.5], ptr @test_simde_vcltz_s64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.5, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x i64], ptr %a1, i64 0, i64 0
  %call = call double @simde_vld1_s64(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  %3 = load <1 x i64>, ptr %a, align 8, !tbaa !16
  store <1 x i64> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_vcltz_s64(double noundef %4)
  store double %call3, ptr %coerce4, align 8
  %5 = load <1 x i64>, ptr %coerce4, align 8, !tbaa !16
  store <1 x i64> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds [8 x %struct.anon.5], ptr @test_simde_vcltz_s64.test_vec, i64 0, i64 %7
  %r6 = getelementptr inbounds %struct.anon.5, ptr %arrayidx5, i32 0, i32 1
  %arraydecay7 = getelementptr inbounds [1 x i64], ptr %r6, i64 0, i64 0
  %call8 = call double @simde_vld1_u64(ptr noundef %arraydecay7)
  store double %call8, ptr %coerce9, align 8
  %8 = load <1 x i64>, ptr %coerce9, align 8, !tbaa !16
  store <1 x i64> %6, ptr %coerce10, align 8, !tbaa !16
  %9 = load double, ptr %coerce10, align 8
  store <1 x i64> %8, ptr %coerce11, align 8, !tbaa !16
  %10 = load double, ptr %coerce11, align 8
  %call12 = call i32 @simde_test_arm_neon_assert_equal_u64x1_(double noundef %9, double noundef %10, ptr noundef @.str.18, i32 noundef 205, ptr noundef @.str.19, ptr noundef @.str.22)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzq_f32() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.6], ptr @test_simde_vcltzq_f32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.6, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %a1, i64 0, i64 0
  %call = call <4 x float> @simde_vld1q_f32(ptr noundef %arraydecay)
  store <4 x float> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  %2 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %call2 = call <4 x i32> @simde_vcltzq_f32(<4 x float> noundef %2)
  store <4 x i32> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.6], ptr @test_simde_vcltzq_f32.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.6, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [4 x i32], ptr %r4, i64 0, i64 0
  %call6 = call <4 x i32> @simde_vld1q_u32(ptr noundef %arraydecay5)
  %call7 = call i32 @simde_test_arm_neon_assert_equal_u32x4_(<4 x i32> noundef %3, <4 x i32> noundef %call6, ptr noundef @.str.18, i32 noundef 238, ptr noundef @.str.19, ptr noundef @.str.26)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup9
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzq_f64() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.7], ptr @test_simde_vcltzq_f64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.7, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x double], ptr %a1, i64 0, i64 0
  %call = call <2 x double> @simde_vld1q_f64(ptr noundef %arraydecay)
  store <2 x double> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  %2 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_vcltzq_f64(<2 x double> noundef %2)
  store <2 x i64> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.7], ptr @test_simde_vcltzq_f64.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.7, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [2 x i64], ptr %r4, i64 0, i64 0
  %call6 = call <2 x i64> @simde_vld1q_u64(ptr noundef %arraydecay5)
  %call7 = call i32 @simde_test_arm_neon_assert_equal_u64x2_(<2 x i64> noundef %3, <2 x i64> noundef %call6, ptr noundef @.str.18, i32 noundef 272, ptr noundef @.str.19, ptr noundef @.str.27)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup9
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzq_s8() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <16 x i8>, align 16
  %r = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.8], ptr @test_simde_vcltzq_s8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.8, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call <16 x i8> @simde_vld1q_s8(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  %2 = load <16 x i8>, ptr %a, align 16, !tbaa !16
  %call2 = call <16 x i8> @simde_vcltzq_s8(<16 x i8> noundef %2)
  store <16 x i8> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.8], ptr @test_simde_vcltzq_s8.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.8, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %r4, i64 0, i64 0
  %call6 = call <16 x i8> @simde_vld1q_u8(ptr noundef %arraydecay5)
  %call7 = call i32 @simde_test_arm_neon_assert_equal_u8x16_(<16 x i8> noundef %3, <16 x i8> noundef %call6, ptr noundef @.str.18, i32 noundef 322, ptr noundef @.str.19, ptr noundef @.str.28)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup9
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzq_s16() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i16>, align 16
  %r = alloca <8 x i16>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.9], ptr @test_simde_vcltzq_s16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.9, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  %2 = load <8 x i16>, ptr %a, align 16, !tbaa !16
  %call2 = call <8 x i16> @simde_vcltzq_s16(<8 x i16> noundef %2)
  store <8 x i16> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.9], ptr @test_simde_vcltzq_s16.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.9, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [8 x i16], ptr %r4, i64 0, i64 0
  %call6 = call <8 x i16> @simde_vld1q_u16(ptr noundef %arraydecay5)
  %call7 = call i32 @simde_test_arm_neon_assert_equal_u16x8_(<8 x i16> noundef %3, <8 x i16> noundef %call6, ptr noundef @.str.18, i32 noundef 356, ptr noundef @.str.19, ptr noundef @.str.29)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup9
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzq_s32() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i32>, align 16
  %r = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.10], ptr @test_simde_vcltzq_s32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.10, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  %2 = load <4 x i32>, ptr %a, align 16, !tbaa !16
  %call2 = call <4 x i32> @simde_vcltzq_s32(<4 x i32> noundef %2)
  store <4 x i32> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.10], ptr @test_simde_vcltzq_s32.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.10, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [4 x i32], ptr %r4, i64 0, i64 0
  %call6 = call <4 x i32> @simde_vld1q_u32(ptr noundef %arraydecay5)
  %call7 = call i32 @simde_test_arm_neon_assert_equal_u32x4_(<4 x i32> noundef %3, <4 x i32> noundef %call6, ptr noundef @.str.18, i32 noundef 389, ptr noundef @.str.19, ptr noundef @.str.26)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup9
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzq_s64() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup9

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.11], ptr @test_simde_vcltzq_s64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.11, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_vld1q_s64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  %2 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_vcltzq_s64(<2 x i64> noundef %2)
  store <2 x i64> %call2, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.11], ptr @test_simde_vcltzq_s64.test_vec, i64 0, i64 %4
  %r4 = getelementptr inbounds %struct.anon.11, ptr %arrayidx3, i32 0, i32 1
  %arraydecay5 = getelementptr inbounds [2 x i64], ptr %r4, i64 0, i64 0
  %call6 = call <2 x i64> @simde_vld1q_u64(ptr noundef %arraydecay5)
  %call7 = call i32 @simde_test_arm_neon_assert_equal_u64x2_(<2 x i64> noundef %3, <2 x i64> noundef %call6, ptr noundef @.str.18, i32 noundef 422, ptr noundef @.str.19, ptr noundef @.str.27)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup9:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest10 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest10, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup9
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup9
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzd_f64() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup4

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.12], ptr @test_simde_vcltzd_f64.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.12, ptr %arrayidx, i32 0, i32 0
  %2 = load double, ptr %a, align 16, !tbaa !17
  %call = call i64 @simde_vcltzd_f64(double noundef %2)
  store i64 %call, ptr %r, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %r, align 8, !tbaa !11
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.12], ptr @test_simde_vcltzd_f64.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.12, ptr %arrayidx1, i32 0, i32 1
  %5 = load i64, ptr %r2, align 8, !tbaa !20
  %call3 = call i32 @simde_assert_equal_u64_(i64 noundef %3, i64 noundef %5, ptr noundef @.str.18, i32 noundef 499, ptr noundef @.str.19, ptr noundef @.str.30)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %6, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup4:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest5 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest5, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup4
  %7 = load i32, ptr %retval, align 4
  ret i32 %7

unreachable:                                      ; preds = %cleanup4
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzd_s64() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup4

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.13], ptr @test_simde_vcltzd_s64.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 0
  %2 = load i64, ptr %a, align 16, !tbaa !21
  %call = call i64 @simde_vcltzd_s64(i64 noundef %2)
  store i64 %call, ptr %r, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %r, align 8, !tbaa !11
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.13], ptr @test_simde_vcltzd_s64.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.13, ptr %arrayidx1, i32 0, i32 1
  %5 = load i64, ptr %r2, align 8, !tbaa !23
  %call3 = call i32 @simde_assert_equal_u64_(i64 noundef %3, i64 noundef %5, ptr noundef @.str.18, i32 noundef 455, ptr noundef @.str.19, ptr noundef @.str.30)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %6, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup4:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest5 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest5, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup4
  %7 = load i32, ptr %retval, align 4
  ret i32 %7

unreachable:                                      ; preds = %cleanup4
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vcltzs_f32() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %r = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup4

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #15
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.14], ptr @test_simde_vcltzs_f32.test_vec, i64 0, i64 %1
  %a = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0
  %2 = load float, ptr %a, align 8, !tbaa !24
  %call = call i32 @simde_vcltzs_f32(float noundef %2)
  store i32 %call, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4, !tbaa !5
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds [8 x %struct.anon.14], ptr @test_simde_vcltzs_f32.test_vec, i64 0, i64 %4
  %r2 = getelementptr inbounds %struct.anon.14, ptr %arrayidx1, i32 0, i32 1
  %5 = load i32, ptr %r2, align 4, !tbaa !27
  %call3 = call i32 @simde_assert_equal_u32_(i32 noundef %3, i32 noundef %5, ptr noundef @.str.18, i32 noundef 543, ptr noundef @.str.19, ptr noundef @.str.30)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %6, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup4:                                         ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest5 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest5, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup4
  %7 = load i32, ptr %retval, align 4
  ret i32 %7

unreachable:                                      ; preds = %cleanup4
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_f32(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <2 x float>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float32x2_private, align 8
  %coerce = alloca <2 x float>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_float32x2_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <2 x float>, ptr %coerce, align 8, !tbaa !16
  store <2 x float> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vcltz_f32(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a = alloca <2 x float>, align 8
  %a.addr = alloca <2 x float>, align 8
  %a_ = alloca %union.simde_float32x2_private, align 8
  %coerce = alloca <2 x float>, align 8
  %r_ = alloca %union.simde_uint32x2_private, align 8
  %coerce4 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x float>, ptr %a, align 8, !tbaa !16
  store <2 x float> %a1, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <2 x float>, ptr %a.addr, align 8, !tbaa !16
  store <2 x float> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_float32x2_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %2 = load <2 x float>, ptr %a_, align 8, !tbaa !16
  %cmp = fcmp olt <2 x float> %2, zeroinitializer
  %sext = sext <2 x i1> %cmp to <2 x i32>
  store <2 x i32> %sext, ptr %r_, align 8, !tbaa !16
  %coerce.dive2 = getelementptr inbounds %union.simde_uint32x2_private, ptr %r_, i32 0, i32 0
  %3 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_uint32x2_from_private(double %3) #16
  store double %call3, ptr %coerce4, align 8
  %4 = load <2 x i32>, ptr %coerce4, align 8, !tbaa !16
  store <2 x i32> %4, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u32x2_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <2 x i32>, align 8
  %b = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %b.addr = alloca <2 x i32>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i32], align 4
  %b_ = alloca [2 x i32], align 4
  %coerce = alloca <2 x i32>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x i32>, ptr %b, align 8, !tbaa !16
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %b2, ptr %b.addr, align 8, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #15
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_u32(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %2 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !16
  store <2 x i32> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_u32(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu32_(i64 noundef 2, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u32(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint32x2_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_float32x2_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <2 x float>, align 8
  %value = alloca %union.simde_float32x2_private, align 8
  %r = alloca <2 x float>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x float>, ptr %r, align 8, !tbaa !16
  store <2 x float> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_float32x2_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_float32x2_private, align 8
  %value = alloca <2 x float>, align 8
  %value.addr = alloca <2 x float>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <2 x float>, ptr %value, align 8, !tbaa !16
  store <2 x float> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint32x2_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value = alloca %union.simde_uint32x2_private, align 8
  %r = alloca <2 x i32>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  store <2 x i32> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_u32(ptr noundef %ptr, double noundef %val.coerce) #5 {
entry:
  %val = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i32>, align 8
  %val_ = alloca %union.simde_uint32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <2 x i32>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i32> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #15
  %0 = load <2 x i32>, ptr %val.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint32x2_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu32_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %5
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i32, ptr %7, i64 %8
  %9 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %6, %9
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i32, ptr %16, i64 %17
  %18 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i32, ptr %19, i64 %20
  %21 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.21, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint32x2_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_uint32x2_private, align 8
  %value = alloca <2 x i32>, align 8
  %value.addr = alloca <2 x i32>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <2 x i32>, ptr %value, align 8, !tbaa !16
  store <2 x i32> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #15
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1 = load ptr, ptr %format.addr, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call i32 @vfprintf(ptr noundef %0, ptr noundef %1, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call3 = call i32 @fflush(ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #15
  ret void
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal <1 x double> @simde_vld1_f64(ptr noundef %ptr) #9 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float64x1_private, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %0, i64 8, i1 false)
  %call = call <1 x double> @simde_float64x1_from_private(ptr noundef byval(%union.simde_float64x1_private) align 8 %r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  ret <1 x double> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vcltz_f64(ptr noundef byval(<1 x double>) align 8 %0) #5 {
entry:
  %retval = alloca <1 x i64>, align 8
  %a.addr = alloca <1 x double>, align 8
  %a_ = alloca %union.simde_float64x1_private, align 8
  %indirect-arg-temp = alloca <1 x double>, align 8
  %r_ = alloca %union.simde_uint64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  %a = load <1 x double>, ptr %0, align 8, !tbaa !16
  store <1 x double> %a, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %1 = load <1 x double>, ptr %a.addr, align 8, !tbaa !16
  store <1 x double> %1, ptr %indirect-arg-temp, align 8, !tbaa !16
  call void @simde_float64x1_to_private(ptr sret(%union.simde_float64x1_private) align 8 %a_, ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %2 = load <1 x double>, ptr %a_, align 8, !tbaa !16
  %cmp = fcmp olt <1 x double> %2, zeroinitializer
  %sext = sext <1 x i1> %cmp to <1 x i64>
  store <1 x i64> %sext, ptr %r_, align 8, !tbaa !16
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %r_, i32 0, i32 0
  %3 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint64x1_from_private(double %3) #16
  store double %call, ptr %coerce, align 8
  %4 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %4, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u64x1_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <1 x i64>, align 8
  %b = alloca <1 x i64>, align 8
  %a.addr = alloca <1 x i64>, align 8
  %b.addr = alloca <1 x i64>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [1 x i64], align 8
  %b_ = alloca [1 x i64], align 8
  %coerce = alloca <1 x i64>, align 8
  %coerce4 = alloca <1 x i64>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <1 x i64>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <1 x i64>, ptr %b, align 8, !tbaa !16
  store <1 x i64> %a1, ptr %a.addr, align 8, !tbaa !16
  store <1 x i64> %b2, ptr %b.addr, align 8, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #15
  %arraydecay = getelementptr inbounds [1 x i64], ptr %a_, i64 0, i64 0
  %0 = load <1 x i64>, ptr %a.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_u64(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %b_, i64 0, i64 0
  %2 = load <1 x i64>, ptr %b.addr, align 8, !tbaa !16
  store <1 x i64> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_u64(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [1 x i64], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu64_(i64 noundef 1, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u64(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <1 x i64>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint64x1_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind willreturn memory(argmem: readwrite) uwtable
define internal <1 x double> @simde_float64x1_from_private(ptr noundef byval(%union.simde_float64x1_private) align 8 %value) #10 {
entry:
  %r = alloca <1 x double>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <1 x double>, ptr %r, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  ret <1 x double> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @simde_float64x1_to_private(ptr noalias sret(%union.simde_float64x1_private) align 8 %agg.result, ptr noundef byval(<1 x double>) align 8 %0) #11 {
entry:
  %value.addr = alloca <1 x double>, align 8
  %value = load <1 x double>, ptr %0, align 8, !tbaa !16
  store <1 x double> %value, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.result, ptr align 8 %value.addr, i64 8, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint64x1_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <1 x i64>, align 8
  %value = alloca %union.simde_uint64x1_private, align 8
  %r = alloca <1 x i64>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  store <1 x i64> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_u64(ptr noundef %ptr, double noundef %val.coerce) #5 {
entry:
  %val = alloca <1 x i64>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <1 x i64>, align 8
  %val_ = alloca %union.simde_uint64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <1 x i64>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <1 x i64> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #15
  %0 = load <1 x i64>, ptr %val.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint64x1_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu64_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %5
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !11
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i64, ptr %7, i64 %8
  %9 = load i64, ptr %arrayidx1, align 8, !tbaa !11
  %cmp2 = icmp ne i64 %6, %9
  %lnot = xor i1 %cmp2, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds i64, ptr %16, i64 %17
  %18 = load i64, ptr %arrayidx4, align 8, !tbaa !11
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds i64, ptr %19, i64 %20
  %21 = load i64, ptr %arrayidx5, align 8, !tbaa !11
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.23, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %18, i64 noundef %21)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint64x1_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_uint64x1_private, align 8
  %value = alloca <1 x i64>, align 8
  %value.addr = alloca <1 x i64>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <1 x i64>, ptr %value, align 8, !tbaa !16
  store <1 x i64> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s8(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int8x8_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vcltz_s8(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %coerce2 = alloca <8 x i8>, align 8
  %coerce3 = alloca <8 x i8>, align 8
  %coerce5 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_vshr_n_s8(double noundef %1, i32 noundef 7)
  store double %call, ptr %coerce2, align 8
  %2 = load <8 x i8>, ptr %coerce2, align 8, !tbaa !16
  store <8 x i8> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_vreinterpret_u8_s8(double noundef %3)
  store double %call4, ptr %coerce5, align 8
  %4 = load <8 x i8>, ptr %coerce5, align 8, !tbaa !16
  store <8 x i8> %4, ptr %retval, align 8
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u8x8_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <8 x i8>, align 8
  %b = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %b.addr = alloca <8 x i8>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i8], align 1
  %b_ = alloca [8 x i8], align 1
  %coerce = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <8 x i8>, ptr %b, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %b2, ptr %b.addr, align 8, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #15
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_u8(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %2 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !16
  store <8 x i8> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_u8(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu8_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u8(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint8x8_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int8x8_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_int8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vreinterpret_u8_s8(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %a_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int8x8_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %a_, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %union.simde_uint8x8_private, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_uint8x8_from_private(double %2) #16
  store double %call3, ptr %coerce4, align 8
  %3 = load <8 x i8>, ptr %coerce4, align 8, !tbaa !16
  store <8 x i8> %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %4 = load double, ptr %retval, align 8
  ret double %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vshr_n_s8(double noundef %a.coerce, i32 noundef %n) #5 {
entry:
  %retval = alloca <8 x i8>, align 8
  %a = alloca <8 x i8>, align 8
  %a.addr = alloca <8 x i8>, align 8
  %n.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int8x8_private, align 8
  %a_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  %n_ = alloca i32, align 4
  %coerce4 = alloca <8 x i8>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <8 x i8>, ptr %a, align 8, !tbaa !16
  store <8 x i8> %a1, ptr %a.addr, align 8, !tbaa !16
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int8x8_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_) #15
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 7, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %n_, align 4, !tbaa !5
  %4 = load <8 x i8>, ptr %a_, align 8, !tbaa !16
  %5 = load i32, ptr %n_, align 4, !tbaa !5
  %splat.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %splat.splat = shufflevector <8 x i32> %splat.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %sh_prom = trunc <8 x i32> %splat.splat to <8 x i8>
  %shr = ashr <8 x i8> %4, %sh_prom
  store <8 x i8> %shr, ptr %r_, align 8, !tbaa !16
  %coerce.dive2 = getelementptr inbounds %union.simde_int8x8_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_int8x8_from_private(double %6) #16
  store double %call3, ptr %coerce4, align 8
  %7 = load <8 x i8>, ptr %coerce4, align 8, !tbaa !16
  store <8 x i8> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int8x8_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_int8x8_private, align 8
  %value = alloca <8 x i8>, align 8
  %value.addr = alloca <8 x i8>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <8 x i8>, ptr %value, align 8, !tbaa !16
  store <8 x i8> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint8x8_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_uint8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_u8(ptr noundef %ptr, double noundef %val.coerce) #5 {
entry:
  %val = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i8>, align 8
  %val_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <8 x i8>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i8> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #15
  %0 = load <8 x i8>, ptr %val.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint8x8_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu8_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !16
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx1, align 1, !tbaa !16
  %conv2 = zext i8 %9 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds i8, ptr %16, i64 %17
  %18 = load i8, ptr %arrayidx7, align 1, !tbaa !16
  %conv8 = zext i8 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i8, ptr %arrayidx9, align 1, !tbaa !16
  %conv10 = zext i8 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.21, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint8x8_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_uint8x8_private, align 8
  %value = alloca <8 x i8>, align 8
  %value.addr = alloca <8 x i8>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <8 x i8>, ptr %value, align 8, !tbaa !16
  store <8 x i8> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s16(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 2 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int16x4_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vcltz_s16(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <4 x i16>, align 8
  %a = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %coerce2 = alloca <4 x i16>, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %coerce5 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !16
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_vshr_n_s16(double noundef %1, i32 noundef 15)
  store double %call, ptr %coerce2, align 8
  %2 = load <4 x i16>, ptr %coerce2, align 8, !tbaa !16
  store <4 x i16> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_vreinterpret_u16_s16(double noundef %3)
  store double %call4, ptr %coerce5, align 8
  %4 = load <4 x i16>, ptr %coerce5, align 8, !tbaa !16
  store <4 x i16> %4, ptr %retval, align 8
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u16x4_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <4 x i16>, align 8
  %b = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %b.addr = alloca <4 x i16>, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i16], align 2
  %b_ = alloca [4 x i16], align 2
  %coerce = alloca <4 x i16>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <4 x i16>, ptr %b, align 8, !tbaa !16
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %b2, ptr %b.addr, align 8, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #15
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_u16(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %2 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !16
  store <4 x i16> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_u16(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu16_(i64 noundef 4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u16(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 2 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint16x4_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int16x4_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value = alloca %union.simde_int16x4_private, align 8
  %r = alloca <4 x i16>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  store <4 x i16> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vreinterpret_u16_s16(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <4 x i16>, align 8
  %a = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %r_ = alloca %union.simde_uint16x4_private, align 8
  %a_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  %coerce4 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int16x4_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %a_, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %union.simde_uint16x4_private, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_uint16x4_from_private(double %2) #16
  store double %call3, ptr %coerce4, align 8
  %3 = load <4 x i16>, ptr %coerce4, align 8, !tbaa !16
  store <4 x i16> %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %4 = load double, ptr %retval, align 8
  ret double %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vshr_n_s16(double noundef %a.coerce, i32 noundef %n) #5 {
entry:
  %retval = alloca <4 x i16>, align 8
  %a = alloca <4 x i16>, align 8
  %a.addr = alloca <4 x i16>, align 8
  %n.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int16x4_private, align 8
  %a_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  %n_ = alloca i32, align 4
  %coerce4 = alloca <4 x i16>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <4 x i16>, ptr %a, align 8, !tbaa !16
  store <4 x i16> %a1, ptr %a.addr, align 8, !tbaa !16
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int16x4_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_) #15
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %n_, align 4, !tbaa !5
  %4 = load <4 x i16>, ptr %a_, align 8, !tbaa !16
  %5 = load i32, ptr %n_, align 4, !tbaa !5
  %splat.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %splat.splat = shufflevector <4 x i32> %splat.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %sh_prom = trunc <4 x i32> %splat.splat to <4 x i16>
  %shr = ashr <4 x i16> %4, %sh_prom
  store <4 x i16> %shr, ptr %r_, align 8, !tbaa !16
  %coerce.dive2 = getelementptr inbounds %union.simde_int16x4_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_int16x4_from_private(double %6) #16
  store double %call3, ptr %coerce4, align 8
  %7 = load <4 x i16>, ptr %coerce4, align 8, !tbaa !16
  store <4 x i16> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int16x4_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_int16x4_private, align 8
  %value = alloca <4 x i16>, align 8
  %value.addr = alloca <4 x i16>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <4 x i16>, ptr %value, align 8, !tbaa !16
  store <4 x i16> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint16x4_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value = alloca %union.simde_uint16x4_private, align 8
  %r = alloca <4 x i16>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  store <4 x i16> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_u16(ptr noundef %ptr, double noundef %val.coerce) #5 {
entry:
  %val = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i16>, align 8
  %val_ = alloca %union.simde_uint16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <4 x i16>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i16> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #15
  %0 = load <4 x i16>, ptr %val.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint16x4_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vu16_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #15
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %3 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %5
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !28
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !28
  %conv2 = zext i16 %9 to i32
  %cmp3 = icmp ne i32 %conv, %conv2
  %lnot = xor i1 %cmp3, true
  %lnot5 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot5 to i32
  %conv6 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %11 = load i32, ptr %line.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %14 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds i16, ptr %16, i64 %17
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !28
  %conv8 = zext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !28
  %conv10 = zext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.21, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %23 = load i32, ptr %retval, align 4
  ret i32 %23

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint16x4_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_uint16x4_private, align 8
  %value = alloca <4 x i16>, align 8
  %value.addr = alloca <4 x i16>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <4 x i16>, ptr %value, align 8, !tbaa !16
  store <4 x i16> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s32(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int32x2_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vcltz_s32(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %coerce2 = alloca <2 x i32>, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %coerce5 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !16
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_vshr_n_s32(double noundef %1, i32 noundef 31)
  store double %call, ptr %coerce2, align 8
  %2 = load <2 x i32>, ptr %coerce2, align 8, !tbaa !16
  store <2 x i32> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_vreinterpret_u32_s32(double noundef %3)
  store double %call4, ptr %coerce5, align 8
  %4 = load <2 x i32>, ptr %coerce5, align 8, !tbaa !16
  store <2 x i32> %4, ptr %retval, align 8
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int32x2_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value = alloca %union.simde_int32x2_private, align 8
  %r = alloca <2 x i32>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  store <2 x i32> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vreinterpret_u32_s32(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %r_ = alloca %union.simde_uint32x2_private, align 8
  %a_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  %coerce4 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int32x2_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %a_, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %union.simde_uint32x2_private, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_uint32x2_from_private(double %2) #16
  store double %call3, ptr %coerce4, align 8
  %3 = load <2 x i32>, ptr %coerce4, align 8, !tbaa !16
  store <2 x i32> %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %4 = load double, ptr %retval, align 8
  ret double %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vshr_n_s32(double noundef %a.coerce, i32 noundef %n) #5 {
entry:
  %retval = alloca <2 x i32>, align 8
  %a = alloca <2 x i32>, align 8
  %a.addr = alloca <2 x i32>, align 8
  %n.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int32x2_private, align 8
  %a_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  %n_ = alloca i32, align 4
  %coerce4 = alloca <2 x i32>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x i32>, ptr %a, align 8, !tbaa !16
  store <2 x i32> %a1, ptr %a.addr, align 8, !tbaa !16
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int32x2_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_) #15
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 31, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %n_, align 4, !tbaa !5
  %4 = load <2 x i32>, ptr %a_, align 8, !tbaa !16
  %5 = load i32, ptr %n_, align 4, !tbaa !5
  %splat.splatinsert = insertelement <2 x i32> poison, i32 %5, i64 0
  %splat.splat = shufflevector <2 x i32> %splat.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %shr = ashr <2 x i32> %4, %splat.splat
  store <2 x i32> %shr, ptr %r_, align 8, !tbaa !16
  %coerce.dive2 = getelementptr inbounds %union.simde_int32x2_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_int32x2_from_private(double %6) #16
  store double %call3, ptr %coerce4, align 8
  %7 = load <2 x i32>, ptr %coerce4, align 8, !tbaa !16
  store <2 x i32> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int32x2_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_int32x2_private, align 8
  %value = alloca <2 x i32>, align 8
  %value.addr = alloca <2 x i32>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <2 x i32>, ptr %value, align 8, !tbaa !16
  store <2 x i32> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s64(ptr noundef %ptr) #5 {
entry:
  %retval = alloca <1 x i64>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int64x1_from_private(double %1) #16
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vcltz_s64(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <1 x i64>, align 8
  %a = alloca <1 x i64>, align 8
  %a.addr = alloca <1 x i64>, align 8
  %coerce = alloca <1 x i64>, align 8
  %coerce2 = alloca <1 x i64>, align 8
  %coerce3 = alloca <1 x i64>, align 8
  %coerce5 = alloca <1 x i64>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <1 x i64>, ptr %a, align 8, !tbaa !16
  store <1 x i64> %a1, ptr %a.addr, align 8, !tbaa !16
  %0 = load <1 x i64>, ptr %a.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_vshr_n_s64(double noundef %1, i32 noundef 63)
  store double %call, ptr %coerce2, align 8
  %2 = load <1 x i64>, ptr %coerce2, align 8, !tbaa !16
  store <1 x i64> %2, ptr %coerce3, align 8, !tbaa !16
  %3 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_vreinterpret_u64_s64(double noundef %3)
  store double %call4, ptr %coerce5, align 8
  %4 = load <1 x i64>, ptr %coerce5, align 8, !tbaa !16
  store <1 x i64> %4, ptr %retval, align 8
  %5 = load double, ptr %retval, align 8
  ret double %5
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int64x1_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <1 x i64>, align 8
  %value = alloca %union.simde_int64x1_private, align 8
  %r = alloca <1 x i64>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  store <1 x i64> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #15
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vreinterpret_u64_s64(double noundef %a.coerce) #5 {
entry:
  %retval = alloca <1 x i64>, align 8
  %a = alloca <1 x i64>, align 8
  %a.addr = alloca <1 x i64>, align 8
  %r_ = alloca %union.simde_uint64x1_private, align 8
  %a_ = alloca %union.simde_int64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  %coerce4 = alloca <1 x i64>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <1 x i64>, ptr %a, align 8, !tbaa !16
  store <1 x i64> %a1, ptr %a.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <1 x i64>, ptr %a.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int64x1_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %a_, i64 8, i1 false)
  %coerce.dive2 = getelementptr inbounds %union.simde_uint64x1_private, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_uint64x1_from_private(double %2) #16
  store double %call3, ptr %coerce4, align 8
  %3 = load <1 x i64>, ptr %coerce4, align 8, !tbaa !16
  store <1 x i64> %3, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %4 = load double, ptr %retval, align 8
  ret double %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vshr_n_s64(double noundef %a.coerce, i32 noundef %n) #5 {
entry:
  %retval = alloca <1 x i64>, align 8
  %a = alloca <1 x i64>, align 8
  %a.addr = alloca <1 x i64>, align 8
  %n.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int64x1_private, align 8
  %a_ = alloca %union.simde_int64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  %n_ = alloca i32, align 4
  %coerce4 = alloca <1 x i64>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <1 x i64>, ptr %a, align 8, !tbaa !16
  store <1 x i64> %a1, ptr %a.addr, align 8, !tbaa !16
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #15
  %0 = load <1 x i64>, ptr %a.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int64x1_to_private(double noundef %1) #16
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %a_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_) #15
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 63, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, ptr %n_, align 4, !tbaa !5
  %4 = load <1 x i64>, ptr %a_, align 8, !tbaa !16
  %5 = load i32, ptr %n_, align 4, !tbaa !5
  %splat.splatinsert = insertelement <1 x i32> poison, i32 %5, i64 0
  %splat.splat = shufflevector <1 x i32> %splat.splatinsert, <1 x i32> poison, <1 x i32> zeroinitializer
  %sh_prom = zext <1 x i32> %splat.splat to <1 x i64>
  %shr = ashr <1 x i64> %4, %sh_prom
  store <1 x i64> %shr, ptr %r_, align 8, !tbaa !16
  %coerce.dive2 = getelementptr inbounds %union.simde_int64x1_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive2, align 8
  %call3 = call double @simde_int64x1_from_private(double %6) #16
  store double %call3, ptr %coerce4, align 8
  %7 = load <1 x i64>, ptr %coerce4, align 8, !tbaa !16
  store <1 x i64> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #15
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int64x1_to_private(double noundef %value.coerce) #7 {
entry:
  %retval = alloca %union.simde_int64x1_private, align 8
  %value = alloca <1 x i64>, align 8
  %value.addr = alloca <1 x i64>, align 8
  store double %value.coerce, ptr %value, align 8
  %value1 = load <1 x i64>, ptr %value, align 8, !tbaa !16
  store <1 x i64> %value1, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %value.addr, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %retval, i32 0, i32 0
  %0 = load double, ptr %coerce.dive, align 8
  ret double %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_vld1q_f32(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x float>, ptr %coerce.dive, align 16
  %call = call <4 x float> @simde_float32x4_from_private(<4 x float> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <4 x float> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vcltzq_f32(<4 x float> noundef %a) #12 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %a_ = alloca %union.simde_float32x4_private, align 16
  %r_ = alloca %union.simde_uint32x4_private, align 16
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  %call = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %a_, i32 0, i32 0
  store <4 x float> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %1 = load <4 x float>, ptr %a_, align 16, !tbaa !16
  %cmp = fcmp olt <4 x float> %1, zeroinitializer
  %sext = sext <4 x i1> %cmp to <4 x i32>
  store <4 x i32> %sext, ptr %r_, align 16, !tbaa !16
  %coerce.dive1 = getelementptr inbounds %union.simde_uint32x4_private, ptr %r_, i32 0, i32 0
  %2 = load <4 x i32>, ptr %coerce.dive1, align 16
  %call2 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  ret <4 x i32> %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u32x4_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %b.addr = alloca <4 x i32>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i32], align 16
  %b_ = alloca [4 x i32], align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  store <4 x i32> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #15
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_u32(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_u32(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vld1q_u32(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x i32>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x float> @simde_float32x4_from_private(<4 x float> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_float32x4_private, align 16
  %r = alloca <4 x float>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %value, i32 0, i32 0
  store <4 x float> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x float>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <4 x float> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x float> @simde_float32x4_to_private(<4 x float> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_float32x4_private, align 16
  %value.addr = alloca <4 x float>, align 16
  store <4 x float> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <4 x float>, ptr %coerce.dive, align 16
  ret <4 x float> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_uint32x4_from_private(<4 x i32> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_uint32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %value, i32 0, i32 0
  store <4 x i32> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u32(ptr noundef %ptr, <4 x i32> noundef %val) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i32>, align 16
  %val_ = alloca %union.simde_uint32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i32> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #15
  %0 = load <4 x i32>, ptr %val.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %val_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #15
  ret void
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_uint32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <4 x i32>, ptr %coerce.dive, align 16
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_vld1q_f64(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <2 x double> @simde_float64x2_from_private(<2 x double> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <2 x double> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vcltzq_f64(<2 x double> noundef %a) #12 {
entry:
  %a.addr = alloca <2 x double>, align 16
  %a_ = alloca %union.simde_float64x2_private, align 16
  %r_ = alloca %union.simde_uint64x2_private, align 16
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <2 x double>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_float64x2_to_private(<2 x double> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %a_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %1 = load <2 x double>, ptr %a_, align 16, !tbaa !16
  %cmp = fcmp olt <2 x double> %1, zeroinitializer
  %sext = sext <2 x i1> %cmp to <2 x i64>
  store <2 x i64> %sext, ptr %r_, align 16, !tbaa !16
  %coerce.dive1 = getelementptr inbounds %union.simde_uint64x2_private, ptr %r_, i32 0, i32 0
  %2 = load <2 x i64>, ptr %coerce.dive1, align 16
  %call2 = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  ret <2 x i64> %call2
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u64x2_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i64], align 16
  %b_ = alloca [2 x i64], align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #15
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_u64(ptr noundef %arraydecay, <2 x i64> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_u64(ptr noundef %arraydecay1, <2 x i64> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vld1q_u64(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x i64>, ptr %coerce.dive, align 16
  %call = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x double> @simde_float64x2_from_private(<2 x double> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_float64x2_private, align 16
  %r = alloca <2 x double>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x double>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <2 x double> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x double> @simde_float64x2_to_private(<2 x double> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_float64x2_private, align 16
  %value.addr = alloca <2 x double>, align 16
  store <2 x double> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x double>, ptr %coerce.dive, align 16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_uint64x2_from_private(<2 x i64> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_uint64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %value, i32 0, i32 0
  store <2 x i64> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u64(ptr noundef %ptr, <2 x i64> noundef %val) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i64>, align 16
  %val_ = alloca %union.simde_uint64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i64> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #15
  %0 = load <2 x i64>, ptr %val.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %val_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #15
  ret void
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_uint64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x i64>, ptr %coerce.dive, align 16
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vld1q_s8(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive, align 16
  %call = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <16 x i8> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vcltzq_s8(<16 x i8> noundef %a) #12 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_vshrq_n_s8(<16 x i8> noundef %0, i32 noundef 7)
  %call1 = call <16 x i8> @simde_vreinterpretq_u8_s8(<16 x i8> noundef %call)
  ret <16 x i8> %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u8x16_(<16 x i8> noundef %a, <16 x i8> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %b.addr = alloca <16 x i8>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i8], align 16
  %b_ = alloca [16 x i8], align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  store <16 x i8> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #15
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_u8(ptr noundef %arraydecay, <16 x i8> noundef %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %1 = load <16 x i8>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_u8(ptr noundef %arraydecay1, <16 x i8> noundef %1)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu8_(i64 noundef 16, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vld1q_u8(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive, align 16
  %call = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <16 x i8> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_int8x16_from_private(<16 x i8> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_int8x16_private, align 16
  %r = alloca <16 x i8>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %value, i32 0, i32 0
  store <16 x i8> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vreinterpretq_u8_s8(<16 x i8> noundef %a) #12 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %r_ = alloca %union.simde_uint8x16_private, align 16
  %a_ = alloca %union.simde_int8x16_private, align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %a_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 16 %a_, i64 16, i1 false)
  %coerce.dive1 = getelementptr inbounds %union.simde_uint8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive1, align 16
  %call2 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <16 x i8> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vshrq_n_s8(<16 x i8> noundef %a, i32 noundef %n) #12 {
entry:
  %a.addr = alloca <16 x i8>, align 16
  %n.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int8x16_private, align 16
  %a_ = alloca %union.simde_int8x16_private, align 16
  store <16 x i8> %a, ptr %a.addr, align 16, !tbaa !16
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %a_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  %1 = load <16 x i8>, ptr %a_, align 16, !tbaa !16
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 7, %cond.true ], [ %3, %cond.false ]
  %splat.splatinsert = insertelement <16 x i32> poison, i32 %cond, i64 0
  %splat.splat = shufflevector <16 x i32> %splat.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %sh_prom = trunc <16 x i32> %splat.splat to <16 x i8>
  %shr = ashr <16 x i8> %1, %sh_prom
  store <16 x i8> %shr, ptr %r_, align 16, !tbaa !16
  %coerce.dive1 = getelementptr inbounds %union.simde_int8x16_private, ptr %r_, i32 0, i32 0
  %4 = load <16 x i8>, ptr %coerce.dive1, align 16
  %call2 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <16 x i8> %call2
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_int8x16_private, align 16
  %value.addr = alloca <16 x i8>, align 16
  store <16 x i8> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %retval, i32 0, i32 0
  %0 = load <16 x i8>, ptr %coerce.dive, align 16
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_uint8x16_from_private(<16 x i8> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_uint8x16_private, align 16
  %r = alloca <16 x i8>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %value, i32 0, i32 0
  store <16 x i8> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u8(ptr noundef %ptr, <16 x i8> noundef %val) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <16 x i8>, align 16
  %val_ = alloca %union.simde_uint8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <16 x i8> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #15
  %0 = load <16 x i8>, ptr %val.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %val_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #15
  ret void
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_uint8x16_private, align 16
  %value.addr = alloca <16 x i8>, align 16
  store <16 x i8> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %retval, i32 0, i32 0
  %0 = load <16 x i8>, ptr %coerce.dive, align 16
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vld1q_s16(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 2 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %r_, i32 0, i32 0
  %1 = load <8 x i16>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vcltzq_s16(<8 x i16> noundef %a) #12 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_vshrq_n_s16(<8 x i16> noundef %0, i32 noundef 15)
  %call1 = call <8 x i16> @simde_vreinterpretq_u16_s16(<8 x i16> noundef %call)
  ret <8 x i16> %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_u16x8_(<8 x i16> noundef %a, <8 x i16> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %b.addr = alloca <8 x i16>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i16], align 16
  %b_ = alloca [8 x i16], align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  store <8 x i16> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #15
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_u16(ptr noundef %arraydecay, <8 x i16> noundef %0)
  %arraydecay1 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %1 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_u16(ptr noundef %arraydecay1, <8 x i16> noundef %1)
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu16_(i64 noundef 8, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vld1q_u16(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 2 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %r_, i32 0, i32 0
  %1 = load <8 x i16>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_int16x8_from_private(<8 x i16> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_int16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %value, i32 0, i32 0
  store <8 x i16> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vreinterpretq_u16_s16(<8 x i16> noundef %a) #12 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %r_ = alloca %union.simde_uint16x8_private, align 16
  %a_ = alloca %union.simde_int16x8_private, align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %a_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 16 %a_, i64 16, i1 false)
  %coerce.dive1 = getelementptr inbounds %union.simde_uint16x8_private, ptr %r_, i32 0, i32 0
  %1 = load <8 x i16>, ptr %coerce.dive1, align 16
  %call2 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <8 x i16> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vshrq_n_s16(<8 x i16> noundef %a, i32 noundef %n) #12 {
entry:
  %a.addr = alloca <8 x i16>, align 16
  %n.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int16x8_private, align 16
  %a_ = alloca %union.simde_int16x8_private, align 16
  store <8 x i16> %a, ptr %a.addr, align 16, !tbaa !16
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %a_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  %1 = load <8 x i16>, ptr %a_, align 16, !tbaa !16
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 15, %cond.true ], [ %3, %cond.false ]
  %splat.splatinsert = insertelement <8 x i32> poison, i32 %cond, i64 0
  %splat.splat = shufflevector <8 x i32> %splat.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %sh_prom = trunc <8 x i32> %splat.splat to <8 x i16>
  %shr = ashr <8 x i16> %1, %sh_prom
  store <8 x i16> %shr, ptr %r_, align 16, !tbaa !16
  %coerce.dive1 = getelementptr inbounds %union.simde_int16x8_private, ptr %r_, i32 0, i32 0
  %4 = load <8 x i16>, ptr %coerce.dive1, align 16
  %call2 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <8 x i16> %call2
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_int16x8_private, align 16
  %value.addr = alloca <8 x i16>, align 16
  store <8 x i16> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %retval, i32 0, i32 0
  %0 = load <8 x i16>, ptr %coerce.dive, align 16
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_uint16x8_from_private(<8 x i16> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_uint16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %value, i32 0, i32 0
  store <8 x i16> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u16(ptr noundef %ptr, <8 x i16> noundef %val) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i16>, align 16
  %val_ = alloca %union.simde_uint16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i16> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #15
  %0 = load <8 x i16>, ptr %val.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %val_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #15
  ret void
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_uint16x8_private, align 16
  %value.addr = alloca <8 x i16>, align 16
  store <8 x i16> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %retval, i32 0, i32 0
  %0 = load <8 x i16>, ptr %coerce.dive, align 16
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vld1q_s32(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x i32>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vcltzq_s32(<4 x i32> noundef %a) #12 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_vshrq_n_s32(<4 x i32> noundef %0, i32 noundef 31)
  %call1 = call <4 x i32> @simde_vreinterpretq_u32_s32(<4 x i32> noundef %call)
  ret <4 x i32> %call1
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_int32x4_from_private(<4 x i32> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_int32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %value, i32 0, i32 0
  store <4 x i32> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vreinterpretq_u32_s32(<4 x i32> noundef %a) #12 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %r_ = alloca %union.simde_uint32x4_private, align 16
  %a_ = alloca %union.simde_int32x4_private, align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %a_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 16 %a_, i64 16, i1 false)
  %coerce.dive1 = getelementptr inbounds %union.simde_uint32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x i32>, ptr %coerce.dive1, align 16
  %call2 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <4 x i32> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vshrq_n_s32(<4 x i32> noundef %a, i32 noundef %n) #12 {
entry:
  %a.addr = alloca <4 x i32>, align 16
  %n.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int32x4_private, align 16
  %a_ = alloca %union.simde_int32x4_private, align 16
  store <4 x i32> %a, ptr %a.addr, align 16, !tbaa !16
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %a_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  %1 = load <4 x i32>, ptr %a_, align 16, !tbaa !16
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 31, %cond.true ], [ %3, %cond.false ]
  %splat.splatinsert = insertelement <4 x i32> poison, i32 %cond, i64 0
  %splat.splat = shufflevector <4 x i32> %splat.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %shr = ashr <4 x i32> %1, %splat.splat
  store <4 x i32> %shr, ptr %r_, align 16, !tbaa !16
  %coerce.dive1 = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %4 = load <4 x i32>, ptr %coerce.dive1, align 16
  %call2 = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <4 x i32> %call2
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_int32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <4 x i32>, ptr %coerce.dive, align 16
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vld1q_s64(ptr noundef %ptr) #12 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x i64>, ptr %coerce.dive, align 16
  %call = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vcltzq_s64(<2 x i64> noundef %a) #12 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_vshrq_n_s64(<2 x i64> noundef %0, i32 noundef 63)
  %call1 = call <2 x i64> @simde_vreinterpretq_u64_s64(<2 x i64> noundef %call)
  ret <2 x i64> %call1
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_int64x2_from_private(<2 x i64> %value.coerce) #13 {
entry:
  %value = alloca %union.simde_int64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %value, i32 0, i32 0
  store <2 x i64> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #15
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vreinterpretq_u64_s64(<2 x i64> noundef %a) #12 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde_uint64x2_private, align 16
  %a_ = alloca %union.simde_int64x2_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %a_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 16 %a_, i64 16, i1 false)
  %coerce.dive1 = getelementptr inbounds %union.simde_uint64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x i64>, ptr %coerce.dive1, align 16
  %call2 = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <2 x i64> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vshrq_n_s64(<2 x i64> noundef %a, i32 noundef %n) #12 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %n.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int64x2_private, align 16
  %a_ = alloca %union.simde_int64x2_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #15
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %0) #16
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %a_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  %1 = load <2 x i64>, ptr %a_, align 16, !tbaa !16
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 63, %cond.true ], [ %3, %cond.false ]
  %splat.splatinsert = insertelement <2 x i32> poison, i32 %cond, i64 0
  %splat.splat = shufflevector <2 x i32> %splat.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %sh_prom = zext <2 x i32> %splat.splat to <2 x i64>
  %shr = ashr <2 x i64> %1, %sh_prom
  store <2 x i64> %shr, ptr %r_, align 16, !tbaa !16
  %coerce.dive1 = getelementptr inbounds %union.simde_int64x2_private, ptr %r_, i32 0, i32 0
  %4 = load <2 x i64>, ptr %coerce.dive1, align 16
  %call2 = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #15
  ret <2 x i64> %call2
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %value) #13 {
entry:
  %retval = alloca %union.simde_int64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x i64>, ptr %coerce.dive, align 16
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_vcltzd_f64(double noundef %a) #5 {
entry:
  %a.addr = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !30
  %0 = load double, ptr %a.addr, align 8, !tbaa !30
  %cmp = fcmp olt double %0, 0.000000e+00
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i64 -1, i64 0
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_u64_(i64 noundef %a, i64 noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !11
  store i64 %b, ptr %b.addr, align 8, !tbaa !11
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %a.addr, align 8, !tbaa !11
  %1 = load i64, ptr %b.addr, align 8, !tbaa !11
  %cmp = icmp ne i64 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %6 = load i64, ptr %a.addr, align 8, !tbaa !11
  %7 = load i64, ptr %b.addr, align 8, !tbaa !11
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.31, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_vcltzd_s64(i64 noundef %a) #5 {
entry:
  %a.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8, !tbaa !11
  %0 = load i64, ptr %a.addr, align 8, !tbaa !11
  %cmp = icmp slt i64 %0, 0
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i64 -1, i64 0
  ret i64 %cond
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_vcltzs_f32(float noundef %a) #5 {
entry:
  %a.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !31
  %0 = load float, ptr %a.addr, align 4, !tbaa !31
  %cmp = fcmp olt float %0, 0.000000e+00
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 -1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_u32_(i32 noundef %a, i32 noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4, !tbaa !5
  store i32 %b, ptr %b.addr, align 4, !tbaa !5
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i32, ptr %a.addr, align 4, !tbaa !5
  %1 = load i32, ptr %b.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, %1
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %6 = load i32, ptr %a.addr, align 4, !tbaa !5
  %7 = load i32, ptr %b.addr, align 4, !tbaa !5
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.32, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !10, i64 0}
!14 = !{!"", !10, i64 0, !10, i64 8}
!15 = !{!14, !10, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"", !19, i64 0, !12, i64 8}
!19 = !{!"double", !7, i64 0}
!20 = !{!18, !12, i64 8}
!21 = !{!22, !12, i64 0}
!22 = !{!"", !12, i64 0, !12, i64 8}
!23 = !{!22, !12, i64 8}
!24 = !{!25, !26, i64 0}
!25 = !{!"", !26, i64 0, !6, i64 4}
!26 = !{!"float", !7, i64 0}
!27 = !{!25, !6, i64 4}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !7, i64 0}
!30 = !{!19, !19, i64 0}
!31 = !{!26, !26, i64 0}
