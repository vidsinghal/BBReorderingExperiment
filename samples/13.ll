; ModuleID = 'samples/13.bc'
source_filename = "../spack-src/test/arm/neon/dup_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [2 x float], i32, [2 x float] }
%struct.anon.1 = type { [1 x double], [1 x double] }
%struct.anon.2 = type { [8 x i8], i32, [8 x i8] }
%struct.anon.3 = type { [4 x i16], i32, [4 x i16] }
%struct.anon.4 = type { [2 x i32], i32, [2 x i32] }
%struct.anon.5 = type { [1 x i64], [1 x i64] }
%struct.anon.6 = type { [8 x i8], i32, [8 x i8] }
%struct.anon.7 = type { [4 x i16], i32, [4 x i16] }
%struct.anon.8 = type { [2 x i32], i32, [2 x i32] }
%struct.anon.9 = type { [1 x i64], [1 x i64] }
%struct.anon.10 = type { [4 x float], i32, [2 x float] }
%struct.anon.11 = type { [2 x double], i32, [1 x double] }
%struct.anon.12 = type { [16 x i8], i32, [8 x i8] }
%struct.anon.13 = type { [8 x i16], i32, [4 x i16] }
%struct.anon.14 = type { [4 x i32], i32, [2 x i32] }
%struct.anon.15 = type { [2 x i64], i32, [1 x i64] }
%struct.anon.16 = type { [16 x i8], i32, [8 x i8] }
%struct.anon.17 = type { [8 x i16], i32, [4 x i16] }
%struct.anon.18 = type { [8 x i32], i32, [2 x i32] }
%struct.anon.19 = type { [2 x i64], i32, [1 x i64] }
%struct.anon.20 = type { [2 x float], i32, [4 x float] }
%struct.anon.21 = type { [1 x double], i32, [2 x double] }
%struct.anon.22 = type { [8 x i8], i32, [16 x i8] }
%struct.anon.23 = type { [4 x i16], i32, [8 x i16] }
%struct.anon.24 = type { [2 x i32], i32, [4 x i32] }
%struct.anon.25 = type { [1 x i64], i32, [2 x i64] }
%struct.anon.26 = type { [8 x i8], i32, [16 x i8] }
%struct.anon.27 = type { [4 x i16], i32, [8 x i16] }
%struct.anon.28 = type { [2 x i32], i32, [4 x i32] }
%struct.anon.29 = type { [1 x i64], i32, [2 x i64] }
%struct.anon.30 = type { [4 x float], i32, [4 x float] }
%struct.anon.31 = type { [2 x double], i32, [2 x double] }
%struct.anon.32 = type { [16 x i8], i32, [16 x i8] }
%struct.anon.33 = type { [8 x i16], i32, [8 x i16] }
%struct.anon.34 = type { [4 x i32], i32, [4 x i32] }
%struct.anon.35 = type { [2 x i64], i32, [2 x i64] }
%struct.anon.36 = type { [16 x i8], i32, [16 x i8] }
%struct.anon.37 = type { [8 x i16], i32, [8 x i16] }
%struct.anon.38 = type { [4 x i32], i32, [4 x i32] }
%struct.anon.39 = type { [2 x i64], i32, [2 x i64] }
%union.simde_float32x2_private = type { <2 x float> }
%union.simde_int8x8_private = type { <8 x i8> }
%union.simde_int16x4_private = type { <4 x i16> }
%union.simde_int32x2_private = type { <2 x i32> }
%union.simde_uint8x8_private = type { <8 x i8> }
%union.simde_uint16x4_private = type { <4 x i16> }
%union.simde_uint32x2_private = type { <2 x i32> }
%union.simde_float32x4_private = type { <4 x float> }
%union.simde_float64x2_private = type { <2 x double> }
%union.simde_float64x1_private = type { <1 x double> }
%union.simde_int8x16_private = type { <16 x i8> }
%union.simde_int16x8_private = type { <8 x i16> }
%union.simde_int32x4_private = type { <4 x i32> }
%union.simde_int64x2_private = type { <2 x i64> }
%union.simde_int64x1_private = type { <1 x i64> }
%union.simde_uint8x16_private = type { <16 x i8> }
%union.simde_uint16x8_private = type { <8 x i16> }
%union.simde_uint32x4_private = type { <4 x i32> }
%union.simde_uint64x2_private = type { <2 x i64> }
%union.simde_uint64x1_private = type { <1 x i64> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [40 x %struct.anon] [%struct.anon { ptr @test_simde_vdup_lane_f32, ptr @.str.3 }, %struct.anon { ptr @test_simde_vdup_lane_f64, ptr @.str.4 }, %struct.anon { ptr @test_simde_vdup_lane_s8, ptr @.str.5 }, %struct.anon { ptr @test_simde_vdup_lane_s16, ptr @.str.6 }, %struct.anon { ptr @test_simde_vdup_lane_s32, ptr @.str.7 }, %struct.anon { ptr @test_simde_vdup_lane_s64, ptr @.str.8 }, %struct.anon { ptr @test_simde_vdup_lane_u8, ptr @.str.9 }, %struct.anon { ptr @test_simde_vdup_lane_u16, ptr @.str.10 }, %struct.anon { ptr @test_simde_vdup_lane_u32, ptr @.str.11 }, %struct.anon { ptr @test_simde_vdup_lane_u64, ptr @.str.12 }, %struct.anon { ptr @test_simde_vdup_laneq_f32, ptr @.str.13 }, %struct.anon { ptr @test_simde_vdup_laneq_f64, ptr @.str.14 }, %struct.anon { ptr @test_simde_vdup_laneq_s8, ptr @.str.15 }, %struct.anon { ptr @test_simde_vdup_laneq_s16, ptr @.str.16 }, %struct.anon { ptr @test_simde_vdup_laneq_s32, ptr @.str.17 }, %struct.anon { ptr @test_simde_vdup_laneq_s64, ptr @.str.18 }, %struct.anon { ptr @test_simde_vdup_laneq_u8, ptr @.str.19 }, %struct.anon { ptr @test_simde_vdup_laneq_u16, ptr @.str.20 }, %struct.anon { ptr @test_simde_vdup_laneq_u32, ptr @.str.21 }, %struct.anon { ptr @test_simde_vdup_laneq_u64, ptr @.str.22 }, %struct.anon { ptr @test_simde_vdupq_lane_f32, ptr @.str.23 }, %struct.anon { ptr @test_simde_vdupq_lane_f64, ptr @.str.24 }, %struct.anon { ptr @test_simde_vdupq_lane_s8, ptr @.str.25 }, %struct.anon { ptr @test_simde_vdupq_lane_s16, ptr @.str.26 }, %struct.anon { ptr @test_simde_vdupq_lane_s32, ptr @.str.27 }, %struct.anon { ptr @test_simde_vdupq_lane_s64, ptr @.str.28 }, %struct.anon { ptr @test_simde_vdupq_lane_u8, ptr @.str.29 }, %struct.anon { ptr @test_simde_vdupq_lane_u16, ptr @.str.30 }, %struct.anon { ptr @test_simde_vdupq_lane_u32, ptr @.str.31 }, %struct.anon { ptr @test_simde_vdupq_lane_u64, ptr @.str.32 }, %struct.anon { ptr @test_simde_vdupq_laneq_f32, ptr @.str.33 }, %struct.anon { ptr @test_simde_vdupq_laneq_f64, ptr @.str.34 }, %struct.anon { ptr @test_simde_vdupq_laneq_s8, ptr @.str.35 }, %struct.anon { ptr @test_simde_vdupq_laneq_s16, ptr @.str.36 }, %struct.anon { ptr @test_simde_vdupq_laneq_s32, ptr @.str.37 }, %struct.anon { ptr @test_simde_vdupq_laneq_s64, ptr @.str.38 }, %struct.anon { ptr @test_simde_vdupq_laneq_u8, ptr @.str.39 }, %struct.anon { ptr @test_simde_vdupq_laneq_u16, ptr @.str.40 }, %struct.anon { ptr @test_simde_vdupq_laneq_u32, ptr @.str.41 }, %struct.anon { ptr @test_simde_vdupq_laneq_u64, ptr @.str.42 }], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"not ok %zu dup_lane/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ok %zu dup_lane/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"vdup_lane_f32\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"vdup_lane_f64\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"vdup_lane_s8\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"vdup_lane_s16\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"vdup_lane_s32\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"vdup_lane_s64\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"vdup_lane_u8\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"vdup_lane_u16\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"vdup_lane_u32\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"vdup_lane_u64\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"vdup_laneq_f32\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"vdup_laneq_f64\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"vdup_laneq_s8\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"vdup_laneq_s16\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"vdup_laneq_s32\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"vdup_laneq_s64\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"vdup_laneq_u8\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"vdup_laneq_u16\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"vdup_laneq_u32\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"vdup_laneq_u64\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"vdupq_lane_f32\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"vdupq_lane_f64\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"vdupq_lane_s8\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"vdupq_lane_s16\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"vdupq_lane_s32\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"vdupq_lane_s64\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"vdupq_lane_u8\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"vdupq_lane_u16\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"vdupq_lane_u32\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"vdupq_lane_u64\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"vdupq_laneq_f32\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"vdupq_laneq_f64\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"vdupq_laneq_s8\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"vdupq_laneq_s16\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"vdupq_laneq_s32\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"vdupq_laneq_s64\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"vdupq_laneq_u8\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"vdupq_laneq_u16\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"vdupq_laneq_u32\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"vdupq_laneq_u64\00", align 1
@__const.test_simde_vdup_lane_f32.test_vec = private unnamed_addr constant [8 x %struct.anon.0] [%struct.anon.0 { [2 x float] [float 0xC088990A40000000, float 0xC02E23D700000000], i32 1, [2 x float] [float 0xC02E23D700000000, float 0xC02E23D700000000] }, %struct.anon.0 { [2 x float] [float 0x4047266660000000, float 0x4075A2B860000000], i32 1, [2 x float] [float 0x4075A2B860000000, float 0x4075A2B860000000] }, %struct.anon.0 { [2 x float] [float 0xC06173D700000000, float 0x407E6A3D80000000], i32 0, [2 x float] [float 0xC06173D700000000, float 0xC06173D700000000] }, %struct.anon.0 { [2 x float] [float 0xC0507AE140000000, float 0x4080DB0A40000000], i32 0, [2 x float] [float 0xC0507AE140000000, float 0xC0507AE140000000] }, %struct.anon.0 { [2 x float] [float 0xC072F02900000000, float 0x408606CCC0000000], i32 0, [2 x float] [float 0xC072F02900000000, float 0xC072F02900000000] }, %struct.anon.0 { [2 x float] [float 0x4060F6B860000000, float 0x40653FAE20000000], i32 1, [2 x float] [float 0x40653FAE20000000, float 0x40653FAE20000000] }, %struct.anon.0 { [2 x float] [float 0x4070621480000000, float 0x4070887AE0000000], i32 1, [2 x float] [float 0x4070887AE0000000, float 0x4070887AE0000000] }, %struct.anon.0 { [2 x float] [float 0x408EE4A3E0000000, float -8.487500e+02], i32 0, [2 x float] [float 0x408EE4A3E0000000, float 0x408EE4A3E0000000] }], align 16
@.str.43 = private unnamed_addr constant [38 x i8] c"../spack-src/test/arm/neon/dup_lane.c\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"simde_vld1_f32(test_vec[i].r)\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] ~= %s[%zu] (%f ~= %f)\0A\00", align 1
@stderr = external global ptr, align 8
@__const.test_simde_vdup_lane_f64.test_vec = private unnamed_addr constant [8 x %struct.anon.1] [%struct.anon.1 { [1 x double] [double 1.015400e+02], [1 x double] [double 1.015400e+02] }, %struct.anon.1 { [1 x double] [double 7.986100e+02], [1 x double] [double 7.986100e+02] }, %struct.anon.1 { [1 x double] [double 2.739200e+02], [1 x double] [double 2.739200e+02] }, %struct.anon.1 { [1 x double] [double -1.748000e+01], [1 x double] [double -1.748000e+01] }, %struct.anon.1 { [1 x double] [double 4.580900e+02], [1 x double] [double 4.580900e+02] }, %struct.anon.1 { [1 x double] [double 5.411900e+02], [1 x double] [double 5.411900e+02] }, %struct.anon.1 { [1 x double] [double -3.168400e+02], [1 x double] [double -3.168400e+02] }, %struct.anon.1 { [1 x double] [double 9.343700e+02], [1 x double] [double 9.343700e+02] }], align 16
@.str.47 = private unnamed_addr constant [30 x i8] c"simde_vld1_f64(test_vec[i].r)\00", align 1
@__const.test_simde_vdup_lane_s8.test_vec = private unnamed_addr constant [8 x %struct.anon.2] [%struct.anon.2 { [8 x i8] c"\93V\BA\BA^\C8\EC\12", i32 3, [8 x i8] c"\BA\BA\BA\BA\BA\BA\BA\BA" }, %struct.anon.2 { [8 x i8] c"\1C\E00\9F\992'P", i32 6, [8 x i8] c"''''''''" }, %struct.anon.2 { [8 x i8] c"}*\80\DA\CC\AB\0C\E7", i32 1, [8 x i8] c"********" }, %struct.anon.2 { [8 x i8] c"\CD\8F\D6\87\22,A\DC", i32 3, [8 x i8] c"\87\87\87\87\87\87\87\87" }, %struct.anon.2 { [8 x i8] c"\09\C9\9D\C5\E5}\F5\84", i32 6, [8 x i8] c"\F5\F5\F5\F5\F5\F5\F5\F5" }, %struct.anon.2 { [8 x i8] c"(\ACf\16)\91\97\03", i32 5, [8 x i8] c"\91\91\91\91\91\91\91\91" }, %struct.anon.2 { [8 x i8] c"B\10D[\DD\D41d", i32 6, [8 x i8] c"11111111" }, %struct.anon.2 { [8 x i8] c"^\A5\D3\E9\AF\9C\86t", i32 1, [8 x i8] c"\A5\A5\A5\A5\A5\A5\A5\A5" }], align 16
@.str.48 = private unnamed_addr constant [29 x i8] c"simde_vld1_s8(test_vec[i].r)\00", align 1
@.str.49 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\0A\00", align 1
@__const.test_simde_vdup_lane_s16.test_vec = private unnamed_addr constant [8 x %struct.anon.3] [%struct.anon.3 { [4 x i16] [i16 -18698, i16 -28829, i16 -10148, i16 27234], i32 2, [4 x i16] [i16 -10148, i16 -10148, i16 -10148, i16 -10148] }, %struct.anon.3 { [4 x i16] [i16 10218, i16 -11581, i16 15139, i16 3770], i32 0, [4 x i16] [i16 10218, i16 10218, i16 10218, i16 10218] }, %struct.anon.3 { [4 x i16] [i16 -17031, i16 -15001, i16 -20844, i16 -10697], i32 0, [4 x i16] [i16 -17031, i16 -17031, i16 -17031, i16 -17031] }, %struct.anon.3 { [4 x i16] [i16 15543, i16 6027, i16 16691, i16 -15750], i32 1, [4 x i16] [i16 6027, i16 6027, i16 6027, i16 6027] }, %struct.anon.3 { [4 x i16] [i16 9555, i16 2311, i16 11791, i16 -7731], i32 1, [4 x i16] [i16 2311, i16 2311, i16 2311, i16 2311] }, %struct.anon.3 { [4 x i16] [i16 -25848, i16 -7073, i16 7444, i16 -9909], i32 1, [4 x i16] [i16 -7073, i16 -7073, i16 -7073, i16 -7073] }, %struct.anon.3 { [4 x i16] [i16 4345, i16 10632, i16 -15161, i16 -8524], i32 3, [4 x i16] [i16 -8524, i16 -8524, i16 -8524, i16 -8524] }, %struct.anon.3 { [4 x i16] [i16 23029, i16 -27974, i16 -8276, i16 -19047], i32 2, [4 x i16] [i16 -8276, i16 -8276, i16 -8276, i16 -8276] }], align 16
@.str.50 = private unnamed_addr constant [30 x i8] c"simde_vld1_s16(test_vec[i].r)\00", align 1
@__const.test_simde_vdup_lane_s32.test_vec = private unnamed_addr constant [8 x %struct.anon.4] [%struct.anon.4 { [2 x i32] [i32 -1646161109, i32 -1747230745], i32 0, [2 x i32] [i32 -1646161109, i32 -1646161109] }, %struct.anon.4 { [2 x i32] [i32 -1434884716, i32 398389744], i32 1, [2 x i32] [i32 398389744, i32 398389744] }, %struct.anon.4 { [2 x i32] [i32 -1849175508, i32 1020151922], i32 0, [2 x i32] [i32 -1849175508, i32 -1849175508] }, %struct.anon.4 { [2 x i32] [i32 -1012620287, i32 1822701775], i32 1, [2 x i32] [i32 1822701775, i32 1822701775] }, %struct.anon.4 { [2 x i32] [i32 1219905284, i32 -2050876197], i32 0, [2 x i32] [i32 1219905284, i32 1219905284] }, %struct.anon.4 { [2 x i32] [i32 -870104141, i32 26539632], i32 0, [2 x i32] [i32 -870104141, i32 -870104141] }, %struct.anon.4 { [2 x i32] [i32 -1801137956, i32 -1808185135], i32 1, [2 x i32] [i32 -1808185135, i32 -1808185135] }, %struct.anon.4 { [2 x i32] [i32 -1870382735, i32 -2058958019], i32 1, [2 x i32] [i32 -2058958019, i32 -2058958019] }], align 16
@.str.51 = private unnamed_addr constant [30 x i8] c"simde_vld1_s32(test_vec[i].r)\00", align 1
@__const.test_simde_vdup_lane_s64.test_vec = private unnamed_addr constant [8 x %struct.anon.5] [%struct.anon.5 { [1 x i64] [i64 -4066063288374638750], [1 x i64] [i64 -4066063288374638750] }, %struct.anon.5 { [1 x i64] [i64 -7732336477994252064], [1 x i64] [i64 -7732336477994252064] }, %struct.anon.5 { [1 x i64] [i64 5798089950005920716], [1 x i64] [i64 5798089950005920716] }, %struct.anon.5 { [1 x i64] [i64 -5770497274961656200], [1 x i64] [i64 -5770497274961656200] }, %struct.anon.5 { [1 x i64] [i64 7430289055526295386], [1 x i64] [i64 7430289055526295386] }, %struct.anon.5 { [1 x i64] [i64 9060392184859686968], [1 x i64] [i64 9060392184859686968] }, %struct.anon.5 { [1 x i64] [i64 497077724683344253], [1 x i64] [i64 497077724683344253] }, %struct.anon.5 { [1 x i64] [i64 -2234852464160771073], [1 x i64] [i64 -2234852464160771073] }], align 16
@.str.52 = private unnamed_addr constant [30 x i8] c"simde_vld1_s64(test_vec[i].r)\00", align 1
@.str.53 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%ld == %ld)\0A\00", align 1
@__const.test_simde_vdup_lane_u8.test_vec = private unnamed_addr constant [8 x %struct.anon.6] [%struct.anon.6 { [8 x i8] c"\E1F\DE(U]#\AC", i32 6, [8 x i8] c"########" }, %struct.anon.6 { [8 x i8] c"\0Eh\DB\BE\12;\06\97", i32 5, [8 x i8] c";;;;;;;;" }, %struct.anon.6 { [8 x i8] c"V\ED]r\F6\EA\C50", i32 6, [8 x i8] c"\C5\C5\C5\C5\C5\C5\C5\C5" }, %struct.anon.6 { [8 x i8] c"\8Cir7J\B8\15s", i32 5, [8 x i8] c"\B8\B8\B8\B8\B8\B8\B8\B8" }, %struct.anon.6 { [8 x i8] c"r\96\BA\C8\A4\22\A4b", i32 4, [8 x i8] c"\A4\A4\A4\A4\A4\A4\A4\A4" }, %struct.anon.6 { [8 x i8] c"\DFh\CB\0C\BE\B8i0", i32 7, [8 x i8] c"00000000" }, %struct.anon.6 { [8 x i8] c"T\F5\DF\92\82I\04\B9", i32 3, [8 x i8] c"\92\92\92\92\92\92\92\92" }, %struct.anon.6 { [8 x i8] c"\BC\CE\06\CA@\9D\84\08", i32 1, [8 x i8] c"\CE\CE\CE\CE\CE\CE\CE\CE" }], align 16
@.str.54 = private unnamed_addr constant [29 x i8] c"simde_vld1_u8(test_vec[i].r)\00", align 1
@.str.55 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%u == %u)\0A\00", align 1
@__const.test_simde_vdup_lane_u16.test_vec = private unnamed_addr constant [8 x %struct.anon.7] [%struct.anon.7 { [4 x i16] [i16 -26381, i16 17108, i16 -29674, i16 -31584], i32 0, [4 x i16] [i16 -26381, i16 -26381, i16 -26381, i16 -26381] }, %struct.anon.7 { [4 x i16] [i16 25643, i16 -233, i16 24516, i16 25191], i32 2, [4 x i16] [i16 24516, i16 24516, i16 24516, i16 24516] }, %struct.anon.7 { [4 x i16] [i16 -24038, i16 10432, i16 25102, i16 2461], i32 2, [4 x i16] [i16 25102, i16 25102, i16 25102, i16 25102] }, %struct.anon.7 { [4 x i16] [i16 -29870, i16 21432, i16 20862, i16 -16345], i32 3, [4 x i16] [i16 -16345, i16 -16345, i16 -16345, i16 -16345] }, %struct.anon.7 { [4 x i16] [i16 25011, i16 28908, i16 20620, i16 -29817], i32 1, [4 x i16] [i16 28908, i16 28908, i16 28908, i16 28908] }, %struct.anon.7 { [4 x i16] [i16 -3097, i16 -10889, i16 6413, i16 13717], i32 0, [4 x i16] [i16 -3097, i16 -3097, i16 -3097, i16 -3097] }, %struct.anon.7 { [4 x i16] [i16 -11529, i16 11569, i16 -17371, i16 30950], i32 3, [4 x i16] [i16 30950, i16 30950, i16 30950, i16 30950] }, %struct.anon.7 { [4 x i16] [i16 -24521, i16 -24837, i16 23635, i16 -15478], i32 1, [4 x i16] [i16 -24837, i16 -24837, i16 -24837, i16 -24837] }], align 16
@.str.56 = private unnamed_addr constant [30 x i8] c"simde_vld1_u16(test_vec[i].r)\00", align 1
@__const.test_simde_vdup_lane_u32.test_vec = private unnamed_addr constant [8 x %struct.anon.8] [%struct.anon.8 { [2 x i32] [i32 -260813861, i32 124217138], i32 0, [2 x i32] [i32 -260813861, i32 -260813861] }, %struct.anon.8 { [2 x i32] [i32 -1448502143, i32 -1059423085], i32 1, [2 x i32] [i32 -1059423085, i32 -1059423085] }, %struct.anon.8 { [2 x i32] [i32 -770070889, i32 2093857245], i32 1, [2 x i32] [i32 2093857245, i32 2093857245] }, %struct.anon.8 { [2 x i32] [i32 332400170, i32 -779674655], i32 1, [2 x i32] [i32 -779674655, i32 -779674655] }, %struct.anon.8 { [2 x i32] [i32 1666464239, i32 1661857978], i32 1, [2 x i32] [i32 1661857978, i32 1661857978] }, %struct.anon.8 { [2 x i32] [i32 709115273, i32 -1505498412], i32 0, [2 x i32] [i32 709115273, i32 709115273] }, %struct.anon.8 { [2 x i32] [i32 172258557, i32 -1311094114], i32 0, [2 x i32] [i32 172258557, i32 172258557] }, %struct.anon.8 { [2 x i32] [i32 1140668662, i32 -1952958937], i32 0, [2 x i32] [i32 1140668662, i32 1140668662] }], align 16
@.str.57 = private unnamed_addr constant [30 x i8] c"simde_vld1_u32(test_vec[i].r)\00", align 1
@__const.test_simde_vdup_lane_u64.test_vec = private unnamed_addr constant [8 x %struct.anon.9] [%struct.anon.9 { [1 x i64] [i64 5426997122108201096], [1 x i64] [i64 5426997122108201096] }, %struct.anon.9 { [1 x i64] [i64 5080213220590762597], [1 x i64] [i64 5080213220590762597] }, %struct.anon.9 { [1 x i64] [i64 533322304534421141], [1 x i64] [i64 533322304534421141] }, %struct.anon.9 { [1 x i64] [i64 -3827573415906137670], [1 x i64] [i64 -3827573415906137670] }, %struct.anon.9 { [1 x i64] [i64 3151999422994724178], [1 x i64] [i64 3151999422994724178] }, %struct.anon.9 { [1 x i64] [i64 7902049161203633248], [1 x i64] [i64 7902049161203633248] }, %struct.anon.9 { [1 x i64] [i64 -5572003908062201131], [1 x i64] [i64 -5572003908062201131] }, %struct.anon.9 { [1 x i64] [i64 -1731488280456471571], [1 x i64] [i64 -1731488280456471571] }], align 16
@.str.58 = private unnamed_addr constant [30 x i8] c"simde_vld1_u64(test_vec[i].r)\00", align 1
@.str.59 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%lu == %lu)\0A\00", align 1
@__const.test_simde_vdup_laneq_f32.test_vec = private unnamed_addr constant [8 x %struct.anon.10] [%struct.anon.10 { [4 x float] [float 0x4087AECCC0000000, float 0xC0894B8520000000, float 0xC060F5C280000000, float 0xC06199EB80000000], i32 0, [2 x float] [float 0x4087AECCC0000000, float 0x4087AECCC0000000] }, %struct.anon.10 { [4 x float] [float 0xC08DA3AE20000000, float 0x407E261480000000, float 0x408E5CB860000000, float 0xC08A6F47A0000000], i32 0, [2 x float] [float 0xC08DA3AE20000000, float 0xC08DA3AE20000000] }, %struct.anon.10 { [4 x float] [float 0x4084838520000000, float 0xC081F10A40000000, float 0xC07327AE20000000, float 0x4072EF0A40000000], i32 1, [2 x float] [float 0xC081F10A40000000, float 0xC081F10A40000000] }, %struct.anon.10 { [4 x float] [float 0xC07A3E1480000000, float 0x408A64B860000000, float 0xC08AE07AE0000000, float 0x408D1CE140000000], i32 2, [2 x float] [float 0xC08AE07AE0000000, float 0xC08AE07AE0000000] }, %struct.anon.10 { [4 x float] [float 0xC046AB8520000000, float 0x40882D3340000000, float 0x407C3EB860000000, float 0xC086E999A0000000], i32 1, [2 x float] [float 0x40882D3340000000, float 0x40882D3340000000] }, %struct.anon.10 { [4 x float] [float 0x408A6F3340000000, float 0xC08AAC6660000000, float -6.847500e+02, float 0x4063533340000000], i32 2, [2 x float] [float -6.847500e+02, float -6.847500e+02] }, %struct.anon.10 { [4 x float] [float 0xC0845ACCC0000000, float 0xC055E33340000000, float 0xC08AB38520000000, float 0x406A9F0A40000000], i32 1, [2 x float] [float 0xC055E33340000000, float 0xC055E33340000000] }, %struct.anon.10 { [4 x float] [float 0xC089EAA3E0000000, float 0x40708851E0000000, float 0x406FC0F5C0000000, float 0xC08ACDEB80000000], i32 3, [2 x float] [float 0xC08ACDEB80000000, float 0xC08ACDEB80000000] }], align 16
@__const.test_simde_vdup_laneq_f64.test_vec = private unnamed_addr constant [8 x %struct.anon.11] [%struct.anon.11 { [2 x double] [double 0xC08E211EB851EB85, double 3.024900e+02], i32 0, [1 x double] [double 0xC08E211EB851EB85] }, %struct.anon.11 { [2 x double] [double 0x40836D70A3D70A3D, double 4.880000e+02], i32 0, [1 x double] [double 0x40836D70A3D70A3D] }, %struct.anon.11 { [2 x double] [double 9.507000e+02, double -5.729600e+02], i32 1, [1 x double] [double -5.729600e+02] }, %struct.anon.11 { [2 x double] [double 1.883400e+02, double 0xC0877D1EB851EB85], i32 1, [1 x double] [double 0xC0877D1EB851EB85] }, %struct.anon.11 { [2 x double] [double 0x40585A3D70A3D70A, double 0xC086F26666666666], i32 1, [1 x double] [double 0xC086F26666666666] }, %struct.anon.11 { [2 x double] [double 4.996700e+02, double -4.135700e+02], i32 1, [1 x double] [double -4.135700e+02] }, %struct.anon.11 { [2 x double] [double 7.668700e+02, double -4.242000e+01], i32 0, [1 x double] [double 7.668700e+02] }, %struct.anon.11 { [2 x double] [double -8.815200e+02, double -1.311600e+02], i32 1, [1 x double] [double -1.311600e+02] }], align 16
@__const.test_simde_vdup_laneq_s8.test_vec = private unnamed_addr constant [8 x %struct.anon.12] [%struct.anon.12 { [16 x i8] c"\86\9D\BC\B8og\DB\9D\EAEo\A2\0F\BF\A46", i32 8, [8 x i8] c"\EA\EA\EA\EA\EA\EA\EA\EA" }, %struct.anon.12 { [16 x i8] c"\D4\E3\1E\18\F5\87\85\DDr\8B\0CTCE\DA\E0", i32 1, [8 x i8] c"\E3\E3\E3\E3\E3\E3\E3\E3" }, %struct.anon.12 { [16 x i8] c"\93Ohn\ECR\B3[\F5\C3\1B\99\F93m\DC", i32 1, [8 x i8] c"OOOOOOOO" }, %struct.anon.12 { [16 x i8] c"\86\D2\D8\0B\AFJ\97\BB\9E\DA\00y\BB\01\0C\0A", i32 9, [8 x i8] c"\DA\DA\DA\DA\DA\DA\DA\DA" }, %struct.anon.12 { [16 x i8] c"z\F7\BC.R\B1\F1mJ\EA\A1\B7\C7\F2=\99", i32 11, [8 x i8] c"\B7\B7\B7\B7\B7\B7\B7\B7" }, %struct.anon.12 { [16 x i8] c"IH\15\E0\03\B4\BA\04-u\059\80o\B3w", i32 11, [8 x i8] c"99999999" }, %struct.anon.12 { [16 x i8] c"\E1\C9\DC\D27&\BD\D8\DD\84\CA\1B\1D\95de", i32 11, [8 x i8] c"\1B\1B\1B\1B\1B\1B\1B\1B" }, %struct.anon.12 { [16 x i8] c"Dh_\FEl\8Ctr\C5\F4\E1xk\0CZ4", i32 8, [8 x i8] c"\C5\C5\C5\C5\C5\C5\C5\C5" }], align 16
@__const.test_simde_vdup_laneq_s16.test_vec = private unnamed_addr constant [8 x %struct.anon.13] [%struct.anon.13 { [8 x i16] [i16 23653, i16 -16842, i16 -10435, i16 -21176, i16 15511, i16 -31969, i16 1229, i16 13269], i32 7, [4 x i16] [i16 13269, i16 13269, i16 13269, i16 13269] }, %struct.anon.13 { [8 x i16] [i16 -16631, i16 -285, i16 1669, i16 6286, i16 -11777, i16 -29100, i16 -1421, i16 -12045], i32 0, [4 x i16] [i16 -16631, i16 -16631, i16 -16631, i16 -16631] }, %struct.anon.13 { [8 x i16] [i16 3506, i16 -1528, i16 -24645, i16 -9674, i16 802, i16 -2081, i16 3638, i16 -2560], i32 1, [4 x i16] [i16 -1528, i16 -1528, i16 -1528, i16 -1528] }, %struct.anon.13 { [8 x i16] [i16 31742, i16 -29449, i16 -2413, i16 -6051, i16 -11899, i16 30946, i16 4769, i16 -20950], i32 2, [4 x i16] [i16 -2413, i16 -2413, i16 -2413, i16 -2413] }, %struct.anon.13 { [8 x i16] [i16 26917, i16 23481, i16 -9404, i16 9055, i16 -27182, i16 -11727, i16 9099, i16 1744], i32 2, [4 x i16] [i16 -9404, i16 -9404, i16 -9404, i16 -9404] }, %struct.anon.13 { [8 x i16] [i16 -26019, i16 -17903, i16 -27006, i16 25739, i16 11278, i16 14710, i16 -28197, i16 17502], i32 2, [4 x i16] [i16 -27006, i16 -27006, i16 -27006, i16 -27006] }, %struct.anon.13 { [8 x i16] [i16 -30535, i16 6182, i16 -1877, i16 -8786, i16 14795, i16 -25856, i16 6720, i16 -9480], i32 3, [4 x i16] [i16 -8786, i16 -8786, i16 -8786, i16 -8786] }, %struct.anon.13 { [8 x i16] [i16 23731, i16 16065, i16 -12096, i16 13931, i16 17929, i16 26567, i16 4746, i16 4896], i32 0, [4 x i16] [i16 23731, i16 23731, i16 23731, i16 23731] }], align 16
@__const.test_simde_vdup_laneq_s32.test_vec = private unnamed_addr constant [8 x %struct.anon.14] [%struct.anon.14 { [4 x i32] [i32 -416235975, i32 -1692337253, i32 -1883873129, i32 -1774001862], i32 3, [2 x i32] [i32 -1774001862, i32 -1774001862] }, %struct.anon.14 { [4 x i32] [i32 -327985535, i32 1412594829, i32 57064675, i32 -1908629809], i32 3, [2 x i32] [i32 -1908629809, i32 -1908629809] }, %struct.anon.14 { [4 x i32] [i32 1154099491, i32 2074370501, i32 861724657, i32 -860553355], i32 2, [2 x i32] [i32 861724657, i32 861724657] }, %struct.anon.14 { [4 x i32] [i32 -756131424, i32 344969645, i32 296902357, i32 372605420], i32 0, [2 x i32] [i32 -756131424, i32 -756131424] }, %struct.anon.14 { [4 x i32] [i32 497933177, i32 -1292067242, i32 -2035125550, i32 -1759042498], i32 3, [2 x i32] [i32 -1759042498, i32 -1759042498] }, %struct.anon.14 { [4 x i32] [i32 -1998306055, i32 199735640, i32 9229259, i32 -998647575], i32 2, [2 x i32] [i32 9229259, i32 9229259] }, %struct.anon.14 { [4 x i32] [i32 -1826350442, i32 2131097293, i32 -1532804227, i32 513652442], i32 3, [2 x i32] [i32 513652442, i32 513652442] }, %struct.anon.14 { [4 x i32] [i32 223639334, i32 249569154, i32 -1729639905, i32 -1456509554], i32 1, [2 x i32] [i32 249569154, i32 249569154] }], align 16
@__const.test_simde_vdup_laneq_s64.test_vec = private unnamed_addr constant [8 x %struct.anon.15] [%struct.anon.15 { [2 x i64] [i64 -4867007410252740494, i64 6650439126861753290], i32 0, [1 x i64] [i64 -4867007410252740494] }, %struct.anon.15 { [2 x i64] [i64 6951225055928169884, i64 68363202768986995], i32 1, [1 x i64] [i64 68363202768986995] }, %struct.anon.15 { [2 x i64] [i64 4436684764484439282, i64 -3843432968721221438], i32 0, [1 x i64] [i64 4436684764484439282] }, %struct.anon.15 { [2 x i64] [i64 5042043137711416734, i64 9031044296322969711], i32 1, [1 x i64] [i64 9031044296322969711] }, %struct.anon.15 { [2 x i64] [i64 6558710019170682555, i64 688351337355483718], i32 1, [1 x i64] [i64 688351337355483718] }, %struct.anon.15 { [2 x i64] [i64 -536951092128346461, i64 -4625794981386355522], i32 0, [1 x i64] [i64 -536951092128346461] }, %struct.anon.15 { [2 x i64] [i64 -2721629803226676710, i64 -5335538334588657980], i32 0, [1 x i64] [i64 -2721629803226676710] }, %struct.anon.15 { [2 x i64] [i64 3429603820960188560, i64 1468284878264963704], i32 1, [1 x i64] [i64 1468284878264963704] }], align 16
@__const.test_simde_vdup_laneq_u8.test_vec = private unnamed_addr constant [8 x %struct.anon.16] [%struct.anon.16 { [16 x i8] c"M\93>sv\0BO\EE\D8\12h\B4\AD\C5\F8|", i32 15, [8 x i8] c"||||||||" }, %struct.anon.16 { [16 x i8] c"s\B0\05\AC\CC\B1\D0x\BDM\D0U\15.\A2\A8", i32 12, [8 x i8] c"\15\15\15\15\15\15\15\15" }, %struct.anon.16 { [16 x i8] c"\16\1Ewe\0COwt\04%9\FC\A1\E9oQ", i32 14, [8 x i8] c"oooooooo" }, %struct.anon.16 { [16 x i8] c"\1C\1E\9F\EC\96]9f\B2O\94U\F7\00k\16", i32 7, [8 x i8] c"ffffffff" }, %struct.anon.16 { [16 x i8] c"\D0\22\C7H\97\CBm\D0\C7\0E\B97`\A7S~", i32 7, [8 x i8] c"\D0\D0\D0\D0\D0\D0\D0\D0" }, %struct.anon.16 { [16 x i8] c"?\14\A4xzV\C7\0E\AB\BF\0E\16\D5\85\E7\F7", i32 12, [8 x i8] c"\D5\D5\D5\D5\D5\D5\D5\D5" }, %struct.anon.16 { [16 x i8] c"/\8E\17\9C_\DF\AA\18\16\0A\C0i\88\07\A8\9C", i32 11, [8 x i8] c"iiiiiiii" }, %struct.anon.16 { [16 x i8] c" \16\01\E8$\AD\A72\C3|\B8\AAs\04\D9\02", i32 12, [8 x i8] c"ssssssss" }], align 16
@__const.test_simde_vdup_laneq_u16.test_vec = private unnamed_addr constant [8 x %struct.anon.17] [%struct.anon.17 { [8 x i16] [i16 24949, i16 8443, i16 4473, i16 14634, i16 -19590, i16 8768, i16 -5297, i16 26178], i32 5, [4 x i16] [i16 8768, i16 8768, i16 8768, i16 8768] }, %struct.anon.17 { [8 x i16] [i16 -30166, i16 -11878, i16 23997, i16 30029, i16 -16120, i16 -7815, i16 -27197, i16 9303], i32 0, [4 x i16] [i16 -30166, i16 -30166, i16 -30166, i16 -30166] }, %struct.anon.17 { [8 x i16] [i16 -25225, i16 -24159, i16 7127, i16 5972, i16 -23491, i16 -32765, i16 -4086, i16 -27478], i32 2, [4 x i16] [i16 7127, i16 7127, i16 7127, i16 7127] }, %struct.anon.17 { [8 x i16] [i16 20860, i16 -13849, i16 -4154, i16 16522, i16 19921, i16 10453, i16 26225, i16 3999], i32 7, [4 x i16] [i16 3999, i16 3999, i16 3999, i16 3999] }, %struct.anon.17 { [8 x i16] [i16 -6592, i16 -27357, i16 24829, i16 57, i16 17376, i16 -29712, i16 31447, i16 10503], i32 2, [4 x i16] [i16 24829, i16 24829, i16 24829, i16 24829] }, %struct.anon.17 { [8 x i16] [i16 -4144, i16 23377, i16 8751, i16 1448, i16 6730, i16 -5781, i16 29225, i16 3882], i32 5, [4 x i16] [i16 -5781, i16 -5781, i16 -5781, i16 -5781] }, %struct.anon.17 { [8 x i16] [i16 3263, i16 -1802, i16 -10739, i16 -709, i16 4705, i16 26744, i16 -9669, i16 11065], i32 3, [4 x i16] [i16 -709, i16 -709, i16 -709, i16 -709] }, %struct.anon.17 { [8 x i16] [i16 23188, i16 15438, i16 -26529, i16 -13738, i16 32642, i16 -21443, i16 -11634, i16 -25749], i32 0, [4 x i16] [i16 23188, i16 23188, i16 23188, i16 23188] }], align 16
@__const.test_simde_vdup_laneq_u32.test_vec = private unnamed_addr constant [8 x %struct.anon.18] [%struct.anon.18 { [8 x i32] [i32 -1633703837, i32 498073765, i32 -1560810391, i32 1899373335, i32 0, i32 0, i32 0, i32 0], i32 1, [2 x i32] [i32 498073765, i32 498073765] }, %struct.anon.18 { [8 x i32] [i32 -922103438, i32 -666334309, i32 -1565796553, i32 436564850, i32 0, i32 0, i32 0, i32 0], i32 2, [2 x i32] [i32 -1565796553, i32 -1565796553] }, %struct.anon.18 { [8 x i32] [i32 1410580387, i32 -733971235, i32 1425495838, i32 -1715050296, i32 0, i32 0, i32 0, i32 0], i32 2, [2 x i32] [i32 1425495838, i32 1425495838] }, %struct.anon.18 { [8 x i32] [i32 -654494321, i32 -1196477171, i32 -584310313, i32 -92258757, i32 0, i32 0, i32 0, i32 0], i32 1, [2 x i32] [i32 -1196477171, i32 -1196477171] }, %struct.anon.18 { [8 x i32] [i32 349034452, i32 -1553208404, i32 101463103, i32 43351757, i32 0, i32 0, i32 0, i32 0], i32 3, [2 x i32] [i32 43351757, i32 43351757] }, %struct.anon.18 { [8 x i32] [i32 481300589, i32 -197293880, i32 -449611675, i32 1253737587, i32 0, i32 0, i32 0, i32 0], i32 2, [2 x i32] [i32 -449611675, i32 -449611675] }, %struct.anon.18 { [8 x i32] [i32 977139406, i32 -1502708326, i32 405027715, i32 1317445438, i32 0, i32 0, i32 0, i32 0], i32 0, [2 x i32] [i32 977139406, i32 977139406] }, %struct.anon.18 { [8 x i32] [i32 -522709342, i32 1045970187, i32 -591213790, i32 212538390, i32 0, i32 0, i32 0, i32 0], i32 2, [2 x i32] [i32 -591213790, i32 -591213790] }], align 16
@__const.test_simde_vdup_laneq_u64.test_vec = private unnamed_addr constant [8 x %struct.anon.19] [%struct.anon.19 { [2 x i64] [i64 8110510466717951717, i64 3572304598247984234], i32 0, [1 x i64] [i64 8110510466717951717] }, %struct.anon.19 { [2 x i64] [i64 4366124917414247539, i64 6918834943037648244], i32 0, [1 x i64] [i64 4366124917414247539] }, %struct.anon.19 { [2 x i64] [i64 3292744983505054807, i64 4117915127713221663], i32 0, [1 x i64] [i64 3292744983505054807] }, %struct.anon.19 { [2 x i64] [i64 4698457210627404784, i64 -378488948908560796], i32 0, [1 x i64] [i64 4698457210627404784] }, %struct.anon.19 { [2 x i64] [i64 -3376741752377960539, i64 1022264726452052249], i32 0, [1 x i64] [i64 -3376741752377960539] }, %struct.anon.19 { [2 x i64] [i64 2583179698698190518, i64 4114481506476959668], i32 1, [1 x i64] [i64 4114481506476959668] }, %struct.anon.19 { [2 x i64] [i64 -1894788046373290640, i64 1981680721021243291], i32 1, [1 x i64] [i64 1981680721021243291] }, %struct.anon.19 { [2 x i64] [i64 -690387211106166165, i64 4845139579135167924], i32 1, [1 x i64] [i64 4845139579135167924] }], align 16
@__const.test_simde_vdupq_lane_f32.test_vec = private unnamed_addr constant [8 x %struct.anon.20] [%struct.anon.20 { [2 x float] [float 0x408B370A40000000, float 0x4038028F60000000], i32 0, [4 x float] [float 0x408B370A40000000, float 0x408B370A40000000, float 0x408B370A40000000, float 0x408B370A40000000] }, %struct.anon.20 { [2 x float] [float 0x405C728F60000000, float 0xC05B1CCCC0000000], i32 1, [4 x float] [float 0xC05B1CCCC0000000, float 0xC05B1CCCC0000000, float 0xC05B1CCCC0000000, float 0xC05B1CCCC0000000] }, %struct.anon.20 { [2 x float] [float 0x4060D33340000000, float 0xC06E038520000000], i32 1, [4 x float] [float 0xC06E038520000000, float 0xC06E038520000000, float 0xC06E038520000000, float 0xC06E038520000000] }, %struct.anon.20 { [2 x float] [float 0x407EEE3D80000000, float 0xC07EAE8F60000000], i32 0, [4 x float] [float 0x407EEE3D80000000, float 0x407EEE3D80000000, float 0x407EEE3D80000000, float 0x407EEE3D80000000] }, %struct.anon.20 { [2 x float] [float 0xC06F9CCCC0000000, float 0xC088B78520000000], i32 1, [4 x float] [float 0xC088B78520000000, float 0xC088B78520000000, float 0xC088B78520000000, float 0xC088B78520000000] }, %struct.anon.20 { [2 x float] [float 0x406D00A3E0000000, float 0xC059B3D700000000], i32 0, [4 x float] [float 0x406D00A3E0000000, float 0x406D00A3E0000000, float 0x406D00A3E0000000, float 0x406D00A3E0000000] }, %struct.anon.20 { [2 x float] [float 0x4087BC2900000000, float 0x4077FBAE20000000], i32 0, [4 x float] [float 0x4087BC2900000000, float 0x4087BC2900000000, float 0x4087BC2900000000, float 0x4087BC2900000000] }, %struct.anon.20 { [2 x float] [float 0xC0653947A0000000, float 0xC079335C20000000], i32 1, [4 x float] [float 0xC079335C20000000, float 0xC079335C20000000, float 0xC079335C20000000, float 0xC079335C20000000] }], align 16
@.str.60 = private unnamed_addr constant [31 x i8] c"simde_vld1q_f32(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_f64.test_vec = private unnamed_addr constant [8 x %struct.anon.21] [%struct.anon.21 { [1 x double] [double 2.383000e+01], i32 0, [2 x double] [double 2.383000e+01, double 2.383000e+01] }, %struct.anon.21 { [1 x double] [double 3.604500e+02], i32 0, [2 x double] [double 3.604500e+02, double 3.604500e+02] }, %struct.anon.21 { [1 x double] [double -9.694500e+02], i32 0, [2 x double] [double -9.694500e+02, double -9.694500e+02] }, %struct.anon.21 { [1 x double] [double 2.069100e+02], i32 0, [2 x double] [double 2.069100e+02, double 2.069100e+02] }, %struct.anon.21 { [1 x double] [double 9.530700e+02], i32 0, [2 x double] [double 9.530700e+02, double 9.530700e+02] }, %struct.anon.21 { [1 x double] [double -5.311800e+02], i32 0, [2 x double] [double -5.311800e+02, double -5.311800e+02] }, %struct.anon.21 { [1 x double] [double 3.172000e+01], i32 0, [2 x double] [double 3.172000e+01, double 3.172000e+01] }, %struct.anon.21 { [1 x double] [double -3.583500e+02], i32 0, [2 x double] [double -3.583500e+02, double -3.583500e+02] }], align 16
@.str.61 = private unnamed_addr constant [31 x i8] c"simde_vld1q_f64(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_s8.test_vec = private unnamed_addr constant [8 x %struct.anon.22] [%struct.anon.22 { [8 x i8] c"UL,*\A0g\C6\F8", i32 7, [16 x i8] c"\F8\F8\F8\F8\F8\F8\F8\F8\F8\F8\F8\F8\F8\F8\F8\F8" }, %struct.anon.22 { [8 x i8] c" %\89\A9n\FB\E3\C3", i32 3, [16 x i8] c"\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9" }, %struct.anon.22 { [8 x i8] c"\FD(\8A\FFSt\A5\13", i32 6, [16 x i8] c"\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5" }, %struct.anon.22 { [8 x i8] c"\D3\93\96\EE\E8\E2\1A\13", i32 2, [16 x i8] c"\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96" }, %struct.anon.22 { [8 x i8] c"\81\D9z\09\F9\9F\92\A2", i32 5, [16 x i8] c"\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F" }, %struct.anon.22 { [8 x i8] c"\8D\86\D0Y\83\F8\E3\82", i32 4, [16 x i8] c"\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83" }, %struct.anon.22 { [8 x i8] c"W'_\E5\FA\F3|\E8", i32 3, [16 x i8] c"\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5\E5" }, %struct.anon.22 { [8 x i8] c"^\02\EE\E1\84\C8[\8D", i32 1, [16 x i8] c"\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02" }], align 16
@.str.62 = private unnamed_addr constant [30 x i8] c"simde_vld1q_s8(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_s16.test_vec = private unnamed_addr constant [8 x %struct.anon.23] [%struct.anon.23 { [4 x i16] [i16 -16016, i16 -22782, i16 -28914, i16 14087], i32 1, [8 x i16] [i16 -22782, i16 -22782, i16 -22782, i16 -22782, i16 -22782, i16 -22782, i16 -22782, i16 -22782] }, %struct.anon.23 { [4 x i16] [i16 -22047, i16 -6606, i16 -7386, i16 14932], i32 2, [8 x i16] [i16 -7386, i16 -7386, i16 -7386, i16 -7386, i16 -7386, i16 -7386, i16 -7386, i16 -7386] }, %struct.anon.23 { [4 x i16] [i16 135, i16 -7551, i16 25436, i16 -28698], i32 3, [8 x i16] [i16 -28698, i16 -28698, i16 -28698, i16 -28698, i16 -28698, i16 -28698, i16 -28698, i16 -28698] }, %struct.anon.23 { [4 x i16] [i16 12937, i16 -21229, i16 -11102, i16 18863], i32 3, [8 x i16] [i16 18863, i16 18863, i16 18863, i16 18863, i16 18863, i16 18863, i16 18863, i16 18863] }, %struct.anon.23 { [4 x i16] [i16 20543, i16 -21478, i16 -15566, i16 6367], i32 1, [8 x i16] [i16 -21478, i16 -21478, i16 -21478, i16 -21478, i16 -21478, i16 -21478, i16 -21478, i16 -21478] }, %struct.anon.23 { [4 x i16] [i16 28098, i16 -24541, i16 9204, i16 -10718], i32 0, [8 x i16] [i16 28098, i16 28098, i16 28098, i16 28098, i16 28098, i16 28098, i16 28098, i16 28098] }, %struct.anon.23 { [4 x i16] [i16 -17275, i16 -6129, i16 16709, i16 -3077], i32 3, [8 x i16] [i16 -3077, i16 -3077, i16 -3077, i16 -3077, i16 -3077, i16 -3077, i16 -3077, i16 -3077] }, %struct.anon.23 { [4 x i16] [i16 -23856, i16 -19667, i16 32225, i16 -28979], i32 3, [8 x i16] [i16 -28979, i16 -28979, i16 -28979, i16 -28979, i16 -28979, i16 -28979, i16 -28979, i16 -28979] }], align 16
@.str.63 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s16(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_s32.test_vec = private unnamed_addr constant [8 x %struct.anon.24] [%struct.anon.24 { [2 x i32] [i32 -953972085, i32 1755395340], i32 1, [4 x i32] [i32 1755395340, i32 1755395340, i32 1755395340, i32 1755395340] }, %struct.anon.24 { [2 x i32] [i32 708800270, i32 126272294], i32 1, [4 x i32] [i32 126272294, i32 126272294, i32 126272294, i32 126272294] }, %struct.anon.24 { [2 x i32] [i32 1633721669, i32 -507959388], i32 0, [4 x i32] [i32 1633721669, i32 1633721669, i32 1633721669, i32 1633721669] }, %struct.anon.24 { [2 x i32] [i32 -637428407, i32 -251819223], i32 0, [4 x i32] [i32 -637428407, i32 -637428407, i32 -637428407, i32 -637428407] }, %struct.anon.24 { [2 x i32] [i32 -1946119885, i32 -909348961], i32 1, [4 x i32] [i32 -909348961, i32 -909348961, i32 -909348961, i32 -909348961] }, %struct.anon.24 { [2 x i32] [i32 -1365422193, i32 -183551340], i32 0, [4 x i32] [i32 -1365422193, i32 -1365422193, i32 -1365422193, i32 -1365422193] }, %struct.anon.24 { [2 x i32] [i32 -1195332042, i32 -776315401], i32 0, [4 x i32] [i32 -1195332042, i32 -1195332042, i32 -1195332042, i32 -1195332042] }, %struct.anon.24 { [2 x i32] [i32 -579350715, i32 -1898117118], i32 0, [4 x i32] [i32 -579350715, i32 -579350715, i32 -579350715, i32 -579350715] }], align 16
@.str.64 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s32(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_s64.test_vec = private unnamed_addr constant [8 x %struct.anon.25] [%struct.anon.25 { [1 x i64] [i64 -5271004726777602230], i32 0, [2 x i64] [i64 -5271004726777602230, i64 -5271004726777602230] }, %struct.anon.25 { [1 x i64] [i64 -5514893245762030507], i32 0, [2 x i64] [i64 -5514893245762030507, i64 -5514893245762030507] }, %struct.anon.25 { [1 x i64] [i64 2592892641896537330], i32 0, [2 x i64] [i64 2592892641896537330, i64 2592892641896537330] }, %struct.anon.25 { [1 x i64] [i64 2407055658969273279], i32 0, [2 x i64] [i64 2407055658969273279, i64 2407055658969273279] }, %struct.anon.25 { [1 x i64] [i64 4056792530928007688], i32 0, [2 x i64] [i64 4056792530928007688, i64 4056792530928007688] }, %struct.anon.25 { [1 x i64] [i64 6722394993897615222], i32 0, [2 x i64] [i64 6722394993897615222, i64 6722394993897615222] }, %struct.anon.25 { [1 x i64] [i64 8871829688100542744], i32 0, [2 x i64] [i64 8871829688100542744, i64 8871829688100542744] }, %struct.anon.25 { [1 x i64] [i64 1212467663097422515], i32 0, [2 x i64] [i64 1212467663097422515, i64 1212467663097422515] }], align 16
@.str.65 = private unnamed_addr constant [31 x i8] c"simde_vld1q_s64(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_u8.test_vec = private unnamed_addr constant [8 x %struct.anon.26] [%struct.anon.26 { [8 x i8] c"\A9\CF@\92\9Dz,\04", i32 1, [16 x i8] c"\CF\CF\CF\CF\CF\CF\CF\CF\CF\CF\CF\CF\CF\CF\CF\CF" }, %struct.anon.26 { [8 x i8] c"\FFs\18qNq\F6\0D", i32 7, [16 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D" }, %struct.anon.26 { [8 x i8] c"\EC\E5\0E\E6\F3?%)", i32 3, [16 x i8] c"\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6" }, %struct.anon.26 { [8 x i8] c"\EF\8D\CE\926\9D\D2\C8", i32 2, [16 x i8] c"\CE\CE\CE\CE\CE\CE\CE\CE\CE\CE\CE\CE\CE\CE\CE\CE" }, %struct.anon.26 { [8 x i8] c"M\F4?\8E\F4\B2\A6e", i32 1, [16 x i8] c"\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4" }, %struct.anon.26 { [8 x i8] c"\17\\\0E\F6H\F3\04.", i32 6, [16 x i8] c"\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04" }, %struct.anon.26 { [8 x i8] c"CS\10\E6B\9D\B4\D4", i32 3, [16 x i8] c"\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6\E6" }, %struct.anon.26 { [8 x i8] c"Q\A7\9B\8C\F4\90\CB\82", i32 4, [16 x i8] c"\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4\F4" }], align 16
@.str.66 = private unnamed_addr constant [30 x i8] c"simde_vld1q_u8(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_u16.test_vec = private unnamed_addr constant [8 x %struct.anon.27] [%struct.anon.27 { [4 x i16] [i16 -22915, i16 14183, i16 -32603, i16 -21799], i32 0, [8 x i16] [i16 -22915, i16 -22915, i16 -22915, i16 -22915, i16 -22915, i16 -22915, i16 -22915, i16 -22915] }, %struct.anon.27 { [4 x i16] [i16 20803, i16 9878, i16 -707, i16 -12165], i32 1, [8 x i16] [i16 9878, i16 9878, i16 9878, i16 9878, i16 9878, i16 9878, i16 9878, i16 9878] }, %struct.anon.27 { [4 x i16] [i16 -5013, i16 -27843, i16 -12182, i16 -24250], i32 3, [8 x i16] [i16 -24250, i16 -24250, i16 -24250, i16 -24250, i16 -24250, i16 -24250, i16 -24250, i16 -24250] }, %struct.anon.27 { [4 x i16] [i16 8692, i16 32507, i16 -23906, i16 -10779], i32 3, [8 x i16] [i16 -10779, i16 -10779, i16 -10779, i16 -10779, i16 -10779, i16 -10779, i16 -10779, i16 -10779] }, %struct.anon.27 { [4 x i16] [i16 -20891, i16 -31247, i16 17393, i16 6172], i32 0, [8 x i16] [i16 -20891, i16 -20891, i16 -20891, i16 -20891, i16 -20891, i16 -20891, i16 -20891, i16 -20891] }, %struct.anon.27 { [4 x i16] [i16 -27879, i16 -32176, i16 15614, i16 -28225], i32 3, [8 x i16] [i16 -28225, i16 -28225, i16 -28225, i16 -28225, i16 -28225, i16 -28225, i16 -28225, i16 -28225] }, %struct.anon.27 { [4 x i16] [i16 -10097, i16 -7608, i16 27084, i16 19166], i32 3, [8 x i16] [i16 19166, i16 19166, i16 19166, i16 19166, i16 19166, i16 19166, i16 19166, i16 19166] }, %struct.anon.27 { [4 x i16] [i16 12160, i16 -14372, i16 -29804, i16 6584], i32 0, [8 x i16] [i16 12160, i16 12160, i16 12160, i16 12160, i16 12160, i16 12160, i16 12160, i16 12160] }], align 16
@.str.67 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u16(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_u32.test_vec = private unnamed_addr constant [8 x %struct.anon.28] [%struct.anon.28 { [2 x i32] [i32 -1993432354, i32 -752157280], i32 0, [4 x i32] [i32 -1993432354, i32 -1993432354, i32 -1993432354, i32 -1993432354] }, %struct.anon.28 { [2 x i32] [i32 1166405053, i32 -606812760], i32 1, [4 x i32] [i32 -606812760, i32 -606812760, i32 -606812760, i32 -606812760] }, %struct.anon.28 { [2 x i32] [i32 -301813722, i32 -1592895893], i32 0, [4 x i32] [i32 -301813722, i32 -301813722, i32 -301813722, i32 -301813722] }, %struct.anon.28 { [2 x i32] [i32 1677804311, i32 -1416453086], i32 0, [4 x i32] [i32 1677804311, i32 1677804311, i32 1677804311, i32 1677804311] }, %struct.anon.28 { [2 x i32] [i32 1092081295, i32 -658045549], i32 1, [4 x i32] [i32 -658045549, i32 -658045549, i32 -658045549, i32 -658045549] }, %struct.anon.28 { [2 x i32] [i32 159952012, i32 -1056228910], i32 0, [4 x i32] [i32 159952012, i32 159952012, i32 159952012, i32 159952012] }, %struct.anon.28 { [2 x i32] [i32 -1538863262, i32 1252428262], i32 1, [4 x i32] [i32 1252428262, i32 1252428262, i32 1252428262, i32 1252428262] }, %struct.anon.28 { [2 x i32] [i32 -1906844598, i32 -1381618324], i32 0, [4 x i32] [i32 -1906844598, i32 -1906844598, i32 -1906844598, i32 -1906844598] }], align 16
@.str.68 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u32(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_lane_u64.test_vec = private unnamed_addr constant [8 x %struct.anon.29] [%struct.anon.29 { [1 x i64] [i64 455882935909149950], i32 0, [2 x i64] [i64 455882935909149950, i64 455882935909149950] }, %struct.anon.29 { [1 x i64] [i64 -6513157058298333191], i32 0, [2 x i64] [i64 -6513157058298333191, i64 -6513157058298333191] }, %struct.anon.29 { [1 x i64] [i64 -3608386594781074744], i32 0, [2 x i64] [i64 -3608386594781074744, i64 -3608386594781074744] }, %struct.anon.29 { [1 x i64] [i64 -8036141189080535949], i32 0, [2 x i64] [i64 -8036141189080535949, i64 -8036141189080535949] }, %struct.anon.29 { [1 x i64] [i64 -4399525508240907496], i32 0, [2 x i64] [i64 -4399525508240907496, i64 -4399525508240907496] }, %struct.anon.29 { [1 x i64] [i64 -4960021032899617136], i32 0, [2 x i64] [i64 -4960021032899617136, i64 -4960021032899617136] }, %struct.anon.29 { [1 x i64] [i64 -8252580121512859751], i32 0, [2 x i64] [i64 -8252580121512859751, i64 -8252580121512859751] }, %struct.anon.29 { [1 x i64] [i64 4928221257128478300], i32 0, [2 x i64] [i64 4928221257128478300, i64 4928221257128478300] }], align 16
@.str.69 = private unnamed_addr constant [31 x i8] c"simde_vld1q_u64(test_vec[i].r)\00", align 1
@__const.test_simde_vdupq_laneq_f32.test_vec = private unnamed_addr constant [8 x %struct.anon.30] [%struct.anon.30 { [4 x float] [float 0x408A4D0A40000000, float 0xC048B999A0000000, float 0x40705AB860000000, float 0xC075E87AE0000000], i32 2, [4 x float] [float 0x40705AB860000000, float 0x40705AB860000000, float 0x40705AB860000000, float 0x40705AB860000000] }, %struct.anon.30 { [4 x float] [float 0x406E43D700000000, float 0x408C04A3E0000000, float 0xC05EA51EC0000000, float 0xC08C9370A0000000], i32 3, [4 x float] [float 0xC08C9370A0000000, float 0xC08C9370A0000000, float 0xC08C9370A0000000, float 0xC08C9370A0000000] }, %struct.anon.30 { [4 x float] [float 0xC08C3A2900000000, float 0xC027570A40000000, float 0xC0613EB860000000, float 0xC0804E51E0000000], i32 1, [4 x float] [float 0xC027570A40000000, float 0xC027570A40000000, float 0xC027570A40000000, float 0xC027570A40000000] }, %struct.anon.30 { [4 x float] [float 0xC08D94F5C0000000, float 0xC069A051E0000000, float 0xC05E5A3D80000000, float 0x4063EA3D80000000], i32 0, [4 x float] [float 0xC08D94F5C0000000, float 0xC08D94F5C0000000, float 0xC08D94F5C0000000, float 0xC08D94F5C0000000] }, %struct.anon.30 { [4 x float] [float 0x4074E851E0000000, float 0xC061C70A40000000, float 0xC07F2AE140000000, float 0xC089F7EB80000000], i32 0, [4 x float] [float 0x4074E851E0000000, float 0x4074E851E0000000, float 0x4074E851E0000000, float 0x4074E851E0000000] }, %struct.anon.30 { [4 x float] [float 0x408AB82900000000, float 0xC087EE7AE0000000, float 0xC07DC199A0000000, float 0x4087153340000000], i32 2, [4 x float] [float 0xC07DC199A0000000, float 0xC07DC199A0000000, float 0xC07DC199A0000000, float 0xC07DC199A0000000] }, %struct.anon.30 { [4 x float] [float 8.500000e+01, float 0x4082223D80000000, float 0x4074ABD700000000, float 0xC0846AA3E0000000], i32 3, [4 x float] [float 0xC0846AA3E0000000, float 0xC0846AA3E0000000, float 0xC0846AA3E0000000, float 0xC0846AA3E0000000] }, %struct.anon.30 { [4 x float] [float -7.672500e+02, float 0x4082666660000000, float 0xC08B4D5C20000000, float 0x405B8A3D80000000], i32 3, [4 x float] [float 0x405B8A3D80000000, float 0x405B8A3D80000000, float 0x405B8A3D80000000, float 0x405B8A3D80000000] }], align 16
@__const.test_simde_vdupq_laneq_f64.test_vec = private unnamed_addr constant [8 x %struct.anon.31] [%struct.anon.31 { [2 x double] [double 0xC08DDA147AE147AE, double -5.513800e+02], i32 0, [2 x double] [double 0xC08DDA147AE147AE, double 0xC08DDA147AE147AE] }, %struct.anon.31 { [2 x double] [double 5.353000e+01, double 9.702100e+02], i32 1, [2 x double] [double 9.702100e+02, double 9.702100e+02] }, %struct.anon.31 { [2 x double] [double -5.947200e+02, double 1.184400e+02], i32 1, [2 x double] [double 1.184400e+02, double 1.184400e+02] }, %struct.anon.31 { [2 x double] [double 4.998500e+02, double 0x408D1451EB851EB8], i32 0, [2 x double] [double 4.998500e+02, double 4.998500e+02] }, %struct.anon.31 { [2 x double] [double 8.586100e+02, double 3.513300e+02], i32 1, [2 x double] [double 3.513300e+02, double 3.513300e+02] }, %struct.anon.31 { [2 x double] [double 5.583900e+02, double -9.648700e+02], i32 0, [2 x double] [double 5.583900e+02, double 5.583900e+02] }, %struct.anon.31 { [2 x double] [double -8.584900e+02, double 9.149900e+02], i32 0, [2 x double] [double -8.584900e+02, double -8.584900e+02] }, %struct.anon.31 { [2 x double] [double 7.453200e+02, double -2.583200e+02], i32 1, [2 x double] [double -2.583200e+02, double -2.583200e+02] }], align 16
@__const.test_simde_vdupq_laneq_s8.test_vec = private unnamed_addr constant [8 x %struct.anon.32] [%struct.anon.32 { [16 x i8] c"c\C2%Aq\FA9\8EY\E3\04\D3\08\B9.W", i32 7, [16 x i8] c"\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E" }, %struct.anon.32 { [16 x i8] c"\C8\9D\A8Y\FC\F9;\9F\F5\9ET\94\07\CD\F7\CA", i32 2, [16 x i8] c"\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8" }, %struct.anon.32 { [16 x i8] c"8;\ECq\C9ET\CD\19\\\86G\B3\DD\10Q", i32 6, [16 x i8] c"TTTTTTTTTTTTTTTT" }, %struct.anon.32 { [16 x i8] c"iM\7F\A5\ECtCA\08J\0E\00\14\008P", i32 12, [16 x i8] c"\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14" }, %struct.anon.32 { [16 x i8] c"\AA\192\FE\E7K[m\92\0EK\A2_\D1\0C\AD", i32 0, [16 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA" }, %struct.anon.32 { [16 x i8] c"\B1\99\C4\F4\DA\CD>\E8\CDS\E8\05\A3\D5\AF\BC", i32 7, [16 x i8] c"\E8\E8\E8\E8\E8\E8\E8\E8\E8\E8\E8\E8\E8\E8\E8\E8" }, %struct.anon.32 { [16 x i8] c"\AE\A3R\09\11\E4\17\\\87w-\93$}D\BD", i32 1, [16 x i8] c"\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3" }, %struct.anon.32 { [16 x i8] c"8\98\0Ev\80\DB\C9i\E1l>\90)E>\CC", i32 7, [16 x i8] c"iiiiiiiiiiiiiiii" }], align 16
@__const.test_simde_vdupq_laneq_s16.test_vec = private unnamed_addr constant [8 x %struct.anon.33] [%struct.anon.33 { [8 x i16] [i16 -8889, i16 24443, i16 569, i16 26326, i16 -1387, i16 -9757, i16 9655, i16 20241], i32 3, [8 x i16] [i16 26326, i16 26326, i16 26326, i16 26326, i16 26326, i16 26326, i16 26326, i16 26326] }, %struct.anon.33 { [8 x i16] [i16 -12152, i16 20751, i16 -4039, i16 30654, i16 -6272, i16 -16452, i16 21427, i16 -28410], i32 6, [8 x i16] [i16 21427, i16 21427, i16 21427, i16 21427, i16 21427, i16 21427, i16 21427, i16 21427] }, %struct.anon.33 { [8 x i16] [i16 -13723, i16 15313, i16 26161, i16 5173, i16 -4800, i16 20793, i16 27964, i16 3289], i32 4, [8 x i16] [i16 -4800, i16 -4800, i16 -4800, i16 -4800, i16 -4800, i16 -4800, i16 -4800, i16 -4800] }, %struct.anon.33 { [8 x i16] [i16 17707, i16 -5780, i16 -4932, i16 30928, i16 -31829, i16 -19765, i16 -26092, i16 -8425], i32 3, [8 x i16] [i16 30928, i16 30928, i16 30928, i16 30928, i16 30928, i16 30928, i16 30928, i16 30928] }, %struct.anon.33 { [8 x i16] [i16 4179, i16 -30511, i16 4388, i16 24181, i16 -19869, i16 15563, i16 18366, i16 1127], i32 3, [8 x i16] [i16 24181, i16 24181, i16 24181, i16 24181, i16 24181, i16 24181, i16 24181, i16 24181] }, %struct.anon.33 { [8 x i16] [i16 -16304, i16 8351, i16 19257, i16 1188, i16 -18179, i16 5278, i16 2455, i16 -22681], i32 3, [8 x i16] [i16 1188, i16 1188, i16 1188, i16 1188, i16 1188, i16 1188, i16 1188, i16 1188] }, %struct.anon.33 { [8 x i16] [i16 -13072, i16 26092, i16 20266, i16 -2793, i16 -10612, i16 -3268, i16 -4134, i16 -26044], i32 6, [8 x i16] [i16 -4134, i16 -4134, i16 -4134, i16 -4134, i16 -4134, i16 -4134, i16 -4134, i16 -4134] }, %struct.anon.33 { [8 x i16] [i16 -11420, i16 2265, i16 -10536, i16 30401, i16 22763, i16 21120, i16 23296, i16 -13246], i32 7, [8 x i16] [i16 -13246, i16 -13246, i16 -13246, i16 -13246, i16 -13246, i16 -13246, i16 -13246, i16 -13246] }], align 16
@__const.test_simde_vdupq_laneq_s32.test_vec = private unnamed_addr constant [8 x %struct.anon.34] [%struct.anon.34 { [4 x i32] [i32 -520769284, i32 1690121648, i32 2059620000, i32 -175160556], i32 1, [4 x i32] [i32 1690121648, i32 1690121648, i32 1690121648, i32 1690121648] }, %struct.anon.34 { [4 x i32] [i32 1145289614, i32 1995152945, i32 1451618795, i32 1381122466], i32 2, [4 x i32] [i32 1451618795, i32 1451618795, i32 1451618795, i32 1451618795] }, %struct.anon.34 { [4 x i32] [i32 -278199502, i32 725486439, i32 342774405, i32 44179271], i32 2, [4 x i32] [i32 342774405, i32 342774405, i32 342774405, i32 342774405] }, %struct.anon.34 { [4 x i32] [i32 -771738649, i32 801369002, i32 -1804573119, i32 -1144609096], i32 2, [4 x i32] [i32 -1804573119, i32 -1804573119, i32 -1804573119, i32 -1804573119] }, %struct.anon.34 { [4 x i32] [i32 -199416906, i32 -1136221362, i32 1524338103, i32 -1019134577], i32 1, [4 x i32] [i32 -1136221362, i32 -1136221362, i32 -1136221362, i32 -1136221362] }, %struct.anon.34 { [4 x i32] [i32 -701993709, i32 205286044, i32 -994904578, i32 -746928976], i32 2, [4 x i32] [i32 -994904578, i32 -994904578, i32 -994904578, i32 -994904578] }, %struct.anon.34 { [4 x i32] [i32 -1266343570, i32 -1203684131, i32 -671755882, i32 32125588], i32 3, [4 x i32] [i32 32125588, i32 32125588, i32 32125588, i32 32125588] }, %struct.anon.34 { [4 x i32] [i32 -37380671, i32 1542636457, i32 35693447, i32 -1737489802], i32 3, [4 x i32] [i32 -1737489802, i32 -1737489802, i32 -1737489802, i32 -1737489802] }], align 16
@__const.test_simde_vdupq_laneq_s64.test_vec = private unnamed_addr constant [8 x %struct.anon.35] [%struct.anon.35 { [2 x i64] [i64 -8011933124795626931, i64 -8152842150656023044], i32 0, [2 x i64] [i64 -8011933124795626931, i64 -8011933124795626931] }, %struct.anon.35 { [2 x i64] [i64 3685999757973111283, i64 -5386610080087765761], i32 1, [2 x i64] [i64 -5386610080087765761, i64 -5386610080087765761] }, %struct.anon.35 { [2 x i64] [i64 -2623861853923575070, i64 2913445673781549215], i32 1, [2 x i64] [i64 2913445673781549215, i64 2913445673781549215] }, %struct.anon.35 { [2 x i64] [i64 8091307841519511702, i64 -6617296750713834230], i32 0, [2 x i64] [i64 8091307841519511702, i64 8091307841519511702] }, %struct.anon.35 { [2 x i64] [i64 3479766334596526043, i64 4763859366259699991], i32 0, [2 x i64] [i64 3479766334596526043, i64 3479766334596526043] }, %struct.anon.35 { [2 x i64] [i64 -6333786973713146150, i64 -7553910520906202330], i32 0, [2 x i64] [i64 -6333786973713146150, i64 -6333786973713146150] }, %struct.anon.35 { [2 x i64] [i64 -6513945781748522339, i64 -7760827274264939690], i32 0, [2 x i64] [i64 -6513945781748522339, i64 -6513945781748522339] }, %struct.anon.35 { [2 x i64] [i64 -2932731163502779536, i64 -1373296300908956888], i32 1, [2 x i64] [i64 -1373296300908956888, i64 -1373296300908956888] }], align 16
@__const.test_simde_vdupq_laneq_u8.test_vec = private unnamed_addr constant [8 x %struct.anon.36] [%struct.anon.36 { [16 x i8] c"\D9\BE\9Bsd\F1\E6\AAc\9C\AA\AF1\7F\1F\14", i32 1, [16 x i8] c"\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE" }, %struct.anon.36 { [16 x i8] c"\A8\9F\0A\F4w2\A8m\86\F2\7Fx\DFJQ\9D", i32 5, [16 x i8] c"2222222222222222" }, %struct.anon.36 { [16 x i8] c"\C4\01\D7\AB\AB:GV\EAx\D5\09\8C\06\B2,", i32 0, [16 x i8] c"\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4\C4" }, %struct.anon.36 { [16 x i8] c"\A6\A3CN\10\C9A\8FA \D9\93\BD\BEW\BF", i32 5, [16 x i8] c"\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9\C9" }, %struct.anon.36 { [16 x i8] c"\02j\D0J\C0\BA\C2\95\C3O\9Cu{\AC\1C\1E", i32 15, [16 x i8] c"\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E" }, %struct.anon.36 { [16 x i8] c"j.\B9\AB\BD\FA\CB\96\8D\89T\E5H\EA\E7\B2", i32 10, [16 x i8] c"TTTTTTTTTTTTTTTT" }, %struct.anon.36 { [16 x i8] c"1st\F4\087C\A4\AD\BEQ\C9\DC@3\0A", i32 9, [16 x i8] c"\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE" }, %struct.anon.36 { [16 x i8] c"\DF\C7\F4\AA]\813\B1f{\9BN.U\7F\A1", i32 9, [16 x i8] c"{{{{{{{{{{{{{{{{" }], align 16
@__const.test_simde_vdupq_laneq_u16.test_vec = private unnamed_addr constant [8 x %struct.anon.37] [%struct.anon.37 { [8 x i16] [i16 12576, i16 -26863, i16 17857, i16 -13630, i16 -4824, i16 20918, i16 -11523, i16 -17577], i32 1, [8 x i16] [i16 -26863, i16 -26863, i16 -26863, i16 -26863, i16 -26863, i16 -26863, i16 -26863, i16 -26863] }, %struct.anon.37 { [8 x i16] [i16 -6899, i16 -17114, i16 -18495, i16 -5763, i16 22510, i16 -7033, i16 20626, i16 -15612], i32 2, [8 x i16] [i16 -18495, i16 -18495, i16 -18495, i16 -18495, i16 -18495, i16 -18495, i16 -18495, i16 -18495] }, %struct.anon.37 { [8 x i16] [i16 -31589, i16 24231, i16 -12210, i16 1099, i16 18465, i16 31190, i16 -12285, i16 -5754], i32 6, [8 x i16] [i16 -12285, i16 -12285, i16 -12285, i16 -12285, i16 -12285, i16 -12285, i16 -12285, i16 -12285] }, %struct.anon.37 { [8 x i16] [i16 -21949, i16 -15954, i16 -25453, i16 6680, i16 -21888, i16 -31382, i16 -13202, i16 -3552], i32 4, [8 x i16] [i16 -21888, i16 -21888, i16 -21888, i16 -21888, i16 -21888, i16 -21888, i16 -21888, i16 -21888] }, %struct.anon.37 { [8 x i16] [i16 16766, i16 -14012, i16 25925, i16 7185, i16 5598, i16 26092, i16 -7426, i16 -22360], i32 0, [8 x i16] [i16 16766, i16 16766, i16 16766, i16 16766, i16 16766, i16 16766, i16 16766, i16 16766] }, %struct.anon.37 { [8 x i16] [i16 15209, i16 -32211, i16 -21163, i16 -16596, i16 -26062, i16 21388, i16 141, i16 -12591], i32 4, [8 x i16] [i16 -26062, i16 -26062, i16 -26062, i16 -26062, i16 -26062, i16 -26062, i16 -26062, i16 -26062] }, %struct.anon.37 { [8 x i16] [i16 5019, i16 -21335, i16 -30673, i16 7105, i16 -16403, i16 -27138, i16 -29081, i16 -23809], i32 3, [8 x i16] [i16 7105, i16 7105, i16 7105, i16 7105, i16 7105, i16 7105, i16 7105, i16 7105] }, %struct.anon.37 { [8 x i16] [i16 -2175, i16 -21143, i16 -25673, i16 17224, i16 -10770, i16 -16317, i16 -30813, i16 -18853], i32 0, [8 x i16] [i16 -2175, i16 -2175, i16 -2175, i16 -2175, i16 -2175, i16 -2175, i16 -2175, i16 -2175] }], align 16
@__const.test_simde_vdupq_laneq_u32.test_vec = private unnamed_addr constant [8 x %struct.anon.38] [%struct.anon.38 { [4 x i32] [i32 -910629369, i32 -7822079, i32 982446139, i32 -1967437422], i32 2, [4 x i32] [i32 982446139, i32 982446139, i32 982446139, i32 982446139] }, %struct.anon.38 { [4 x i32] [i32 -1337048728, i32 -947569532, i32 1464740092, i32 -983597345], i32 3, [4 x i32] [i32 -983597345, i32 -983597345, i32 -983597345, i32 -983597345] }, %struct.anon.38 { [4 x i32] [i32 -1327708632, i32 1419777990, i32 211628881, i32 -25866051], i32 2, [4 x i32] [i32 211628881, i32 211628881, i32 211628881, i32 211628881] }, %struct.anon.38 { [4 x i32] [i32 -1411743195, i32 -1747724471, i32 -1927957970, i32 1052068983], i32 1, [4 x i32] [i32 -1747724471, i32 -1747724471, i32 -1747724471, i32 -1747724471] }, %struct.anon.38 { [4 x i32] [i32 104858726, i32 -180776360, i32 323352222, i32 1983505396], i32 2, [4 x i32] [i32 323352222, i32 323352222, i32 323352222, i32 323352222] }, %struct.anon.38 { [4 x i32] [i32 -1214922780, i32 1818936150, i32 112779601, i32 594338079], i32 2, [4 x i32] [i32 112779601, i32 112779601, i32 112779601, i32 112779601] }, %struct.anon.38 { [4 x i32] [i32 -1397458061, i32 -1230810511, i32 -1617258650, i32 -847030258], i32 1, [4 x i32] [i32 -1230810511, i32 -1230810511, i32 -1230810511, i32 -1230810511] }, %struct.anon.38 { [4 x i32] [i32 -1531960262, i32 1216741776, i32 1948951816, i32 1156009161], i32 0, [4 x i32] [i32 -1531960262, i32 -1531960262, i32 -1531960262, i32 -1531960262] }], align 16
@__const.test_simde_vdupq_laneq_u64.test_vec = private unnamed_addr constant [8 x %struct.anon.39] [%struct.anon.39 { [2 x i64] [i64 490532184354108820, i64 -3596885530205299625], i32 1, [2 x i64] [i64 -3596885530205299625, i64 -3596885530205299625] }, %struct.anon.39 { [2 x i64] [i64 -3394300532557521223, i64 -6272075078706614663], i32 1, [2 x i64] [i64 -6272075078706614663, i64 -6272075078706614663] }, %struct.anon.39 { [2 x i64] [i64 8707568158386885676, i64 -5969312057709592231], i32 1, [2 x i64] [i64 -5969312057709592231, i64 -5969312057709592231] }, %struct.anon.39 { [2 x i64] [i64 4682118690185958247, i64 -6215868442933858917], i32 1, [2 x i64] [i64 -6215868442933858917, i64 -6215868442933858917] }, %struct.anon.39 { [2 x i64] [i64 -139949982253661258, i64 6830403770862296378], i32 0, [2 x i64] [i64 -139949982253661258, i64 -139949982253661258] }, %struct.anon.39 { [2 x i64] [i64 2305295186427806230, i64 -67308544110914659], i32 1, [2 x i64] [i64 -67308544110914659, i64 -67308544110914659] }, %struct.anon.39 { [2 x i64] [i64 -862060853235729763, i64 -820880595798453062], i32 1, [2 x i64] [i64 -820880595798453062, i64 -820880595798453062] }, %struct.anon.39 { [2 x i64] [i64 -4522244223576721748, i64 -5563649266680825572], i32 1, [2 x i64] [i64 -5563649266680825572, i64 -5563649266680825572] }], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #17
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 40
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #17
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [40 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
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
  %arrayidx4 = getelementptr inbounds [40 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [40 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #17
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_f32() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.0], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x float>, align 8
  %r = alloca <2 x float>, align 8
  %coerce = alloca <2 x float>, align 8
  %simde_vdup_lane_f32_vec_ = alloca %union.simde_float32x2_private, align 8
  %coerce3 = alloca <2 x float>, align 8
  %simde_vdup_lane_f32_r_ = alloca %union.simde_float32x2_private, align 8
  %tmp = alloca <2 x float>, align 8
  %coerce7 = alloca <2 x float>, align 8
  %simde_vdup_lane_f32_vec_9 = alloca %union.simde_float32x2_private, align 8
  %coerce10 = alloca <2 x float>, align 8
  %simde_vdup_lane_f32_r_13 = alloca %union.simde_float32x2_private, align 8
  %tmp15 = alloca <2 x float>, align 8
  %coerce18 = alloca <2 x float>, align 8
  %coerce20 = alloca <2 x float>, align 8
  %coerce26 = alloca <2 x float>, align 8
  %coerce28 = alloca <2 x float>, align 8
  %coerce29 = alloca <2 x float>, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_f32.test_vec, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup34

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x float], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_f32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x float>, ptr %coerce, align 8, !tbaa !16
  store <2 x float> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.0, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_f32_vec_) #17
  %5 = load <2 x float>, ptr %vec, align 8, !tbaa !16
  store <2 x float> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_float32x2_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdup_lane_f32_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_f32_r_) #17
  %7 = load <2 x float>, ptr %simde_vdup_lane_f32_vec_, align 8, !tbaa !16
  %8 = load <2 x float>, ptr %simde_vdup_lane_f32_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <2 x float> %7, <2 x float> %8, <2 x i32> zeroinitializer
  store <2 x float> %shuffle, ptr %simde_vdup_lane_f32_r_, align 8, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdup_lane_f32_r_, i32 0, i32 0
  %9 = load double, ptr %coerce.dive5, align 8
  %call6 = call double @simde_float32x2_from_private(double %9) #18
  store double %call6, ptr %coerce7, align 8
  %10 = load <2 x float>, ptr %coerce7, align 8, !tbaa !16
  store <2 x float> %10, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_f32_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_f32_vec_) #17
  %11 = load <2 x float>, ptr %tmp, align 8, !tbaa !16
  store <2 x float> %11, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_f32_vec_9) #17
  %12 = load <2 x float>, ptr %vec, align 8, !tbaa !16
  store <2 x float> %12, ptr %coerce10, align 8, !tbaa !16
  %13 = load double, ptr %coerce10, align 8
  %call11 = call double @simde_float32x2_to_private(double noundef %13) #18
  %coerce.dive12 = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdup_lane_f32_vec_9, i32 0, i32 0
  store double %call11, ptr %coerce.dive12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_f32_r_13) #17
  %14 = load <2 x float>, ptr %simde_vdup_lane_f32_vec_9, align 8, !tbaa !16
  %15 = load <2 x float>, ptr %simde_vdup_lane_f32_vec_9, align 8, !tbaa !16
  %shuffle14 = shufflevector <2 x float> %14, <2 x float> %15, <2 x i32> <i32 1, i32 1>
  store <2 x float> %shuffle14, ptr %simde_vdup_lane_f32_r_13, align 8, !tbaa !16
  %coerce.dive16 = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdup_lane_f32_r_13, i32 0, i32 0
  %16 = load double, ptr %coerce.dive16, align 8
  %call17 = call double @simde_float32x2_from_private(double %16) #18
  store double %call17, ptr %coerce18, align 8
  %17 = load <2 x float>, ptr %coerce18, align 8, !tbaa !16
  store <2 x float> %17, ptr %tmp15, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_f32_r_13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_f32_vec_9) #17
  %18 = load <2 x float>, ptr %tmp15, align 8, !tbaa !16
  store <2 x float> %18, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body21

do.body21:                                        ; preds = %do.end
  %19 = load <2 x float>, ptr %r, align 8, !tbaa !16
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx22 = getelementptr inbounds [8 x %struct.anon.0], ptr %test_vec, i64 0, i64 %20
  %r23 = getelementptr inbounds %struct.anon.0, ptr %arrayidx22, i32 0, i32 2
  %arraydecay24 = getelementptr inbounds [2 x float], ptr %r23, i64 0, i64 0
  %call25 = call double @simde_vld1_f32(ptr noundef %arraydecay24)
  store double %call25, ptr %coerce26, align 8
  %21 = load <2 x float>, ptr %coerce26, align 8, !tbaa !16
  %call27 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <2 x float> %19, ptr %coerce28, align 8, !tbaa !16
  %22 = load double, ptr %coerce28, align 8
  store <2 x float> %21, ptr %coerce29, align 8, !tbaa !16
  %23 = load double, ptr %coerce29, align 8
  %call30 = call i32 @simde_test_arm_neon_assert_equal_f32x2_(double noundef %22, double noundef %23, float noundef %call27, ptr noundef @.str.43, i32 noundef 51, ptr noundef @.str.44, ptr noundef @.str.45)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body21
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body21
  br label %do.cond31

do.cond31:                                        ; preds = %if.end
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup34 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup34:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest35 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest35, label %cleanup36 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup34
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36

cleanup36:                                        ; preds = %for.end, %cleanup34
  call void @llvm.lifetime.end.p0(i64 160, ptr %test_vec) #17
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_f64() #3 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.1], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <1 x double>, align 8
  %r = alloca <1 x double>, align 8
  %indirect-arg-temp = alloca <1 x double>, align 8
  %indirect-arg-temp9 = alloca <1 x double>, align 8
  %indirect-arg-temp10 = alloca <1 x double>, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_f64.test_vec, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup13

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x double], ptr %vec1, i64 0, i64 0
  %call = call <1 x double> @simde_vld1_f64(ptr noundef %arraydecay)
  store <1 x double> %call, ptr %vec, align 8, !tbaa !16
  %2 = load <1 x double>, ptr %vec, align 8, !tbaa !16
  store <1 x double> %2, ptr %indirect-arg-temp, align 8, !tbaa !16
  %call2 = call double @simde_vdupd_lane_f64(ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp, i32 noundef 0)
  %call3 = call <1 x double> @simde_vdup_n_f64(double noundef %call2)
  store <1 x double> %call3, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load <1 x double>, ptr %r, align 8, !tbaa !16
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.1], ptr %test_vec, i64 0, i64 %4
  %r5 = getelementptr inbounds %struct.anon.1, ptr %arrayidx4, i32 0, i32 1
  %arraydecay6 = getelementptr inbounds [1 x double], ptr %r5, i64 0, i64 0
  %call7 = call <1 x double> @simde_vld1_f64(ptr noundef %arraydecay6)
  %call8 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <1 x double> %3, ptr %indirect-arg-temp9, align 8, !tbaa !16
  store <1 x double> %call7, ptr %indirect-arg-temp10, align 8, !tbaa !16
  %call11 = call i32 @simde_test_arm_neon_assert_equal_f64x1_(ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp9, ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp10, double noundef %call8, ptr noundef @.str.43, i32 noundef 104, ptr noundef @.str.44, ptr noundef @.str.47)
  %tobool = icmp ne i32 %call11, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %5 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %5, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %cleanup15 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

cleanup15:                                        ; preds = %for.end, %cleanup13
  call void @llvm.lifetime.end.p0(i64 128, ptr %test_vec) #17
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_s8() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.2], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <8 x i8>, align 8
  %r = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_vec_ = alloca %union.simde_int8x8_private, align 8
  %coerce3 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_r_ = alloca %union.simde_int8x8_private, align 8
  %tmp = alloca <8 x i8>, align 8
  %coerce7 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_vec_9 = alloca %union.simde_int8x8_private, align 8
  %coerce10 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_r_13 = alloca %union.simde_int8x8_private, align 8
  %tmp15 = alloca <8 x i8>, align 8
  %coerce18 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_vec_20 = alloca %union.simde_int8x8_private, align 8
  %coerce21 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_r_24 = alloca %union.simde_int8x8_private, align 8
  %tmp26 = alloca <8 x i8>, align 8
  %coerce29 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_vec_31 = alloca %union.simde_int8x8_private, align 8
  %coerce32 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_r_35 = alloca %union.simde_int8x8_private, align 8
  %tmp37 = alloca <8 x i8>, align 8
  %coerce40 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_vec_42 = alloca %union.simde_int8x8_private, align 8
  %coerce43 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_r_46 = alloca %union.simde_int8x8_private, align 8
  %tmp48 = alloca <8 x i8>, align 8
  %coerce51 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_vec_53 = alloca %union.simde_int8x8_private, align 8
  %coerce54 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_r_57 = alloca %union.simde_int8x8_private, align 8
  %tmp59 = alloca <8 x i8>, align 8
  %coerce62 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_vec_64 = alloca %union.simde_int8x8_private, align 8
  %coerce65 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_r_68 = alloca %union.simde_int8x8_private, align 8
  %tmp70 = alloca <8 x i8>, align 8
  %coerce73 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_vec_75 = alloca %union.simde_int8x8_private, align 8
  %coerce76 = alloca <8 x i8>, align 8
  %simde_vdup_lane_s8_r_79 = alloca %union.simde_int8x8_private, align 8
  %tmp81 = alloca <8 x i8>, align 8
  %coerce84 = alloca <8 x i8>, align 8
  %coerce86 = alloca <8 x i8>, align 8
  %coerce92 = alloca <8 x i8>, align 8
  %coerce93 = alloca <8 x i8>, align 8
  %coerce94 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_s8.test_vec, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_s8(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.2, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb19
    i32 3, label %sw.bb30
    i32 4, label %sw.bb41
    i32 5, label %sw.bb52
    i32 6, label %sw.bb63
    i32 7, label %sw.bb74
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_vec_) #17
  %5 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int8x8_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_r_) #17
  %7 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_, align 8, !tbaa !16
  %8 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <8 x i8> %7, <8 x i8> %8, <8 x i32> zeroinitializer
  store <8 x i8> %shuffle, ptr %simde_vdup_lane_s8_r_, align 8, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_r_, i32 0, i32 0
  %9 = load double, ptr %coerce.dive5, align 8
  %call6 = call double @simde_int8x8_from_private(double %9) #18
  store double %call6, ptr %coerce7, align 8
  %10 = load <8 x i8>, ptr %coerce7, align 8, !tbaa !16
  store <8 x i8> %10, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_vec_) #17
  %11 = load <8 x i8>, ptr %tmp, align 8, !tbaa !16
  store <8 x i8> %11, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_vec_9) #17
  %12 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %12, ptr %coerce10, align 8, !tbaa !16
  %13 = load double, ptr %coerce10, align 8
  %call11 = call double @simde_int8x8_to_private(double noundef %13) #18
  %coerce.dive12 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_vec_9, i32 0, i32 0
  store double %call11, ptr %coerce.dive12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_r_13) #17
  %14 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_9, align 8, !tbaa !16
  %15 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_9, align 8, !tbaa !16
  %shuffle14 = shufflevector <8 x i8> %14, <8 x i8> %15, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <8 x i8> %shuffle14, ptr %simde_vdup_lane_s8_r_13, align 8, !tbaa !16
  %coerce.dive16 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_r_13, i32 0, i32 0
  %16 = load double, ptr %coerce.dive16, align 8
  %call17 = call double @simde_int8x8_from_private(double %16) #18
  store double %call17, ptr %coerce18, align 8
  %17 = load <8 x i8>, ptr %coerce18, align 8, !tbaa !16
  store <8 x i8> %17, ptr %tmp15, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_r_13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_vec_9) #17
  %18 = load <8 x i8>, ptr %tmp15, align 8, !tbaa !16
  store <8 x i8> %18, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_vec_20) #17
  %19 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %19, ptr %coerce21, align 8, !tbaa !16
  %20 = load double, ptr %coerce21, align 8
  %call22 = call double @simde_int8x8_to_private(double noundef %20) #18
  %coerce.dive23 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_vec_20, i32 0, i32 0
  store double %call22, ptr %coerce.dive23, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_r_24) #17
  %21 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_20, align 8, !tbaa !16
  %22 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_20, align 8, !tbaa !16
  %shuffle25 = shufflevector <8 x i8> %21, <8 x i8> %22, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <8 x i8> %shuffle25, ptr %simde_vdup_lane_s8_r_24, align 8, !tbaa !16
  %coerce.dive27 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_r_24, i32 0, i32 0
  %23 = load double, ptr %coerce.dive27, align 8
  %call28 = call double @simde_int8x8_from_private(double %23) #18
  store double %call28, ptr %coerce29, align 8
  %24 = load <8 x i8>, ptr %coerce29, align 8, !tbaa !16
  store <8 x i8> %24, ptr %tmp26, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_r_24) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_vec_20) #17
  %25 = load <8 x i8>, ptr %tmp26, align 8, !tbaa !16
  store <8 x i8> %25, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_vec_31) #17
  %26 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %26, ptr %coerce32, align 8, !tbaa !16
  %27 = load double, ptr %coerce32, align 8
  %call33 = call double @simde_int8x8_to_private(double noundef %27) #18
  %coerce.dive34 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_vec_31, i32 0, i32 0
  store double %call33, ptr %coerce.dive34, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_r_35) #17
  %28 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_31, align 8, !tbaa !16
  %29 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_31, align 8, !tbaa !16
  %shuffle36 = shufflevector <8 x i8> %28, <8 x i8> %29, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <8 x i8> %shuffle36, ptr %simde_vdup_lane_s8_r_35, align 8, !tbaa !16
  %coerce.dive38 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_r_35, i32 0, i32 0
  %30 = load double, ptr %coerce.dive38, align 8
  %call39 = call double @simde_int8x8_from_private(double %30) #18
  store double %call39, ptr %coerce40, align 8
  %31 = load <8 x i8>, ptr %coerce40, align 8, !tbaa !16
  store <8 x i8> %31, ptr %tmp37, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_r_35) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_vec_31) #17
  %32 = load <8 x i8>, ptr %tmp37, align 8, !tbaa !16
  store <8 x i8> %32, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_vec_42) #17
  %33 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %33, ptr %coerce43, align 8, !tbaa !16
  %34 = load double, ptr %coerce43, align 8
  %call44 = call double @simde_int8x8_to_private(double noundef %34) #18
  %coerce.dive45 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_vec_42, i32 0, i32 0
  store double %call44, ptr %coerce.dive45, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_r_46) #17
  %35 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_42, align 8, !tbaa !16
  %36 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_42, align 8, !tbaa !16
  %shuffle47 = shufflevector <8 x i8> %35, <8 x i8> %36, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <8 x i8> %shuffle47, ptr %simde_vdup_lane_s8_r_46, align 8, !tbaa !16
  %coerce.dive49 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_r_46, i32 0, i32 0
  %37 = load double, ptr %coerce.dive49, align 8
  %call50 = call double @simde_int8x8_from_private(double %37) #18
  store double %call50, ptr %coerce51, align 8
  %38 = load <8 x i8>, ptr %coerce51, align 8, !tbaa !16
  store <8 x i8> %38, ptr %tmp48, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_r_46) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_vec_42) #17
  %39 = load <8 x i8>, ptr %tmp48, align 8, !tbaa !16
  store <8 x i8> %39, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb52:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_vec_53) #17
  %40 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %40, ptr %coerce54, align 8, !tbaa !16
  %41 = load double, ptr %coerce54, align 8
  %call55 = call double @simde_int8x8_to_private(double noundef %41) #18
  %coerce.dive56 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_vec_53, i32 0, i32 0
  store double %call55, ptr %coerce.dive56, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_r_57) #17
  %42 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_53, align 8, !tbaa !16
  %43 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_53, align 8, !tbaa !16
  %shuffle58 = shufflevector <8 x i8> %42, <8 x i8> %43, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <8 x i8> %shuffle58, ptr %simde_vdup_lane_s8_r_57, align 8, !tbaa !16
  %coerce.dive60 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_r_57, i32 0, i32 0
  %44 = load double, ptr %coerce.dive60, align 8
  %call61 = call double @simde_int8x8_from_private(double %44) #18
  store double %call61, ptr %coerce62, align 8
  %45 = load <8 x i8>, ptr %coerce62, align 8, !tbaa !16
  store <8 x i8> %45, ptr %tmp59, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_r_57) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_vec_53) #17
  %46 = load <8 x i8>, ptr %tmp59, align 8, !tbaa !16
  store <8 x i8> %46, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb63:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_vec_64) #17
  %47 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %47, ptr %coerce65, align 8, !tbaa !16
  %48 = load double, ptr %coerce65, align 8
  %call66 = call double @simde_int8x8_to_private(double noundef %48) #18
  %coerce.dive67 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_vec_64, i32 0, i32 0
  store double %call66, ptr %coerce.dive67, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_r_68) #17
  %49 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_64, align 8, !tbaa !16
  %50 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_64, align 8, !tbaa !16
  %shuffle69 = shufflevector <8 x i8> %49, <8 x i8> %50, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <8 x i8> %shuffle69, ptr %simde_vdup_lane_s8_r_68, align 8, !tbaa !16
  %coerce.dive71 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_r_68, i32 0, i32 0
  %51 = load double, ptr %coerce.dive71, align 8
  %call72 = call double @simde_int8x8_from_private(double %51) #18
  store double %call72, ptr %coerce73, align 8
  %52 = load <8 x i8>, ptr %coerce73, align 8, !tbaa !16
  store <8 x i8> %52, ptr %tmp70, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_r_68) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_vec_64) #17
  %53 = load <8 x i8>, ptr %tmp70, align 8, !tbaa !16
  store <8 x i8> %53, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb74:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_vec_75) #17
  %54 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %54, ptr %coerce76, align 8, !tbaa !16
  %55 = load double, ptr %coerce76, align 8
  %call77 = call double @simde_int8x8_to_private(double noundef %55) #18
  %coerce.dive78 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_vec_75, i32 0, i32 0
  store double %call77, ptr %coerce.dive78, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s8_r_79) #17
  %56 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_75, align 8, !tbaa !16
  %57 = load <8 x i8>, ptr %simde_vdup_lane_s8_vec_75, align 8, !tbaa !16
  %shuffle80 = shufflevector <8 x i8> %56, <8 x i8> %57, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <8 x i8> %shuffle80, ptr %simde_vdup_lane_s8_r_79, align 8, !tbaa !16
  %coerce.dive82 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_lane_s8_r_79, i32 0, i32 0
  %58 = load double, ptr %coerce.dive82, align 8
  %call83 = call double @simde_int8x8_from_private(double %58) #18
  store double %call83, ptr %coerce84, align 8
  %59 = load <8 x i8>, ptr %coerce84, align 8, !tbaa !16
  store <8 x i8> %59, ptr %tmp81, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_r_79) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s8_vec_75) #17
  %60 = load <8 x i8>, ptr %tmp81, align 8, !tbaa !16
  store <8 x i8> %60, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb74, %sw.bb63, %sw.bb52, %sw.bb41, %sw.bb30, %sw.bb19, %sw.bb8, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body87

do.body87:                                        ; preds = %do.end
  %61 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  %62 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx88 = getelementptr inbounds [8 x %struct.anon.2], ptr %test_vec, i64 0, i64 %62
  %r89 = getelementptr inbounds %struct.anon.2, ptr %arrayidx88, i32 0, i32 2
  %arraydecay90 = getelementptr inbounds [8 x i8], ptr %r89, i64 0, i64 0
  %call91 = call double @simde_vld1_s8(ptr noundef %arraydecay90)
  store double %call91, ptr %coerce92, align 8
  %63 = load <8 x i8>, ptr %coerce92, align 8, !tbaa !16
  store <8 x i8> %61, ptr %coerce93, align 8, !tbaa !16
  %64 = load double, ptr %coerce93, align 8
  store <8 x i8> %63, ptr %coerce94, align 8, !tbaa !16
  %65 = load double, ptr %coerce94, align 8
  %call95 = call i32 @simde_test_arm_neon_assert_equal_i8x8_(double noundef %64, double noundef %65, ptr noundef @.str.43, i32 noundef 162, ptr noundef @.str.44, ptr noundef @.str.48)
  %tobool = icmp ne i32 %call95, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body87
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body87
  br label %do.cond96

do.cond96:                                        ; preds = %if.end
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup99 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %66 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %66, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup99:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest100 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest100, label %cleanup101 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup99
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup101

cleanup101:                                       ; preds = %for.end, %cleanup99
  call void @llvm.lifetime.end.p0(i64 160, ptr %test_vec) #17
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_s16() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.3], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x i16>, align 8
  %r = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %simde_vdup_lane_s16_vec_ = alloca %union.simde_int16x4_private, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %simde_vdup_lane_s16_r_ = alloca %union.simde_int16x4_private, align 8
  %tmp = alloca <4 x i16>, align 8
  %coerce7 = alloca <4 x i16>, align 8
  %simde_vdup_lane_s16_vec_9 = alloca %union.simde_int16x4_private, align 8
  %coerce10 = alloca <4 x i16>, align 8
  %simde_vdup_lane_s16_r_13 = alloca %union.simde_int16x4_private, align 8
  %tmp15 = alloca <4 x i16>, align 8
  %coerce18 = alloca <4 x i16>, align 8
  %simde_vdup_lane_s16_vec_20 = alloca %union.simde_int16x4_private, align 8
  %coerce21 = alloca <4 x i16>, align 8
  %simde_vdup_lane_s16_r_24 = alloca %union.simde_int16x4_private, align 8
  %tmp26 = alloca <4 x i16>, align 8
  %coerce29 = alloca <4 x i16>, align 8
  %simde_vdup_lane_s16_vec_31 = alloca %union.simde_int16x4_private, align 8
  %coerce32 = alloca <4 x i16>, align 8
  %simde_vdup_lane_s16_r_35 = alloca %union.simde_int16x4_private, align 8
  %tmp37 = alloca <4 x i16>, align 8
  %coerce40 = alloca <4 x i16>, align 8
  %coerce42 = alloca <4 x i16>, align 8
  %coerce48 = alloca <4 x i16>, align 8
  %coerce49 = alloca <4 x i16>, align 8
  %coerce50 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_s16.test_vec, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.3, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_s16(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.3, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb19
    i32 3, label %sw.bb30
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s16_vec_) #17
  %5 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int16x4_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_lane_s16_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s16_r_) #17
  %7 = load <4 x i16>, ptr %simde_vdup_lane_s16_vec_, align 8, !tbaa !16
  %8 = load <4 x i16>, ptr %simde_vdup_lane_s16_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <4 x i16> %7, <4 x i16> %8, <4 x i32> zeroinitializer
  store <4 x i16> %shuffle, ptr %simde_vdup_lane_s16_r_, align 8, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_lane_s16_r_, i32 0, i32 0
  %9 = load double, ptr %coerce.dive5, align 8
  %call6 = call double @simde_int16x4_from_private(double %9) #18
  store double %call6, ptr %coerce7, align 8
  %10 = load <4 x i16>, ptr %coerce7, align 8, !tbaa !16
  store <4 x i16> %10, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s16_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s16_vec_) #17
  %11 = load <4 x i16>, ptr %tmp, align 8, !tbaa !16
  store <4 x i16> %11, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s16_vec_9) #17
  %12 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %12, ptr %coerce10, align 8, !tbaa !16
  %13 = load double, ptr %coerce10, align 8
  %call11 = call double @simde_int16x4_to_private(double noundef %13) #18
  %coerce.dive12 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_lane_s16_vec_9, i32 0, i32 0
  store double %call11, ptr %coerce.dive12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s16_r_13) #17
  %14 = load <4 x i16>, ptr %simde_vdup_lane_s16_vec_9, align 8, !tbaa !16
  %15 = load <4 x i16>, ptr %simde_vdup_lane_s16_vec_9, align 8, !tbaa !16
  %shuffle14 = shufflevector <4 x i16> %14, <4 x i16> %15, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i16> %shuffle14, ptr %simde_vdup_lane_s16_r_13, align 8, !tbaa !16
  %coerce.dive16 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_lane_s16_r_13, i32 0, i32 0
  %16 = load double, ptr %coerce.dive16, align 8
  %call17 = call double @simde_int16x4_from_private(double %16) #18
  store double %call17, ptr %coerce18, align 8
  %17 = load <4 x i16>, ptr %coerce18, align 8, !tbaa !16
  store <4 x i16> %17, ptr %tmp15, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s16_r_13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s16_vec_9) #17
  %18 = load <4 x i16>, ptr %tmp15, align 8, !tbaa !16
  store <4 x i16> %18, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s16_vec_20) #17
  %19 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %19, ptr %coerce21, align 8, !tbaa !16
  %20 = load double, ptr %coerce21, align 8
  %call22 = call double @simde_int16x4_to_private(double noundef %20) #18
  %coerce.dive23 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_lane_s16_vec_20, i32 0, i32 0
  store double %call22, ptr %coerce.dive23, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s16_r_24) #17
  %21 = load <4 x i16>, ptr %simde_vdup_lane_s16_vec_20, align 8, !tbaa !16
  %22 = load <4 x i16>, ptr %simde_vdup_lane_s16_vec_20, align 8, !tbaa !16
  %shuffle25 = shufflevector <4 x i16> %21, <4 x i16> %22, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  store <4 x i16> %shuffle25, ptr %simde_vdup_lane_s16_r_24, align 8, !tbaa !16
  %coerce.dive27 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_lane_s16_r_24, i32 0, i32 0
  %23 = load double, ptr %coerce.dive27, align 8
  %call28 = call double @simde_int16x4_from_private(double %23) #18
  store double %call28, ptr %coerce29, align 8
  %24 = load <4 x i16>, ptr %coerce29, align 8, !tbaa !16
  store <4 x i16> %24, ptr %tmp26, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s16_r_24) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s16_vec_20) #17
  %25 = load <4 x i16>, ptr %tmp26, align 8, !tbaa !16
  store <4 x i16> %25, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s16_vec_31) #17
  %26 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %26, ptr %coerce32, align 8, !tbaa !16
  %27 = load double, ptr %coerce32, align 8
  %call33 = call double @simde_int16x4_to_private(double noundef %27) #18
  %coerce.dive34 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_lane_s16_vec_31, i32 0, i32 0
  store double %call33, ptr %coerce.dive34, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s16_r_35) #17
  %28 = load <4 x i16>, ptr %simde_vdup_lane_s16_vec_31, align 8, !tbaa !16
  %29 = load <4 x i16>, ptr %simde_vdup_lane_s16_vec_31, align 8, !tbaa !16
  %shuffle36 = shufflevector <4 x i16> %28, <4 x i16> %29, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  store <4 x i16> %shuffle36, ptr %simde_vdup_lane_s16_r_35, align 8, !tbaa !16
  %coerce.dive38 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_lane_s16_r_35, i32 0, i32 0
  %30 = load double, ptr %coerce.dive38, align 8
  %call39 = call double @simde_int16x4_from_private(double %30) #18
  store double %call39, ptr %coerce40, align 8
  %31 = load <4 x i16>, ptr %coerce40, align 8, !tbaa !16
  store <4 x i16> %31, ptr %tmp37, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s16_r_35) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s16_vec_31) #17
  %32 = load <4 x i16>, ptr %tmp37, align 8, !tbaa !16
  store <4 x i16> %32, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb19, %sw.bb8, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body43

do.body43:                                        ; preds = %do.end
  %33 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  %34 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx44 = getelementptr inbounds [8 x %struct.anon.3], ptr %test_vec, i64 0, i64 %34
  %r45 = getelementptr inbounds %struct.anon.3, ptr %arrayidx44, i32 0, i32 2
  %arraydecay46 = getelementptr inbounds [4 x i16], ptr %r45, i64 0, i64 0
  %call47 = call double @simde_vld1_s16(ptr noundef %arraydecay46)
  store double %call47, ptr %coerce48, align 8
  %35 = load <4 x i16>, ptr %coerce48, align 8, !tbaa !16
  store <4 x i16> %33, ptr %coerce49, align 8, !tbaa !16
  %36 = load double, ptr %coerce49, align 8
  store <4 x i16> %35, ptr %coerce50, align 8, !tbaa !16
  %37 = load double, ptr %coerce50, align 8
  %call51 = call i32 @simde_test_arm_neon_assert_equal_i16x4_(double noundef %36, double noundef %37, ptr noundef @.str.43, i32 noundef 224, ptr noundef @.str.44, ptr noundef @.str.50)
  %tobool = icmp ne i32 %call51, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body43
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body43
  br label %do.cond52

do.cond52:                                        ; preds = %if.end
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %38 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %38, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup55:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest56 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest56, label %cleanup57 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup55
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %for.end, %cleanup55
  call void @llvm.lifetime.end.p0(i64 160, ptr %test_vec) #17
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_s32() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.4], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x i32>, align 8
  %r = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %simde_vdup_lane_s32_vec_ = alloca %union.simde_int32x2_private, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %simde_vdup_lane_s32_r_ = alloca %union.simde_int32x2_private, align 8
  %tmp = alloca <2 x i32>, align 8
  %coerce7 = alloca <2 x i32>, align 8
  %simde_vdup_lane_s32_vec_9 = alloca %union.simde_int32x2_private, align 8
  %coerce10 = alloca <2 x i32>, align 8
  %simde_vdup_lane_s32_r_13 = alloca %union.simde_int32x2_private, align 8
  %tmp15 = alloca <2 x i32>, align 8
  %coerce18 = alloca <2 x i32>, align 8
  %coerce20 = alloca <2 x i32>, align 8
  %coerce26 = alloca <2 x i32>, align 8
  %coerce27 = alloca <2 x i32>, align 8
  %coerce28 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_s32.test_vec, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.4, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_s32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.4, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s32_vec_) #17
  %5 = load <2 x i32>, ptr %vec, align 8, !tbaa !16
  store <2 x i32> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int32x2_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdup_lane_s32_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s32_r_) #17
  %7 = load <2 x i32>, ptr %simde_vdup_lane_s32_vec_, align 8, !tbaa !16
  %8 = load <2 x i32>, ptr %simde_vdup_lane_s32_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <2 x i32> %7, <2 x i32> %8, <2 x i32> zeroinitializer
  store <2 x i32> %shuffle, ptr %simde_vdup_lane_s32_r_, align 8, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdup_lane_s32_r_, i32 0, i32 0
  %9 = load double, ptr %coerce.dive5, align 8
  %call6 = call double @simde_int32x2_from_private(double %9) #18
  store double %call6, ptr %coerce7, align 8
  %10 = load <2 x i32>, ptr %coerce7, align 8, !tbaa !16
  store <2 x i32> %10, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s32_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s32_vec_) #17
  %11 = load <2 x i32>, ptr %tmp, align 8, !tbaa !16
  store <2 x i32> %11, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s32_vec_9) #17
  %12 = load <2 x i32>, ptr %vec, align 8, !tbaa !16
  store <2 x i32> %12, ptr %coerce10, align 8, !tbaa !16
  %13 = load double, ptr %coerce10, align 8
  %call11 = call double @simde_int32x2_to_private(double noundef %13) #18
  %coerce.dive12 = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdup_lane_s32_vec_9, i32 0, i32 0
  store double %call11, ptr %coerce.dive12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_s32_r_13) #17
  %14 = load <2 x i32>, ptr %simde_vdup_lane_s32_vec_9, align 8, !tbaa !16
  %15 = load <2 x i32>, ptr %simde_vdup_lane_s32_vec_9, align 8, !tbaa !16
  %shuffle14 = shufflevector <2 x i32> %14, <2 x i32> %15, <2 x i32> <i32 1, i32 1>
  store <2 x i32> %shuffle14, ptr %simde_vdup_lane_s32_r_13, align 8, !tbaa !16
  %coerce.dive16 = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdup_lane_s32_r_13, i32 0, i32 0
  %16 = load double, ptr %coerce.dive16, align 8
  %call17 = call double @simde_int32x2_from_private(double %16) #18
  store double %call17, ptr %coerce18, align 8
  %17 = load <2 x i32>, ptr %coerce18, align 8, !tbaa !16
  store <2 x i32> %17, ptr %tmp15, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s32_r_13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_s32_vec_9) #17
  %18 = load <2 x i32>, ptr %tmp15, align 8, !tbaa !16
  store <2 x i32> %18, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body21

do.body21:                                        ; preds = %do.end
  %19 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx22 = getelementptr inbounds [8 x %struct.anon.4], ptr %test_vec, i64 0, i64 %20
  %r23 = getelementptr inbounds %struct.anon.4, ptr %arrayidx22, i32 0, i32 2
  %arraydecay24 = getelementptr inbounds [2 x i32], ptr %r23, i64 0, i64 0
  %call25 = call double @simde_vld1_s32(ptr noundef %arraydecay24)
  store double %call25, ptr %coerce26, align 8
  %21 = load <2 x i32>, ptr %coerce26, align 8, !tbaa !16
  store <2 x i32> %19, ptr %coerce27, align 8, !tbaa !16
  %22 = load double, ptr %coerce27, align 8
  store <2 x i32> %21, ptr %coerce28, align 8, !tbaa !16
  %23 = load double, ptr %coerce28, align 8
  %call29 = call i32 @simde_test_arm_neon_assert_equal_i32x2_(double noundef %22, double noundef %23, ptr noundef @.str.43, i32 noundef 286, ptr noundef @.str.44, ptr noundef @.str.51)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body21
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body21
  br label %do.cond30

do.cond30:                                        ; preds = %if.end
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup33:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest34 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest34, label %cleanup35 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup33
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %for.end, %cleanup33
  call void @llvm.lifetime.end.p0(i64 160, ptr %test_vec) #17
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_s64() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.5], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <1 x i64>, align 8
  %r = alloca <1 x i64>, align 8
  %coerce = alloca <1 x i64>, align 8
  %coerce2 = alloca <1 x i64>, align 8
  %coerce5 = alloca <1 x i64>, align 8
  %coerce10 = alloca <1 x i64>, align 8
  %coerce11 = alloca <1 x i64>, align 8
  %coerce12 = alloca <1 x i64>, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_s64.test_vec, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.5], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.5, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x i64], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_s64(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %vec, align 8, !tbaa !16
  %3 = load <1 x i64>, ptr %vec, align 8, !tbaa !16
  store <1 x i64> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call i64 @simde_vdupd_lane_s64(double noundef %4, i32 noundef 0)
  %call4 = call double @simde_vdup_n_s64(i64 noundef %call3)
  store double %call4, ptr %coerce5, align 8
  %5 = load <1 x i64>, ptr %coerce5, align 8, !tbaa !16
  store <1 x i64> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds [8 x %struct.anon.5], ptr %test_vec, i64 0, i64 %7
  %r7 = getelementptr inbounds %struct.anon.5, ptr %arrayidx6, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [1 x i64], ptr %r7, i64 0, i64 0
  %call9 = call double @simde_vld1_s64(ptr noundef %arraydecay8)
  store double %call9, ptr %coerce10, align 8
  %8 = load <1 x i64>, ptr %coerce10, align 8, !tbaa !16
  store <1 x i64> %6, ptr %coerce11, align 8, !tbaa !16
  %9 = load double, ptr %coerce11, align 8
  store <1 x i64> %8, ptr %coerce12, align 8, !tbaa !16
  %10 = load double, ptr %coerce12, align 8
  %call13 = call i32 @simde_test_arm_neon_assert_equal_i64x1_(double noundef %9, double noundef %10, ptr noundef @.str.43, i32 noundef 339, ptr noundef @.str.44, ptr noundef @.str.52)
  %tobool = icmp ne i32 %call13, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 128, ptr %test_vec) #17
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_u8() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.6], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <8 x i8>, align 8
  %r = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_vec_ = alloca %union.simde_uint8x8_private, align 8
  %coerce3 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_r_ = alloca %union.simde_uint8x8_private, align 8
  %tmp = alloca <8 x i8>, align 8
  %coerce7 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_vec_9 = alloca %union.simde_uint8x8_private, align 8
  %coerce10 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_r_13 = alloca %union.simde_uint8x8_private, align 8
  %tmp15 = alloca <8 x i8>, align 8
  %coerce18 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_vec_20 = alloca %union.simde_uint8x8_private, align 8
  %coerce21 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_r_24 = alloca %union.simde_uint8x8_private, align 8
  %tmp26 = alloca <8 x i8>, align 8
  %coerce29 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_vec_31 = alloca %union.simde_uint8x8_private, align 8
  %coerce32 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_r_35 = alloca %union.simde_uint8x8_private, align 8
  %tmp37 = alloca <8 x i8>, align 8
  %coerce40 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_vec_42 = alloca %union.simde_uint8x8_private, align 8
  %coerce43 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_r_46 = alloca %union.simde_uint8x8_private, align 8
  %tmp48 = alloca <8 x i8>, align 8
  %coerce51 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_vec_53 = alloca %union.simde_uint8x8_private, align 8
  %coerce54 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_r_57 = alloca %union.simde_uint8x8_private, align 8
  %tmp59 = alloca <8 x i8>, align 8
  %coerce62 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_vec_64 = alloca %union.simde_uint8x8_private, align 8
  %coerce65 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_r_68 = alloca %union.simde_uint8x8_private, align 8
  %tmp70 = alloca <8 x i8>, align 8
  %coerce73 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_vec_75 = alloca %union.simde_uint8x8_private, align 8
  %coerce76 = alloca <8 x i8>, align 8
  %simde_vdup_lane_u8_r_79 = alloca %union.simde_uint8x8_private, align 8
  %tmp81 = alloca <8 x i8>, align 8
  %coerce84 = alloca <8 x i8>, align 8
  %coerce86 = alloca <8 x i8>, align 8
  %coerce92 = alloca <8 x i8>, align 8
  %coerce93 = alloca <8 x i8>, align 8
  %coerce94 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_u8.test_vec, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup99

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.6], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.6, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_u8(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.6], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.6, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb19
    i32 3, label %sw.bb30
    i32 4, label %sw.bb41
    i32 5, label %sw.bb52
    i32 6, label %sw.bb63
    i32 7, label %sw.bb74
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_vec_) #17
  %5 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_uint8x8_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_r_) #17
  %7 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_, align 8, !tbaa !16
  %8 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <8 x i8> %7, <8 x i8> %8, <8 x i32> zeroinitializer
  store <8 x i8> %shuffle, ptr %simde_vdup_lane_u8_r_, align 8, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_r_, i32 0, i32 0
  %9 = load double, ptr %coerce.dive5, align 8
  %call6 = call double @simde_uint8x8_from_private(double %9) #18
  store double %call6, ptr %coerce7, align 8
  %10 = load <8 x i8>, ptr %coerce7, align 8, !tbaa !16
  store <8 x i8> %10, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_vec_) #17
  %11 = load <8 x i8>, ptr %tmp, align 8, !tbaa !16
  store <8 x i8> %11, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_vec_9) #17
  %12 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %12, ptr %coerce10, align 8, !tbaa !16
  %13 = load double, ptr %coerce10, align 8
  %call11 = call double @simde_uint8x8_to_private(double noundef %13) #18
  %coerce.dive12 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_vec_9, i32 0, i32 0
  store double %call11, ptr %coerce.dive12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_r_13) #17
  %14 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_9, align 8, !tbaa !16
  %15 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_9, align 8, !tbaa !16
  %shuffle14 = shufflevector <8 x i8> %14, <8 x i8> %15, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <8 x i8> %shuffle14, ptr %simde_vdup_lane_u8_r_13, align 8, !tbaa !16
  %coerce.dive16 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_r_13, i32 0, i32 0
  %16 = load double, ptr %coerce.dive16, align 8
  %call17 = call double @simde_uint8x8_from_private(double %16) #18
  store double %call17, ptr %coerce18, align 8
  %17 = load <8 x i8>, ptr %coerce18, align 8, !tbaa !16
  store <8 x i8> %17, ptr %tmp15, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_r_13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_vec_9) #17
  %18 = load <8 x i8>, ptr %tmp15, align 8, !tbaa !16
  store <8 x i8> %18, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_vec_20) #17
  %19 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %19, ptr %coerce21, align 8, !tbaa !16
  %20 = load double, ptr %coerce21, align 8
  %call22 = call double @simde_uint8x8_to_private(double noundef %20) #18
  %coerce.dive23 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_vec_20, i32 0, i32 0
  store double %call22, ptr %coerce.dive23, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_r_24) #17
  %21 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_20, align 8, !tbaa !16
  %22 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_20, align 8, !tbaa !16
  %shuffle25 = shufflevector <8 x i8> %21, <8 x i8> %22, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <8 x i8> %shuffle25, ptr %simde_vdup_lane_u8_r_24, align 8, !tbaa !16
  %coerce.dive27 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_r_24, i32 0, i32 0
  %23 = load double, ptr %coerce.dive27, align 8
  %call28 = call double @simde_uint8x8_from_private(double %23) #18
  store double %call28, ptr %coerce29, align 8
  %24 = load <8 x i8>, ptr %coerce29, align 8, !tbaa !16
  store <8 x i8> %24, ptr %tmp26, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_r_24) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_vec_20) #17
  %25 = load <8 x i8>, ptr %tmp26, align 8, !tbaa !16
  store <8 x i8> %25, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_vec_31) #17
  %26 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %26, ptr %coerce32, align 8, !tbaa !16
  %27 = load double, ptr %coerce32, align 8
  %call33 = call double @simde_uint8x8_to_private(double noundef %27) #18
  %coerce.dive34 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_vec_31, i32 0, i32 0
  store double %call33, ptr %coerce.dive34, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_r_35) #17
  %28 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_31, align 8, !tbaa !16
  %29 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_31, align 8, !tbaa !16
  %shuffle36 = shufflevector <8 x i8> %28, <8 x i8> %29, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <8 x i8> %shuffle36, ptr %simde_vdup_lane_u8_r_35, align 8, !tbaa !16
  %coerce.dive38 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_r_35, i32 0, i32 0
  %30 = load double, ptr %coerce.dive38, align 8
  %call39 = call double @simde_uint8x8_from_private(double %30) #18
  store double %call39, ptr %coerce40, align 8
  %31 = load <8 x i8>, ptr %coerce40, align 8, !tbaa !16
  store <8 x i8> %31, ptr %tmp37, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_r_35) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_vec_31) #17
  %32 = load <8 x i8>, ptr %tmp37, align 8, !tbaa !16
  store <8 x i8> %32, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb41:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_vec_42) #17
  %33 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %33, ptr %coerce43, align 8, !tbaa !16
  %34 = load double, ptr %coerce43, align 8
  %call44 = call double @simde_uint8x8_to_private(double noundef %34) #18
  %coerce.dive45 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_vec_42, i32 0, i32 0
  store double %call44, ptr %coerce.dive45, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_r_46) #17
  %35 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_42, align 8, !tbaa !16
  %36 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_42, align 8, !tbaa !16
  %shuffle47 = shufflevector <8 x i8> %35, <8 x i8> %36, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <8 x i8> %shuffle47, ptr %simde_vdup_lane_u8_r_46, align 8, !tbaa !16
  %coerce.dive49 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_r_46, i32 0, i32 0
  %37 = load double, ptr %coerce.dive49, align 8
  %call50 = call double @simde_uint8x8_from_private(double %37) #18
  store double %call50, ptr %coerce51, align 8
  %38 = load <8 x i8>, ptr %coerce51, align 8, !tbaa !16
  store <8 x i8> %38, ptr %tmp48, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_r_46) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_vec_42) #17
  %39 = load <8 x i8>, ptr %tmp48, align 8, !tbaa !16
  store <8 x i8> %39, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb52:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_vec_53) #17
  %40 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %40, ptr %coerce54, align 8, !tbaa !16
  %41 = load double, ptr %coerce54, align 8
  %call55 = call double @simde_uint8x8_to_private(double noundef %41) #18
  %coerce.dive56 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_vec_53, i32 0, i32 0
  store double %call55, ptr %coerce.dive56, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_r_57) #17
  %42 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_53, align 8, !tbaa !16
  %43 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_53, align 8, !tbaa !16
  %shuffle58 = shufflevector <8 x i8> %42, <8 x i8> %43, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <8 x i8> %shuffle58, ptr %simde_vdup_lane_u8_r_57, align 8, !tbaa !16
  %coerce.dive60 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_r_57, i32 0, i32 0
  %44 = load double, ptr %coerce.dive60, align 8
  %call61 = call double @simde_uint8x8_from_private(double %44) #18
  store double %call61, ptr %coerce62, align 8
  %45 = load <8 x i8>, ptr %coerce62, align 8, !tbaa !16
  store <8 x i8> %45, ptr %tmp59, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_r_57) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_vec_53) #17
  %46 = load <8 x i8>, ptr %tmp59, align 8, !tbaa !16
  store <8 x i8> %46, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb63:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_vec_64) #17
  %47 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %47, ptr %coerce65, align 8, !tbaa !16
  %48 = load double, ptr %coerce65, align 8
  %call66 = call double @simde_uint8x8_to_private(double noundef %48) #18
  %coerce.dive67 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_vec_64, i32 0, i32 0
  store double %call66, ptr %coerce.dive67, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_r_68) #17
  %49 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_64, align 8, !tbaa !16
  %50 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_64, align 8, !tbaa !16
  %shuffle69 = shufflevector <8 x i8> %49, <8 x i8> %50, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <8 x i8> %shuffle69, ptr %simde_vdup_lane_u8_r_68, align 8, !tbaa !16
  %coerce.dive71 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_r_68, i32 0, i32 0
  %51 = load double, ptr %coerce.dive71, align 8
  %call72 = call double @simde_uint8x8_from_private(double %51) #18
  store double %call72, ptr %coerce73, align 8
  %52 = load <8 x i8>, ptr %coerce73, align 8, !tbaa !16
  store <8 x i8> %52, ptr %tmp70, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_r_68) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_vec_64) #17
  %53 = load <8 x i8>, ptr %tmp70, align 8, !tbaa !16
  store <8 x i8> %53, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb74:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_vec_75) #17
  %54 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %54, ptr %coerce76, align 8, !tbaa !16
  %55 = load double, ptr %coerce76, align 8
  %call77 = call double @simde_uint8x8_to_private(double noundef %55) #18
  %coerce.dive78 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_vec_75, i32 0, i32 0
  store double %call77, ptr %coerce.dive78, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u8_r_79) #17
  %56 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_75, align 8, !tbaa !16
  %57 = load <8 x i8>, ptr %simde_vdup_lane_u8_vec_75, align 8, !tbaa !16
  %shuffle80 = shufflevector <8 x i8> %56, <8 x i8> %57, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <8 x i8> %shuffle80, ptr %simde_vdup_lane_u8_r_79, align 8, !tbaa !16
  %coerce.dive82 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_lane_u8_r_79, i32 0, i32 0
  %58 = load double, ptr %coerce.dive82, align 8
  %call83 = call double @simde_uint8x8_from_private(double %58) #18
  store double %call83, ptr %coerce84, align 8
  %59 = load <8 x i8>, ptr %coerce84, align 8, !tbaa !16
  store <8 x i8> %59, ptr %tmp81, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_r_79) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u8_vec_75) #17
  %60 = load <8 x i8>, ptr %tmp81, align 8, !tbaa !16
  store <8 x i8> %60, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb74, %sw.bb63, %sw.bb52, %sw.bb41, %sw.bb30, %sw.bb19, %sw.bb8, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body87

do.body87:                                        ; preds = %do.end
  %61 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  %62 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx88 = getelementptr inbounds [8 x %struct.anon.6], ptr %test_vec, i64 0, i64 %62
  %r89 = getelementptr inbounds %struct.anon.6, ptr %arrayidx88, i32 0, i32 2
  %arraydecay90 = getelementptr inbounds [8 x i8], ptr %r89, i64 0, i64 0
  %call91 = call double @simde_vld1_u8(ptr noundef %arraydecay90)
  store double %call91, ptr %coerce92, align 8
  %63 = load <8 x i8>, ptr %coerce92, align 8, !tbaa !16
  store <8 x i8> %61, ptr %coerce93, align 8, !tbaa !16
  %64 = load double, ptr %coerce93, align 8
  store <8 x i8> %63, ptr %coerce94, align 8, !tbaa !16
  %65 = load double, ptr %coerce94, align 8
  %call95 = call i32 @simde_test_arm_neon_assert_equal_u8x8_(double noundef %64, double noundef %65, ptr noundef @.str.43, i32 noundef 398, ptr noundef @.str.44, ptr noundef @.str.54)
  %tobool = icmp ne i32 %call95, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body87
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body87
  br label %do.cond96

do.cond96:                                        ; preds = %if.end
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup99 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %66 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %66, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup99:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest100 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest100, label %cleanup101 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup99
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup101

cleanup101:                                       ; preds = %for.end, %cleanup99
  call void @llvm.lifetime.end.p0(i64 160, ptr %test_vec) #17
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_u16() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.7], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x i16>, align 8
  %r = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %simde_vdup_lane_u16_vec_ = alloca %union.simde_uint16x4_private, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %simde_vdup_lane_u16_r_ = alloca %union.simde_uint16x4_private, align 8
  %tmp = alloca <4 x i16>, align 8
  %coerce7 = alloca <4 x i16>, align 8
  %simde_vdup_lane_u16_vec_9 = alloca %union.simde_uint16x4_private, align 8
  %coerce10 = alloca <4 x i16>, align 8
  %simde_vdup_lane_u16_r_13 = alloca %union.simde_uint16x4_private, align 8
  %tmp15 = alloca <4 x i16>, align 8
  %coerce18 = alloca <4 x i16>, align 8
  %simde_vdup_lane_u16_vec_20 = alloca %union.simde_uint16x4_private, align 8
  %coerce21 = alloca <4 x i16>, align 8
  %simde_vdup_lane_u16_r_24 = alloca %union.simde_uint16x4_private, align 8
  %tmp26 = alloca <4 x i16>, align 8
  %coerce29 = alloca <4 x i16>, align 8
  %simde_vdup_lane_u16_vec_31 = alloca %union.simde_uint16x4_private, align 8
  %coerce32 = alloca <4 x i16>, align 8
  %simde_vdup_lane_u16_r_35 = alloca %union.simde_uint16x4_private, align 8
  %tmp37 = alloca <4 x i16>, align 8
  %coerce40 = alloca <4 x i16>, align 8
  %coerce42 = alloca <4 x i16>, align 8
  %coerce48 = alloca <4 x i16>, align 8
  %coerce49 = alloca <4 x i16>, align 8
  %coerce50 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_u16.test_vec, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup55

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.7], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.7, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_u16(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.7], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.7, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb19
    i32 3, label %sw.bb30
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u16_vec_) #17
  %5 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_uint16x4_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_lane_u16_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u16_r_) #17
  %7 = load <4 x i16>, ptr %simde_vdup_lane_u16_vec_, align 8, !tbaa !16
  %8 = load <4 x i16>, ptr %simde_vdup_lane_u16_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <4 x i16> %7, <4 x i16> %8, <4 x i32> zeroinitializer
  store <4 x i16> %shuffle, ptr %simde_vdup_lane_u16_r_, align 8, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_lane_u16_r_, i32 0, i32 0
  %9 = load double, ptr %coerce.dive5, align 8
  %call6 = call double @simde_uint16x4_from_private(double %9) #18
  store double %call6, ptr %coerce7, align 8
  %10 = load <4 x i16>, ptr %coerce7, align 8, !tbaa !16
  store <4 x i16> %10, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u16_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u16_vec_) #17
  %11 = load <4 x i16>, ptr %tmp, align 8, !tbaa !16
  store <4 x i16> %11, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u16_vec_9) #17
  %12 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %12, ptr %coerce10, align 8, !tbaa !16
  %13 = load double, ptr %coerce10, align 8
  %call11 = call double @simde_uint16x4_to_private(double noundef %13) #18
  %coerce.dive12 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_lane_u16_vec_9, i32 0, i32 0
  store double %call11, ptr %coerce.dive12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u16_r_13) #17
  %14 = load <4 x i16>, ptr %simde_vdup_lane_u16_vec_9, align 8, !tbaa !16
  %15 = load <4 x i16>, ptr %simde_vdup_lane_u16_vec_9, align 8, !tbaa !16
  %shuffle14 = shufflevector <4 x i16> %14, <4 x i16> %15, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i16> %shuffle14, ptr %simde_vdup_lane_u16_r_13, align 8, !tbaa !16
  %coerce.dive16 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_lane_u16_r_13, i32 0, i32 0
  %16 = load double, ptr %coerce.dive16, align 8
  %call17 = call double @simde_uint16x4_from_private(double %16) #18
  store double %call17, ptr %coerce18, align 8
  %17 = load <4 x i16>, ptr %coerce18, align 8, !tbaa !16
  store <4 x i16> %17, ptr %tmp15, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u16_r_13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u16_vec_9) #17
  %18 = load <4 x i16>, ptr %tmp15, align 8, !tbaa !16
  store <4 x i16> %18, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb19:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u16_vec_20) #17
  %19 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %19, ptr %coerce21, align 8, !tbaa !16
  %20 = load double, ptr %coerce21, align 8
  %call22 = call double @simde_uint16x4_to_private(double noundef %20) #18
  %coerce.dive23 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_lane_u16_vec_20, i32 0, i32 0
  store double %call22, ptr %coerce.dive23, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u16_r_24) #17
  %21 = load <4 x i16>, ptr %simde_vdup_lane_u16_vec_20, align 8, !tbaa !16
  %22 = load <4 x i16>, ptr %simde_vdup_lane_u16_vec_20, align 8, !tbaa !16
  %shuffle25 = shufflevector <4 x i16> %21, <4 x i16> %22, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  store <4 x i16> %shuffle25, ptr %simde_vdup_lane_u16_r_24, align 8, !tbaa !16
  %coerce.dive27 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_lane_u16_r_24, i32 0, i32 0
  %23 = load double, ptr %coerce.dive27, align 8
  %call28 = call double @simde_uint16x4_from_private(double %23) #18
  store double %call28, ptr %coerce29, align 8
  %24 = load <4 x i16>, ptr %coerce29, align 8, !tbaa !16
  store <4 x i16> %24, ptr %tmp26, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u16_r_24) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u16_vec_20) #17
  %25 = load <4 x i16>, ptr %tmp26, align 8, !tbaa !16
  store <4 x i16> %25, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u16_vec_31) #17
  %26 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %26, ptr %coerce32, align 8, !tbaa !16
  %27 = load double, ptr %coerce32, align 8
  %call33 = call double @simde_uint16x4_to_private(double noundef %27) #18
  %coerce.dive34 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_lane_u16_vec_31, i32 0, i32 0
  store double %call33, ptr %coerce.dive34, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u16_r_35) #17
  %28 = load <4 x i16>, ptr %simde_vdup_lane_u16_vec_31, align 8, !tbaa !16
  %29 = load <4 x i16>, ptr %simde_vdup_lane_u16_vec_31, align 8, !tbaa !16
  %shuffle36 = shufflevector <4 x i16> %28, <4 x i16> %29, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  store <4 x i16> %shuffle36, ptr %simde_vdup_lane_u16_r_35, align 8, !tbaa !16
  %coerce.dive38 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_lane_u16_r_35, i32 0, i32 0
  %30 = load double, ptr %coerce.dive38, align 8
  %call39 = call double @simde_uint16x4_from_private(double %30) #18
  store double %call39, ptr %coerce40, align 8
  %31 = load <4 x i16>, ptr %coerce40, align 8, !tbaa !16
  store <4 x i16> %31, ptr %tmp37, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u16_r_35) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u16_vec_31) #17
  %32 = load <4 x i16>, ptr %tmp37, align 8, !tbaa !16
  store <4 x i16> %32, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb19, %sw.bb8, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body43

do.body43:                                        ; preds = %do.end
  %33 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  %34 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx44 = getelementptr inbounds [8 x %struct.anon.7], ptr %test_vec, i64 0, i64 %34
  %r45 = getelementptr inbounds %struct.anon.7, ptr %arrayidx44, i32 0, i32 2
  %arraydecay46 = getelementptr inbounds [4 x i16], ptr %r45, i64 0, i64 0
  %call47 = call double @simde_vld1_u16(ptr noundef %arraydecay46)
  store double %call47, ptr %coerce48, align 8
  %35 = load <4 x i16>, ptr %coerce48, align 8, !tbaa !16
  store <4 x i16> %33, ptr %coerce49, align 8, !tbaa !16
  %36 = load double, ptr %coerce49, align 8
  store <4 x i16> %35, ptr %coerce50, align 8, !tbaa !16
  %37 = load double, ptr %coerce50, align 8
  %call51 = call i32 @simde_test_arm_neon_assert_equal_u16x4_(double noundef %36, double noundef %37, ptr noundef @.str.43, i32 noundef 460, ptr noundef @.str.44, ptr noundef @.str.56)
  %tobool = icmp ne i32 %call51, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body43
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body43
  br label %do.cond52

do.cond52:                                        ; preds = %if.end
  br label %do.end53

do.end53:                                         ; preds = %do.cond52
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup55 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %38 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %38, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup55:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest56 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest56, label %cleanup57 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup55
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %for.end, %cleanup55
  call void @llvm.lifetime.end.p0(i64 160, ptr %test_vec) #17
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_u32() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.8], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x i32>, align 8
  %r = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %simde_vdup_lane_u32_vec_ = alloca %union.simde_uint32x2_private, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %simde_vdup_lane_u32_r_ = alloca %union.simde_uint32x2_private, align 8
  %tmp = alloca <2 x i32>, align 8
  %coerce7 = alloca <2 x i32>, align 8
  %simde_vdup_lane_u32_vec_9 = alloca %union.simde_uint32x2_private, align 8
  %coerce10 = alloca <2 x i32>, align 8
  %simde_vdup_lane_u32_r_13 = alloca %union.simde_uint32x2_private, align 8
  %tmp15 = alloca <2 x i32>, align 8
  %coerce18 = alloca <2 x i32>, align 8
  %coerce20 = alloca <2 x i32>, align 8
  %coerce26 = alloca <2 x i32>, align 8
  %coerce27 = alloca <2 x i32>, align 8
  %coerce28 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_u32.test_vec, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup33

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.8], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.8, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_u32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.8], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.8, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u32_vec_) #17
  %5 = load <2 x i32>, ptr %vec, align 8, !tbaa !16
  store <2 x i32> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_uint32x2_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdup_lane_u32_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u32_r_) #17
  %7 = load <2 x i32>, ptr %simde_vdup_lane_u32_vec_, align 8, !tbaa !16
  %8 = load <2 x i32>, ptr %simde_vdup_lane_u32_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <2 x i32> %7, <2 x i32> %8, <2 x i32> zeroinitializer
  store <2 x i32> %shuffle, ptr %simde_vdup_lane_u32_r_, align 8, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdup_lane_u32_r_, i32 0, i32 0
  %9 = load double, ptr %coerce.dive5, align 8
  %call6 = call double @simde_uint32x2_from_private(double %9) #18
  store double %call6, ptr %coerce7, align 8
  %10 = load <2 x i32>, ptr %coerce7, align 8, !tbaa !16
  store <2 x i32> %10, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u32_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u32_vec_) #17
  %11 = load <2 x i32>, ptr %tmp, align 8, !tbaa !16
  store <2 x i32> %11, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u32_vec_9) #17
  %12 = load <2 x i32>, ptr %vec, align 8, !tbaa !16
  store <2 x i32> %12, ptr %coerce10, align 8, !tbaa !16
  %13 = load double, ptr %coerce10, align 8
  %call11 = call double @simde_uint32x2_to_private(double noundef %13) #18
  %coerce.dive12 = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdup_lane_u32_vec_9, i32 0, i32 0
  store double %call11, ptr %coerce.dive12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_lane_u32_r_13) #17
  %14 = load <2 x i32>, ptr %simde_vdup_lane_u32_vec_9, align 8, !tbaa !16
  %15 = load <2 x i32>, ptr %simde_vdup_lane_u32_vec_9, align 8, !tbaa !16
  %shuffle14 = shufflevector <2 x i32> %14, <2 x i32> %15, <2 x i32> <i32 1, i32 1>
  store <2 x i32> %shuffle14, ptr %simde_vdup_lane_u32_r_13, align 8, !tbaa !16
  %coerce.dive16 = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdup_lane_u32_r_13, i32 0, i32 0
  %16 = load double, ptr %coerce.dive16, align 8
  %call17 = call double @simde_uint32x2_from_private(double %16) #18
  store double %call17, ptr %coerce18, align 8
  %17 = load <2 x i32>, ptr %coerce18, align 8, !tbaa !16
  store <2 x i32> %17, ptr %tmp15, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u32_r_13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_lane_u32_vec_9) #17
  %18 = load <2 x i32>, ptr %tmp15, align 8, !tbaa !16
  store <2 x i32> %18, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body21

do.body21:                                        ; preds = %do.end
  %19 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx22 = getelementptr inbounds [8 x %struct.anon.8], ptr %test_vec, i64 0, i64 %20
  %r23 = getelementptr inbounds %struct.anon.8, ptr %arrayidx22, i32 0, i32 2
  %arraydecay24 = getelementptr inbounds [2 x i32], ptr %r23, i64 0, i64 0
  %call25 = call double @simde_vld1_u32(ptr noundef %arraydecay24)
  store double %call25, ptr %coerce26, align 8
  %21 = load <2 x i32>, ptr %coerce26, align 8, !tbaa !16
  store <2 x i32> %19, ptr %coerce27, align 8, !tbaa !16
  %22 = load double, ptr %coerce27, align 8
  store <2 x i32> %21, ptr %coerce28, align 8, !tbaa !16
  %23 = load double, ptr %coerce28, align 8
  %call29 = call i32 @simde_test_arm_neon_assert_equal_u32x2_(double noundef %22, double noundef %23, ptr noundef @.str.43, i32 noundef 522, ptr noundef @.str.44, ptr noundef @.str.57)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body21
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body21
  br label %do.cond30

do.cond30:                                        ; preds = %if.end
  br label %do.end31

do.end31:                                         ; preds = %do.cond30
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup33 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %24, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup33:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest34 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest34, label %cleanup35 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup33
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %for.end, %cleanup33
  call void @llvm.lifetime.end.p0(i64 160, ptr %test_vec) #17
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_lane_u64() #0 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.9], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <1 x i64>, align 8
  %r = alloca <1 x i64>, align 8
  %coerce = alloca <1 x i64>, align 8
  %coerce2 = alloca <1 x i64>, align 8
  %coerce5 = alloca <1 x i64>, align 8
  %coerce10 = alloca <1 x i64>, align 8
  %coerce11 = alloca <1 x i64>, align 8
  %coerce12 = alloca <1 x i64>, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_lane_u64.test_vec, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup15

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.9], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.9, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x i64], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_u64(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %vec, align 8, !tbaa !16
  %3 = load <1 x i64>, ptr %vec, align 8, !tbaa !16
  store <1 x i64> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call i64 @simde_vdupd_lane_u64(double noundef %4, i32 noundef 0)
  %call4 = call double @simde_vdup_n_u64(i64 noundef %call3)
  store double %call4, ptr %coerce5, align 8
  %5 = load <1 x i64>, ptr %coerce5, align 8, !tbaa !16
  store <1 x i64> %5, ptr %r, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds [8 x %struct.anon.9], ptr %test_vec, i64 0, i64 %7
  %r7 = getelementptr inbounds %struct.anon.9, ptr %arrayidx6, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [1 x i64], ptr %r7, i64 0, i64 0
  %call9 = call double @simde_vld1_u64(ptr noundef %arraydecay8)
  store double %call9, ptr %coerce10, align 8
  %8 = load <1 x i64>, ptr %coerce10, align 8, !tbaa !16
  store <1 x i64> %6, ptr %coerce11, align 8, !tbaa !16
  %9 = load double, ptr %coerce11, align 8
  store <1 x i64> %8, ptr %coerce12, align 8, !tbaa !16
  %10 = load double, ptr %coerce12, align 8
  %call13 = call i32 @simde_test_arm_neon_assert_equal_u64x1_(double noundef %9, double noundef %10, ptr noundef @.str.43, i32 noundef 575, ptr noundef @.str.44, ptr noundef @.str.58)
  %tobool = icmp ne i32 %call13, 0
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup15 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup15:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup17 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %cleanup15
  call void @llvm.lifetime.end.p0(i64 128, ptr %test_vec) #17
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_f32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.10], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x float>, align 16
  %r = alloca <2 x float>, align 8
  %simde_vdup_laneq_f32_vec_ = alloca %union.simde_float32x4_private, align 16
  %simde_vdup_laneq_f32_r_ = alloca %union.simde_float32x2_private, align 8
  %tmp = alloca <2 x float>, align 8
  %coerce = alloca <2 x float>, align 8
  %simde_vdup_laneq_f32_vec_7 = alloca %union.simde_float32x4_private, align 16
  %simde_vdup_laneq_f32_r_10 = alloca %union.simde_float32x2_private, align 8
  %tmp12 = alloca <2 x float>, align 8
  %coerce15 = alloca <2 x float>, align 8
  %simde_vdup_laneq_f32_vec_17 = alloca %union.simde_float32x4_private, align 16
  %simde_vdup_laneq_f32_r_20 = alloca %union.simde_float32x2_private, align 8
  %tmp22 = alloca <2 x float>, align 8
  %coerce25 = alloca <2 x float>, align 8
  %simde_vdup_laneq_f32_vec_27 = alloca %union.simde_float32x4_private, align 16
  %simde_vdup_laneq_f32_r_30 = alloca %union.simde_float32x2_private, align 8
  %tmp32 = alloca <2 x float>, align 8
  %coerce35 = alloca <2 x float>, align 8
  %coerce37 = alloca <2 x float>, align 8
  %coerce43 = alloca <2 x float>, align 8
  %coerce45 = alloca <2 x float>, align 8
  %coerce46 = alloca <2 x float>, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_f32.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup51

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.10], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.10, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %vec1, i64 0, i64 0
  %call = call <4 x float> @simde_vld1q_f32(ptr noundef %arraydecay)
  store <4 x float> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.10], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.10, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_f32_vec_) #17
  %4 = load <4 x float>, ptr %vec, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdup_laneq_f32_vec_, i32 0, i32 0
  store <4 x float> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_f32_r_) #17
  %5 = load <4 x float>, ptr %simde_vdup_laneq_f32_vec_, align 16, !tbaa !16
  %6 = load <4 x float>, ptr %simde_vdup_laneq_f32_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <4 x float> %5, <4 x float> %6, <2 x i32> zeroinitializer
  store <2 x float> %shuffle, ptr %simde_vdup_laneq_f32_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdup_laneq_f32_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_float32x2_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <2 x float>, ptr %coerce, align 8, !tbaa !16
  store <2 x float> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_f32_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_f32_vec_) #17
  %9 = load <2 x float>, ptr %tmp, align 8, !tbaa !16
  store <2 x float> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_f32_vec_7) #17
  %10 = load <4 x float>, ptr %vec, align 16, !tbaa !16
  %call8 = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdup_laneq_f32_vec_7, i32 0, i32 0
  store <4 x float> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_f32_r_10) #17
  %11 = load <4 x float>, ptr %simde_vdup_laneq_f32_vec_7, align 16, !tbaa !16
  %12 = load <4 x float>, ptr %simde_vdup_laneq_f32_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <4 x float> %11, <4 x float> %12, <2 x i32> <i32 1, i32 1>
  store <2 x float> %shuffle11, ptr %simde_vdup_laneq_f32_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdup_laneq_f32_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_float32x2_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <2 x float>, ptr %coerce15, align 8, !tbaa !16
  store <2 x float> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_f32_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_f32_vec_7) #17
  %15 = load <2 x float>, ptr %tmp12, align 8, !tbaa !16
  store <2 x float> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_f32_vec_17) #17
  %16 = load <4 x float>, ptr %vec, align 16, !tbaa !16
  %call18 = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %16) #18
  %coerce.dive19 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdup_laneq_f32_vec_17, i32 0, i32 0
  store <4 x float> %call18, ptr %coerce.dive19, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_f32_r_20) #17
  %17 = load <4 x float>, ptr %simde_vdup_laneq_f32_vec_17, align 16, !tbaa !16
  %18 = load <4 x float>, ptr %simde_vdup_laneq_f32_vec_17, align 16, !tbaa !16
  %shuffle21 = shufflevector <4 x float> %17, <4 x float> %18, <2 x i32> <i32 2, i32 2>
  store <2 x float> %shuffle21, ptr %simde_vdup_laneq_f32_r_20, align 8, !tbaa !16
  %coerce.dive23 = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdup_laneq_f32_r_20, i32 0, i32 0
  %19 = load double, ptr %coerce.dive23, align 8
  %call24 = call double @simde_float32x2_from_private(double %19) #18
  store double %call24, ptr %coerce25, align 8
  %20 = load <2 x float>, ptr %coerce25, align 8, !tbaa !16
  store <2 x float> %20, ptr %tmp22, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_f32_r_20) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_f32_vec_17) #17
  %21 = load <2 x float>, ptr %tmp22, align 8, !tbaa !16
  store <2 x float> %21, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_f32_vec_27) #17
  %22 = load <4 x float>, ptr %vec, align 16, !tbaa !16
  %call28 = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %22) #18
  %coerce.dive29 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdup_laneq_f32_vec_27, i32 0, i32 0
  store <4 x float> %call28, ptr %coerce.dive29, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_f32_r_30) #17
  %23 = load <4 x float>, ptr %simde_vdup_laneq_f32_vec_27, align 16, !tbaa !16
  %24 = load <4 x float>, ptr %simde_vdup_laneq_f32_vec_27, align 16, !tbaa !16
  %shuffle31 = shufflevector <4 x float> %23, <4 x float> %24, <2 x i32> <i32 3, i32 3>
  store <2 x float> %shuffle31, ptr %simde_vdup_laneq_f32_r_30, align 8, !tbaa !16
  %coerce.dive33 = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdup_laneq_f32_r_30, i32 0, i32 0
  %25 = load double, ptr %coerce.dive33, align 8
  %call34 = call double @simde_float32x2_from_private(double %25) #18
  store double %call34, ptr %coerce35, align 8
  %26 = load <2 x float>, ptr %coerce35, align 8, !tbaa !16
  store <2 x float> %26, ptr %tmp32, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_f32_r_30) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_f32_vec_27) #17
  %27 = load <2 x float>, ptr %tmp32, align 8, !tbaa !16
  store <2 x float> %27, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb16, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body38

do.body38:                                        ; preds = %do.end
  %28 = load <2 x float>, ptr %r, align 8, !tbaa !16
  %29 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx39 = getelementptr inbounds [8 x %struct.anon.10], ptr %test_vec, i64 0, i64 %29
  %r40 = getelementptr inbounds %struct.anon.10, ptr %arrayidx39, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [2 x float], ptr %r40, i64 0, i64 0
  %call42 = call double @simde_vld1_f32(ptr noundef %arraydecay41)
  store double %call42, ptr %coerce43, align 8
  %30 = load <2 x float>, ptr %coerce43, align 8, !tbaa !16
  %call44 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <2 x float> %28, ptr %coerce45, align 8, !tbaa !16
  %31 = load double, ptr %coerce45, align 8
  store <2 x float> %30, ptr %coerce46, align 8, !tbaa !16
  %32 = load double, ptr %coerce46, align 8
  %call47 = call i32 @simde_test_arm_neon_assert_equal_f32x2_(double noundef %31, double noundef %32, float noundef %call44, ptr noundef @.str.43, i32 noundef 634, ptr noundef @.str.44, ptr noundef @.str.45)
  %tobool = icmp ne i32 %call47, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body38
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body38
  br label %do.cond48

do.cond48:                                        ; preds = %if.end
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup51 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %33, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup51:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest52 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest52, label %cleanup53 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup51
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup53

cleanup53:                                        ; preds = %for.end, %cleanup51
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_f64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.11], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x double>, align 16
  %r = alloca <1 x double>, align 8
  %simde_vdup_laneq_f64_vec_ = alloca %union.simde_float64x2_private, align 16
  %simde_vdup_laneq_f64_r_ = alloca %union.simde_float64x1_private, align 8
  %tmp = alloca <1 x double>, align 8
  %simde_vdup_laneq_f64_vec_6 = alloca %union.simde_float64x2_private, align 16
  %simde_vdup_laneq_f64_r_9 = alloca %union.simde_float64x1_private, align 8
  %tmp11 = alloca <1 x double>, align 8
  %indirect-arg-temp = alloca <1 x double>, align 8
  %indirect-arg-temp20 = alloca <1 x double>, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_f64.test_vec, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.11], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.11, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x double], ptr %vec1, i64 0, i64 0
  %call = call <2 x double> @simde_vld1q_f64(ptr noundef %arraydecay)
  store <2 x double> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.11], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.11, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 16, !tbaa !21
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_f64_vec_) #17
  %4 = load <2 x double>, ptr %vec, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_float64x2_to_private(<2 x double> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %simde_vdup_laneq_f64_vec_, i32 0, i32 0
  store <2 x double> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_f64_r_) #17
  %5 = load <2 x double>, ptr %simde_vdup_laneq_f64_vec_, align 16, !tbaa !16
  %6 = load <2 x double>, ptr %simde_vdup_laneq_f64_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <2 x double> %5, <2 x double> %6, <1 x i32> zeroinitializer
  store <1 x double> %shuffle, ptr %simde_vdup_laneq_f64_r_, align 8, !tbaa !16
  %call4 = call <1 x double> @simde_float64x1_from_private(ptr noundef byval(%union.simde_float64x1_private) align 8 %simde_vdup_laneq_f64_r_) #19
  store <1 x double> %call4, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_f64_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_f64_vec_) #17
  %7 = load <1 x double>, ptr %tmp, align 8, !tbaa !16
  store <1 x double> %7, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_f64_vec_6) #17
  %8 = load <2 x double>, ptr %vec, align 16, !tbaa !16
  %call7 = call <2 x double> @simde_float64x2_to_private(<2 x double> noundef %8) #18
  %coerce.dive8 = getelementptr inbounds %union.simde_float64x2_private, ptr %simde_vdup_laneq_f64_vec_6, i32 0, i32 0
  store <2 x double> %call7, ptr %coerce.dive8, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_f64_r_9) #17
  %9 = load <2 x double>, ptr %simde_vdup_laneq_f64_vec_6, align 16, !tbaa !16
  %10 = load <2 x double>, ptr %simde_vdup_laneq_f64_vec_6, align 16, !tbaa !16
  %shuffle10 = shufflevector <2 x double> %9, <2 x double> %10, <1 x i32> <i32 1>
  store <1 x double> %shuffle10, ptr %simde_vdup_laneq_f64_r_9, align 8, !tbaa !16
  %call12 = call <1 x double> @simde_float64x1_from_private(ptr noundef byval(%union.simde_float64x1_private) align 8 %simde_vdup_laneq_f64_r_9) #19
  store <1 x double> %call12, ptr %tmp11, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_f64_r_9) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_f64_vec_6) #17
  %11 = load <1 x double>, ptr %tmp11, align 8, !tbaa !16
  store <1 x double> %11, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body14

do.body14:                                        ; preds = %do.end
  %12 = load <1 x double>, ptr %r, align 8, !tbaa !16
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx15 = getelementptr inbounds [8 x %struct.anon.11], ptr %test_vec, i64 0, i64 %13
  %r16 = getelementptr inbounds %struct.anon.11, ptr %arrayidx15, i32 0, i32 2
  %arraydecay17 = getelementptr inbounds [1 x double], ptr %r16, i64 0, i64 0
  %call18 = call <1 x double> @simde_vld1_f64(ptr noundef %arraydecay17)
  %call19 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <1 x double> %12, ptr %indirect-arg-temp, align 8, !tbaa !16
  store <1 x double> %call18, ptr %indirect-arg-temp20, align 8, !tbaa !16
  %call21 = call i32 @simde_test_arm_neon_assert_equal_f64x1_(ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp, ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp20, double noundef %call19, ptr noundef @.str.43, i32 noundef 696, ptr noundef @.str.44, ptr noundef @.str.47)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body14
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body14
  br label %do.cond22

do.cond22:                                        ; preds = %if.end
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %14 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %14, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup25:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %cleanup27 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup25
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %for.end, %cleanup25
  call void @llvm.lifetime.end.p0(i64 256, ptr %test_vec) #17
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_s8() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.12], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <16 x i8>, align 16
  %r = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_ = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_ = alloca %union.simde_int8x8_private, align 8
  %tmp = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_7 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_10 = alloca %union.simde_int8x8_private, align 8
  %tmp12 = alloca <8 x i8>, align 8
  %coerce15 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_17 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_20 = alloca %union.simde_int8x8_private, align 8
  %tmp22 = alloca <8 x i8>, align 8
  %coerce25 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_27 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_30 = alloca %union.simde_int8x8_private, align 8
  %tmp32 = alloca <8 x i8>, align 8
  %coerce35 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_37 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_40 = alloca %union.simde_int8x8_private, align 8
  %tmp42 = alloca <8 x i8>, align 8
  %coerce45 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_47 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_50 = alloca %union.simde_int8x8_private, align 8
  %tmp52 = alloca <8 x i8>, align 8
  %coerce55 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_57 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_60 = alloca %union.simde_int8x8_private, align 8
  %tmp62 = alloca <8 x i8>, align 8
  %coerce65 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_67 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_70 = alloca %union.simde_int8x8_private, align 8
  %tmp72 = alloca <8 x i8>, align 8
  %coerce75 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_77 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_80 = alloca %union.simde_int8x8_private, align 8
  %tmp82 = alloca <8 x i8>, align 8
  %coerce85 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_87 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_90 = alloca %union.simde_int8x8_private, align 8
  %tmp92 = alloca <8 x i8>, align 8
  %coerce95 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_97 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_100 = alloca %union.simde_int8x8_private, align 8
  %tmp102 = alloca <8 x i8>, align 8
  %coerce105 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_107 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_110 = alloca %union.simde_int8x8_private, align 8
  %tmp112 = alloca <8 x i8>, align 8
  %coerce115 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_117 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_120 = alloca %union.simde_int8x8_private, align 8
  %tmp122 = alloca <8 x i8>, align 8
  %coerce125 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_127 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_130 = alloca %union.simde_int8x8_private, align 8
  %tmp132 = alloca <8 x i8>, align 8
  %coerce135 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_137 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_140 = alloca %union.simde_int8x8_private, align 8
  %tmp142 = alloca <8 x i8>, align 8
  %coerce145 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_s8_vec_147 = alloca %union.simde_int8x16_private, align 16
  %simde_vdup_laneq_s8_r_150 = alloca %union.simde_int8x8_private, align 8
  %tmp152 = alloca <8 x i8>, align 8
  %coerce155 = alloca <8 x i8>, align 8
  %coerce157 = alloca <8 x i8>, align 8
  %coerce163 = alloca <8 x i8>, align 8
  %coerce164 = alloca <8 x i8>, align 8
  %coerce165 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_s8.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup170

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.12], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.12, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %vec1, i64 0, i64 0
  %call = call <16 x i8> @simde_vld1q_s8(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.12], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.12, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
    i32 4, label %sw.bb36
    i32 5, label %sw.bb46
    i32 6, label %sw.bb56
    i32 7, label %sw.bb66
    i32 8, label %sw.bb76
    i32 9, label %sw.bb86
    i32 10, label %sw.bb96
    i32 11, label %sw.bb106
    i32 12, label %sw.bb116
    i32 13, label %sw.bb126
    i32 14, label %sw.bb136
    i32 15, label %sw.bb146
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_) #17
  %4 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call3 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_, i32 0, i32 0
  store <16 x i8> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_) #17
  %5 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_, align 16, !tbaa !16
  %6 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <16 x i8> %5, <16 x i8> %6, <8 x i32> zeroinitializer
  store <8 x i8> %shuffle, ptr %simde_vdup_laneq_s8_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_int8x8_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_) #17
  %9 = load <8 x i8>, ptr %tmp, align 8, !tbaa !16
  store <8 x i8> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_7) #17
  %10 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call8 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_7, i32 0, i32 0
  store <16 x i8> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_10) #17
  %11 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_7, align 16, !tbaa !16
  %12 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <16 x i8> %11, <16 x i8> %12, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <8 x i8> %shuffle11, ptr %simde_vdup_laneq_s8_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_int8x8_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <8 x i8>, ptr %coerce15, align 8, !tbaa !16
  store <8 x i8> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_7) #17
  %15 = load <8 x i8>, ptr %tmp12, align 8, !tbaa !16
  store <8 x i8> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_17) #17
  %16 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call18 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %16) #18
  %coerce.dive19 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_17, i32 0, i32 0
  store <16 x i8> %call18, ptr %coerce.dive19, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_20) #17
  %17 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_17, align 16, !tbaa !16
  %18 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_17, align 16, !tbaa !16
  %shuffle21 = shufflevector <16 x i8> %17, <16 x i8> %18, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <8 x i8> %shuffle21, ptr %simde_vdup_laneq_s8_r_20, align 8, !tbaa !16
  %coerce.dive23 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_20, i32 0, i32 0
  %19 = load double, ptr %coerce.dive23, align 8
  %call24 = call double @simde_int8x8_from_private(double %19) #18
  store double %call24, ptr %coerce25, align 8
  %20 = load <8 x i8>, ptr %coerce25, align 8, !tbaa !16
  store <8 x i8> %20, ptr %tmp22, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_20) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_17) #17
  %21 = load <8 x i8>, ptr %tmp22, align 8, !tbaa !16
  store <8 x i8> %21, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_27) #17
  %22 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call28 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %22) #18
  %coerce.dive29 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_27, i32 0, i32 0
  store <16 x i8> %call28, ptr %coerce.dive29, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_30) #17
  %23 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_27, align 16, !tbaa !16
  %24 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_27, align 16, !tbaa !16
  %shuffle31 = shufflevector <16 x i8> %23, <16 x i8> %24, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <8 x i8> %shuffle31, ptr %simde_vdup_laneq_s8_r_30, align 8, !tbaa !16
  %coerce.dive33 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_30, i32 0, i32 0
  %25 = load double, ptr %coerce.dive33, align 8
  %call34 = call double @simde_int8x8_from_private(double %25) #18
  store double %call34, ptr %coerce35, align 8
  %26 = load <8 x i8>, ptr %coerce35, align 8, !tbaa !16
  store <8 x i8> %26, ptr %tmp32, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_30) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_27) #17
  %27 = load <8 x i8>, ptr %tmp32, align 8, !tbaa !16
  store <8 x i8> %27, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb36:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_37) #17
  %28 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call38 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %28) #18
  %coerce.dive39 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_37, i32 0, i32 0
  store <16 x i8> %call38, ptr %coerce.dive39, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_40) #17
  %29 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_37, align 16, !tbaa !16
  %30 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_37, align 16, !tbaa !16
  %shuffle41 = shufflevector <16 x i8> %29, <16 x i8> %30, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <8 x i8> %shuffle41, ptr %simde_vdup_laneq_s8_r_40, align 8, !tbaa !16
  %coerce.dive43 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_40, i32 0, i32 0
  %31 = load double, ptr %coerce.dive43, align 8
  %call44 = call double @simde_int8x8_from_private(double %31) #18
  store double %call44, ptr %coerce45, align 8
  %32 = load <8 x i8>, ptr %coerce45, align 8, !tbaa !16
  store <8 x i8> %32, ptr %tmp42, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_40) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_37) #17
  %33 = load <8 x i8>, ptr %tmp42, align 8, !tbaa !16
  store <8 x i8> %33, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_47) #17
  %34 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call48 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %34) #18
  %coerce.dive49 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_47, i32 0, i32 0
  store <16 x i8> %call48, ptr %coerce.dive49, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_50) #17
  %35 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_47, align 16, !tbaa !16
  %36 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_47, align 16, !tbaa !16
  %shuffle51 = shufflevector <16 x i8> %35, <16 x i8> %36, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <8 x i8> %shuffle51, ptr %simde_vdup_laneq_s8_r_50, align 8, !tbaa !16
  %coerce.dive53 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_50, i32 0, i32 0
  %37 = load double, ptr %coerce.dive53, align 8
  %call54 = call double @simde_int8x8_from_private(double %37) #18
  store double %call54, ptr %coerce55, align 8
  %38 = load <8 x i8>, ptr %coerce55, align 8, !tbaa !16
  store <8 x i8> %38, ptr %tmp52, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_50) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_47) #17
  %39 = load <8 x i8>, ptr %tmp52, align 8, !tbaa !16
  store <8 x i8> %39, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb56:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_57) #17
  %40 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call58 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %40) #18
  %coerce.dive59 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_57, i32 0, i32 0
  store <16 x i8> %call58, ptr %coerce.dive59, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_60) #17
  %41 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_57, align 16, !tbaa !16
  %42 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_57, align 16, !tbaa !16
  %shuffle61 = shufflevector <16 x i8> %41, <16 x i8> %42, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <8 x i8> %shuffle61, ptr %simde_vdup_laneq_s8_r_60, align 8, !tbaa !16
  %coerce.dive63 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_60, i32 0, i32 0
  %43 = load double, ptr %coerce.dive63, align 8
  %call64 = call double @simde_int8x8_from_private(double %43) #18
  store double %call64, ptr %coerce65, align 8
  %44 = load <8 x i8>, ptr %coerce65, align 8, !tbaa !16
  store <8 x i8> %44, ptr %tmp62, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_60) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_57) #17
  %45 = load <8 x i8>, ptr %tmp62, align 8, !tbaa !16
  store <8 x i8> %45, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb66:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_67) #17
  %46 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call68 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %46) #18
  %coerce.dive69 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_67, i32 0, i32 0
  store <16 x i8> %call68, ptr %coerce.dive69, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_70) #17
  %47 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_67, align 16, !tbaa !16
  %48 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_67, align 16, !tbaa !16
  %shuffle71 = shufflevector <16 x i8> %47, <16 x i8> %48, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <8 x i8> %shuffle71, ptr %simde_vdup_laneq_s8_r_70, align 8, !tbaa !16
  %coerce.dive73 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_70, i32 0, i32 0
  %49 = load double, ptr %coerce.dive73, align 8
  %call74 = call double @simde_int8x8_from_private(double %49) #18
  store double %call74, ptr %coerce75, align 8
  %50 = load <8 x i8>, ptr %coerce75, align 8, !tbaa !16
  store <8 x i8> %50, ptr %tmp72, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_70) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_67) #17
  %51 = load <8 x i8>, ptr %tmp72, align 8, !tbaa !16
  store <8 x i8> %51, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb76:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_77) #17
  %52 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call78 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %52) #18
  %coerce.dive79 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_77, i32 0, i32 0
  store <16 x i8> %call78, ptr %coerce.dive79, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_80) #17
  %53 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_77, align 16, !tbaa !16
  %54 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_77, align 16, !tbaa !16
  %shuffle81 = shufflevector <16 x i8> %53, <16 x i8> %54, <8 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  store <8 x i8> %shuffle81, ptr %simde_vdup_laneq_s8_r_80, align 8, !tbaa !16
  %coerce.dive83 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_80, i32 0, i32 0
  %55 = load double, ptr %coerce.dive83, align 8
  %call84 = call double @simde_int8x8_from_private(double %55) #18
  store double %call84, ptr %coerce85, align 8
  %56 = load <8 x i8>, ptr %coerce85, align 8, !tbaa !16
  store <8 x i8> %56, ptr %tmp82, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_80) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_77) #17
  %57 = load <8 x i8>, ptr %tmp82, align 8, !tbaa !16
  store <8 x i8> %57, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb86:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_87) #17
  %58 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call88 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %58) #18
  %coerce.dive89 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_87, i32 0, i32 0
  store <16 x i8> %call88, ptr %coerce.dive89, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_90) #17
  %59 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_87, align 16, !tbaa !16
  %60 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_87, align 16, !tbaa !16
  %shuffle91 = shufflevector <16 x i8> %59, <16 x i8> %60, <8 x i32> <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  store <8 x i8> %shuffle91, ptr %simde_vdup_laneq_s8_r_90, align 8, !tbaa !16
  %coerce.dive93 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_90, i32 0, i32 0
  %61 = load double, ptr %coerce.dive93, align 8
  %call94 = call double @simde_int8x8_from_private(double %61) #18
  store double %call94, ptr %coerce95, align 8
  %62 = load <8 x i8>, ptr %coerce95, align 8, !tbaa !16
  store <8 x i8> %62, ptr %tmp92, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_90) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_87) #17
  %63 = load <8 x i8>, ptr %tmp92, align 8, !tbaa !16
  store <8 x i8> %63, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_97) #17
  %64 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call98 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %64) #18
  %coerce.dive99 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_97, i32 0, i32 0
  store <16 x i8> %call98, ptr %coerce.dive99, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_100) #17
  %65 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_97, align 16, !tbaa !16
  %66 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_97, align 16, !tbaa !16
  %shuffle101 = shufflevector <16 x i8> %65, <16 x i8> %66, <8 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  store <8 x i8> %shuffle101, ptr %simde_vdup_laneq_s8_r_100, align 8, !tbaa !16
  %coerce.dive103 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_100, i32 0, i32 0
  %67 = load double, ptr %coerce.dive103, align 8
  %call104 = call double @simde_int8x8_from_private(double %67) #18
  store double %call104, ptr %coerce105, align 8
  %68 = load <8 x i8>, ptr %coerce105, align 8, !tbaa !16
  store <8 x i8> %68, ptr %tmp102, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_100) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_97) #17
  %69 = load <8 x i8>, ptr %tmp102, align 8, !tbaa !16
  store <8 x i8> %69, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb106:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_107) #17
  %70 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call108 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %70) #18
  %coerce.dive109 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_107, i32 0, i32 0
  store <16 x i8> %call108, ptr %coerce.dive109, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_110) #17
  %71 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_107, align 16, !tbaa !16
  %72 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_107, align 16, !tbaa !16
  %shuffle111 = shufflevector <16 x i8> %71, <16 x i8> %72, <8 x i32> <i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  store <8 x i8> %shuffle111, ptr %simde_vdup_laneq_s8_r_110, align 8, !tbaa !16
  %coerce.dive113 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_110, i32 0, i32 0
  %73 = load double, ptr %coerce.dive113, align 8
  %call114 = call double @simde_int8x8_from_private(double %73) #18
  store double %call114, ptr %coerce115, align 8
  %74 = load <8 x i8>, ptr %coerce115, align 8, !tbaa !16
  store <8 x i8> %74, ptr %tmp112, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_110) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_107) #17
  %75 = load <8 x i8>, ptr %tmp112, align 8, !tbaa !16
  store <8 x i8> %75, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb116:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_117) #17
  %76 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call118 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %76) #18
  %coerce.dive119 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_117, i32 0, i32 0
  store <16 x i8> %call118, ptr %coerce.dive119, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_120) #17
  %77 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_117, align 16, !tbaa !16
  %78 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_117, align 16, !tbaa !16
  %shuffle121 = shufflevector <16 x i8> %77, <16 x i8> %78, <8 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  store <8 x i8> %shuffle121, ptr %simde_vdup_laneq_s8_r_120, align 8, !tbaa !16
  %coerce.dive123 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_120, i32 0, i32 0
  %79 = load double, ptr %coerce.dive123, align 8
  %call124 = call double @simde_int8x8_from_private(double %79) #18
  store double %call124, ptr %coerce125, align 8
  %80 = load <8 x i8>, ptr %coerce125, align 8, !tbaa !16
  store <8 x i8> %80, ptr %tmp122, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_120) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_117) #17
  %81 = load <8 x i8>, ptr %tmp122, align 8, !tbaa !16
  store <8 x i8> %81, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb126:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_127) #17
  %82 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call128 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %82) #18
  %coerce.dive129 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_127, i32 0, i32 0
  store <16 x i8> %call128, ptr %coerce.dive129, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_130) #17
  %83 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_127, align 16, !tbaa !16
  %84 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_127, align 16, !tbaa !16
  %shuffle131 = shufflevector <16 x i8> %83, <16 x i8> %84, <8 x i32> <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  store <8 x i8> %shuffle131, ptr %simde_vdup_laneq_s8_r_130, align 8, !tbaa !16
  %coerce.dive133 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_130, i32 0, i32 0
  %85 = load double, ptr %coerce.dive133, align 8
  %call134 = call double @simde_int8x8_from_private(double %85) #18
  store double %call134, ptr %coerce135, align 8
  %86 = load <8 x i8>, ptr %coerce135, align 8, !tbaa !16
  store <8 x i8> %86, ptr %tmp132, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_130) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_127) #17
  %87 = load <8 x i8>, ptr %tmp132, align 8, !tbaa !16
  store <8 x i8> %87, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb136:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_137) #17
  %88 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call138 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %88) #18
  %coerce.dive139 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_137, i32 0, i32 0
  store <16 x i8> %call138, ptr %coerce.dive139, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_140) #17
  %89 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_137, align 16, !tbaa !16
  %90 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_137, align 16, !tbaa !16
  %shuffle141 = shufflevector <16 x i8> %89, <16 x i8> %90, <8 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  store <8 x i8> %shuffle141, ptr %simde_vdup_laneq_s8_r_140, align 8, !tbaa !16
  %coerce.dive143 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_140, i32 0, i32 0
  %91 = load double, ptr %coerce.dive143, align 8
  %call144 = call double @simde_int8x8_from_private(double %91) #18
  store double %call144, ptr %coerce145, align 8
  %92 = load <8 x i8>, ptr %coerce145, align 8, !tbaa !16
  store <8 x i8> %92, ptr %tmp142, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_140) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_137) #17
  %93 = load <8 x i8>, ptr %tmp142, align 8, !tbaa !16
  store <8 x i8> %93, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb146:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_147) #17
  %94 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call148 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %94) #18
  %coerce.dive149 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdup_laneq_s8_vec_147, i32 0, i32 0
  store <16 x i8> %call148, ptr %coerce.dive149, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s8_r_150) #17
  %95 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_147, align 16, !tbaa !16
  %96 = load <16 x i8>, ptr %simde_vdup_laneq_s8_vec_147, align 16, !tbaa !16
  %shuffle151 = shufflevector <16 x i8> %95, <16 x i8> %96, <8 x i32> <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  store <8 x i8> %shuffle151, ptr %simde_vdup_laneq_s8_r_150, align 8, !tbaa !16
  %coerce.dive153 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdup_laneq_s8_r_150, i32 0, i32 0
  %97 = load double, ptr %coerce.dive153, align 8
  %call154 = call double @simde_int8x8_from_private(double %97) #18
  store double %call154, ptr %coerce155, align 8
  %98 = load <8 x i8>, ptr %coerce155, align 8, !tbaa !16
  store <8 x i8> %98, ptr %tmp152, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s8_r_150) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s8_vec_147) #17
  %99 = load <8 x i8>, ptr %tmp152, align 8, !tbaa !16
  store <8 x i8> %99, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb146, %sw.bb136, %sw.bb126, %sw.bb116, %sw.bb106, %sw.bb96, %sw.bb86, %sw.bb76, %sw.bb66, %sw.bb56, %sw.bb46, %sw.bb36, %sw.bb26, %sw.bb16, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body158

do.body158:                                       ; preds = %do.end
  %100 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  %101 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx159 = getelementptr inbounds [8 x %struct.anon.12], ptr %test_vec, i64 0, i64 %101
  %r160 = getelementptr inbounds %struct.anon.12, ptr %arrayidx159, i32 0, i32 2
  %arraydecay161 = getelementptr inbounds [8 x i8], ptr %r160, i64 0, i64 0
  %call162 = call double @simde_vld1_s8(ptr noundef %arraydecay161)
  store double %call162, ptr %coerce163, align 8
  %102 = load <8 x i8>, ptr %coerce163, align 8, !tbaa !16
  store <8 x i8> %100, ptr %coerce164, align 8, !tbaa !16
  %103 = load double, ptr %coerce164, align 8
  store <8 x i8> %102, ptr %coerce165, align 8, !tbaa !16
  %104 = load double, ptr %coerce165, align 8
  %call166 = call i32 @simde_test_arm_neon_assert_equal_i8x8_(double noundef %103, double noundef %104, ptr noundef @.str.43, i32 noundef 766, ptr noundef @.str.44, ptr noundef @.str.48)
  %tobool = icmp ne i32 %call166, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body158
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body158
  br label %do.cond167

do.cond167:                                       ; preds = %if.end
  br label %do.end168

do.end168:                                        ; preds = %do.cond167
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end168, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup170 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %105 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %105, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup170:                                       ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest171 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest171, label %cleanup172 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup170
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup172

cleanup172:                                       ; preds = %for.end, %cleanup170
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_s16() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.13], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <8 x i16>, align 16
  %r = alloca <4 x i16>, align 8
  %simde_vdup_laneq_s16_vec_ = alloca %union.simde_int16x8_private, align 16
  %simde_vdup_laneq_s16_r_ = alloca %union.simde_int16x4_private, align 8
  %tmp = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %simde_vdup_laneq_s16_vec_7 = alloca %union.simde_int16x8_private, align 16
  %simde_vdup_laneq_s16_r_10 = alloca %union.simde_int16x4_private, align 8
  %tmp12 = alloca <4 x i16>, align 8
  %coerce15 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_s16_vec_17 = alloca %union.simde_int16x8_private, align 16
  %simde_vdup_laneq_s16_r_20 = alloca %union.simde_int16x4_private, align 8
  %tmp22 = alloca <4 x i16>, align 8
  %coerce25 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_s16_vec_27 = alloca %union.simde_int16x8_private, align 16
  %simde_vdup_laneq_s16_r_30 = alloca %union.simde_int16x4_private, align 8
  %tmp32 = alloca <4 x i16>, align 8
  %coerce35 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_s16_vec_37 = alloca %union.simde_int16x8_private, align 16
  %simde_vdup_laneq_s16_r_40 = alloca %union.simde_int16x4_private, align 8
  %tmp42 = alloca <4 x i16>, align 8
  %coerce45 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_s16_vec_47 = alloca %union.simde_int16x8_private, align 16
  %simde_vdup_laneq_s16_r_50 = alloca %union.simde_int16x4_private, align 8
  %tmp52 = alloca <4 x i16>, align 8
  %coerce55 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_s16_vec_57 = alloca %union.simde_int16x8_private, align 16
  %simde_vdup_laneq_s16_r_60 = alloca %union.simde_int16x4_private, align 8
  %tmp62 = alloca <4 x i16>, align 8
  %coerce65 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_s16_vec_67 = alloca %union.simde_int16x8_private, align 16
  %simde_vdup_laneq_s16_r_70 = alloca %union.simde_int16x4_private, align 8
  %tmp72 = alloca <4 x i16>, align 8
  %coerce75 = alloca <4 x i16>, align 8
  %coerce77 = alloca <4 x i16>, align 8
  %coerce83 = alloca <4 x i16>, align 8
  %coerce84 = alloca <4 x i16>, align 8
  %coerce85 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_s16.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup90

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.13], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %vec1, i64 0, i64 0
  %call = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.13], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.13, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
    i32 4, label %sw.bb36
    i32 5, label %sw.bb46
    i32 6, label %sw.bb56
    i32 7, label %sw.bb66
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_) #17
  %4 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call3 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdup_laneq_s16_vec_, i32 0, i32 0
  store <8 x i16> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s16_r_) #17
  %5 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_, align 16, !tbaa !16
  %6 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <8 x i16> %5, <8 x i16> %6, <4 x i32> zeroinitializer
  store <4 x i16> %shuffle, ptr %simde_vdup_laneq_s16_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_laneq_s16_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_int16x4_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s16_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_) #17
  %9 = load <4 x i16>, ptr %tmp, align 8, !tbaa !16
  store <4 x i16> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_7) #17
  %10 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call8 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdup_laneq_s16_vec_7, i32 0, i32 0
  store <8 x i16> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s16_r_10) #17
  %11 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_7, align 16, !tbaa !16
  %12 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <8 x i16> %11, <8 x i16> %12, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i16> %shuffle11, ptr %simde_vdup_laneq_s16_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_laneq_s16_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_int16x4_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <4 x i16>, ptr %coerce15, align 8, !tbaa !16
  store <4 x i16> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s16_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_7) #17
  %15 = load <4 x i16>, ptr %tmp12, align 8, !tbaa !16
  store <4 x i16> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_17) #17
  %16 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call18 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %16) #18
  %coerce.dive19 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdup_laneq_s16_vec_17, i32 0, i32 0
  store <8 x i16> %call18, ptr %coerce.dive19, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s16_r_20) #17
  %17 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_17, align 16, !tbaa !16
  %18 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_17, align 16, !tbaa !16
  %shuffle21 = shufflevector <8 x i16> %17, <8 x i16> %18, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  store <4 x i16> %shuffle21, ptr %simde_vdup_laneq_s16_r_20, align 8, !tbaa !16
  %coerce.dive23 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_laneq_s16_r_20, i32 0, i32 0
  %19 = load double, ptr %coerce.dive23, align 8
  %call24 = call double @simde_int16x4_from_private(double %19) #18
  store double %call24, ptr %coerce25, align 8
  %20 = load <4 x i16>, ptr %coerce25, align 8, !tbaa !16
  store <4 x i16> %20, ptr %tmp22, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s16_r_20) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_17) #17
  %21 = load <4 x i16>, ptr %tmp22, align 8, !tbaa !16
  store <4 x i16> %21, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_27) #17
  %22 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call28 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %22) #18
  %coerce.dive29 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdup_laneq_s16_vec_27, i32 0, i32 0
  store <8 x i16> %call28, ptr %coerce.dive29, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s16_r_30) #17
  %23 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_27, align 16, !tbaa !16
  %24 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_27, align 16, !tbaa !16
  %shuffle31 = shufflevector <8 x i16> %23, <8 x i16> %24, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  store <4 x i16> %shuffle31, ptr %simde_vdup_laneq_s16_r_30, align 8, !tbaa !16
  %coerce.dive33 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_laneq_s16_r_30, i32 0, i32 0
  %25 = load double, ptr %coerce.dive33, align 8
  %call34 = call double @simde_int16x4_from_private(double %25) #18
  store double %call34, ptr %coerce35, align 8
  %26 = load <4 x i16>, ptr %coerce35, align 8, !tbaa !16
  store <4 x i16> %26, ptr %tmp32, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s16_r_30) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_27) #17
  %27 = load <4 x i16>, ptr %tmp32, align 8, !tbaa !16
  store <4 x i16> %27, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb36:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_37) #17
  %28 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call38 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %28) #18
  %coerce.dive39 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdup_laneq_s16_vec_37, i32 0, i32 0
  store <8 x i16> %call38, ptr %coerce.dive39, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s16_r_40) #17
  %29 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_37, align 16, !tbaa !16
  %30 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_37, align 16, !tbaa !16
  %shuffle41 = shufflevector <8 x i16> %29, <8 x i16> %30, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  store <4 x i16> %shuffle41, ptr %simde_vdup_laneq_s16_r_40, align 8, !tbaa !16
  %coerce.dive43 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_laneq_s16_r_40, i32 0, i32 0
  %31 = load double, ptr %coerce.dive43, align 8
  %call44 = call double @simde_int16x4_from_private(double %31) #18
  store double %call44, ptr %coerce45, align 8
  %32 = load <4 x i16>, ptr %coerce45, align 8, !tbaa !16
  store <4 x i16> %32, ptr %tmp42, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s16_r_40) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_37) #17
  %33 = load <4 x i16>, ptr %tmp42, align 8, !tbaa !16
  store <4 x i16> %33, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_47) #17
  %34 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call48 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %34) #18
  %coerce.dive49 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdup_laneq_s16_vec_47, i32 0, i32 0
  store <8 x i16> %call48, ptr %coerce.dive49, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s16_r_50) #17
  %35 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_47, align 16, !tbaa !16
  %36 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_47, align 16, !tbaa !16
  %shuffle51 = shufflevector <8 x i16> %35, <8 x i16> %36, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  store <4 x i16> %shuffle51, ptr %simde_vdup_laneq_s16_r_50, align 8, !tbaa !16
  %coerce.dive53 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_laneq_s16_r_50, i32 0, i32 0
  %37 = load double, ptr %coerce.dive53, align 8
  %call54 = call double @simde_int16x4_from_private(double %37) #18
  store double %call54, ptr %coerce55, align 8
  %38 = load <4 x i16>, ptr %coerce55, align 8, !tbaa !16
  store <4 x i16> %38, ptr %tmp52, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s16_r_50) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_47) #17
  %39 = load <4 x i16>, ptr %tmp52, align 8, !tbaa !16
  store <4 x i16> %39, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb56:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_57) #17
  %40 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call58 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %40) #18
  %coerce.dive59 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdup_laneq_s16_vec_57, i32 0, i32 0
  store <8 x i16> %call58, ptr %coerce.dive59, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s16_r_60) #17
  %41 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_57, align 16, !tbaa !16
  %42 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_57, align 16, !tbaa !16
  %shuffle61 = shufflevector <8 x i16> %41, <8 x i16> %42, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  store <4 x i16> %shuffle61, ptr %simde_vdup_laneq_s16_r_60, align 8, !tbaa !16
  %coerce.dive63 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_laneq_s16_r_60, i32 0, i32 0
  %43 = load double, ptr %coerce.dive63, align 8
  %call64 = call double @simde_int16x4_from_private(double %43) #18
  store double %call64, ptr %coerce65, align 8
  %44 = load <4 x i16>, ptr %coerce65, align 8, !tbaa !16
  store <4 x i16> %44, ptr %tmp62, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s16_r_60) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_57) #17
  %45 = load <4 x i16>, ptr %tmp62, align 8, !tbaa !16
  store <4 x i16> %45, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb66:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_67) #17
  %46 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call68 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %46) #18
  %coerce.dive69 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdup_laneq_s16_vec_67, i32 0, i32 0
  store <8 x i16> %call68, ptr %coerce.dive69, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s16_r_70) #17
  %47 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_67, align 16, !tbaa !16
  %48 = load <8 x i16>, ptr %simde_vdup_laneq_s16_vec_67, align 16, !tbaa !16
  %shuffle71 = shufflevector <8 x i16> %47, <8 x i16> %48, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  store <4 x i16> %shuffle71, ptr %simde_vdup_laneq_s16_r_70, align 8, !tbaa !16
  %coerce.dive73 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdup_laneq_s16_r_70, i32 0, i32 0
  %49 = load double, ptr %coerce.dive73, align 8
  %call74 = call double @simde_int16x4_from_private(double %49) #18
  store double %call74, ptr %coerce75, align 8
  %50 = load <4 x i16>, ptr %coerce75, align 8, !tbaa !16
  store <4 x i16> %50, ptr %tmp72, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s16_r_70) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s16_vec_67) #17
  %51 = load <4 x i16>, ptr %tmp72, align 8, !tbaa !16
  store <4 x i16> %51, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb56, %sw.bb46, %sw.bb36, %sw.bb26, %sw.bb16, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body78

do.body78:                                        ; preds = %do.end
  %52 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  %53 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx79 = getelementptr inbounds [8 x %struct.anon.13], ptr %test_vec, i64 0, i64 %53
  %r80 = getelementptr inbounds %struct.anon.13, ptr %arrayidx79, i32 0, i32 2
  %arraydecay81 = getelementptr inbounds [4 x i16], ptr %r80, i64 0, i64 0
  %call82 = call double @simde_vld1_s16(ptr noundef %arraydecay81)
  store double %call82, ptr %coerce83, align 8
  %54 = load <4 x i16>, ptr %coerce83, align 8, !tbaa !16
  store <4 x i16> %52, ptr %coerce84, align 8, !tbaa !16
  %55 = load double, ptr %coerce84, align 8
  store <4 x i16> %54, ptr %coerce85, align 8, !tbaa !16
  %56 = load double, ptr %coerce85, align 8
  %call86 = call i32 @simde_test_arm_neon_assert_equal_i16x4_(double noundef %55, double noundef %56, ptr noundef @.str.43, i32 noundef 828, ptr noundef @.str.44, ptr noundef @.str.50)
  %tobool = icmp ne i32 %call86, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body78
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body78
  br label %do.cond87

do.cond87:                                        ; preds = %if.end
  br label %do.end88

do.end88:                                         ; preds = %do.cond87
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %57 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %57, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup90:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest91 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest91, label %cleanup92 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup90
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92

cleanup92:                                        ; preds = %for.end, %cleanup90
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_s32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.14], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x i32>, align 16
  %r = alloca <2 x i32>, align 8
  %simde_vdup_laneq_s32_vec_ = alloca %union.simde_int32x4_private, align 16
  %simde_vdup_laneq_s32_r_ = alloca %union.simde_int32x2_private, align 8
  %tmp = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %simde_vdup_laneq_s32_vec_7 = alloca %union.simde_int32x4_private, align 16
  %simde_vdup_laneq_s32_r_10 = alloca %union.simde_int32x2_private, align 8
  %tmp12 = alloca <2 x i32>, align 8
  %coerce15 = alloca <2 x i32>, align 8
  %simde_vdup_laneq_s32_vec_17 = alloca %union.simde_int32x4_private, align 16
  %simde_vdup_laneq_s32_r_20 = alloca %union.simde_int32x2_private, align 8
  %tmp22 = alloca <2 x i32>, align 8
  %coerce25 = alloca <2 x i32>, align 8
  %simde_vdup_laneq_s32_vec_27 = alloca %union.simde_int32x4_private, align 16
  %simde_vdup_laneq_s32_r_30 = alloca %union.simde_int32x2_private, align 8
  %tmp32 = alloca <2 x i32>, align 8
  %coerce35 = alloca <2 x i32>, align 8
  %coerce37 = alloca <2 x i32>, align 8
  %coerce43 = alloca <2 x i32>, align 8
  %coerce44 = alloca <2 x i32>, align 8
  %coerce45 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_s32.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup50

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.14], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %vec1, i64 0, i64 0
  %call = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.14], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.14, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s32_vec_) #17
  %4 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call3 = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdup_laneq_s32_vec_, i32 0, i32 0
  store <4 x i32> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s32_r_) #17
  %5 = load <4 x i32>, ptr %simde_vdup_laneq_s32_vec_, align 16, !tbaa !16
  %6 = load <4 x i32>, ptr %simde_vdup_laneq_s32_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <4 x i32> %5, <4 x i32> %6, <2 x i32> zeroinitializer
  store <2 x i32> %shuffle, ptr %simde_vdup_laneq_s32_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdup_laneq_s32_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_int32x2_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s32_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s32_vec_) #17
  %9 = load <2 x i32>, ptr %tmp, align 8, !tbaa !16
  store <2 x i32> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s32_vec_7) #17
  %10 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call8 = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdup_laneq_s32_vec_7, i32 0, i32 0
  store <4 x i32> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s32_r_10) #17
  %11 = load <4 x i32>, ptr %simde_vdup_laneq_s32_vec_7, align 16, !tbaa !16
  %12 = load <4 x i32>, ptr %simde_vdup_laneq_s32_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <4 x i32> %11, <4 x i32> %12, <2 x i32> <i32 1, i32 1>
  store <2 x i32> %shuffle11, ptr %simde_vdup_laneq_s32_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdup_laneq_s32_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_int32x2_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <2 x i32>, ptr %coerce15, align 8, !tbaa !16
  store <2 x i32> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s32_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s32_vec_7) #17
  %15 = load <2 x i32>, ptr %tmp12, align 8, !tbaa !16
  store <2 x i32> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s32_vec_17) #17
  %16 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call18 = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %16) #18
  %coerce.dive19 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdup_laneq_s32_vec_17, i32 0, i32 0
  store <4 x i32> %call18, ptr %coerce.dive19, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s32_r_20) #17
  %17 = load <4 x i32>, ptr %simde_vdup_laneq_s32_vec_17, align 16, !tbaa !16
  %18 = load <4 x i32>, ptr %simde_vdup_laneq_s32_vec_17, align 16, !tbaa !16
  %shuffle21 = shufflevector <4 x i32> %17, <4 x i32> %18, <2 x i32> <i32 2, i32 2>
  store <2 x i32> %shuffle21, ptr %simde_vdup_laneq_s32_r_20, align 8, !tbaa !16
  %coerce.dive23 = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdup_laneq_s32_r_20, i32 0, i32 0
  %19 = load double, ptr %coerce.dive23, align 8
  %call24 = call double @simde_int32x2_from_private(double %19) #18
  store double %call24, ptr %coerce25, align 8
  %20 = load <2 x i32>, ptr %coerce25, align 8, !tbaa !16
  store <2 x i32> %20, ptr %tmp22, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s32_r_20) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s32_vec_17) #17
  %21 = load <2 x i32>, ptr %tmp22, align 8, !tbaa !16
  store <2 x i32> %21, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s32_vec_27) #17
  %22 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call28 = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %22) #18
  %coerce.dive29 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdup_laneq_s32_vec_27, i32 0, i32 0
  store <4 x i32> %call28, ptr %coerce.dive29, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s32_r_30) #17
  %23 = load <4 x i32>, ptr %simde_vdup_laneq_s32_vec_27, align 16, !tbaa !16
  %24 = load <4 x i32>, ptr %simde_vdup_laneq_s32_vec_27, align 16, !tbaa !16
  %shuffle31 = shufflevector <4 x i32> %23, <4 x i32> %24, <2 x i32> <i32 3, i32 3>
  store <2 x i32> %shuffle31, ptr %simde_vdup_laneq_s32_r_30, align 8, !tbaa !16
  %coerce.dive33 = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdup_laneq_s32_r_30, i32 0, i32 0
  %25 = load double, ptr %coerce.dive33, align 8
  %call34 = call double @simde_int32x2_from_private(double %25) #18
  store double %call34, ptr %coerce35, align 8
  %26 = load <2 x i32>, ptr %coerce35, align 8, !tbaa !16
  store <2 x i32> %26, ptr %tmp32, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s32_r_30) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s32_vec_27) #17
  %27 = load <2 x i32>, ptr %tmp32, align 8, !tbaa !16
  store <2 x i32> %27, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb16, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body38

do.body38:                                        ; preds = %do.end
  %28 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  %29 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx39 = getelementptr inbounds [8 x %struct.anon.14], ptr %test_vec, i64 0, i64 %29
  %r40 = getelementptr inbounds %struct.anon.14, ptr %arrayidx39, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [2 x i32], ptr %r40, i64 0, i64 0
  %call42 = call double @simde_vld1_s32(ptr noundef %arraydecay41)
  store double %call42, ptr %coerce43, align 8
  %30 = load <2 x i32>, ptr %coerce43, align 8, !tbaa !16
  store <2 x i32> %28, ptr %coerce44, align 8, !tbaa !16
  %31 = load double, ptr %coerce44, align 8
  store <2 x i32> %30, ptr %coerce45, align 8, !tbaa !16
  %32 = load double, ptr %coerce45, align 8
  %call46 = call i32 @simde_test_arm_neon_assert_equal_i32x2_(double noundef %31, double noundef %32, ptr noundef @.str.43, i32 noundef 890, ptr noundef @.str.44, ptr noundef @.str.51)
  %tobool = icmp ne i32 %call46, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body38
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body38
  br label %do.cond47

do.cond47:                                        ; preds = %if.end
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %33, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup50:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest51 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest51, label %cleanup52 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %for.end, %cleanup50
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_s64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.15], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x i64>, align 16
  %r = alloca <1 x i64>, align 8
  %simde_vdup_laneq_s64_vec_ = alloca %union.simde_int64x2_private, align 16
  %simde_vdup_laneq_s64_r_ = alloca %union.simde_int64x1_private, align 8
  %tmp = alloca <1 x i64>, align 8
  %coerce = alloca <1 x i64>, align 8
  %simde_vdup_laneq_s64_vec_7 = alloca %union.simde_int64x2_private, align 16
  %simde_vdup_laneq_s64_r_10 = alloca %union.simde_int64x1_private, align 8
  %tmp12 = alloca <1 x i64>, align 8
  %coerce15 = alloca <1 x i64>, align 8
  %coerce17 = alloca <1 x i64>, align 8
  %coerce23 = alloca <1 x i64>, align 8
  %coerce24 = alloca <1 x i64>, align 8
  %coerce25 = alloca <1 x i64>, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_s64.test_vec, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.15], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.15, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %vec1, i64 0, i64 0
  %call = call <2 x i64> @simde_vld1q_s64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.15], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.15, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 16, !tbaa !21
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s64_vec_) #17
  %4 = load <2 x i64>, ptr %vec, align 16, !tbaa !16
  %call3 = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %simde_vdup_laneq_s64_vec_, i32 0, i32 0
  store <2 x i64> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s64_r_) #17
  %5 = load <2 x i64>, ptr %simde_vdup_laneq_s64_vec_, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %simde_vdup_laneq_s64_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <2 x i64> %5, <2 x i64> %6, <1 x i32> zeroinitializer
  store <1 x i64> %shuffle, ptr %simde_vdup_laneq_s64_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int64x1_private, ptr %simde_vdup_laneq_s64_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_int64x1_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s64_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s64_vec_) #17
  %9 = load <1 x i64>, ptr %tmp, align 8, !tbaa !16
  store <1 x i64> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_s64_vec_7) #17
  %10 = load <2 x i64>, ptr %vec, align 16, !tbaa !16
  %call8 = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_int64x2_private, ptr %simde_vdup_laneq_s64_vec_7, i32 0, i32 0
  store <2 x i64> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_s64_r_10) #17
  %11 = load <2 x i64>, ptr %simde_vdup_laneq_s64_vec_7, align 16, !tbaa !16
  %12 = load <2 x i64>, ptr %simde_vdup_laneq_s64_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <2 x i64> %11, <2 x i64> %12, <1 x i32> <i32 1>
  store <1 x i64> %shuffle11, ptr %simde_vdup_laneq_s64_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_int64x1_private, ptr %simde_vdup_laneq_s64_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_int64x1_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <1 x i64>, ptr %coerce15, align 8, !tbaa !16
  store <1 x i64> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_s64_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_s64_vec_7) #17
  %15 = load <1 x i64>, ptr %tmp12, align 8, !tbaa !16
  store <1 x i64> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %16 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx19 = getelementptr inbounds [8 x %struct.anon.15], ptr %test_vec, i64 0, i64 %17
  %r20 = getelementptr inbounds %struct.anon.15, ptr %arrayidx19, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [1 x i64], ptr %r20, i64 0, i64 0
  %call22 = call double @simde_vld1_s64(ptr noundef %arraydecay21)
  store double %call22, ptr %coerce23, align 8
  %18 = load <1 x i64>, ptr %coerce23, align 8, !tbaa !16
  store <1 x i64> %16, ptr %coerce24, align 8, !tbaa !16
  %19 = load double, ptr %coerce24, align 8
  store <1 x i64> %18, ptr %coerce25, align 8, !tbaa !16
  %20 = load double, ptr %coerce25, align 8
  %call26 = call i32 @simde_test_arm_neon_assert_equal_i64x1_(double noundef %19, double noundef %20, ptr noundef @.str.43, i32 noundef 952, ptr noundef @.str.44, ptr noundef @.str.52)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body18
  br label %do.cond27

do.cond27:                                        ; preds = %if.end
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup30:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest31 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest31, label %cleanup32 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup30
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %for.end, %cleanup30
  call void @llvm.lifetime.end.p0(i64 256, ptr %test_vec) #17
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_u8() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.16], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <16 x i8>, align 16
  %r = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_ = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_ = alloca %union.simde_uint8x8_private, align 8
  %tmp = alloca <8 x i8>, align 8
  %coerce = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_7 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_10 = alloca %union.simde_uint8x8_private, align 8
  %tmp12 = alloca <8 x i8>, align 8
  %coerce15 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_17 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_20 = alloca %union.simde_uint8x8_private, align 8
  %tmp22 = alloca <8 x i8>, align 8
  %coerce25 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_27 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_30 = alloca %union.simde_uint8x8_private, align 8
  %tmp32 = alloca <8 x i8>, align 8
  %coerce35 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_37 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_40 = alloca %union.simde_uint8x8_private, align 8
  %tmp42 = alloca <8 x i8>, align 8
  %coerce45 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_47 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_50 = alloca %union.simde_uint8x8_private, align 8
  %tmp52 = alloca <8 x i8>, align 8
  %coerce55 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_57 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_60 = alloca %union.simde_uint8x8_private, align 8
  %tmp62 = alloca <8 x i8>, align 8
  %coerce65 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_67 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_70 = alloca %union.simde_uint8x8_private, align 8
  %tmp72 = alloca <8 x i8>, align 8
  %coerce75 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_77 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_80 = alloca %union.simde_uint8x8_private, align 8
  %tmp82 = alloca <8 x i8>, align 8
  %coerce85 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_87 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_90 = alloca %union.simde_uint8x8_private, align 8
  %tmp92 = alloca <8 x i8>, align 8
  %coerce95 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_97 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_100 = alloca %union.simde_uint8x8_private, align 8
  %tmp102 = alloca <8 x i8>, align 8
  %coerce105 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_107 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_110 = alloca %union.simde_uint8x8_private, align 8
  %tmp112 = alloca <8 x i8>, align 8
  %coerce115 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_117 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_120 = alloca %union.simde_uint8x8_private, align 8
  %tmp122 = alloca <8 x i8>, align 8
  %coerce125 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_127 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_130 = alloca %union.simde_uint8x8_private, align 8
  %tmp132 = alloca <8 x i8>, align 8
  %coerce135 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_137 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_140 = alloca %union.simde_uint8x8_private, align 8
  %tmp142 = alloca <8 x i8>, align 8
  %coerce145 = alloca <8 x i8>, align 8
  %simde_vdup_laneq_u8_vec_147 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdup_laneq_u8_r_150 = alloca %union.simde_uint8x8_private, align 8
  %tmp152 = alloca <8 x i8>, align 8
  %coerce155 = alloca <8 x i8>, align 8
  %coerce157 = alloca <8 x i8>, align 8
  %coerce163 = alloca <8 x i8>, align 8
  %coerce164 = alloca <8 x i8>, align 8
  %coerce165 = alloca <8 x i8>, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_u8.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup170

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.16], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.16, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %vec1, i64 0, i64 0
  %call = call <16 x i8> @simde_vld1q_u8(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.16], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.16, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
    i32 4, label %sw.bb36
    i32 5, label %sw.bb46
    i32 6, label %sw.bb56
    i32 7, label %sw.bb66
    i32 8, label %sw.bb76
    i32 9, label %sw.bb86
    i32 10, label %sw.bb96
    i32 11, label %sw.bb106
    i32 12, label %sw.bb116
    i32 13, label %sw.bb126
    i32 14, label %sw.bb136
    i32 15, label %sw.bb146
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_) #17
  %4 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call3 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_, i32 0, i32 0
  store <16 x i8> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_) #17
  %5 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_, align 16, !tbaa !16
  %6 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <16 x i8> %5, <16 x i8> %6, <8 x i32> zeroinitializer
  store <8 x i8> %shuffle, ptr %simde_vdup_laneq_u8_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_uint8x8_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_) #17
  %9 = load <8 x i8>, ptr %tmp, align 8, !tbaa !16
  store <8 x i8> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_7) #17
  %10 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call8 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_7, i32 0, i32 0
  store <16 x i8> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_10) #17
  %11 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_7, align 16, !tbaa !16
  %12 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <16 x i8> %11, <16 x i8> %12, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <8 x i8> %shuffle11, ptr %simde_vdup_laneq_u8_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_uint8x8_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <8 x i8>, ptr %coerce15, align 8, !tbaa !16
  store <8 x i8> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_7) #17
  %15 = load <8 x i8>, ptr %tmp12, align 8, !tbaa !16
  store <8 x i8> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_17) #17
  %16 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call18 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %16) #18
  %coerce.dive19 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_17, i32 0, i32 0
  store <16 x i8> %call18, ptr %coerce.dive19, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_20) #17
  %17 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_17, align 16, !tbaa !16
  %18 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_17, align 16, !tbaa !16
  %shuffle21 = shufflevector <16 x i8> %17, <16 x i8> %18, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <8 x i8> %shuffle21, ptr %simde_vdup_laneq_u8_r_20, align 8, !tbaa !16
  %coerce.dive23 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_20, i32 0, i32 0
  %19 = load double, ptr %coerce.dive23, align 8
  %call24 = call double @simde_uint8x8_from_private(double %19) #18
  store double %call24, ptr %coerce25, align 8
  %20 = load <8 x i8>, ptr %coerce25, align 8, !tbaa !16
  store <8 x i8> %20, ptr %tmp22, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_20) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_17) #17
  %21 = load <8 x i8>, ptr %tmp22, align 8, !tbaa !16
  store <8 x i8> %21, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_27) #17
  %22 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call28 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %22) #18
  %coerce.dive29 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_27, i32 0, i32 0
  store <16 x i8> %call28, ptr %coerce.dive29, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_30) #17
  %23 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_27, align 16, !tbaa !16
  %24 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_27, align 16, !tbaa !16
  %shuffle31 = shufflevector <16 x i8> %23, <16 x i8> %24, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <8 x i8> %shuffle31, ptr %simde_vdup_laneq_u8_r_30, align 8, !tbaa !16
  %coerce.dive33 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_30, i32 0, i32 0
  %25 = load double, ptr %coerce.dive33, align 8
  %call34 = call double @simde_uint8x8_from_private(double %25) #18
  store double %call34, ptr %coerce35, align 8
  %26 = load <8 x i8>, ptr %coerce35, align 8, !tbaa !16
  store <8 x i8> %26, ptr %tmp32, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_30) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_27) #17
  %27 = load <8 x i8>, ptr %tmp32, align 8, !tbaa !16
  store <8 x i8> %27, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb36:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_37) #17
  %28 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call38 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %28) #18
  %coerce.dive39 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_37, i32 0, i32 0
  store <16 x i8> %call38, ptr %coerce.dive39, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_40) #17
  %29 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_37, align 16, !tbaa !16
  %30 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_37, align 16, !tbaa !16
  %shuffle41 = shufflevector <16 x i8> %29, <16 x i8> %30, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <8 x i8> %shuffle41, ptr %simde_vdup_laneq_u8_r_40, align 8, !tbaa !16
  %coerce.dive43 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_40, i32 0, i32 0
  %31 = load double, ptr %coerce.dive43, align 8
  %call44 = call double @simde_uint8x8_from_private(double %31) #18
  store double %call44, ptr %coerce45, align 8
  %32 = load <8 x i8>, ptr %coerce45, align 8, !tbaa !16
  store <8 x i8> %32, ptr %tmp42, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_40) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_37) #17
  %33 = load <8 x i8>, ptr %tmp42, align 8, !tbaa !16
  store <8 x i8> %33, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_47) #17
  %34 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call48 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %34) #18
  %coerce.dive49 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_47, i32 0, i32 0
  store <16 x i8> %call48, ptr %coerce.dive49, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_50) #17
  %35 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_47, align 16, !tbaa !16
  %36 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_47, align 16, !tbaa !16
  %shuffle51 = shufflevector <16 x i8> %35, <16 x i8> %36, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <8 x i8> %shuffle51, ptr %simde_vdup_laneq_u8_r_50, align 8, !tbaa !16
  %coerce.dive53 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_50, i32 0, i32 0
  %37 = load double, ptr %coerce.dive53, align 8
  %call54 = call double @simde_uint8x8_from_private(double %37) #18
  store double %call54, ptr %coerce55, align 8
  %38 = load <8 x i8>, ptr %coerce55, align 8, !tbaa !16
  store <8 x i8> %38, ptr %tmp52, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_50) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_47) #17
  %39 = load <8 x i8>, ptr %tmp52, align 8, !tbaa !16
  store <8 x i8> %39, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb56:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_57) #17
  %40 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call58 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %40) #18
  %coerce.dive59 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_57, i32 0, i32 0
  store <16 x i8> %call58, ptr %coerce.dive59, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_60) #17
  %41 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_57, align 16, !tbaa !16
  %42 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_57, align 16, !tbaa !16
  %shuffle61 = shufflevector <16 x i8> %41, <16 x i8> %42, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <8 x i8> %shuffle61, ptr %simde_vdup_laneq_u8_r_60, align 8, !tbaa !16
  %coerce.dive63 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_60, i32 0, i32 0
  %43 = load double, ptr %coerce.dive63, align 8
  %call64 = call double @simde_uint8x8_from_private(double %43) #18
  store double %call64, ptr %coerce65, align 8
  %44 = load <8 x i8>, ptr %coerce65, align 8, !tbaa !16
  store <8 x i8> %44, ptr %tmp62, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_60) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_57) #17
  %45 = load <8 x i8>, ptr %tmp62, align 8, !tbaa !16
  store <8 x i8> %45, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb66:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_67) #17
  %46 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call68 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %46) #18
  %coerce.dive69 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_67, i32 0, i32 0
  store <16 x i8> %call68, ptr %coerce.dive69, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_70) #17
  %47 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_67, align 16, !tbaa !16
  %48 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_67, align 16, !tbaa !16
  %shuffle71 = shufflevector <16 x i8> %47, <16 x i8> %48, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <8 x i8> %shuffle71, ptr %simde_vdup_laneq_u8_r_70, align 8, !tbaa !16
  %coerce.dive73 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_70, i32 0, i32 0
  %49 = load double, ptr %coerce.dive73, align 8
  %call74 = call double @simde_uint8x8_from_private(double %49) #18
  store double %call74, ptr %coerce75, align 8
  %50 = load <8 x i8>, ptr %coerce75, align 8, !tbaa !16
  store <8 x i8> %50, ptr %tmp72, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_70) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_67) #17
  %51 = load <8 x i8>, ptr %tmp72, align 8, !tbaa !16
  store <8 x i8> %51, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb76:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_77) #17
  %52 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call78 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %52) #18
  %coerce.dive79 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_77, i32 0, i32 0
  store <16 x i8> %call78, ptr %coerce.dive79, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_80) #17
  %53 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_77, align 16, !tbaa !16
  %54 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_77, align 16, !tbaa !16
  %shuffle81 = shufflevector <16 x i8> %53, <16 x i8> %54, <8 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  store <8 x i8> %shuffle81, ptr %simde_vdup_laneq_u8_r_80, align 8, !tbaa !16
  %coerce.dive83 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_80, i32 0, i32 0
  %55 = load double, ptr %coerce.dive83, align 8
  %call84 = call double @simde_uint8x8_from_private(double %55) #18
  store double %call84, ptr %coerce85, align 8
  %56 = load <8 x i8>, ptr %coerce85, align 8, !tbaa !16
  store <8 x i8> %56, ptr %tmp82, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_80) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_77) #17
  %57 = load <8 x i8>, ptr %tmp82, align 8, !tbaa !16
  store <8 x i8> %57, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb86:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_87) #17
  %58 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call88 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %58) #18
  %coerce.dive89 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_87, i32 0, i32 0
  store <16 x i8> %call88, ptr %coerce.dive89, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_90) #17
  %59 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_87, align 16, !tbaa !16
  %60 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_87, align 16, !tbaa !16
  %shuffle91 = shufflevector <16 x i8> %59, <16 x i8> %60, <8 x i32> <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  store <8 x i8> %shuffle91, ptr %simde_vdup_laneq_u8_r_90, align 8, !tbaa !16
  %coerce.dive93 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_90, i32 0, i32 0
  %61 = load double, ptr %coerce.dive93, align 8
  %call94 = call double @simde_uint8x8_from_private(double %61) #18
  store double %call94, ptr %coerce95, align 8
  %62 = load <8 x i8>, ptr %coerce95, align 8, !tbaa !16
  store <8 x i8> %62, ptr %tmp92, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_90) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_87) #17
  %63 = load <8 x i8>, ptr %tmp92, align 8, !tbaa !16
  store <8 x i8> %63, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_97) #17
  %64 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call98 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %64) #18
  %coerce.dive99 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_97, i32 0, i32 0
  store <16 x i8> %call98, ptr %coerce.dive99, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_100) #17
  %65 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_97, align 16, !tbaa !16
  %66 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_97, align 16, !tbaa !16
  %shuffle101 = shufflevector <16 x i8> %65, <16 x i8> %66, <8 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  store <8 x i8> %shuffle101, ptr %simde_vdup_laneq_u8_r_100, align 8, !tbaa !16
  %coerce.dive103 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_100, i32 0, i32 0
  %67 = load double, ptr %coerce.dive103, align 8
  %call104 = call double @simde_uint8x8_from_private(double %67) #18
  store double %call104, ptr %coerce105, align 8
  %68 = load <8 x i8>, ptr %coerce105, align 8, !tbaa !16
  store <8 x i8> %68, ptr %tmp102, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_100) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_97) #17
  %69 = load <8 x i8>, ptr %tmp102, align 8, !tbaa !16
  store <8 x i8> %69, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb106:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_107) #17
  %70 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call108 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %70) #18
  %coerce.dive109 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_107, i32 0, i32 0
  store <16 x i8> %call108, ptr %coerce.dive109, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_110) #17
  %71 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_107, align 16, !tbaa !16
  %72 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_107, align 16, !tbaa !16
  %shuffle111 = shufflevector <16 x i8> %71, <16 x i8> %72, <8 x i32> <i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  store <8 x i8> %shuffle111, ptr %simde_vdup_laneq_u8_r_110, align 8, !tbaa !16
  %coerce.dive113 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_110, i32 0, i32 0
  %73 = load double, ptr %coerce.dive113, align 8
  %call114 = call double @simde_uint8x8_from_private(double %73) #18
  store double %call114, ptr %coerce115, align 8
  %74 = load <8 x i8>, ptr %coerce115, align 8, !tbaa !16
  store <8 x i8> %74, ptr %tmp112, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_110) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_107) #17
  %75 = load <8 x i8>, ptr %tmp112, align 8, !tbaa !16
  store <8 x i8> %75, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb116:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_117) #17
  %76 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call118 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %76) #18
  %coerce.dive119 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_117, i32 0, i32 0
  store <16 x i8> %call118, ptr %coerce.dive119, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_120) #17
  %77 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_117, align 16, !tbaa !16
  %78 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_117, align 16, !tbaa !16
  %shuffle121 = shufflevector <16 x i8> %77, <16 x i8> %78, <8 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  store <8 x i8> %shuffle121, ptr %simde_vdup_laneq_u8_r_120, align 8, !tbaa !16
  %coerce.dive123 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_120, i32 0, i32 0
  %79 = load double, ptr %coerce.dive123, align 8
  %call124 = call double @simde_uint8x8_from_private(double %79) #18
  store double %call124, ptr %coerce125, align 8
  %80 = load <8 x i8>, ptr %coerce125, align 8, !tbaa !16
  store <8 x i8> %80, ptr %tmp122, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_120) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_117) #17
  %81 = load <8 x i8>, ptr %tmp122, align 8, !tbaa !16
  store <8 x i8> %81, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb126:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_127) #17
  %82 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call128 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %82) #18
  %coerce.dive129 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_127, i32 0, i32 0
  store <16 x i8> %call128, ptr %coerce.dive129, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_130) #17
  %83 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_127, align 16, !tbaa !16
  %84 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_127, align 16, !tbaa !16
  %shuffle131 = shufflevector <16 x i8> %83, <16 x i8> %84, <8 x i32> <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  store <8 x i8> %shuffle131, ptr %simde_vdup_laneq_u8_r_130, align 8, !tbaa !16
  %coerce.dive133 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_130, i32 0, i32 0
  %85 = load double, ptr %coerce.dive133, align 8
  %call134 = call double @simde_uint8x8_from_private(double %85) #18
  store double %call134, ptr %coerce135, align 8
  %86 = load <8 x i8>, ptr %coerce135, align 8, !tbaa !16
  store <8 x i8> %86, ptr %tmp132, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_130) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_127) #17
  %87 = load <8 x i8>, ptr %tmp132, align 8, !tbaa !16
  store <8 x i8> %87, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb136:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_137) #17
  %88 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call138 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %88) #18
  %coerce.dive139 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_137, i32 0, i32 0
  store <16 x i8> %call138, ptr %coerce.dive139, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_140) #17
  %89 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_137, align 16, !tbaa !16
  %90 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_137, align 16, !tbaa !16
  %shuffle141 = shufflevector <16 x i8> %89, <16 x i8> %90, <8 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  store <8 x i8> %shuffle141, ptr %simde_vdup_laneq_u8_r_140, align 8, !tbaa !16
  %coerce.dive143 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_140, i32 0, i32 0
  %91 = load double, ptr %coerce.dive143, align 8
  %call144 = call double @simde_uint8x8_from_private(double %91) #18
  store double %call144, ptr %coerce145, align 8
  %92 = load <8 x i8>, ptr %coerce145, align 8, !tbaa !16
  store <8 x i8> %92, ptr %tmp142, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_140) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_137) #17
  %93 = load <8 x i8>, ptr %tmp142, align 8, !tbaa !16
  store <8 x i8> %93, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb146:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_147) #17
  %94 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call148 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %94) #18
  %coerce.dive149 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdup_laneq_u8_vec_147, i32 0, i32 0
  store <16 x i8> %call148, ptr %coerce.dive149, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u8_r_150) #17
  %95 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_147, align 16, !tbaa !16
  %96 = load <16 x i8>, ptr %simde_vdup_laneq_u8_vec_147, align 16, !tbaa !16
  %shuffle151 = shufflevector <16 x i8> %95, <16 x i8> %96, <8 x i32> <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  store <8 x i8> %shuffle151, ptr %simde_vdup_laneq_u8_r_150, align 8, !tbaa !16
  %coerce.dive153 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdup_laneq_u8_r_150, i32 0, i32 0
  %97 = load double, ptr %coerce.dive153, align 8
  %call154 = call double @simde_uint8x8_from_private(double %97) #18
  store double %call154, ptr %coerce155, align 8
  %98 = load <8 x i8>, ptr %coerce155, align 8, !tbaa !16
  store <8 x i8> %98, ptr %tmp152, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u8_r_150) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u8_vec_147) #17
  %99 = load <8 x i8>, ptr %tmp152, align 8, !tbaa !16
  store <8 x i8> %99, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb146, %sw.bb136, %sw.bb126, %sw.bb116, %sw.bb106, %sw.bb96, %sw.bb86, %sw.bb76, %sw.bb66, %sw.bb56, %sw.bb46, %sw.bb36, %sw.bb26, %sw.bb16, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body158

do.body158:                                       ; preds = %do.end
  %100 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  %101 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx159 = getelementptr inbounds [8 x %struct.anon.16], ptr %test_vec, i64 0, i64 %101
  %r160 = getelementptr inbounds %struct.anon.16, ptr %arrayidx159, i32 0, i32 2
  %arraydecay161 = getelementptr inbounds [8 x i8], ptr %r160, i64 0, i64 0
  %call162 = call double @simde_vld1_u8(ptr noundef %arraydecay161)
  store double %call162, ptr %coerce163, align 8
  %102 = load <8 x i8>, ptr %coerce163, align 8, !tbaa !16
  store <8 x i8> %100, ptr %coerce164, align 8, !tbaa !16
  %103 = load double, ptr %coerce164, align 8
  store <8 x i8> %102, ptr %coerce165, align 8, !tbaa !16
  %104 = load double, ptr %coerce165, align 8
  %call166 = call i32 @simde_test_arm_neon_assert_equal_u8x8_(double noundef %103, double noundef %104, ptr noundef @.str.43, i32 noundef 1022, ptr noundef @.str.44, ptr noundef @.str.54)
  %tobool = icmp ne i32 %call166, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body158
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body158
  br label %do.cond167

do.cond167:                                       ; preds = %if.end
  br label %do.end168

do.end168:                                        ; preds = %do.cond167
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end168, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup170 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %105 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %105, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup170:                                       ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest171 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest171, label %cleanup172 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup170
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup172

cleanup172:                                       ; preds = %for.end, %cleanup170
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_u16() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.17], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <8 x i16>, align 16
  %r = alloca <4 x i16>, align 8
  %simde_vdup_laneq_u16_vec_ = alloca %union.simde_uint16x8_private, align 16
  %simde_vdup_laneq_u16_r_ = alloca %union.simde_uint16x4_private, align 8
  %tmp = alloca <4 x i16>, align 8
  %coerce = alloca <4 x i16>, align 8
  %simde_vdup_laneq_u16_vec_7 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdup_laneq_u16_r_10 = alloca %union.simde_uint16x4_private, align 8
  %tmp12 = alloca <4 x i16>, align 8
  %coerce15 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_u16_vec_17 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdup_laneq_u16_r_20 = alloca %union.simde_uint16x4_private, align 8
  %tmp22 = alloca <4 x i16>, align 8
  %coerce25 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_u16_vec_27 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdup_laneq_u16_r_30 = alloca %union.simde_uint16x4_private, align 8
  %tmp32 = alloca <4 x i16>, align 8
  %coerce35 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_u16_vec_37 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdup_laneq_u16_r_40 = alloca %union.simde_uint16x4_private, align 8
  %tmp42 = alloca <4 x i16>, align 8
  %coerce45 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_u16_vec_47 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdup_laneq_u16_r_50 = alloca %union.simde_uint16x4_private, align 8
  %tmp52 = alloca <4 x i16>, align 8
  %coerce55 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_u16_vec_57 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdup_laneq_u16_r_60 = alloca %union.simde_uint16x4_private, align 8
  %tmp62 = alloca <4 x i16>, align 8
  %coerce65 = alloca <4 x i16>, align 8
  %simde_vdup_laneq_u16_vec_67 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdup_laneq_u16_r_70 = alloca %union.simde_uint16x4_private, align 8
  %tmp72 = alloca <4 x i16>, align 8
  %coerce75 = alloca <4 x i16>, align 8
  %coerce77 = alloca <4 x i16>, align 8
  %coerce83 = alloca <4 x i16>, align 8
  %coerce84 = alloca <4 x i16>, align 8
  %coerce85 = alloca <4 x i16>, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_u16.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup90

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.17], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.17, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %vec1, i64 0, i64 0
  %call = call <8 x i16> @simde_vld1q_u16(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.17], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.17, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
    i32 4, label %sw.bb36
    i32 5, label %sw.bb46
    i32 6, label %sw.bb56
    i32 7, label %sw.bb66
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_) #17
  %4 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call3 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdup_laneq_u16_vec_, i32 0, i32 0
  store <8 x i16> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u16_r_) #17
  %5 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_, align 16, !tbaa !16
  %6 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <8 x i16> %5, <8 x i16> %6, <4 x i32> zeroinitializer
  store <4 x i16> %shuffle, ptr %simde_vdup_laneq_u16_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_laneq_u16_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_uint16x4_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u16_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_) #17
  %9 = load <4 x i16>, ptr %tmp, align 8, !tbaa !16
  store <4 x i16> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_7) #17
  %10 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call8 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdup_laneq_u16_vec_7, i32 0, i32 0
  store <8 x i16> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u16_r_10) #17
  %11 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_7, align 16, !tbaa !16
  %12 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <8 x i16> %11, <8 x i16> %12, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i16> %shuffle11, ptr %simde_vdup_laneq_u16_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_laneq_u16_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_uint16x4_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <4 x i16>, ptr %coerce15, align 8, !tbaa !16
  store <4 x i16> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u16_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_7) #17
  %15 = load <4 x i16>, ptr %tmp12, align 8, !tbaa !16
  store <4 x i16> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_17) #17
  %16 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call18 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %16) #18
  %coerce.dive19 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdup_laneq_u16_vec_17, i32 0, i32 0
  store <8 x i16> %call18, ptr %coerce.dive19, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u16_r_20) #17
  %17 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_17, align 16, !tbaa !16
  %18 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_17, align 16, !tbaa !16
  %shuffle21 = shufflevector <8 x i16> %17, <8 x i16> %18, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  store <4 x i16> %shuffle21, ptr %simde_vdup_laneq_u16_r_20, align 8, !tbaa !16
  %coerce.dive23 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_laneq_u16_r_20, i32 0, i32 0
  %19 = load double, ptr %coerce.dive23, align 8
  %call24 = call double @simde_uint16x4_from_private(double %19) #18
  store double %call24, ptr %coerce25, align 8
  %20 = load <4 x i16>, ptr %coerce25, align 8, !tbaa !16
  store <4 x i16> %20, ptr %tmp22, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u16_r_20) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_17) #17
  %21 = load <4 x i16>, ptr %tmp22, align 8, !tbaa !16
  store <4 x i16> %21, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_27) #17
  %22 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call28 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %22) #18
  %coerce.dive29 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdup_laneq_u16_vec_27, i32 0, i32 0
  store <8 x i16> %call28, ptr %coerce.dive29, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u16_r_30) #17
  %23 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_27, align 16, !tbaa !16
  %24 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_27, align 16, !tbaa !16
  %shuffle31 = shufflevector <8 x i16> %23, <8 x i16> %24, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  store <4 x i16> %shuffle31, ptr %simde_vdup_laneq_u16_r_30, align 8, !tbaa !16
  %coerce.dive33 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_laneq_u16_r_30, i32 0, i32 0
  %25 = load double, ptr %coerce.dive33, align 8
  %call34 = call double @simde_uint16x4_from_private(double %25) #18
  store double %call34, ptr %coerce35, align 8
  %26 = load <4 x i16>, ptr %coerce35, align 8, !tbaa !16
  store <4 x i16> %26, ptr %tmp32, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u16_r_30) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_27) #17
  %27 = load <4 x i16>, ptr %tmp32, align 8, !tbaa !16
  store <4 x i16> %27, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb36:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_37) #17
  %28 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call38 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %28) #18
  %coerce.dive39 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdup_laneq_u16_vec_37, i32 0, i32 0
  store <8 x i16> %call38, ptr %coerce.dive39, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u16_r_40) #17
  %29 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_37, align 16, !tbaa !16
  %30 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_37, align 16, !tbaa !16
  %shuffle41 = shufflevector <8 x i16> %29, <8 x i16> %30, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  store <4 x i16> %shuffle41, ptr %simde_vdup_laneq_u16_r_40, align 8, !tbaa !16
  %coerce.dive43 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_laneq_u16_r_40, i32 0, i32 0
  %31 = load double, ptr %coerce.dive43, align 8
  %call44 = call double @simde_uint16x4_from_private(double %31) #18
  store double %call44, ptr %coerce45, align 8
  %32 = load <4 x i16>, ptr %coerce45, align 8, !tbaa !16
  store <4 x i16> %32, ptr %tmp42, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u16_r_40) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_37) #17
  %33 = load <4 x i16>, ptr %tmp42, align 8, !tbaa !16
  store <4 x i16> %33, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb46:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_47) #17
  %34 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call48 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %34) #18
  %coerce.dive49 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdup_laneq_u16_vec_47, i32 0, i32 0
  store <8 x i16> %call48, ptr %coerce.dive49, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u16_r_50) #17
  %35 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_47, align 16, !tbaa !16
  %36 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_47, align 16, !tbaa !16
  %shuffle51 = shufflevector <8 x i16> %35, <8 x i16> %36, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  store <4 x i16> %shuffle51, ptr %simde_vdup_laneq_u16_r_50, align 8, !tbaa !16
  %coerce.dive53 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_laneq_u16_r_50, i32 0, i32 0
  %37 = load double, ptr %coerce.dive53, align 8
  %call54 = call double @simde_uint16x4_from_private(double %37) #18
  store double %call54, ptr %coerce55, align 8
  %38 = load <4 x i16>, ptr %coerce55, align 8, !tbaa !16
  store <4 x i16> %38, ptr %tmp52, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u16_r_50) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_47) #17
  %39 = load <4 x i16>, ptr %tmp52, align 8, !tbaa !16
  store <4 x i16> %39, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb56:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_57) #17
  %40 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call58 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %40) #18
  %coerce.dive59 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdup_laneq_u16_vec_57, i32 0, i32 0
  store <8 x i16> %call58, ptr %coerce.dive59, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u16_r_60) #17
  %41 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_57, align 16, !tbaa !16
  %42 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_57, align 16, !tbaa !16
  %shuffle61 = shufflevector <8 x i16> %41, <8 x i16> %42, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  store <4 x i16> %shuffle61, ptr %simde_vdup_laneq_u16_r_60, align 8, !tbaa !16
  %coerce.dive63 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_laneq_u16_r_60, i32 0, i32 0
  %43 = load double, ptr %coerce.dive63, align 8
  %call64 = call double @simde_uint16x4_from_private(double %43) #18
  store double %call64, ptr %coerce65, align 8
  %44 = load <4 x i16>, ptr %coerce65, align 8, !tbaa !16
  store <4 x i16> %44, ptr %tmp62, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u16_r_60) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_57) #17
  %45 = load <4 x i16>, ptr %tmp62, align 8, !tbaa !16
  store <4 x i16> %45, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb66:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_67) #17
  %46 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call68 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %46) #18
  %coerce.dive69 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdup_laneq_u16_vec_67, i32 0, i32 0
  store <8 x i16> %call68, ptr %coerce.dive69, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u16_r_70) #17
  %47 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_67, align 16, !tbaa !16
  %48 = load <8 x i16>, ptr %simde_vdup_laneq_u16_vec_67, align 16, !tbaa !16
  %shuffle71 = shufflevector <8 x i16> %47, <8 x i16> %48, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  store <4 x i16> %shuffle71, ptr %simde_vdup_laneq_u16_r_70, align 8, !tbaa !16
  %coerce.dive73 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdup_laneq_u16_r_70, i32 0, i32 0
  %49 = load double, ptr %coerce.dive73, align 8
  %call74 = call double @simde_uint16x4_from_private(double %49) #18
  store double %call74, ptr %coerce75, align 8
  %50 = load <4 x i16>, ptr %coerce75, align 8, !tbaa !16
  store <4 x i16> %50, ptr %tmp72, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u16_r_70) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u16_vec_67) #17
  %51 = load <4 x i16>, ptr %tmp72, align 8, !tbaa !16
  store <4 x i16> %51, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb56, %sw.bb46, %sw.bb36, %sw.bb26, %sw.bb16, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body78

do.body78:                                        ; preds = %do.end
  %52 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  %53 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx79 = getelementptr inbounds [8 x %struct.anon.17], ptr %test_vec, i64 0, i64 %53
  %r80 = getelementptr inbounds %struct.anon.17, ptr %arrayidx79, i32 0, i32 2
  %arraydecay81 = getelementptr inbounds [4 x i16], ptr %r80, i64 0, i64 0
  %call82 = call double @simde_vld1_u16(ptr noundef %arraydecay81)
  store double %call82, ptr %coerce83, align 8
  %54 = load <4 x i16>, ptr %coerce83, align 8, !tbaa !16
  store <4 x i16> %52, ptr %coerce84, align 8, !tbaa !16
  %55 = load double, ptr %coerce84, align 8
  store <4 x i16> %54, ptr %coerce85, align 8, !tbaa !16
  %56 = load double, ptr %coerce85, align 8
  %call86 = call i32 @simde_test_arm_neon_assert_equal_u16x4_(double noundef %55, double noundef %56, ptr noundef @.str.43, i32 noundef 1084, ptr noundef @.str.44, ptr noundef @.str.56)
  %tobool = icmp ne i32 %call86, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body78
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body78
  br label %do.cond87

do.cond87:                                        ; preds = %if.end
  br label %do.end88

do.end88:                                         ; preds = %do.cond87
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup90 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %57 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %57, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup90:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest91 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest91, label %cleanup92 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup90
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92

cleanup92:                                        ; preds = %for.end, %cleanup90
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_u32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.18], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x i32>, align 16
  %r = alloca <2 x i32>, align 8
  %simde_vdup_laneq_u32_vec_ = alloca %union.simde_uint32x4_private, align 16
  %simde_vdup_laneq_u32_r_ = alloca %union.simde_uint32x2_private, align 8
  %tmp = alloca <2 x i32>, align 8
  %coerce = alloca <2 x i32>, align 8
  %simde_vdup_laneq_u32_vec_7 = alloca %union.simde_uint32x4_private, align 16
  %simde_vdup_laneq_u32_r_10 = alloca %union.simde_uint32x2_private, align 8
  %tmp12 = alloca <2 x i32>, align 8
  %coerce15 = alloca <2 x i32>, align 8
  %simde_vdup_laneq_u32_vec_17 = alloca %union.simde_uint32x4_private, align 16
  %simde_vdup_laneq_u32_r_20 = alloca %union.simde_uint32x2_private, align 8
  %tmp22 = alloca <2 x i32>, align 8
  %coerce25 = alloca <2 x i32>, align 8
  %simde_vdup_laneq_u32_vec_27 = alloca %union.simde_uint32x4_private, align 16
  %simde_vdup_laneq_u32_r_30 = alloca %union.simde_uint32x2_private, align 8
  %tmp32 = alloca <2 x i32>, align 8
  %coerce35 = alloca <2 x i32>, align 8
  %coerce37 = alloca <2 x i32>, align 8
  %coerce43 = alloca <2 x i32>, align 8
  %coerce44 = alloca <2 x i32>, align 8
  %coerce45 = alloca <2 x i32>, align 8
  call void @llvm.lifetime.start.p0(i64 352, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_u32.test_vec, i64 352, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup50

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.18], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.18, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i32], ptr %vec1, i64 0, i64 0
  %call = call <4 x i32> @simde_vld1q_u32(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.18], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.18, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !23
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb16
    i32 3, label %sw.bb26
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u32_vec_) #17
  %4 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call3 = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdup_laneq_u32_vec_, i32 0, i32 0
  store <4 x i32> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u32_r_) #17
  %5 = load <4 x i32>, ptr %simde_vdup_laneq_u32_vec_, align 16, !tbaa !16
  %6 = load <4 x i32>, ptr %simde_vdup_laneq_u32_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <4 x i32> %5, <4 x i32> %6, <2 x i32> zeroinitializer
  store <2 x i32> %shuffle, ptr %simde_vdup_laneq_u32_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdup_laneq_u32_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_uint32x2_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u32_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u32_vec_) #17
  %9 = load <2 x i32>, ptr %tmp, align 8, !tbaa !16
  store <2 x i32> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u32_vec_7) #17
  %10 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call8 = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdup_laneq_u32_vec_7, i32 0, i32 0
  store <4 x i32> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u32_r_10) #17
  %11 = load <4 x i32>, ptr %simde_vdup_laneq_u32_vec_7, align 16, !tbaa !16
  %12 = load <4 x i32>, ptr %simde_vdup_laneq_u32_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <4 x i32> %11, <4 x i32> %12, <2 x i32> <i32 1, i32 1>
  store <2 x i32> %shuffle11, ptr %simde_vdup_laneq_u32_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdup_laneq_u32_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_uint32x2_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <2 x i32>, ptr %coerce15, align 8, !tbaa !16
  store <2 x i32> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u32_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u32_vec_7) #17
  %15 = load <2 x i32>, ptr %tmp12, align 8, !tbaa !16
  store <2 x i32> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u32_vec_17) #17
  %16 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call18 = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %16) #18
  %coerce.dive19 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdup_laneq_u32_vec_17, i32 0, i32 0
  store <4 x i32> %call18, ptr %coerce.dive19, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u32_r_20) #17
  %17 = load <4 x i32>, ptr %simde_vdup_laneq_u32_vec_17, align 16, !tbaa !16
  %18 = load <4 x i32>, ptr %simde_vdup_laneq_u32_vec_17, align 16, !tbaa !16
  %shuffle21 = shufflevector <4 x i32> %17, <4 x i32> %18, <2 x i32> <i32 2, i32 2>
  store <2 x i32> %shuffle21, ptr %simde_vdup_laneq_u32_r_20, align 8, !tbaa !16
  %coerce.dive23 = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdup_laneq_u32_r_20, i32 0, i32 0
  %19 = load double, ptr %coerce.dive23, align 8
  %call24 = call double @simde_uint32x2_from_private(double %19) #18
  store double %call24, ptr %coerce25, align 8
  %20 = load <2 x i32>, ptr %coerce25, align 8, !tbaa !16
  store <2 x i32> %20, ptr %tmp22, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u32_r_20) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u32_vec_17) #17
  %21 = load <2 x i32>, ptr %tmp22, align 8, !tbaa !16
  store <2 x i32> %21, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u32_vec_27) #17
  %22 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call28 = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %22) #18
  %coerce.dive29 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdup_laneq_u32_vec_27, i32 0, i32 0
  store <4 x i32> %call28, ptr %coerce.dive29, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u32_r_30) #17
  %23 = load <4 x i32>, ptr %simde_vdup_laneq_u32_vec_27, align 16, !tbaa !16
  %24 = load <4 x i32>, ptr %simde_vdup_laneq_u32_vec_27, align 16, !tbaa !16
  %shuffle31 = shufflevector <4 x i32> %23, <4 x i32> %24, <2 x i32> <i32 3, i32 3>
  store <2 x i32> %shuffle31, ptr %simde_vdup_laneq_u32_r_30, align 8, !tbaa !16
  %coerce.dive33 = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdup_laneq_u32_r_30, i32 0, i32 0
  %25 = load double, ptr %coerce.dive33, align 8
  %call34 = call double @simde_uint32x2_from_private(double %25) #18
  store double %call34, ptr %coerce35, align 8
  %26 = load <2 x i32>, ptr %coerce35, align 8, !tbaa !16
  store <2 x i32> %26, ptr %tmp32, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u32_r_30) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u32_vec_27) #17
  %27 = load <2 x i32>, ptr %tmp32, align 8, !tbaa !16
  store <2 x i32> %27, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb26, %sw.bb16, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body38

do.body38:                                        ; preds = %do.end
  %28 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  %29 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx39 = getelementptr inbounds [8 x %struct.anon.18], ptr %test_vec, i64 0, i64 %29
  %r40 = getelementptr inbounds %struct.anon.18, ptr %arrayidx39, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [2 x i32], ptr %r40, i64 0, i64 0
  %call42 = call double @simde_vld1_u32(ptr noundef %arraydecay41)
  store double %call42, ptr %coerce43, align 8
  %30 = load <2 x i32>, ptr %coerce43, align 8, !tbaa !16
  store <2 x i32> %28, ptr %coerce44, align 8, !tbaa !16
  %31 = load double, ptr %coerce44, align 8
  store <2 x i32> %30, ptr %coerce45, align 8, !tbaa !16
  %32 = load double, ptr %coerce45, align 8
  %call46 = call i32 @simde_test_arm_neon_assert_equal_u32x2_(double noundef %31, double noundef %32, ptr noundef @.str.43, i32 noundef 1146, ptr noundef @.str.44, ptr noundef @.str.57)
  %tobool = icmp ne i32 %call46, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body38
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body38
  br label %do.cond47

do.cond47:                                        ; preds = %if.end
  br label %do.end48

do.end48:                                         ; preds = %do.cond47
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %33, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup50:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest51 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest51, label %cleanup52 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %for.end, %cleanup50
  call void @llvm.lifetime.end.p0(i64 352, ptr %test_vec) #17
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdup_laneq_u64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.19], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x i64>, align 16
  %r = alloca <1 x i64>, align 8
  %simde_vdup_laneq_u64_vec_ = alloca %union.simde_uint64x2_private, align 16
  %simde_vdup_laneq_u64_r_ = alloca %union.simde_uint64x1_private, align 8
  %tmp = alloca <1 x i64>, align 8
  %coerce = alloca <1 x i64>, align 8
  %simde_vdup_laneq_u64_vec_7 = alloca %union.simde_uint64x2_private, align 16
  %simde_vdup_laneq_u64_r_10 = alloca %union.simde_uint64x1_private, align 8
  %tmp12 = alloca <1 x i64>, align 8
  %coerce15 = alloca <1 x i64>, align 8
  %coerce17 = alloca <1 x i64>, align 8
  %coerce23 = alloca <1 x i64>, align 8
  %coerce24 = alloca <1 x i64>, align 8
  %coerce25 = alloca <1 x i64>, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdup_laneq_u64.test_vec, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.19], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.19, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %vec1, i64 0, i64 0
  %call = call <2 x i64> @simde_vld1q_u64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.19], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.19, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 16, !tbaa !21
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u64_vec_) #17
  %4 = load <2 x i64>, ptr %vec, align 16, !tbaa !16
  %call3 = call <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %simde_vdup_laneq_u64_vec_, i32 0, i32 0
  store <2 x i64> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u64_r_) #17
  %5 = load <2 x i64>, ptr %simde_vdup_laneq_u64_vec_, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %simde_vdup_laneq_u64_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <2 x i64> %5, <2 x i64> %6, <1 x i32> zeroinitializer
  store <1 x i64> %shuffle, ptr %simde_vdup_laneq_u64_r_, align 8, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint64x1_private, ptr %simde_vdup_laneq_u64_r_, i32 0, i32 0
  %7 = load double, ptr %coerce.dive4, align 8
  %call5 = call double @simde_uint64x1_from_private(double %7) #18
  store double %call5, ptr %coerce, align 8
  %8 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %8, ptr %tmp, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u64_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u64_vec_) #17
  %9 = load <1 x i64>, ptr %tmp, align 8, !tbaa !16
  store <1 x i64> %9, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdup_laneq_u64_vec_7) #17
  %10 = load <2 x i64>, ptr %vec, align 16, !tbaa !16
  %call8 = call <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %10) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_uint64x2_private, ptr %simde_vdup_laneq_u64_vec_7, i32 0, i32 0
  store <2 x i64> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdup_laneq_u64_r_10) #17
  %11 = load <2 x i64>, ptr %simde_vdup_laneq_u64_vec_7, align 16, !tbaa !16
  %12 = load <2 x i64>, ptr %simde_vdup_laneq_u64_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <2 x i64> %11, <2 x i64> %12, <1 x i32> <i32 1>
  store <1 x i64> %shuffle11, ptr %simde_vdup_laneq_u64_r_10, align 8, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_uint64x1_private, ptr %simde_vdup_laneq_u64_r_10, i32 0, i32 0
  %13 = load double, ptr %coerce.dive13, align 8
  %call14 = call double @simde_uint64x1_from_private(double %13) #18
  store double %call14, ptr %coerce15, align 8
  %14 = load <1 x i64>, ptr %coerce15, align 8, !tbaa !16
  store <1 x i64> %14, ptr %tmp12, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdup_laneq_u64_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdup_laneq_u64_vec_7) #17
  %15 = load <1 x i64>, ptr %tmp12, align 8, !tbaa !16
  store <1 x i64> %15, ptr %r, align 8, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %16 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  %17 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx19 = getelementptr inbounds [8 x %struct.anon.19], ptr %test_vec, i64 0, i64 %17
  %r20 = getelementptr inbounds %struct.anon.19, ptr %arrayidx19, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [1 x i64], ptr %r20, i64 0, i64 0
  %call22 = call double @simde_vld1_u64(ptr noundef %arraydecay21)
  store double %call22, ptr %coerce23, align 8
  %18 = load <1 x i64>, ptr %coerce23, align 8, !tbaa !16
  store <1 x i64> %16, ptr %coerce24, align 8, !tbaa !16
  %19 = load double, ptr %coerce24, align 8
  store <1 x i64> %18, ptr %coerce25, align 8, !tbaa !16
  %20 = load double, ptr %coerce25, align 8
  %call26 = call i32 @simde_test_arm_neon_assert_equal_u64x1_(double noundef %19, double noundef %20, ptr noundef @.str.43, i32 noundef 1208, ptr noundef @.str.44, ptr noundef @.str.58)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body18
  br label %do.cond27

do.cond27:                                        ; preds = %if.end
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %21, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup30:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest31 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest31, label %cleanup32 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup30
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %for.end, %cleanup30
  call void @llvm.lifetime.end.p0(i64 256, ptr %test_vec) #17
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_f32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.20], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x float>, align 8
  %r = alloca <4 x float>, align 16
  %coerce = alloca <2 x float>, align 8
  %simde_vdupq_lane_f32_vec_ = alloca %union.simde_float32x2_private, align 8
  %coerce3 = alloca <2 x float>, align 8
  %simde_vdupq_lane_f32_r_ = alloca %union.simde_float32x4_private, align 16
  %tmp = alloca <4 x float>, align 16
  %simde_vdupq_lane_f32_vec_8 = alloca %union.simde_float32x2_private, align 8
  %coerce9 = alloca <2 x float>, align 8
  %simde_vdupq_lane_f32_r_12 = alloca %union.simde_float32x4_private, align 16
  %tmp14 = alloca <4 x float>, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_f32.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup28

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.20], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.20, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x float], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_f32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x float>, ptr %coerce, align 8, !tbaa !16
  store <2 x float> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.20], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.20, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_f32_vec_) #17
  %5 = load <2 x float>, ptr %vec, align 8, !tbaa !16
  store <2 x float> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_float32x2_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdupq_lane_f32_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_f32_r_) #17
  %7 = load <2 x float>, ptr %simde_vdupq_lane_f32_vec_, align 8, !tbaa !16
  %8 = load <2 x float>, ptr %simde_vdupq_lane_f32_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <2 x float> %7, <2 x float> %8, <4 x i32> zeroinitializer
  store <4 x float> %shuffle, ptr %simde_vdupq_lane_f32_r_, align 16, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_lane_f32_r_, i32 0, i32 0
  %9 = load <4 x float>, ptr %coerce.dive5, align 16
  %call6 = call <4 x float> @simde_float32x4_from_private(<4 x float> %9) #18
  store <4 x float> %call6, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_f32_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_f32_vec_) #17
  %10 = load <4 x float>, ptr %tmp, align 16, !tbaa !16
  store <4 x float> %10, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_f32_vec_8) #17
  %11 = load <2 x float>, ptr %vec, align 8, !tbaa !16
  store <2 x float> %11, ptr %coerce9, align 8, !tbaa !16
  %12 = load double, ptr %coerce9, align 8
  %call10 = call double @simde_float32x2_to_private(double noundef %12) #18
  %coerce.dive11 = getelementptr inbounds %union.simde_float32x2_private, ptr %simde_vdupq_lane_f32_vec_8, i32 0, i32 0
  store double %call10, ptr %coerce.dive11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_f32_r_12) #17
  %13 = load <2 x float>, ptr %simde_vdupq_lane_f32_vec_8, align 8, !tbaa !16
  %14 = load <2 x float>, ptr %simde_vdupq_lane_f32_vec_8, align 8, !tbaa !16
  %shuffle13 = shufflevector <2 x float> %13, <2 x float> %14, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x float> %shuffle13, ptr %simde_vdupq_lane_f32_r_12, align 16, !tbaa !16
  %coerce.dive15 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_lane_f32_r_12, i32 0, i32 0
  %15 = load <4 x float>, ptr %coerce.dive15, align 16
  %call16 = call <4 x float> @simde_float32x4_from_private(<4 x float> %15) #18
  store <4 x float> %call16, ptr %tmp14, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_f32_r_12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_f32_vec_8) #17
  %16 = load <4 x float>, ptr %tmp14, align 16, !tbaa !16
  store <4 x float> %16, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %17 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx19 = getelementptr inbounds [8 x %struct.anon.20], ptr %test_vec, i64 0, i64 %18
  %r20 = getelementptr inbounds %struct.anon.20, ptr %arrayidx19, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [4 x float], ptr %r20, i64 0, i64 0
  %call22 = call <4 x float> @simde_vld1q_f32(ptr noundef %arraydecay21)
  %call23 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call24 = call i32 @simde_test_arm_neon_assert_equal_f32x4_(<4 x float> noundef %17, <4 x float> noundef %call22, float noundef %call23, ptr noundef @.str.43, i32 noundef 1270, ptr noundef @.str.44, ptr noundef @.str.60)
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body18
  br label %do.cond25

do.cond25:                                        ; preds = %if.end
  br label %do.end26

do.end26:                                         ; preds = %do.cond25
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup28 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %19 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %19, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup28:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest29 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest29, label %cleanup30 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup28
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30

cleanup30:                                        ; preds = %for.end, %cleanup28
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_f64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.21], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <1 x double>, align 8
  %r = alloca <2 x double>, align 16
  %simde_vdupq_lane_f64_vec_ = alloca %union.simde_float64x1_private, align 8
  %indirect-arg-temp = alloca <1 x double>, align 8
  %simde_vdupq_lane_f64_r_ = alloca %union.simde_float64x2_private, align 16
  %tmp = alloca <2 x double>, align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_f64.test_vec, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup10

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.21], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.21, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x double], ptr %vec1, i64 0, i64 0
  %call = call <1 x double> @simde_vld1_f64(ptr noundef %arraydecay)
  store <1 x double> %call, ptr %vec, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_f64_vec_) #17
  %2 = load <1 x double>, ptr %vec, align 8, !tbaa !16
  store <1 x double> %2, ptr %indirect-arg-temp, align 8, !tbaa !16
  call void @simde_float64x1_to_private(ptr sret(%union.simde_float64x1_private) align 8 %simde_vdupq_lane_f64_vec_, ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_f64_r_) #17
  %3 = load <1 x double>, ptr %simde_vdupq_lane_f64_vec_, align 8, !tbaa !16
  %4 = load <1 x double>, ptr %simde_vdupq_lane_f64_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <1 x double> %3, <1 x double> %4, <2 x i32> zeroinitializer
  store <2 x double> %shuffle, ptr %simde_vdupq_lane_f64_r_, align 16, !tbaa !16
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %simde_vdupq_lane_f64_r_, i32 0, i32 0
  %5 = load <2 x double>, ptr %coerce.dive, align 16
  %call2 = call <2 x double> @simde_float64x2_from_private(<2 x double> %5) #18
  store <2 x double> %call2, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_f64_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_f64_vec_) #17
  %6 = load <2 x double>, ptr %tmp, align 16, !tbaa !16
  store <2 x double> %6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %7 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.21], ptr %test_vec, i64 0, i64 %8
  %r4 = getelementptr inbounds %struct.anon.21, ptr %arrayidx3, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [2 x double], ptr %r4, i64 0, i64 0
  %call6 = call <2 x double> @simde_vld1q_f64(ptr noundef %arraydecay5)
  %call7 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call8 = call i32 @simde_test_arm_neon_assert_equal_f64x2_(<2 x double> noundef %7, <2 x double> noundef %call6, double noundef %call7, ptr noundef @.str.43, i32 noundef 1331, ptr noundef @.str.44, ptr noundef @.str.61)
  %tobool = icmp ne i32 %call8, 0
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup10:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest11 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest11, label %cleanup12 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup12

cleanup12:                                        ; preds = %for.end, %cleanup10
  call void @llvm.lifetime.end.p0(i64 256, ptr %test_vec) #17
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_s8() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.22], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <8 x i8>, align 8
  %r = alloca <16 x i8>, align 16
  %coerce = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_vec_ = alloca %union.simde_int8x8_private, align 8
  %coerce3 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_r_ = alloca %union.simde_int8x16_private, align 16
  %tmp = alloca <16 x i8>, align 16
  %simde_vdupq_lane_s8_vec_8 = alloca %union.simde_int8x8_private, align 8
  %coerce9 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_r_12 = alloca %union.simde_int8x16_private, align 16
  %tmp14 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_s8_vec_18 = alloca %union.simde_int8x8_private, align 8
  %coerce19 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_r_22 = alloca %union.simde_int8x16_private, align 16
  %tmp24 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_s8_vec_28 = alloca %union.simde_int8x8_private, align 8
  %coerce29 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_r_32 = alloca %union.simde_int8x16_private, align 16
  %tmp34 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_s8_vec_38 = alloca %union.simde_int8x8_private, align 8
  %coerce39 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_r_42 = alloca %union.simde_int8x16_private, align 16
  %tmp44 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_s8_vec_48 = alloca %union.simde_int8x8_private, align 8
  %coerce49 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_r_52 = alloca %union.simde_int8x16_private, align 16
  %tmp54 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_s8_vec_58 = alloca %union.simde_int8x8_private, align 8
  %coerce59 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_r_62 = alloca %union.simde_int8x16_private, align 16
  %tmp64 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_s8_vec_68 = alloca %union.simde_int8x8_private, align 8
  %coerce69 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_s8_r_72 = alloca %union.simde_int8x16_private, align 16
  %tmp74 = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_s8.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup87

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.22], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.22, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_s8(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.22], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.22, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb17
    i32 3, label %sw.bb27
    i32 4, label %sw.bb37
    i32 5, label %sw.bb47
    i32 6, label %sw.bb57
    i32 7, label %sw.bb67
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_) #17
  %5 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int8x8_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdupq_lane_s8_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s8_r_) #17
  %7 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_, align 8, !tbaa !16
  %8 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <8 x i8> %7, <8 x i8> %8, <16 x i32> zeroinitializer
  store <16 x i8> %shuffle, ptr %simde_vdupq_lane_s8_r_, align 16, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_lane_s8_r_, i32 0, i32 0
  %9 = load <16 x i8>, ptr %coerce.dive5, align 16
  %call6 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %9) #18
  store <16 x i8> %call6, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s8_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_) #17
  %10 = load <16 x i8>, ptr %tmp, align 16, !tbaa !16
  store <16 x i8> %10, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_8) #17
  %11 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %11, ptr %coerce9, align 8, !tbaa !16
  %12 = load double, ptr %coerce9, align 8
  %call10 = call double @simde_int8x8_to_private(double noundef %12) #18
  %coerce.dive11 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdupq_lane_s8_vec_8, i32 0, i32 0
  store double %call10, ptr %coerce.dive11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s8_r_12) #17
  %13 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_8, align 8, !tbaa !16
  %14 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_8, align 8, !tbaa !16
  %shuffle13 = shufflevector <8 x i8> %13, <8 x i8> %14, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <16 x i8> %shuffle13, ptr %simde_vdupq_lane_s8_r_12, align 16, !tbaa !16
  %coerce.dive15 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_lane_s8_r_12, i32 0, i32 0
  %15 = load <16 x i8>, ptr %coerce.dive15, align 16
  %call16 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %15) #18
  store <16 x i8> %call16, ptr %tmp14, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s8_r_12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_8) #17
  %16 = load <16 x i8>, ptr %tmp14, align 16, !tbaa !16
  store <16 x i8> %16, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_18) #17
  %17 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %17, ptr %coerce19, align 8, !tbaa !16
  %18 = load double, ptr %coerce19, align 8
  %call20 = call double @simde_int8x8_to_private(double noundef %18) #18
  %coerce.dive21 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdupq_lane_s8_vec_18, i32 0, i32 0
  store double %call20, ptr %coerce.dive21, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s8_r_22) #17
  %19 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_18, align 8, !tbaa !16
  %20 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_18, align 8, !tbaa !16
  %shuffle23 = shufflevector <8 x i8> %19, <8 x i8> %20, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <16 x i8> %shuffle23, ptr %simde_vdupq_lane_s8_r_22, align 16, !tbaa !16
  %coerce.dive25 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_lane_s8_r_22, i32 0, i32 0
  %21 = load <16 x i8>, ptr %coerce.dive25, align 16
  %call26 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %21) #18
  store <16 x i8> %call26, ptr %tmp24, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s8_r_22) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_18) #17
  %22 = load <16 x i8>, ptr %tmp24, align 16, !tbaa !16
  store <16 x i8> %22, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_28) #17
  %23 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %23, ptr %coerce29, align 8, !tbaa !16
  %24 = load double, ptr %coerce29, align 8
  %call30 = call double @simde_int8x8_to_private(double noundef %24) #18
  %coerce.dive31 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdupq_lane_s8_vec_28, i32 0, i32 0
  store double %call30, ptr %coerce.dive31, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s8_r_32) #17
  %25 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_28, align 8, !tbaa !16
  %26 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_28, align 8, !tbaa !16
  %shuffle33 = shufflevector <8 x i8> %25, <8 x i8> %26, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <16 x i8> %shuffle33, ptr %simde_vdupq_lane_s8_r_32, align 16, !tbaa !16
  %coerce.dive35 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_lane_s8_r_32, i32 0, i32 0
  %27 = load <16 x i8>, ptr %coerce.dive35, align 16
  %call36 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %27) #18
  store <16 x i8> %call36, ptr %tmp34, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s8_r_32) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_28) #17
  %28 = load <16 x i8>, ptr %tmp34, align 16, !tbaa !16
  store <16 x i8> %28, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_38) #17
  %29 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %29, ptr %coerce39, align 8, !tbaa !16
  %30 = load double, ptr %coerce39, align 8
  %call40 = call double @simde_int8x8_to_private(double noundef %30) #18
  %coerce.dive41 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdupq_lane_s8_vec_38, i32 0, i32 0
  store double %call40, ptr %coerce.dive41, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s8_r_42) #17
  %31 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_38, align 8, !tbaa !16
  %32 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_38, align 8, !tbaa !16
  %shuffle43 = shufflevector <8 x i8> %31, <8 x i8> %32, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <16 x i8> %shuffle43, ptr %simde_vdupq_lane_s8_r_42, align 16, !tbaa !16
  %coerce.dive45 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_lane_s8_r_42, i32 0, i32 0
  %33 = load <16 x i8>, ptr %coerce.dive45, align 16
  %call46 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %33) #18
  store <16 x i8> %call46, ptr %tmp44, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s8_r_42) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_38) #17
  %34 = load <16 x i8>, ptr %tmp44, align 16, !tbaa !16
  store <16 x i8> %34, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_48) #17
  %35 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %35, ptr %coerce49, align 8, !tbaa !16
  %36 = load double, ptr %coerce49, align 8
  %call50 = call double @simde_int8x8_to_private(double noundef %36) #18
  %coerce.dive51 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdupq_lane_s8_vec_48, i32 0, i32 0
  store double %call50, ptr %coerce.dive51, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s8_r_52) #17
  %37 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_48, align 8, !tbaa !16
  %38 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_48, align 8, !tbaa !16
  %shuffle53 = shufflevector <8 x i8> %37, <8 x i8> %38, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <16 x i8> %shuffle53, ptr %simde_vdupq_lane_s8_r_52, align 16, !tbaa !16
  %coerce.dive55 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_lane_s8_r_52, i32 0, i32 0
  %39 = load <16 x i8>, ptr %coerce.dive55, align 16
  %call56 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %39) #18
  store <16 x i8> %call56, ptr %tmp54, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s8_r_52) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_48) #17
  %40 = load <16 x i8>, ptr %tmp54, align 16, !tbaa !16
  store <16 x i8> %40, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_58) #17
  %41 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %41, ptr %coerce59, align 8, !tbaa !16
  %42 = load double, ptr %coerce59, align 8
  %call60 = call double @simde_int8x8_to_private(double noundef %42) #18
  %coerce.dive61 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdupq_lane_s8_vec_58, i32 0, i32 0
  store double %call60, ptr %coerce.dive61, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s8_r_62) #17
  %43 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_58, align 8, !tbaa !16
  %44 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_58, align 8, !tbaa !16
  %shuffle63 = shufflevector <8 x i8> %43, <8 x i8> %44, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <16 x i8> %shuffle63, ptr %simde_vdupq_lane_s8_r_62, align 16, !tbaa !16
  %coerce.dive65 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_lane_s8_r_62, i32 0, i32 0
  %45 = load <16 x i8>, ptr %coerce.dive65, align 16
  %call66 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %45) #18
  store <16 x i8> %call66, ptr %tmp64, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s8_r_62) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_58) #17
  %46 = load <16 x i8>, ptr %tmp64, align 16, !tbaa !16
  store <16 x i8> %46, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb67:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_68) #17
  %47 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %47, ptr %coerce69, align 8, !tbaa !16
  %48 = load double, ptr %coerce69, align 8
  %call70 = call double @simde_int8x8_to_private(double noundef %48) #18
  %coerce.dive71 = getelementptr inbounds %union.simde_int8x8_private, ptr %simde_vdupq_lane_s8_vec_68, i32 0, i32 0
  store double %call70, ptr %coerce.dive71, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s8_r_72) #17
  %49 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_68, align 8, !tbaa !16
  %50 = load <8 x i8>, ptr %simde_vdupq_lane_s8_vec_68, align 8, !tbaa !16
  %shuffle73 = shufflevector <8 x i8> %49, <8 x i8> %50, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <16 x i8> %shuffle73, ptr %simde_vdupq_lane_s8_r_72, align 16, !tbaa !16
  %coerce.dive75 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_lane_s8_r_72, i32 0, i32 0
  %51 = load <16 x i8>, ptr %coerce.dive75, align 16
  %call76 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %51) #18
  store <16 x i8> %call76, ptr %tmp74, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s8_r_72) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s8_vec_68) #17
  %52 = load <16 x i8>, ptr %tmp74, align 16, !tbaa !16
  store <16 x i8> %52, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb67, %sw.bb57, %sw.bb47, %sw.bb37, %sw.bb27, %sw.bb17, %sw.bb7, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body78

do.body78:                                        ; preds = %do.end
  %53 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  %54 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx79 = getelementptr inbounds [8 x %struct.anon.22], ptr %test_vec, i64 0, i64 %54
  %r80 = getelementptr inbounds %struct.anon.22, ptr %arrayidx79, i32 0, i32 2
  %arraydecay81 = getelementptr inbounds [16 x i8], ptr %r80, i64 0, i64 0
  %call82 = call <16 x i8> @simde_vld1q_s8(ptr noundef %arraydecay81)
  %call83 = call i32 @simde_test_arm_neon_assert_equal_i8x16_(<16 x i8> noundef %53, <16 x i8> noundef %call82, ptr noundef @.str.43, i32 noundef 1399, ptr noundef @.str.44, ptr noundef @.str.62)
  %tobool = icmp ne i32 %call83, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body78
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body78
  br label %do.cond84

do.cond84:                                        ; preds = %if.end
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup87 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %55 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %55, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup87:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest88 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest88, label %cleanup89 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup87
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

cleanup89:                                        ; preds = %for.end, %cleanup87
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_s16() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.23], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x i16>, align 8
  %r = alloca <8 x i16>, align 16
  %coerce = alloca <4 x i16>, align 8
  %simde_vdupq_lane_s16_vec_ = alloca %union.simde_int16x4_private, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %simde_vdupq_lane_s16_r_ = alloca %union.simde_int16x8_private, align 16
  %tmp = alloca <8 x i16>, align 16
  %simde_vdupq_lane_s16_vec_8 = alloca %union.simde_int16x4_private, align 8
  %coerce9 = alloca <4 x i16>, align 8
  %simde_vdupq_lane_s16_r_12 = alloca %union.simde_int16x8_private, align 16
  %tmp14 = alloca <8 x i16>, align 16
  %simde_vdupq_lane_s16_vec_18 = alloca %union.simde_int16x4_private, align 8
  %coerce19 = alloca <4 x i16>, align 8
  %simde_vdupq_lane_s16_r_22 = alloca %union.simde_int16x8_private, align 16
  %tmp24 = alloca <8 x i16>, align 16
  %simde_vdupq_lane_s16_vec_28 = alloca %union.simde_int16x4_private, align 8
  %coerce29 = alloca <4 x i16>, align 8
  %simde_vdupq_lane_s16_r_32 = alloca %union.simde_int16x8_private, align 16
  %tmp34 = alloca <8 x i16>, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_s16.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup47

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.23], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.23, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_s16(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.23], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.23, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb17
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s16_vec_) #17
  %5 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int16x4_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdupq_lane_s16_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s16_r_) #17
  %7 = load <4 x i16>, ptr %simde_vdupq_lane_s16_vec_, align 8, !tbaa !16
  %8 = load <4 x i16>, ptr %simde_vdupq_lane_s16_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <4 x i16> %7, <4 x i16> %8, <8 x i32> zeroinitializer
  store <8 x i16> %shuffle, ptr %simde_vdupq_lane_s16_r_, align 16, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_lane_s16_r_, i32 0, i32 0
  %9 = load <8 x i16>, ptr %coerce.dive5, align 16
  %call6 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %9) #18
  store <8 x i16> %call6, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s16_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s16_vec_) #17
  %10 = load <8 x i16>, ptr %tmp, align 16, !tbaa !16
  store <8 x i16> %10, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s16_vec_8) #17
  %11 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %11, ptr %coerce9, align 8, !tbaa !16
  %12 = load double, ptr %coerce9, align 8
  %call10 = call double @simde_int16x4_to_private(double noundef %12) #18
  %coerce.dive11 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdupq_lane_s16_vec_8, i32 0, i32 0
  store double %call10, ptr %coerce.dive11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s16_r_12) #17
  %13 = load <4 x i16>, ptr %simde_vdupq_lane_s16_vec_8, align 8, !tbaa !16
  %14 = load <4 x i16>, ptr %simde_vdupq_lane_s16_vec_8, align 8, !tbaa !16
  %shuffle13 = shufflevector <4 x i16> %13, <4 x i16> %14, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <8 x i16> %shuffle13, ptr %simde_vdupq_lane_s16_r_12, align 16, !tbaa !16
  %coerce.dive15 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_lane_s16_r_12, i32 0, i32 0
  %15 = load <8 x i16>, ptr %coerce.dive15, align 16
  %call16 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %15) #18
  store <8 x i16> %call16, ptr %tmp14, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s16_r_12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s16_vec_8) #17
  %16 = load <8 x i16>, ptr %tmp14, align 16, !tbaa !16
  store <8 x i16> %16, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s16_vec_18) #17
  %17 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %17, ptr %coerce19, align 8, !tbaa !16
  %18 = load double, ptr %coerce19, align 8
  %call20 = call double @simde_int16x4_to_private(double noundef %18) #18
  %coerce.dive21 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdupq_lane_s16_vec_18, i32 0, i32 0
  store double %call20, ptr %coerce.dive21, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s16_r_22) #17
  %19 = load <4 x i16>, ptr %simde_vdupq_lane_s16_vec_18, align 8, !tbaa !16
  %20 = load <4 x i16>, ptr %simde_vdupq_lane_s16_vec_18, align 8, !tbaa !16
  %shuffle23 = shufflevector <4 x i16> %19, <4 x i16> %20, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <8 x i16> %shuffle23, ptr %simde_vdupq_lane_s16_r_22, align 16, !tbaa !16
  %coerce.dive25 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_lane_s16_r_22, i32 0, i32 0
  %21 = load <8 x i16>, ptr %coerce.dive25, align 16
  %call26 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %21) #18
  store <8 x i16> %call26, ptr %tmp24, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s16_r_22) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s16_vec_18) #17
  %22 = load <8 x i16>, ptr %tmp24, align 16, !tbaa !16
  store <8 x i16> %22, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s16_vec_28) #17
  %23 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %23, ptr %coerce29, align 8, !tbaa !16
  %24 = load double, ptr %coerce29, align 8
  %call30 = call double @simde_int16x4_to_private(double noundef %24) #18
  %coerce.dive31 = getelementptr inbounds %union.simde_int16x4_private, ptr %simde_vdupq_lane_s16_vec_28, i32 0, i32 0
  store double %call30, ptr %coerce.dive31, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s16_r_32) #17
  %25 = load <4 x i16>, ptr %simde_vdupq_lane_s16_vec_28, align 8, !tbaa !16
  %26 = load <4 x i16>, ptr %simde_vdupq_lane_s16_vec_28, align 8, !tbaa !16
  %shuffle33 = shufflevector <4 x i16> %25, <4 x i16> %26, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <8 x i16> %shuffle33, ptr %simde_vdupq_lane_s16_r_32, align 16, !tbaa !16
  %coerce.dive35 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_lane_s16_r_32, i32 0, i32 0
  %27 = load <8 x i16>, ptr %coerce.dive35, align 16
  %call36 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %27) #18
  store <8 x i16> %call36, ptr %tmp34, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s16_r_32) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s16_vec_28) #17
  %28 = load <8 x i16>, ptr %tmp34, align 16, !tbaa !16
  store <8 x i16> %28, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb17, %sw.bb7, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body38

do.body38:                                        ; preds = %do.end
  %29 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  %30 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx39 = getelementptr inbounds [8 x %struct.anon.23], ptr %test_vec, i64 0, i64 %30
  %r40 = getelementptr inbounds %struct.anon.23, ptr %arrayidx39, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [8 x i16], ptr %r40, i64 0, i64 0
  %call42 = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay41)
  %call43 = call i32 @simde_test_arm_neon_assert_equal_i16x8_(<8 x i16> noundef %29, <8 x i16> noundef %call42, ptr noundef @.str.43, i32 noundef 1460, ptr noundef @.str.44, ptr noundef @.str.63)
  %tobool = icmp ne i32 %call43, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body38
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body38
  br label %do.cond44

do.cond44:                                        ; preds = %if.end
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %31 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %31, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup47:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %cleanup49 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup47
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %for.end, %cleanup47
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_s32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.24], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x i32>, align 8
  %r = alloca <4 x i32>, align 16
  %coerce = alloca <2 x i32>, align 8
  %simde_vdupq_lane_s32_vec_ = alloca %union.simde_int32x2_private, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %simde_vdupq_lane_s32_r_ = alloca %union.simde_int32x4_private, align 16
  %tmp = alloca <4 x i32>, align 16
  %simde_vdupq_lane_s32_vec_8 = alloca %union.simde_int32x2_private, align 8
  %coerce9 = alloca <2 x i32>, align 8
  %simde_vdupq_lane_s32_r_12 = alloca %union.simde_int32x4_private, align 16
  %tmp14 = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_s32.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.24], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.24, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_s32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.24], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.24, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s32_vec_) #17
  %5 = load <2 x i32>, ptr %vec, align 8, !tbaa !16
  store <2 x i32> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_int32x2_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdupq_lane_s32_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s32_r_) #17
  %7 = load <2 x i32>, ptr %simde_vdupq_lane_s32_vec_, align 8, !tbaa !16
  %8 = load <2 x i32>, ptr %simde_vdupq_lane_s32_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <2 x i32> %7, <2 x i32> %8, <4 x i32> zeroinitializer
  store <4 x i32> %shuffle, ptr %simde_vdupq_lane_s32_r_, align 16, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_lane_s32_r_, i32 0, i32 0
  %9 = load <4 x i32>, ptr %coerce.dive5, align 16
  %call6 = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %9) #18
  store <4 x i32> %call6, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s32_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s32_vec_) #17
  %10 = load <4 x i32>, ptr %tmp, align 16, !tbaa !16
  store <4 x i32> %10, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s32_vec_8) #17
  %11 = load <2 x i32>, ptr %vec, align 8, !tbaa !16
  store <2 x i32> %11, ptr %coerce9, align 8, !tbaa !16
  %12 = load double, ptr %coerce9, align 8
  %call10 = call double @simde_int32x2_to_private(double noundef %12) #18
  %coerce.dive11 = getelementptr inbounds %union.simde_int32x2_private, ptr %simde_vdupq_lane_s32_vec_8, i32 0, i32 0
  store double %call10, ptr %coerce.dive11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s32_r_12) #17
  %13 = load <2 x i32>, ptr %simde_vdupq_lane_s32_vec_8, align 8, !tbaa !16
  %14 = load <2 x i32>, ptr %simde_vdupq_lane_s32_vec_8, align 8, !tbaa !16
  %shuffle13 = shufflevector <2 x i32> %13, <2 x i32> %14, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %shuffle13, ptr %simde_vdupq_lane_s32_r_12, align 16, !tbaa !16
  %coerce.dive15 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_lane_s32_r_12, i32 0, i32 0
  %15 = load <4 x i32>, ptr %coerce.dive15, align 16
  %call16 = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %15) #18
  store <4 x i32> %call16, ptr %tmp14, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s32_r_12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s32_vec_8) #17
  %16 = load <4 x i32>, ptr %tmp14, align 16, !tbaa !16
  store <4 x i32> %16, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %17 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx19 = getelementptr inbounds [8 x %struct.anon.24], ptr %test_vec, i64 0, i64 %18
  %r20 = getelementptr inbounds %struct.anon.24, ptr %arrayidx19, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [4 x i32], ptr %r20, i64 0, i64 0
  %call22 = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay21)
  %call23 = call i32 @simde_test_arm_neon_assert_equal_i32x4_(<4 x i32> noundef %17, <4 x i32> noundef %call22, ptr noundef @.str.43, i32 noundef 1521, ptr noundef @.str.44, ptr noundef @.str.64)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body18
  br label %do.cond24

do.cond24:                                        ; preds = %if.end
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %19 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %19, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup27:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest28 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest28, label %cleanup29 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup27
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %for.end, %cleanup27
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_s64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.25], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <1 x i64>, align 8
  %r = alloca <2 x i64>, align 16
  %coerce = alloca <1 x i64>, align 8
  %simde_vdupq_lane_s64_vec_ = alloca %union.simde_int64x1_private, align 8
  %coerce2 = alloca <1 x i64>, align 8
  %simde_vdupq_lane_s64_r_ = alloca %union.simde_int64x2_private, align 16
  %tmp = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_s64.test_vec, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.25], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.25, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x i64], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_s64(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %vec, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_s64_vec_) #17
  %3 = load <1 x i64>, ptr %vec, align 8, !tbaa !16
  store <1 x i64> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_int64x1_to_private(double noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %simde_vdupq_lane_s64_vec_, i32 0, i32 0
  store double %call3, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_s64_r_) #17
  %5 = load <1 x i64>, ptr %simde_vdupq_lane_s64_vec_, align 8, !tbaa !16
  %6 = load <1 x i64>, ptr %simde_vdupq_lane_s64_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <1 x i64> %5, <1 x i64> %6, <2 x i32> zeroinitializer
  store <2 x i64> %shuffle, ptr %simde_vdupq_lane_s64_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int64x2_private, ptr %simde_vdupq_lane_s64_r_, i32 0, i32 0
  %7 = load <2 x i64>, ptr %coerce.dive4, align 16
  %call5 = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %7) #18
  store <2 x i64> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_s64_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_s64_vec_) #17
  %8 = load <2 x i64>, ptr %tmp, align 16, !tbaa !16
  store <2 x i64> %8, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %9 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds [8 x %struct.anon.25], ptr %test_vec, i64 0, i64 %10
  %r7 = getelementptr inbounds %struct.anon.25, ptr %arrayidx6, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [2 x i64], ptr %r7, i64 0, i64 0
  %call9 = call <2 x i64> @simde_vld1q_s64(ptr noundef %arraydecay8)
  %call10 = call i32 @simde_test_arm_neon_assert_equal_i64x2_(<2 x i64> noundef %9, <2 x i64> noundef %call9, ptr noundef @.str.43, i32 noundef 1582, ptr noundef @.str.44, ptr noundef @.str.65)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %cleanup14 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

cleanup14:                                        ; preds = %for.end, %cleanup12
  call void @llvm.lifetime.end.p0(i64 256, ptr %test_vec) #17
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_u8() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.26], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <8 x i8>, align 8
  %r = alloca <16 x i8>, align 16
  %coerce = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_vec_ = alloca %union.simde_uint8x8_private, align 8
  %coerce3 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_r_ = alloca %union.simde_uint8x16_private, align 16
  %tmp = alloca <16 x i8>, align 16
  %simde_vdupq_lane_u8_vec_8 = alloca %union.simde_uint8x8_private, align 8
  %coerce9 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_r_12 = alloca %union.simde_uint8x16_private, align 16
  %tmp14 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_u8_vec_18 = alloca %union.simde_uint8x8_private, align 8
  %coerce19 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_r_22 = alloca %union.simde_uint8x16_private, align 16
  %tmp24 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_u8_vec_28 = alloca %union.simde_uint8x8_private, align 8
  %coerce29 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_r_32 = alloca %union.simde_uint8x16_private, align 16
  %tmp34 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_u8_vec_38 = alloca %union.simde_uint8x8_private, align 8
  %coerce39 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_r_42 = alloca %union.simde_uint8x16_private, align 16
  %tmp44 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_u8_vec_48 = alloca %union.simde_uint8x8_private, align 8
  %coerce49 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_r_52 = alloca %union.simde_uint8x16_private, align 16
  %tmp54 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_u8_vec_58 = alloca %union.simde_uint8x8_private, align 8
  %coerce59 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_r_62 = alloca %union.simde_uint8x16_private, align 16
  %tmp64 = alloca <16 x i8>, align 16
  %simde_vdupq_lane_u8_vec_68 = alloca %union.simde_uint8x8_private, align 8
  %coerce69 = alloca <8 x i8>, align 8
  %simde_vdupq_lane_u8_r_72 = alloca %union.simde_uint8x16_private, align 16
  %tmp74 = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_u8.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup87

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.26], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.26, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i8], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_u8(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.26], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.26, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb17
    i32 3, label %sw.bb27
    i32 4, label %sw.bb37
    i32 5, label %sw.bb47
    i32 6, label %sw.bb57
    i32 7, label %sw.bb67
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_) #17
  %5 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_uint8x8_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdupq_lane_u8_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u8_r_) #17
  %7 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_, align 8, !tbaa !16
  %8 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <8 x i8> %7, <8 x i8> %8, <16 x i32> zeroinitializer
  store <16 x i8> %shuffle, ptr %simde_vdupq_lane_u8_r_, align 16, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_lane_u8_r_, i32 0, i32 0
  %9 = load <16 x i8>, ptr %coerce.dive5, align 16
  %call6 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %9) #18
  store <16 x i8> %call6, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u8_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_) #17
  %10 = load <16 x i8>, ptr %tmp, align 16, !tbaa !16
  store <16 x i8> %10, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_8) #17
  %11 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %11, ptr %coerce9, align 8, !tbaa !16
  %12 = load double, ptr %coerce9, align 8
  %call10 = call double @simde_uint8x8_to_private(double noundef %12) #18
  %coerce.dive11 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdupq_lane_u8_vec_8, i32 0, i32 0
  store double %call10, ptr %coerce.dive11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u8_r_12) #17
  %13 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_8, align 8, !tbaa !16
  %14 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_8, align 8, !tbaa !16
  %shuffle13 = shufflevector <8 x i8> %13, <8 x i8> %14, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <16 x i8> %shuffle13, ptr %simde_vdupq_lane_u8_r_12, align 16, !tbaa !16
  %coerce.dive15 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_lane_u8_r_12, i32 0, i32 0
  %15 = load <16 x i8>, ptr %coerce.dive15, align 16
  %call16 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %15) #18
  store <16 x i8> %call16, ptr %tmp14, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u8_r_12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_8) #17
  %16 = load <16 x i8>, ptr %tmp14, align 16, !tbaa !16
  store <16 x i8> %16, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_18) #17
  %17 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %17, ptr %coerce19, align 8, !tbaa !16
  %18 = load double, ptr %coerce19, align 8
  %call20 = call double @simde_uint8x8_to_private(double noundef %18) #18
  %coerce.dive21 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdupq_lane_u8_vec_18, i32 0, i32 0
  store double %call20, ptr %coerce.dive21, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u8_r_22) #17
  %19 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_18, align 8, !tbaa !16
  %20 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_18, align 8, !tbaa !16
  %shuffle23 = shufflevector <8 x i8> %19, <8 x i8> %20, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <16 x i8> %shuffle23, ptr %simde_vdupq_lane_u8_r_22, align 16, !tbaa !16
  %coerce.dive25 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_lane_u8_r_22, i32 0, i32 0
  %21 = load <16 x i8>, ptr %coerce.dive25, align 16
  %call26 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %21) #18
  store <16 x i8> %call26, ptr %tmp24, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u8_r_22) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_18) #17
  %22 = load <16 x i8>, ptr %tmp24, align 16, !tbaa !16
  store <16 x i8> %22, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_28) #17
  %23 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %23, ptr %coerce29, align 8, !tbaa !16
  %24 = load double, ptr %coerce29, align 8
  %call30 = call double @simde_uint8x8_to_private(double noundef %24) #18
  %coerce.dive31 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdupq_lane_u8_vec_28, i32 0, i32 0
  store double %call30, ptr %coerce.dive31, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u8_r_32) #17
  %25 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_28, align 8, !tbaa !16
  %26 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_28, align 8, !tbaa !16
  %shuffle33 = shufflevector <8 x i8> %25, <8 x i8> %26, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <16 x i8> %shuffle33, ptr %simde_vdupq_lane_u8_r_32, align 16, !tbaa !16
  %coerce.dive35 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_lane_u8_r_32, i32 0, i32 0
  %27 = load <16 x i8>, ptr %coerce.dive35, align 16
  %call36 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %27) #18
  store <16 x i8> %call36, ptr %tmp34, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u8_r_32) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_28) #17
  %28 = load <16 x i8>, ptr %tmp34, align 16, !tbaa !16
  store <16 x i8> %28, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_38) #17
  %29 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %29, ptr %coerce39, align 8, !tbaa !16
  %30 = load double, ptr %coerce39, align 8
  %call40 = call double @simde_uint8x8_to_private(double noundef %30) #18
  %coerce.dive41 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdupq_lane_u8_vec_38, i32 0, i32 0
  store double %call40, ptr %coerce.dive41, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u8_r_42) #17
  %31 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_38, align 8, !tbaa !16
  %32 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_38, align 8, !tbaa !16
  %shuffle43 = shufflevector <8 x i8> %31, <8 x i8> %32, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <16 x i8> %shuffle43, ptr %simde_vdupq_lane_u8_r_42, align 16, !tbaa !16
  %coerce.dive45 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_lane_u8_r_42, i32 0, i32 0
  %33 = load <16 x i8>, ptr %coerce.dive45, align 16
  %call46 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %33) #18
  store <16 x i8> %call46, ptr %tmp44, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u8_r_42) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_38) #17
  %34 = load <16 x i8>, ptr %tmp44, align 16, !tbaa !16
  store <16 x i8> %34, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_48) #17
  %35 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %35, ptr %coerce49, align 8, !tbaa !16
  %36 = load double, ptr %coerce49, align 8
  %call50 = call double @simde_uint8x8_to_private(double noundef %36) #18
  %coerce.dive51 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdupq_lane_u8_vec_48, i32 0, i32 0
  store double %call50, ptr %coerce.dive51, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u8_r_52) #17
  %37 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_48, align 8, !tbaa !16
  %38 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_48, align 8, !tbaa !16
  %shuffle53 = shufflevector <8 x i8> %37, <8 x i8> %38, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <16 x i8> %shuffle53, ptr %simde_vdupq_lane_u8_r_52, align 16, !tbaa !16
  %coerce.dive55 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_lane_u8_r_52, i32 0, i32 0
  %39 = load <16 x i8>, ptr %coerce.dive55, align 16
  %call56 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %39) #18
  store <16 x i8> %call56, ptr %tmp54, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u8_r_52) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_48) #17
  %40 = load <16 x i8>, ptr %tmp54, align 16, !tbaa !16
  store <16 x i8> %40, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_58) #17
  %41 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %41, ptr %coerce59, align 8, !tbaa !16
  %42 = load double, ptr %coerce59, align 8
  %call60 = call double @simde_uint8x8_to_private(double noundef %42) #18
  %coerce.dive61 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdupq_lane_u8_vec_58, i32 0, i32 0
  store double %call60, ptr %coerce.dive61, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u8_r_62) #17
  %43 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_58, align 8, !tbaa !16
  %44 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_58, align 8, !tbaa !16
  %shuffle63 = shufflevector <8 x i8> %43, <8 x i8> %44, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <16 x i8> %shuffle63, ptr %simde_vdupq_lane_u8_r_62, align 16, !tbaa !16
  %coerce.dive65 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_lane_u8_r_62, i32 0, i32 0
  %45 = load <16 x i8>, ptr %coerce.dive65, align 16
  %call66 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %45) #18
  store <16 x i8> %call66, ptr %tmp64, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u8_r_62) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_58) #17
  %46 = load <16 x i8>, ptr %tmp64, align 16, !tbaa !16
  store <16 x i8> %46, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb67:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_68) #17
  %47 = load <8 x i8>, ptr %vec, align 8, !tbaa !16
  store <8 x i8> %47, ptr %coerce69, align 8, !tbaa !16
  %48 = load double, ptr %coerce69, align 8
  %call70 = call double @simde_uint8x8_to_private(double noundef %48) #18
  %coerce.dive71 = getelementptr inbounds %union.simde_uint8x8_private, ptr %simde_vdupq_lane_u8_vec_68, i32 0, i32 0
  store double %call70, ptr %coerce.dive71, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u8_r_72) #17
  %49 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_68, align 8, !tbaa !16
  %50 = load <8 x i8>, ptr %simde_vdupq_lane_u8_vec_68, align 8, !tbaa !16
  %shuffle73 = shufflevector <8 x i8> %49, <8 x i8> %50, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <16 x i8> %shuffle73, ptr %simde_vdupq_lane_u8_r_72, align 16, !tbaa !16
  %coerce.dive75 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_lane_u8_r_72, i32 0, i32 0
  %51 = load <16 x i8>, ptr %coerce.dive75, align 16
  %call76 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %51) #18
  store <16 x i8> %call76, ptr %tmp74, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u8_r_72) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u8_vec_68) #17
  %52 = load <16 x i8>, ptr %tmp74, align 16, !tbaa !16
  store <16 x i8> %52, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb67, %sw.bb57, %sw.bb47, %sw.bb37, %sw.bb27, %sw.bb17, %sw.bb7, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body78

do.body78:                                        ; preds = %do.end
  %53 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  %54 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx79 = getelementptr inbounds [8 x %struct.anon.26], ptr %test_vec, i64 0, i64 %54
  %r80 = getelementptr inbounds %struct.anon.26, ptr %arrayidx79, i32 0, i32 2
  %arraydecay81 = getelementptr inbounds [16 x i8], ptr %r80, i64 0, i64 0
  %call82 = call <16 x i8> @simde_vld1q_u8(ptr noundef %arraydecay81)
  %call83 = call i32 @simde_test_arm_neon_assert_equal_u8x16_(<16 x i8> noundef %53, <16 x i8> noundef %call82, ptr noundef @.str.43, i32 noundef 1651, ptr noundef @.str.44, ptr noundef @.str.66)
  %tobool = icmp ne i32 %call83, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body78
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body78
  br label %do.cond84

do.cond84:                                        ; preds = %if.end
  br label %do.end85

do.end85:                                         ; preds = %do.cond84
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end85, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup87 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %55 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %55, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup87:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest88 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest88, label %cleanup89 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup87
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup89

cleanup89:                                        ; preds = %for.end, %cleanup87
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_u16() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.27], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x i16>, align 8
  %r = alloca <8 x i16>, align 16
  %coerce = alloca <4 x i16>, align 8
  %simde_vdupq_lane_u16_vec_ = alloca %union.simde_uint16x4_private, align 8
  %coerce3 = alloca <4 x i16>, align 8
  %simde_vdupq_lane_u16_r_ = alloca %union.simde_uint16x8_private, align 16
  %tmp = alloca <8 x i16>, align 16
  %simde_vdupq_lane_u16_vec_8 = alloca %union.simde_uint16x4_private, align 8
  %coerce9 = alloca <4 x i16>, align 8
  %simde_vdupq_lane_u16_r_12 = alloca %union.simde_uint16x8_private, align 16
  %tmp14 = alloca <8 x i16>, align 16
  %simde_vdupq_lane_u16_vec_18 = alloca %union.simde_uint16x4_private, align 8
  %coerce19 = alloca <4 x i16>, align 8
  %simde_vdupq_lane_u16_r_22 = alloca %union.simde_uint16x8_private, align 16
  %tmp24 = alloca <8 x i16>, align 16
  %simde_vdupq_lane_u16_vec_28 = alloca %union.simde_uint16x4_private, align 8
  %coerce29 = alloca <4 x i16>, align 8
  %simde_vdupq_lane_u16_r_32 = alloca %union.simde_uint16x8_private, align 16
  %tmp34 = alloca <8 x i16>, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_u16.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup47

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.27], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.27, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_u16(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.27], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.27, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb17
    i32 3, label %sw.bb27
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u16_vec_) #17
  %5 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_uint16x4_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdupq_lane_u16_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u16_r_) #17
  %7 = load <4 x i16>, ptr %simde_vdupq_lane_u16_vec_, align 8, !tbaa !16
  %8 = load <4 x i16>, ptr %simde_vdupq_lane_u16_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <4 x i16> %7, <4 x i16> %8, <8 x i32> zeroinitializer
  store <8 x i16> %shuffle, ptr %simde_vdupq_lane_u16_r_, align 16, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_lane_u16_r_, i32 0, i32 0
  %9 = load <8 x i16>, ptr %coerce.dive5, align 16
  %call6 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %9) #18
  store <8 x i16> %call6, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u16_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u16_vec_) #17
  %10 = load <8 x i16>, ptr %tmp, align 16, !tbaa !16
  store <8 x i16> %10, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u16_vec_8) #17
  %11 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %11, ptr %coerce9, align 8, !tbaa !16
  %12 = load double, ptr %coerce9, align 8
  %call10 = call double @simde_uint16x4_to_private(double noundef %12) #18
  %coerce.dive11 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdupq_lane_u16_vec_8, i32 0, i32 0
  store double %call10, ptr %coerce.dive11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u16_r_12) #17
  %13 = load <4 x i16>, ptr %simde_vdupq_lane_u16_vec_8, align 8, !tbaa !16
  %14 = load <4 x i16>, ptr %simde_vdupq_lane_u16_vec_8, align 8, !tbaa !16
  %shuffle13 = shufflevector <4 x i16> %13, <4 x i16> %14, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <8 x i16> %shuffle13, ptr %simde_vdupq_lane_u16_r_12, align 16, !tbaa !16
  %coerce.dive15 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_lane_u16_r_12, i32 0, i32 0
  %15 = load <8 x i16>, ptr %coerce.dive15, align 16
  %call16 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %15) #18
  store <8 x i16> %call16, ptr %tmp14, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u16_r_12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u16_vec_8) #17
  %16 = load <8 x i16>, ptr %tmp14, align 16, !tbaa !16
  store <8 x i16> %16, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u16_vec_18) #17
  %17 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %17, ptr %coerce19, align 8, !tbaa !16
  %18 = load double, ptr %coerce19, align 8
  %call20 = call double @simde_uint16x4_to_private(double noundef %18) #18
  %coerce.dive21 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdupq_lane_u16_vec_18, i32 0, i32 0
  store double %call20, ptr %coerce.dive21, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u16_r_22) #17
  %19 = load <4 x i16>, ptr %simde_vdupq_lane_u16_vec_18, align 8, !tbaa !16
  %20 = load <4 x i16>, ptr %simde_vdupq_lane_u16_vec_18, align 8, !tbaa !16
  %shuffle23 = shufflevector <4 x i16> %19, <4 x i16> %20, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <8 x i16> %shuffle23, ptr %simde_vdupq_lane_u16_r_22, align 16, !tbaa !16
  %coerce.dive25 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_lane_u16_r_22, i32 0, i32 0
  %21 = load <8 x i16>, ptr %coerce.dive25, align 16
  %call26 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %21) #18
  store <8 x i16> %call26, ptr %tmp24, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u16_r_22) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u16_vec_18) #17
  %22 = load <8 x i16>, ptr %tmp24, align 16, !tbaa !16
  store <8 x i16> %22, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u16_vec_28) #17
  %23 = load <4 x i16>, ptr %vec, align 8, !tbaa !16
  store <4 x i16> %23, ptr %coerce29, align 8, !tbaa !16
  %24 = load double, ptr %coerce29, align 8
  %call30 = call double @simde_uint16x4_to_private(double noundef %24) #18
  %coerce.dive31 = getelementptr inbounds %union.simde_uint16x4_private, ptr %simde_vdupq_lane_u16_vec_28, i32 0, i32 0
  store double %call30, ptr %coerce.dive31, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u16_r_32) #17
  %25 = load <4 x i16>, ptr %simde_vdupq_lane_u16_vec_28, align 8, !tbaa !16
  %26 = load <4 x i16>, ptr %simde_vdupq_lane_u16_vec_28, align 8, !tbaa !16
  %shuffle33 = shufflevector <4 x i16> %25, <4 x i16> %26, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <8 x i16> %shuffle33, ptr %simde_vdupq_lane_u16_r_32, align 16, !tbaa !16
  %coerce.dive35 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_lane_u16_r_32, i32 0, i32 0
  %27 = load <8 x i16>, ptr %coerce.dive35, align 16
  %call36 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %27) #18
  store <8 x i16> %call36, ptr %tmp34, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u16_r_32) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u16_vec_28) #17
  %28 = load <8 x i16>, ptr %tmp34, align 16, !tbaa !16
  store <8 x i16> %28, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb17, %sw.bb7, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body38

do.body38:                                        ; preds = %do.end
  %29 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  %30 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx39 = getelementptr inbounds [8 x %struct.anon.27], ptr %test_vec, i64 0, i64 %30
  %r40 = getelementptr inbounds %struct.anon.27, ptr %arrayidx39, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [8 x i16], ptr %r40, i64 0, i64 0
  %call42 = call <8 x i16> @simde_vld1q_u16(ptr noundef %arraydecay41)
  %call43 = call i32 @simde_test_arm_neon_assert_equal_u16x8_(<8 x i16> noundef %29, <8 x i16> noundef %call42, ptr noundef @.str.43, i32 noundef 1712, ptr noundef @.str.44, ptr noundef @.str.67)
  %tobool = icmp ne i32 %call43, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body38
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body38
  br label %do.cond44

do.cond44:                                        ; preds = %if.end
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup47 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %31 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %31, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup47:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %cleanup49 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup47
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %for.end, %cleanup47
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_u32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.28], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x i32>, align 8
  %r = alloca <4 x i32>, align 16
  %coerce = alloca <2 x i32>, align 8
  %simde_vdupq_lane_u32_vec_ = alloca %union.simde_uint32x2_private, align 8
  %coerce3 = alloca <2 x i32>, align 8
  %simde_vdupq_lane_u32_r_ = alloca %union.simde_uint32x4_private, align 16
  %tmp = alloca <4 x i32>, align 16
  %simde_vdupq_lane_u32_vec_8 = alloca %union.simde_uint32x2_private, align 8
  %coerce9 = alloca <2 x i32>, align 8
  %simde_vdupq_lane_u32_r_12 = alloca %union.simde_uint32x4_private, align 16
  %tmp14 = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_u32.test_vec, i64 224, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.28], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.28, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_u32(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %vec, align 8, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.28], ptr %test_vec, i64 0, i64 %3
  %lane = getelementptr inbounds %struct.anon.28, ptr %arrayidx2, i32 0, i32 1
  %4 = load i32, ptr %lane, align 4, !tbaa !17
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u32_vec_) #17
  %5 = load <2 x i32>, ptr %vec, align 8, !tbaa !16
  store <2 x i32> %5, ptr %coerce3, align 8, !tbaa !16
  %6 = load double, ptr %coerce3, align 8
  %call4 = call double @simde_uint32x2_to_private(double noundef %6) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdupq_lane_u32_vec_, i32 0, i32 0
  store double %call4, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u32_r_) #17
  %7 = load <2 x i32>, ptr %simde_vdupq_lane_u32_vec_, align 8, !tbaa !16
  %8 = load <2 x i32>, ptr %simde_vdupq_lane_u32_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <2 x i32> %7, <2 x i32> %8, <4 x i32> zeroinitializer
  store <4 x i32> %shuffle, ptr %simde_vdupq_lane_u32_r_, align 16, !tbaa !16
  %coerce.dive5 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_lane_u32_r_, i32 0, i32 0
  %9 = load <4 x i32>, ptr %coerce.dive5, align 16
  %call6 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %9) #18
  store <4 x i32> %call6, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u32_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u32_vec_) #17
  %10 = load <4 x i32>, ptr %tmp, align 16, !tbaa !16
  store <4 x i32> %10, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u32_vec_8) #17
  %11 = load <2 x i32>, ptr %vec, align 8, !tbaa !16
  store <2 x i32> %11, ptr %coerce9, align 8, !tbaa !16
  %12 = load double, ptr %coerce9, align 8
  %call10 = call double @simde_uint32x2_to_private(double noundef %12) #18
  %coerce.dive11 = getelementptr inbounds %union.simde_uint32x2_private, ptr %simde_vdupq_lane_u32_vec_8, i32 0, i32 0
  store double %call10, ptr %coerce.dive11, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u32_r_12) #17
  %13 = load <2 x i32>, ptr %simde_vdupq_lane_u32_vec_8, align 8, !tbaa !16
  %14 = load <2 x i32>, ptr %simde_vdupq_lane_u32_vec_8, align 8, !tbaa !16
  %shuffle13 = shufflevector <2 x i32> %13, <2 x i32> %14, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %shuffle13, ptr %simde_vdupq_lane_u32_r_12, align 16, !tbaa !16
  %coerce.dive15 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_lane_u32_r_12, i32 0, i32 0
  %15 = load <4 x i32>, ptr %coerce.dive15, align 16
  %call16 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %15) #18
  store <4 x i32> %call16, ptr %tmp14, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u32_r_12) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u32_vec_8) #17
  %16 = load <4 x i32>, ptr %tmp14, align 16, !tbaa !16
  store <4 x i32> %16, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %17 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx19 = getelementptr inbounds [8 x %struct.anon.28], ptr %test_vec, i64 0, i64 %18
  %r20 = getelementptr inbounds %struct.anon.28, ptr %arrayidx19, i32 0, i32 2
  %arraydecay21 = getelementptr inbounds [4 x i32], ptr %r20, i64 0, i64 0
  %call22 = call <4 x i32> @simde_vld1q_u32(ptr noundef %arraydecay21)
  %call23 = call i32 @simde_test_arm_neon_assert_equal_u32x4_(<4 x i32> noundef %17, <4 x i32> noundef %call22, ptr noundef @.str.43, i32 noundef 1773, ptr noundef @.str.44, ptr noundef @.str.68)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body18
  br label %do.cond24

do.cond24:                                        ; preds = %if.end
  br label %do.end25

do.end25:                                         ; preds = %do.cond24
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %19 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %19, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup27:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest28 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest28, label %cleanup29 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup27
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup29

cleanup29:                                        ; preds = %for.end, %cleanup27
  call void @llvm.lifetime.end.p0(i64 224, ptr %test_vec) #17
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_lane_u64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.29], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <1 x i64>, align 8
  %r = alloca <2 x i64>, align 16
  %coerce = alloca <1 x i64>, align 8
  %simde_vdupq_lane_u64_vec_ = alloca %union.simde_uint64x1_private, align 8
  %coerce2 = alloca <1 x i64>, align 8
  %simde_vdupq_lane_u64_r_ = alloca %union.simde_uint64x2_private, align 16
  %tmp = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_lane_u64.test_vec, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.29], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.29, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [1 x i64], ptr %vec1, i64 0, i64 0
  %call = call double @simde_vld1_u64(ptr noundef %arraydecay)
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %vec, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_vdupq_lane_u64_vec_) #17
  %3 = load <1 x i64>, ptr %vec, align 8, !tbaa !16
  store <1 x i64> %3, ptr %coerce2, align 8, !tbaa !16
  %4 = load double, ptr %coerce2, align 8
  %call3 = call double @simde_uint64x1_to_private(double noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %simde_vdupq_lane_u64_vec_, i32 0, i32 0
  store double %call3, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_lane_u64_r_) #17
  %5 = load <1 x i64>, ptr %simde_vdupq_lane_u64_vec_, align 8, !tbaa !16
  %6 = load <1 x i64>, ptr %simde_vdupq_lane_u64_vec_, align 8, !tbaa !16
  %shuffle = shufflevector <1 x i64> %5, <1 x i64> %6, <2 x i32> zeroinitializer
  store <2 x i64> %shuffle, ptr %simde_vdupq_lane_u64_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint64x2_private, ptr %simde_vdupq_lane_u64_r_, i32 0, i32 0
  %7 = load <2 x i64>, ptr %coerce.dive4, align 16
  %call5 = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %7) #18
  store <2 x i64> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_lane_u64_r_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_vdupq_lane_u64_vec_) #17
  %8 = load <2 x i64>, ptr %tmp, align 16, !tbaa !16
  store <2 x i64> %8, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %9 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds [8 x %struct.anon.29], ptr %test_vec, i64 0, i64 %10
  %r7 = getelementptr inbounds %struct.anon.29, ptr %arrayidx6, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [2 x i64], ptr %r7, i64 0, i64 0
  %call9 = call <2 x i64> @simde_vld1q_u64(ptr noundef %arraydecay8)
  %call10 = call i32 @simde_test_arm_neon_assert_equal_u64x2_(<2 x i64> noundef %9, <2 x i64> noundef %call9, ptr noundef @.str.43, i32 noundef 1834, ptr noundef @.str.44, ptr noundef @.str.69)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %cleanup14 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup14

cleanup14:                                        ; preds = %for.end, %cleanup12
  call void @llvm.lifetime.end.p0(i64 256, ptr %test_vec) #17
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_f32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.30], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x float>, align 16
  %r = alloca <4 x float>, align 16
  %simde_vdupq_laneq_f32_vec_ = alloca %union.simde_float32x4_private, align 16
  %simde_vdupq_laneq_f32_r_ = alloca %union.simde_float32x4_private, align 16
  %tmp = alloca <4 x float>, align 16
  %simde_vdupq_laneq_f32_vec_7 = alloca %union.simde_float32x4_private, align 16
  %simde_vdupq_laneq_f32_r_10 = alloca %union.simde_float32x4_private, align 16
  %tmp12 = alloca <4 x float>, align 16
  %simde_vdupq_laneq_f32_vec_16 = alloca %union.simde_float32x4_private, align 16
  %simde_vdupq_laneq_f32_r_19 = alloca %union.simde_float32x4_private, align 16
  %tmp21 = alloca <4 x float>, align 16
  %simde_vdupq_laneq_f32_vec_25 = alloca %union.simde_float32x4_private, align 16
  %simde_vdupq_laneq_f32_r_28 = alloca %union.simde_float32x4_private, align 16
  %tmp30 = alloca <4 x float>, align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_f32.test_vec, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup44

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.30], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.30, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x float], ptr %vec1, i64 0, i64 0
  %call = call <4 x float> @simde_vld1q_f32(ptr noundef %arraydecay)
  store <4 x float> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.30], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.30, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb15
    i32 3, label %sw.bb24
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f32_vec_) #17
  %4 = load <4 x float>, ptr %vec, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_laneq_f32_vec_, i32 0, i32 0
  store <4 x float> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f32_r_) #17
  %5 = load <4 x float>, ptr %simde_vdupq_laneq_f32_vec_, align 16, !tbaa !16
  %6 = load <4 x float>, ptr %simde_vdupq_laneq_f32_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <4 x float> %5, <4 x float> %6, <4 x i32> zeroinitializer
  store <4 x float> %shuffle, ptr %simde_vdupq_laneq_f32_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_laneq_f32_r_, i32 0, i32 0
  %7 = load <4 x float>, ptr %coerce.dive4, align 16
  %call5 = call <4 x float> @simde_float32x4_from_private(<4 x float> %7) #18
  store <4 x float> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f32_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f32_vec_) #17
  %8 = load <4 x float>, ptr %tmp, align 16, !tbaa !16
  store <4 x float> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f32_vec_7) #17
  %9 = load <4 x float>, ptr %vec, align 16, !tbaa !16
  %call8 = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_laneq_f32_vec_7, i32 0, i32 0
  store <4 x float> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f32_r_10) #17
  %10 = load <4 x float>, ptr %simde_vdupq_laneq_f32_vec_7, align 16, !tbaa !16
  %11 = load <4 x float>, ptr %simde_vdupq_laneq_f32_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x float> %shuffle11, ptr %simde_vdupq_laneq_f32_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_laneq_f32_r_10, i32 0, i32 0
  %12 = load <4 x float>, ptr %coerce.dive13, align 16
  %call14 = call <4 x float> @simde_float32x4_from_private(<4 x float> %12) #18
  store <4 x float> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f32_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f32_vec_7) #17
  %13 = load <4 x float>, ptr %tmp12, align 16, !tbaa !16
  store <4 x float> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f32_vec_16) #17
  %14 = load <4 x float>, ptr %vec, align 16, !tbaa !16
  %call17 = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %14) #18
  %coerce.dive18 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_laneq_f32_vec_16, i32 0, i32 0
  store <4 x float> %call17, ptr %coerce.dive18, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f32_r_19) #17
  %15 = load <4 x float>, ptr %simde_vdupq_laneq_f32_vec_16, align 16, !tbaa !16
  %16 = load <4 x float>, ptr %simde_vdupq_laneq_f32_vec_16, align 16, !tbaa !16
  %shuffle20 = shufflevector <4 x float> %15, <4 x float> %16, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  store <4 x float> %shuffle20, ptr %simde_vdupq_laneq_f32_r_19, align 16, !tbaa !16
  %coerce.dive22 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_laneq_f32_r_19, i32 0, i32 0
  %17 = load <4 x float>, ptr %coerce.dive22, align 16
  %call23 = call <4 x float> @simde_float32x4_from_private(<4 x float> %17) #18
  store <4 x float> %call23, ptr %tmp21, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f32_r_19) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f32_vec_16) #17
  %18 = load <4 x float>, ptr %tmp21, align 16, !tbaa !16
  store <4 x float> %18, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f32_vec_25) #17
  %19 = load <4 x float>, ptr %vec, align 16, !tbaa !16
  %call26 = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %19) #18
  %coerce.dive27 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_laneq_f32_vec_25, i32 0, i32 0
  store <4 x float> %call26, ptr %coerce.dive27, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f32_r_28) #17
  %20 = load <4 x float>, ptr %simde_vdupq_laneq_f32_vec_25, align 16, !tbaa !16
  %21 = load <4 x float>, ptr %simde_vdupq_laneq_f32_vec_25, align 16, !tbaa !16
  %shuffle29 = shufflevector <4 x float> %20, <4 x float> %21, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  store <4 x float> %shuffle29, ptr %simde_vdupq_laneq_f32_r_28, align 16, !tbaa !16
  %coerce.dive31 = getelementptr inbounds %union.simde_float32x4_private, ptr %simde_vdupq_laneq_f32_r_28, i32 0, i32 0
  %22 = load <4 x float>, ptr %coerce.dive31, align 16
  %call32 = call <4 x float> @simde_float32x4_from_private(<4 x float> %22) #18
  store <4 x float> %call32, ptr %tmp30, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f32_r_28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f32_vec_25) #17
  %23 = load <4 x float>, ptr %tmp30, align 16, !tbaa !16
  store <4 x float> %23, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb15, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body34

do.body34:                                        ; preds = %do.end
  %24 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %25 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx35 = getelementptr inbounds [8 x %struct.anon.30], ptr %test_vec, i64 0, i64 %25
  %r36 = getelementptr inbounds %struct.anon.30, ptr %arrayidx35, i32 0, i32 2
  %arraydecay37 = getelementptr inbounds [4 x float], ptr %r36, i64 0, i64 0
  %call38 = call <4 x float> @simde_vld1q_f32(ptr noundef %arraydecay37)
  %call39 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call40 = call i32 @simde_test_arm_neon_assert_equal_f32x4_(<4 x float> noundef %24, <4 x float> noundef %call38, float noundef %call39, ptr noundef @.str.43, i32 noundef 1895, ptr noundef @.str.44, ptr noundef @.str.60)
  %tobool = icmp ne i32 %call40, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body34
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body34
  br label %do.cond41

do.cond41:                                        ; preds = %if.end
  br label %do.end42

do.end42:                                         ; preds = %do.cond41
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %26 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %26, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup44:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest45 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest45, label %cleanup46 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup44
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %for.end, %cleanup44
  call void @llvm.lifetime.end.p0(i64 288, ptr %test_vec) #17
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_f64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.31], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x double>, align 16
  %r = alloca <2 x double>, align 16
  %simde_vdupq_laneq_f64_vec_ = alloca %union.simde_float64x2_private, align 16
  %simde_vdupq_laneq_f64_r_ = alloca %union.simde_float64x2_private, align 16
  %tmp = alloca <2 x double>, align 16
  %simde_vdupq_laneq_f64_vec_7 = alloca %union.simde_float64x2_private, align 16
  %simde_vdupq_laneq_f64_r_10 = alloca %union.simde_float64x2_private, align 16
  %tmp12 = alloca <2 x double>, align 16
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_f64.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup26

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.31], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.31, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x double], ptr %vec1, i64 0, i64 0
  %call = call <2 x double> @simde_vld1q_f64(ptr noundef %arraydecay)
  store <2 x double> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.31], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.31, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 8, !tbaa !21
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f64_vec_) #17
  %4 = load <2 x double>, ptr %vec, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_float64x2_to_private(<2 x double> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %simde_vdupq_laneq_f64_vec_, i32 0, i32 0
  store <2 x double> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f64_r_) #17
  %5 = load <2 x double>, ptr %simde_vdupq_laneq_f64_vec_, align 16, !tbaa !16
  %6 = load <2 x double>, ptr %simde_vdupq_laneq_f64_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <2 x double> %5, <2 x double> %6, <2 x i32> zeroinitializer
  store <2 x double> %shuffle, ptr %simde_vdupq_laneq_f64_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_float64x2_private, ptr %simde_vdupq_laneq_f64_r_, i32 0, i32 0
  %7 = load <2 x double>, ptr %coerce.dive4, align 16
  %call5 = call <2 x double> @simde_float64x2_from_private(<2 x double> %7) #18
  store <2 x double> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f64_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f64_vec_) #17
  %8 = load <2 x double>, ptr %tmp, align 16, !tbaa !16
  store <2 x double> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f64_vec_7) #17
  %9 = load <2 x double>, ptr %vec, align 16, !tbaa !16
  %call8 = call <2 x double> @simde_float64x2_to_private(<2 x double> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_float64x2_private, ptr %simde_vdupq_laneq_f64_vec_7, i32 0, i32 0
  store <2 x double> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_f64_r_10) #17
  %10 = load <2 x double>, ptr %simde_vdupq_laneq_f64_vec_7, align 16, !tbaa !16
  %11 = load <2 x double>, ptr %simde_vdupq_laneq_f64_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <2 x double> %10, <2 x double> %11, <2 x i32> <i32 1, i32 1>
  store <2 x double> %shuffle11, ptr %simde_vdupq_laneq_f64_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_float64x2_private, ptr %simde_vdupq_laneq_f64_r_10, i32 0, i32 0
  %12 = load <2 x double>, ptr %coerce.dive13, align 16
  %call14 = call <2 x double> @simde_float64x2_from_private(<2 x double> %12) #18
  store <2 x double> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f64_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_f64_vec_7) #17
  %13 = load <2 x double>, ptr %tmp12, align 16, !tbaa !16
  store <2 x double> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body16

do.body16:                                        ; preds = %do.end
  %14 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx17 = getelementptr inbounds [8 x %struct.anon.31], ptr %test_vec, i64 0, i64 %15
  %r18 = getelementptr inbounds %struct.anon.31, ptr %arrayidx17, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [2 x double], ptr %r18, i64 0, i64 0
  %call20 = call <2 x double> @simde_vld1q_f64(ptr noundef %arraydecay19)
  %call21 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call22 = call i32 @simde_test_arm_neon_assert_equal_f64x2_(<2 x double> noundef %14, <2 x double> noundef %call20, double noundef %call21, ptr noundef @.str.43, i32 noundef 1957, ptr noundef @.str.44, ptr noundef @.str.61)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body16
  br label %do.cond23

do.cond23:                                        ; preds = %if.end
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %16, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup26:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest27 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest27, label %cleanup28 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup26
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %for.end, %cleanup26
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #17
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_s8() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.32], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <16 x i8>, align 16
  %r = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_ = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_ = alloca %union.simde_int8x16_private, align 16
  %tmp = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_7 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_10 = alloca %union.simde_int8x16_private, align 16
  %tmp12 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_16 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_19 = alloca %union.simde_int8x16_private, align 16
  %tmp21 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_25 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_28 = alloca %union.simde_int8x16_private, align 16
  %tmp30 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_34 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_37 = alloca %union.simde_int8x16_private, align 16
  %tmp39 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_43 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_46 = alloca %union.simde_int8x16_private, align 16
  %tmp48 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_52 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_55 = alloca %union.simde_int8x16_private, align 16
  %tmp57 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_61 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_64 = alloca %union.simde_int8x16_private, align 16
  %tmp66 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_70 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_73 = alloca %union.simde_int8x16_private, align 16
  %tmp75 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_79 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_82 = alloca %union.simde_int8x16_private, align 16
  %tmp84 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_88 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_91 = alloca %union.simde_int8x16_private, align 16
  %tmp93 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_97 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_100 = alloca %union.simde_int8x16_private, align 16
  %tmp102 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_106 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_109 = alloca %union.simde_int8x16_private, align 16
  %tmp111 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_115 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_118 = alloca %union.simde_int8x16_private, align 16
  %tmp120 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_124 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_127 = alloca %union.simde_int8x16_private, align 16
  %tmp129 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_s8_vec_133 = alloca %union.simde_int8x16_private, align 16
  %simde_vdupq_laneq_s8_r_136 = alloca %union.simde_int8x16_private, align 16
  %tmp138 = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_s8.test_vec, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.32], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.32, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %vec1, i64 0, i64 0
  %call = call <16 x i8> @simde_vld1q_s8(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.32], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.32, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb15
    i32 3, label %sw.bb24
    i32 4, label %sw.bb33
    i32 5, label %sw.bb42
    i32 6, label %sw.bb51
    i32 7, label %sw.bb60
    i32 8, label %sw.bb69
    i32 9, label %sw.bb78
    i32 10, label %sw.bb87
    i32 11, label %sw.bb96
    i32 12, label %sw.bb105
    i32 13, label %sw.bb114
    i32 14, label %sw.bb123
    i32 15, label %sw.bb132
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_) #17
  %4 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call3 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_, i32 0, i32 0
  store <16 x i8> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_) #17
  %5 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_, align 16, !tbaa !16
  %6 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <16 x i8> %5, <16 x i8> %6, <16 x i32> zeroinitializer
  store <16 x i8> %shuffle, ptr %simde_vdupq_laneq_s8_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_, i32 0, i32 0
  %7 = load <16 x i8>, ptr %coerce.dive4, align 16
  %call5 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %7) #18
  store <16 x i8> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_) #17
  %8 = load <16 x i8>, ptr %tmp, align 16, !tbaa !16
  store <16 x i8> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_7) #17
  %9 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call8 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_7, i32 0, i32 0
  store <16 x i8> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_10) #17
  %10 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_7, align 16, !tbaa !16
  %11 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <16 x i8> %10, <16 x i8> %11, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <16 x i8> %shuffle11, ptr %simde_vdupq_laneq_s8_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_10, i32 0, i32 0
  %12 = load <16 x i8>, ptr %coerce.dive13, align 16
  %call14 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %12) #18
  store <16 x i8> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_7) #17
  %13 = load <16 x i8>, ptr %tmp12, align 16, !tbaa !16
  store <16 x i8> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_16) #17
  %14 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call17 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %14) #18
  %coerce.dive18 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_16, i32 0, i32 0
  store <16 x i8> %call17, ptr %coerce.dive18, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_19) #17
  %15 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_16, align 16, !tbaa !16
  %16 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_16, align 16, !tbaa !16
  %shuffle20 = shufflevector <16 x i8> %15, <16 x i8> %16, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <16 x i8> %shuffle20, ptr %simde_vdupq_laneq_s8_r_19, align 16, !tbaa !16
  %coerce.dive22 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_19, i32 0, i32 0
  %17 = load <16 x i8>, ptr %coerce.dive22, align 16
  %call23 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %17) #18
  store <16 x i8> %call23, ptr %tmp21, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_19) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_16) #17
  %18 = load <16 x i8>, ptr %tmp21, align 16, !tbaa !16
  store <16 x i8> %18, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_25) #17
  %19 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call26 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %19) #18
  %coerce.dive27 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_25, i32 0, i32 0
  store <16 x i8> %call26, ptr %coerce.dive27, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_28) #17
  %20 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_25, align 16, !tbaa !16
  %21 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_25, align 16, !tbaa !16
  %shuffle29 = shufflevector <16 x i8> %20, <16 x i8> %21, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <16 x i8> %shuffle29, ptr %simde_vdupq_laneq_s8_r_28, align 16, !tbaa !16
  %coerce.dive31 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_28, i32 0, i32 0
  %22 = load <16 x i8>, ptr %coerce.dive31, align 16
  %call32 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %22) #18
  store <16 x i8> %call32, ptr %tmp30, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_25) #17
  %23 = load <16 x i8>, ptr %tmp30, align 16, !tbaa !16
  store <16 x i8> %23, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_34) #17
  %24 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call35 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %24) #18
  %coerce.dive36 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_34, i32 0, i32 0
  store <16 x i8> %call35, ptr %coerce.dive36, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_37) #17
  %25 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_34, align 16, !tbaa !16
  %26 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_34, align 16, !tbaa !16
  %shuffle38 = shufflevector <16 x i8> %25, <16 x i8> %26, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <16 x i8> %shuffle38, ptr %simde_vdupq_laneq_s8_r_37, align 16, !tbaa !16
  %coerce.dive40 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_37, i32 0, i32 0
  %27 = load <16 x i8>, ptr %coerce.dive40, align 16
  %call41 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %27) #18
  store <16 x i8> %call41, ptr %tmp39, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_37) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_34) #17
  %28 = load <16 x i8>, ptr %tmp39, align 16, !tbaa !16
  store <16 x i8> %28, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_43) #17
  %29 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call44 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %29) #18
  %coerce.dive45 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_43, i32 0, i32 0
  store <16 x i8> %call44, ptr %coerce.dive45, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_46) #17
  %30 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_43, align 16, !tbaa !16
  %31 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_43, align 16, !tbaa !16
  %shuffle47 = shufflevector <16 x i8> %30, <16 x i8> %31, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <16 x i8> %shuffle47, ptr %simde_vdupq_laneq_s8_r_46, align 16, !tbaa !16
  %coerce.dive49 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_46, i32 0, i32 0
  %32 = load <16 x i8>, ptr %coerce.dive49, align 16
  %call50 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %32) #18
  store <16 x i8> %call50, ptr %tmp48, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_46) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_43) #17
  %33 = load <16 x i8>, ptr %tmp48, align 16, !tbaa !16
  store <16 x i8> %33, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb51:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_52) #17
  %34 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call53 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %34) #18
  %coerce.dive54 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_52, i32 0, i32 0
  store <16 x i8> %call53, ptr %coerce.dive54, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_55) #17
  %35 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_52, align 16, !tbaa !16
  %36 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_52, align 16, !tbaa !16
  %shuffle56 = shufflevector <16 x i8> %35, <16 x i8> %36, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <16 x i8> %shuffle56, ptr %simde_vdupq_laneq_s8_r_55, align 16, !tbaa !16
  %coerce.dive58 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_55, i32 0, i32 0
  %37 = load <16 x i8>, ptr %coerce.dive58, align 16
  %call59 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %37) #18
  store <16 x i8> %call59, ptr %tmp57, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_55) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_52) #17
  %38 = load <16 x i8>, ptr %tmp57, align 16, !tbaa !16
  store <16 x i8> %38, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb60:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_61) #17
  %39 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call62 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %39) #18
  %coerce.dive63 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_61, i32 0, i32 0
  store <16 x i8> %call62, ptr %coerce.dive63, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_64) #17
  %40 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_61, align 16, !tbaa !16
  %41 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_61, align 16, !tbaa !16
  %shuffle65 = shufflevector <16 x i8> %40, <16 x i8> %41, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <16 x i8> %shuffle65, ptr %simde_vdupq_laneq_s8_r_64, align 16, !tbaa !16
  %coerce.dive67 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_64, i32 0, i32 0
  %42 = load <16 x i8>, ptr %coerce.dive67, align 16
  %call68 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %42) #18
  store <16 x i8> %call68, ptr %tmp66, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_64) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_61) #17
  %43 = load <16 x i8>, ptr %tmp66, align 16, !tbaa !16
  store <16 x i8> %43, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb69:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_70) #17
  %44 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call71 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %44) #18
  %coerce.dive72 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_70, i32 0, i32 0
  store <16 x i8> %call71, ptr %coerce.dive72, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_73) #17
  %45 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_70, align 16, !tbaa !16
  %46 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_70, align 16, !tbaa !16
  %shuffle74 = shufflevector <16 x i8> %45, <16 x i8> %46, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  store <16 x i8> %shuffle74, ptr %simde_vdupq_laneq_s8_r_73, align 16, !tbaa !16
  %coerce.dive76 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_73, i32 0, i32 0
  %47 = load <16 x i8>, ptr %coerce.dive76, align 16
  %call77 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %47) #18
  store <16 x i8> %call77, ptr %tmp75, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_73) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_70) #17
  %48 = load <16 x i8>, ptr %tmp75, align 16, !tbaa !16
  store <16 x i8> %48, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb78:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_79) #17
  %49 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call80 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %49) #18
  %coerce.dive81 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_79, i32 0, i32 0
  store <16 x i8> %call80, ptr %coerce.dive81, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_82) #17
  %50 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_79, align 16, !tbaa !16
  %51 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_79, align 16, !tbaa !16
  %shuffle83 = shufflevector <16 x i8> %50, <16 x i8> %51, <16 x i32> <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  store <16 x i8> %shuffle83, ptr %simde_vdupq_laneq_s8_r_82, align 16, !tbaa !16
  %coerce.dive85 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_82, i32 0, i32 0
  %52 = load <16 x i8>, ptr %coerce.dive85, align 16
  %call86 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %52) #18
  store <16 x i8> %call86, ptr %tmp84, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_82) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_79) #17
  %53 = load <16 x i8>, ptr %tmp84, align 16, !tbaa !16
  store <16 x i8> %53, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb87:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_88) #17
  %54 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call89 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %54) #18
  %coerce.dive90 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_88, i32 0, i32 0
  store <16 x i8> %call89, ptr %coerce.dive90, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_91) #17
  %55 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_88, align 16, !tbaa !16
  %56 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_88, align 16, !tbaa !16
  %shuffle92 = shufflevector <16 x i8> %55, <16 x i8> %56, <16 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  store <16 x i8> %shuffle92, ptr %simde_vdupq_laneq_s8_r_91, align 16, !tbaa !16
  %coerce.dive94 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_91, i32 0, i32 0
  %57 = load <16 x i8>, ptr %coerce.dive94, align 16
  %call95 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %57) #18
  store <16 x i8> %call95, ptr %tmp93, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_91) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_88) #17
  %58 = load <16 x i8>, ptr %tmp93, align 16, !tbaa !16
  store <16 x i8> %58, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_97) #17
  %59 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call98 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %59) #18
  %coerce.dive99 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_97, i32 0, i32 0
  store <16 x i8> %call98, ptr %coerce.dive99, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_100) #17
  %60 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_97, align 16, !tbaa !16
  %61 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_97, align 16, !tbaa !16
  %shuffle101 = shufflevector <16 x i8> %60, <16 x i8> %61, <16 x i32> <i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  store <16 x i8> %shuffle101, ptr %simde_vdupq_laneq_s8_r_100, align 16, !tbaa !16
  %coerce.dive103 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_100, i32 0, i32 0
  %62 = load <16 x i8>, ptr %coerce.dive103, align 16
  %call104 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %62) #18
  store <16 x i8> %call104, ptr %tmp102, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_100) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_97) #17
  %63 = load <16 x i8>, ptr %tmp102, align 16, !tbaa !16
  store <16 x i8> %63, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb105:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_106) #17
  %64 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call107 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %64) #18
  %coerce.dive108 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_106, i32 0, i32 0
  store <16 x i8> %call107, ptr %coerce.dive108, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_109) #17
  %65 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_106, align 16, !tbaa !16
  %66 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_106, align 16, !tbaa !16
  %shuffle110 = shufflevector <16 x i8> %65, <16 x i8> %66, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  store <16 x i8> %shuffle110, ptr %simde_vdupq_laneq_s8_r_109, align 16, !tbaa !16
  %coerce.dive112 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_109, i32 0, i32 0
  %67 = load <16 x i8>, ptr %coerce.dive112, align 16
  %call113 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %67) #18
  store <16 x i8> %call113, ptr %tmp111, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_109) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_106) #17
  %68 = load <16 x i8>, ptr %tmp111, align 16, !tbaa !16
  store <16 x i8> %68, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb114:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_115) #17
  %69 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call116 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %69) #18
  %coerce.dive117 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_115, i32 0, i32 0
  store <16 x i8> %call116, ptr %coerce.dive117, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_118) #17
  %70 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_115, align 16, !tbaa !16
  %71 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_115, align 16, !tbaa !16
  %shuffle119 = shufflevector <16 x i8> %70, <16 x i8> %71, <16 x i32> <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  store <16 x i8> %shuffle119, ptr %simde_vdupq_laneq_s8_r_118, align 16, !tbaa !16
  %coerce.dive121 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_118, i32 0, i32 0
  %72 = load <16 x i8>, ptr %coerce.dive121, align 16
  %call122 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %72) #18
  store <16 x i8> %call122, ptr %tmp120, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_118) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_115) #17
  %73 = load <16 x i8>, ptr %tmp120, align 16, !tbaa !16
  store <16 x i8> %73, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb123:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_124) #17
  %74 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call125 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %74) #18
  %coerce.dive126 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_124, i32 0, i32 0
  store <16 x i8> %call125, ptr %coerce.dive126, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_127) #17
  %75 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_124, align 16, !tbaa !16
  %76 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_124, align 16, !tbaa !16
  %shuffle128 = shufflevector <16 x i8> %75, <16 x i8> %76, <16 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  store <16 x i8> %shuffle128, ptr %simde_vdupq_laneq_s8_r_127, align 16, !tbaa !16
  %coerce.dive130 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_127, i32 0, i32 0
  %77 = load <16 x i8>, ptr %coerce.dive130, align 16
  %call131 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %77) #18
  store <16 x i8> %call131, ptr %tmp129, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_127) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_124) #17
  %78 = load <16 x i8>, ptr %tmp129, align 16, !tbaa !16
  store <16 x i8> %78, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb132:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_133) #17
  %79 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call134 = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %79) #18
  %coerce.dive135 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_vec_133, i32 0, i32 0
  store <16 x i8> %call134, ptr %coerce.dive135, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_136) #17
  %80 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_133, align 16, !tbaa !16
  %81 = load <16 x i8>, ptr %simde_vdupq_laneq_s8_vec_133, align 16, !tbaa !16
  %shuffle137 = shufflevector <16 x i8> %80, <16 x i8> %81, <16 x i32> <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  store <16 x i8> %shuffle137, ptr %simde_vdupq_laneq_s8_r_136, align 16, !tbaa !16
  %coerce.dive139 = getelementptr inbounds %union.simde_int8x16_private, ptr %simde_vdupq_laneq_s8_r_136, i32 0, i32 0
  %82 = load <16 x i8>, ptr %coerce.dive139, align 16
  %call140 = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %82) #18
  store <16 x i8> %call140, ptr %tmp138, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_r_136) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s8_vec_133) #17
  %83 = load <16 x i8>, ptr %tmp138, align 16, !tbaa !16
  store <16 x i8> %83, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb132, %sw.bb123, %sw.bb114, %sw.bb105, %sw.bb96, %sw.bb87, %sw.bb78, %sw.bb69, %sw.bb60, %sw.bb51, %sw.bb42, %sw.bb33, %sw.bb24, %sw.bb15, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body142

do.body142:                                       ; preds = %do.end
  %84 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  %85 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx143 = getelementptr inbounds [8 x %struct.anon.32], ptr %test_vec, i64 0, i64 %85
  %r144 = getelementptr inbounds %struct.anon.32, ptr %arrayidx143, i32 0, i32 2
  %arraydecay145 = getelementptr inbounds [16 x i8], ptr %r144, i64 0, i64 0
  %call146 = call <16 x i8> @simde_vld1q_s8(ptr noundef %arraydecay145)
  %call147 = call i32 @simde_test_arm_neon_assert_equal_i8x16_(<16 x i8> noundef %84, <16 x i8> noundef %call146, ptr noundef @.str.43, i32 noundef 2035, ptr noundef @.str.44, ptr noundef @.str.62)
  %tobool = icmp ne i32 %call147, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body142
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body142
  br label %do.cond148

do.cond148:                                       ; preds = %if.end
  br label %do.end149

do.end149:                                        ; preds = %do.cond148
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end149, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup151 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %86 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %86, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup151:                                       ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest152 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest152, label %cleanup153 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup151
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup153

cleanup153:                                       ; preds = %for.end, %cleanup151
  call void @llvm.lifetime.end.p0(i64 288, ptr %test_vec) #17
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_s16() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.33], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <8 x i16>, align 16
  %r = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_s16_vec_ = alloca %union.simde_int16x8_private, align 16
  %simde_vdupq_laneq_s16_r_ = alloca %union.simde_int16x8_private, align 16
  %tmp = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_s16_vec_7 = alloca %union.simde_int16x8_private, align 16
  %simde_vdupq_laneq_s16_r_10 = alloca %union.simde_int16x8_private, align 16
  %tmp12 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_s16_vec_16 = alloca %union.simde_int16x8_private, align 16
  %simde_vdupq_laneq_s16_r_19 = alloca %union.simde_int16x8_private, align 16
  %tmp21 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_s16_vec_25 = alloca %union.simde_int16x8_private, align 16
  %simde_vdupq_laneq_s16_r_28 = alloca %union.simde_int16x8_private, align 16
  %tmp30 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_s16_vec_34 = alloca %union.simde_int16x8_private, align 16
  %simde_vdupq_laneq_s16_r_37 = alloca %union.simde_int16x8_private, align 16
  %tmp39 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_s16_vec_43 = alloca %union.simde_int16x8_private, align 16
  %simde_vdupq_laneq_s16_r_46 = alloca %union.simde_int16x8_private, align 16
  %tmp48 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_s16_vec_52 = alloca %union.simde_int16x8_private, align 16
  %simde_vdupq_laneq_s16_r_55 = alloca %union.simde_int16x8_private, align 16
  %tmp57 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_s16_vec_61 = alloca %union.simde_int16x8_private, align 16
  %simde_vdupq_laneq_s16_r_64 = alloca %union.simde_int16x8_private, align 16
  %tmp66 = alloca <8 x i16>, align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_s16.test_vec, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.33], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.33, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %vec1, i64 0, i64 0
  %call = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.33], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.33, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb15
    i32 3, label %sw.bb24
    i32 4, label %sw.bb33
    i32 5, label %sw.bb42
    i32 6, label %sw.bb51
    i32 7, label %sw.bb60
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_) #17
  %4 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call3 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_vec_, i32 0, i32 0
  store <8 x i16> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_) #17
  %5 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_, align 16, !tbaa !16
  %6 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <8 x i16> %5, <8 x i16> %6, <8 x i32> zeroinitializer
  store <8 x i16> %shuffle, ptr %simde_vdupq_laneq_s16_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_r_, i32 0, i32 0
  %7 = load <8 x i16>, ptr %coerce.dive4, align 16
  %call5 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %7) #18
  store <8 x i16> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_) #17
  %8 = load <8 x i16>, ptr %tmp, align 16, !tbaa !16
  store <8 x i16> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_7) #17
  %9 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call8 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_vec_7, i32 0, i32 0
  store <8 x i16> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_10) #17
  %10 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_7, align 16, !tbaa !16
  %11 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <8 x i16> %10, <8 x i16> %11, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <8 x i16> %shuffle11, ptr %simde_vdupq_laneq_s16_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_r_10, i32 0, i32 0
  %12 = load <8 x i16>, ptr %coerce.dive13, align 16
  %call14 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %12) #18
  store <8 x i16> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_7) #17
  %13 = load <8 x i16>, ptr %tmp12, align 16, !tbaa !16
  store <8 x i16> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_16) #17
  %14 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call17 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %14) #18
  %coerce.dive18 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_vec_16, i32 0, i32 0
  store <8 x i16> %call17, ptr %coerce.dive18, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_19) #17
  %15 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_16, align 16, !tbaa !16
  %16 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_16, align 16, !tbaa !16
  %shuffle20 = shufflevector <8 x i16> %15, <8 x i16> %16, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <8 x i16> %shuffle20, ptr %simde_vdupq_laneq_s16_r_19, align 16, !tbaa !16
  %coerce.dive22 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_r_19, i32 0, i32 0
  %17 = load <8 x i16>, ptr %coerce.dive22, align 16
  %call23 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %17) #18
  store <8 x i16> %call23, ptr %tmp21, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_19) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_16) #17
  %18 = load <8 x i16>, ptr %tmp21, align 16, !tbaa !16
  store <8 x i16> %18, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_25) #17
  %19 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call26 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %19) #18
  %coerce.dive27 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_vec_25, i32 0, i32 0
  store <8 x i16> %call26, ptr %coerce.dive27, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_28) #17
  %20 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_25, align 16, !tbaa !16
  %21 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_25, align 16, !tbaa !16
  %shuffle29 = shufflevector <8 x i16> %20, <8 x i16> %21, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <8 x i16> %shuffle29, ptr %simde_vdupq_laneq_s16_r_28, align 16, !tbaa !16
  %coerce.dive31 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_r_28, i32 0, i32 0
  %22 = load <8 x i16>, ptr %coerce.dive31, align 16
  %call32 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %22) #18
  store <8 x i16> %call32, ptr %tmp30, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_25) #17
  %23 = load <8 x i16>, ptr %tmp30, align 16, !tbaa !16
  store <8 x i16> %23, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_34) #17
  %24 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call35 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %24) #18
  %coerce.dive36 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_vec_34, i32 0, i32 0
  store <8 x i16> %call35, ptr %coerce.dive36, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_37) #17
  %25 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_34, align 16, !tbaa !16
  %26 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_34, align 16, !tbaa !16
  %shuffle38 = shufflevector <8 x i16> %25, <8 x i16> %26, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <8 x i16> %shuffle38, ptr %simde_vdupq_laneq_s16_r_37, align 16, !tbaa !16
  %coerce.dive40 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_r_37, i32 0, i32 0
  %27 = load <8 x i16>, ptr %coerce.dive40, align 16
  %call41 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %27) #18
  store <8 x i16> %call41, ptr %tmp39, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_37) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_34) #17
  %28 = load <8 x i16>, ptr %tmp39, align 16, !tbaa !16
  store <8 x i16> %28, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_43) #17
  %29 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call44 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %29) #18
  %coerce.dive45 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_vec_43, i32 0, i32 0
  store <8 x i16> %call44, ptr %coerce.dive45, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_46) #17
  %30 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_43, align 16, !tbaa !16
  %31 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_43, align 16, !tbaa !16
  %shuffle47 = shufflevector <8 x i16> %30, <8 x i16> %31, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <8 x i16> %shuffle47, ptr %simde_vdupq_laneq_s16_r_46, align 16, !tbaa !16
  %coerce.dive49 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_r_46, i32 0, i32 0
  %32 = load <8 x i16>, ptr %coerce.dive49, align 16
  %call50 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %32) #18
  store <8 x i16> %call50, ptr %tmp48, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_46) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_43) #17
  %33 = load <8 x i16>, ptr %tmp48, align 16, !tbaa !16
  store <8 x i16> %33, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb51:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_52) #17
  %34 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call53 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %34) #18
  %coerce.dive54 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_vec_52, i32 0, i32 0
  store <8 x i16> %call53, ptr %coerce.dive54, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_55) #17
  %35 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_52, align 16, !tbaa !16
  %36 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_52, align 16, !tbaa !16
  %shuffle56 = shufflevector <8 x i16> %35, <8 x i16> %36, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <8 x i16> %shuffle56, ptr %simde_vdupq_laneq_s16_r_55, align 16, !tbaa !16
  %coerce.dive58 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_r_55, i32 0, i32 0
  %37 = load <8 x i16>, ptr %coerce.dive58, align 16
  %call59 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %37) #18
  store <8 x i16> %call59, ptr %tmp57, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_55) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_52) #17
  %38 = load <8 x i16>, ptr %tmp57, align 16, !tbaa !16
  store <8 x i16> %38, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb60:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_61) #17
  %39 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call62 = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %39) #18
  %coerce.dive63 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_vec_61, i32 0, i32 0
  store <8 x i16> %call62, ptr %coerce.dive63, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_64) #17
  %40 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_61, align 16, !tbaa !16
  %41 = load <8 x i16>, ptr %simde_vdupq_laneq_s16_vec_61, align 16, !tbaa !16
  %shuffle65 = shufflevector <8 x i16> %40, <8 x i16> %41, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <8 x i16> %shuffle65, ptr %simde_vdupq_laneq_s16_r_64, align 16, !tbaa !16
  %coerce.dive67 = getelementptr inbounds %union.simde_int16x8_private, ptr %simde_vdupq_laneq_s16_r_64, i32 0, i32 0
  %42 = load <8 x i16>, ptr %coerce.dive67, align 16
  %call68 = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %42) #18
  store <8 x i16> %call68, ptr %tmp66, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_r_64) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s16_vec_61) #17
  %43 = load <8 x i16>, ptr %tmp66, align 16, !tbaa !16
  store <8 x i16> %43, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb60, %sw.bb51, %sw.bb42, %sw.bb33, %sw.bb24, %sw.bb15, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body70

do.body70:                                        ; preds = %do.end
  %44 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  %45 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx71 = getelementptr inbounds [8 x %struct.anon.33], ptr %test_vec, i64 0, i64 %45
  %r72 = getelementptr inbounds %struct.anon.33, ptr %arrayidx71, i32 0, i32 2
  %arraydecay73 = getelementptr inbounds [8 x i16], ptr %r72, i64 0, i64 0
  %call74 = call <8 x i16> @simde_vld1q_s16(ptr noundef %arraydecay73)
  %call75 = call i32 @simde_test_arm_neon_assert_equal_i16x8_(<8 x i16> noundef %44, <8 x i16> noundef %call74, ptr noundef @.str.43, i32 noundef 2097, ptr noundef @.str.44, ptr noundef @.str.63)
  %tobool = icmp ne i32 %call75, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body70
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body70
  br label %do.cond76

do.cond76:                                        ; preds = %if.end
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %46 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %46, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup79:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest80 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest80, label %cleanup81 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup79
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %for.end, %cleanup79
  call void @llvm.lifetime.end.p0(i64 288, ptr %test_vec) #17
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_s32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.34], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x i32>, align 16
  %r = alloca <4 x i32>, align 16
  %simde_vdupq_laneq_s32_vec_ = alloca %union.simde_int32x4_private, align 16
  %simde_vdupq_laneq_s32_r_ = alloca %union.simde_int32x4_private, align 16
  %tmp = alloca <4 x i32>, align 16
  %simde_vdupq_laneq_s32_vec_7 = alloca %union.simde_int32x4_private, align 16
  %simde_vdupq_laneq_s32_r_10 = alloca %union.simde_int32x4_private, align 16
  %tmp12 = alloca <4 x i32>, align 16
  %simde_vdupq_laneq_s32_vec_16 = alloca %union.simde_int32x4_private, align 16
  %simde_vdupq_laneq_s32_r_19 = alloca %union.simde_int32x4_private, align 16
  %tmp21 = alloca <4 x i32>, align 16
  %simde_vdupq_laneq_s32_vec_25 = alloca %union.simde_int32x4_private, align 16
  %simde_vdupq_laneq_s32_r_28 = alloca %union.simde_int32x4_private, align 16
  %tmp30 = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_s32.test_vec, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.34], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.34, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %vec1, i64 0, i64 0
  %call = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.34], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.34, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb15
    i32 3, label %sw.bb24
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s32_vec_) #17
  %4 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call3 = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_laneq_s32_vec_, i32 0, i32 0
  store <4 x i32> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s32_r_) #17
  %5 = load <4 x i32>, ptr %simde_vdupq_laneq_s32_vec_, align 16, !tbaa !16
  %6 = load <4 x i32>, ptr %simde_vdupq_laneq_s32_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <4 x i32> %5, <4 x i32> %6, <4 x i32> zeroinitializer
  store <4 x i32> %shuffle, ptr %simde_vdupq_laneq_s32_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_laneq_s32_r_, i32 0, i32 0
  %7 = load <4 x i32>, ptr %coerce.dive4, align 16
  %call5 = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %7) #18
  store <4 x i32> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s32_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s32_vec_) #17
  %8 = load <4 x i32>, ptr %tmp, align 16, !tbaa !16
  store <4 x i32> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s32_vec_7) #17
  %9 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call8 = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_laneq_s32_vec_7, i32 0, i32 0
  store <4 x i32> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s32_r_10) #17
  %10 = load <4 x i32>, ptr %simde_vdupq_laneq_s32_vec_7, align 16, !tbaa !16
  %11 = load <4 x i32>, ptr %simde_vdupq_laneq_s32_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <4 x i32> %10, <4 x i32> %11, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %shuffle11, ptr %simde_vdupq_laneq_s32_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_laneq_s32_r_10, i32 0, i32 0
  %12 = load <4 x i32>, ptr %coerce.dive13, align 16
  %call14 = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %12) #18
  store <4 x i32> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s32_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s32_vec_7) #17
  %13 = load <4 x i32>, ptr %tmp12, align 16, !tbaa !16
  store <4 x i32> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s32_vec_16) #17
  %14 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call17 = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %14) #18
  %coerce.dive18 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_laneq_s32_vec_16, i32 0, i32 0
  store <4 x i32> %call17, ptr %coerce.dive18, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s32_r_19) #17
  %15 = load <4 x i32>, ptr %simde_vdupq_laneq_s32_vec_16, align 16, !tbaa !16
  %16 = load <4 x i32>, ptr %simde_vdupq_laneq_s32_vec_16, align 16, !tbaa !16
  %shuffle20 = shufflevector <4 x i32> %15, <4 x i32> %16, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  store <4 x i32> %shuffle20, ptr %simde_vdupq_laneq_s32_r_19, align 16, !tbaa !16
  %coerce.dive22 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_laneq_s32_r_19, i32 0, i32 0
  %17 = load <4 x i32>, ptr %coerce.dive22, align 16
  %call23 = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %17) #18
  store <4 x i32> %call23, ptr %tmp21, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s32_r_19) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s32_vec_16) #17
  %18 = load <4 x i32>, ptr %tmp21, align 16, !tbaa !16
  store <4 x i32> %18, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s32_vec_25) #17
  %19 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call26 = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %19) #18
  %coerce.dive27 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_laneq_s32_vec_25, i32 0, i32 0
  store <4 x i32> %call26, ptr %coerce.dive27, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s32_r_28) #17
  %20 = load <4 x i32>, ptr %simde_vdupq_laneq_s32_vec_25, align 16, !tbaa !16
  %21 = load <4 x i32>, ptr %simde_vdupq_laneq_s32_vec_25, align 16, !tbaa !16
  %shuffle29 = shufflevector <4 x i32> %20, <4 x i32> %21, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  store <4 x i32> %shuffle29, ptr %simde_vdupq_laneq_s32_r_28, align 16, !tbaa !16
  %coerce.dive31 = getelementptr inbounds %union.simde_int32x4_private, ptr %simde_vdupq_laneq_s32_r_28, i32 0, i32 0
  %22 = load <4 x i32>, ptr %coerce.dive31, align 16
  %call32 = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %22) #18
  store <4 x i32> %call32, ptr %tmp30, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s32_r_28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s32_vec_25) #17
  %23 = load <4 x i32>, ptr %tmp30, align 16, !tbaa !16
  store <4 x i32> %23, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb15, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body34

do.body34:                                        ; preds = %do.end
  %24 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %25 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx35 = getelementptr inbounds [8 x %struct.anon.34], ptr %test_vec, i64 0, i64 %25
  %r36 = getelementptr inbounds %struct.anon.34, ptr %arrayidx35, i32 0, i32 2
  %arraydecay37 = getelementptr inbounds [4 x i32], ptr %r36, i64 0, i64 0
  %call38 = call <4 x i32> @simde_vld1q_s32(ptr noundef %arraydecay37)
  %call39 = call i32 @simde_test_arm_neon_assert_equal_i32x4_(<4 x i32> noundef %24, <4 x i32> noundef %call38, ptr noundef @.str.43, i32 noundef 2159, ptr noundef @.str.44, ptr noundef @.str.64)
  %tobool = icmp ne i32 %call39, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body34
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body34
  br label %do.cond40

do.cond40:                                        ; preds = %if.end
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %26 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %26, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup43:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest44 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest44, label %cleanup45 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup43
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %for.end, %cleanup43
  call void @llvm.lifetime.end.p0(i64 288, ptr %test_vec) #17
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_s64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.35], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  %simde_vdupq_laneq_s64_vec_ = alloca %union.simde_int64x2_private, align 16
  %simde_vdupq_laneq_s64_r_ = alloca %union.simde_int64x2_private, align 16
  %tmp = alloca <2 x i64>, align 16
  %simde_vdupq_laneq_s64_vec_7 = alloca %union.simde_int64x2_private, align 16
  %simde_vdupq_laneq_s64_r_10 = alloca %union.simde_int64x2_private, align 16
  %tmp12 = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_s64.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.35], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.35, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %vec1, i64 0, i64 0
  %call = call <2 x i64> @simde_vld1q_s64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.35], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.35, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 8, !tbaa !21
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s64_vec_) #17
  %4 = load <2 x i64>, ptr %vec, align 16, !tbaa !16
  %call3 = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %simde_vdupq_laneq_s64_vec_, i32 0, i32 0
  store <2 x i64> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s64_r_) #17
  %5 = load <2 x i64>, ptr %simde_vdupq_laneq_s64_vec_, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %simde_vdupq_laneq_s64_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <2 x i64> %5, <2 x i64> %6, <2 x i32> zeroinitializer
  store <2 x i64> %shuffle, ptr %simde_vdupq_laneq_s64_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_int64x2_private, ptr %simde_vdupq_laneq_s64_r_, i32 0, i32 0
  %7 = load <2 x i64>, ptr %coerce.dive4, align 16
  %call5 = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %7) #18
  store <2 x i64> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s64_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s64_vec_) #17
  %8 = load <2 x i64>, ptr %tmp, align 16, !tbaa !16
  store <2 x i64> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s64_vec_7) #17
  %9 = load <2 x i64>, ptr %vec, align 16, !tbaa !16
  %call8 = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_int64x2_private, ptr %simde_vdupq_laneq_s64_vec_7, i32 0, i32 0
  store <2 x i64> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_s64_r_10) #17
  %10 = load <2 x i64>, ptr %simde_vdupq_laneq_s64_vec_7, align 16, !tbaa !16
  %11 = load <2 x i64>, ptr %simde_vdupq_laneq_s64_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <2 x i64> %10, <2 x i64> %11, <2 x i32> <i32 1, i32 1>
  store <2 x i64> %shuffle11, ptr %simde_vdupq_laneq_s64_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_int64x2_private, ptr %simde_vdupq_laneq_s64_r_10, i32 0, i32 0
  %12 = load <2 x i64>, ptr %coerce.dive13, align 16
  %call14 = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %12) #18
  store <2 x i64> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s64_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_s64_vec_7) #17
  %13 = load <2 x i64>, ptr %tmp12, align 16, !tbaa !16
  store <2 x i64> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body16

do.body16:                                        ; preds = %do.end
  %14 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx17 = getelementptr inbounds [8 x %struct.anon.35], ptr %test_vec, i64 0, i64 %15
  %r18 = getelementptr inbounds %struct.anon.35, ptr %arrayidx17, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [2 x i64], ptr %r18, i64 0, i64 0
  %call20 = call <2 x i64> @simde_vld1q_s64(ptr noundef %arraydecay19)
  %call21 = call i32 @simde_test_arm_neon_assert_equal_i64x2_(<2 x i64> noundef %14, <2 x i64> noundef %call20, ptr noundef @.str.43, i32 noundef 2221, ptr noundef @.str.44, ptr noundef @.str.65)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body16
  br label %do.cond22

do.cond22:                                        ; preds = %if.end
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %16, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup25:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %cleanup27 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup25
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %for.end, %cleanup25
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #17
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_u8() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.36], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <16 x i8>, align 16
  %r = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_ = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_ = alloca %union.simde_uint8x16_private, align 16
  %tmp = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_7 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_10 = alloca %union.simde_uint8x16_private, align 16
  %tmp12 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_16 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_19 = alloca %union.simde_uint8x16_private, align 16
  %tmp21 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_25 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_28 = alloca %union.simde_uint8x16_private, align 16
  %tmp30 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_34 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_37 = alloca %union.simde_uint8x16_private, align 16
  %tmp39 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_43 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_46 = alloca %union.simde_uint8x16_private, align 16
  %tmp48 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_52 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_55 = alloca %union.simde_uint8x16_private, align 16
  %tmp57 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_61 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_64 = alloca %union.simde_uint8x16_private, align 16
  %tmp66 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_70 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_73 = alloca %union.simde_uint8x16_private, align 16
  %tmp75 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_79 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_82 = alloca %union.simde_uint8x16_private, align 16
  %tmp84 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_88 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_91 = alloca %union.simde_uint8x16_private, align 16
  %tmp93 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_97 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_100 = alloca %union.simde_uint8x16_private, align 16
  %tmp102 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_106 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_109 = alloca %union.simde_uint8x16_private, align 16
  %tmp111 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_115 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_118 = alloca %union.simde_uint8x16_private, align 16
  %tmp120 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_124 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_127 = alloca %union.simde_uint8x16_private, align 16
  %tmp129 = alloca <16 x i8>, align 16
  %simde_vdupq_laneq_u8_vec_133 = alloca %union.simde_uint8x16_private, align 16
  %simde_vdupq_laneq_u8_r_136 = alloca %union.simde_uint8x16_private, align 16
  %tmp138 = alloca <16 x i8>, align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_u8.test_vec, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup151

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.36], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.36, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %vec1, i64 0, i64 0
  %call = call <16 x i8> @simde_vld1q_u8(ptr noundef %arraydecay)
  store <16 x i8> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.36], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.36, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb15
    i32 3, label %sw.bb24
    i32 4, label %sw.bb33
    i32 5, label %sw.bb42
    i32 6, label %sw.bb51
    i32 7, label %sw.bb60
    i32 8, label %sw.bb69
    i32 9, label %sw.bb78
    i32 10, label %sw.bb87
    i32 11, label %sw.bb96
    i32 12, label %sw.bb105
    i32 13, label %sw.bb114
    i32 14, label %sw.bb123
    i32 15, label %sw.bb132
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_) #17
  %4 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call3 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_, i32 0, i32 0
  store <16 x i8> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_) #17
  %5 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_, align 16, !tbaa !16
  %6 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <16 x i8> %5, <16 x i8> %6, <16 x i32> zeroinitializer
  store <16 x i8> %shuffle, ptr %simde_vdupq_laneq_u8_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_, i32 0, i32 0
  %7 = load <16 x i8>, ptr %coerce.dive4, align 16
  %call5 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %7) #18
  store <16 x i8> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_) #17
  %8 = load <16 x i8>, ptr %tmp, align 16, !tbaa !16
  store <16 x i8> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_7) #17
  %9 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call8 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_7, i32 0, i32 0
  store <16 x i8> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_10) #17
  %10 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_7, align 16, !tbaa !16
  %11 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <16 x i8> %10, <16 x i8> %11, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <16 x i8> %shuffle11, ptr %simde_vdupq_laneq_u8_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_10, i32 0, i32 0
  %12 = load <16 x i8>, ptr %coerce.dive13, align 16
  %call14 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %12) #18
  store <16 x i8> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_7) #17
  %13 = load <16 x i8>, ptr %tmp12, align 16, !tbaa !16
  store <16 x i8> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_16) #17
  %14 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call17 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %14) #18
  %coerce.dive18 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_16, i32 0, i32 0
  store <16 x i8> %call17, ptr %coerce.dive18, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_19) #17
  %15 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_16, align 16, !tbaa !16
  %16 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_16, align 16, !tbaa !16
  %shuffle20 = shufflevector <16 x i8> %15, <16 x i8> %16, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <16 x i8> %shuffle20, ptr %simde_vdupq_laneq_u8_r_19, align 16, !tbaa !16
  %coerce.dive22 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_19, i32 0, i32 0
  %17 = load <16 x i8>, ptr %coerce.dive22, align 16
  %call23 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %17) #18
  store <16 x i8> %call23, ptr %tmp21, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_19) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_16) #17
  %18 = load <16 x i8>, ptr %tmp21, align 16, !tbaa !16
  store <16 x i8> %18, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_25) #17
  %19 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call26 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %19) #18
  %coerce.dive27 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_25, i32 0, i32 0
  store <16 x i8> %call26, ptr %coerce.dive27, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_28) #17
  %20 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_25, align 16, !tbaa !16
  %21 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_25, align 16, !tbaa !16
  %shuffle29 = shufflevector <16 x i8> %20, <16 x i8> %21, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <16 x i8> %shuffle29, ptr %simde_vdupq_laneq_u8_r_28, align 16, !tbaa !16
  %coerce.dive31 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_28, i32 0, i32 0
  %22 = load <16 x i8>, ptr %coerce.dive31, align 16
  %call32 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %22) #18
  store <16 x i8> %call32, ptr %tmp30, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_25) #17
  %23 = load <16 x i8>, ptr %tmp30, align 16, !tbaa !16
  store <16 x i8> %23, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_34) #17
  %24 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call35 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %24) #18
  %coerce.dive36 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_34, i32 0, i32 0
  store <16 x i8> %call35, ptr %coerce.dive36, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_37) #17
  %25 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_34, align 16, !tbaa !16
  %26 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_34, align 16, !tbaa !16
  %shuffle38 = shufflevector <16 x i8> %25, <16 x i8> %26, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <16 x i8> %shuffle38, ptr %simde_vdupq_laneq_u8_r_37, align 16, !tbaa !16
  %coerce.dive40 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_37, i32 0, i32 0
  %27 = load <16 x i8>, ptr %coerce.dive40, align 16
  %call41 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %27) #18
  store <16 x i8> %call41, ptr %tmp39, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_37) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_34) #17
  %28 = load <16 x i8>, ptr %tmp39, align 16, !tbaa !16
  store <16 x i8> %28, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_43) #17
  %29 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call44 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %29) #18
  %coerce.dive45 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_43, i32 0, i32 0
  store <16 x i8> %call44, ptr %coerce.dive45, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_46) #17
  %30 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_43, align 16, !tbaa !16
  %31 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_43, align 16, !tbaa !16
  %shuffle47 = shufflevector <16 x i8> %30, <16 x i8> %31, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <16 x i8> %shuffle47, ptr %simde_vdupq_laneq_u8_r_46, align 16, !tbaa !16
  %coerce.dive49 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_46, i32 0, i32 0
  %32 = load <16 x i8>, ptr %coerce.dive49, align 16
  %call50 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %32) #18
  store <16 x i8> %call50, ptr %tmp48, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_46) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_43) #17
  %33 = load <16 x i8>, ptr %tmp48, align 16, !tbaa !16
  store <16 x i8> %33, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb51:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_52) #17
  %34 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call53 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %34) #18
  %coerce.dive54 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_52, i32 0, i32 0
  store <16 x i8> %call53, ptr %coerce.dive54, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_55) #17
  %35 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_52, align 16, !tbaa !16
  %36 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_52, align 16, !tbaa !16
  %shuffle56 = shufflevector <16 x i8> %35, <16 x i8> %36, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <16 x i8> %shuffle56, ptr %simde_vdupq_laneq_u8_r_55, align 16, !tbaa !16
  %coerce.dive58 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_55, i32 0, i32 0
  %37 = load <16 x i8>, ptr %coerce.dive58, align 16
  %call59 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %37) #18
  store <16 x i8> %call59, ptr %tmp57, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_55) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_52) #17
  %38 = load <16 x i8>, ptr %tmp57, align 16, !tbaa !16
  store <16 x i8> %38, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb60:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_61) #17
  %39 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call62 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %39) #18
  %coerce.dive63 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_61, i32 0, i32 0
  store <16 x i8> %call62, ptr %coerce.dive63, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_64) #17
  %40 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_61, align 16, !tbaa !16
  %41 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_61, align 16, !tbaa !16
  %shuffle65 = shufflevector <16 x i8> %40, <16 x i8> %41, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <16 x i8> %shuffle65, ptr %simde_vdupq_laneq_u8_r_64, align 16, !tbaa !16
  %coerce.dive67 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_64, i32 0, i32 0
  %42 = load <16 x i8>, ptr %coerce.dive67, align 16
  %call68 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %42) #18
  store <16 x i8> %call68, ptr %tmp66, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_64) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_61) #17
  %43 = load <16 x i8>, ptr %tmp66, align 16, !tbaa !16
  store <16 x i8> %43, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb69:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_70) #17
  %44 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call71 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %44) #18
  %coerce.dive72 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_70, i32 0, i32 0
  store <16 x i8> %call71, ptr %coerce.dive72, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_73) #17
  %45 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_70, align 16, !tbaa !16
  %46 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_70, align 16, !tbaa !16
  %shuffle74 = shufflevector <16 x i8> %45, <16 x i8> %46, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  store <16 x i8> %shuffle74, ptr %simde_vdupq_laneq_u8_r_73, align 16, !tbaa !16
  %coerce.dive76 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_73, i32 0, i32 0
  %47 = load <16 x i8>, ptr %coerce.dive76, align 16
  %call77 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %47) #18
  store <16 x i8> %call77, ptr %tmp75, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_73) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_70) #17
  %48 = load <16 x i8>, ptr %tmp75, align 16, !tbaa !16
  store <16 x i8> %48, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb78:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_79) #17
  %49 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call80 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %49) #18
  %coerce.dive81 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_79, i32 0, i32 0
  store <16 x i8> %call80, ptr %coerce.dive81, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_82) #17
  %50 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_79, align 16, !tbaa !16
  %51 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_79, align 16, !tbaa !16
  %shuffle83 = shufflevector <16 x i8> %50, <16 x i8> %51, <16 x i32> <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  store <16 x i8> %shuffle83, ptr %simde_vdupq_laneq_u8_r_82, align 16, !tbaa !16
  %coerce.dive85 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_82, i32 0, i32 0
  %52 = load <16 x i8>, ptr %coerce.dive85, align 16
  %call86 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %52) #18
  store <16 x i8> %call86, ptr %tmp84, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_82) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_79) #17
  %53 = load <16 x i8>, ptr %tmp84, align 16, !tbaa !16
  store <16 x i8> %53, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb87:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_88) #17
  %54 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call89 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %54) #18
  %coerce.dive90 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_88, i32 0, i32 0
  store <16 x i8> %call89, ptr %coerce.dive90, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_91) #17
  %55 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_88, align 16, !tbaa !16
  %56 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_88, align 16, !tbaa !16
  %shuffle92 = shufflevector <16 x i8> %55, <16 x i8> %56, <16 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  store <16 x i8> %shuffle92, ptr %simde_vdupq_laneq_u8_r_91, align 16, !tbaa !16
  %coerce.dive94 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_91, i32 0, i32 0
  %57 = load <16 x i8>, ptr %coerce.dive94, align 16
  %call95 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %57) #18
  store <16 x i8> %call95, ptr %tmp93, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_91) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_88) #17
  %58 = load <16 x i8>, ptr %tmp93, align 16, !tbaa !16
  store <16 x i8> %58, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_97) #17
  %59 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call98 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %59) #18
  %coerce.dive99 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_97, i32 0, i32 0
  store <16 x i8> %call98, ptr %coerce.dive99, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_100) #17
  %60 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_97, align 16, !tbaa !16
  %61 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_97, align 16, !tbaa !16
  %shuffle101 = shufflevector <16 x i8> %60, <16 x i8> %61, <16 x i32> <i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  store <16 x i8> %shuffle101, ptr %simde_vdupq_laneq_u8_r_100, align 16, !tbaa !16
  %coerce.dive103 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_100, i32 0, i32 0
  %62 = load <16 x i8>, ptr %coerce.dive103, align 16
  %call104 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %62) #18
  store <16 x i8> %call104, ptr %tmp102, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_100) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_97) #17
  %63 = load <16 x i8>, ptr %tmp102, align 16, !tbaa !16
  store <16 x i8> %63, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb105:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_106) #17
  %64 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call107 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %64) #18
  %coerce.dive108 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_106, i32 0, i32 0
  store <16 x i8> %call107, ptr %coerce.dive108, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_109) #17
  %65 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_106, align 16, !tbaa !16
  %66 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_106, align 16, !tbaa !16
  %shuffle110 = shufflevector <16 x i8> %65, <16 x i8> %66, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  store <16 x i8> %shuffle110, ptr %simde_vdupq_laneq_u8_r_109, align 16, !tbaa !16
  %coerce.dive112 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_109, i32 0, i32 0
  %67 = load <16 x i8>, ptr %coerce.dive112, align 16
  %call113 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %67) #18
  store <16 x i8> %call113, ptr %tmp111, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_109) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_106) #17
  %68 = load <16 x i8>, ptr %tmp111, align 16, !tbaa !16
  store <16 x i8> %68, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb114:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_115) #17
  %69 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call116 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %69) #18
  %coerce.dive117 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_115, i32 0, i32 0
  store <16 x i8> %call116, ptr %coerce.dive117, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_118) #17
  %70 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_115, align 16, !tbaa !16
  %71 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_115, align 16, !tbaa !16
  %shuffle119 = shufflevector <16 x i8> %70, <16 x i8> %71, <16 x i32> <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  store <16 x i8> %shuffle119, ptr %simde_vdupq_laneq_u8_r_118, align 16, !tbaa !16
  %coerce.dive121 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_118, i32 0, i32 0
  %72 = load <16 x i8>, ptr %coerce.dive121, align 16
  %call122 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %72) #18
  store <16 x i8> %call122, ptr %tmp120, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_118) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_115) #17
  %73 = load <16 x i8>, ptr %tmp120, align 16, !tbaa !16
  store <16 x i8> %73, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb123:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_124) #17
  %74 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call125 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %74) #18
  %coerce.dive126 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_124, i32 0, i32 0
  store <16 x i8> %call125, ptr %coerce.dive126, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_127) #17
  %75 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_124, align 16, !tbaa !16
  %76 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_124, align 16, !tbaa !16
  %shuffle128 = shufflevector <16 x i8> %75, <16 x i8> %76, <16 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  store <16 x i8> %shuffle128, ptr %simde_vdupq_laneq_u8_r_127, align 16, !tbaa !16
  %coerce.dive130 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_127, i32 0, i32 0
  %77 = load <16 x i8>, ptr %coerce.dive130, align 16
  %call131 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %77) #18
  store <16 x i8> %call131, ptr %tmp129, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_127) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_124) #17
  %78 = load <16 x i8>, ptr %tmp129, align 16, !tbaa !16
  store <16 x i8> %78, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb132:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_133) #17
  %79 = load <16 x i8>, ptr %vec, align 16, !tbaa !16
  %call134 = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %79) #18
  %coerce.dive135 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_vec_133, i32 0, i32 0
  store <16 x i8> %call134, ptr %coerce.dive135, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_136) #17
  %80 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_133, align 16, !tbaa !16
  %81 = load <16 x i8>, ptr %simde_vdupq_laneq_u8_vec_133, align 16, !tbaa !16
  %shuffle137 = shufflevector <16 x i8> %80, <16 x i8> %81, <16 x i32> <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  store <16 x i8> %shuffle137, ptr %simde_vdupq_laneq_u8_r_136, align 16, !tbaa !16
  %coerce.dive139 = getelementptr inbounds %union.simde_uint8x16_private, ptr %simde_vdupq_laneq_u8_r_136, i32 0, i32 0
  %82 = load <16 x i8>, ptr %coerce.dive139, align 16
  %call140 = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %82) #18
  store <16 x i8> %call140, ptr %tmp138, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_r_136) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u8_vec_133) #17
  %83 = load <16 x i8>, ptr %tmp138, align 16, !tbaa !16
  store <16 x i8> %83, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb132, %sw.bb123, %sw.bb114, %sw.bb105, %sw.bb96, %sw.bb87, %sw.bb78, %sw.bb69, %sw.bb60, %sw.bb51, %sw.bb42, %sw.bb33, %sw.bb24, %sw.bb15, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body142

do.body142:                                       ; preds = %do.end
  %84 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  %85 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx143 = getelementptr inbounds [8 x %struct.anon.36], ptr %test_vec, i64 0, i64 %85
  %r144 = getelementptr inbounds %struct.anon.36, ptr %arrayidx143, i32 0, i32 2
  %arraydecay145 = getelementptr inbounds [16 x i8], ptr %r144, i64 0, i64 0
  %call146 = call <16 x i8> @simde_vld1q_u8(ptr noundef %arraydecay145)
  %call147 = call i32 @simde_test_arm_neon_assert_equal_u8x16_(<16 x i8> noundef %84, <16 x i8> noundef %call146, ptr noundef @.str.43, i32 noundef 2299, ptr noundef @.str.44, ptr noundef @.str.66)
  %tobool = icmp ne i32 %call147, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body142
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body142
  br label %do.cond148

do.cond148:                                       ; preds = %if.end
  br label %do.end149

do.end149:                                        ; preds = %do.cond148
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end149, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup151 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %86 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %86, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup151:                                       ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest152 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest152, label %cleanup153 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup151
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup153

cleanup153:                                       ; preds = %for.end, %cleanup151
  call void @llvm.lifetime.end.p0(i64 288, ptr %test_vec) #17
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_u16() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.37], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <8 x i16>, align 16
  %r = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_u16_vec_ = alloca %union.simde_uint16x8_private, align 16
  %simde_vdupq_laneq_u16_r_ = alloca %union.simde_uint16x8_private, align 16
  %tmp = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_u16_vec_7 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdupq_laneq_u16_r_10 = alloca %union.simde_uint16x8_private, align 16
  %tmp12 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_u16_vec_16 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdupq_laneq_u16_r_19 = alloca %union.simde_uint16x8_private, align 16
  %tmp21 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_u16_vec_25 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdupq_laneq_u16_r_28 = alloca %union.simde_uint16x8_private, align 16
  %tmp30 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_u16_vec_34 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdupq_laneq_u16_r_37 = alloca %union.simde_uint16x8_private, align 16
  %tmp39 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_u16_vec_43 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdupq_laneq_u16_r_46 = alloca %union.simde_uint16x8_private, align 16
  %tmp48 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_u16_vec_52 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdupq_laneq_u16_r_55 = alloca %union.simde_uint16x8_private, align 16
  %tmp57 = alloca <8 x i16>, align 16
  %simde_vdupq_laneq_u16_vec_61 = alloca %union.simde_uint16x8_private, align 16
  %simde_vdupq_laneq_u16_r_64 = alloca %union.simde_uint16x8_private, align 16
  %tmp66 = alloca <8 x i16>, align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_u16.test_vec, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup79

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.37], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.37, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %vec1, i64 0, i64 0
  %call = call <8 x i16> @simde_vld1q_u16(ptr noundef %arraydecay)
  store <8 x i16> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.37], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.37, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb15
    i32 3, label %sw.bb24
    i32 4, label %sw.bb33
    i32 5, label %sw.bb42
    i32 6, label %sw.bb51
    i32 7, label %sw.bb60
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_) #17
  %4 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call3 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_vec_, i32 0, i32 0
  store <8 x i16> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_) #17
  %5 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_, align 16, !tbaa !16
  %6 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <8 x i16> %5, <8 x i16> %6, <8 x i32> zeroinitializer
  store <8 x i16> %shuffle, ptr %simde_vdupq_laneq_u16_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_r_, i32 0, i32 0
  %7 = load <8 x i16>, ptr %coerce.dive4, align 16
  %call5 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %7) #18
  store <8 x i16> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_) #17
  %8 = load <8 x i16>, ptr %tmp, align 16, !tbaa !16
  store <8 x i16> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_7) #17
  %9 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call8 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_vec_7, i32 0, i32 0
  store <8 x i16> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_10) #17
  %10 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_7, align 16, !tbaa !16
  %11 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <8 x i16> %10, <8 x i16> %11, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  store <8 x i16> %shuffle11, ptr %simde_vdupq_laneq_u16_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_r_10, i32 0, i32 0
  %12 = load <8 x i16>, ptr %coerce.dive13, align 16
  %call14 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %12) #18
  store <8 x i16> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_7) #17
  %13 = load <8 x i16>, ptr %tmp12, align 16, !tbaa !16
  store <8 x i16> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_16) #17
  %14 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call17 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %14) #18
  %coerce.dive18 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_vec_16, i32 0, i32 0
  store <8 x i16> %call17, ptr %coerce.dive18, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_19) #17
  %15 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_16, align 16, !tbaa !16
  %16 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_16, align 16, !tbaa !16
  %shuffle20 = shufflevector <8 x i16> %15, <8 x i16> %16, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  store <8 x i16> %shuffle20, ptr %simde_vdupq_laneq_u16_r_19, align 16, !tbaa !16
  %coerce.dive22 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_r_19, i32 0, i32 0
  %17 = load <8 x i16>, ptr %coerce.dive22, align 16
  %call23 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %17) #18
  store <8 x i16> %call23, ptr %tmp21, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_19) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_16) #17
  %18 = load <8 x i16>, ptr %tmp21, align 16, !tbaa !16
  store <8 x i16> %18, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_25) #17
  %19 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call26 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %19) #18
  %coerce.dive27 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_vec_25, i32 0, i32 0
  store <8 x i16> %call26, ptr %coerce.dive27, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_28) #17
  %20 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_25, align 16, !tbaa !16
  %21 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_25, align 16, !tbaa !16
  %shuffle29 = shufflevector <8 x i16> %20, <8 x i16> %21, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  store <8 x i16> %shuffle29, ptr %simde_vdupq_laneq_u16_r_28, align 16, !tbaa !16
  %coerce.dive31 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_r_28, i32 0, i32 0
  %22 = load <8 x i16>, ptr %coerce.dive31, align 16
  %call32 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %22) #18
  store <8 x i16> %call32, ptr %tmp30, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_25) #17
  %23 = load <8 x i16>, ptr %tmp30, align 16, !tbaa !16
  store <8 x i16> %23, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_34) #17
  %24 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call35 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %24) #18
  %coerce.dive36 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_vec_34, i32 0, i32 0
  store <8 x i16> %call35, ptr %coerce.dive36, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_37) #17
  %25 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_34, align 16, !tbaa !16
  %26 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_34, align 16, !tbaa !16
  %shuffle38 = shufflevector <8 x i16> %25, <8 x i16> %26, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  store <8 x i16> %shuffle38, ptr %simde_vdupq_laneq_u16_r_37, align 16, !tbaa !16
  %coerce.dive40 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_r_37, i32 0, i32 0
  %27 = load <8 x i16>, ptr %coerce.dive40, align 16
  %call41 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %27) #18
  store <8 x i16> %call41, ptr %tmp39, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_37) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_34) #17
  %28 = load <8 x i16>, ptr %tmp39, align 16, !tbaa !16
  store <8 x i16> %28, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb42:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_43) #17
  %29 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call44 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %29) #18
  %coerce.dive45 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_vec_43, i32 0, i32 0
  store <8 x i16> %call44, ptr %coerce.dive45, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_46) #17
  %30 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_43, align 16, !tbaa !16
  %31 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_43, align 16, !tbaa !16
  %shuffle47 = shufflevector <8 x i16> %30, <8 x i16> %31, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  store <8 x i16> %shuffle47, ptr %simde_vdupq_laneq_u16_r_46, align 16, !tbaa !16
  %coerce.dive49 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_r_46, i32 0, i32 0
  %32 = load <8 x i16>, ptr %coerce.dive49, align 16
  %call50 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %32) #18
  store <8 x i16> %call50, ptr %tmp48, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_46) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_43) #17
  %33 = load <8 x i16>, ptr %tmp48, align 16, !tbaa !16
  store <8 x i16> %33, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb51:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_52) #17
  %34 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call53 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %34) #18
  %coerce.dive54 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_vec_52, i32 0, i32 0
  store <8 x i16> %call53, ptr %coerce.dive54, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_55) #17
  %35 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_52, align 16, !tbaa !16
  %36 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_52, align 16, !tbaa !16
  %shuffle56 = shufflevector <8 x i16> %35, <8 x i16> %36, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  store <8 x i16> %shuffle56, ptr %simde_vdupq_laneq_u16_r_55, align 16, !tbaa !16
  %coerce.dive58 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_r_55, i32 0, i32 0
  %37 = load <8 x i16>, ptr %coerce.dive58, align 16
  %call59 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %37) #18
  store <8 x i16> %call59, ptr %tmp57, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_55) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_52) #17
  %38 = load <8 x i16>, ptr %tmp57, align 16, !tbaa !16
  store <8 x i16> %38, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb60:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_61) #17
  %39 = load <8 x i16>, ptr %vec, align 16, !tbaa !16
  %call62 = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %39) #18
  %coerce.dive63 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_vec_61, i32 0, i32 0
  store <8 x i16> %call62, ptr %coerce.dive63, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_64) #17
  %40 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_61, align 16, !tbaa !16
  %41 = load <8 x i16>, ptr %simde_vdupq_laneq_u16_vec_61, align 16, !tbaa !16
  %shuffle65 = shufflevector <8 x i16> %40, <8 x i16> %41, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  store <8 x i16> %shuffle65, ptr %simde_vdupq_laneq_u16_r_64, align 16, !tbaa !16
  %coerce.dive67 = getelementptr inbounds %union.simde_uint16x8_private, ptr %simde_vdupq_laneq_u16_r_64, i32 0, i32 0
  %42 = load <8 x i16>, ptr %coerce.dive67, align 16
  %call68 = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %42) #18
  store <8 x i16> %call68, ptr %tmp66, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_r_64) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u16_vec_61) #17
  %43 = load <8 x i16>, ptr %tmp66, align 16, !tbaa !16
  store <8 x i16> %43, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb60, %sw.bb51, %sw.bb42, %sw.bb33, %sw.bb24, %sw.bb15, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body70

do.body70:                                        ; preds = %do.end
  %44 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  %45 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx71 = getelementptr inbounds [8 x %struct.anon.37], ptr %test_vec, i64 0, i64 %45
  %r72 = getelementptr inbounds %struct.anon.37, ptr %arrayidx71, i32 0, i32 2
  %arraydecay73 = getelementptr inbounds [8 x i16], ptr %r72, i64 0, i64 0
  %call74 = call <8 x i16> @simde_vld1q_u16(ptr noundef %arraydecay73)
  %call75 = call i32 @simde_test_arm_neon_assert_equal_u16x8_(<8 x i16> noundef %44, <8 x i16> noundef %call74, ptr noundef @.str.43, i32 noundef 2361, ptr noundef @.str.44, ptr noundef @.str.67)
  %tobool = icmp ne i32 %call75, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body70
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body70
  br label %do.cond76

do.cond76:                                        ; preds = %if.end
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup79 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %46 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %46, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup79:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest80 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest80, label %cleanup81 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup79
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %for.end, %cleanup79
  call void @llvm.lifetime.end.p0(i64 288, ptr %test_vec) #17
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_u32() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.38], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <4 x i32>, align 16
  %r = alloca <4 x i32>, align 16
  %simde_vdupq_laneq_u32_vec_ = alloca %union.simde_uint32x4_private, align 16
  %simde_vdupq_laneq_u32_r_ = alloca %union.simde_uint32x4_private, align 16
  %tmp = alloca <4 x i32>, align 16
  %simde_vdupq_laneq_u32_vec_7 = alloca %union.simde_uint32x4_private, align 16
  %simde_vdupq_laneq_u32_r_10 = alloca %union.simde_uint32x4_private, align 16
  %tmp12 = alloca <4 x i32>, align 16
  %simde_vdupq_laneq_u32_vec_16 = alloca %union.simde_uint32x4_private, align 16
  %simde_vdupq_laneq_u32_r_19 = alloca %union.simde_uint32x4_private, align 16
  %tmp21 = alloca <4 x i32>, align 16
  %simde_vdupq_laneq_u32_vec_25 = alloca %union.simde_uint32x4_private, align 16
  %simde_vdupq_laneq_u32_r_28 = alloca %union.simde_uint32x4_private, align 16
  %tmp30 = alloca <4 x i32>, align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_u32.test_vec, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup43

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.38], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.38, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %vec1, i64 0, i64 0
  %call = call <4 x i32> @simde_vld1q_u32(ptr noundef %arraydecay)
  store <4 x i32> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.38], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.38, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 4, !tbaa !19
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb15
    i32 3, label %sw.bb24
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u32_vec_) #17
  %4 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call3 = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_laneq_u32_vec_, i32 0, i32 0
  store <4 x i32> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u32_r_) #17
  %5 = load <4 x i32>, ptr %simde_vdupq_laneq_u32_vec_, align 16, !tbaa !16
  %6 = load <4 x i32>, ptr %simde_vdupq_laneq_u32_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <4 x i32> %5, <4 x i32> %6, <4 x i32> zeroinitializer
  store <4 x i32> %shuffle, ptr %simde_vdupq_laneq_u32_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_laneq_u32_r_, i32 0, i32 0
  %7 = load <4 x i32>, ptr %coerce.dive4, align 16
  %call5 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %7) #18
  store <4 x i32> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u32_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u32_vec_) #17
  %8 = load <4 x i32>, ptr %tmp, align 16, !tbaa !16
  store <4 x i32> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u32_vec_7) #17
  %9 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call8 = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_laneq_u32_vec_7, i32 0, i32 0
  store <4 x i32> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u32_r_10) #17
  %10 = load <4 x i32>, ptr %simde_vdupq_laneq_u32_vec_7, align 16, !tbaa !16
  %11 = load <4 x i32>, ptr %simde_vdupq_laneq_u32_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <4 x i32> %10, <4 x i32> %11, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i32> %shuffle11, ptr %simde_vdupq_laneq_u32_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_laneq_u32_r_10, i32 0, i32 0
  %12 = load <4 x i32>, ptr %coerce.dive13, align 16
  %call14 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %12) #18
  store <4 x i32> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u32_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u32_vec_7) #17
  %13 = load <4 x i32>, ptr %tmp12, align 16, !tbaa !16
  store <4 x i32> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u32_vec_16) #17
  %14 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call17 = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %14) #18
  %coerce.dive18 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_laneq_u32_vec_16, i32 0, i32 0
  store <4 x i32> %call17, ptr %coerce.dive18, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u32_r_19) #17
  %15 = load <4 x i32>, ptr %simde_vdupq_laneq_u32_vec_16, align 16, !tbaa !16
  %16 = load <4 x i32>, ptr %simde_vdupq_laneq_u32_vec_16, align 16, !tbaa !16
  %shuffle20 = shufflevector <4 x i32> %15, <4 x i32> %16, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  store <4 x i32> %shuffle20, ptr %simde_vdupq_laneq_u32_r_19, align 16, !tbaa !16
  %coerce.dive22 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_laneq_u32_r_19, i32 0, i32 0
  %17 = load <4 x i32>, ptr %coerce.dive22, align 16
  %call23 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %17) #18
  store <4 x i32> %call23, ptr %tmp21, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u32_r_19) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u32_vec_16) #17
  %18 = load <4 x i32>, ptr %tmp21, align 16, !tbaa !16
  store <4 x i32> %18, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u32_vec_25) #17
  %19 = load <4 x i32>, ptr %vec, align 16, !tbaa !16
  %call26 = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %19) #18
  %coerce.dive27 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_laneq_u32_vec_25, i32 0, i32 0
  store <4 x i32> %call26, ptr %coerce.dive27, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u32_r_28) #17
  %20 = load <4 x i32>, ptr %simde_vdupq_laneq_u32_vec_25, align 16, !tbaa !16
  %21 = load <4 x i32>, ptr %simde_vdupq_laneq_u32_vec_25, align 16, !tbaa !16
  %shuffle29 = shufflevector <4 x i32> %20, <4 x i32> %21, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  store <4 x i32> %shuffle29, ptr %simde_vdupq_laneq_u32_r_28, align 16, !tbaa !16
  %coerce.dive31 = getelementptr inbounds %union.simde_uint32x4_private, ptr %simde_vdupq_laneq_u32_r_28, i32 0, i32 0
  %22 = load <4 x i32>, ptr %coerce.dive31, align 16
  %call32 = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %22) #18
  store <4 x i32> %call32, ptr %tmp30, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u32_r_28) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u32_vec_25) #17
  %23 = load <4 x i32>, ptr %tmp30, align 16, !tbaa !16
  store <4 x i32> %23, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb15, %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body34

do.body34:                                        ; preds = %do.end
  %24 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  %25 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx35 = getelementptr inbounds [8 x %struct.anon.38], ptr %test_vec, i64 0, i64 %25
  %r36 = getelementptr inbounds %struct.anon.38, ptr %arrayidx35, i32 0, i32 2
  %arraydecay37 = getelementptr inbounds [4 x i32], ptr %r36, i64 0, i64 0
  %call38 = call <4 x i32> @simde_vld1q_u32(ptr noundef %arraydecay37)
  %call39 = call i32 @simde_test_arm_neon_assert_equal_u32x4_(<4 x i32> noundef %24, <4 x i32> noundef %call38, ptr noundef @.str.43, i32 noundef 2423, ptr noundef @.str.44, ptr noundef @.str.68)
  %tobool = icmp ne i32 %call39, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body34
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body34
  br label %do.cond40

do.cond40:                                        ; preds = %if.end
  br label %do.end41

do.end41:                                         ; preds = %do.cond40
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup43 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %26 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %26, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup43:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest44 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest44, label %cleanup45 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup43
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %for.end, %cleanup43
  call void @llvm.lifetime.end.p0(i64 288, ptr %test_vec) #17
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_vdupq_laneq_u64() #4 {
entry:
  %retval = alloca i32, align 4
  %test_vec = alloca [8 x %struct.anon.39], align 16
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %vec = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  %simde_vdupq_laneq_u64_vec_ = alloca %union.simde_uint64x2_private, align 16
  %simde_vdupq_laneq_u64_r_ = alloca %union.simde_uint64x2_private, align 16
  %tmp = alloca <2 x i64>, align 16
  %simde_vdupq_laneq_u64_vec_7 = alloca %union.simde_uint64x2_private, align 16
  %simde_vdupq_laneq_u64_r_10 = alloca %union.simde_uint64x2_private, align 16
  %tmp12 = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 320, ptr %test_vec) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %test_vec, ptr align 16 @__const.test_simde_vdupq_laneq_u64.test_vec, i64 320, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup25

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %vec) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.39], ptr %test_vec, i64 0, i64 %1
  %vec1 = getelementptr inbounds %struct.anon.39, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %vec1, i64 0, i64 0
  %call = call <2 x i64> @simde_vld1q_u64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %vec, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.39], ptr %test_vec, i64 0, i64 %2
  %lane = getelementptr inbounds %struct.anon.39, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %lane, align 8, !tbaa !21
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u64_vec_) #17
  %4 = load <2 x i64>, ptr %vec, align 16, !tbaa !16
  %call3 = call <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %4) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %simde_vdupq_laneq_u64_vec_, i32 0, i32 0
  store <2 x i64> %call3, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u64_r_) #17
  %5 = load <2 x i64>, ptr %simde_vdupq_laneq_u64_vec_, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %simde_vdupq_laneq_u64_vec_, align 16, !tbaa !16
  %shuffle = shufflevector <2 x i64> %5, <2 x i64> %6, <2 x i32> zeroinitializer
  store <2 x i64> %shuffle, ptr %simde_vdupq_laneq_u64_r_, align 16, !tbaa !16
  %coerce.dive4 = getelementptr inbounds %union.simde_uint64x2_private, ptr %simde_vdupq_laneq_u64_r_, i32 0, i32 0
  %7 = load <2 x i64>, ptr %coerce.dive4, align 16
  %call5 = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %7) #18
  store <2 x i64> %call5, ptr %tmp, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u64_r_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u64_vec_) #17
  %8 = load <2 x i64>, ptr %tmp, align 16, !tbaa !16
  store <2 x i64> %8, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u64_vec_7) #17
  %9 = load <2 x i64>, ptr %vec, align 16, !tbaa !16
  %call8 = call <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %9) #18
  %coerce.dive9 = getelementptr inbounds %union.simde_uint64x2_private, ptr %simde_vdupq_laneq_u64_vec_7, i32 0, i32 0
  store <2 x i64> %call8, ptr %coerce.dive9, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %simde_vdupq_laneq_u64_r_10) #17
  %10 = load <2 x i64>, ptr %simde_vdupq_laneq_u64_vec_7, align 16, !tbaa !16
  %11 = load <2 x i64>, ptr %simde_vdupq_laneq_u64_vec_7, align 16, !tbaa !16
  %shuffle11 = shufflevector <2 x i64> %10, <2 x i64> %11, <2 x i32> <i32 1, i32 1>
  store <2 x i64> %shuffle11, ptr %simde_vdupq_laneq_u64_r_10, align 16, !tbaa !16
  %coerce.dive13 = getelementptr inbounds %union.simde_uint64x2_private, ptr %simde_vdupq_laneq_u64_r_10, i32 0, i32 0
  %12 = load <2 x i64>, ptr %coerce.dive13, align 16
  %call14 = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %12) #18
  store <2 x i64> %call14, ptr %tmp12, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u64_r_10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %simde_vdupq_laneq_u64_vec_7) #17
  %13 = load <2 x i64>, ptr %tmp12, align 16, !tbaa !16
  store <2 x i64> %13, ptr %r, align 16, !tbaa !16
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  unreachable

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body16

do.body16:                                        ; preds = %do.end
  %14 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %15 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx17 = getelementptr inbounds [8 x %struct.anon.39], ptr %test_vec, i64 0, i64 %15
  %r18 = getelementptr inbounds %struct.anon.39, ptr %arrayidx17, i32 0, i32 2
  %arraydecay19 = getelementptr inbounds [2 x i64], ptr %r18, i64 0, i64 0
  %call20 = call <2 x i64> @simde_vld1q_u64(ptr noundef %arraydecay19)
  %call21 = call i32 @simde_test_arm_neon_assert_equal_u64x2_(<2 x i64> noundef %14, <2 x i64> noundef %call20, ptr noundef @.str.43, i32 noundef 2485, ptr noundef @.str.44, ptr noundef @.str.69)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body16
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %do.body16
  br label %do.cond22

do.cond22:                                        ; preds = %if.end
  br label %do.end23

do.end23:                                         ; preds = %do.cond22
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %vec) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %16, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup25:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest26 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest26, label %cleanup27 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup25
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %for.end, %cleanup25
  call void @llvm.lifetime.end.p0(i64 320, ptr %test_vec) #17
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_f32(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <2 x float>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float32x2_private, align 8
  %coerce = alloca <2 x float>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_float32x2_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <2 x float>, ptr %coerce, align 8, !tbaa !16
  store <2 x float> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
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
define internal double @simde_float32x2_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <2 x float>, align 8
  %value = alloca %union.simde_float32x2_private, align 8
  %r = alloca <2 x float>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x float>, ptr %r, align 8, !tbaa !16
  store <2 x float> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_f32(float noundef %value) #6 {
entry:
  %retval = alloca <2 x float>, align 8
  %value.addr = alloca float, align 4
  %r_ = alloca %union.simde_float32x2_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <2 x float>, align 8
  store float %value, ptr %value.addr, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !27
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !27
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !27
  %2 = load float, ptr %value.addr, align 4, !tbaa !25, !llvm.access.group !27
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !27
  %4 = load <2 x float>, ptr %r_, align 8, !llvm.access.group !27
  %vecins = insertelement <2 x float> %4, float %2, i64 %3
  store <2 x float> %vecins, ptr %r_, align 8, !llvm.access.group !27
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !27
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !27
  br label %omp.inner.for.cond, !llvm.loop !28

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_float32x2_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <2 x float>, ptr %coerce, align 8, !tbaa !16
  store <2 x float> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_f32x2_(double noundef %a.coerce, double noundef %b.coerce, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a = alloca <2 x float>, align 8
  %b = alloca <2 x float>, align 8
  %a.addr = alloca <2 x float>, align 8
  %b.addr = alloca <2 x float>, align 8
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x float], align 4
  %b_ = alloca [2 x float], align 4
  %coerce = alloca <2 x float>, align 8
  %coerce4 = alloca <2 x float>, align 8
  store double %a.coerce, ptr %a, align 8
  %a1 = load <2 x float>, ptr %a, align 8, !tbaa !16
  store double %b.coerce, ptr %b, align 8
  %b2 = load <2 x float>, ptr %b, align 8, !tbaa !16
  store <2 x float> %a1, ptr %a.addr, align 8, !tbaa !16
  store <2 x float> %b2, ptr %b.addr, align 8, !tbaa !16
  store float %slop, ptr %slop.addr, align 4, !tbaa !25
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
  %arraydecay = getelementptr inbounds [2 x float], ptr %a_, i64 0, i64 0
  %0 = load <2 x float>, ptr %a.addr, align 8, !tbaa !16
  store <2 x float> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_f32(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [2 x float], ptr %b_, i64 0, i64 0
  %2 = load <2 x float>, ptr %b.addr, align 8, !tbaa !16
  store <2 x float> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_f32(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [2 x float], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x float], ptr %b_, i64 0, i64 0
  %4 = load float, ptr %slop.addr, align 4, !tbaa !25
  %5 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %6 = load i32, ptr %line.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf32_(i64 noundef 2, ptr noundef %arraydecay5, ptr noundef %arraydecay6, float noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal float @simde_test_f32_precision_to_slop(i32 noundef %precision) #0 {
entry:
  %precision.addr = alloca i32, align 4
  store i32 %precision, ptr %precision.addr, align 4, !tbaa !5
  %0 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 2147483647
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to float
  %fneg = fneg float %conv2
  %call = call float @powf(float noundef 1.000000e+01, float noundef %fneg) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret float %cond
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_f32(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <2 x float>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x float>, align 8
  %val_ = alloca %union.simde_float32x2_private, align 8
  %coerce = alloca <2 x float>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <2 x float>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x float> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <2 x float>, ptr %val.addr, align 8, !tbaa !16
  store <2 x float> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_float32x2_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_float32x2_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vf32_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store float %slop, ptr %slop.addr, align 4, !tbaa !25
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  %arrayidx = getelementptr inbounds float, ptr %4, i64 %5
  %6 = load float, ptr %arrayidx, align 4, !tbaa !25
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds float, ptr %7, i64 %8
  %9 = load float, ptr %arrayidx1, align 4, !tbaa !25
  %10 = load float, ptr %slop.addr, align 4, !tbaa !25
  %call = call i32 @simde_test_equal_f32(float noundef %6, float noundef %9, float noundef %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %12 = load i32, ptr %line.addr, align 4, !tbaa !5
  %13 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %14 = load i64, ptr %i, align 8, !tbaa !11
  %15 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds float, ptr %17, i64 %18
  %19 = load float, ptr %arrayidx5, align 4, !tbaa !25
  %conv6 = fpext float %19 to double
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds float, ptr %20, i64 %21
  %22 = load float, ptr %arrayidx7, align 4, !tbaa !25
  %conv8 = fpext float %22 to double
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.46, ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, double noundef %conv6, double noundef %conv8)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %24 = load i32, ptr %retval, align 4
  ret i32 %24

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_equal_f32(float noundef %a, float noundef %b, float noundef %slop) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %slop.addr = alloca float, align 4
  %lo = alloca float, align 4
  %hi = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !25
  store float %b, ptr %b.addr, align 4, !tbaa !25
  store float %slop, ptr %slop.addr, align 4, !tbaa !25
  %0 = load float, ptr %a.addr, align 4, !tbaa !25
  %1 = call i1 @llvm.is.fpclass.f32(float %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !25
  %3 = call i1 @llvm.is.fpclass.f32(float %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load float, ptr %a.addr, align 4, !tbaa !25
  %6 = call i1 @llvm.is.fpclass.f32(float %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load float, ptr %a.addr, align 4, !tbaa !25
  %8 = load float, ptr %b.addr, align 4, !tbaa !25
  %cmp = fcmp olt float %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load float, ptr %a.addr, align 4, !tbaa !25
  %10 = load float, ptr %b.addr, align 4, !tbaa !25
  %cmp2 = fcmp ogt float %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load float, ptr %slop.addr, align 4, !tbaa !25
  %cmp4 = fcmp oeq float %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 4) #17
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #17
  %13 = load float, ptr %a.addr, align 4, !tbaa !25
  %14 = load float, ptr %slop.addr, align 4, !tbaa !25
  %sub = fsub float %13, %14
  store float %sub, ptr %lo, align 4, !tbaa !25
  %15 = load float, ptr %lo, align 4, !tbaa !25
  %16 = load float, ptr %a.addr, align 4, !tbaa !25
  %cmp9 = fcmp oeq float %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext13 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else8
  %17 = load float, ptr %a.addr, align 4, !tbaa !25
  %call16 = call float @nextafterf(float noundef %17, float noundef 0xFFF0000000000000) #17
  store float %call16, ptr %lo, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #17
  %18 = load float, ptr %a.addr, align 4, !tbaa !25
  %19 = load float, ptr %slop.addr, align 4, !tbaa !25
  %add = fadd float %18, %19
  store float %add, ptr %hi, align 4, !tbaa !25
  %20 = load float, ptr %hi, align 4, !tbaa !25
  %21 = load float, ptr %a.addr, align 4, !tbaa !25
  %cmp17 = fcmp oeq float %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %22 = load float, ptr %a.addr, align 4, !tbaa !25
  %call27 = call float @nextafterf(float noundef %22, float noundef 0x7FF0000000000000) #17
  store float %call27, ptr %hi, align 4, !tbaa !25
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %23 = load float, ptr %b.addr, align 4, !tbaa !25
  %24 = load float, ptr %lo, align 4, !tbaa !25
  %cmp29 = fcmp oge float %23, %24
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  %25 = load float, ptr %b.addr, align 4, !tbaa !25
  %26 = load float, ptr %hi, align 4, !tbaa !25
  %cmp31 = fcmp ole float %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %27 = phi i1 [ false, %if.end28 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #17
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #17
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
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #9

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: nounwind
declare float @nextafterf(float noundef, float noundef) #10

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare float @powf(float noundef, float noundef) #10

; Function Attrs: alwaysinline nounwind uwtable
define internal <1 x double> @simde_vld1_f64(ptr noundef %ptr) #11 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float64x1_private, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %0, i64 8, i1 false)
  %call = call <1 x double> @simde_float64x1_from_private(ptr noundef byval(%union.simde_float64x1_private) align 8 %r_) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  ret <1 x double> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <1 x double> @simde_vdup_n_f64(double noundef %value) #11 {
entry:
  %value.addr = alloca double, align 8
  %r_ = alloca %union.simde_float64x1_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %value, ptr %value.addr, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !33
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !33
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !33
  %2 = load double, ptr %value.addr, align 8, !tbaa !31, !llvm.access.group !33
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !33
  %4 = load <1 x double>, ptr %r_, align 8, !llvm.access.group !33
  %vecins = insertelement <1 x double> %4, double %2, i64 %3
  store <1 x double> %vecins, ptr %r_, align 8, !llvm.access.group !33
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !33
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !33
  br label %omp.inner.for.cond, !llvm.loop !34

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 1, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %call = call <1 x double> @simde_float64x1_from_private(ptr noundef byval(%union.simde_float64x1_private) align 8 %r_) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  ret <1 x double> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdupd_lane_f64(ptr noundef byval(<1 x double>) align 8 %0, i32 noundef %lane) #6 {
entry:
  %vec.addr = alloca <1 x double>, align 8
  %lane.addr = alloca i32, align 4
  %tmp = alloca %union.simde_float64x1_private, align 8
  %indirect-arg-temp = alloca <1 x double>, align 8
  %vec = load <1 x double>, ptr %0, align 8, !tbaa !16
  store <1 x double> %vec, ptr %vec.addr, align 8, !tbaa !16
  store i32 %lane, ptr %lane.addr, align 4, !tbaa !5
  %1 = load <1 x double>, ptr %vec.addr, align 8, !tbaa !16
  store <1 x double> %1, ptr %indirect-arg-temp, align 8, !tbaa !16
  call void @simde_float64x1_to_private(ptr sret(%union.simde_float64x1_private) align 8 %tmp, ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp) #19
  %2 = load <1 x double>, ptr %tmp, align 8, !tbaa !16
  %3 = load i32, ptr %lane.addr, align 4, !tbaa !5
  %vecext = extractelement <1 x double> %2, i32 %3
  ret double %vecext
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_f64x1_(ptr noundef byval(<1 x double>) align 8 %0, ptr noundef byval(<1 x double>) align 8 %1, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <1 x double>, align 8
  %b.addr = alloca <1 x double>, align 8
  %slop.addr = alloca double, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [1 x double], align 8
  %b_ = alloca [1 x double], align 8
  %indirect-arg-temp = alloca <1 x double>, align 8
  %indirect-arg-temp2 = alloca <1 x double>, align 8
  %a = load <1 x double>, ptr %0, align 8, !tbaa !16
  %b = load <1 x double>, ptr %1, align 8, !tbaa !16
  store <1 x double> %a, ptr %a.addr, align 8, !tbaa !16
  store <1 x double> %b, ptr %b.addr, align 8, !tbaa !16
  store double %slop, ptr %slop.addr, align 8, !tbaa !31
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
  %arraydecay = getelementptr inbounds [1 x double], ptr %a_, i64 0, i64 0
  %2 = load <1 x double>, ptr %a.addr, align 8, !tbaa !16
  store <1 x double> %2, ptr %indirect-arg-temp, align 8, !tbaa !16
  call void @simde_vst1_f64(ptr noundef %arraydecay, ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp)
  %arraydecay1 = getelementptr inbounds [1 x double], ptr %b_, i64 0, i64 0
  %3 = load <1 x double>, ptr %b.addr, align 8, !tbaa !16
  store <1 x double> %3, ptr %indirect-arg-temp2, align 8, !tbaa !16
  call void @simde_vst1_f64(ptr noundef %arraydecay1, ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp2)
  %arraydecay3 = getelementptr inbounds [1 x double], ptr %a_, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [1 x double], ptr %b_, i64 0, i64 0
  %4 = load double, ptr %slop.addr, align 8, !tbaa !31
  %5 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %6 = load i32, ptr %line.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf64_(i64 noundef 1, ptr noundef %arraydecay3, ptr noundef %arraydecay4, double noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal double @simde_test_f64_precision_to_slop(i32 noundef %precision) #0 {
entry:
  %precision.addr = alloca i32, align 4
  store i32 %precision, ptr %precision.addr, align 4, !tbaa !5
  %0 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 2147483647
  %lnot = xor i1 %cmp, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %precision.addr, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %fneg = fneg double %conv2
  %call = call double @pow(double noundef 1.000000e+01, double noundef %fneg) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret double %cond
}

; Function Attrs: alwaysinline nounwind willreturn memory(argmem: readwrite) uwtable
define internal <1 x double> @simde_float64x1_from_private(ptr noundef byval(%union.simde_float64x1_private) align 8 %value) #12 {
entry:
  %r = alloca <1 x double>, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <1 x double>, ptr %r, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  ret <1 x double> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @simde_float64x1_to_private(ptr noalias sret(%union.simde_float64x1_private) align 8 %agg.result, ptr noundef byval(<1 x double>) align 8 %0) #13 {
entry:
  %value.addr = alloca <1 x double>, align 8
  %value = load <1 x double>, ptr %0, align 8, !tbaa !16
  store <1 x double> %value, ptr %value.addr, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.result, ptr align 8 %value.addr, i64 8, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_f64(ptr noundef %ptr, ptr noundef byval(<1 x double>) align 8 %0) #6 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <1 x double>, align 8
  %val_ = alloca %union.simde_float64x1_private, align 8
  %indirect-arg-temp = alloca <1 x double>, align 8
  %val = load <1 x double>, ptr %0, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <1 x double> %val, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %1 = load <1 x double>, ptr %val.addr, align 8, !tbaa !16
  store <1 x double> %1, ptr %indirect-arg-temp, align 8, !tbaa !16
  call void @simde_float64x1_to_private(ptr sret(%union.simde_float64x1_private) align 8 %val_, ptr noundef byval(<1 x double>) align 8 %indirect-arg-temp) #19
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vf64_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %vec_len.addr = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %slop.addr = alloca double, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %vec_len, ptr %vec_len.addr, align 8, !tbaa !11
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  store ptr %b, ptr %b.addr, align 8, !tbaa !9
  store double %slop, ptr %slop.addr, align 8, !tbaa !31
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %5
  %6 = load double, ptr %arrayidx, align 8, !tbaa !31
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds double, ptr %7, i64 %8
  %9 = load double, ptr %arrayidx1, align 8, !tbaa !31
  %10 = load double, ptr %slop.addr, align 8, !tbaa !31
  %call = call i32 @simde_test_equal_f64(double noundef %6, double noundef %9, double noundef %10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot3 = xor i1 %lnot2, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool4 = icmp ne i64 %expval, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %12 = load i32, ptr %line.addr, align 4, !tbaa !5
  %13 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %14 = load i64, ptr %i, align 8, !tbaa !11
  %15 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %16 = load i64, ptr %i, align 8, !tbaa !11
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !9
  %18 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx5 = getelementptr inbounds double, ptr %17, i64 %18
  %19 = load double, ptr %arrayidx5, align 8, !tbaa !31
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds double, ptr %20, i64 %21
  %22 = load double, ptr %arrayidx6, align 8, !tbaa !31
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.46, ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, double noundef %19, double noundef %22)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %24 = load i32, ptr %retval, align 4
  ret i32 %24

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_equal_f64(double noundef %a, double noundef %b, double noundef %slop) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %slop.addr = alloca double, align 8
  %lo = alloca double, align 8
  %hi = alloca double, align 8
  store double %a, ptr %a.addr, align 8, !tbaa !31
  store double %b, ptr %b.addr, align 8, !tbaa !31
  store double %slop, ptr %slop.addr, align 8, !tbaa !31
  %0 = load double, ptr %a.addr, align 8, !tbaa !31
  %1 = call i1 @llvm.is.fpclass.f64(double %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, ptr %b.addr, align 8, !tbaa !31
  %3 = call i1 @llvm.is.fpclass.f64(double %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load double, ptr %a.addr, align 8, !tbaa !31
  %6 = call i1 @llvm.is.fpclass.f64(double %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load double, ptr %a.addr, align 8, !tbaa !31
  %8 = load double, ptr %b.addr, align 8, !tbaa !31
  %cmp = fcmp olt double %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load double, ptr %a.addr, align 8, !tbaa !31
  %10 = load double, ptr %b.addr, align 8, !tbaa !31
  %cmp2 = fcmp ogt double %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load double, ptr %slop.addr, align 8, !tbaa !31
  %cmp4 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 8) #17
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #17
  %13 = load double, ptr %a.addr, align 8, !tbaa !31
  %14 = load double, ptr %slop.addr, align 8, !tbaa !31
  %sub = fsub double %13, %14
  store double %sub, ptr %lo, align 8, !tbaa !31
  %15 = load double, ptr %lo, align 8, !tbaa !31
  %16 = load double, ptr %a.addr, align 8, !tbaa !31
  %cmp9 = fcmp oeq double %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext13 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else8
  %17 = load double, ptr %a.addr, align 8, !tbaa !31
  %call16 = call double @nextafter(double noundef %17, double noundef 0xFFF0000000000000) #17
  store double %call16, ptr %lo, align 8, !tbaa !31
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #17
  %18 = load double, ptr %a.addr, align 8, !tbaa !31
  %19 = load double, ptr %slop.addr, align 8, !tbaa !31
  %add = fadd double %18, %19
  store double %add, ptr %hi, align 8, !tbaa !31
  %20 = load double, ptr %hi, align 8, !tbaa !31
  %21 = load double, ptr %a.addr, align 8, !tbaa !31
  %cmp17 = fcmp oeq double %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %22 = load double, ptr %a.addr, align 8, !tbaa !31
  %call27 = call double @nextafter(double noundef %22, double noundef 0x7FF0000000000000) #17
  store double %call27, ptr %hi, align 8, !tbaa !31
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %23 = load double, ptr %b.addr, align 8, !tbaa !31
  %24 = load double, ptr %lo, align 8, !tbaa !31
  %cmp29 = fcmp oge double %23, %24
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  %25 = load double, ptr %b.addr, align 8, !tbaa !31
  %26 = load double, ptr %hi, align 8, !tbaa !31
  %cmp31 = fcmp ole double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %27 = phi i1 [ false, %if.end28 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #17
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #9

; Function Attrs: nounwind
declare double @nextafter(double noundef, double noundef) #10

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #10

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s8(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int8x8_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
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
define internal double @simde_int8x8_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_int8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_s8(i8 noundef signext %value) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value.addr = alloca i8, align 1
  %r_ = alloca %union.simde_int8x8_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <8 x i8>, align 8
  store i8 %value, ptr %value.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !36
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !36
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !36
  %2 = load i8, ptr %value.addr, align 1, !tbaa !16, !llvm.access.group !36
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !36
  %4 = load <8 x i8>, ptr %r_, align 8, !llvm.access.group !36
  %vecins = insertelement <8 x i8> %4, i8 %2, i64 %3
  store <8 x i8> %vecins, ptr %r_, align 8, !llvm.access.group !36
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !36
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !36
  br label %omp.inner.for.cond, !llvm.loop !37

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int8x8_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i8x8_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
  %arraydecay = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %0 = load <8 x i8>, ptr %a.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_s8(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %2 = load <8 x i8>, ptr %b.addr, align 8, !tbaa !16
  store <8 x i8> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_s8(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [8 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi8_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_s8(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i8>, align 8
  %val_ = alloca %union.simde_int8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <8 x i8>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i8> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <8 x i8>, ptr %val.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int8x8_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_int8x8_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi8_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  %conv = sext i8 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx1, align 1, !tbaa !16
  %conv2 = sext i8 %9 to i32
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
  %conv8 = sext i8 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 %20
  %21 = load i8, ptr %arrayidx9, align 1, !tbaa !16
  %conv10 = sext i8 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.49, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
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

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s16(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 2 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int16x4_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
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
define internal double @simde_int16x4_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value = alloca %union.simde_int16x4_private, align 8
  %r = alloca <4 x i16>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  store <4 x i16> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_s16(i16 noundef signext %value) #6 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value.addr = alloca i16, align 2
  %r_ = alloca %union.simde_int16x4_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <4 x i16>, align 8
  store i16 %value, ptr %value.addr, align 2, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !41
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !41
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !41
  %2 = load i16, ptr %value.addr, align 2, !tbaa !39, !llvm.access.group !41
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !41
  %4 = load <4 x i16>, ptr %r_, align 8, !llvm.access.group !41
  %vecins = insertelement <4 x i16> %4, i16 %2, i64 %3
  store <4 x i16> %vecins, ptr %r_, align 8, !llvm.access.group !41
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !41
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !41
  br label %omp.inner.for.cond, !llvm.loop !42

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int16x4_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i16x4_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
  %arraydecay = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %0 = load <4 x i16>, ptr %a.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_s16(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %2 = load <4 x i16>, ptr %b.addr, align 8, !tbaa !16
  store <4 x i16> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_s16(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [4 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i16], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_s16(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i16>, align 8
  %val_ = alloca %union.simde_int16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <4 x i16>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i16> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <4 x i16>, ptr %val.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int16x4_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_int16x4_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi16_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !39
  %conv = sext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !39
  %conv2 = sext i16 %9 to i32
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
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !39
  %conv8 = sext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !39
  %conv10 = sext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.49, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
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

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s32(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int32x2_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
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

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int32x2_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value = alloca %union.simde_int32x2_private, align 8
  %r = alloca <2 x i32>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  store <2 x i32> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_s32(i32 noundef %value) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int32x2_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <2 x i32>, align 8
  store i32 %value, ptr %value.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !44
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !44
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %2 = load i32, ptr %value.addr, align 4, !tbaa !5, !llvm.access.group !44
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %4 = load <2 x i32>, ptr %r_, align 8, !llvm.access.group !44
  %vecins = insertelement <2 x i32> %4, i32 %2, i64 %3
  store <2 x i32> %vecins, ptr %r_, align 8, !llvm.access.group !44
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !44
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !44
  br label %omp.inner.for.cond, !llvm.loop !45

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int32x2_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i32x2_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
  %arraydecay = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %0 = load <2 x i32>, ptr %a.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_s32(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %2 = load <2 x i32>, ptr %b.addr, align 8, !tbaa !16
  store <2 x i32> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_s32(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [2 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [2 x i32], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 2, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_s32(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i32>, align 8
  %val_ = alloca %union.simde_int32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <2 x i32>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i32> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <2 x i32>, ptr %val.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int32x2_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_int32x2_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi32_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.49, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
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

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_s64(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <1 x i64>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int64x1_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_s64(i64 noundef %value) #6 {
entry:
  %retval = alloca <1 x i64>, align 8
  %value.addr = alloca i64, align 8
  %r_ = alloca %union.simde_int64x1_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <1 x i64>, align 8
  store i64 %value, ptr %value.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !47
  %2 = load i64, ptr %value.addr, align 8, !tbaa !11, !llvm.access.group !47
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !47
  %4 = load <1 x i64>, ptr %r_, align 8, !llvm.access.group !47
  %vecins = insertelement <1 x i64> %4, i64 %2, i64 %3
  store <1 x i64> %vecins, ptr %r_, align 8, !llvm.access.group !47
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  br label %omp.inner.for.cond, !llvm.loop !48

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 1, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_int64x1_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_vdupd_lane_s64(double noundef %vec.coerce, i32 noundef %lane) #6 {
entry:
  %vec = alloca <1 x i64>, align 8
  %vec.addr = alloca <1 x i64>, align 8
  %lane.addr = alloca i32, align 4
  %coerce = alloca <1 x i64>, align 8
  %coerce2 = alloca %union.simde_int64x1_private, align 8
  store double %vec.coerce, ptr %vec, align 8
  %vec1 = load <1 x i64>, ptr %vec, align 8, !tbaa !16
  store <1 x i64> %vec1, ptr %vec.addr, align 8, !tbaa !16
  store i32 %lane, ptr %lane.addr, align 4, !tbaa !5
  %0 = load <1 x i64>, ptr %vec.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int64x1_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %coerce2, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load <1 x i64>, ptr %coerce2, align 8, !tbaa !16
  %3 = load i32, ptr %lane.addr, align 4, !tbaa !5
  %vecext = extractelement <1 x i64> %2, i32 %3
  ret i64 %vecext
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i64x1_(double noundef %a.coerce, double noundef %b.coerce, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
  %arraydecay = getelementptr inbounds [1 x i64], ptr %a_, i64 0, i64 0
  %0 = load <1 x i64>, ptr %a.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  call void @simde_vst1_s64(ptr noundef %arraydecay, double noundef %1)
  %arraydecay3 = getelementptr inbounds [1 x i64], ptr %b_, i64 0, i64 0
  %2 = load <1 x i64>, ptr %b.addr, align 8, !tbaa !16
  store <1 x i64> %2, ptr %coerce4, align 8, !tbaa !16
  %3 = load double, ptr %coerce4, align 8
  call void @simde_vst1_s64(ptr noundef %arraydecay3, double noundef %3)
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [1 x i64], ptr %b_, i64 0, i64 0
  %4 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %5 = load i32, ptr %line.addr, align 4, !tbaa !5
  %6 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %7 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi64_(i64 noundef 1, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_int64x1_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <1 x i64>, align 8
  %value = alloca %union.simde_int64x1_private, align 8
  %r = alloca <1 x i64>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  store <1 x i64> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
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
define internal void @simde_vst1_s64(ptr noundef %ptr, double noundef %val.coerce) #6 {
entry:
  %val = alloca <1 x i64>, align 8
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <1 x i64>, align 8
  %val_ = alloca %union.simde_int64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  store double %val.coerce, ptr %val, align 8
  %val1 = load <1 x i64>, ptr %val, align 8, !tbaa !16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <1 x i64> %val1, ptr %val.addr, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <1 x i64>, ptr %val.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_int64x1_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_int64x1_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_vi64_(i64 noundef %vec_len, ptr noundef %a, ptr noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.53, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %18, i64 noundef %21)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
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

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u8(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %coerce = alloca <8 x i8>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 1 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint8x8_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
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

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint8x8_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value = alloca %union.simde_uint8x8_private, align 8
  %r = alloca <8 x i8>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <8 x i8>, ptr %r, align 8, !tbaa !16
  store <8 x i8> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_u8(i8 noundef zeroext %value) #6 {
entry:
  %retval = alloca <8 x i8>, align 8
  %value.addr = alloca i8, align 1
  %r_ = alloca %union.simde_uint8x8_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <8 x i8>, align 8
  store i8 %value, ptr %value.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !50
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !50
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !50
  %2 = load i8, ptr %value.addr, align 1, !tbaa !16, !llvm.access.group !50
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !50
  %4 = load <8 x i8>, ptr %r_, align 8, !llvm.access.group !50
  %vecins = insertelement <8 x i8> %4, i8 %2, i64 %3
  store <8 x i8> %vecins, ptr %r_, align 8, !llvm.access.group !50
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !50
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !50
  br label %omp.inner.for.cond, !llvm.loop !51

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint8x8_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <8 x i8>, ptr %coerce, align 8, !tbaa !16
  store <8 x i8> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_u8(ptr noundef %ptr, double noundef %val.coerce) #6 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <8 x i8>, ptr %val.addr, align 8, !tbaa !16
  store <8 x i8> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint8x8_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint8x8_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.55, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
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

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u16(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <4 x i16>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint16x4_private, align 8
  %coerce = alloca <4 x i16>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 2 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint16x4_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
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

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint16x4_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value = alloca %union.simde_uint16x4_private, align 8
  %r = alloca <4 x i16>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <4 x i16>, ptr %r, align 8, !tbaa !16
  store <4 x i16> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_u16(i16 noundef zeroext %value) #6 {
entry:
  %retval = alloca <4 x i16>, align 8
  %value.addr = alloca i16, align 2
  %r_ = alloca %union.simde_uint16x4_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <4 x i16>, align 8
  store i16 %value, ptr %value.addr, align 2, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !53
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !53
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !53
  %2 = load i16, ptr %value.addr, align 2, !tbaa !39, !llvm.access.group !53
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !53
  %4 = load <4 x i16>, ptr %r_, align 8, !llvm.access.group !53
  %vecins = insertelement <4 x i16> %4, i16 %2, i64 %3
  store <4 x i16> %vecins, ptr %r_, align 8, !llvm.access.group !53
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !53
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !53
  br label %omp.inner.for.cond, !llvm.loop !54

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint16x4_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <4 x i16>, ptr %coerce, align 8, !tbaa !16
  store <4 x i16> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_u16(ptr noundef %ptr, double noundef %val.coerce) #6 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <4 x i16>, ptr %val.addr, align 8, !tbaa !16
  store <4 x i16> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint16x4_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint16x4_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !39
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !39
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
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !39
  %conv8 = zext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !39
  %conv10 = zext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.55, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
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

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u32(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint32x2_private, align 8
  %coerce = alloca <2 x i32>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 4 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint32x2_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
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

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint32x2_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value = alloca %union.simde_uint32x2_private, align 8
  %r = alloca <2 x i32>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <2 x i32>, ptr %r, align 8, !tbaa !16
  store <2 x i32> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_u32(i32 noundef %value) #6 {
entry:
  %retval = alloca <2 x i32>, align 8
  %value.addr = alloca i32, align 4
  %r_ = alloca %union.simde_uint32x2_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <2 x i32>, align 8
  store i32 %value, ptr %value.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !56
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !56
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !56
  %2 = load i32, ptr %value.addr, align 4, !tbaa !5, !llvm.access.group !56
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !56
  %4 = load <2 x i32>, ptr %r_, align 8, !llvm.access.group !56
  %vecins = insertelement <2 x i32> %4, i32 %2, i64 %3
  store <2 x i32> %vecins, ptr %r_, align 8, !llvm.access.group !56
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !56
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !56
  br label %omp.inner.for.cond, !llvm.loop !57

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint32x2_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <2 x i32>, ptr %coerce, align 8, !tbaa !16
  store <2 x i32> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1_u32(ptr noundef %ptr, double noundef %val.coerce) #6 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <2 x i32>, ptr %val.addr, align 8, !tbaa !16
  store <2 x i32> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint32x2_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint32x2_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.55, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
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

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vld1_u64(ptr noundef %ptr) #6 {
entry:
  %retval = alloca <1 x i64>, align 8
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint64x1_private, align 8
  %coerce = alloca <1 x i64>, align 8
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r_, ptr align 8 %0, i64 8, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %r_, i32 0, i32 0
  %1 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint64x1_from_private(double %1) #18
  store double %call, ptr %coerce, align 8
  %2 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %2, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %3 = load double, ptr %retval, align 8
  ret double %3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal double @simde_vdup_n_u64(i64 noundef %value) #6 {
entry:
  %retval = alloca <1 x i64>, align 8
  %value.addr = alloca i64, align 8
  %r_ = alloca %union.simde_uint64x1_private, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %coerce = alloca <1 x i64>, align 8
  store i64 %value, ptr %value.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !59
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !59
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !59
  %2 = load i64, ptr %value.addr, align 8, !tbaa !11, !llvm.access.group !59
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !59
  %4 = load <1 x i64>, ptr %r_, align 8, !llvm.access.group !59
  %vecins = insertelement <1 x i64> %4, i64 %2, i64 %3
  store <1 x i64> %vecins, ptr %r_, align 8, !llvm.access.group !59
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !59
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !59
  br label %omp.inner.for.cond, !llvm.loop !60

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 1, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %r_, i32 0, i32 0
  %6 = load double, ptr %coerce.dive, align 8
  %call = call double @simde_uint64x1_from_private(double %6) #18
  store double %call, ptr %coerce, align 8
  %7 = load <1 x i64>, ptr %coerce, align 8, !tbaa !16
  store <1 x i64> %7, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r_) #17
  %8 = load double, ptr %retval, align 8
  ret double %8
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_vdupd_lane_u64(double noundef %vec.coerce, i32 noundef %lane) #6 {
entry:
  %vec = alloca <1 x i64>, align 8
  %vec.addr = alloca <1 x i64>, align 8
  %lane.addr = alloca i32, align 4
  %coerce = alloca <1 x i64>, align 8
  %coerce2 = alloca %union.simde_uint64x1_private, align 8
  store double %vec.coerce, ptr %vec, align 8
  %vec1 = load <1 x i64>, ptr %vec, align 8, !tbaa !16
  store <1 x i64> %vec1, ptr %vec.addr, align 8, !tbaa !16
  store i32 %lane, ptr %lane.addr, align 4, !tbaa !5
  %0 = load <1 x i64>, ptr %vec.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint64x1_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %coerce2, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load <1 x i64>, ptr %coerce2, align 8, !tbaa !16
  %3 = load i32, ptr %lane.addr, align 4, !tbaa !5
  %vecext = extractelement <1 x i64> %2, i32 %3
  ret i64 %vecext
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_) #17
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal double @simde_uint64x1_from_private(double %value.coerce) #7 {
entry:
  %retval = alloca <1 x i64>, align 8
  %value = alloca %union.simde_uint64x1_private, align 8
  %r = alloca <1 x i64>, align 8
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %value, i32 0, i32 0
  store double %value.coerce, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %r, ptr align 8 %value, i64 8, i1 false)
  %0 = load <1 x i64>, ptr %r, align 8, !tbaa !16
  store <1 x i64> %0, ptr %retval, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #17
  %1 = load double, ptr %retval, align 8
  ret double %1
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
define internal void @simde_vst1_u64(ptr noundef %ptr, double noundef %val.coerce) #6 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_) #17
  %0 = load <1 x i64>, ptr %val.addr, align 8, !tbaa !16
  store <1 x i64> %0, ptr %coerce, align 8, !tbaa !16
  %1 = load double, ptr %coerce, align 8
  %call = call double @simde_uint64x1_to_private(double noundef %1) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint64x1_private, ptr %val_, i32 0, i32 0
  store double %call, ptr %coerce.dive, align 8
  %2 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %val_, i64 8, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_) #17
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.59, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %18, i64 noundef %21)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
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

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_vld1q_f32(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x float>, ptr %coerce.dive, align 16
  %call = call <4 x float> @simde_float32x4_from_private(<4 x float> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <4 x float> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x float> @simde_float32x4_to_private(<4 x float> noundef %value) #15 {
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
define internal <4 x float> @simde_float32x4_from_private(<4 x float> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_float32x4_private, align 16
  %r = alloca <4 x float>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %value, i32 0, i32 0
  store <4 x float> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x float>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <4 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_vld1q_f64(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_float64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <2 x double> @simde_float64x2_from_private(<2 x double> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <2 x double> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x double> @simde_float64x2_to_private(<2 x double> noundef %value) #15 {
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
define internal <2 x double> @simde_float64x2_from_private(<2 x double> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_float64x2_private, align 16
  %r = alloca <2 x double>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %value, i32 0, i32 0
  store <2 x double> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x double>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <2 x double> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vld1q_s8(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive, align 16
  %call = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <16 x i8> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %value) #15 {
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
define internal <16 x i8> @simde_int8x16_from_private(<16 x i8> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_int8x16_private, align 16
  %r = alloca <16 x i8>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %value, i32 0, i32 0
  store <16 x i8> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vld1q_s16(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 2 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %r_, i32 0, i32 0
  %1 = load <8 x i16>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %value) #15 {
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
define internal <8 x i16> @simde_int16x8_from_private(<8 x i16> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_int16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %value, i32 0, i32 0
  store <8 x i16> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vld1q_s32(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x i32>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %value) #15 {
entry:
  %retval = alloca %union.simde_int32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <4 x i32>, ptr %coerce.dive, align 16
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_int32x4_from_private(<4 x i32> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_int32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %value, i32 0, i32 0
  store <4 x i32> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vld1q_s64(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_int64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x i64>, ptr %coerce.dive, align 16
  %call = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %value) #15 {
entry:
  %retval = alloca %union.simde_int64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x i64>, ptr %coerce.dive, align 16
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_int64x2_from_private(<2 x i64> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_int64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %value, i32 0, i32 0
  store <2 x i64> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vld1q_u8(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %r_, i32 0, i32 0
  %1 = load <16 x i8>, ptr %coerce.dive, align 16
  %call = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <16 x i8> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %value) #15 {
entry:
  %retval = alloca %union.simde_uint8x16_private, align 16
  %value.addr = alloca <16 x i8>, align 16
  store <16 x i8> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %retval, i32 0, i32 0
  %0 = load <16 x i8>, ptr %coerce.dive, align 16
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <16 x i8> @simde_uint8x16_from_private(<16 x i8> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_uint8x16_private, align 16
  %r = alloca <16 x i8>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %value, i32 0, i32 0
  store <16 x i8> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <16 x i8>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <16 x i8> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vld1q_u16(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 2 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %r_, i32 0, i32 0
  %1 = load <8 x i16>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <8 x i16> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %value) #15 {
entry:
  %retval = alloca %union.simde_uint16x8_private, align 16
  %value.addr = alloca <8 x i16>, align 16
  store <8 x i16> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %retval, i32 0, i32 0
  %0 = load <8 x i16>, ptr %coerce.dive, align 16
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <8 x i16> @simde_uint16x8_from_private(<8 x i16> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_uint16x8_private, align 16
  %r = alloca <8 x i16>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %value, i32 0, i32 0
  store <8 x i16> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <8 x i16>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <8 x i16> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vld1q_u32(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %r_, i32 0, i32 0
  %1 = load <4 x i32>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <4 x i32> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %value) #15 {
entry:
  %retval = alloca %union.simde_uint32x4_private, align 16
  %value.addr = alloca <4 x i32>, align 16
  store <4 x i32> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %retval, i32 0, i32 0
  %0 = load <4 x i32>, ptr %coerce.dive, align 16
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <4 x i32> @simde_uint32x4_from_private(<4 x i32> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_uint32x4_private, align 16
  %r = alloca <4 x i32>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %value, i32 0, i32 0
  store <4 x i32> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <4 x i32>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <4 x i32> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vld1q_u64(ptr noundef %ptr) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde_uint64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  %0 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %r_, i32 0, i32 0
  %1 = load <2 x i64>, ptr %coerce.dive, align 16
  %call = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %value) #15 {
entry:
  %retval = alloca %union.simde_uint64x2_private, align 16
  %value.addr = alloca <2 x i64>, align 16
  store <2 x i64> %value, ptr %value.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %value.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %retval, i32 0, i32 0
  %0 = load <2 x i64>, ptr %coerce.dive, align 16
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind willreturn memory(none) uwtable
define internal <2 x i64> @simde_uint64x2_from_private(<2 x i64> %value.coerce) #15 {
entry:
  %value = alloca %union.simde_uint64x2_private, align 16
  %r = alloca <2 x i64>, align 16
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %value, i32 0, i32 0
  store <2 x i64> %value.coerce, ptr %coerce.dive, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %value, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #17
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_vdupq_n_f32(float noundef %value) #14 {
entry:
  %value.addr = alloca float, align 4
  %r_ = alloca %union.simde_float32x4_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store float %value, ptr %value.addr, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !62
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !62
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !62
  %2 = load float, ptr %value.addr, align 4, !tbaa !25, !llvm.access.group !62
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !62
  %4 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !62
  %vecins = insertelement <4 x float> %4, float %2, i64 %3
  store <4 x float> %vecins, ptr %r_, align 16, !llvm.access.group !62
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !62
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !62
  br label %omp.inner.for.cond, !llvm.loop !63

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %r_, i32 0, i32 0
  %6 = load <4 x float>, ptr %coerce.dive, align 16
  %call = call <4 x float> @simde_float32x4_from_private(<4 x float> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <4 x float> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_f32x4_(<4 x float> noundef %a, <4 x float> noundef %b, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %b.addr = alloca <4 x float>, align 16
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x float], align 16
  %b_ = alloca [4 x float], align 16
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  store <4 x float> %b, ptr %b.addr, align 16, !tbaa !16
  store float %slop, ptr %slop.addr, align 4, !tbaa !25
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
  %arraydecay = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %0 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_f32(ptr noundef %arraydecay, <4 x float> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %1 = load <4 x float>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_f32(ptr noundef %arraydecay1, <4 x float> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %2 = load float, ptr %slop.addr, align 4, !tbaa !25
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, float noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_f32(ptr noundef %ptr, <4 x float> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x float>, align 16
  %val_ = alloca %union.simde_float32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x float> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <4 x float>, ptr %val.addr, align 16, !tbaa !16
  %call = call <4 x float> @simde_float32x4_to_private(<4 x float> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_float32x4_private, ptr %val_, i32 0, i32 0
  store <4 x float> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_f64x2_(<2 x double> noundef %a, <2 x double> noundef %b, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
entry:
  %a.addr = alloca <2 x double>, align 16
  %b.addr = alloca <2 x double>, align 16
  %slop.addr = alloca double, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x double], align 16
  %b_ = alloca [2 x double], align 16
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x double> %b, ptr %b.addr, align 16, !tbaa !16
  store double %slop, ptr %slop.addr, align 8, !tbaa !31
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
  %arraydecay = getelementptr inbounds [2 x double], ptr %a_, i64 0, i64 0
  %0 = load <2 x double>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_f64(ptr noundef %arraydecay, <2 x double> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x double], ptr %b_, i64 0, i64 0
  %1 = load <2 x double>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_f64(ptr noundef %arraydecay1, <2 x double> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x double], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x double], ptr %b_, i64 0, i64 0
  %2 = load double, ptr %slop.addr, align 8, !tbaa !31
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, double noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_f64(ptr noundef %ptr, <2 x double> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x double>, align 16
  %val_ = alloca %union.simde_float64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x double> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <2 x double>, ptr %val.addr, align 16, !tbaa !16
  %call = call <2 x double> @simde_float64x2_to_private(<2 x double> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %val_, i32 0, i32 0
  store <2 x double> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vdupq_n_s8(i8 noundef signext %value) #14 {
entry:
  %value.addr = alloca i8, align 1
  %r_ = alloca %union.simde_int8x16_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i8 %value, ptr %value.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !65
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !65
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !65
  %2 = load i8, ptr %value.addr, align 1, !tbaa !16, !llvm.access.group !65
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !65
  %4 = load <16 x i8>, ptr %r_, align 16, !llvm.access.group !65
  %vecins = insertelement <16 x i8> %4, i8 %2, i64 %3
  store <16 x i8> %vecins, ptr %r_, align 16, !llvm.access.group !65
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !65
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !65
  br label %omp.inner.for.cond, !llvm.loop !66

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %r_, i32 0, i32 0
  %6 = load <16 x i8>, ptr %coerce.dive, align 16
  %call = call <16 x i8> @simde_int8x16_from_private(<16 x i8> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <16 x i8> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i8x16_(<16 x i8> noundef %a, <16 x i8> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %0 = load <16 x i8>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_s8(ptr noundef %arraydecay, <16 x i8> noundef %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %1 = load <16 x i8>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_s8(ptr noundef %arraydecay1, <16 x i8> noundef %1)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi8_(i64 noundef 16, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_s8(ptr noundef %ptr, <16 x i8> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <16 x i8>, align 16
  %val_ = alloca %union.simde_int8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <16 x i8> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <16 x i8>, ptr %val.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_int8x16_to_private(<16 x i8> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_int8x16_private, ptr %val_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vdupq_n_s16(i16 noundef signext %value) #14 {
entry:
  %value.addr = alloca i16, align 2
  %r_ = alloca %union.simde_int16x8_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i16 %value, ptr %value.addr, align 2, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !68
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !68
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !68
  %2 = load i16, ptr %value.addr, align 2, !tbaa !39, !llvm.access.group !68
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !68
  %4 = load <8 x i16>, ptr %r_, align 16, !llvm.access.group !68
  %vecins = insertelement <8 x i16> %4, i16 %2, i64 %3
  store <8 x i16> %vecins, ptr %r_, align 16, !llvm.access.group !68
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !68
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !68
  br label %omp.inner.for.cond, !llvm.loop !69

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %r_, i32 0, i32 0
  %6 = load <8 x i16>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_int16x8_from_private(<8 x i16> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <8 x i16> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i16x8_(<8 x i16> noundef %a, <8 x i16> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %0 = load <8 x i16>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_s16(ptr noundef %arraydecay, <8 x i16> noundef %0)
  %arraydecay1 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %1 = load <8 x i16>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_s16(ptr noundef %arraydecay1, <8 x i16> noundef %1)
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 8, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_s16(ptr noundef %ptr, <8 x i16> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i16>, align 16
  %val_ = alloca %union.simde_int16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i16> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <8 x i16>, ptr %val.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_int16x8_to_private(<8 x i16> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_int16x8_private, ptr %val_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vdupq_n_s32(i32 noundef %value) #14 {
entry:
  %value.addr = alloca i32, align 4
  %r_ = alloca %union.simde_int32x4_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 %value, ptr %value.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !71
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !71
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !71
  %2 = load i32, ptr %value.addr, align 4, !tbaa !5, !llvm.access.group !71
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !71
  %4 = load <4 x i32>, ptr %r_, align 16, !llvm.access.group !71
  %vecins = insertelement <4 x i32> %4, i32 %2, i64 %3
  store <4 x i32> %vecins, ptr %r_, align 16, !llvm.access.group !71
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !71
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !71
  br label %omp.inner.for.cond, !llvm.loop !72

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %r_, i32 0, i32 0
  %6 = load <4 x i32>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_int32x4_from_private(<4 x i32> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <4 x i32> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i32x4_(<4 x i32> noundef %a, <4 x i32> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %0 = load <4 x i32>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_s32(ptr noundef %arraydecay, <4 x i32> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %1 = load <4 x i32>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_s32(ptr noundef %arraydecay1, <4 x i32> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_s32(ptr noundef %ptr, <4 x i32> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i32>, align 16
  %val_ = alloca %union.simde_int32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i32> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <4 x i32>, ptr %val.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_int32x4_to_private(<4 x i32> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_int32x4_private, ptr %val_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_arm_neon_assert_equal_i64x2_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #4 {
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_vst1q_s64(ptr noundef %arraydecay, <2 x i64> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_vst1q_s64(ptr noundef %arraydecay1, <2 x i64> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_s64(ptr noundef %ptr, <2 x i64> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i64>, align 16
  %val_ = alloca %union.simde_int64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i64> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <2 x i64>, ptr %val.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_int64x2_to_private(<2 x i64> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %val_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x i8> @simde_vdupq_n_u8(i8 noundef zeroext %value) #14 {
entry:
  %value.addr = alloca i8, align 1
  %r_ = alloca %union.simde_uint8x16_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i8 %value, ptr %value.addr, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !74
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !74
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !74
  %2 = load i8, ptr %value.addr, align 1, !tbaa !16, !llvm.access.group !74
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !74
  %4 = load <16 x i8>, ptr %r_, align 16, !llvm.access.group !74
  %vecins = insertelement <16 x i8> %4, i8 %2, i64 %3
  store <16 x i8> %vecins, ptr %r_, align 16, !llvm.access.group !74
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !74
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !74
  br label %omp.inner.for.cond, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %r_, i32 0, i32 0
  %6 = load <16 x i8>, ptr %coerce.dive, align 16
  %call = call <16 x i8> @simde_uint8x16_from_private(<16 x i8> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <16 x i8> %call
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u8(ptr noundef %ptr, <16 x i8> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <16 x i8>, align 16
  %val_ = alloca %union.simde_uint8x16_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <16 x i8> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <16 x i8>, ptr %val.addr, align 16, !tbaa !16
  %call = call <16 x i8> @simde_uint8x16_to_private(<16 x i8> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint8x16_private, ptr %val_, i32 0, i32 0
  store <16 x i8> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i16> @simde_vdupq_n_u16(i16 noundef zeroext %value) #14 {
entry:
  %value.addr = alloca i16, align 2
  %r_ = alloca %union.simde_uint16x8_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i16 %value, ptr %value.addr, align 2, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !77
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !77
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !77
  %2 = load i16, ptr %value.addr, align 2, !tbaa !39, !llvm.access.group !77
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !77
  %4 = load <8 x i16>, ptr %r_, align 16, !llvm.access.group !77
  %vecins = insertelement <8 x i16> %4, i16 %2, i64 %3
  store <8 x i16> %vecins, ptr %r_, align 16, !llvm.access.group !77
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !77
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !77
  br label %omp.inner.for.cond, !llvm.loop !78

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %r_, i32 0, i32 0
  %6 = load <8 x i16>, ptr %coerce.dive, align 16
  %call = call <8 x i16> @simde_uint16x8_from_private(<8 x i16> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <8 x i16> %call
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u16(ptr noundef %ptr, <8 x i16> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <8 x i16>, align 16
  %val_ = alloca %union.simde_uint16x8_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <8 x i16> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <8 x i16>, ptr %val.addr, align 16, !tbaa !16
  %call = call <8 x i16> @simde_uint16x8_to_private(<8 x i16> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint16x8_private, ptr %val_, i32 0, i32 0
  store <8 x i16> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i32> @simde_vdupq_n_u32(i32 noundef %value) #14 {
entry:
  %value.addr = alloca i32, align 4
  %r_ = alloca %union.simde_uint32x4_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 %value, ptr %value.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !80
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !80
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !80
  %2 = load i32, ptr %value.addr, align 4, !tbaa !5, !llvm.access.group !80
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !80
  %4 = load <4 x i32>, ptr %r_, align 16, !llvm.access.group !80
  %vecins = insertelement <4 x i32> %4, i32 %2, i64 %3
  store <4 x i32> %vecins, ptr %r_, align 16, !llvm.access.group !80
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !80
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !80
  br label %omp.inner.for.cond, !llvm.loop !81

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %r_, i32 0, i32 0
  %6 = load <4 x i32>, ptr %coerce.dive, align 16
  %call = call <4 x i32> @simde_uint32x4_from_private(<4 x i32> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <4 x i32> %call
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u32(ptr noundef %ptr, <4 x i32> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <4 x i32>, align 16
  %val_ = alloca %union.simde_uint32x4_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <4 x i32> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <4 x i32>, ptr %val.addr, align 16, !tbaa !16
  %call = call <4 x i32> @simde_uint32x4_to_private(<4 x i32> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint32x4_private, ptr %val_, i32 0, i32 0
  store <4 x i32> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #17
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #17
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_vst1q_u64(ptr noundef %ptr, <2 x i64> noundef %val) #14 {
entry:
  %ptr.addr = alloca ptr, align 8
  %val.addr = alloca <2 x i64>, align 16
  %val_ = alloca %union.simde_uint64x2_private, align 16
  store ptr %ptr, ptr %ptr.addr, align 8, !tbaa !9
  store <2 x i64> %val, ptr %val.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %val_) #17
  %0 = load <2 x i64>, ptr %val.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_uint64x2_to_private(<2 x i64> noundef %0) #18
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %val_, i32 0, i32 0
  store <2 x i64> %call, ptr %coerce.dive, align 16
  %1 = load ptr, ptr %ptr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 16 %val_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %val_) #17
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_vdupq_n_f64(double noundef %value) #14 {
entry:
  %value.addr = alloca double, align 8
  %r_ = alloca %union.simde_float64x2_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store double %value, ptr %value.addr, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !83
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !83
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !83
  %2 = load double, ptr %value.addr, align 8, !tbaa !31, !llvm.access.group !83
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !83
  %4 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !83
  %vecins = insertelement <2 x double> %4, double %2, i64 %3
  store <2 x double> %vecins, ptr %r_, align 16, !llvm.access.group !83
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !83
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !83
  br label %omp.inner.for.cond, !llvm.loop !84

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_float64x2_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x double>, ptr %coerce.dive, align 16
  %call = call <2 x double> @simde_float64x2_from_private(<2 x double> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <2 x double> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vdupq_n_s64(i64 noundef %value) #14 {
entry:
  %value.addr = alloca i64, align 8
  %r_ = alloca %union.simde_int64x2_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %value, ptr %value.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !86
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !86
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !86
  %2 = load i64, ptr %value.addr, align 8, !tbaa !11, !llvm.access.group !86
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !86
  %4 = load <2 x i64>, ptr %r_, align 16, !llvm.access.group !86
  %vecins = insertelement <2 x i64> %4, i64 %2, i64 %3
  store <2 x i64> %vecins, ptr %r_, align 16, !llvm.access.group !86
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !86
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !86
  br label %omp.inner.for.cond, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_int64x2_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x i64>, ptr %coerce.dive, align 16
  %call = call <2 x i64> @simde_int64x2_from_private(<2 x i64> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_vdupq_n_u64(i64 noundef %value) #14 {
entry:
  %value.addr = alloca i64, align 8
  %r_ = alloca %union.simde_uint64x2_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %value, ptr %value.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #17
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !89
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !89
  %mul = mul i64 %1, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !89
  %2 = load i64, ptr %value.addr, align 8, !tbaa !11, !llvm.access.group !89
  %3 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !89
  %4 = load <2 x i64>, ptr %r_, align 16, !llvm.access.group !89
  %vecins = insertelement <2 x i64> %4, i64 %2, i64 %3
  store <2 x i64> %vecins, ptr %r_, align 16, !llvm.access.group !89
  br label %omp.body.continue

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !89
  %add1 = add i64 %5, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !89
  br label %omp.inner.for.cond, !llvm.loop !90

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #17
  %coerce.dive = getelementptr inbounds %union.simde_uint64x2_private, ptr %r_, i32 0, i32 0
  %6 = load <2 x i64>, ptr %coerce.dive, align 16
  %call = call <2 x i64> @simde_uint64x2_from_private(<2 x i64> %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #17
  ret <2 x i64> %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { alwaysinline nounwind willreturn memory(none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(argmem: readwrite) }

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
!17 = !{!18, !6, i64 8}
!18 = !{!"", !7, i64 0, !6, i64 8, !7, i64 12}
!19 = !{!20, !6, i64 16}
!20 = !{!"", !7, i64 0, !6, i64 16, !7, i64 20}
!21 = !{!22, !6, i64 16}
!22 = !{!"", !7, i64 0, !6, i64 16, !7, i64 24}
!23 = !{!24, !6, i64 32}
!24 = !{!"", !7, i64 0, !6, i64 32, !7, i64 36}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !7, i64 0}
!27 = distinct !{}
!28 = distinct !{!28, !29, !30}
!29 = !{!"llvm.loop.parallel_accesses", !27}
!30 = !{!"llvm.loop.vectorize.enable", i1 true}
!31 = !{!32, !32, i64 0}
!32 = !{!"double", !7, i64 0}
!33 = distinct !{}
!34 = distinct !{!34, !35, !30}
!35 = !{!"llvm.loop.parallel_accesses", !33}
!36 = distinct !{}
!37 = distinct !{!37, !38, !30}
!38 = !{!"llvm.loop.parallel_accesses", !36}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !7, i64 0}
!41 = distinct !{}
!42 = distinct !{!42, !43, !30}
!43 = !{!"llvm.loop.parallel_accesses", !41}
!44 = distinct !{}
!45 = distinct !{!45, !46, !30}
!46 = !{!"llvm.loop.parallel_accesses", !44}
!47 = distinct !{}
!48 = distinct !{!48, !49, !30}
!49 = !{!"llvm.loop.parallel_accesses", !47}
!50 = distinct !{}
!51 = distinct !{!51, !52, !30}
!52 = !{!"llvm.loop.parallel_accesses", !50}
!53 = distinct !{}
!54 = distinct !{!54, !55, !30}
!55 = !{!"llvm.loop.parallel_accesses", !53}
!56 = distinct !{}
!57 = distinct !{!57, !58, !30}
!58 = !{!"llvm.loop.parallel_accesses", !56}
!59 = distinct !{}
!60 = distinct !{!60, !61, !30}
!61 = !{!"llvm.loop.parallel_accesses", !59}
!62 = distinct !{}
!63 = distinct !{!63, !64, !30}
!64 = !{!"llvm.loop.parallel_accesses", !62}
!65 = distinct !{}
!66 = distinct !{!66, !67, !30}
!67 = !{!"llvm.loop.parallel_accesses", !65}
!68 = distinct !{}
!69 = distinct !{!69, !70, !30}
!70 = !{!"llvm.loop.parallel_accesses", !68}
!71 = distinct !{}
!72 = distinct !{!72, !73, !30}
!73 = !{!"llvm.loop.parallel_accesses", !71}
!74 = distinct !{}
!75 = distinct !{!75, !76, !30}
!76 = !{!"llvm.loop.parallel_accesses", !74}
!77 = distinct !{}
!78 = distinct !{!78, !79, !30}
!79 = !{!"llvm.loop.parallel_accesses", !77}
!80 = distinct !{}
!81 = distinct !{!81, !82, !30}
!82 = !{!"llvm.loop.parallel_accesses", !80}
!83 = distinct !{}
!84 = distinct !{!84, !85, !30}
!85 = !{!"llvm.loop.parallel_accesses", !83}
!86 = distinct !{}
!87 = distinct !{!87, !88, !30}
!88 = !{!"llvm.loop.parallel_accesses", !86}
!89 = distinct !{}
!90 = distinct !{!90, !91, !30}
!91 = !{!"llvm.loop.parallel_accesses", !89}
