; ModuleID = 'samples/981.bc'
source_filename = "../spack-src/test/x86/avx512/fixupimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [4 x float], [4 x float], [4 x i32], i32, [4 x float] }
%struct.anon.1 = type { [4 x float], i8, [4 x float], [4 x i32], i32, [4 x float] }
%struct.anon.2 = type { i8, [4 x float], [4 x float], [4 x i32], i32, [4 x float] }
%struct.anon.3 = type { [8 x float], [8 x float], [8 x i32], i32, [8 x float] }
%struct.anon.4 = type { [8 x float], i8, [8 x float], [8 x i32], i32, [8 x float] }
%struct.anon.5 = type { i8, [8 x float], [8 x float], [8 x i32], i32, [8 x float] }
%struct.anon.6 = type { [16 x float], [16 x float], [16 x i32], i32, [16 x float] }
%struct.anon.7 = type { [16 x float], i16, [16 x float], [16 x i32], i32, [16 x float] }
%struct.anon.8 = type { i16, [16 x float], [16 x float], [16 x i32], i32, [16 x float] }
%struct.anon.9 = type { [4 x float], [4 x float], [4 x i32], i32, [4 x float] }
%struct.anon.10 = type { [4 x float], i8, [4 x float], [4 x i32], i32, [4 x float] }
%struct.anon.11 = type { i8, [4 x float], [4 x float], [4 x i32], i32, [4 x float] }
%struct.anon.12 = type { [2 x double], [2 x double], [2 x i64], i32, [2 x double] }
%struct.anon.13 = type { [2 x double], i8, [2 x double], [2 x i64], i32, [2 x double] }
%struct.anon.14 = type { i8, [2 x double], [2 x double], [2 x i64], i32, [2 x double] }
%struct.anon.15 = type { [4 x double], [4 x double], [4 x i64], i32, [4 x double] }
%struct.anon.16 = type { [4 x double], i8, [4 x double], [4 x i64], i32, [4 x double] }
%struct.anon.17 = type { i8, [4 x double], [4 x double], [4 x i64], i32, [4 x double] }
%struct.anon.18 = type { [8 x double], [8 x double], [8 x i64], i32, [8 x double] }
%struct.anon.19 = type { [8 x double], i8, [8 x double], [8 x i64], i32, [8 x double] }
%struct.anon.20 = type { i8, [8 x double], [8 x double], [8 x i64], i32, [8 x double] }
%struct.anon.21 = type { [2 x double], [2 x double], [2 x i64], i32, [2 x double] }
%struct.anon.22 = type { [2 x double], i8, [2 x double], [2 x i64], i32, [2 x double] }
%struct.anon.23 = type { i8, [2 x double], [2 x double], [2 x i64], i32, [2 x double] }
%union.simde__m128_private = type { <16 x i8> }
%union.simde__m128i_private = type { <16 x i8> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.simde__m256_private = type { <32 x i8> }
%union.simde__m256i_private = type { <32 x i8> }
%struct.simde_mm512_loadu_si512_s = type { <8 x i64> }
%union.simde__m512_private = type { <64 x i8> }
%union.simde__m512i_private = type { <64 x i8> }
%union.simde__m128d_private = type { <16 x i8> }
%union.simde__m256d_private = type { <32 x i8> }
%union.simde__m512d_private = type { <64 x i8> }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [24 x %struct.anon] [%struct.anon { ptr @test_simde_mm_fixupimm_ps, ptr @.str.3 }, %struct.anon { ptr @test_simde_mm_mask_fixupimm_ps, ptr @.str.4 }, %struct.anon { ptr @test_simde_mm_maskz_fixupimm_ps, ptr @.str.5 }, %struct.anon { ptr @test_simde_mm256_fixupimm_ps, ptr @.str.6 }, %struct.anon { ptr @test_simde_mm256_mask_fixupimm_ps, ptr @.str.7 }, %struct.anon { ptr @test_simde_mm256_maskz_fixupimm_ps, ptr @.str.8 }, %struct.anon { ptr @test_simde_mm512_fixupimm_ps, ptr @.str.9 }, %struct.anon { ptr @test_simde_mm512_mask_fixupimm_ps, ptr @.str.10 }, %struct.anon { ptr @test_simde_mm512_maskz_fixupimm_ps, ptr @.str.11 }, %struct.anon { ptr @test_simde_mm_fixupimm_ss, ptr @.str.12 }, %struct.anon { ptr @test_simde_mm_mask_fixupimm_ss, ptr @.str.13 }, %struct.anon { ptr @test_simde_mm_maskz_fixupimm_ss, ptr @.str.14 }, %struct.anon { ptr @test_simde_mm_fixupimm_pd, ptr @.str.15 }, %struct.anon { ptr @test_simde_mm_mask_fixupimm_pd, ptr @.str.16 }, %struct.anon { ptr @test_simde_mm_maskz_fixupimm_pd, ptr @.str.17 }, %struct.anon { ptr @test_simde_mm256_fixupimm_pd, ptr @.str.18 }, %struct.anon { ptr @test_simde_mm256_mask_fixupimm_pd, ptr @.str.19 }, %struct.anon { ptr @test_simde_mm256_maskz_fixupimm_pd, ptr @.str.20 }, %struct.anon { ptr @test_simde_mm512_fixupimm_pd, ptr @.str.21 }, %struct.anon { ptr @test_simde_mm512_mask_fixupimm_pd, ptr @.str.22 }, %struct.anon { ptr @test_simde_mm512_maskz_fixupimm_pd, ptr @.str.23 }, %struct.anon { ptr @test_simde_mm_fixupimm_sd, ptr @.str.24 }, %struct.anon { ptr @test_simde_mm_mask_fixupimm_sd, ptr @.str.25 }, %struct.anon { ptr @test_simde_mm_maskz_fixupimm_sd, ptr @.str.26 }], align 16
@.str.1 = private unnamed_addr constant [24 x i8] c"not ok %zu fixupimm/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ok %zu fixupimm/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"mm_fixupimm_ps\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"mm_mask_fixupimm_ps\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"mm_maskz_fixupimm_ps\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"mm256_fixupimm_ps\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"mm256_mask_fixupimm_ps\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"mm256_maskz_fixupimm_ps\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"mm512_fixupimm_ps\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"mm512_mask_fixupimm_ps\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"mm512_maskz_fixupimm_ps\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"mm_fixupimm_ss\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"mm_mask_fixupimm_ss\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"mm_maskz_fixupimm_ss\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"mm_fixupimm_pd\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"mm_mask_fixupimm_pd\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"mm_maskz_fixupimm_pd\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"mm256_fixupimm_pd\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"mm256_mask_fixupimm_pd\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"mm256_maskz_fixupimm_pd\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"mm512_fixupimm_pd\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"mm512_mask_fixupimm_pd\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"mm512_maskz_fixupimm_pd\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"mm_fixupimm_sd\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"mm_mask_fixupimm_sd\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"mm_maskz_fixupimm_sd\00", align 1
@test_simde_mm_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { [4 x float] [float 0x7FF8000000000000, float 0x40693147A0000000, float 0x7FF8000000000000, float 0x408B890A40000000], [4 x float] [float 0xC047333340000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x4065DF5C20000000], [4 x i32] [i32 -408511845, i32 1587971559, i32 -627447801, i32 2001924042], i32 9, [4 x float] [float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00] }, %struct.anon.0 { [4 x float] [float 0x4084C0F5C0000000, float 0xC081971EC0000000, float 0x4084BAA3E0000000, float 0x408E53D700000000], [4 x float] [float 0x4082DE6660000000, float 0xC0709F5C20000000, float 0xC08EC62900000000, float 0x408CA82900000000], [4 x i32] [i32 -718677047, i32 781642408, i32 34931302, i32 -2081834084], i32 65, [4 x float] [float 0x3FF91EB860000000, float 0x47EFFFFFE0000000, float 0x7FF8000000000000, float 0.000000e+00] }, %struct.anon.0 { [4 x float] [float 0x408028B860000000, float 0xC08009AE20000000, float 0xC074638520000000, float 0xC08A05EB80000000], [4 x float] [float 0xC0784AB860000000, float 0xC0544B8520000000, float 0x406C6D1EC0000000, float -4.565000e+02], [4 x i32] [i32 1126398840, i32 1941599594, i32 1252359041, i32 -14627242], i32 184, [4 x float] [float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xFFF0000000000000, float 0xC7EFFFFFE0000000] }, %struct.anon.0 { [4 x float] [float 0xC07BE11EC0000000, float 0xC08659EB80000000, float 0xC0873399A0000000, float 0xC08D53C280000000], [4 x float] [float 0x406678A3E0000000, float 0xC0527CCCC0000000, float 0x4043333340000000, float 0x405D4EB860000000], [4 x i32] [i32 1428177592, i32 1071123198, i32 310885018, i32 -1621775819], i32 32, [4 x float] [float 0x7FF0000000000000, float 0xC7EFFFFFE0000000, float 0x4043333340000000, float -1.000000e+00] }, %struct.anon.0 { [4 x float] [float 0xC08B4347A0000000, float 0x407D561480000000, float 0xBFFA3D70A0000000, float 0x40544CCCC0000000], [4 x float] [float 0x408E4E6660000000, float 0x407DB051E0000000, float 0xC0873E8F60000000, float 0x4083CF5C20000000], [4 x i32] [i32 -504580214, i32 1038093445, i32 2069564866, i32 1322286160], i32 134, [4 x float] [float 0x47EFFFFFE0000000, float 0x7FF8000000000000, float 5.000000e-01, float 0xFFF0000000000000] }, %struct.anon.0 { [4 x float] [float 0x408C810A40000000, float 9.195000e+02, float 0x4082E33340000000, float 0x40801F8520000000], [4 x float] [float 0xC075A75C20000000, float 0x40835D0A40000000, float 0x407B0F5C20000000, float 0xC089EAE140000000], [4 x i32] [i32 -1758325662, i32 -550074177, i32 578832535, i32 -2080150273], i32 120, [4 x float] [float -0.000000e+00, float 0x3FF91EB860000000, float 0x7FF8000000000000, float 0xFFF0000000000000] }, %struct.anon.0 { [4 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x i32] [i32 -1289243822, i32 -1566703114, i32 -1814574289, i32 -993823156], i32 6, [4 x float] [float 5.000000e-01, float 0.000000e+00, float 9.000000e+01, float 0x7FF0000000000000] }, %struct.anon.0 { [4 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x i32] [i32 442678001, i32 -1898682214, i32 -1314041761, i32 -110767101], i32 213, [4 x float] [float 5.000000e-01, float 0.000000e+00, float 0x7FF0000000000000, float 0xFFF0000000000000] }], align 16
@.str.27 = private unnamed_addr constant [40 x i8] c"../spack-src/test/x86/avx512/fixupimm.c\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_ps(test_vec[0].r)\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_ps(test_vec[1].r)\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_ps(test_vec[2].r)\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_ps(test_vec[3].r)\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_ps(test_vec[4].r)\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_ps(test_vec[5].r)\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_ps(test_vec[6].r)\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_ps(test_vec[7].r)\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] ~= %s[%zu] (%f ~= %f)\0A\00", align 1
@stderr = external global ptr, align 8
@test_simde_mm_mask_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.1] [%struct.anon.1 { [4 x float] [float 0x7FF8000000000000, float 0x40377AE140000000, float 0x7FF8000000000000, float 0x40805C6660000000], i8 56, [4 x float] [float 0x408976A3E0000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC08EDDEB80000000], [4 x i32] [i32 -1062186756, i32 -13150401, i32 518961091, i32 -970966419], i32 106, [4 x float] [float 0x7FF8000000000000, float 0x40377AE140000000, float 0x7FF8000000000000, float 0xFFF0000000000000] }, %struct.anon.1 { [4 x float] [float 0x4064ED1EC0000000, float 0xC072AB3340000000, float 0x405255C280000000, float -8.605000e+02], i8 -88, [4 x float] [float 0xC062F4CCC0000000, float 0xC08175AE20000000, float 0xC07D8170A0000000, float 0xC0832ACCC0000000], [4 x i32] [i32 597534342, i32 1360845833, i32 72177076, i32 1564675589], i32 69, [4 x float] [float 0x4064ED1EC0000000, float 0xC072AB3340000000, float 0x405255C280000000, float 0x3FF91EB860000000] }, %struct.anon.1 { [4 x float] [float 0xC08DD67AE0000000, float 0xC079028F60000000, float 0xC08018E140000000, float 0x408512F5C0000000], i8 48, [4 x float] [float 0xC084073340000000, float 0xC0887A3D80000000, float 0x408EF451E0000000, float 0xC0537B8520000000], [4 x i32] [i32 1584032062, i32 -1735470033, i32 -333564346, i32 -1342881325], i32 94, [4 x float] [float 0xC08DD67AE0000000, float 0xC079028F60000000, float 0xC08018E140000000, float 0x408512F5C0000000] }, %struct.anon.1 { [4 x float] [float 0xC08A3FD700000000, float 0x40780AB860000000, float 0xC08B47C280000000, float 0x408186E140000000], i8 -109, [4 x float] [float 2.002500e+02, float 0x40876D70A0000000, float 0xC0519A3D80000000, float 0xC065966660000000], [4 x i32] [i32 -1432242073, i32 904783381, i32 1265835490, i32 1551618696], i32 96, [4 x float] [float 1.000000e+00, float 0x7FF8000000000000, float 0xC08B47C280000000, float 0x408186E140000000] }, %struct.anon.1 { [4 x float] [float 0xC06C5AE140000000, float 0x407A0BD700000000, float 0xC084493340000000, float 0xC079C02900000000], i8 49, [4 x float] [float 0x40837D5C20000000, float 0x408252F5C0000000, float 0xC078FC2900000000, float 0xC06A1D70A0000000], [4 x i32] [i32 -2089653874, i32 2093600792, i32 1021533571, i32 -447639810], i32 123, [4 x float] [float 0.000000e+00, float 0x407A0BD700000000, float 0xC084493340000000, float 0xC079C02900000000] }, %struct.anon.1 { [4 x float] [float 0xC08642A3E0000000, float 0x40850CA3E0000000, float 0xC0515A3D80000000, float 0x406100A3E0000000], i8 -6, [4 x float] [float 0xC08BA90A40000000, float 4.585000e+02, float 0x4080555C20000000, float 0xC08A3F8520000000], [4 x i32] [i32 -1899225069, i32 530656381, i32 732877506, i32 356790596], i32 251, [4 x float] [float 0xC08642A3E0000000, float 4.585000e+02, float 0xC0515A3D80000000, float 0x7FF0000000000000] }, %struct.anon.1 { [4 x float] [float 0xC08D6D5C20000000, float 0xC08F038520000000, float 0x408A1370A0000000, float 0xC082348F60000000], i8 -93, [4 x float] [float 0xC0883DC280000000, float 0x4089C7C280000000, float 0x4075382900000000, float 0xC0833D99A0000000], [4 x i32] [i32 640767700, i32 61713467, i32 1695983429, i32 -1595759500], i32 69, [4 x float] [float 0xFFF0000000000000, float 0xC08F038520000000, float 0x408A1370A0000000, float 0xC082348F60000000] }, %struct.anon.1 { [4 x float] [float 0x406A347AE0000000, float 0x407D287AE0000000, float 0x408D8947A0000000, float 0xC08270E140000000], i8 -80, [4 x float] [float 0x406B070A40000000, float -1.252500e+02, float 0x406DA61480000000, float 0x408EEB0A40000000], [4 x i32] [i32 -756982898, i32 160619632, i32 -1948436940, i32 348521319], i32 176, [4 x float] [float 0x406A347AE0000000, float 0x407D287AE0000000, float 0x408D8947A0000000, float 0xC08270E140000000] }], align 16
@test_simde_mm_maskz_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.2] [%struct.anon.2 { i8 124, [4 x float] [float 0x7FF8000000000000, float 0x4083F4F5C0000000, float 0x7FF8000000000000, float 0xC0608B3340000000], [4 x float] [float 0x4077CAE140000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC05CD1EB80000000], [4 x i32] [i32 89279609, i32 1064433692, i32 831920124, i32 1881735017], i32 173, [4 x float] [float 0.000000e+00, float 0.000000e+00, float 9.000000e+01, float 0xC0608B3340000000] }, %struct.anon.2 { i8 106, [4 x float] [float 0xC0582851E0000000, float 0xC0863B0A40000000, float 0xC0469AE140000000, float 0xC0877A7AE0000000], [4 x float] [float 0xC08273AE20000000, float 0xC06638F5C0000000, float 0xC08D867AE0000000, float 0xC081A2CCC0000000], [4 x i32] [i32 -1439743690, i32 1841087159, i32 770062561, i32 -2092307317], i32 93, [4 x float] [float 0.000000e+00, float 0x3FF91EB860000000, float 0.000000e+00, float 0x7FF8000000000000] }, %struct.anon.2 { i8 31, [4 x float] [float 0x40889EE140000000, float 0x4071F42900000000, float 0xC01FCCCCC0000000, float 0xC0811CF5C0000000], [4 x float] [float 0x407CBDEB80000000, float 0xC0840E8F60000000, float 0x405E3AE140000000, float 0x408E818520000000], [4 x i32] [i32 -652288335, i32 1458752334, i32 932011254, i32 1324234636], i32 244, [4 x float] [float 0x3FF91EB860000000, float 0xFFF0000000000000, float 0x7FF8000000000000, float 0xFFF0000000000000] }, %struct.anon.2 { i8 66, [4 x float] [float 0xC04F47AE20000000, float 0x4084EF47A0000000, float 0xC0855BAE20000000, float 0x4076BD99A0000000], [4 x float] [float -9.880000e+02, float 0x406828F5C0000000, float 0x4085FEF5C0000000, float 0xC073E547A0000000], [4 x i32] [i32 -1490110627, i32 -1154512069, i32 -580104449, i32 925582700], i32 56, [4 x float] [float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.2 { i8 15, [4 x float] [float 0xC065033340000000, float 0x40895F99A0000000, float 0x40812A8F60000000, float 0xC0889B5C20000000], [4 x float] [float 0x4070130A40000000, float 0xC05C05C280000000, float 0x4058533340000000, float 0xC08A3B8520000000], [4 x i32] [i32 1413881957, i32 -1615906193, i32 519893351, i32 -1436966113], i32 211, [4 x float] [float 0x7FF0000000000000, float 0xC7EFFFFFE0000000, float 0x4058533340000000, float 1.000000e+00] }, %struct.anon.2 { i8 -128, [4 x float] [float 0x406610F5C0000000, float 0xC08D9F47A0000000, float -5.907500e+02, float 0x4082508F60000000], [4 x float] [float 0xC05F6C2900000000, float 0xC080BC7AE0000000, float 0xC08E9251E0000000, float 0xC0751D47A0000000], [4 x i32] [i32 -1278833017, i32 -214565179, i32 -1285995374, i32 -987583094], i32 92, [4 x float] zeroinitializer }, %struct.anon.2 { i8 -67, [4 x float] [float 0x40877DAE20000000, float 0x402B8A3D80000000, float 0x405CA33340000000, float 0x406A728F60000000], [4 x float] [float 0x40773F0A40000000, float 0xC087E43D80000000, float 0x406778A3E0000000, float 0xC08594F5C0000000], [4 x i32] [i32 -1537118902, i32 -1028115432, i32 -481740459, i32 -39191297], i32 49, [4 x float] [float 1.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FF91EB860000000] }, %struct.anon.2 { i8 -11, [4 x float] [float 0x408C4B0A40000000, float 0x407F84F5C0000000, float 0x408509D700000000, float 0x408CAB0A40000000], [4 x float] [float 0xC072E68F60000000, float 0x40779199A0000000, float 0xC0790F3340000000, float 5.295000e+02], [4 x i32] [i32 1688338498, i32 -249167931, i32 -1170480307, i32 2027085636], i32 152, [4 x float] [float 0xFFF0000000000000, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00] }], align 16
@test_simde_mm256_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.3] [%struct.anon.3 { [8 x float] [float 0x7FF8000000000000, float -7.175000e+02, float 0x7FF8000000000000, float 0xC08AF370A0000000, float 0xC087227AE0000000, float 0xC08EAF5C20000000, float 0x4078BD99A0000000, float 0xC08B16F5C0000000], [8 x float] [float 0xC08CC2CCC0000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC087AC8F60000000, float 0x4070ABD700000000, float 0xC086A91EC0000000, float 0x405C03D700000000, float 0x40747947A0000000], [8 x i32] [i32 778834093, i32 354272015, i32 -78709799, i32 -165808334, i32 871982277, i32 444242987, i32 453967824, i32 -692770008], i32 59, [8 x float] [float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float -1.000000e+00, float 0xFFF0000000000000, float 0x7FF8000000000000, float 1.000000e+00, float 0x405C03D700000000, float 0x3FF91EB860000000] }, %struct.anon.3 { [8 x float] [float 0xC080FF3340000000, float 0xC08A008F60000000, float 0xC0659147A0000000, float 0xC06A9999A0000000, float 0x405B93D700000000, float 2.542500e+02, float 0x408346F5C0000000, float 0xC08BB6A3E0000000], [8 x float] [float 0xC088608F60000000, float 0x4086A11EC0000000, float 0xC082E0B860000000, float 0xC088E4F5C0000000, float 0xC07235EB80000000, float 0x406E466660000000, float 0x40828C2900000000, float 0xC078E2E140000000], [8 x i32] [i32 -1100996123, i32 1337568796, i32 1799739046, i32 1721712187, i32 -1417668134, i32 1103531545, i32 -199787591, i32 -2109858659], i32 61, [8 x float] [float 0x47EFFFFFE0000000, float 0xFFF0000000000000, float 5.000000e-01, float 0xFFF0000000000000, float 5.000000e-01, float 0xFFF0000000000000, float 0xC7EFFFFFE0000000, float 0x7FF8000000000000] }, %struct.anon.3 { [8 x float] [float 0x408065AE20000000, float 0xC06FFE1480000000, float 0xC07049C280000000, float 0x4088831EC0000000, float 0xC06DBB8520000000, float 0xC08B062900000000, float 0x408CAC2900000000, float 0xC063C6B860000000], [8 x float] [float 0xC088CF5C20000000, float 0xC05C28F5C0000000, float 0x40550E1480000000, float 0x407D8CF5C0000000, float 0x4064470A40000000, float 0xC0891DC280000000, float 0xC068F38520000000, float 0x4083528F60000000], [8 x i32] [i32 -206964403, i32 173993679, i32 124845357, i32 817033239, i32 930183550, i32 -1859417612, i32 -502043995, i32 1430016776], i32 76, [8 x float] [float 0x7FF8000000000000, float 1.000000e+00, float 0xC07049C280000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC0891DC280000000, float 0x7FF8000000000000, float 0x7FF0000000000000] }, %struct.anon.3 { [8 x float] [float 0xC083DE51E0000000, float 0x40839EE140000000, float 0xC08293D700000000, float 0x407DA851E0000000, float 0xC05D7999A0000000, float 0xC08E8CE140000000, float 0x40825D70A0000000, float 0x4059828F60000000], [8 x float] [float 0x4087543D80000000, float 0x408EBCB860000000, float 0x407316B860000000, float 0xC08106B860000000, float 0x406C3947A0000000, float 0xC05943D700000000, float 0x404C7D70A0000000, float -2.495000e+02], [8 x i32] [i32 19310548, i32 -1157064796, i32 116112263, i32 675110196, i32 -1950717466, i32 -613560877, i32 1831971361, i32 1669953935], i32 32, [8 x float] [float 0xC083DE51E0000000, float 5.000000e-01, float 0xC08293D700000000, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0x7FF0000000000000, float 0x7FF8000000000000] }, %struct.anon.3 { [8 x float] [float 6.430000e+02, float 0x4088E2E140000000, float 0xC07D1199A0000000, float 0xC08296E140000000, float 0x408D1CCCC0000000, float 0xC0811CA3E0000000, float 0x406EDDC280000000, float 0xC08AF2A3E0000000], [8 x float] [float 0x40753C7AE0000000, float 0xC084E6CCC0000000, float 0x408313EB80000000, float -4.980000e+02, float 0xC07D891EC0000000, float 0xC08268F5C0000000, float 0xC08B7D8520000000, float 0xC05B170A40000000], [8 x i32] [i32 -830444217, i32 1557425192, i32 -1350298935, i32 1312439931, i32 757704460, i32 -509978031, i32 -196860716, i32 465152468], i32 22, [8 x float] [float 9.000000e+01, float 9.000000e+01, float 1.000000e+00, float 0x47EFFFFFE0000000, float 0x3FF91EB860000000, float 0xC08268F5C0000000, float 0xFFF0000000000000, float 5.000000e-01] }, %struct.anon.3 { [8 x float] [float 0xC08E0A1480000000, float 0xC07DA2B860000000, float 0xC083CEB860000000, float 0xC053CA3D80000000, float 0xC07C3C7AE0000000, float 0x408DCEB860000000, float 0xC08E88F5C0000000, float -7.052500e+02], [8 x float] [float 0x408D4B70A0000000, float 0x407484CCC0000000, float 0xC06F42E140000000, float 0x4064670A40000000, float 0xC088261480000000, float 0x4089371EC0000000, float 0x408C8DD700000000, float 0x408B31EB80000000], [8 x i32] [i32 1872412326, i32 1260265168, i32 1771657309, i32 1368834815, i32 -248369123, i32 686126676, i32 893624095, i32 2138254809], i32 235, [8 x float] [float 0x7FF0000000000000, float 0xFFF0000000000000, float -1.000000e+00, float 0x7FF0000000000000, float 0xC088261480000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float -0.000000e+00] }, %struct.anon.3 { [8 x float] [float 6.032500e+02, float 0xC0813B0A40000000, float 0xC086A50A40000000, float 0x4080B6CCC0000000, float 0xC058BD70A0000000, float 0x4080526660000000, float 0x4085042900000000, float 0xC087B98520000000], [8 x float] [float 0x408AAB99A0000000, float 0x4071B02900000000, float 0xC070130A40000000, float 0xC08358F5C0000000, float 0x4085AF1EC0000000, float 0xC0611C2900000000, float 0x40710851E0000000, float 0x4086E50A40000000], [8 x i32] [i32 -1996092372, i32 1676844900, i32 2125760609, i32 225437368, i32 2083870045, i32 -843941388, i32 -1857280602, i32 1598831155], i32 70, [8 x float] [float 0.000000e+00, float 0x7FF0000000000000, float 0x47EFFFFFE0000000, float 0x3FF91EB860000000, float -0.000000e+00, float 0x3FF91EB860000000, float -1.000000e+00, float 0x7FF0000000000000] }, %struct.anon.3 { [8 x float] [float 0x40784F3340000000, float 0x4083F570A0000000, float 0xC075A851E0000000, float 0x408D495C20000000, float 0x4082842900000000, float 0xC0743A3D80000000, float 0xC088008F60000000, float 0x40808F99A0000000], [8 x float] [float 0xC08F1AB860000000, float 0xC03228F5C0000000, float 0xC0732D47A0000000, float 0xC08800CCC0000000, float 0xC06A68A3E0000000, float 0xC0789199A0000000, float 0xC08C0EF5C0000000, float 0xC083002900000000], [8 x i32] [i32 1376639729, i32 449954402, i32 86458536, i32 -1987945067, i32 2086024406, i32 -1945263527, i32 585849308, i32 -1664298069], i32 173, [8 x float] [float 0x7FF8000000000000, float 1.000000e+00, float 0x7FF0000000000000, float -1.000000e+00, float 9.000000e+01, float 9.000000e+01, float 0x7FF8000000000000, float 9.000000e+01] }], align 16
@.str.38 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_ps(test_vec[0].r)\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_ps(test_vec[1].r)\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_ps(test_vec[2].r)\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_ps(test_vec[3].r)\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_ps(test_vec[4].r)\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_ps(test_vec[5].r)\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_ps(test_vec[6].r)\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_ps(test_vec[7].r)\00", align 1
@test_simde_mm256_mask_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.4] [%struct.anon.4 { [8 x float] [float 0x7FF8000000000000, float 0xC085E8B860000000, float 0x7FF8000000000000, float 0xC068147AE0000000, float 0xC07BFBAE20000000, float 0xC080162900000000, float 0xC084141480000000, float 0xC07A8D47A0000000], i8 -76, [8 x float] [float 0x407D77D700000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC0852A3D80000000, float 0xC071461480000000, float 0xC07CE6E140000000, float 0xC06DF75C20000000, float 0xC07624CCC0000000], [8 x i32] [i32 -1317828619, i32 -1442836490, i32 718401157, i32 1057338427, i32 -85827389, i32 1211196643, i32 -1129387323, i32 -1150287674], i32 135, [8 x float] [float 0x7FF8000000000000, float 0xC085E8B860000000, float 0x7FF0000000000000, float 0xC068147AE0000000, float 1.000000e+00, float 0.000000e+00, float 0xC084141480000000, float 5.000000e-01] }, %struct.anon.4 { [8 x float] [float 0xC06AAD70A0000000, float 0x406D70A3E0000000, float 0xC083418520000000, float 0x405037AE20000000, float 0xC07F178520000000, float 0x4084A6E140000000, float 0xC05137AE20000000, float 0xC07BBD99A0000000], i8 -13, [8 x float] [float 0x408BDC7AE0000000, float 0xC08C6BEB80000000, float 0xC085A63D80000000, float 0x40859B0A40000000, float 0xC077ACCCC0000000, float 0x4082F5AE20000000, float 0x407BD851E0000000, float 0xC085B370A0000000], [8 x i32] [i32 1517889644, i32 -1365924871, i32 141677736, i32 468413622, i32 -1998572387, i32 -498164510, i32 -244774643, i32 -488315019], i32 16, [8 x float] [float 0x7FF0000000000000, float 0x47EFFFFFE0000000, float 0xC083418520000000, float 0x405037AE20000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0x7FF8000000000000] }, %struct.anon.4 { [8 x float] [float 0x408C4CF5C0000000, float 0xC050E147A0000000, float 0x405C3B8520000000, float 0xC080F0E140000000, float 0x407A1B5C20000000, float 0x407D66B860000000, float 0x404087AE20000000, float 0xC05BB33340000000], i8 0, [8 x float] [float 0xC082E6A3E0000000, float 0xC07861EB80000000, float 0x406A7D70A0000000, float 0x405DB28F60000000, float 0x40626E6660000000, float 0x408E618520000000, float 0x4087E3EB80000000, float 0x408D303D80000000], [8 x i32] [i32 -1498892334, i32 -1789022167, i32 -801998692, i32 -172836264, i32 285381640, i32 -444075011, i32 905275863, i32 2000027301], i32 182, [8 x float] [float 0x408C4CF5C0000000, float 0xC050E147A0000000, float 0x405C3B8520000000, float 0xC080F0E140000000, float 0x407A1B5C20000000, float 0x407D66B860000000, float 0x404087AE20000000, float 0xC05BB33340000000] }, %struct.anon.4 { [8 x float] [float 0x4069F6B860000000, float 0xC08A9D99A0000000, float 0xBFF19999A0000000, float 0x408631D700000000, float 0x4089495C20000000, float 0x408D103D80000000, float 0xC086ECE140000000, float 0x4085E5D700000000], i8 -114, [8 x float] [float 0xC08E9B99A0000000, float 0xC07AA66660000000, float 0x407881C280000000, float -3.582500e+02, float 0xC0899D8520000000, float 0xC0644C2900000000, float 0xC04A570A40000000, float 0xC08C908F60000000], [8 x i32] [i32 -215321477, i32 1632369318, i32 1080639660, i32 893287234, i32 1796023042, i32 370164248, i32 1439467639, i32 568634278], i32 31, [8 x float] [float 0x4069F6B860000000, float 0xC07AA66660000000, float 0xFFF0000000000000, float 0x7FF0000000000000, float 0x4089495C20000000, float 0x408D103D80000000, float 0xC086ECE140000000, float 0xC08C908F60000000] }, %struct.anon.4 { [8 x float] [float 0x408810CCC0000000, float -9.397500e+02, float 0xC07C830A40000000, float 0x406779EB80000000, float 0x40809570A0000000, float 0x408206F5C0000000, float 0xC08CD7EB80000000, float 0x408CEECCC0000000], i8 9, [8 x float] [float 0xC08969EB80000000, float 0x40720F0A40000000, float 0x404651EB80000000, float 0x4074E35C20000000, float 0x4070521480000000, float 0xC067DBD700000000, float 2.682500e+02, float 0xC0809947A0000000], [8 x i32] [i32 -1598740641, i32 199423632, i32 1460475956, i32 1735358501, i32 299795849, i32 -38325166, i32 639490072, i32 1261429740], i32 10, [8 x float] [float 0x408810CCC0000000, float -9.397500e+02, float 0xC07C830A40000000, float 0x7FF0000000000000, float 0x40809570A0000000, float 0x408206F5C0000000, float 0xC08CD7EB80000000, float 0x408CEECCC0000000] }, %struct.anon.4 { [8 x float] [float 0xC04547AE20000000, float 0xC086E6CCC0000000, float 0xC089A770A0000000, float 0xC06D2C7AE0000000, float 0xC089168F60000000, float 0xC0815451E0000000, float 0xC080A547A0000000, float 0xC088722900000000], i8 -37, [8 x float] [float 0x40330F5C20000000, float 0x408ADB8520000000, float 0xC06190F5C0000000, float 0x4068EBD700000000, float 0xC072EF0A40000000, float 0x40893651E0000000, float 0x4071D4CCC0000000, float 0xC080A6A3E0000000], [8 x i32] [i32 -435181874, i32 738944691, i32 1521840853, i32 -2069051824, i32 1436330621, i32 -1438530617, i32 -676033294, i32 1186090616], i32 244, [8 x float] [float 0x47EFFFFFE0000000, float 0x7FF8000000000000, float 0xC089A770A0000000, float 0.000000e+00, float 0x7FF0000000000000, float 0xC0815451E0000000, float 0x3FF91EB860000000, float 0xFFF0000000000000] }, %struct.anon.4 { [8 x float] [float 0x408B186660000000, float 0x4089E8E140000000, float 0x408477D700000000, float 0x4078DB8520000000, float 0x40795FD700000000, float 0x4086DFEB80000000, float 0x4074391EC0000000, float 0x408285EB80000000], i8 39, [8 x float] [float 0x4034EE1480000000, float 0xC083BE51E0000000, float 0xC052428F60000000, float 0xC0866F8520000000, float 0x40662AE140000000, float 0xC089266660000000, float 0xC06F238520000000, float 0xC08B09C280000000], [8 x i32] [i32 -1443048393, i32 1341740937, i32 -1379107325, i32 -579591910, i32 -288350622, i32 560375762, i32 454405210, i32 256097752], i32 145, [8 x float] [float 1.000000e+00, float 0xC7EFFFFFE0000000, float 0x3FF91EB860000000, float 0x4078DB8520000000, float 0x40795FD700000000, float 0xC089266660000000, float 0x4074391EC0000000, float 0x408285EB80000000] }, %struct.anon.4 { [8 x float] [float 0xC080CD3340000000, float 0xC051828F60000000, float 0xC058A70A40000000, float 0xC075478520000000, float 0x407776B860000000, float 0x40770B8520000000, float -1.227500e+02, float 0xC082EC2900000000], i8 -106, [8 x float] [float 0x406C8570A0000000, float 0x408705C280000000, float 0x40828ECCC0000000, float 0x408CE9D700000000, float 0x4080FC2900000000, float 0xC05E366660000000, float 0xC082FCCCC0000000, float 0x4079A91EC0000000], [8 x i32] [i32 815425970, i32 1447708469, i32 -625465156, i32 -1616009224, i32 -1158033907, i32 -1584261661, i32 -1758289320, i32 204361050], i32 182, [8 x float] [float 0xC080CD3340000000, float 0x7FF0000000000000, float 0x3FF91EB860000000, float 0xC075478520000000, float 5.000000e-01, float 0x40770B8520000000, float -1.227500e+02, float 0xC082EC2900000000] }], align 16
@test_simde_mm256_maskz_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.5] [%struct.anon.5 { i8 69, [8 x float] [float 0x7FF8000000000000, float 0x408D658520000000, float 0x7FF8000000000000, float 0xC08EEB70A0000000, float 0xC088388F60000000, float 0xC0828F5C20000000, float 0xC0836347A0000000, float 0x4045ACCCC0000000], [8 x float] [float 0xC082A2CCC0000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x4071535C20000000, float 0xC0826EE140000000, float 0x4044ECCCC0000000, float 0xC081E6CCC0000000, float 0x407BF3AE20000000], [8 x i32] [i32 -266951678, i32 1046758520, i32 -1658184077, i32 -227928870, i32 -776419921, i32 -668170996, i32 1544174320, i32 2141363325], i32 64, [8 x float] [float 0x7FF8000000000000, float 0.000000e+00, float 0x7FF8000000000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 9.000000e+01, float 0.000000e+00] }, %struct.anon.5 { i8 -4, [8 x float] [float 0x40497D70A0000000, float 0xC04A30A3E0000000, float 0xC08A191EC0000000, float 0xC07A24F5C0000000, float 0x408C987AE0000000, float 0x406F37AE20000000, float 0x40890CCCC0000000, float 0xC08741C280000000], [8 x float] [float 0x406C3F5C20000000, float 0xC063B1EB80000000, float 0x405C7D70A0000000, float 0x407D7D99A0000000, float 0x40830651E0000000, float 0x408CAE8F60000000, float 0xC08904F5C0000000, float 0xC062CF0A40000000], [8 x i32] [i32 -244320301, i32 902499617, i32 1038466423, i32 -79055242, i32 501948899, i32 -929413076, i32 -1576527126, i32 1570750601], i32 183, [8 x float] [float 0.000000e+00, float 0.000000e+00, float 0x7FF8000000000000, float 0xC7EFFFFFE0000000, float 0x40830651E0000000, float 9.000000e+01, float 0x7FF8000000000000, float 0x3FF91EB860000000] }, %struct.anon.5 { i8 27, [8 x float] [float 8.585000e+02, float 0xC08B222900000000, float 0xC0617CCCC0000000, float 0xC08CA48F60000000, float 0xC07CE33340000000, float 0x406DF61480000000, float 0x405FB28F60000000, float 0xC04D451EC0000000], [8 x float] [float 0x408E743D80000000, float 0x4050147AE0000000, float 0xC0886AB860000000, float 0xC0833AA3E0000000, float 0xC08BEE8F60000000, float 0xC076230A40000000, float 0x4089FF3340000000, float 0x4063A51EC0000000], [8 x i32] [i32 -678228454, i32 -1454518029, i32 999049241, i32 2087168308, i32 1583755076, i32 -135854025, i32 -1230027609, i32 -1378777197], i32 149, [8 x float] [float 0x3FF91EB860000000, float 1.000000e+00, float 0.000000e+00, float 9.000000e+01, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.5 { i8 52, [8 x float] [float 0x40828B70A0000000, float 0x408F261480000000, float 0x408716CCC0000000, float 5.085000e+02, float 2.465000e+02, float 0x4080E399A0000000, float 0x4087E23D80000000, float 0xC0807C2900000000], [8 x float] [float 0xC08348E140000000, float 0xC05E70A3E0000000, float 0x408D82A3E0000000, float 0x408EFD70A0000000, float 0xC0697E1480000000, float 0xC08AC251E0000000, float 0xC063D947A0000000, float 0xC075970A40000000], [8 x i32] [i32 441332434, i32 1749977534, i32 531417840, i32 961940016, i32 920669681, i32 -2067163396, i32 -870746520, i32 -872307974], i32 212, [8 x float] [float 0.000000e+00, float 0.000000e+00, float 0x408D82A3E0000000, float 0.000000e+00, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.5 { i8 -40, [8 x float] [float 0xC086A47AE0000000, float 0x4085EA7AE0000000, float -2.620000e+02, float 0xC0675851E0000000, float 0xC04D8147A0000000, float 0x408B063D80000000, float 0x40879599A0000000, float 0xC0551E1480000000], [8 x float] [float 0xC051B999A0000000, float 0x408E6AE140000000, float 0x4072C33340000000, float 0x4041A3D700000000, float 0xC077CD1EC0000000, float 0x4060833340000000, float 0xC0893C7AE0000000, float 0xC0889B1EC0000000], [8 x i32] [i32 13171253, i32 -1338972250, i32 -1969067715, i32 -527968182, i32 390597537, i32 -971959004, i32 1704648214, i32 -96653883], i32 39, [8 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float -0.000000e+00, float 0.000000e+00, float 0x7FF0000000000000, float 1.000000e+00] }, %struct.anon.5 { i8 -20, [8 x float] [float 0x40601B8520000000, float 0x408D1A51E0000000, float 0x408688E140000000, float 0xC083851EC0000000, float 0x407D7BD700000000, float 0x407E563D80000000, float 0xC06304CCC0000000, float 0x408AB50A40000000], [8 x float] [float 0xC083E2F5C0000000, float 0xC069FA3D80000000, float 0x408A728F60000000, float 0x4063F61480000000, float 0xC050070A40000000, float 0xC073878520000000, float 8.142500e+02, float 0x406A6A8F60000000], [8 x i32] [i32 -1809220053, i32 -119622880, i32 1167703866, i32 476753927, i32 -1607323454, i32 -127559733, i32 -652255276, i32 -2050626214], i32 108, [8 x float] [float 0.000000e+00, float 0.000000e+00, float 0xFFF0000000000000, float 0x4063F61480000000, float 0.000000e+00, float 0.000000e+00, float 0x3FF91EB860000000, float 0.000000e+00] }, %struct.anon.5 { i8 -94, [8 x float] [float 0xC083195C20000000, float -4.477500e+02, float 0xC08E7B70A0000000, float 0x40749D47A0000000, float 0xC08237C280000000, float 0x40885A2900000000, float 0xC087953340000000, float 0x4075A21480000000], [8 x float] [float 0x4087850A40000000, float 0x40810C6660000000, float 0xC08354B860000000, float 0xC083A18520000000, float 0xC0742599A0000000, float 0xC07AA26660000000, float 0xC079F947A0000000, float 0x4089342900000000], [8 x i32] [i32 -1210284552, i32 -809623010, i32 -1131291764, i32 -1517866739, i32 -176586858, i32 -1940958305, i32 133747736, i32 -425097746], i32 10, [8 x float] [float 0.000000e+00, float 9.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 9.000000e+01, float 0.000000e+00, float 0x47EFFFFFE0000000] }, %struct.anon.5 { i8 -89, [8 x float] [float 0xC07EED99A0000000, float 0xC085B3C280000000, float 0xC08990F5C0000000, float 0x408E871EC0000000, float 0x4088B75C20000000, float 0x403DBAE140000000, float 0x4089FC2900000000, float 0xC08A6B99A0000000], [8 x float] [float 0x4089AF3340000000, float 0x40852EB860000000, float 0x4073A3D700000000, float 0xC06E46B860000000, float 0xC083D51EC0000000, float 0x40600FAE20000000, float 0x408E48F5C0000000, float 0xC06EB999A0000000], [8 x i32] [i32 909375323, i32 -1186664312, i32 -145757833, i32 -1248443038, i32 1775116948, i32 -1604856549, i32 61488510, i32 900453082], i32 202, [8 x float] [float 0x7FF8000000000000, float 5.000000e-01, float 0xC7EFFFFFE0000000, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x7FF0000000000000] }], align 16
@test_simde_mm512_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.6] [%struct.anon.6 { [16 x float] [float 0x7FF8000000000000, float 0xC08468A3E0000000, float 0x7FF8000000000000, float 0xC061947AE0000000, float 0xC089CE8F60000000, float 0xC071702900000000, float 0x408C30F5C0000000, float 0xC0778199A0000000, float 0x408962CCC0000000, float 0xC07EAD1EC0000000, float 0xC084D51EC0000000, float 0xC083FE51E0000000, float 0x40865F47A0000000, float 0xC08E107AE0000000, float 0x40806651E0000000, float 0xC04CD0A3E0000000], [16 x float] [float 0xC0831D0A40000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC08E1770A0000000, float 0xC08951EB80000000, float 0xC076928F60000000, float 0xC0847D1EC0000000, float 0xC0768947A0000000, float 0x4084633340000000, float 0xC0818D0A40000000, float 0xC08C073340000000, float 0x40829B99A0000000, float 0x404D8A3D80000000, float 0x4060E570A0000000, float 0xC065DF5C20000000, float 0x40723D47A0000000], [16 x i32] [i32 65344024, i32 -1043000603, i32 310236860, i32 1073926926, i32 1299399004, i32 912095120, i32 -1084049800, i32 855801371, i32 1966532752, i32 -1237971974, i32 -271993631, i32 -483406969, i32 -1674534388, i32 -1831629286, i32 1599157572, i32 1150440627], i32 60, [16 x float] [float 0x7FF8000000000000, float 0x7FF0000000000000, float 9.000000e+01, float 0xC061947AE0000000, float 0x3FF91EB860000000, float 0xFFF0000000000000, float 0xC7EFFFFFE0000000, float 0x7FF8000000000000, float -0.000000e+00, float 0xFFF0000000000000, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float -1.000000e+00, float -1.000000e+00, float 0xC7EFFFFFE0000000, float 0xFFF0000000000000] }, %struct.anon.6 { [16 x float] [float 0x407E2170A0000000, float 7.352500e+02, float 0xC08A867AE0000000, float 0x4084822900000000, float 0xC080FE1480000000, float 0xC08D958520000000, float 0xC0867EA3E0000000, float 0xC086DB47A0000000, float 0xC07B582900000000, float 0xC078278520000000, float 0xC077333340000000, float 0xC0868CCCC0000000, float 0xC075C851E0000000, float 0xC08A7347A0000000, float 0x406B98A3E0000000, float 0x4043ECCCC0000000], [16 x float] [float 0x407CF47AE0000000, float 7.047500e+02, float 0x40533AE140000000, float 0x4084683D80000000, float 0xC0848347A0000000, float 0x407A547AE0000000, float 0xC0861C6660000000, float 0x408F1FEB80000000, float 0x408ADD3340000000, float 0xC082E399A0000000, float 0x40827B8520000000, float 0xC0545147A0000000, float 0x408095C280000000, float 0xC0823C51E0000000, float 0xC088AB70A0000000, float 0x4029A3D700000000], [16 x i32] [i32 -1259540269, i32 732149156, i32 -1928408191, i32 -1893056907, i32 287505868, i32 -445615310, i32 53019591, i32 -1623596085, i32 2001938131, i32 1554184155, i32 1072345290, i32 -1144056594, i32 1137504529, i32 740834404, i32 187650623, i32 145385781], i32 143, [16 x float] [float 5.000000e-01, float 0x7FF8000000000000, float 0.000000e+00, float 0.000000e+00, float 0xC0848347A0000000, float 0x47EFFFFFE0000000, float 0x7FF8000000000000, float -1.000000e+00, float -0.000000e+00, float 9.000000e+01, float 0x7FF8000000000000, float 5.000000e-01, float 0xFFF0000000000000, float 9.000000e+01, float 5.000000e-01, float 0x4043ECCCC0000000] }, %struct.anon.6 { [16 x float] [float 0xC08A823D80000000, float 0xC083F1EB80000000, float 0xC074AE8F60000000, float 0xC07880A3E0000000, float 0xC0824770A0000000, float 0xC0495EB860000000, float 0xC05EDCCCC0000000, float 0xC03670A3E0000000, float 0x40819651E0000000, float 0x407F9599A0000000, float 0x406FFEB860000000, float 0xC0888DD700000000, float 0x4084978520000000, float 0xC0805A2900000000, float 0x406FC3D700000000, float 0x405E8D70A0000000], [16 x float] [float 0xC089942900000000, float 0xC084E7C280000000, float -2.247500e+02, float 0xC07DAEE140000000, float 0x4087827AE0000000, float 0x4050ECCCC0000000, float 0xC07DEF0A40000000, float 0x40831FC280000000, float 4.632500e+02, float -8.875000e+02, float 0xC07D54CCC0000000, float 0xC0181EB860000000, float 0xC07D70A3E0000000, float 0xC0702BAE20000000, float 0xC08F09AE20000000, float 0xC073F51EC0000000], [16 x i32] [i32 -1094245900, i32 -1073827375, i32 -696595003, i32 572081854, i32 -1035058813, i32 -926056813, i32 1993373671, i32 1776308085, i32 1093183344, i32 486614616, i32 -1309443085, i32 1171459266, i32 -519626162, i32 -2018847328, i32 -1040352692, i32 975953354], i32 133, [16 x float] [float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xFFF0000000000000, float 0x7FF8000000000000, float 9.000000e+01, float 9.000000e+01, float 0xFFF0000000000000, float 0x7FF0000000000000, float 0xFFF0000000000000, float 0x3FF91EB860000000, float 0xC07D54CCC0000000, float 0x7FF0000000000000, float 0xC07D70A3E0000000, float -0.000000e+00, float 0xC08F09AE20000000, float 1.000000e+00] }, %struct.anon.6 { [16 x float] [float 0x4059C147A0000000, float 0xC07441EB80000000, float 0x40720A1480000000, float 0x408030B860000000, float 0x4083891EC0000000, float 0xC08A168F60000000, float 0xC07F8599A0000000, float 0x40677E1480000000, float 0x4084F43D80000000, float 0x40877CE140000000, float 0x4079235C20000000, float 0x4074978520000000, float 0xC0881D47A0000000, float 0xC0757AB860000000, float 0xC081227AE0000000, float 0xC0827170A0000000], [16 x float] [float 0xC02947AE20000000, float 0x406C5DC280000000, float 0xC050470A40000000, float 0xC0704547A0000000, float 0xC0860AF5C0000000, float 0x407C7F3340000000, float 0xC08442E140000000, float 0x4087AF0A40000000, float 0x4081C399A0000000, float 0xC05D6A3D80000000, float 0xC06F047AE0000000, float 0xC08C34B860000000, float 0x40837CCCC0000000, float 0xC06E2B3340000000, float 0xC06BBD70A0000000, float 0xC07115EB80000000], [16 x i32] [i32 1828420985, i32 -1172443400, i32 1241510139, i32 -1305868526, i32 674878684, i32 434779727, i32 -1722608364, i32 -512307352, i32 1162703180, i32 1543465568, i32 1839529818, i32 -501232122, i32 -234202717, i32 -1559497585, i32 1899781641, i32 2052240174], i32 36, [16 x float] [float 9.000000e+01, float 5.000000e-01, float -1.000000e+00, float 0x7FF8000000000000, float 0.000000e+00, float 0x407C7F3340000000, float -1.000000e+00, float 0x47EFFFFFE0000000, float 0xFFF0000000000000, float 5.000000e-01, float 0x3FF91EB860000000, float 0x7FF8000000000000, float 0xC7EFFFFFE0000000, float 0x7FF8000000000000, float 0xC06BBD70A0000000, float 1.000000e+00] }, %struct.anon.6 { [16 x float] [float 0x407B287AE0000000, float 0xC08D2A3D80000000, float 0xC0879A3D80000000, float 0x404DD70A40000000, float 0xC08800CCC0000000, float 0xC07039EB80000000, float 0xC087830A40000000, float 0x408C3370A0000000, float 0xC07FC02900000000, float 0x40844EA3E0000000, float 0x406CFCCCC0000000, float 0xC0717AB860000000, float 0xC085AECCC0000000, float 0x40855CB860000000, float 0x4060447AE0000000, float 0x40725851E0000000], [16 x float] [float 0xC0565EB860000000, float 0xC08D37C280000000, float 0xC08E367AE0000000, float 0x4069A51EC0000000, float 0x408047D700000000, float 0xC083395C20000000, float 0xC0427AE140000000, float 0x40565AE140000000, float 0x4070B2B860000000, float 0x4086573340000000, float 0x40675A8F60000000, float 0xC05B4EB860000000, float 0xC0807399A0000000, float 0x408E2747A0000000, float 0x40834B3340000000, float 0x408C60A3E0000000], [16 x i32] [i32 1692385033, i32 -992902210, i32 -173608878, i32 -639127479, i32 -1367543131, i32 2116073808, i32 -1862700436, i32 454408210, i32 897578103, i32 -889630600, i32 -1967153343, i32 -178018736, i32 -391913320, i32 90686361, i32 1217749046, i32 -1872516584], i32 159, [16 x float] [float 0xFFF0000000000000, float 0xFFF0000000000000, float 0x7FF0000000000000, float 0x3FF91EB860000000, float 1.000000e+00, float 0x47EFFFFFE0000000, float 0xC087830A40000000, float 0x40565AE140000000, float 0x7FF8000000000000, float 9.000000e+01, float 0.000000e+00, float 0x7FF0000000000000, float 0.000000e+00, float 0x40855CB860000000, float 0xFFF0000000000000, float -1.000000e+00] }, %struct.anon.6 { [16 x float] [float 0xC08E42F5C0000000, float 0x408AF0F5C0000000, float 0xC0401EB860000000, float 0xC08703C280000000, float 0xC078D82900000000, float 0x406AEBD700000000, float 0xC08A1051E0000000, float 0x40579EB860000000, float 0xC060D999A0000000, float 0x4078DDC280000000, float 0x4089767AE0000000, float 0x40656B3340000000, float 0x40545CCCC0000000, float 0xC04B866660000000, float 0xC080B90A40000000, float 0x408EFFD700000000], [16 x float] [float 0x4023F5C280000000, float 0xC07F5F0A40000000, float 0x4068A42900000000, float 0xC07D50A3E0000000, float 0xC05D470A40000000, float 0xC08A3EA3E0000000, float 0x4083630A40000000, float 0xC08A8F99A0000000, float 0x408B588F60000000, float 0xC0681947A0000000, float 0x404468F5C0000000, float 0xC0845B1EC0000000, float 0xC06C7C2900000000, float 0xC0755C7AE0000000, float 0xC0873A7AE0000000, float -1.962500e+02], [16 x i32] [i32 1960951603, i32 -1358978978, i32 -559717818, i32 -607762622, i32 1088433418, i32 -1501006195, i32 -1086919648, i32 47643599, i32 427276218, i32 -1647872425, i32 461073368, i32 -1124711758, i32 -33695889, i32 1839433037, i32 1076746609, i32 -1891433516], i32 187, [16 x float] [float -0.000000e+00, float 0x47EFFFFFE0000000, float 0x3FF91EB860000000, float 5.000000e-01, float 0xC078D82900000000, float 0xFFF0000000000000, float 5.000000e-01, float 0x7FF8000000000000, float 0x408B588F60000000, float 0x3FF91EB860000000, float 0x404468F5C0000000, float 9.000000e+01, float 0x3FF91EB860000000, float 0x3FF91EB860000000, float 0xC080B90A40000000, float 0xC7EFFFFFE0000000] }, %struct.anon.6 { [16 x float] [float 0xC07DFA8F60000000, float 0x406C0E6660000000, float 0x4050D1EB80000000, float 0x405EB5C280000000, float 0xC081815C20000000, float 0x406D27AE20000000, float 0xC0887570A0000000, float 0x4073107AE0000000, float 0xC0770E6660000000, float 0xC08E3EF5C0000000, float 0xC0805CF5C0000000, float 0x4086447AE0000000, float 0xC036EB8520000000, float -5.875000e+01, float 0x4086043D80000000, float 0x408ED88F60000000], [16 x float] [float 0x407B74F5C0000000, float 0xC05895C280000000, float 0xC07E1F8520000000, float 0xC0852E6660000000, float 0x404EEA3D80000000, float 0xC08AECB860000000, float -5.277500e+02, float 0xC04F8CCCC0000000, float 0xC04B30A3E0000000, float 0x4080088F60000000, float 0x4071D82900000000, float 0x40866DEB80000000, float 0xC089E599A0000000, float 0x4080F199A0000000, float 0xC07DE82900000000, float 0xC07345C280000000], [16 x i32] [i32 145780528, i32 -1943852070, i32 -582411667, i32 1054492401, i32 1034649035, i32 712890454, i32 -1749434148, i32 -1431740038, i32 -1414309423, i32 -231156091, i32 -506494480, i32 -1843418681, i32 2093992742, i32 2141670819, i32 -2011799539, i32 -1825390398], i32 25, [16 x float] [float 0xC07DFA8F60000000, float 9.000000e+01, float 0x3FF91EB860000000, float 0x47EFFFFFE0000000, float 0x7FF8000000000000, float 1.000000e+00, float -0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float -1.000000e+00, float 9.000000e+01, float -0.000000e+00, float 0.000000e+00, float 0x7FF8000000000000] }, %struct.anon.6 { [16 x float] [float 0xC06D2B3340000000, float 0x4082661480000000, float 0x408973D700000000, float 0x4069CF5C20000000, float -1.780000e+02, float 0xC08E4199A0000000, float -4.885000e+02, float 0x407C51C280000000, float 0xC08D408F60000000, float 0xC0283851E0000000, float 0x4064B51EC0000000, float 0x40448147A0000000, float 0x408D091EC0000000, float 0xC06039EB80000000, float 0x403C147AE0000000, float 0x4077070A40000000], [16 x float] [float 0x40881EE140000000, float 0x408110CCC0000000, float 0x4085951EC0000000, float 0xC064C9EB80000000, float 0x4085641480000000, float 0xC08A28E140000000, float 0x408814B860000000, float 0xC0771DEB80000000, float 0x40851FC280000000, float 0x404C0CCCC0000000, float 0xC084611EC0000000, float 0x408A7A1480000000, float 0xC0791B3340000000, float 0xC06054CCC0000000, float 0xC07CD199A0000000, float 0x4076CF3340000000], [16 x i32] [i32 -1399753028, i32 -1097965321, i32 810659082, i32 481108088, i32 2073777261, i32 1979953844, i32 -1962330766, i32 -685094885, i32 -1232880706, i32 628363547, i32 928433599, i32 1397949414, i32 198111063, i32 327340449, i32 580815623, i32 -1829123885], i32 131, [16 x float] [float 1.000000e+00, float 5.000000e-01, float 0x7FF8000000000000, float 9.000000e+01, float -0.000000e+00, float 0xFFF0000000000000, float 0.000000e+00, float -0.000000e+00, float 5.000000e-01, float 0x7FF8000000000000, float -0.000000e+00, float 0x7FF0000000000000, float 5.000000e-01, float 0x7FF8000000000000, float 0x7FF8000000000000, float -1.000000e+00] }], align 16
@.str.46 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_ps(test_vec[0].r)\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_ps(test_vec[1].r)\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_ps(test_vec[2].r)\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_ps(test_vec[3].r)\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_ps(test_vec[4].r)\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_ps(test_vec[5].r)\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_ps(test_vec[6].r)\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_ps(test_vec[7].r)\00", align 1
@test_simde_mm512_mask_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.7] [%struct.anon.7 { [16 x float] [float 0x7FF8000000000000, float 0x40270A3D80000000, float 0x7FF8000000000000, float 0x408D0D8520000000, float 0xC064870A40000000, float 0xC084F9C280000000, float 0xC07524F5C0000000, float 0xC08D7B0A40000000, float 0xC069933340000000, float 0xC06E4D1EC0000000, float 0xC06338F5C0000000, float 0xC0772970A0000000, float 0xC08C7F70A0000000, float 0x40673B8520000000, float 0x408E8D70A0000000, float 0xC081E68F60000000], i16 21745, [16 x float] [float 0x4082CC7AE0000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x4062EFAE20000000, float 0xC08077C280000000, float 0x4084CB5C20000000, float 0xC06C97AE20000000, float 0xC07B0970A0000000, float 0xC08AE8CCC0000000, float 0x408D4BD700000000, float 0xC06AAA8F60000000, float 0x4054EAE140000000, float -6.975000e+01, float 0xC08D96F5C0000000, float 0x40774D70A0000000, float 0x40619B3340000000], [16 x i32] [i32 313384799, i32 1572283312, i32 1410692939, i32 -479587817, i32 -648402442, i32 -989262257, i32 1641939429, i32 1739968520, i32 1601790639, i32 -792972923, i32 -1071328600, i32 -610038044, i32 129301943, i32 -238240500, i32 -950883649, i32 690882426], i32 105, [16 x float] [float 0x4082CC7AE0000000, float 0x40270A3D80000000, float 0x7FF8000000000000, float 0x408D0D8520000000, float -1.000000e+00, float 9.000000e+01, float 0xC06C97AE20000000, float -0.000000e+00, float 0xC069933340000000, float 0xC06E4D1EC0000000, float 0xC06338F5C0000000, float 0xC0772970A0000000, float -0.000000e+00, float 0x40673B8520000000, float 9.000000e+01, float 0xC081E68F60000000] }, %struct.anon.7 { [16 x float] [float 0x40502999A0000000, float 0x408E5B1EC0000000, float 0x4051A33340000000, float 0x408C2370A0000000, float 0xC085DEA3E0000000, float 0x4086E1D700000000, float 0x408DE86660000000, float 0x4057E47AE0000000, float 0xC07FE2B860000000, float 0xC06897AE20000000, float 0x4086A7D700000000, float 0xC07A6199A0000000, float 0x408EE8F5C0000000, float 0x4085F547A0000000, float 0x401451EB80000000, float 0x40827570A0000000], i16 17880, [16 x float] [float 0x4018E147A0000000, float 0xC066E28F60000000, float 0xC0701D47A0000000, float 4.792500e+02, float 0xC0802D47A0000000, float 0x40800B70A0000000, float 0xC08DCACCC0000000, float 0xC077AC2900000000, float 0x407C2EB860000000, float 0xC064D5C280000000, float 0x40860747A0000000, float 0xC08356B860000000, float 0xC05C633340000000, float 7.775000e+01, float 0x4080502900000000, float 0x408DB8CCC0000000], [16 x i32] [i32 -484998722, i32 -462291903, i32 -1948177961, i32 -62264016, i32 816187614, i32 -46718513, i32 -744185782, i32 1293516174, i32 1060122878, i32 52666668, i32 -91290422, i32 -789128974, i32 -1358848544, i32 145504446, i32 1742491865, i32 -877333043], i32 37, [16 x float] [float 0x40502999A0000000, float 0x408E5B1EC0000000, float 0x4051A33340000000, float 0xC7EFFFFFE0000000, float 0xC085DEA3E0000000, float 0x4086E1D700000000, float 0x7FF8000000000000, float 0x3FF91EB860000000, float 0x7FF8000000000000, float 0xC06897AE20000000, float 0xC7EFFFFFE0000000, float 0xC07A6199A0000000, float 0x408EE8F5C0000000, float 0x4085F547A0000000, float 0x7FF0000000000000, float 0x40827570A0000000] }, %struct.anon.7 { [16 x float] [float 0x4048933340000000, float 0xC079770A40000000, float 0x408A9C2900000000, float 0x4075D51EC0000000, float 0xC0851999A0000000, float 0x4089448F60000000, float 0xC08158E140000000, float 0xC0672C2900000000, float 0xC07842B860000000, float 0xC089F10A40000000, float 0x40788851E0000000, float 0xC078F0CCC0000000, float 0x408B443D80000000, float 0xC082D31EC0000000, float 0xC08942F5C0000000, float -1.212500e+02], i16 11654, [16 x float] [float 0x406AD0F5C0000000, float 0xC0508D70A0000000, float -6.420000e+02, float 0x4085C6E140000000, float 0xC081463D80000000, float 0xC0829ACCC0000000, float 0xC0854F3340000000, float 0x408C111EC0000000, float 0x406DBF0A40000000, float 0xC08E87EB80000000, float 0xC0868599A0000000, float 0xC08B5CA3E0000000, float 0x40593147A0000000, float 0x40890A8F60000000, float 0xC08CE3EB80000000, float 0xC08A90A3E0000000], [16 x i32] [i32 -466464683, i32 1102849099, i32 -169960204, i32 -147940277, i32 -2125985883, i32 594941294, i32 -351822879, i32 1125748205, i32 690441182, i32 1667949679, i32 -866563712, i32 -1966897179, i32 -66385010, i32 35619105, i32 183314205, i32 -1840445772], i32 81, [16 x float] [float 0x4048933340000000, float 0xC0508D70A0000000, float 0x7FF0000000000000, float 0x4075D51EC0000000, float 0xC0851999A0000000, float 0x4089448F60000000, float 0xC08158E140000000, float 0xFFF0000000000000, float 0x7FF8000000000000, float 0xC089F10A40000000, float 9.000000e+01, float 1.000000e+00, float 0x408B443D80000000, float 0xC082D31EC0000000, float 0xC08942F5C0000000, float -1.212500e+02] }, %struct.anon.7 { [16 x float] [float 0xC082F0F5C0000000, float 0x408CF851E0000000, float 0x407F33D700000000, float 0xC0719547A0000000, float 0x4086FCE140000000, float 0x408D810A40000000, float 0x4080AA6660000000, float 0xC084647AE0000000, float -8.860000e+02, float 0xC0528B8520000000, float 0xC049CE1480000000, float 0x408ED43D80000000, float 0x407436E140000000, float 0x40618051E0000000, float 0xC060D70A40000000, float 0xC07CE0A3E0000000], i16 9817, [16 x float] [float 0xC08CF18520000000, float 0x406BE8F5C0000000, float 0xC087E970A0000000, float 0xC07DEF8520000000, float 0x40839F70A0000000, float 0xC07BF147A0000000, float 0xC08226A3E0000000, float 0xC060C33340000000, float 0xC07A80F5C0000000, float 0xC072D87AE0000000, float 0xC0235C2900000000, float 0x408525AE20000000, float 0xC07F438520000000, float 0x4050751EC0000000, float 0x4089D4F5C0000000, float 0xC05A95C280000000], [16 x i32] [i32 2104482084, i32 1761891493, i32 -361458977, i32 -1368615538, i32 -2049603177, i32 -510948973, i32 -682173156, i32 -1040339043, i32 775842952, i32 -1600699711, i32 1669991380, i32 940701345, i32 331212415, i32 -1946924689, i32 -1016903130, i32 -2121965319], i32 205, [16 x float] [float 0x3FF91EB860000000, float 0x408CF851E0000000, float 0x407F33D700000000, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x408D810A40000000, float -0.000000e+00, float 0xC084647AE0000000, float -8.860000e+02, float 0xC0528B8520000000, float 0x7FF8000000000000, float 0x408ED43D80000000, float 0x407436E140000000, float 0.000000e+00, float 0xC060D70A40000000, float 0xC07CE0A3E0000000] }, %struct.anon.7 { [16 x float] [float 0xC01C851EC0000000, float 0x40745DC280000000, float 0x408322B860000000, float 0xC070F851E0000000, float 0x4070DFD700000000, float 0x4062347AE0000000, float 0x4052FA3D80000000, float 0x4077FFD700000000, float 0xC08D0451E0000000, float 0xC08E7D99A0000000, float 0x40772851E0000000, float 0x4078AE3D80000000, float 0x406489EB80000000, float 0xC087E18520000000, float 0x408D26B860000000, float 0x406DC3D700000000], i16 17926, [16 x float] [float 0x407CB147A0000000, float 0xC08A02B860000000, float 0x4087B93340000000, float 0x4055C0A3E0000000, float 0xC071768F60000000, float 0xC089AD8520000000, float 0x408DC747A0000000, float 0x40728851E0000000, float 0xC05ECE1480000000, float 0xC04C628F60000000, float 0xC03AC51EC0000000, float 0x4077891EC0000000, float 0xC08EF770A0000000, float 0xC06904CCC0000000, float 0xC086CE2900000000, float 0x3FFF0A3D80000000], [16 x i32] [i32 -1202529746, i32 1320153917, i32 -382456277, i32 892511297, i32 -1837148113, i32 -1594656741, i32 -1453014790, i32 2096130638, i32 -2110504380, i32 1624302389, i32 1397294354, i32 -662078551, i32 -278198061, i32 2072993409, i32 1814360862, i32 -1561848739], i32 86, [16 x float] [float 0xC01C851EC0000000, float 0x47EFFFFFE0000000, float 0x47EFFFFFE0000000, float 0xC070F851E0000000, float 0x4070DFD700000000, float 0x4062347AE0000000, float 0x4052FA3D80000000, float 0x4077FFD700000000, float 0xC08D0451E0000000, float 0xC08E7D99A0000000, float 0x7FF8000000000000, float 0x4078AE3D80000000, float 0x406489EB80000000, float 0xC087E18520000000, float 9.000000e+01, float 0x406DC3D700000000] }, %struct.anon.7 { [16 x float] [float 0xC08B5251E0000000, float 0x408B948F60000000, float 0x4086D35C20000000, float 0x4078BB3340000000, float 0x403C333340000000, float 0xC0683570A0000000, float 0xC06B89EB80000000, float 0x4058EA3D80000000, float 0xC0652BD700000000, float 0xC08A8E3D80000000, float 0xC07F973340000000, float 0x408F1799A0000000, float 0xC0832FD700000000, float 0xC081E4CCC0000000, float 0x406D223D80000000, float 0x408A68E140000000], i16 -3072, [16 x float] [float 0xC0794F0A40000000, float 0xC01F28F5C0000000, float 0xC050F851E0000000, float 0x4073BA3D80000000, float 0x406550F5C0000000, float 0xC05CBE1480000000, float 0xC0783D47A0000000, float 0xC08DC58520000000, float 0x4089E21480000000, float 0x40824B1EC0000000, float 0x407A7E1480000000, float 0x408A2AA3E0000000, float 0xC083361480000000, float 0x4085B0E140000000, float 0xC064175C20000000, float 0xC07E90CCC0000000], [16 x i32] [i32 905515756, i32 -290348443, i32 -419986309, i32 54818931, i32 402023155, i32 -1238608690, i32 450003702, i32 -99692018, i32 1244596452, i32 624484522, i32 -670355611, i32 -1696903257, i32 2142425777, i32 473292326, i32 1849034848, i32 -1083685670], i32 76, [16 x float] [float 0xC08B5251E0000000, float 0x408B948F60000000, float 0x4086D35C20000000, float 0x4078BB3340000000, float 0x403C333340000000, float 0xC0683570A0000000, float 0xC06B89EB80000000, float 0x4058EA3D80000000, float 0xC0652BD700000000, float 0xC08A8E3D80000000, float 0x3FF91EB860000000, float 0x408F1799A0000000, float 0xC7EFFFFFE0000000, float 0x4085B0E140000000, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000] }, %struct.anon.7 { [16 x float] [float 0x4082055C20000000, float 0xC07AE51EC0000000, float 0x408C553340000000, float 0xC078B1EB80000000, float 0x4077802900000000, float 0xC0739A8F60000000, float 0x40860451E0000000, float 0xC088CAE140000000, float 0xC0646E1480000000, float 0xC0890747A0000000, float 0xC088F347A0000000, float 0x406BD28F60000000, float 0xC0775851E0000000, float 0x407B2A6660000000, float 0x4050EB8520000000, float 0x406BB147A0000000], i16 16760, [16 x float] [float 0xC081E90A40000000, float 0x408F3E6660000000, float 0xC07CED1EC0000000, float 0x4082AB3340000000, float 0xC05CCAE140000000, float 0x4062AB3340000000, float 0x408425AE20000000, float 0xC071EE6660000000, float 0xC070942900000000, float 0x4051251EC0000000, float 0xC07C191EC0000000, float 0x405DFEB860000000, float 0xC06DA9EB80000000, float 0x40785B0A40000000, float 0x4083B770A0000000, float 0xC084A51EC0000000], [16 x i32] [i32 678550812, i32 -1854465866, i32 1700997555, i32 -565999192, i32 -605641819, i32 2048966674, i32 -2012058497, i32 -2134209693, i32 514341736, i32 112205651, i32 -244640952, i32 1120906909, i32 1679734098, i32 -169984395, i32 243134890, i32 -460437636], i32 130, [16 x float] [float 0x4082055C20000000, float 0xC07AE51EC0000000, float 0x408C553340000000, float 0x3FF91EB860000000, float 5.000000e-01, float -0.000000e+00, float 0.000000e+00, float 0xC088CAE140000000, float 0x47EFFFFFE0000000, float 0xC0890747A0000000, float 0xC088F347A0000000, float 0x406BD28F60000000, float 0xC0775851E0000000, float 0x407B2A6660000000, float 0x4050EB8520000000, float 0x406BB147A0000000] }, %struct.anon.7 { [16 x float] [float 0x408DFAF5C0000000, float 0x4080CCA3E0000000, float 0xC04BE147A0000000, float 0x4074F63D80000000, float 0xC08840A3E0000000, float 0xC075F3AE20000000, float 0x4080F03D80000000, float 0x404E3D70A0000000, float 0xC063047AE0000000, float 0x40873CF5C0000000, float 0xC086678520000000, float 0x407DA570A0000000, float 0x406648A3E0000000, float 0x4075EBD700000000, float 0xC07301C280000000, float 0x4082E91EC0000000], i16 -19627, [16 x float] [float 0x4075E8A3E0000000, float 0x406D223D80000000, float 0x40695147A0000000, float 0xC087E4F5C0000000, float 0xC0834CA3E0000000, float 0xC0631851E0000000, float 0xC049C3D700000000, float 0x405D4A3D80000000, float 0x408C9E8F60000000, float 0x407F2E6660000000, float 0xC087D6E140000000, float 0xC07417D700000000, float 0xC05BDA3D80000000, float 0x408B20A3E0000000, float 0x4031DEB860000000, float 0xC06300F5C0000000], [16 x i32] [i32 1220976348, i32 1593205647, i32 -1005369178, i32 -1962768212, i32 -75715459, i32 1212348602, i32 -545339940, i32 2006111387, i32 29317490, i32 1650439868, i32 -1423543554, i32 2016815354, i32 -1888242987, i32 -2032618070, i32 359028346, i32 -1668417494], i32 81, [16 x float] [float 0xFFF0000000000000, float 0x4080CCA3E0000000, float 9.000000e+01, float 0x4074F63D80000000, float 5.000000e-01, float 0xC075F3AE20000000, float 0xC7EFFFFFE0000000, float 0x404E3D70A0000000, float 0xC063047AE0000000, float 0x7FF0000000000000, float 0xC086678520000000, float 0x407DA570A0000000, float 0xC7EFFFFFE0000000, float 0.000000e+00, float 0xC07301C280000000, float 9.000000e+01] }], align 16
@test_simde_mm512_maskz_fixupimm_ps.test_vec = internal constant [8 x %struct.anon.8] [%struct.anon.8 { i16 4530, [16 x float] [float 0x7FF8000000000000, float 0xC08C9CB860000000, float 0x7FF8000000000000, float 0xC0831EF5C0000000, float 0x408E6770A0000000, float 0xC0770E6660000000, float 0x4066951EC0000000, float 0x40727A6660000000, float 0xC0752FD700000000, float 0xC07801EB80000000, float 0xC0700B0A40000000, float 0xC05D3999A0000000, float 3.360000e+02, float 0x4087F9EB80000000, float 0x407537D700000000, float 0xC08842E140000000], [16 x float] [float 0x407AA51EC0000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x40690BD700000000, float 0x40674BD700000000, float 0x4069747AE0000000, float 0xC0795CCCC0000000, float 0x40794A3D80000000, float 0x408AE08F60000000, float 0x40868B1EC0000000, float 0xC08A2B99A0000000, float 0xC0155C2900000000, float 0x4079D02900000000, float 0xC0635D70A0000000, float 0xC08D6AB860000000, float 0xC071307AE0000000], [16 x i32] [i32 -156968499, i32 704587896, i32 -2049974577, i32 866252229, i32 -574602056, i32 1633063746, i32 2001845234, i32 1971848104, i32 1416310236, i32 612264533, i32 246041929, i32 -79541438, i32 -774372721, i32 -2009976938, i32 -1828748310, i32 1661438087], i32 181, [16 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FF91EB860000000, float 0x7FF0000000000000, float 0.000000e+00, float -0.000000e+00, float 0x7FF0000000000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FF91EB860000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.8 { i16 14045, [16 x float] [float 0xC051A0A3E0000000, float 0xC0766F0A40000000, float 0x405C466660000000, float 0xC05865C280000000, float 0x4071028F60000000, float -7.062500e+02, float 0xC0890F8520000000, float 0x408D2970A0000000, float 0xC056970A40000000, float 0xC04D50A3E0000000, float 0xC066F70A40000000, float 0xC08792E140000000, float 0xC072363D80000000, float 0xC08A61D700000000, float 0xC08095C280000000, float 0xC08B088F60000000], [16 x float] [float 0xC05038F5C0000000, float 0xC061FF5C20000000, float 0x4074F4CCC0000000, float 0xC08B742900000000, float 0xC08D62B860000000, float 9.295000e+02, float 0x408070F5C0000000, float 0x408CBDEB80000000, float 0x4084571EC0000000, float 0x4085855C20000000, float 0xC055670A40000000, float 0x404FF33340000000, float -4.662500e+02, float 0xC03AF33340000000, float 0x4088A6F5C0000000, float 0x407CF3AE20000000], [16 x i32] [i32 -662493650, i32 1998833205, i32 -1720077631, i32 -1245180029, i32 -1757826409, i32 1277149252, i32 -608185309, i32 202480862, i32 -119171645, i32 477038683, i32 1052108987, i32 -1879802120, i32 1965436208, i32 281101805, i32 -135495655, i32 -553321188], i32 146, [16 x float] [float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0x7FF0000000000000, float -0.000000e+00, float 0.000000e+00, float 0x3FF91EB860000000, float 0x408D2970A0000000, float 0.000000e+00, float 0x4085855C20000000, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x7FF0000000000000, float 0xC08A61D700000000, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.8 { i16 18161, [16 x float] [float 0x408330E140000000, float 0xC058828F60000000, float 0xC083D2CCC0000000, float 0xC05C6EB860000000, float 0x406876B860000000, float 0xC07B44A3E0000000, float 0xC06691EB80000000, float 0xC08BF53340000000, float 0x407F9147A0000000, float 0x4083DDC280000000, float 0xC084481480000000, float 0xC088927AE0000000, float 0x4088BBEB80000000, float 0xC066775C20000000, float 0xC0845B0A40000000, float 0xC071163D80000000], [16 x float] [float 0x40852251E0000000, float 0x40855F5C20000000, float 0xC062FD1EC0000000, float 0x4086FF99A0000000, float 0x40832B47A0000000, float 0xC0838E51E0000000, float 0x40847D8520000000, float 0x407084CCC0000000, float 0xC08D48F5C0000000, float 0xC07ADEB860000000, float 0xC084FE6660000000, float 0xC07935EB80000000, float 0x4080F90A40000000, float 0xC08B978520000000, float 0xC08D611EC0000000, float 0x4063A7AE20000000], [16 x i32] [i32 -1087394807, i32 -549640213, i32 -586388042, i32 -1557988894, i32 -182240247, i32 938688563, i32 -148863713, i32 2084377203, i32 -1455723330, i32 1250457747, i32 -936930074, i32 -1754510963, i32 -1181970555, i32 -269451313, i32 2028343557, i32 -504093917], i32 144, [16 x float] [float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0xC7EFFFFFE0000000, float -0.000000e+00, float 0xC7EFFFFFE0000000, float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.8 { i16 5032, [16 x float] [float 0x4033051EC0000000, float 0xC081F3EB80000000, float -9.565000e+02, float 0xC0888A1480000000, float 0xC0258F5C20000000, float 0xC0612199A0000000, float 0xC0853F47A0000000, float 0xC07F9B5C20000000, float 0xC07F5547A0000000, float 0xC0748EB860000000, float 0xC0724051E0000000, float 0xC0862EB860000000, float 0x407EB570A0000000, float 0x404C4CCCC0000000, float 0x4030C51EC0000000, float 0x4064F42900000000], [16 x float] [float 0xC07037AE20000000, float 0x408B06E140000000, float 0xC0581A3D80000000, float 0xC084308F60000000, float 0xC087C770A0000000, float 0xC07B8B8520000000, float 0x408351D700000000, float 0xC085D06660000000, float 0x40602B8520000000, float 0x408D935C20000000, float 0xC0595AE140000000, float 0xC074782900000000, float 0xC08D442900000000, float 0xC044C7AE20000000, float 0x4089EDD700000000, float 0x4054A0A3E0000000], [16 x i32] [i32 -1800892819, i32 -1008847529, i32 1498571724, i32 232268316, i32 -148972271, i32 1243234645, i32 -1384469982, i32 1002513102, i32 147876273, i32 1808510622, i32 784604433, i32 1346083903, i32 -817407622, i32 -1139187046, i32 -630549748, i32 1729506230], i32 148, [16 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FF91EB860000000, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0xC07F5547A0000000, float 0x7FF0000000000000, float 0.000000e+00, float 0.000000e+00, float 0xC7EFFFFFE0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.8 { i16 14996, [16 x float] [float 0x4077FF3340000000, float 0x408B49D700000000, float 2.972500e+02, float 0xC08396A3E0000000, float 0xC0707D1EC0000000, float 0x40834AA3E0000000, float 0xC0609147A0000000, float 0x406D5B3340000000, float 0xC0863CB860000000, float 0x4081FB99A0000000, float 0x4080681480000000, float 7.797500e+02, float 0xC076FF5C20000000, float 0xC07CA38520000000, float 0xC04A4E1480000000, float 0x407748F5C0000000], [16 x float] [float 0xC0828AF5C0000000, float 0x408A97C280000000, float 0x4086B3EB80000000, float 0xC07624CCC0000000, float -5.897500e+02, float 0x40758B8520000000, float 0xC04A2CCCC0000000, float 0x4080DCE140000000, float 0x4072323D80000000, float 0x408A71D700000000, float 0xC0889F3340000000, float 0x407629EB80000000, float 0xC0686A8F60000000, float 0xC08DF15C20000000, float 0xC08196F5C0000000, float 0xC0895AF5C0000000], [16 x i32] [i32 1633133981, i32 251566035, i32 795310311, i32 1636892999, i32 687119806, i32 -1907119496, i32 -2139822319, i32 -1212544999, i32 -2129128787, i32 -1869670743, i32 -692062322, i32 -1237888776, i32 1725836270, i32 -403426858, i32 845703192, i32 501817968], i32 52, [16 x float] [float 0.000000e+00, float 0.000000e+00, float 0x7FF8000000000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0xFFF0000000000000, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.8 { i16 11800, [16 x float] [float 0x408C987AE0000000, float 0x4086F30A40000000, float 0xC07B633340000000, float 0xC075CC2900000000, float 0x4075FB5C20000000, float 0x407AD42900000000, float 0x408BB0B860000000, float 0x408400F5C0000000, float 0x4012D70A40000000, float 0x4079B199A0000000, float 0x407A3DEB80000000, float 6.367500e+02, float 0x408DC70A40000000, float 0xC083C5EB80000000, float 0x40229EB860000000, float 0xC08403EB80000000], [16 x float] [float 0xC0886E2900000000, float 0xC070833340000000, float 0x4014D70A40000000, float 0xC077382900000000, float 0xC08CBBD700000000, float 0x408DC6E140000000, float 0xC089FF3340000000, float 0x40773A8F60000000, float 0x4088F8B860000000, float 0xC0835E6660000000, float 0xC0711B8520000000, float 0xC078C3D700000000, float 0xC0820FC280000000, float 0x40646D1EC0000000, float 0xC069F38520000000, float 0xC084B747A0000000], [16 x i32] [i32 757442158, i32 -1283580548, i32 -1293980460, i32 -958089774, i32 70188188, i32 388472366, i32 1511611323, i32 -1484246727, i32 1423224279, i32 -1643687222, i32 -1873680706, i32 945173915, i32 1614578737, i32 -562601182, i32 -130510657, i32 -1717583679], i32 109, [16 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x407A3DEB80000000, float 0.000000e+00, float 0.000000e+00, float 0x3FF91EB860000000, float 0.000000e+00, float 0.000000e+00] }, %struct.anon.8 { i16 -2874, [16 x float] [float 0xC0598D70A0000000, float 0x4076230A40000000, float 0xC02751EB80000000, float -7.505000e+02, float 0xC06B1199A0000000, float 0xC05F647AE0000000, float 0x408BCCF5C0000000, float 0x4088A147A0000000, float 0xC08653C280000000, float 3.095000e+02, float 0x407A8E8F60000000, float 0xC087CCB860000000, float 0x4085261480000000, float 0xC081AE2900000000, float 0xC0792147A0000000, float 0x408BF7EB80000000], [16 x float] [float 0x406540F5C0000000, float 0x4082D90A40000000, float 0xC07DC851E0000000, float 0x406F5199A0000000, float 0x40815FEB80000000, float 0xC07346B860000000, float 0xC0779CA3E0000000, float 0x40763147A0000000, float 0x4051F1EB80000000, float 0x4075C7D700000000, float 0x408DF6CCC0000000, float 0x407EDCF5C0000000, float 0xC07E8199A0000000, float 0xC06F1851E0000000, float 0x4089F73340000000, float 0x40799B0A40000000], [16 x i32] [i32 668697814, i32 1801221653, i32 -336556626, i32 1699615469, i32 687148528, i32 -1528252667, i32 1025004880, i32 1664212621, i32 2005535842, i32 837019267, i32 1629279091, i32 -691639323, i32 2130623352, i32 -1037899918, i32 -906020292, i32 2066493720], i32 61, [16 x float] [float 0.000000e+00, float 0x7FF0000000000000, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FF91EB860000000, float 0x7FF0000000000000, float 0.000000e+00, float 0.000000e+00, float 0x7FF0000000000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0x7FF8000000000000, float 9.000000e+01, float -0.000000e+00] }, %struct.anon.8 { i16 -10852, [16 x float] [float 0xC08BF4A3E0000000, float 0xC0669851E0000000, float 0x4084998520000000, float 0xC05BC7AE20000000, float 0x4085AD5C20000000, float 0x4081268F60000000, float 0xC0742F5C20000000, float 0x408E9999A0000000, float 0xC061B61480000000, float 0xC08C106660000000, float 0xC088733340000000, float 0xC07D0EE140000000, float 0xC07CFD1EC0000000, float 0xC0670F5C20000000, float 0xC081CF70A0000000, float 0x40861199A0000000], [16 x float] [float 0xC0822ACCC0000000, float 0xC0473AE140000000, float -4.325000e+01, float 0x408E751EC0000000, float 0x408428F5C0000000, float 0x408217AE20000000, float 0x40749BAE20000000, float 0xC071B1C280000000, float 0xC052233340000000, float 0x4072091EC0000000, float 0xC088AA6660000000, float 0x407B7599A0000000, float 0xC08E018520000000, float 0xC08DF33340000000, float 0xC062DEB860000000, float 0xC08AB62900000000], [16 x i32] [i32 245895410, i32 930713201, i32 1660088932, i32 -1840683664, i32 667780647, i32 2086200655, i32 1395823968, i32 1210634070, i32 1347867103, i32 -1014509473, i32 841316802, i32 113536990, i32 1143837173, i32 -675248777, i32 1881862938, i32 -1581755454], i32 36, [16 x float] [float 0.000000e+00, float 0.000000e+00, float 0x7FF8000000000000, float -1.000000e+00, float 0x7FF8000000000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0xC061B61480000000, float 0.000000e+00, float 0x7FF8000000000000, float 0.000000e+00, float 0xFFF0000000000000, float 0.000000e+00, float 0xC081CF70A0000000, float 0xC08AB62900000000] }], align 16
@test_simde_mm_fixupimm_ss.test_vec = internal constant [8 x %struct.anon.9] [%struct.anon.9 { [4 x float] [float 0x7FF8000000000000, float 0xC0813D99A0000000, float 0x7FF8000000000000, float 0x408AE02900000000], [4 x float] [float 0xC086FCF5C0000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x4088B70A40000000], [4 x i32] [i32 -1265195033, i32 140789386, i32 -1899312875, i32 -1770193656], i32 221, [4 x float] [float 0xFFF0000000000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x4088B70A40000000] }, %struct.anon.9 { [4 x float] [float 0xC081B547A0000000, float 0xC081DB3340000000, float 0xC088702900000000, float 0x406F7E1480000000], [4 x float] [float 0x4087303D80000000, float 0xC07CCF5C20000000, float 0xC060E75C20000000, float 0xC067C33340000000], [4 x i32] [i32 -1353407648, i32 1058776384, i32 -1024844325, i32 1316389060], i32 198, [4 x float] [float 1.000000e+00, float 0xC07CCF5C20000000, float 0xC060E75C20000000, float 0xC067C33340000000] }, %struct.anon.9 { [4 x float] [float 0x4084A1C280000000, float 0xC06CB23D80000000, float 0x405167AE20000000, float 0x407E2DC280000000], [4 x float] [float 0xC070D70A40000000, float 0x407F26E140000000, float 0x4081001480000000, float 0xC07B75EB80000000], [4 x i32] [i32 -1385619292, i32 -79436514, i32 -752182669, i32 2122481213], i32 36, [4 x float] [float 0x3FF91EB860000000, float 0x407F26E140000000, float 0x4081001480000000, float 0xC07B75EB80000000] }, %struct.anon.9 { [4 x float] [float 0xC082AF8520000000, float 0xC077BD99A0000000, float 0xC03B2B8520000000, float 0x40480147A0000000], [4 x float] [float 0xC06135C280000000, float 0xC06CC3D700000000, float 5.777500e+02, float 0xC087E06660000000], [4 x i32] [i32 2143398075, i32 -271763672, i32 -1211489262, i32 1650734148], i32 25, [4 x float] [float 0xC7EFFFFFE0000000, float 0xC06CC3D700000000, float 5.777500e+02, float 0xC087E06660000000] }, %struct.anon.9 { [4 x float] [float 0x406B4570A0000000, float 0x408B1E7AE0000000, float 0xC08C403D80000000, float 0x407E28CCC0000000], [4 x float] [float 0x4077635C20000000, float 0xC080C8F5C0000000, float 0x407116E140000000, float 0x40893C6660000000], [4 x i32] [i32 2120255553, i32 737993479, i32 1009433217, i32 -1967395998], i32 34, [4 x float] [float -0.000000e+00, float 0xC080C8F5C0000000, float 0x407116E140000000, float 0x40893C6660000000] }, %struct.anon.9 { [4 x float] [float 0xC05B2147A0000000, float 0x407EB68F60000000, float 0x404DBEB860000000, float 0xC076E7D700000000], [4 x float] [float 0xC08E4C51E0000000, float 0x408CE21480000000, float 0x407BB66660000000, float 0x40859570A0000000], [4 x i32] [i32 -236174164, i32 -1856810888, i32 941535735, i32 1102479162], i32 98, [4 x float] [float 0xC08E4C51E0000000, float 0x408CE21480000000, float 0x407BB66660000000, float 0x40859570A0000000] }, %struct.anon.9 { [4 x float] [float 0xC07314F5C0000000, float 0xC07E6F8520000000, float 0x4065B147A0000000, float 4.252500e+02], [4 x float] [float 0xC08EE451E0000000, float 0xC071A73340000000, float 0x408ECF0A40000000, float 0xC08253D700000000], [4 x i32] [i32 -820013459, i32 -1554392447, i32 265868130, i32 -1895775209], i32 20, [4 x float] [float 0xC7EFFFFFE0000000, float 0xC071A73340000000, float 0x408ECF0A40000000, float 0xC08253D700000000] }, %struct.anon.9 { [4 x float] [float 0x40751B3340000000, float 0xC044A51EC0000000, float 0x407CD87AE0000000, float 0xC088FFD700000000], [4 x float] [float 0x4086C4B860000000, float 0x4043A28F60000000, float 0xC081A03D80000000, float 0xC04A9EB860000000], [4 x i32] [i32 1061371653, i32 545323710, i32 436464813, i32 65610370], i32 252, [4 x float] [float 0x7FF8000000000000, float 0x4043A28F60000000, float 0xC081A03D80000000, float 0xC04A9EB860000000] }], align 16
@test_simde_mm_mask_fixupimm_ss.test_vec = internal constant [8 x %struct.anon.10] [%struct.anon.10 { [4 x float] [float 0x7FF8000000000000, float 0x4031BAE140000000, float 0x7FF8000000000000, float 0x40823A3D80000000], i8 -20, [4 x float] [float 0x4051366660000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x407522B860000000], [4 x i32] [i32 205575547, i32 -1485220724, i32 241697071, i32 -1133261982], i32 123, [4 x float] [float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0x407522B860000000] }, %struct.anon.10 { [4 x float] [float 8.172500e+02, float 0xC0509999A0000000, float 0x405A6E1480000000, float 0x4083B90A40000000], i8 17, [4 x float] [float 0x406737AE20000000, float 5.115000e+02, float 0xC08ADF8520000000, float 0x408C8E1480000000], [4 x i32] [i32 349175174, i32 -1608832262, i32 1981548449, i32 -1677514681], i32 162, [4 x float] [float 0x406737AE20000000, float 5.115000e+02, float 0xC08ADF8520000000, float 0x408C8E1480000000] }, %struct.anon.10 { [4 x float] [float 0xC070A11EC0000000, float 0xC08535C280000000, float 0x4088EBC280000000, float 0xC08B487AE0000000], i8 18, [4 x float] [float 0xC08D7E8F60000000, float 0x4066542900000000, float 0xC08C91EB80000000, float 5.322500e+02], [4 x i32] [i32 1289553625, i32 -711632446, i32 -363092243, i32 -1595576203], i32 139, [4 x float] [float 0xC070A11EC0000000, float 0x4066542900000000, float 0xC08C91EB80000000, float 5.322500e+02] }, %struct.anon.10 { [4 x float] [float 0xC063DC2900000000, float 0xC06196B860000000, float 0x408141D700000000, float 0x40742E3D80000000], i8 -95, [4 x float] [float 7.920000e+02, float 0xC08B5C3D80000000, float 0x406BDB3340000000, float 0xC086DCF5C0000000], [4 x i32] [i32 -1161110857, i32 1097100406, i32 354055951, i32 -1378326700], i32 252, [4 x float] [float 5.000000e-01, float 0xC08B5C3D80000000, float 0x406BDB3340000000, float 0xC086DCF5C0000000] }, %struct.anon.10 { [4 x float] [float 0x4061C6B860000000, float 0x4078A051E0000000, float 0x408A9D47A0000000, float 0xC088A78520000000], i8 8, [4 x float] [float 0x4084843D80000000, float 0x4084391EC0000000, float 0x408129D700000000, float 0x407D9C51E0000000], [4 x i32] [i32 1786255237, i32 -118553673, i32 1890619798, i32 -941200805], i32 207, [4 x float] [float 0x4061C6B860000000, float 0x4084391EC0000000, float 0x408129D700000000, float 0x407D9C51E0000000] }, %struct.anon.10 { [4 x float] [float 0xC07A342900000000, float 0xC07590CCC0000000, float 0x405A3A3D80000000, float 0x4087F3D700000000], i8 65, [4 x float] [float 0xC08A0C6660000000, float 0x406E9F0A40000000, float 0x408541EB80000000, float 0xC058E851E0000000], [4 x i32] [i32 -995583252, i32 -495868856, i32 1583839558, i32 -183119374], i32 193, [4 x float] [float 0xFFF0000000000000, float 0x406E9F0A40000000, float 0x408541EB80000000, float 0xC058E851E0000000] }, %struct.anon.10 { [4 x float] [float 5.662500e+02, float 0x407DDB5C20000000, float 0x403B4F5C20000000, float 0x40837370A0000000], i8 -66, [4 x float] [float 0xC0757A8F60000000, float 0x405C447AE0000000, float 0x406355C280000000, float 0x407F175C20000000], [4 x i32] [i32 -517427717, i32 1242101620, i32 -667530691, i32 -1759446286], i32 107, [4 x float] [float 5.662500e+02, float 0x405C447AE0000000, float 0x406355C280000000, float 0x407F175C20000000] }, %struct.anon.10 { [4 x float] [float 0x408E62E140000000, float 0xC0725199A0000000, float 0xC06674CCC0000000, float 0x4087E2F5C0000000], i8 106, [4 x float] [float 0xC06513D700000000, float 0xC08DE66660000000, float 0xC08E3A1480000000, float 0x408E6CB860000000], [4 x i32] [i32 1362876219, i32 1482685644, i32 -78439090, i32 1030698309], i32 61, [4 x float] [float 0x408E62E140000000, float 0xC08DE66660000000, float 0xC08E3A1480000000, float 0x408E6CB860000000] }], align 16
@test_simde_mm_maskz_fixupimm_ss.test_vec = internal constant [8 x %struct.anon.11] [%struct.anon.11 { i8 -22, [4 x float] [float 0x7FF8000000000000, float 0xC06D22E140000000, float 0x7FF8000000000000, float 0x4075207AE0000000], [4 x float] [float 0x408D51AE20000000, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC070C4A3E0000000], [4 x i32] [i32 -33940159, i32 1492514891, i32 -1015021536, i32 172015337], i32 98, [4 x float] [float 0.000000e+00, float 0x7FF8000000000000, float 0x7FF8000000000000, float 0xC070C4A3E0000000] }, %struct.anon.11 { i8 100, [4 x float] [float 0x408EC799A0000000, float 0x4083298520000000, float 0x406B023D80000000, float 0x408EF2F5C0000000], [4 x float] [float 0x408000F5C0000000, float 0x4080971EC0000000, float 0xC087C0E140000000, float 0xC08BA50A40000000], [4 x i32] [i32 -2020721377, i32 2020846749, i32 783899921, i32 1333442135], i32 172, [4 x float] [float 0.000000e+00, float 0x4080971EC0000000, float 0xC087C0E140000000, float 0xC08BA50A40000000] }, %struct.anon.11 { i8 82, [4 x float] [float 0x406F870A40000000, float 0xC08DAA1480000000, float 0x408DEF8520000000, float 0xC076587AE0000000], [4 x float] [float 0xC065475C20000000, float 0x408E40A3E0000000, float 0x407AFCF5C0000000, float 0xC06D6D70A0000000], [4 x i32] [i32 1913754930, i32 1411806111, i32 410291163, i32 -961152231], i32 110, [4 x float] [float 0.000000e+00, float 0x408E40A3E0000000, float 0x407AFCF5C0000000, float 0xC06D6D70A0000000] }, %struct.anon.11 { i8 -26, [4 x float] [float 0xC077C147A0000000, float 0x40863FD700000000, float 0x408C3C1480000000, float 0xC06E30A3E0000000], [4 x float] [float -2.912500e+02, float 0x4088B70A40000000, float 0x407561C280000000, float 0x405C60A3E0000000], [4 x i32] [i32 2140939013, i32 -497923982, i32 -1978358540, i32 690587573], i32 173, [4 x float] [float 0.000000e+00, float 0x4088B70A40000000, float 0x407561C280000000, float 0x405C60A3E0000000] }, %struct.anon.11 { i8 -14, [4 x float] [float 0xC07BA35C20000000, float 0x4084E4A3E0000000, float 0xC0812399A0000000, float -5.040000e+02], [4 x float] [float 0x40861A6660000000, float 0xC08AC53340000000, float 0x406C76B860000000, float 6.922500e+02], [4 x i32] [i32 -772976100, i32 -268543208, i32 1240785958, i32 -910396288], i32 198, [4 x float] [float 0.000000e+00, float 0xC08AC53340000000, float 0x406C76B860000000, float 6.922500e+02] }, %struct.anon.11 { i8 -78, [4 x float] [float 0x4087A451E0000000, float 0xC08161D700000000, float 0x4085550A40000000, float 0x4070CA8F60000000], [4 x float] [float 0x408E7547A0000000, float 0x408CD42900000000, float 0x4078007AE0000000, float 0x406C5C7AE0000000], [4 x i32] [i32 1899569223, i32 1307567945, i32 1902764319, i32 696859342], i32 56, [4 x float] [float 0.000000e+00, float 0x408CD42900000000, float 0x4078007AE0000000, float 0x406C5C7AE0000000] }, %struct.anon.11 { i8 109, [4 x float] [float 0x408E6A1480000000, float 0x40755F8520000000, float 0x408B2AE140000000, float 0xC0689F0A40000000], [4 x float] [float 0x407360CCC0000000, float 0x4072D2B860000000, float 0x4081BCE140000000, float 0x408D0FD700000000], [4 x i32] [i32 1440849049, i32 603170661, i32 829072657, i32 -965026849], i32 202, [4 x float] [float 0x7FF0000000000000, float 0x4072D2B860000000, float 0x4081BCE140000000, float 0x408D0FD700000000] }, %struct.anon.11 { i8 48, [4 x float] [float 0x402A4CCCC0000000, float 0x407D71EB80000000, float 0xC07378A3E0000000, float 0x40868F1EC0000000], [4 x float] [float 2.620000e+02, float 0xC08E4B8520000000, float 0xC06492E140000000, float 0x40899E51E0000000], [4 x i32] [i32 -529893033, i32 -229006686, i32 1535887038, i32 1321263271], i32 211, [4 x float] [float 0.000000e+00, float 0xC08E4B8520000000, float 0xC06492E140000000, float 0x40899E51E0000000] }], align 16
@test_simde_mm_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.12] [%struct.anon.12 { [2 x double] [double 3.508200e+02, double 2.161800e+02], [2 x double] [double -2.856000e+02, double -9.022100e+02], [2 x i64] [i64 620105188463929266, i64 237548509961701354], i32 128, [2 x double] [double -1.000000e+00, double -1.000000e+00] }, %struct.anon.12 { [2 x double] [double -6.313400e+02, double 1.602000e+01], [2 x double] [double -9.218600e+02, double 0x4086731EB851EB85], [2 x i64] [i64 2500124996503287191, i64 8038052891779102241], i32 173, [2 x double] [double 0xFFF0000000000000, double 0.000000e+00] }, %struct.anon.12 { [2 x double] [double 5.283000e+01, double 2.953900e+02], [2 x double] [double 0xC0576147AE147AE1, double 3.624500e+02], [2 x i64] [i64 -8514580718024667197, i64 -2672496358120718762], i32 217, [2 x double] [double 1.000000e+00, double 9.000000e+01] }, %struct.anon.12 { [2 x double] [double -9.784500e+02, double 4.954300e+02], [2 x double] [double -5.749400e+02, double -1.910800e+02], [2 x i64] [i64 -6160254793616804697, i64 -4996045170917686737], i32 249, [2 x double] [double 0xFFF0000000000000, double -1.910800e+02] }, %struct.anon.12 { [2 x double] [double -1.992100e+02, double -6.093700e+02], [2 x double] [double -3.032000e+01, double 2.103400e+02], [2 x i64] [i64 8899606358546180766, i64 -6699576735940209548], i32 148, [2 x double] [double -1.000000e+00, double 0x7FF0000000000000] }, %struct.anon.12 { [2 x double] [double 3.089100e+02, double -1.584600e+02], [2 x double] [double 0x408C167AE147AE14, double -5.117000e+02], [2 x i64] [i64 4187325779917550281, i64 4942829023948640072], i32 136, [2 x double] [double 0.000000e+00, double 1.570000e+00] }, %struct.anon.12 { [2 x double] [double 1.081000e+02, double -9.044400e+02], [2 x double] [double -2.025000e+01, double 0x4084971EB851EB85], [2 x i64] [i64 -7234476644020821166, i64 1369725177824373804], i32 76, [2 x double] [double -1.000000e+00, double 9.000000e+01] }, %struct.anon.12 { [2 x double] [double 0xC08C3D47AE147AE1, double 8.717200e+02], [2 x double] [double 8.035200e+02, double -5.238600e+02], [2 x i64] [i64 -559696881086758863, i64 -6314596997044009999], i32 119, [2 x double] [double 0x7FEFFFFFFFFFFFFF, double 0x7FF8000000000000] }], align 16
@.str.54 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_pd(test_vec[0].r)\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_pd(test_vec[1].r)\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_pd(test_vec[2].r)\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_pd(test_vec[3].r)\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_pd(test_vec[4].r)\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_pd(test_vec[5].r)\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_pd(test_vec[6].r)\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"simde_mm_loadu_pd(test_vec[7].r)\00", align 1
@test_simde_mm_mask_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.13] [%struct.anon.13 { [2 x double] [double 0x7FF8000000000000, double 1.059900e+02], i8 33, [2 x double] [double -5.755100e+02, double 0x7FF8000000000000], [2 x i64] [i64 7552032075000655345, i64 4000687079639204834], i32 204, [2 x double] [double 1.000000e+00, double 1.059900e+02] }, %struct.anon.13 { [2 x double] [double 0x7FF8000000000000, double 5.340600e+02], i8 -81, [2 x double] [double 0x7FF8000000000000, double 6.673700e+02], [2 x i64] [i64 342064370308265702, i64 -2670388675896549221], i32 174, [2 x double] [double 0x7FF0000000000000, double 9.000000e+01] }, %struct.anon.13 { [2 x double] [double -4.913100e+02, double -1.601200e+02], i8 -69, [2 x double] [double -1.810000e+00, double -2.366100e+02], [2 x i64] [i64 -6412330527046097524, i64 8935158407947465103], i32 206, [2 x double] [double -1.810000e+00, double 0x7FF0000000000000] }, %struct.anon.13 { [2 x double] [double 0xC087BA6666666666, double -1.460500e+02], i8 -6, [2 x double] [double 8.122700e+02, double -1.667000e+01], [2 x i64] [i64 -1501800736779250465, i64 -4793367214755945223], i32 139, [2 x double] [double 0xC087BA6666666666, double 0x7FEFFFFFFFFFFFFF] }, %struct.anon.13 { [2 x double] [double -6.247600e+02, double 4.724000e+01], i8 -82, [2 x double] [double -2.266700e+02, double 0x40860B3333333333], [2 x i64] [i64 763233639629420433, i64 -883064605290950341], i32 226, [2 x double] [double -6.247600e+02, double 0.000000e+00] }, %struct.anon.13 { [2 x double] [double 8.067700e+02, double 5.792300e+02], i8 33, [2 x double] [double 0xC08C895C28F5C28F, double 0xC084D13333333333], [2 x i64] [i64 -4996966512722268149, i64 -6927699424696314255], i32 117, [2 x double] [double 0xFFF0000000000000, double 5.792300e+02] }, %struct.anon.13 { [2 x double] [double 0x40891E6666666666, double 0x4087486666666666], i8 -49, [2 x double] [double 0x40825B70A3D70A3D, double 6.662200e+02], [2 x i64] [i64 5967949438923600490, i64 -3148046243471625168], i32 139, [2 x double] [double 0x7FF8000000000000, double 0x7FEFFFFFFFFFFFFF] }, %struct.anon.13 { [2 x double] [double 3.234000e+01, double 7.830900e+02], i8 85, [2 x double] [double -7.495200e+02, double -3.107600e+02], [2 x i64] [i64 8065850811406873902, i64 -5654830881389822289], i32 212, [2 x double] [double -1.000000e+00, double 7.830900e+02] }], align 16
@test_simde_mm_maskz_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.14] [%struct.anon.14 { i8 0, [2 x double] [double 0x7FF8000000000000, double -1.291200e+02], [2 x double] [double -5.195900e+02, double 0x7FF8000000000000], [2 x i64] [i64 -281426097431523747, i64 2633914727167280797], i32 11, [2 x double] zeroinitializer }, %struct.anon.14 { i8 -91, [2 x double] [double 0x7FF8000000000000, double -3.573000e+01], [2 x double] [double 0x7FF8000000000000, double -2.276700e+02], [2 x i64] [i64 -1815578541580304333, i64 845229627776683383], i32 243, [2 x double] [double 0x7FF8000000000000, double 0.000000e+00] }, %struct.anon.14 { i8 48, [2 x double] [double 2.713100e+02, double 6.361100e+02], [2 x double] [double -1.621000e+01, double -3.972600e+02], [2 x i64] [i64 -2017676011902388247, i64 -5558947249253800661], i32 115, [2 x double] zeroinitializer }, %struct.anon.14 { i8 4, [2 x double] [double 8.731000e+01, double 9.276200e+02], [2 x double] [double -3.330900e+02, double 3.960200e+02], [2 x i64] [i64 -3251648227893633169, i64 -7989893941971710068], i32 49, [2 x double] zeroinitializer }, %struct.anon.14 { i8 25, [2 x double] [double 0x4087F46666666666, double -5.186500e+02], [2 x double] [double -2.620600e+02, double -4.936700e+02], [2 x i64] [i64 -6970671218441600088, i64 -451425223845197965], i32 22, [2 x double] [double 0x7FF8000000000000, double 0.000000e+00] }, %struct.anon.14 { i8 73, [2 x double] [double -4.831500e+02, double 1.621900e+02], [2 x double] [double -6.428100e+02, double 0xC0898F0A3D70A3D7], [2 x i64] [i64 4497596849686573129, i64 8483488956932326274], i32 171, [2 x double] zeroinitializer }, %struct.anon.14 { i8 104, [2 x double] [double -7.037000e+02, double -1.869400e+02], [2 x double] [double 4.887700e+02, double 3.652200e+02], [2 x i64] [i64 -7438058644691805829, i64 3984923209591034075], i32 180, [2 x double] zeroinitializer }, %struct.anon.14 { i8 113, [2 x double] [double 2.118800e+02, double 1.374400e+02], [2 x double] [double -6.218700e+02, double -4.107400e+02], [2 x i64] [i64 -2876808472297833986, i64 -3412731146393126024], i32 82, [2 x double] [double -1.000000e+00, double 0.000000e+00] }], align 16
@test_simde_mm256_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.15] [%struct.anon.15 { [4 x double] [double -3.570500e+02, double -9.188700e+02, double 5.812200e+02, double -7.394900e+02], [4 x double] [double 1.801300e+02, double 6.632200e+02, double 0x408C9A3D70A3D70A, double 6.811200e+02], [4 x i64] [i64 -9128649742646493234, i64 5059336960335398722, i64 4188736807440544546, i64 6499756994776703759], i32 5, [4 x double] [double 5.000000e-01, double 0x7FEFFFFFFFFFFFFF, double 0xFFEFFFFFFFFFFFFF, double 5.000000e-01] }, %struct.anon.15 { [4 x double] [double 8.451000e+02, double -5.818500e+02, double -8.708400e+02, double -8.112000e+01], [4 x double] [double -7.723500e+02, double 4.415800e+02, double -4.378700e+02, double 8.942000e+01], [4 x i64] [i64 -7333634065308141539, i64 -8443164091348657389, i64 2456988275574048417, i64 -1882724784740693410], i32 239, [4 x double] [double 8.451000e+02, double 0x7FF8000000000000, double 0xFFF0000000000000, double 0.000000e+00] }, %struct.anon.15 { [4 x double] [double -4.812700e+02, double 1.930600e+02, double 2.408900e+02, double -4.836500e+02], [4 x double] [double -4.644800e+02, double 4.475000e+01, double -8.257000e+02, double -4.571000e+01], [4 x i64] [i64 948894183572256228, i64 1588051369400419104, i64 -8095746570882127589, i64 -3894994767606457472], i32 103, [4 x double] [double 0x7FF0000000000000, double -0.000000e+00, double 1.000000e+00, double 1.000000e+00] }, %struct.anon.15 { [4 x double] [double 0x408BCE51EB851EB8, double 0x408EC947AE147AE1, double 0xC08EB06666666666, double 3.960400e+02], [4 x double] [double 1.013000e+02, double 3.593300e+02, double -8.652400e+02, double -8.958600e+02], [4 x i64] [i64 5685826328924848835, i64 5762264922207456829, i64 8712888705034545631, i64 4370720870943070943], i32 238, [4 x double] [double 1.570000e+00, double 5.000000e-01, double -0.000000e+00, double 9.000000e+01] }, %struct.anon.15 { [4 x double] [double -3.078100e+02, double -3.510000e+02, double -3.292700e+02, double -4.134900e+02], [4 x double] [double 3.308200e+02, double 9.688700e+02, double -9.237400e+02, double 2.592000e+01], [4 x i64] [i64 -2388488068827261005, i64 -2935140386255485752, i64 -7350950240086398156, i64 -2469209362758163409], i32 115, [4 x double] [double -1.000000e+00, double 1.000000e+00, double 0x7FF8000000000000, double 9.000000e+01] }, %struct.anon.15 { [4 x double] [double 3.289900e+02, double 5.553200e+02, double 2.487100e+02, double -3.696800e+02], [4 x double] [double -6.888300e+02, double 3.491200e+02, double 4.912000e+02, double 4.792300e+02], [4 x i64] [i64 -5041403720231609422, i64 6013166599246382467, i64 -7182782685479161942, i64 9180203896000963819], i32 189, [4 x double] [double 0xFFF0000000000000, double 5.000000e-01, double 4.912000e+02, double 0xFFEFFFFFFFFFFFFF] }, %struct.anon.15 { [4 x double] [double -8.681000e+02, double 0xC08D051EB851EB85, double 5.519800e+02, double -5.543500e+02], [4 x double] [double -3.899100e+02, double -4.821100e+02, double 2.256500e+02, double -1.679000e+02], [4 x i64] [i64 1056411706322823905, i64 3145330439249132225, i64 -5217120311582257896, i64 -3778956683905394562], i32 29, [4 x double] [double 5.000000e-01, double 9.000000e+01, double 1.570000e+00, double 0x7FF8000000000000] }, %struct.anon.15 { [4 x double] [double 3.855100e+02, double 2.590700e+02, double -7.168300e+02, double -3.603000e+02], [4 x double] [double 2.492200e+02, double -1.808400e+02, double 3.200400e+02, double -4.574300e+02], [4 x i64] [i64 8507632569968538148, i64 -5931405894810227906, i64 6480625695532269019, i64 -4170117051513769010], i32 118, [4 x double] [double 0x7FF8000000000000, double 1.570000e+00, double 0xFFEFFFFFFFFFFFFF, double 0.000000e+00] }], align 16
@.str.62 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_pd(test_vec[0].r)\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_pd(test_vec[1].r)\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_pd(test_vec[2].r)\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_pd(test_vec[3].r)\00", align 1
@.str.66 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_pd(test_vec[4].r)\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_pd(test_vec[5].r)\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_pd(test_vec[6].r)\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"simde_mm256_loadu_pd(test_vec[7].r)\00", align 1
@test_simde_mm256_mask_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.16] [%struct.anon.16 { [4 x double] [double 0x7FF8000000000000, double 2.845400e+02, double 0x7FF8000000000000, double -5.574600e+02], i8 51, [4 x double] [double 1.476300e+02, double 0x7FF8000000000000, double 0x7FF8000000000000, double -2.564300e+02], [4 x i64] [i64 -8492544636006501984, i64 1380093874916417348, i64 9015491327522902615, i64 -877214211027671538], i32 115, [4 x double] [double 0x7FF8000000000000, double 0xFFF0000000000000, double 0x7FF8000000000000, double -5.574600e+02] }, %struct.anon.16 { [4 x double] [double -8.471200e+02, double 0x4083A91EB851EB85, double -4.097400e+02, double 1.159100e+02], i8 -20, [4 x double] [double -2.497800e+02, double -6.278000e+01, double -4.554000e+01, double 8.734600e+02], [4 x i64] [i64 -3662723125764578246, i64 5924144313530597259, i64 -387590526236314650, i64 -2071225192278027565], i32 43, [4 x double] [double -8.471200e+02, double 0x4083A91EB851EB85, double 1.570000e+00, double 0x7FF0000000000000] }, %struct.anon.16 { [4 x double] [double -3.924300e+02, double -1.287000e+02, double 0xC0834E51EB851EB8, double 5.369900e+02], i8 -42, [4 x double] [double 7.131000e+01, double 5.306600e+02, double 0x40865D0A3D70A3D7, double 0xC08C6C3D70A3D70A], [4 x i64] [i64 -6970163927411674839, i64 -620701836407105738, i64 5885395240567331954, i64 -5212810402148347552], i32 17, [4 x double] [double -3.924300e+02, double 0x7FEFFFFFFFFFFFFF, double 0xC0834E51EB851EB8, double 5.369900e+02] }, %struct.anon.16 { [4 x double] [double 0x408F3947AE147AE1, double -5.631600e+02, double 4.262000e+02, double 0xC088D51EB851EB85], i8 10, [4 x double] [double 6.462800e+02, double 2.853000e+01, double 7.834700e+02, double -4.188900e+02], [4 x i64] [i64 -2381513542705576348, i64 -3120337352039273844, i64 -2368323309043186942, i64 6756482433063967150], i32 95, [4 x double] [double 0x408F3947AE147AE1, double 0x7FEFFFFFFFFFFFFF, double 4.262000e+02, double -1.000000e+00] }, %struct.anon.16 { [4 x double] [double 0xC0857770A3D70A3D, double 0xC08F271EB851EB85, double 2.364000e+01, double 4.606900e+02], i8 46, [4 x double] [double -7.342200e+02, double -1.724100e+02, double -7.957400e+02, double -5.813300e+02], [4 x i64] [i64 -1158653695890929332, i64 -443457283080208555, i64 -9117148594293917785, i64 8959431178916517668], i32 148, [4 x double] [double 0xC0857770A3D70A3D, double 0.000000e+00, double 2.364000e+01, double 0.000000e+00] }, %struct.anon.16 { [4 x double] [double -5.432800e+02, double -2.054800e+02, double 5.345800e+02, double 2.069400e+02], i8 -77, [4 x double] [double 7.317500e+02, double -5.109600e+02, double 8.040000e+01, double 0xC084A570A3D70A3D], [4 x i64] [i64 -7759315063881065058, i64 6023771153694935608, i64 4916981884698237237, i64 628823249951242487], i32 37, [4 x double] [double 0x7FF0000000000000, double -2.054800e+02, double 5.345800e+02, double 2.069400e+02] }, %struct.anon.16 { [4 x double] [double 3.603300e+02, double 4.626100e+02, double 8.763100e+02, double -5.683600e+02], i8 35, [4 x double] [double -6.730000e+00, double 5.919400e+02, double -4.778900e+02, double -7.570000e+00], [4 x i64] [i64 -4687038835906066249, i64 6987334546953029604, i64 2044174724947721019, i64 -8935575087944210919], i32 61, [4 x double] [double -6.730000e+00, double 0xFFEFFFFFFFFFFFFF, double 8.763100e+02, double -5.683600e+02] }, %struct.anon.16 { [4 x double] [double -9.712200e+02, double 0x408DA26666666666, double 1.978000e+02, double 6.750600e+02], i8 -91, [4 x double] [double -2.317000e+01, double -1.873000e+01, double -7.438300e+02, double 2.899000e+02], [4 x i64] [i64 -1044685636867850631, i64 -7652143293153812354, i64 -6867556035621623170, i64 3713250581274244488], i32 27, [4 x double] [double -9.712200e+02, double 0x408DA26666666666, double 0x7FF0000000000000, double 6.750600e+02] }], align 16
@test_simde_mm256_maskz_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.17] [%struct.anon.17 { i8 -40, [4 x double] [double 0x7FF8000000000000, double -6.267000e+02, double 0x7FF8000000000000, double 0x408CB27AE147AE14], [4 x double] [double 0x408C335C28F5C28F, double 0x7FF8000000000000, double 0x7FF8000000000000, double 2.788000e+01], [4 x i64] [i64 -8812304650163596194, i64 8309787187671250463, i64 -7426664054712978884, i64 -262939828427731939], i32 173, [4 x double] zeroinitializer }, %struct.anon.17 { i8 58, [4 x double] [double -8.155000e+02, double -3.615400e+02, double 8.484700e+02, double 7.317700e+02], [4 x double] [double 6.797000e+02, double -3.641300e+02, double 8.880000e+00, double -8.648200e+02], [4 x i64] [i64 6200296752056750058, i64 6433816659149094451, i64 -117947748737162894, i64 8673641022723217489], i32 197, [4 x double] [double 0.000000e+00, double 0xFFF0000000000000, double 0.000000e+00, double 0xFFF0000000000000] }, %struct.anon.17 { i8 -103, [4 x double] [double 4.167600e+02, double -6.695900e+02, double 0xC085F50A3D70A3D7, double -5.516300e+02], [4 x double] [double -6.124900e+02, double -1.236700e+02, double 3.481600e+02, double -5.203800e+02], [4 x i64] [i64 4308452503886505507, i64 -7997711679663299588, i64 -6652653733922340409, i64 6968256358552970596], i32 94, [4 x double] [double -6.124900e+02, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01] }, %struct.anon.17 { i8 51, [4 x double] [double 1.640400e+02, double 3.012000e+02, double 5.983000e+02, double -5.669400e+02], [4 x double] [double -5.908100e+02, double 1.686100e+02, double -9.720000e+01, double -4.395900e+02], [4 x i64] [i64 7820515050576106443, i64 125348702409922831, i64 28007619820347392, i64 -7932678677096053707], i32 201, [4 x double] [double 0x7FEFFFFFFFFFFFFF, double 1.686100e+02, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.17 { i8 38, [4 x double] [double 5.419200e+02, double -1.324800e+02, double -5.212800e+02, double 4.443400e+02], [4 x double] [double -4.151100e+02, double 1.686300e+02, double -5.277800e+02, double -2.306100e+02], [4 x i64] [i64 -4892239152882043385, i64 156750231931526147, i64 202923168954264902, i64 -1723305389559356970], i32 204, [4 x double] [double 0.000000e+00, double 0x7FF0000000000000, double 1.000000e+00, double 0.000000e+00] }, %struct.anon.17 { i8 -111, [4 x double] [double 8.070900e+02, double -6.793100e+02, double -4.988400e+02, double 4.867900e+02], [4 x double] [double -4.344000e+01, double 5.100400e+02, double 6.219700e+02, double 0xC083955C28F5C28F], [4 x i64] [i64 -7871455767103737308, i64 -1666644143514270683, i64 4824673154926305459, i64 693348618212400323], i32 54, [4 x double] [double 8.070900e+02, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.17 { i8 44, [4 x double] [double 8.404400e+02, double 9.193400e+02, double -1.783000e+02, double 0xC0882051EB851EB8], [4 x double] [double -2.043300e+02, double 0xC089F11EB851EB85, double -2.924300e+02, double 9.597100e+02], [4 x i64] [i64 3659917210367915787, i64 2238000330235556481, i64 -6651832730874916370, i64 1004793110982146192], i32 53, [4 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 9.000000e+01] }, %struct.anon.17 { i8 -26, [4 x double] [double 4.710600e+02, double 0xC085B10A3D70A3D7, double -6.072300e+02, double 8.802500e+02], [4 x double] [double 4.744900e+02, double 2.955600e+02, double -5.593400e+02, double 1.640000e+01], [4 x i64] [i64 -7580743870084302937, i64 -4789490465420023080, i64 -4271362955824714498, i64 5416843691555407363], i32 54, [4 x double] [double 0.000000e+00, double 0x7FF8000000000000, double -0.000000e+00, double 0.000000e+00] }], align 16
@test_simde_mm512_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.18] [%struct.anon.18 { [8 x double] [double 3.900600e+02, double 3.028900e+02, double -2.340900e+02, double 1.308300e+02, double -9.454400e+02, double 5.294800e+02, double 3.380600e+02, double 6.614500e+02], [8 x double] [double 5.215700e+02, double 0x4057F47AE147AE14, double 0xC08A4D70A3D70A3D, double -4.702100e+02, double 5.619900e+02, double 5.303300e+02, double 9.567000e+02, double 5.860000e+02], [8 x i64] [i64 -6251646270719399674, i64 -9043880886728127943, i64 -2598222736183392795, i64 -1860063746138400589, i64 8656489402950389410, i64 6184841349590401554, i64 4326059874980939774, i64 4224141810940501977], i32 185, [8 x double] [double 0x7FEFFFFFFFFFFFFF, double 3.028900e+02, double 1.000000e+00, double 0xFFEFFFFFFFFFFFFF, double -0.000000e+00, double 0x7FF0000000000000, double 0x7FF8000000000000, double 5.000000e-01] }, %struct.anon.18 { [8 x double] [double 2.943000e+02, double -2.626000e+01, double -2.839200e+02, double -3.368900e+02, double 0x4085893333333333, double 9.085900e+02, double 3.325600e+02, double 0x408BE851EB851EB8], [8 x double] [double 3.588900e+02, double -3.072600e+02, double -1.117100e+02, double 0x408A075C28F5C28F, double 8.744600e+02, double -2.705400e+02, double -1.398700e+02, double -7.842100e+02], [8 x i64] [i64 -7962448834612225555, i64 -392236992424108323, i64 -3462612895072911789, i64 -1699332621576613890, i64 -5736409637550415398, i64 130275286591090508, i64 -7094050535347827501, i64 -2733130823568114131], i32 24, [8 x double] [double 9.000000e+01, double 0xFFF0000000000000, double 1.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 1.570000e+00, double 0xFFF0000000000000, double 1.570000e+00, double 0.000000e+00] }, %struct.anon.18 { [8 x double] [double -3.192600e+02, double 0x408674147AE147AE, double -3.085500e+02, double -5.944600e+02, double -1.228000e+02, double -2.272100e+02, double 3.661200e+02, double 4.213800e+02], [8 x double] [double 1.463400e+02, double -1.432300e+02, double -6.752000e+02, double -4.718200e+02, double 5.405900e+02, double 2.766100e+02, double -1.731100e+02, double -2.498500e+02], [8 x i64] [i64 1229467386300978362, i64 -3608341113558327063, i64 2510778146467776681, i64 6836450645469087983, i64 2300025728764560583, i64 1738966078427551349, i64 3108287743583725717, i64 -8528090630843019613], i32 102, [8 x double] [double 0x7FEFFFFFFFFFFFFF, double -1.432300e+02, double 1.000000e+00, double -0.000000e+00, double 1.570000e+00, double 0x7FF0000000000000, double 3.661200e+02, double 0.000000e+00] }, %struct.anon.18 { [8 x double] [double -5.789700e+02, double 0xC08B9947AE147AE1, double -8.771200e+02, double 8.733700e+02, double -5.967100e+02, double 3.519800e+02, double 6.879000e+01, double -8.083500e+02], [8 x double] [double 3.600100e+02, double -3.119900e+02, double 2.004300e+02, double -1.615800e+02, double 1.366000e+02, double 0xC085A95C28F5C28F, double -4.400000e+02, double 0x40886547AE147AE1], [8 x i64] [i64 3347301987161906825, i64 5198588865035049763, i64 -6692900195602079641, i64 10023661517916473, i64 492477733401387322, i64 867987076754214076, i64 5617313734110677654, i64 -1515741989530954625], i32 226, [8 x double] [double 0x7FF8000000000000, double -1.000000e+00, double 0.000000e+00, double 8.733700e+02, double 1.000000e+00, double 0x7FF8000000000000, double -4.400000e+02, double 0xFFEFFFFFFFFFFFFF] }, %struct.anon.18 { [8 x double] [double 0xC08F1D3333333333, double 3.472200e+02, double 0x408A8B3333333333, double 9.614600e+02, double 0x40873370A3D70A3D, double -5.535000e+01, double 8.525200e+02, double -3.199900e+02], [8 x double] [double -3.492000e+01, double 0xC08C2B70A3D70A3D, double -7.232000e+02, double 0xC08E335C28F5C28F, double -4.270400e+02, double 0xC04FF33333333333, double 5.021200e+02, double -6.555200e+02], [8 x i64] [i64 -5663388675417969167, i64 5134716563632119451, i64 8799487667835833747, i64 -1141070973733060000, i64 2141680984098137862, i64 1508666849613206565, i64 2867870228952037609, i64 966317920808529275], i32 244, [8 x double] [double 0xC08F1D3333333333, double 1.570000e+00, double 0xFFF0000000000000, double 5.000000e-01, double -0.000000e+00, double -0.000000e+00, double 0x7FF0000000000000, double -1.000000e+00] }, %struct.anon.18 { [8 x double] [double -4.471100e+02, double 9.467400e+02, double -2.903200e+02, double 0x4089B73333333333, double -3.418300e+02, double 3.941700e+02, double -8.187000e+02, double 0xC08CFB0A3D70A3D7], [8 x double] [double 3.049600e+02, double 6.324500e+02, double 5.373400e+02, double -7.085600e+02, double 0xC08AF170A3D70A3D, double -2.052700e+02, double 2.982600e+02, double 5.499300e+02], [8 x i64] [i64 504077700776137226, i64 -4373231414786365212, i64 1926090453807719414, i64 -3604477553545481946, i64 -6094970332675641500, i64 -7012434851621732680, i64 2945758784224897206, i64 -6525066870547747102], i32 61, [8 x double] [double 0.000000e+00, double 1.570000e+00, double 5.373400e+02, double 9.000000e+01, double 0xFFF0000000000000, double 1.000000e+00, double 9.000000e+01, double 1.000000e+00] }, %struct.anon.18 { [8 x double] [double -4.375000e+01, double -1.263000e+01, double 2.413600e+02, double 7.465900e+02, double -1.999800e+02, double 7.716000e+01, double -1.401000e+02, double 8.247200e+02], [8 x double] [double 6.825000e+02, double -1.509300e+02, double 0xC08EFE7AE147AE14, double 0x4087F86666666666, double 5.369900e+02, double 0xC08EFB3333333333, double -2.750100e+02, double 1.049800e+02], [8 x i64] [i64 -7789806428759825058, i64 3430688602923226970, i64 -8916928806116373579, i64 -4379815072206063591, i64 6129936730364833322, i64 4650680796832418111, i64 6113116675654518484, i64 632811672515057823], i32 33, [8 x double] [double 0xFFF0000000000000, double 0.000000e+00, double -0.000000e+00, double 1.000000e+00, double -0.000000e+00, double 1.000000e+00, double 0x7FF8000000000000, double 8.247200e+02] }, %struct.anon.18 { [8 x double] [double -8.795200e+02, double 2.636300e+02, double -6.150800e+02, double 0x40869C51EB851EB8, double 0xC0837D1EB851EB85, double -5.912600e+02, double -5.986100e+02, double -4.437800e+02], [8 x double] [double 6.079600e+02, double 1.102800e+02, double -2.094000e+02, double 2.239300e+02, double 5.968100e+02, double 8.795200e+02, double 0xC084D15C28F5C28F, double -2.791500e+02], [8 x i64] [i64 -2855587847951490119, i64 -6388242880835607013, i64 884932204920817916, i64 4520157740475609794, i64 -6013724346301306698, i64 -3623917963290514917, i64 -343134243671945207, i64 -8239661152358104093], i32 127, [8 x double] [double 0x7FF0000000000000, double 0x7FF8000000000000, double 9.000000e+01, double 0x7FF8000000000000, double 5.000000e-01, double -5.912600e+02, double 0xFFEFFFFFFFFFFFFF, double 0.000000e+00] }], align 16
@.str.70 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_pd(test_vec[0].r)\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_pd(test_vec[1].r)\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_pd(test_vec[2].r)\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_pd(test_vec[3].r)\00", align 1
@.str.74 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_pd(test_vec[4].r)\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_pd(test_vec[5].r)\00", align 1
@.str.76 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_pd(test_vec[6].r)\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"simde_mm512_loadu_pd(test_vec[7].r)\00", align 1
@test_simde_mm512_mask_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.19] [%struct.anon.19 { [8 x double] [double 0x7FF8000000000000, double 4.265400e+02, double 0x7FF8000000000000, double 3.083000e+02, double 0x408BE628F5C28F5C, double 0x408E9851EB851EB8, double 3.406400e+02, double -3.981000e+01], i8 -128, [8 x double] [double 1.536400e+02, double 0x7FF8000000000000, double 0x7FF8000000000000, double -1.743000e+02, double 1.631800e+02, double 6.586000e+01, double 4.039600e+02, double 0x4053947AE147AE14], [8 x i64] [i64 590413235852531120, i64 7232391276447893876, i64 -888386226947612229, i64 -4944477350807124567, i64 1460193911303835525, i64 -1576120026583166417, i64 793351936683446689, i64 7393026991025107154], i32 93, [8 x double] [double 0x7FF8000000000000, double 4.265400e+02, double 0x7FF8000000000000, double 3.083000e+02, double 0x408BE628F5C28F5C, double 0x408E9851EB851EB8, double 3.406400e+02, double 1.570000e+00] }, %struct.anon.19 { [8 x double] [double 3.669000e+01, double -5.036200e+02, double -9.323000e+01, double -4.044700e+02, double 3.268800e+02, double 0xC087951EB851EB85, double 0x40836F1EB851EB85, double -7.706900e+02], i8 -76, [8 x double] [double 0x40897770A3D70A3D, double 7.634800e+02, double 0x4089BE3D70A3D70A, double -5.303000e+01, double 1.235800e+02, double 9.602100e+02, double -3.927800e+02, double -4.283000e+01], [8 x i64] [i64 -5501816326393228573, i64 -93621828897697856, i64 -398938361192923291, i64 6920437769921158216, i64 5570524537727348327, i64 7672535098681369098, i64 4807441946526108433, i64 -3733867383390400686], i32 145, [8 x double] [double 3.669000e+01, double -5.036200e+02, double -1.000000e+00, double -4.044700e+02, double -1.000000e+00, double -0.000000e+00, double 0x40836F1EB851EB85, double 0x7FEFFFFFFFFFFFFF] }, %struct.anon.19 { [8 x double] [double 3.867500e+02, double 5.241900e+02, double 0xC086F43D70A3D70A, double 2.795100e+02, double 5.032200e+02, double 6.061100e+02, double 0xC087C26666666666, double -3.431300e+02], i8 126, [8 x double] [double 6.572000e+02, double -8.678700e+02, double 4.825700e+02, double -1.796200e+02, double 1.979900e+02, double -1.134700e+02, double 8.987000e+02, double -7.653300e+02], [8 x i64] [i64 6727256390144388277, i64 4450448993850148734, i64 4780392466732746210, i64 4615893349345469324, i64 1857722319659112287, i64 4809744760986285499, i64 4074503859965546154, i64 -5730031931508629841], i32 109, [8 x double] [double 3.867500e+02, double -1.000000e+00, double 0xFFEFFFFFFFFFFFFF, double 2.795100e+02, double 0x7FF0000000000000, double 0x7FF8000000000000, double 0xFFF0000000000000, double -3.431300e+02] }, %struct.anon.19 { [8 x double] [double 3.829100e+02, double -1.945300e+02, double -1.698000e+02, double -2.902000e+02, double 5.083000e+01, double -5.479100e+02, double 0xC04E733333333333, double -1.342400e+02], i8 7, [8 x double] [double 0xC0888370A3D70A3D, double -2.371200e+02, double 8.127300e+02, double 3.391600e+02, double -2.769100e+02, double -5.800500e+02, double 0xC085FD70A3D70A3D, double 0xC08BD15C28F5C28F], [8 x i64] [i64 -6307778348516761119, i64 8718859946731747332, i64 -3038133148536326361, i64 -9082269918958483748, i64 79109850622572653, i64 3398901640614669510, i64 -8043556801939745910, i64 6499667251476537873], i32 44, [8 x double] [double 0xFFF0000000000000, double 0x7FF8000000000000, double 0.000000e+00, double -2.902000e+02, double 5.083000e+01, double -5.479100e+02, double 0xC04E733333333333, double -1.342400e+02] }, %struct.anon.19 { [8 x double] [double 0x408D811EB851EB85, double -4.382100e+02, double 3.893500e+02, double 4.473600e+02, double -8.321100e+02, double 6.290500e+02, double 0xC08BFE28F5C28F5C, double 8.250900e+02], i8 -40, [8 x double] [double 0x4087C970A3D70A3D, double 5.868000e+02, double -3.545300e+02, double -4.084000e+01, double -5.266700e+02, double -4.558300e+02, double 1.938400e+02, double 8.562400e+02], [8 x i64] [i64 -3217732326500979740, i64 -4141931513189136515, i64 636567294509061446, i64 -2350493096095698755, i64 -3540806424903811191, i64 7354415713565423886, i64 3446419690301089847, i64 -1067888130130441900], i32 24, [8 x double] [double 0x408D811EB851EB85, double -4.382100e+02, double 3.893500e+02, double 0.000000e+00, double -1.000000e+00, double 6.290500e+02, double 9.000000e+01, double 0xFFF0000000000000] }, %struct.anon.19 { [8 x double] [double 3.496400e+02, double -9.759700e+02, double -4.339600e+02, double -5.995300e+02, double -5.238700e+02, double 5.051400e+02, double 2.662300e+02, double -3.083000e+02], i8 -28, [8 x double] [double -7.319700e+02, double 0x4053BD70A3D70A3D, double 0xC08E493333333333, double -8.890000e+00, double 4.989200e+02, double -6.728200e+02, double 1.009500e+02, double 4.430600e+02], [8 x i64] [i64 -562884167139706922, i64 695238679323448907, i64 -6467260814660348465, i64 7643986160136410, i64 -7769483103272170145, i64 2793477892456537302, i64 -6380124243421683390, i64 -4928634145361480850], i32 6, [8 x double] [double 3.496400e+02, double -9.759700e+02, double 0.000000e+00, double -5.995300e+02, double -5.238700e+02, double 5.000000e-01, double 9.000000e+01, double -1.000000e+00] }, %struct.anon.19 { [8 x double] [double -1.110400e+02, double -5.097000e+02, double -1.095800e+02, double 5.686000e+01, double 0xC08B8547AE147AE1, double -5.350000e+00, double -1.180500e+02, double 8.805200e+02], i8 -23, [8 x double] [double -4.185500e+02, double 5.274100e+02, double -1.603200e+02, double 5.478000e+01, double 0xC08D035C28F5C28F, double -9.664800e+02, double -8.898000e+01, double 4.212200e+02], [8 x i64] [i64 1716288905122210589, i64 3760269252538005312, i64 -5896272160042592611, i64 -835412407286896683, i64 -2042030984283674393, i64 -4008075939584605642, i64 1418288906546774858, i64 5654826129669907373], i32 34, [8 x double] [double -1.000000e+00, double -5.097000e+02, double -1.095800e+02, double -0.000000e+00, double 0xC08B8547AE147AE1, double 9.000000e+01, double 0xFFEFFFFFFFFFFFFF, double 0.000000e+00] }, %struct.anon.19 { [8 x double] [double -9.424400e+02, double 4.770700e+02, double 8.216900e+02, double -4.663200e+02, double -1.779000e+01, double 8.792000e+01, double 2.253800e+02, double 2.502400e+02], i8 38, [8 x double] [double -8.331200e+02, double 2.562300e+02, double 0xC087B53333333333, double 0x4084CE51EB851EB8, double 0x40823B47AE147AE1, double 3.423000e+02, double 1.088500e+02, double -5.276300e+02], [8 x i64] [i64 7113024319111670152, i64 -2437665550224294166, i64 -3808900891834368166, i64 -2695208314107759990, i64 7542152230173275483, i64 6813806618389862553, i64 -5378354398636598336, i64 6331146260969900465], i32 180, [8 x double] [double -9.424400e+02, double 0x7FEFFFFFFFFFFFFF, double 1.570000e+00, double -4.663200e+02, double -1.779000e+01, double 5.000000e-01, double 2.253800e+02, double 2.502400e+02] }], align 16
@test_simde_mm512_maskz_fixupimm_pd.test_vec = internal constant [8 x %struct.anon.20] [%struct.anon.20 { i8 7, [8 x double] [double 0x7FF8000000000000, double 0x408DDE51EB851EB8, double 0x7FF8000000000000, double 0xC084F35C28F5C28F, double 5.077800e+02, double 6.685300e+02, double -3.128800e+02, double 0xC0852570A3D70A3D], [8 x double] [double -7.888100e+02, double 0x7FF8000000000000, double 0x7FF8000000000000, double 7.877500e+02, double 0xC04DC51EB851EB85, double -2.013000e+02, double -2.156500e+02, double -6.742000e+02], [8 x i64] [i64 1980430139847174865, i64 7759446902478975134, i64 3439327106012688852, i64 4195722529781328997, i64 -3498767833470973027, i64 2365852478743917713, i64 7951859446474610787, i64 -2053963285188767013], i32 38, [8 x double] [double 9.000000e+01, double 0x7FEFFFFFFFFFFFFF, double 0xFFF0000000000000, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.20 { i8 -59, [8 x double] [double -2.106700e+02, double 0xC08CDF5C28F5C28F, double -2.660700e+02, double -5.441300e+02, double -1.094900e+02, double 2.897800e+02, double 0x4085BB3333333333, double 7.594700e+02], [8 x double] [double 1.009500e+02, double 4.664600e+02, double -2.357000e+01, double 0x4089AB1EB851EB85, double 3.162700e+02, double 4.468200e+02, double 0xC08E1770A3D70A3D, double -1.845300e+02], [8 x i64] [i64 -2582038496707926102, i64 -1317467548538680682, i64 -6837576086108756540, i64 -2003221978205912950, i64 -2103764540477699513, i64 4279343748859563320, i64 -4479623439718470803, i64 381508258574081326], i32 237, [8 x double] [double 1.570000e+00, double 0.000000e+00, double 0xFFF0000000000000, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0xFFF0000000000000, double -0.000000e+00] }, %struct.anon.20 { i8 -4, [8 x double] [double 4.026100e+02, double 0xC0889C3D70A3D70A, double 1.450600e+02, double 0xC056670A3D70A3D7, double 8.810000e+02, double 0x408A015C28F5C28F, double 2.337100e+02, double 0xC08C5E7AE147AE14], [8 x double] [double 5.595500e+02, double -3.387300e+02, double 8.799400e+02, double -4.999900e+02, double 4.599700e+02, double -3.357100e+02, double -1.741800e+02, double -7.507000e+02], [8 x i64] [i64 -916294869243913276, i64 -4435599694132837618, i64 -4195850299745750422, i64 -8813848203558204765, i64 -7303256893586742778, i64 466199096505665057, i64 7250465275341858935, i64 4892250858803581342], i32 166, [8 x double] [double 0.000000e+00, double 0.000000e+00, double 1.450600e+02, double 0x7FF8000000000000, double 5.000000e-01, double 0x7FF0000000000000, double -1.000000e+00, double 0xFFEFFFFFFFFFFFFF] }, %struct.anon.20 { i8 -40, [8 x double] [double -2.596300e+02, double 5.597500e+02, double -2.948300e+02, double 0x4083B70A3D70A3D7, double -1.504700e+02, double 0xC082BB70A3D70A3D, double 3.903500e+02, double 9.504800e+02], [8 x double] [double 0x408B183D70A3D70A, double -6.332100e+02, double 7.718700e+02, double 1.833000e+02, double 8.136100e+02, double 8.089400e+02, double 0x408F3628F5C28F5C, double 2.162200e+02], [8 x i64] [i64 -1856416937153016422, i64 2616370727667712550, i64 -8258720143844920363, i64 3825639225440839173, i64 -1893178983020359629, i64 2651146073228449621, i64 -5562317530136408969, i64 -7339732250223640237], i32 24, [8 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0x7FF8000000000000, double 1.570000e+00, double 0.000000e+00, double 0xFFF0000000000000, double 0x7FEFFFFFFFFFFFFF] }, %struct.anon.20 { i8 13, [8 x double] [double -9.785900e+02, double 1.438200e+02, double 0xC08B4B1EB851EB85, double 0x408C3347AE147AE1, double -2.400000e+01, double 3.603100e+02, double 9.946000e+02, double -4.644500e+02], [8 x double] [double 0xC08E935C28F5C28F, double 0x408B543D70A3D70A, double 3.556000e+01, double 4.815500e+02, double -4.611800e+02, double 0x408AEB0A3D70A3D7, double 7.308500e+02, double 2.791900e+02], [8 x i64] [i64 -896769177251759320, i64 -6193387382336998701, i64 -5196612256581894536, i64 1376032110800763920, i64 6306131862722149217, i64 1169742488768277908, i64 3955968233953704320, i64 -4835359274496313880], i32 213, [8 x double] [double -9.785900e+02, double 0.000000e+00, double -0.000000e+00, double 0x408C3347AE147AE1, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.20 { i8 26, [8 x double] [double 4.211200e+02, double -5.639800e+02, double -8.993000e+01, double -7.293500e+02, double -1.634200e+02, double -6.995800e+02, double -7.788700e+02, double -2.963900e+02], [8 x double] [double -3.328000e+02, double 9.930000e+02, double 0x408BB747AE147AE1, double -5.191900e+02, double 8.019400e+02, double 0x408BAD70A3D70A3D, double 6.970300e+02, double 8.233500e+02], [8 x i64] [i64 3050414041704870352, i64 6690900923770431098, i64 -5993983986114490175, i64 -6174474833854624260, i64 -5323328165015716467, i64 7381475265046301219, i64 -4011670653339126699, i64 4449359276032250939], i32 73, [8 x double] [double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0x7FF0000000000000, double 0xFFEFFFFFFFFFFFFF, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00] }, %struct.anon.20 { i8 -28, [8 x double] [double 2.950000e+01, double 0x4089BD0A3D70A3D7, double 0x4086AE147AE147AE, double -9.945000e+02, double 1.839500e+02, double 7.203500e+02, double -4.589600e+02, double 2.055300e+02], [8 x double] [double 0x4082971EB851EB85, double 5.766100e+02, double -3.129200e+02, double 0xC08B1251EB851EB8, double 4.379800e+02, double -5.820700e+02, double 4.129000e+02, double -1.408900e+02], [8 x i64] [i64 -1530913097592128687, i64 -5689482277608806518, i64 1999038372931031609, i64 9137215602403113922, i64 8770016930550174757, i64 1528904846629467522, i64 -1621048306553379691, i64 -898573893360229156], i32 115, [8 x double] [double 0.000000e+00, double 0.000000e+00, double 0x7FEFFFFFFFFFFFFF, double 0.000000e+00, double 0.000000e+00, double 0xFFF0000000000000, double 0x7FF0000000000000, double -1.000000e+00] }, %struct.anon.20 { i8 125, [8 x double] [double -1.460600e+02, double -6.770300e+02, double 1.297600e+02, double 6.905200e+02, double -3.766100e+02, double 3.508900e+02, double -6.058700e+02, double 2.905900e+02], [8 x double] [double 3.438900e+02, double -7.189600e+02, double 0x40881B47AE147AE1, double 1.458400e+02, double 0xC08A0A51EB851EB8, double 4.684300e+02, double -3.081000e+01, double 1.962100e+02], [8 x i64] [i64 6144183755008432755, i64 6703975818607614397, i64 7170085494338482894, i64 -6527625493052230455, i64 -5982659440781924078, i64 37320938593641387, i64 -3985627399097959031, i64 -3422703011251321176], i32 134, [8 x double] [double 0x7FF0000000000000, double 0.000000e+00, double 5.000000e-01, double 0x7FEFFFFFFFFFFFFF, double 0xFFF0000000000000, double 0x7FF8000000000000, double 1.570000e+00, double 0.000000e+00] }], align 16
@test_simde_mm_fixupimm_sd.test_vec = internal constant [8 x %struct.anon.21] [%struct.anon.21 { [2 x double] [double -4.346500e+02, double 9.623500e+02], [2 x double] [double 9.938500e+02, double 4.649700e+02], [2 x i64] [i64 -6201712406494312261, i64 -6874643461497553272], i32 203, [2 x double] [double 1.000000e+00, double 4.649700e+02] }, %struct.anon.21 { [2 x double] [double -2.299200e+02, double 0x4088511EB851EB85], [2 x double] [double 0x4087F46666666666, double 2.677400e+02], [2 x i64] [i64 -5231967822968100878, i64 -3932124877831919016], i32 71, [2 x double] [double 0x7FF8000000000000, double 2.677400e+02] }, %struct.anon.21 { [2 x double] [double -3.616400e+02, double 1.757000e+02], [2 x double] [double 0xC08CA347AE147AE1, double -4.134800e+02], [2 x i64] [i64 -6365964835022372157, i64 407364307603054067], i32 105, [2 x double] [double 5.000000e-01, double -4.134800e+02] }, %struct.anon.21 { [2 x double] [double -2.835500e+02, double -2.039400e+02], [2 x double] [double -1.823700e+02, double 0x40846B1EB851EB85], [2 x i64] [i64 5905104829890180511, i64 5729690731103965223], i32 80, [2 x double] [double 0x7FF8000000000000, double 0x40846B1EB851EB85] }, %struct.anon.21 { [2 x double] [double -9.700800e+02, double 0xC087A147AE147AE1], [2 x double] [double -2.030300e+02, double 0x4087DD0A3D70A3D7], [2 x i64] [i64 -6573244426834817559, i64 2250106535311627098], i32 203, [2 x double] [double 0xFFF0000000000000, double 0x4087DD0A3D70A3D7] }, %struct.anon.21 { [2 x double] [double 7.268400e+02, double 0x408BA6147AE147AE], [2 x double] [double -7.233100e+02, double 4.189700e+02], [2 x i64] [i64 -8755337847876634916, i64 -5818225939372691561], i32 85, [2 x double] [double 0.000000e+00, double 4.189700e+02] }, %struct.anon.21 { [2 x double] [double 0xC087515C28F5C28F, double 6.358400e+02], [2 x double] [double -1.446800e+02, double 4.555300e+02], [2 x i64] [i64 -4351694503276025513, i64 -4285814763654716830], i32 234, [2 x double] [double -1.446800e+02, double 4.555300e+02] }, %struct.anon.21 { [2 x double] [double 4.634800e+02, double 4.155800e+02], [2 x double] [double 4.532000e+01, double -2.779400e+02], [2 x i64] [i64 -5818981292810336533, i64 -8942148710272306116], i32 126, [2 x double] [double 0x7FF8000000000000, double -2.779400e+02] }], align 16
@test_simde_mm_mask_fixupimm_sd.test_vec = internal constant [8 x %struct.anon.22] [%struct.anon.22 { [2 x double] [double 0x7FF8000000000000, double -9.460700e+02], i8 108, [2 x double] [double 3.502200e+02, double 0x7FF8000000000000], [2 x i64] [i64 7276337534214629559, i64 -5782142652990400288], i32 54, [2 x double] [double 0x7FF8000000000000, double 0x7FF8000000000000] }, %struct.anon.22 { [2 x double] [double 0x7FF8000000000000, double 0xC055DC28F5C28F5C], i8 16, [2 x double] [double 0x7FF8000000000000, double 1.134300e+02], [2 x i64] [i64 4437018654289254476, i64 8281413503981846293], i32 119, [2 x double] [double 0x7FF8000000000000, double 1.134300e+02] }, %struct.anon.22 { [2 x double] [double -6.718600e+02, double -6.342300e+02], i8 48, [2 x double] [double 8.354900e+02, double -5.159700e+02], [2 x i64] [i64 5823463708220961977, i64 549944464615793235], i32 94, [2 x double] [double -6.718600e+02, double -5.159700e+02] }, %struct.anon.22 { [2 x double] [double 0x40581F5C28F5C28F, double 0xC08A8947AE147AE1], i8 -45, [2 x double] [double -1.062500e+02, double 4.630400e+02], [2 x i64] [i64 -2893060814060645733, i64 481335323978107287], i32 220, [2 x double] [double 0.000000e+00, double 4.630400e+02] }, %struct.anon.22 { [2 x double] [double 3.215000e+02, double -2.409900e+02], i8 -100, [2 x double] [double -3.456100e+02, double 2.987700e+02], [2 x i64] [i64 8540168881747480837, i64 8122973825656772644], i32 114, [2 x double] [double 3.215000e+02, double 2.987700e+02] }, %struct.anon.22 { [2 x double] [double 7.979500e+02, double 0xC082D51EB851EB85], i8 34, [2 x double] [double 0x408E3B1EB851EB85, double -7.127300e+02], [2 x i64] [i64 -4034933418764703661, i64 -3858895469253124664], i32 248, [2 x double] [double 7.979500e+02, double -7.127300e+02] }, %struct.anon.22 { [2 x double] [double 0xC08BC86666666666, double -5.625000e+02], i8 -7, [2 x double] [double -7.195900e+02, double 9.092100e+02], [2 x i64] [i64 8174038176446478372, i64 -3938460821565959552], i32 199, [2 x double] [double 0xFFEFFFFFFFFFFFFF, double 9.092100e+02] }, %struct.anon.22 { [2 x double] [double 0x408A8947AE147AE1, double -9.253400e+02], i8 -19, [2 x double] [double -2.968200e+02, double 1.060700e+02], [2 x i64] [i64 2451463648244230570, i64 -7635248910846984279], i32 150, [2 x double] [double 1.570000e+00, double 1.060700e+02] }], align 16
@test_simde_mm_maskz_fixupimm_sd.test_vec = internal constant [8 x %struct.anon.23] [%struct.anon.23 { i8 74, [2 x double] [double 0x7FF8000000000000, double 7.497700e+02], [2 x double] [double -1.641800e+02, double 0x7FF8000000000000], [2 x i64] [i64 3888319529157145603, i64 -334497910293994631], i32 144, [2 x double] [double 0.000000e+00, double 0x7FF8000000000000] }, %struct.anon.23 { i8 -118, [2 x double] [double 0x7FF8000000000000, double -7.913100e+02], [2 x double] [double 0x7FF8000000000000, double -2.979000e+01], [2 x i64] [i64 3687016637497353641, i64 3048913945180468248], i32 226, [2 x double] [double 0.000000e+00, double -2.979000e+01] }, %struct.anon.23 { i8 85, [2 x double] [double 2.112700e+02, double -6.894800e+02], [2 x double] [double 0x40892651EB851EB8, double 0xC08A8B1EB851EB85], [2 x i64] [i64 -5305374856903872031, i64 -3419851811847149235], i32 104, [2 x double] [double 0x7FF8000000000000, double 0xC08A8B1EB851EB85] }, %struct.anon.23 { i8 -12, [2 x double] [double -4.485300e+02, double -2.690000e+02], [2 x double] [double -5.698500e+02, double -4.109300e+02], [2 x i64] [i64 -4825112106579726283, i64 -2817603741860012409], i32 59, [2 x double] [double 0.000000e+00, double -4.109300e+02] }, %struct.anon.23 { i8 -5, [2 x double] [double -4.520000e+01, double 4.084000e+02], [2 x double] [double -9.791100e+02, double 1.477000e+02], [2 x i64] [i64 -4404905431584405097, i64 8468874734379455357], i32 134, [2 x double] [double -9.791100e+02, double 1.477000e+02] }, %struct.anon.23 { i8 -28, [2 x double] [double 5.806000e+02, double 1.732700e+02], [2 x double] [double -1.901400e+02, double 4.038400e+02], [2 x i64] [i64 3798499378025477940, i64 -8357857463700311777], i32 203, [2 x double] [double 0.000000e+00, double 4.038400e+02] }, %struct.anon.23 { i8 -69, [2 x double] [double 7.716000e+02, double 0xC052247AE147AE14], [2 x double] [double -8.685900e+02, double -6.619900e+02], [2 x i64] [i64 -4448220770040524425, i64 -2024067965234304862], i32 198, [2 x double] [double 0xFFEFFFFFFFFFFFFF, double -6.619900e+02] }, %struct.anon.23 { i8 -23, [2 x double] [double 0xC082813333333333, double 7.528100e+02], [2 x double] [double -5.326100e+02, double 1.871700e+02], [2 x i64] [i64 -436671115233434838, i64 -6749082864589886401], i32 180, [2 x double] [double 9.000000e+01, double 1.871700e+02] }], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #16
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 24
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #16
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [24 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
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
  %arrayidx4 = getelementptr inbounds [24 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [24 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #16
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_fixupimm_ps() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  %r = alloca <4 x float>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <4 x float> @simde_mm_loadu_ps(ptr noundef @test_simde_mm_fixupimm_ps.test_vec)
  store <4 x float> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.0, ptr @test_simde_mm_fixupimm_ps.test_vec, i32 0, i32 1))
  store <4 x float> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.0, ptr @test_simde_mm_fixupimm_ps.test_vec, i32 0, i32 2))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %1 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %0, <4 x float> noundef %1, <2 x i64> noundef %2, i32 noundef 9)
  store <4 x float> %call3, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call4 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.0, ptr @test_simde_mm_fixupimm_ps.test_vec, i32 0, i32 4))
  %call5 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call6 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %3, <4 x float> noundef %call4, float noundef %call5, ptr noundef @.str.27, i32 noundef 67, ptr noundef @.str.28, ptr noundef @.str.29)
  %tobool = icmp ne i32 %call6, 0
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
  %call7 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 1))
  store <4 x float> %call7, ptr %a, align 16, !tbaa !16
  %call8 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 1, i32 1))
  store <4 x float> %call8, ptr %b, align 16, !tbaa !16
  %call9 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <2 x i64> %call9, ptr %c, align 16, !tbaa !16
  %4 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %5 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call10 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %4, <4 x float> noundef %5, <2 x i64> noundef %6, i32 noundef 65)
  store <4 x float> %call10, ptr %r, align 16, !tbaa !16
  br label %do.body11

do.body11:                                        ; preds = %do.end
  %7 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call12 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 1, i32 4))
  %call13 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call14 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %7, <4 x float> noundef %call12, float noundef %call13, ptr noundef @.str.27, i32 noundef 73, ptr noundef @.str.28, ptr noundef @.str.30)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body11
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %do.body11
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  %call20 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 2))
  store <4 x float> %call20, ptr %a, align 16, !tbaa !16
  %call21 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 2, i32 1))
  store <4 x float> %call21, ptr %b, align 16, !tbaa !16
  %call22 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <2 x i64> %call22, ptr %c, align 16, !tbaa !16
  %8 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %9 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %10 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call23 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %8, <4 x float> noundef %9, <2 x i64> noundef %10, i32 noundef 184)
  store <4 x float> %call23, ptr %r, align 16, !tbaa !16
  br label %do.body24

do.body24:                                        ; preds = %do.end19
  %11 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call25 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 2, i32 4))
  %call26 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call27 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %11, <4 x float> noundef %call25, float noundef %call26, ptr noundef @.str.27, i32 noundef 79, ptr noundef @.str.28, ptr noundef @.str.31)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.body24
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  %call33 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 3))
  store <4 x float> %call33, ptr %a, align 16, !tbaa !16
  %call34 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 3, i32 1))
  store <4 x float> %call34, ptr %b, align 16, !tbaa !16
  %call35 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <2 x i64> %call35, ptr %c, align 16, !tbaa !16
  %12 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %13 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %14 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call36 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %12, <4 x float> noundef %13, <2 x i64> noundef %14, i32 noundef 32)
  store <4 x float> %call36, ptr %r, align 16, !tbaa !16
  br label %do.body37

do.body37:                                        ; preds = %do.end32
  %15 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call38 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 3, i32 4))
  %call39 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call40 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %15, <4 x float> noundef %call38, float noundef %call39, ptr noundef @.str.27, i32 noundef 86, ptr noundef @.str.28, ptr noundef @.str.32)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body37
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %do.body37
  br label %do.cond44

do.cond44:                                        ; preds = %if.end43
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  %call46 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 4))
  store <4 x float> %call46, ptr %a, align 16, !tbaa !16
  %call47 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 4, i32 1))
  store <4 x float> %call47, ptr %b, align 16, !tbaa !16
  %call48 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <2 x i64> %call48, ptr %c, align 16, !tbaa !16
  %16 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %17 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call49 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %16, <4 x float> noundef %17, <2 x i64> noundef %18, i32 noundef 134)
  store <4 x float> %call49, ptr %r, align 16, !tbaa !16
  br label %do.body50

do.body50:                                        ; preds = %do.end45
  %19 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call51 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 4, i32 4))
  %call52 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call53 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %19, <4 x float> noundef %call51, float noundef %call52, ptr noundef @.str.27, i32 noundef 93, ptr noundef @.str.28, ptr noundef @.str.33)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body50
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %do.body50
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %call59 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 5))
  store <4 x float> %call59, ptr %a, align 16, !tbaa !16
  %call60 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 5, i32 1))
  store <4 x float> %call60, ptr %b, align 16, !tbaa !16
  %call61 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <2 x i64> %call61, ptr %c, align 16, !tbaa !16
  %20 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %21 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %22 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call62 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %20, <4 x float> noundef %21, <2 x i64> noundef %22, i32 noundef 120)
  store <4 x float> %call62, ptr %r, align 16, !tbaa !16
  br label %do.body63

do.body63:                                        ; preds = %do.end58
  %23 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call64 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 5, i32 4))
  %call65 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call66 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %23, <4 x float> noundef %call64, float noundef %call65, ptr noundef @.str.27, i32 noundef 99, ptr noundef @.str.28, ptr noundef @.str.34)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.body63
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %do.body63
  br label %do.cond70

do.cond70:                                        ; preds = %if.end69
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  %call72 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 6))
  store <4 x float> %call72, ptr %a, align 16, !tbaa !16
  %call73 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 6, i32 1))
  store <4 x float> %call73, ptr %b, align 16, !tbaa !16
  %call74 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <2 x i64> %call74, ptr %c, align 16, !tbaa !16
  %24 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %25 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %26 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call75 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %24, <4 x float> noundef %25, <2 x i64> noundef %26, i32 noundef 6)
  store <4 x float> %call75, ptr %r, align 16, !tbaa !16
  br label %do.body76

do.body76:                                        ; preds = %do.end71
  %27 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call77 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 6, i32 4))
  %call78 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call79 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %27, <4 x float> noundef %call77, float noundef %call78, ptr noundef @.str.27, i32 noundef 106, ptr noundef @.str.28, ptr noundef @.str.35)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %do.body76
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end82:                                         ; preds = %do.body76
  br label %do.cond83

do.cond83:                                        ; preds = %if.end82
  br label %do.end84

do.end84:                                         ; preds = %do.cond83
  %call85 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 7))
  store <4 x float> %call85, ptr %a, align 16, !tbaa !16
  %call86 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 7, i32 1))
  store <4 x float> %call86, ptr %b, align 16, !tbaa !16
  %call87 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <2 x i64> %call87, ptr %c, align 16, !tbaa !16
  %28 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %29 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %30 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call88 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %28, <4 x float> noundef %29, <2 x i64> noundef %30, i32 noundef 213)
  store <4 x float> %call88, ptr %r, align 16, !tbaa !16
  br label %do.body89

do.body89:                                        ; preds = %do.end84
  %31 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call90 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.0], ptr @test_simde_mm_fixupimm_ps.test_vec, i64 0, i64 7, i32 4))
  %call91 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call92 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %31, <4 x float> noundef %call90, float noundef %call91, ptr noundef @.str.27, i32 noundef 112, ptr noundef @.str.28, ptr noundef @.str.36)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body89
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %do.body89
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.then94, %if.then81, %if.then68, %if.then55, %if.then42, %if.then29, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_fixupimm_ps() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  %r = alloca <4 x float>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <4 x float> @simde_mm_loadu_ps(ptr noundef @test_simde_mm_mask_fixupimm_ps.test_vec)
  store <4 x float> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i32 0, i32 2))
  store <4 x float> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i32 0, i32 3))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %1 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %2 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %3 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %1, <4 x float> noundef %2, <2 x i64> noundef %3, i32 noundef 106)
  %call4 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %0, i8 noundef zeroext 56, <4 x float> noundef %call3)
  store <4 x float> %call4, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call5 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.1, ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i32 0, i32 5))
  %call6 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call7 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %4, <4 x float> noundef %call5, float noundef %call6, ptr noundef @.str.27, i32 noundef 207, ptr noundef @.str.28, ptr noundef @.str.29)
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
  %call8 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 1))
  store <4 x float> %call8, ptr %a, align 16, !tbaa !16
  %call9 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <4 x float> %call9, ptr %b, align 16, !tbaa !16
  %call10 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 3))
  store <2 x i64> %call10, ptr %c, align 16, !tbaa !16
  %5 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %6 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %7 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %8 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call11 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %6, <4 x float> noundef %7, <2 x i64> noundef %8, i32 noundef 69)
  %call12 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %5, i8 noundef zeroext -88, <4 x float> noundef %call11)
  store <4 x float> %call12, ptr %r, align 16, !tbaa !16
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %9 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call14 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 5))
  %call15 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call16 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %9, <4 x float> noundef %call14, float noundef %call15, ptr noundef @.str.27, i32 noundef 214, ptr noundef @.str.28, ptr noundef @.str.30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %call22 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 2))
  store <4 x float> %call22, ptr %a, align 16, !tbaa !16
  %call23 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <4 x float> %call23, ptr %b, align 16, !tbaa !16
  %call24 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 3))
  store <2 x i64> %call24, ptr %c, align 16, !tbaa !16
  %10 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %11 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %12 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %13 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call25 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %11, <4 x float> noundef %12, <2 x i64> noundef %13, i32 noundef 94)
  %call26 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %10, i8 noundef zeroext 48, <4 x float> noundef %call25)
  store <4 x float> %call26, ptr %r, align 16, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end21
  %14 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call28 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 5))
  %call29 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call30 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %14, <4 x float> noundef %call28, float noundef %call29, ptr noundef @.str.27, i32 noundef 220, ptr noundef @.str.28, ptr noundef @.str.31)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 3))
  store <4 x float> %call36, ptr %a, align 16, !tbaa !16
  %call37 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <4 x float> %call37, ptr %b, align 16, !tbaa !16
  %call38 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 3))
  store <2 x i64> %call38, ptr %c, align 16, !tbaa !16
  %15 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %16 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %17 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call39 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %16, <4 x float> noundef %17, <2 x i64> noundef %18, i32 noundef 96)
  %call40 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %15, i8 noundef zeroext -109, <4 x float> noundef %call39)
  store <4 x float> %call40, ptr %r, align 16, !tbaa !16
  br label %do.body41

do.body41:                                        ; preds = %do.end35
  %19 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call42 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 5))
  %call43 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call44 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %19, <4 x float> noundef %call42, float noundef %call43, ptr noundef @.str.27, i32 noundef 227, ptr noundef @.str.28, ptr noundef @.str.32)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %call50 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 4))
  store <4 x float> %call50, ptr %a, align 16, !tbaa !16
  %call51 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <4 x float> %call51, ptr %b, align 16, !tbaa !16
  %call52 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 3))
  store <2 x i64> %call52, ptr %c, align 16, !tbaa !16
  %20 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %21 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %22 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %23 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call53 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %21, <4 x float> noundef %22, <2 x i64> noundef %23, i32 noundef 123)
  %call54 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %20, i8 noundef zeroext 49, <4 x float> noundef %call53)
  store <4 x float> %call54, ptr %r, align 16, !tbaa !16
  br label %do.body55

do.body55:                                        ; preds = %do.end49
  %24 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call56 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 5))
  %call57 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call58 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %24, <4 x float> noundef %call56, float noundef %call57, ptr noundef @.str.27, i32 noundef 234, ptr noundef @.str.28, ptr noundef @.str.33)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %do.body55
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %call64 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 5))
  store <4 x float> %call64, ptr %a, align 16, !tbaa !16
  %call65 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <4 x float> %call65, ptr %b, align 16, !tbaa !16
  %call66 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 3))
  store <2 x i64> %call66, ptr %c, align 16, !tbaa !16
  %25 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %26 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %27 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %28 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call67 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %26, <4 x float> noundef %27, <2 x i64> noundef %28, i32 noundef 251)
  %call68 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %25, i8 noundef zeroext -6, <4 x float> noundef %call67)
  store <4 x float> %call68, ptr %r, align 16, !tbaa !16
  br label %do.body69

do.body69:                                        ; preds = %do.end63
  %29 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call70 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 5))
  %call71 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call72 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %29, <4 x float> noundef %call70, float noundef %call71, ptr noundef @.str.27, i32 noundef 240, ptr noundef @.str.28, ptr noundef @.str.34)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body69
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.body69
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 6))
  store <4 x float> %call78, ptr %a, align 16, !tbaa !16
  %call79 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <4 x float> %call79, ptr %b, align 16, !tbaa !16
  %call80 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 3))
  store <2 x i64> %call80, ptr %c, align 16, !tbaa !16
  %30 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %31 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %32 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %33 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call81 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %31, <4 x float> noundef %32, <2 x i64> noundef %33, i32 noundef 69)
  %call82 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %30, i8 noundef zeroext -93, <4 x float> noundef %call81)
  store <4 x float> %call82, ptr %r, align 16, !tbaa !16
  br label %do.body83

do.body83:                                        ; preds = %do.end77
  %34 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call84 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 5))
  %call85 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call86 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %34, <4 x float> noundef %call84, float noundef %call85, ptr noundef @.str.27, i32 noundef 246, ptr noundef @.str.28, ptr noundef @.str.35)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %call92 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 7))
  store <4 x float> %call92, ptr %a, align 16, !tbaa !16
  %call93 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <4 x float> %call93, ptr %b, align 16, !tbaa !16
  %call94 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 3))
  store <2 x i64> %call94, ptr %c, align 16, !tbaa !16
  %35 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %36 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %37 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %38 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call95 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %36, <4 x float> noundef %37, <2 x i64> noundef %38, i32 noundef 176)
  %call96 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %35, i8 noundef zeroext -80, <4 x float> noundef %call95)
  store <4 x float> %call96, ptr %r, align 16, !tbaa !16
  br label %do.body97

do.body97:                                        ; preds = %do.end91
  %39 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call98 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.1], ptr @test_simde_mm_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 5))
  %call99 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call100 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %39, <4 x float> noundef %call98, float noundef %call99, ptr noundef @.str.27, i32 noundef 252, ptr noundef @.str.28, ptr noundef @.str.36)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then102, %if.then88, %if.then74, %if.then60, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_maskz_fixupimm_ps() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  %r = alloca <4 x float>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.2, ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i32 0, i32 1))
  store <4 x float> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.2, ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i32 0, i32 2))
  store <4 x float> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.2, ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i32 0, i32 3))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %1 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %0, <4 x float> noundef %1, <2 x i64> noundef %2, i32 noundef 173)
  %call4 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 124, <4 x float> noundef %call3)
  store <4 x float> %call4, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call5 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.2, ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i32 0, i32 5))
  %call6 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call7 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %3, <4 x float> noundef %call5, float noundef %call6, ptr noundef @.str.27, i32 noundef 349, ptr noundef @.str.28, ptr noundef @.str.29)
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
  %call8 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 1))
  store <4 x float> %call8, ptr %a, align 16, !tbaa !16
  %call9 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <4 x float> %call9, ptr %b, align 16, !tbaa !16
  %call10 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 3))
  store <2 x i64> %call10, ptr %c, align 16, !tbaa !16
  %4 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %5 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call11 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %4, <4 x float> noundef %5, <2 x i64> noundef %6, i32 noundef 93)
  %call12 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 106, <4 x float> noundef %call11)
  store <4 x float> %call12, ptr %r, align 16, !tbaa !16
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %7 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call14 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 5))
  %call15 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call16 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %7, <4 x float> noundef %call14, float noundef %call15, ptr noundef @.str.27, i32 noundef 355, ptr noundef @.str.28, ptr noundef @.str.30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %call22 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 1))
  store <4 x float> %call22, ptr %a, align 16, !tbaa !16
  %call23 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <4 x float> %call23, ptr %b, align 16, !tbaa !16
  %call24 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 3))
  store <2 x i64> %call24, ptr %c, align 16, !tbaa !16
  %8 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %9 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %10 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call25 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %8, <4 x float> noundef %9, <2 x i64> noundef %10, i32 noundef 244)
  %call26 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 31, <4 x float> noundef %call25)
  store <4 x float> %call26, ptr %r, align 16, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end21
  %11 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call28 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 5))
  %call29 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call30 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %11, <4 x float> noundef %call28, float noundef %call29, ptr noundef @.str.27, i32 noundef 361, ptr noundef @.str.28, ptr noundef @.str.31)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 1))
  store <4 x float> %call36, ptr %a, align 16, !tbaa !16
  %call37 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <4 x float> %call37, ptr %b, align 16, !tbaa !16
  %call38 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 3))
  store <2 x i64> %call38, ptr %c, align 16, !tbaa !16
  %12 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %13 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %14 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call39 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %12, <4 x float> noundef %13, <2 x i64> noundef %14, i32 noundef 56)
  %call40 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 66, <4 x float> noundef %call39)
  store <4 x float> %call40, ptr %r, align 16, !tbaa !16
  br label %do.body41

do.body41:                                        ; preds = %do.end35
  %15 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call42 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 5))
  %call43 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call44 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %15, <4 x float> noundef %call42, float noundef %call43, ptr noundef @.str.27, i32 noundef 368, ptr noundef @.str.28, ptr noundef @.str.32)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %call50 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 1))
  store <4 x float> %call50, ptr %a, align 16, !tbaa !16
  %call51 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <4 x float> %call51, ptr %b, align 16, !tbaa !16
  %call52 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 3))
  store <2 x i64> %call52, ptr %c, align 16, !tbaa !16
  %16 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %17 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call53 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %16, <4 x float> noundef %17, <2 x i64> noundef %18, i32 noundef 211)
  %call54 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 15, <4 x float> noundef %call53)
  store <4 x float> %call54, ptr %r, align 16, !tbaa !16
  br label %do.body55

do.body55:                                        ; preds = %do.end49
  %19 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call56 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 5))
  %call57 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call58 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %19, <4 x float> noundef %call56, float noundef %call57, ptr noundef @.str.27, i32 noundef 374, ptr noundef @.str.28, ptr noundef @.str.33)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %do.body55
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %call64 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 1))
  store <4 x float> %call64, ptr %a, align 16, !tbaa !16
  %call65 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <4 x float> %call65, ptr %b, align 16, !tbaa !16
  %call66 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 3))
  store <2 x i64> %call66, ptr %c, align 16, !tbaa !16
  %20 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %21 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %22 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call67 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %20, <4 x float> noundef %21, <2 x i64> noundef %22, i32 noundef 92)
  %call68 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext -128, <4 x float> noundef %call67)
  store <4 x float> %call68, ptr %r, align 16, !tbaa !16
  br label %do.body69

do.body69:                                        ; preds = %do.end63
  %23 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call70 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 5))
  %call71 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call72 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %23, <4 x float> noundef %call70, float noundef %call71, ptr noundef @.str.27, i32 noundef 380, ptr noundef @.str.28, ptr noundef @.str.34)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body69
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.body69
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 1))
  store <4 x float> %call78, ptr %a, align 16, !tbaa !16
  %call79 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <4 x float> %call79, ptr %b, align 16, !tbaa !16
  %call80 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 3))
  store <2 x i64> %call80, ptr %c, align 16, !tbaa !16
  %24 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %25 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %26 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call81 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %24, <4 x float> noundef %25, <2 x i64> noundef %26, i32 noundef 49)
  %call82 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext -67, <4 x float> noundef %call81)
  store <4 x float> %call82, ptr %r, align 16, !tbaa !16
  br label %do.body83

do.body83:                                        ; preds = %do.end77
  %27 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call84 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 5))
  %call85 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call86 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %27, <4 x float> noundef %call84, float noundef %call85, ptr noundef @.str.27, i32 noundef 386, ptr noundef @.str.28, ptr noundef @.str.35)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %call92 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 1))
  store <4 x float> %call92, ptr %a, align 16, !tbaa !16
  %call93 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <4 x float> %call93, ptr %b, align 16, !tbaa !16
  %call94 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 3))
  store <2 x i64> %call94, ptr %c, align 16, !tbaa !16
  %28 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %29 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %30 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call95 = call <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %28, <4 x float> noundef %29, <2 x i64> noundef %30, i32 noundef 152)
  %call96 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext -11, <4 x float> noundef %call95)
  store <4 x float> %call96, ptr %r, align 16, !tbaa !16
  br label %do.body97

do.body97:                                        ; preds = %do.end91
  %31 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call98 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.2], ptr @test_simde_mm_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 5))
  %call99 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call100 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %31, <4 x float> noundef %call98, float noundef %call99, ptr noundef @.str.27, i32 noundef 392, ptr noundef @.str.28, ptr noundef @.str.36)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then102, %if.then88, %if.then74, %if.then60, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_fixupimm_ps() #4 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <8 x float>, align 32
  %b = alloca <8 x float>, align 32
  %r = alloca <8 x float>, align 32
  %c = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <8 x float>, align 32
  %indirect-arg-temp3 = alloca <8 x float>, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <8 x float>, align 32
  %indirect-arg-temp9 = alloca <8 x float>, align 32
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp14 = alloca <8 x float>, align 32
  %indirect-arg-temp15 = alloca <8 x float>, align 32
  %indirect-arg-temp16 = alloca <4 x i64>, align 32
  %indirect-arg-temp21 = alloca <8 x float>, align 32
  %indirect-arg-temp22 = alloca <8 x float>, align 32
  %indirect-arg-temp32 = alloca <8 x float>, align 32
  %indirect-arg-temp33 = alloca <8 x float>, align 32
  %indirect-arg-temp34 = alloca <4 x i64>, align 32
  %indirect-arg-temp39 = alloca <8 x float>, align 32
  %indirect-arg-temp40 = alloca <8 x float>, align 32
  %indirect-arg-temp50 = alloca <8 x float>, align 32
  %indirect-arg-temp51 = alloca <8 x float>, align 32
  %indirect-arg-temp52 = alloca <4 x i64>, align 32
  %indirect-arg-temp57 = alloca <8 x float>, align 32
  %indirect-arg-temp58 = alloca <8 x float>, align 32
  %indirect-arg-temp68 = alloca <8 x float>, align 32
  %indirect-arg-temp69 = alloca <8 x float>, align 32
  %indirect-arg-temp70 = alloca <4 x i64>, align 32
  %indirect-arg-temp75 = alloca <8 x float>, align 32
  %indirect-arg-temp76 = alloca <8 x float>, align 32
  %indirect-arg-temp86 = alloca <8 x float>, align 32
  %indirect-arg-temp87 = alloca <8 x float>, align 32
  %indirect-arg-temp88 = alloca <4 x i64>, align 32
  %indirect-arg-temp93 = alloca <8 x float>, align 32
  %indirect-arg-temp94 = alloca <8 x float>, align 32
  %indirect-arg-temp104 = alloca <8 x float>, align 32
  %indirect-arg-temp105 = alloca <8 x float>, align 32
  %indirect-arg-temp106 = alloca <4 x i64>, align 32
  %indirect-arg-temp111 = alloca <8 x float>, align 32
  %indirect-arg-temp112 = alloca <8 x float>, align 32
  %indirect-arg-temp122 = alloca <8 x float>, align 32
  %indirect-arg-temp123 = alloca <8 x float>, align 32
  %indirect-arg-temp124 = alloca <4 x i64>, align 32
  %indirect-arg-temp129 = alloca <8 x float>, align 32
  %indirect-arg-temp130 = alloca <8 x float>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #16
  %call = call <8 x float> @simde_mm256_loadu_ps(ptr noundef @test_simde_mm256_fixupimm_ps.test_vec)
  store <8 x float> %call, ptr %a, align 32, !tbaa !16
  %call1 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @test_simde_mm256_fixupimm_ps.test_vec, i32 0, i32 1))
  store <8 x float> %call1, ptr %b, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @test_simde_mm256_fixupimm_ps.test_vec, i32 0, i32 2))
  store <4 x i64> %call2, ptr %c, align 32, !tbaa !16
  %0 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %1 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %0, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <8 x float> %1, ptr %indirect-arg-temp3, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp4, align 32, !tbaa !16
  %call5 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4, i32 noundef 59)
  store <8 x float> %call5, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call6 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.3, ptr @test_simde_mm256_fixupimm_ps.test_vec, i32 0, i32 4))
  %call7 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %3, ptr %indirect-arg-temp8, align 32, !tbaa !16
  store <8 x float> %call6, ptr %indirect-arg-temp9, align 32, !tbaa !16
  %call10 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp8, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp9, float noundef %call7, ptr noundef @.str.27, i32 noundef 504, ptr noundef @.str.28, ptr noundef @.str.38)
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
  %call11 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 1))
  store <8 x float> %call11, ptr %a, align 32, !tbaa !16
  %call12 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 1, i32 1))
  store <8 x float> %call12, ptr %b, align 32, !tbaa !16
  %call13 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <4 x i64> %call13, ptr %c, align 32, !tbaa !16
  %4 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %5 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %6 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %4, ptr %indirect-arg-temp14, align 32, !tbaa !16
  store <8 x float> %5, ptr %indirect-arg-temp15, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp16, align 32, !tbaa !16
  %call17 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp14, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp15, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp16, i32 noundef 61)
  store <8 x float> %call17, ptr %r, align 32, !tbaa !16
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %7 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call19 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 1, i32 4))
  %call20 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %7, ptr %indirect-arg-temp21, align 32, !tbaa !16
  store <8 x float> %call19, ptr %indirect-arg-temp22, align 32, !tbaa !16
  %call23 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp21, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp22, float noundef %call20, ptr noundef @.str.27, i32 noundef 510, ptr noundef @.str.28, ptr noundef @.str.39)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %do.body18
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  %call29 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 2))
  store <8 x float> %call29, ptr %a, align 32, !tbaa !16
  %call30 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 2, i32 1))
  store <8 x float> %call30, ptr %b, align 32, !tbaa !16
  %call31 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <4 x i64> %call31, ptr %c, align 32, !tbaa !16
  %8 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %9 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %10 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %8, ptr %indirect-arg-temp32, align 32, !tbaa !16
  store <8 x float> %9, ptr %indirect-arg-temp33, align 32, !tbaa !16
  store <4 x i64> %10, ptr %indirect-arg-temp34, align 32, !tbaa !16
  %call35 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp32, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp33, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp34, i32 noundef 76)
  store <8 x float> %call35, ptr %r, align 32, !tbaa !16
  br label %do.body36

do.body36:                                        ; preds = %do.end28
  %11 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call37 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 2, i32 4))
  %call38 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %11, ptr %indirect-arg-temp39, align 32, !tbaa !16
  store <8 x float> %call37, ptr %indirect-arg-temp40, align 32, !tbaa !16
  %call41 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp39, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp40, float noundef %call38, ptr noundef @.str.27, i32 noundef 516, ptr noundef @.str.28, ptr noundef @.str.40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body36
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %do.body36
  br label %do.cond45

do.cond45:                                        ; preds = %if.end44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  %call47 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 3))
  store <8 x float> %call47, ptr %a, align 32, !tbaa !16
  %call48 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 3, i32 1))
  store <8 x float> %call48, ptr %b, align 32, !tbaa !16
  %call49 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <4 x i64> %call49, ptr %c, align 32, !tbaa !16
  %12 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %13 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %14 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %12, ptr %indirect-arg-temp50, align 32, !tbaa !16
  store <8 x float> %13, ptr %indirect-arg-temp51, align 32, !tbaa !16
  store <4 x i64> %14, ptr %indirect-arg-temp52, align 32, !tbaa !16
  %call53 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp50, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp51, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp52, i32 noundef 32)
  store <8 x float> %call53, ptr %r, align 32, !tbaa !16
  br label %do.body54

do.body54:                                        ; preds = %do.end46
  %15 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call55 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 3, i32 4))
  %call56 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %15, ptr %indirect-arg-temp57, align 32, !tbaa !16
  store <8 x float> %call55, ptr %indirect-arg-temp58, align 32, !tbaa !16
  %call59 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp57, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp58, float noundef %call56, ptr noundef @.str.27, i32 noundef 522, ptr noundef @.str.28, ptr noundef @.str.41)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body54
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %do.body54
  br label %do.cond63

do.cond63:                                        ; preds = %if.end62
  br label %do.end64

do.end64:                                         ; preds = %do.cond63
  %call65 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 4))
  store <8 x float> %call65, ptr %a, align 32, !tbaa !16
  %call66 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 4, i32 1))
  store <8 x float> %call66, ptr %b, align 32, !tbaa !16
  %call67 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <4 x i64> %call67, ptr %c, align 32, !tbaa !16
  %16 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %17 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %18 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %16, ptr %indirect-arg-temp68, align 32, !tbaa !16
  store <8 x float> %17, ptr %indirect-arg-temp69, align 32, !tbaa !16
  store <4 x i64> %18, ptr %indirect-arg-temp70, align 32, !tbaa !16
  %call71 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp68, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp69, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp70, i32 noundef 22)
  store <8 x float> %call71, ptr %r, align 32, !tbaa !16
  br label %do.body72

do.body72:                                        ; preds = %do.end64
  %19 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call73 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 4, i32 4))
  %call74 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %19, ptr %indirect-arg-temp75, align 32, !tbaa !16
  store <8 x float> %call73, ptr %indirect-arg-temp76, align 32, !tbaa !16
  %call77 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp75, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp76, float noundef %call74, ptr noundef @.str.27, i32 noundef 529, ptr noundef @.str.28, ptr noundef @.str.42)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body72
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end80:                                         ; preds = %do.body72
  br label %do.cond81

do.cond81:                                        ; preds = %if.end80
  br label %do.end82

do.end82:                                         ; preds = %do.cond81
  %call83 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 5))
  store <8 x float> %call83, ptr %a, align 32, !tbaa !16
  %call84 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 5, i32 1))
  store <8 x float> %call84, ptr %b, align 32, !tbaa !16
  %call85 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <4 x i64> %call85, ptr %c, align 32, !tbaa !16
  %20 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %21 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %22 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %20, ptr %indirect-arg-temp86, align 32, !tbaa !16
  store <8 x float> %21, ptr %indirect-arg-temp87, align 32, !tbaa !16
  store <4 x i64> %22, ptr %indirect-arg-temp88, align 32, !tbaa !16
  %call89 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp86, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp87, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp88, i32 noundef 235)
  store <8 x float> %call89, ptr %r, align 32, !tbaa !16
  br label %do.body90

do.body90:                                        ; preds = %do.end82
  %23 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call91 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 5, i32 4))
  %call92 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %23, ptr %indirect-arg-temp93, align 32, !tbaa !16
  store <8 x float> %call91, ptr %indirect-arg-temp94, align 32, !tbaa !16
  %call95 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp93, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp94, float noundef %call92, ptr noundef @.str.27, i32 noundef 536, ptr noundef @.str.28, ptr noundef @.str.43)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.body90
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end98:                                         ; preds = %do.body90
  br label %do.cond99

do.cond99:                                        ; preds = %if.end98
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  %call101 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 6))
  store <8 x float> %call101, ptr %a, align 32, !tbaa !16
  %call102 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 6, i32 1))
  store <8 x float> %call102, ptr %b, align 32, !tbaa !16
  %call103 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <4 x i64> %call103, ptr %c, align 32, !tbaa !16
  %24 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %25 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %26 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %24, ptr %indirect-arg-temp104, align 32, !tbaa !16
  store <8 x float> %25, ptr %indirect-arg-temp105, align 32, !tbaa !16
  store <4 x i64> %26, ptr %indirect-arg-temp106, align 32, !tbaa !16
  %call107 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp104, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp105, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp106, i32 noundef 70)
  store <8 x float> %call107, ptr %r, align 32, !tbaa !16
  br label %do.body108

do.body108:                                       ; preds = %do.end100
  %27 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call109 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 6, i32 4))
  %call110 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %27, ptr %indirect-arg-temp111, align 32, !tbaa !16
  store <8 x float> %call109, ptr %indirect-arg-temp112, align 32, !tbaa !16
  %call113 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp111, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp112, float noundef %call110, ptr noundef @.str.27, i32 noundef 543, ptr noundef @.str.28, ptr noundef @.str.44)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body108
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %do.body108
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %call119 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 7))
  store <8 x float> %call119, ptr %a, align 32, !tbaa !16
  %call120 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 7, i32 1))
  store <8 x float> %call120, ptr %b, align 32, !tbaa !16
  %call121 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <4 x i64> %call121, ptr %c, align 32, !tbaa !16
  %28 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %29 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %30 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %28, ptr %indirect-arg-temp122, align 32, !tbaa !16
  store <8 x float> %29, ptr %indirect-arg-temp123, align 32, !tbaa !16
  store <4 x i64> %30, ptr %indirect-arg-temp124, align 32, !tbaa !16
  %call125 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp122, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp123, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp124, i32 noundef 173)
  store <8 x float> %call125, ptr %r, align 32, !tbaa !16
  br label %do.body126

do.body126:                                       ; preds = %do.end118
  %31 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call127 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.3], ptr @test_simde_mm256_fixupimm_ps.test_vec, i64 0, i64 7, i32 4))
  %call128 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %31, ptr %indirect-arg-temp129, align 32, !tbaa !16
  store <8 x float> %call127, ptr %indirect-arg-temp130, align 32, !tbaa !16
  %call131 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp129, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp130, float noundef %call128, ptr noundef @.str.27, i32 noundef 550, ptr noundef @.str.28, ptr noundef @.str.45)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %do.body126
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end134:                                        ; preds = %do.body126
  br label %do.cond135

do.cond135:                                       ; preds = %if.end134
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %if.then133, %if.then115, %if.then97, %if.then79, %if.then61, %if.then43, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_fixupimm_ps() #4 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <8 x float>, align 32
  %b = alloca <8 x float>, align 32
  %r = alloca <8 x float>, align 32
  %c = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <8 x float>, align 32
  %indirect-arg-temp3 = alloca <8 x float>, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <8 x float>, align 32
  %indirect-arg-temp7 = alloca <8 x float>, align 32
  %indirect-arg-temp11 = alloca <8 x float>, align 32
  %indirect-arg-temp12 = alloca <8 x float>, align 32
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp17 = alloca <8 x float>, align 32
  %indirect-arg-temp18 = alloca <8 x float>, align 32
  %indirect-arg-temp19 = alloca <4 x i64>, align 32
  %indirect-arg-temp21 = alloca <8 x float>, align 32
  %indirect-arg-temp22 = alloca <8 x float>, align 32
  %indirect-arg-temp27 = alloca <8 x float>, align 32
  %indirect-arg-temp28 = alloca <8 x float>, align 32
  %indirect-arg-temp38 = alloca <8 x float>, align 32
  %indirect-arg-temp39 = alloca <8 x float>, align 32
  %indirect-arg-temp40 = alloca <4 x i64>, align 32
  %indirect-arg-temp42 = alloca <8 x float>, align 32
  %indirect-arg-temp43 = alloca <8 x float>, align 32
  %indirect-arg-temp48 = alloca <8 x float>, align 32
  %indirect-arg-temp49 = alloca <8 x float>, align 32
  %indirect-arg-temp59 = alloca <8 x float>, align 32
  %indirect-arg-temp60 = alloca <8 x float>, align 32
  %indirect-arg-temp61 = alloca <4 x i64>, align 32
  %indirect-arg-temp63 = alloca <8 x float>, align 32
  %indirect-arg-temp64 = alloca <8 x float>, align 32
  %indirect-arg-temp69 = alloca <8 x float>, align 32
  %indirect-arg-temp70 = alloca <8 x float>, align 32
  %indirect-arg-temp80 = alloca <8 x float>, align 32
  %indirect-arg-temp81 = alloca <8 x float>, align 32
  %indirect-arg-temp82 = alloca <4 x i64>, align 32
  %indirect-arg-temp84 = alloca <8 x float>, align 32
  %indirect-arg-temp85 = alloca <8 x float>, align 32
  %indirect-arg-temp90 = alloca <8 x float>, align 32
  %indirect-arg-temp91 = alloca <8 x float>, align 32
  %indirect-arg-temp101 = alloca <8 x float>, align 32
  %indirect-arg-temp102 = alloca <8 x float>, align 32
  %indirect-arg-temp103 = alloca <4 x i64>, align 32
  %indirect-arg-temp105 = alloca <8 x float>, align 32
  %indirect-arg-temp106 = alloca <8 x float>, align 32
  %indirect-arg-temp111 = alloca <8 x float>, align 32
  %indirect-arg-temp112 = alloca <8 x float>, align 32
  %indirect-arg-temp122 = alloca <8 x float>, align 32
  %indirect-arg-temp123 = alloca <8 x float>, align 32
  %indirect-arg-temp124 = alloca <4 x i64>, align 32
  %indirect-arg-temp126 = alloca <8 x float>, align 32
  %indirect-arg-temp127 = alloca <8 x float>, align 32
  %indirect-arg-temp132 = alloca <8 x float>, align 32
  %indirect-arg-temp133 = alloca <8 x float>, align 32
  %indirect-arg-temp143 = alloca <8 x float>, align 32
  %indirect-arg-temp144 = alloca <8 x float>, align 32
  %indirect-arg-temp145 = alloca <4 x i64>, align 32
  %indirect-arg-temp147 = alloca <8 x float>, align 32
  %indirect-arg-temp148 = alloca <8 x float>, align 32
  %indirect-arg-temp153 = alloca <8 x float>, align 32
  %indirect-arg-temp154 = alloca <8 x float>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #16
  %call = call <8 x float> @simde_mm256_loadu_ps(ptr noundef @test_simde_mm256_mask_fixupimm_ps.test_vec)
  store <8 x float> %call, ptr %a, align 32, !tbaa !16
  %call1 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.4, ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i32 0, i32 2))
  store <8 x float> %call1, ptr %b, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.4, ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i32 0, i32 3))
  store <4 x i64> %call2, ptr %c, align 32, !tbaa !16
  %0 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %1 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %2 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <8 x float> %2, ptr %indirect-arg-temp3, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp4, align 32, !tbaa !16
  %call5 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4, i32 noundef 135)
  store <8 x float> %0, ptr %indirect-arg-temp6, align 32, !tbaa !16
  store <8 x float> %call5, ptr %indirect-arg-temp7, align 32, !tbaa !16
  %call8 = call <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp6, i8 noundef zeroext -76, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp7)
  store <8 x float> %call8, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call9 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.4, ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i32 0, i32 5))
  %call10 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %4, ptr %indirect-arg-temp11, align 32, !tbaa !16
  store <8 x float> %call9, ptr %indirect-arg-temp12, align 32, !tbaa !16
  %call13 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp11, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp12, float noundef %call10, ptr noundef @.str.27, i32 noundef 670, ptr noundef @.str.28, ptr noundef @.str.38)
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
  %call14 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 1))
  store <8 x float> %call14, ptr %a, align 32, !tbaa !16
  %call15 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <8 x float> %call15, ptr %b, align 32, !tbaa !16
  %call16 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 3))
  store <4 x i64> %call16, ptr %c, align 32, !tbaa !16
  %5 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %6 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %7 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %8 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %6, ptr %indirect-arg-temp17, align 32, !tbaa !16
  store <8 x float> %7, ptr %indirect-arg-temp18, align 32, !tbaa !16
  store <4 x i64> %8, ptr %indirect-arg-temp19, align 32, !tbaa !16
  %call20 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp17, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp18, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp19, i32 noundef 16)
  store <8 x float> %5, ptr %indirect-arg-temp21, align 32, !tbaa !16
  store <8 x float> %call20, ptr %indirect-arg-temp22, align 32, !tbaa !16
  %call23 = call <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp21, i8 noundef zeroext -13, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp22)
  store <8 x float> %call23, ptr %r, align 32, !tbaa !16
  br label %do.body24

do.body24:                                        ; preds = %do.end
  %9 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call25 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 5))
  %call26 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %9, ptr %indirect-arg-temp27, align 32, !tbaa !16
  store <8 x float> %call25, ptr %indirect-arg-temp28, align 32, !tbaa !16
  %call29 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp27, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp28, float noundef %call26, ptr noundef @.str.27, i32 noundef 676, ptr noundef @.str.28, ptr noundef @.str.39)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %do.body24
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  %call35 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 2))
  store <8 x float> %call35, ptr %a, align 32, !tbaa !16
  %call36 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <8 x float> %call36, ptr %b, align 32, !tbaa !16
  %call37 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 3))
  store <4 x i64> %call37, ptr %c, align 32, !tbaa !16
  %10 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %11 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %12 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %13 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %11, ptr %indirect-arg-temp38, align 32, !tbaa !16
  store <8 x float> %12, ptr %indirect-arg-temp39, align 32, !tbaa !16
  store <4 x i64> %13, ptr %indirect-arg-temp40, align 32, !tbaa !16
  %call41 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp38, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp39, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp40, i32 noundef 182)
  store <8 x float> %10, ptr %indirect-arg-temp42, align 32, !tbaa !16
  store <8 x float> %call41, ptr %indirect-arg-temp43, align 32, !tbaa !16
  %call44 = call <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp42, i8 noundef zeroext 0, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp43)
  store <8 x float> %call44, ptr %r, align 32, !tbaa !16
  br label %do.body45

do.body45:                                        ; preds = %do.end34
  %14 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call46 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 5))
  %call47 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %14, ptr %indirect-arg-temp48, align 32, !tbaa !16
  store <8 x float> %call46, ptr %indirect-arg-temp49, align 32, !tbaa !16
  %call50 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp48, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp49, float noundef %call47, ptr noundef @.str.27, i32 noundef 683, ptr noundef @.str.28, ptr noundef @.str.40)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body45
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %do.body45
  br label %do.cond54

do.cond54:                                        ; preds = %if.end53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  %call56 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 3))
  store <8 x float> %call56, ptr %a, align 32, !tbaa !16
  %call57 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <8 x float> %call57, ptr %b, align 32, !tbaa !16
  %call58 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 3))
  store <4 x i64> %call58, ptr %c, align 32, !tbaa !16
  %15 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %16 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %17 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %18 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %16, ptr %indirect-arg-temp59, align 32, !tbaa !16
  store <8 x float> %17, ptr %indirect-arg-temp60, align 32, !tbaa !16
  store <4 x i64> %18, ptr %indirect-arg-temp61, align 32, !tbaa !16
  %call62 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp59, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp60, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp61, i32 noundef 31)
  store <8 x float> %15, ptr %indirect-arg-temp63, align 32, !tbaa !16
  store <8 x float> %call62, ptr %indirect-arg-temp64, align 32, !tbaa !16
  %call65 = call <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp63, i8 noundef zeroext -114, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp64)
  store <8 x float> %call65, ptr %r, align 32, !tbaa !16
  br label %do.body66

do.body66:                                        ; preds = %do.end55
  %19 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call67 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 5))
  %call68 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %19, ptr %indirect-arg-temp69, align 32, !tbaa !16
  store <8 x float> %call67, ptr %indirect-arg-temp70, align 32, !tbaa !16
  %call71 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp69, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp70, float noundef %call68, ptr noundef @.str.27, i32 noundef 689, ptr noundef @.str.28, ptr noundef @.str.41)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body66
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %do.body66
  br label %do.cond75

do.cond75:                                        ; preds = %if.end74
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  %call77 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 4))
  store <8 x float> %call77, ptr %a, align 32, !tbaa !16
  %call78 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <8 x float> %call78, ptr %b, align 32, !tbaa !16
  %call79 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 3))
  store <4 x i64> %call79, ptr %c, align 32, !tbaa !16
  %20 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %21 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %22 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %23 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %21, ptr %indirect-arg-temp80, align 32, !tbaa !16
  store <8 x float> %22, ptr %indirect-arg-temp81, align 32, !tbaa !16
  store <4 x i64> %23, ptr %indirect-arg-temp82, align 32, !tbaa !16
  %call83 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp80, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp81, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp82, i32 noundef 10)
  store <8 x float> %20, ptr %indirect-arg-temp84, align 32, !tbaa !16
  store <8 x float> %call83, ptr %indirect-arg-temp85, align 32, !tbaa !16
  %call86 = call <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp84, i8 noundef zeroext 9, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp85)
  store <8 x float> %call86, ptr %r, align 32, !tbaa !16
  br label %do.body87

do.body87:                                        ; preds = %do.end76
  %24 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call88 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 5))
  %call89 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %24, ptr %indirect-arg-temp90, align 32, !tbaa !16
  store <8 x float> %call88, ptr %indirect-arg-temp91, align 32, !tbaa !16
  %call92 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp90, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp91, float noundef %call89, ptr noundef @.str.27, i32 noundef 695, ptr noundef @.str.28, ptr noundef @.str.42)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body87
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %do.body87
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  %call98 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 5))
  store <8 x float> %call98, ptr %a, align 32, !tbaa !16
  %call99 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <8 x float> %call99, ptr %b, align 32, !tbaa !16
  %call100 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 3))
  store <4 x i64> %call100, ptr %c, align 32, !tbaa !16
  %25 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %26 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %27 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %28 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %26, ptr %indirect-arg-temp101, align 32, !tbaa !16
  store <8 x float> %27, ptr %indirect-arg-temp102, align 32, !tbaa !16
  store <4 x i64> %28, ptr %indirect-arg-temp103, align 32, !tbaa !16
  %call104 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp101, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp102, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp103, i32 noundef 244)
  store <8 x float> %25, ptr %indirect-arg-temp105, align 32, !tbaa !16
  store <8 x float> %call104, ptr %indirect-arg-temp106, align 32, !tbaa !16
  %call107 = call <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp105, i8 noundef zeroext -37, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp106)
  store <8 x float> %call107, ptr %r, align 32, !tbaa !16
  br label %do.body108

do.body108:                                       ; preds = %do.end97
  %29 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call109 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 5))
  %call110 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %29, ptr %indirect-arg-temp111, align 32, !tbaa !16
  store <8 x float> %call109, ptr %indirect-arg-temp112, align 32, !tbaa !16
  %call113 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp111, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp112, float noundef %call110, ptr noundef @.str.27, i32 noundef 702, ptr noundef @.str.28, ptr noundef @.str.43)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body108
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %do.body108
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %call119 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 6))
  store <8 x float> %call119, ptr %a, align 32, !tbaa !16
  %call120 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <8 x float> %call120, ptr %b, align 32, !tbaa !16
  %call121 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 3))
  store <4 x i64> %call121, ptr %c, align 32, !tbaa !16
  %30 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %31 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %32 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %33 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %31, ptr %indirect-arg-temp122, align 32, !tbaa !16
  store <8 x float> %32, ptr %indirect-arg-temp123, align 32, !tbaa !16
  store <4 x i64> %33, ptr %indirect-arg-temp124, align 32, !tbaa !16
  %call125 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp122, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp123, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp124, i32 noundef 145)
  store <8 x float> %30, ptr %indirect-arg-temp126, align 32, !tbaa !16
  store <8 x float> %call125, ptr %indirect-arg-temp127, align 32, !tbaa !16
  %call128 = call <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp126, i8 noundef zeroext 39, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp127)
  store <8 x float> %call128, ptr %r, align 32, !tbaa !16
  br label %do.body129

do.body129:                                       ; preds = %do.end118
  %34 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call130 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 5))
  %call131 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %34, ptr %indirect-arg-temp132, align 32, !tbaa !16
  store <8 x float> %call130, ptr %indirect-arg-temp133, align 32, !tbaa !16
  %call134 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp132, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp133, float noundef %call131, ptr noundef @.str.27, i32 noundef 709, ptr noundef @.str.28, ptr noundef @.str.44)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %do.body129
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end137:                                        ; preds = %do.body129
  br label %do.cond138

do.cond138:                                       ; preds = %if.end137
  br label %do.end139

do.end139:                                        ; preds = %do.cond138
  %call140 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 7))
  store <8 x float> %call140, ptr %a, align 32, !tbaa !16
  %call141 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <8 x float> %call141, ptr %b, align 32, !tbaa !16
  %call142 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 3))
  store <4 x i64> %call142, ptr %c, align 32, !tbaa !16
  %35 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %36 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %37 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %38 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %36, ptr %indirect-arg-temp143, align 32, !tbaa !16
  store <8 x float> %37, ptr %indirect-arg-temp144, align 32, !tbaa !16
  store <4 x i64> %38, ptr %indirect-arg-temp145, align 32, !tbaa !16
  %call146 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp143, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp144, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp145, i32 noundef 182)
  store <8 x float> %35, ptr %indirect-arg-temp147, align 32, !tbaa !16
  store <8 x float> %call146, ptr %indirect-arg-temp148, align 32, !tbaa !16
  %call149 = call <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp147, i8 noundef zeroext -106, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp148)
  store <8 x float> %call149, ptr %r, align 32, !tbaa !16
  br label %do.body150

do.body150:                                       ; preds = %do.end139
  %39 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call151 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.4], ptr @test_simde_mm256_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 5))
  %call152 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %39, ptr %indirect-arg-temp153, align 32, !tbaa !16
  store <8 x float> %call151, ptr %indirect-arg-temp154, align 32, !tbaa !16
  %call155 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp153, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp154, float noundef %call152, ptr noundef @.str.27, i32 noundef 715, ptr noundef @.str.28, ptr noundef @.str.45)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %do.body150
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end158:                                        ; preds = %do.body150
  br label %do.cond159

do.cond159:                                       ; preds = %if.end158
  br label %do.end160

do.end160:                                        ; preds = %do.cond159
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %if.then157, %if.then136, %if.then115, %if.then94, %if.then73, %if.then52, %if.then31, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #16
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_maskz_fixupimm_ps() #4 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <8 x float>, align 32
  %b = alloca <8 x float>, align 32
  %r = alloca <8 x float>, align 32
  %c = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <8 x float>, align 32
  %indirect-arg-temp3 = alloca <8 x float>, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <8 x float>, align 32
  %indirect-arg-temp10 = alloca <8 x float>, align 32
  %indirect-arg-temp11 = alloca <8 x float>, align 32
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp16 = alloca <8 x float>, align 32
  %indirect-arg-temp17 = alloca <8 x float>, align 32
  %indirect-arg-temp18 = alloca <4 x i64>, align 32
  %indirect-arg-temp20 = alloca <8 x float>, align 32
  %indirect-arg-temp25 = alloca <8 x float>, align 32
  %indirect-arg-temp26 = alloca <8 x float>, align 32
  %indirect-arg-temp36 = alloca <8 x float>, align 32
  %indirect-arg-temp37 = alloca <8 x float>, align 32
  %indirect-arg-temp38 = alloca <4 x i64>, align 32
  %indirect-arg-temp40 = alloca <8 x float>, align 32
  %indirect-arg-temp45 = alloca <8 x float>, align 32
  %indirect-arg-temp46 = alloca <8 x float>, align 32
  %indirect-arg-temp56 = alloca <8 x float>, align 32
  %indirect-arg-temp57 = alloca <8 x float>, align 32
  %indirect-arg-temp58 = alloca <4 x i64>, align 32
  %indirect-arg-temp60 = alloca <8 x float>, align 32
  %indirect-arg-temp65 = alloca <8 x float>, align 32
  %indirect-arg-temp66 = alloca <8 x float>, align 32
  %indirect-arg-temp76 = alloca <8 x float>, align 32
  %indirect-arg-temp77 = alloca <8 x float>, align 32
  %indirect-arg-temp78 = alloca <4 x i64>, align 32
  %indirect-arg-temp80 = alloca <8 x float>, align 32
  %indirect-arg-temp85 = alloca <8 x float>, align 32
  %indirect-arg-temp86 = alloca <8 x float>, align 32
  %indirect-arg-temp96 = alloca <8 x float>, align 32
  %indirect-arg-temp97 = alloca <8 x float>, align 32
  %indirect-arg-temp98 = alloca <4 x i64>, align 32
  %indirect-arg-temp100 = alloca <8 x float>, align 32
  %indirect-arg-temp105 = alloca <8 x float>, align 32
  %indirect-arg-temp106 = alloca <8 x float>, align 32
  %indirect-arg-temp116 = alloca <8 x float>, align 32
  %indirect-arg-temp117 = alloca <8 x float>, align 32
  %indirect-arg-temp118 = alloca <4 x i64>, align 32
  %indirect-arg-temp120 = alloca <8 x float>, align 32
  %indirect-arg-temp125 = alloca <8 x float>, align 32
  %indirect-arg-temp126 = alloca <8 x float>, align 32
  %indirect-arg-temp136 = alloca <8 x float>, align 32
  %indirect-arg-temp137 = alloca <8 x float>, align 32
  %indirect-arg-temp138 = alloca <4 x i64>, align 32
  %indirect-arg-temp140 = alloca <8 x float>, align 32
  %indirect-arg-temp145 = alloca <8 x float>, align 32
  %indirect-arg-temp146 = alloca <8 x float>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #16
  %call = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i32 0, i32 1))
  store <8 x float> %call, ptr %a, align 32, !tbaa !16
  %call1 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i32 0, i32 2))
  store <8 x float> %call1, ptr %b, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i32 0, i32 3))
  store <4 x i64> %call2, ptr %c, align 32, !tbaa !16
  %0 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %1 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %0, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <8 x float> %1, ptr %indirect-arg-temp3, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp4, align 32, !tbaa !16
  %call5 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4, i32 noundef 64)
  store <8 x float> %call5, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext 69, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp6)
  store <8 x float> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call8 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.5, ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i32 0, i32 5))
  %call9 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %3, ptr %indirect-arg-temp10, align 32, !tbaa !16
  store <8 x float> %call8, ptr %indirect-arg-temp11, align 32, !tbaa !16
  %call12 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp10, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp11, float noundef %call9, ptr noundef @.str.27, i32 noundef 836, ptr noundef @.str.28, ptr noundef @.str.38)
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
  %call13 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 1))
  store <8 x float> %call13, ptr %a, align 32, !tbaa !16
  %call14 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <8 x float> %call14, ptr %b, align 32, !tbaa !16
  %call15 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 3))
  store <4 x i64> %call15, ptr %c, align 32, !tbaa !16
  %4 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %5 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %6 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %4, ptr %indirect-arg-temp16, align 32, !tbaa !16
  store <8 x float> %5, ptr %indirect-arg-temp17, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp18, align 32, !tbaa !16
  %call19 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp16, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp17, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp18, i32 noundef 183)
  store <8 x float> %call19, ptr %indirect-arg-temp20, align 32, !tbaa !16
  %call21 = call <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext -4, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp20)
  store <8 x float> %call21, ptr %r, align 32, !tbaa !16
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %7 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call23 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 5))
  %call24 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %7, ptr %indirect-arg-temp25, align 32, !tbaa !16
  store <8 x float> %call23, ptr %indirect-arg-temp26, align 32, !tbaa !16
  %call27 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp25, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp26, float noundef %call24, ptr noundef @.str.27, i32 noundef 842, ptr noundef @.str.28, ptr noundef @.str.39)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body22
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.body22
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  %call33 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 1))
  store <8 x float> %call33, ptr %a, align 32, !tbaa !16
  %call34 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <8 x float> %call34, ptr %b, align 32, !tbaa !16
  %call35 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 3))
  store <4 x i64> %call35, ptr %c, align 32, !tbaa !16
  %8 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %9 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %10 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %8, ptr %indirect-arg-temp36, align 32, !tbaa !16
  store <8 x float> %9, ptr %indirect-arg-temp37, align 32, !tbaa !16
  store <4 x i64> %10, ptr %indirect-arg-temp38, align 32, !tbaa !16
  %call39 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp36, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp37, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp38, i32 noundef 149)
  store <8 x float> %call39, ptr %indirect-arg-temp40, align 32, !tbaa !16
  %call41 = call <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext 27, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp40)
  store <8 x float> %call41, ptr %r, align 32, !tbaa !16
  br label %do.body42

do.body42:                                        ; preds = %do.end32
  %11 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call43 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 5))
  %call44 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %11, ptr %indirect-arg-temp45, align 32, !tbaa !16
  store <8 x float> %call43, ptr %indirect-arg-temp46, align 32, !tbaa !16
  %call47 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp45, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp46, float noundef %call44, ptr noundef @.str.27, i32 noundef 849, ptr noundef @.str.28, ptr noundef @.str.40)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body42
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %do.body42
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  %call53 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 1))
  store <8 x float> %call53, ptr %a, align 32, !tbaa !16
  %call54 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <8 x float> %call54, ptr %b, align 32, !tbaa !16
  %call55 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 3))
  store <4 x i64> %call55, ptr %c, align 32, !tbaa !16
  %12 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %13 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %14 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %12, ptr %indirect-arg-temp56, align 32, !tbaa !16
  store <8 x float> %13, ptr %indirect-arg-temp57, align 32, !tbaa !16
  store <4 x i64> %14, ptr %indirect-arg-temp58, align 32, !tbaa !16
  %call59 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp56, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp57, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp58, i32 noundef 212)
  store <8 x float> %call59, ptr %indirect-arg-temp60, align 32, !tbaa !16
  %call61 = call <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext 52, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp60)
  store <8 x float> %call61, ptr %r, align 32, !tbaa !16
  br label %do.body62

do.body62:                                        ; preds = %do.end52
  %15 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call63 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 5))
  %call64 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %15, ptr %indirect-arg-temp65, align 32, !tbaa !16
  store <8 x float> %call63, ptr %indirect-arg-temp66, align 32, !tbaa !16
  %call67 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp65, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp66, float noundef %call64, ptr noundef @.str.27, i32 noundef 855, ptr noundef @.str.28, ptr noundef @.str.41)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body62
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %do.body62
  br label %do.cond71

do.cond71:                                        ; preds = %if.end70
  br label %do.end72

do.end72:                                         ; preds = %do.cond71
  %call73 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 1))
  store <8 x float> %call73, ptr %a, align 32, !tbaa !16
  %call74 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <8 x float> %call74, ptr %b, align 32, !tbaa !16
  %call75 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 3))
  store <4 x i64> %call75, ptr %c, align 32, !tbaa !16
  %16 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %17 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %18 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %16, ptr %indirect-arg-temp76, align 32, !tbaa !16
  store <8 x float> %17, ptr %indirect-arg-temp77, align 32, !tbaa !16
  store <4 x i64> %18, ptr %indirect-arg-temp78, align 32, !tbaa !16
  %call79 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp76, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp77, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp78, i32 noundef 39)
  store <8 x float> %call79, ptr %indirect-arg-temp80, align 32, !tbaa !16
  %call81 = call <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext -40, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp80)
  store <8 x float> %call81, ptr %r, align 32, !tbaa !16
  br label %do.body82

do.body82:                                        ; preds = %do.end72
  %19 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call83 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 5))
  %call84 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %19, ptr %indirect-arg-temp85, align 32, !tbaa !16
  store <8 x float> %call83, ptr %indirect-arg-temp86, align 32, !tbaa !16
  %call87 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp85, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp86, float noundef %call84, ptr noundef @.str.27, i32 noundef 861, ptr noundef @.str.28, ptr noundef @.str.42)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.body82
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end90:                                         ; preds = %do.body82
  br label %do.cond91

do.cond91:                                        ; preds = %if.end90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  %call93 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 1))
  store <8 x float> %call93, ptr %a, align 32, !tbaa !16
  %call94 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <8 x float> %call94, ptr %b, align 32, !tbaa !16
  %call95 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 3))
  store <4 x i64> %call95, ptr %c, align 32, !tbaa !16
  %20 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %21 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %22 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %20, ptr %indirect-arg-temp96, align 32, !tbaa !16
  store <8 x float> %21, ptr %indirect-arg-temp97, align 32, !tbaa !16
  store <4 x i64> %22, ptr %indirect-arg-temp98, align 32, !tbaa !16
  %call99 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp96, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp97, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp98, i32 noundef 108)
  store <8 x float> %call99, ptr %indirect-arg-temp100, align 32, !tbaa !16
  %call101 = call <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext -20, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp100)
  store <8 x float> %call101, ptr %r, align 32, !tbaa !16
  br label %do.body102

do.body102:                                       ; preds = %do.end92
  %23 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call103 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 5))
  %call104 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %23, ptr %indirect-arg-temp105, align 32, !tbaa !16
  store <8 x float> %call103, ptr %indirect-arg-temp106, align 32, !tbaa !16
  %call107 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp105, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp106, float noundef %call104, ptr noundef @.str.27, i32 noundef 867, ptr noundef @.str.28, ptr noundef @.str.43)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %do.body102
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end110:                                        ; preds = %do.body102
  br label %do.cond111

do.cond111:                                       ; preds = %if.end110
  br label %do.end112

do.end112:                                        ; preds = %do.cond111
  %call113 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 1))
  store <8 x float> %call113, ptr %a, align 32, !tbaa !16
  %call114 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <8 x float> %call114, ptr %b, align 32, !tbaa !16
  %call115 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 3))
  store <4 x i64> %call115, ptr %c, align 32, !tbaa !16
  %24 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %25 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %26 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %24, ptr %indirect-arg-temp116, align 32, !tbaa !16
  store <8 x float> %25, ptr %indirect-arg-temp117, align 32, !tbaa !16
  store <4 x i64> %26, ptr %indirect-arg-temp118, align 32, !tbaa !16
  %call119 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp116, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp117, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp118, i32 noundef 10)
  store <8 x float> %call119, ptr %indirect-arg-temp120, align 32, !tbaa !16
  %call121 = call <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext -94, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp120)
  store <8 x float> %call121, ptr %r, align 32, !tbaa !16
  br label %do.body122

do.body122:                                       ; preds = %do.end112
  %27 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call123 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 5))
  %call124 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %27, ptr %indirect-arg-temp125, align 32, !tbaa !16
  store <8 x float> %call123, ptr %indirect-arg-temp126, align 32, !tbaa !16
  %call127 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp125, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp126, float noundef %call124, ptr noundef @.str.27, i32 noundef 873, ptr noundef @.str.28, ptr noundef @.str.44)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %do.body122
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end130:                                        ; preds = %do.body122
  br label %do.cond131

do.cond131:                                       ; preds = %if.end130
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  %call133 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 1))
  store <8 x float> %call133, ptr %a, align 32, !tbaa !16
  %call134 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <8 x float> %call134, ptr %b, align 32, !tbaa !16
  %call135 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 3))
  store <4 x i64> %call135, ptr %c, align 32, !tbaa !16
  %28 = load <8 x float>, ptr %a, align 32, !tbaa !16
  %29 = load <8 x float>, ptr %b, align 32, !tbaa !16
  %30 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <8 x float> %28, ptr %indirect-arg-temp136, align 32, !tbaa !16
  store <8 x float> %29, ptr %indirect-arg-temp137, align 32, !tbaa !16
  store <4 x i64> %30, ptr %indirect-arg-temp138, align 32, !tbaa !16
  %call139 = call <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp136, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp137, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp138, i32 noundef 202)
  store <8 x float> %call139, ptr %indirect-arg-temp140, align 32, !tbaa !16
  %call141 = call <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext -89, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp140)
  store <8 x float> %call141, ptr %r, align 32, !tbaa !16
  br label %do.body142

do.body142:                                       ; preds = %do.end132
  %31 = load <8 x float>, ptr %r, align 32, !tbaa !16
  %call143 = call <8 x float> @simde_mm256_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.5], ptr @test_simde_mm256_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 5))
  %call144 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <8 x float> %31, ptr %indirect-arg-temp145, align 32, !tbaa !16
  store <8 x float> %call143, ptr %indirect-arg-temp146, align 32, !tbaa !16
  %call147 = call i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp145, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp146, float noundef %call144, ptr noundef @.str.27, i32 noundef 880, ptr noundef @.str.28, ptr noundef @.str.45)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.body142
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end150:                                        ; preds = %do.body142
  br label %do.cond151

do.cond151:                                       ; preds = %if.end150
  br label %do.end152

do.end152:                                        ; preds = %do.cond151
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end152, %if.then149, %if.then129, %if.then109, %if.then89, %if.then69, %if.then49, %if.then29, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_fixupimm_ps() #5 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <16 x float>, align 64
  %b = alloca <16 x float>, align 64
  %r = alloca <16 x float>, align 64
  %c = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <16 x float>, align 64
  %indirect-arg-temp3 = alloca <16 x float>, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <16 x float>, align 64
  %indirect-arg-temp9 = alloca <16 x float>, align 64
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp14 = alloca <16 x float>, align 64
  %indirect-arg-temp15 = alloca <16 x float>, align 64
  %indirect-arg-temp16 = alloca <8 x i64>, align 64
  %indirect-arg-temp21 = alloca <16 x float>, align 64
  %indirect-arg-temp22 = alloca <16 x float>, align 64
  %indirect-arg-temp32 = alloca <16 x float>, align 64
  %indirect-arg-temp33 = alloca <16 x float>, align 64
  %indirect-arg-temp34 = alloca <8 x i64>, align 64
  %indirect-arg-temp39 = alloca <16 x float>, align 64
  %indirect-arg-temp40 = alloca <16 x float>, align 64
  %indirect-arg-temp50 = alloca <16 x float>, align 64
  %indirect-arg-temp51 = alloca <16 x float>, align 64
  %indirect-arg-temp52 = alloca <8 x i64>, align 64
  %indirect-arg-temp57 = alloca <16 x float>, align 64
  %indirect-arg-temp58 = alloca <16 x float>, align 64
  %indirect-arg-temp68 = alloca <16 x float>, align 64
  %indirect-arg-temp69 = alloca <16 x float>, align 64
  %indirect-arg-temp70 = alloca <8 x i64>, align 64
  %indirect-arg-temp75 = alloca <16 x float>, align 64
  %indirect-arg-temp76 = alloca <16 x float>, align 64
  %indirect-arg-temp86 = alloca <16 x float>, align 64
  %indirect-arg-temp87 = alloca <16 x float>, align 64
  %indirect-arg-temp88 = alloca <8 x i64>, align 64
  %indirect-arg-temp93 = alloca <16 x float>, align 64
  %indirect-arg-temp94 = alloca <16 x float>, align 64
  %indirect-arg-temp104 = alloca <16 x float>, align 64
  %indirect-arg-temp105 = alloca <16 x float>, align 64
  %indirect-arg-temp106 = alloca <8 x i64>, align 64
  %indirect-arg-temp111 = alloca <16 x float>, align 64
  %indirect-arg-temp112 = alloca <16 x float>, align 64
  %indirect-arg-temp122 = alloca <16 x float>, align 64
  %indirect-arg-temp123 = alloca <16 x float>, align 64
  %indirect-arg-temp124 = alloca <8 x i64>, align 64
  %indirect-arg-temp129 = alloca <16 x float>, align 64
  %indirect-arg-temp130 = alloca <16 x float>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %c) #16
  %call = call <16 x float> @simde_mm512_loadu_ps(ptr noundef @test_simde_mm512_fixupimm_ps.test_vec)
  store <16 x float> %call, ptr %a, align 64, !tbaa !16
  %call1 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.6, ptr @test_simde_mm512_fixupimm_ps.test_vec, i32 0, i32 1))
  store <16 x float> %call1, ptr %b, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds (%struct.anon.6, ptr @test_simde_mm512_fixupimm_ps.test_vec, i32 0, i32 2))
  store <8 x i64> %call2, ptr %c, align 64, !tbaa !16
  %0 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %1 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %0, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <16 x float> %1, ptr %indirect-arg-temp3, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp4, align 64, !tbaa !16
  %call5 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4, i32 noundef 60)
  store <16 x float> %call5, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call6 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.6, ptr @test_simde_mm512_fixupimm_ps.test_vec, i32 0, i32 4))
  %call7 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %3, ptr %indirect-arg-temp8, align 64, !tbaa !16
  store <16 x float> %call6, ptr %indirect-arg-temp9, align 64, !tbaa !16
  %call10 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp8, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp9, float noundef %call7, ptr noundef @.str.27, i32 noundef 1049, ptr noundef @.str.28, ptr noundef @.str.46)
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
  %call11 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 1))
  store <16 x float> %call11, ptr %a, align 64, !tbaa !16
  %call12 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 1, i32 1))
  store <16 x float> %call12, ptr %b, align 64, !tbaa !16
  %call13 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <8 x i64> %call13, ptr %c, align 64, !tbaa !16
  %4 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %5 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %6 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %4, ptr %indirect-arg-temp14, align 64, !tbaa !16
  store <16 x float> %5, ptr %indirect-arg-temp15, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp16, align 64, !tbaa !16
  %call17 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp14, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp15, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp16, i32 noundef 143)
  store <16 x float> %call17, ptr %r, align 64, !tbaa !16
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %7 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call19 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 1, i32 4))
  %call20 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %7, ptr %indirect-arg-temp21, align 64, !tbaa !16
  store <16 x float> %call19, ptr %indirect-arg-temp22, align 64, !tbaa !16
  %call23 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp21, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp22, float noundef %call20, ptr noundef @.str.27, i32 noundef 1055, ptr noundef @.str.28, ptr noundef @.str.47)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %do.body18
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  %call29 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 2))
  store <16 x float> %call29, ptr %a, align 64, !tbaa !16
  %call30 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 2, i32 1))
  store <16 x float> %call30, ptr %b, align 64, !tbaa !16
  %call31 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <8 x i64> %call31, ptr %c, align 64, !tbaa !16
  %8 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %9 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %10 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %8, ptr %indirect-arg-temp32, align 64, !tbaa !16
  store <16 x float> %9, ptr %indirect-arg-temp33, align 64, !tbaa !16
  store <8 x i64> %10, ptr %indirect-arg-temp34, align 64, !tbaa !16
  %call35 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp32, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp33, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp34, i32 noundef 133)
  store <16 x float> %call35, ptr %r, align 64, !tbaa !16
  br label %do.body36

do.body36:                                        ; preds = %do.end28
  %11 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call37 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 2, i32 4))
  %call38 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %11, ptr %indirect-arg-temp39, align 64, !tbaa !16
  store <16 x float> %call37, ptr %indirect-arg-temp40, align 64, !tbaa !16
  %call41 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp39, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp40, float noundef %call38, ptr noundef @.str.27, i32 noundef 1061, ptr noundef @.str.28, ptr noundef @.str.48)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body36
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %do.body36
  br label %do.cond45

do.cond45:                                        ; preds = %if.end44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  %call47 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 3))
  store <16 x float> %call47, ptr %a, align 64, !tbaa !16
  %call48 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 3, i32 1))
  store <16 x float> %call48, ptr %b, align 64, !tbaa !16
  %call49 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <8 x i64> %call49, ptr %c, align 64, !tbaa !16
  %12 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %13 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %14 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %12, ptr %indirect-arg-temp50, align 64, !tbaa !16
  store <16 x float> %13, ptr %indirect-arg-temp51, align 64, !tbaa !16
  store <8 x i64> %14, ptr %indirect-arg-temp52, align 64, !tbaa !16
  %call53 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp50, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp51, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp52, i32 noundef 36)
  store <16 x float> %call53, ptr %r, align 64, !tbaa !16
  br label %do.body54

do.body54:                                        ; preds = %do.end46
  %15 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call55 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 3, i32 4))
  %call56 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %15, ptr %indirect-arg-temp57, align 64, !tbaa !16
  store <16 x float> %call55, ptr %indirect-arg-temp58, align 64, !tbaa !16
  %call59 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp57, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp58, float noundef %call56, ptr noundef @.str.27, i32 noundef 1067, ptr noundef @.str.28, ptr noundef @.str.49)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body54
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %do.body54
  br label %do.cond63

do.cond63:                                        ; preds = %if.end62
  br label %do.end64

do.end64:                                         ; preds = %do.cond63
  %call65 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 4))
  store <16 x float> %call65, ptr %a, align 64, !tbaa !16
  %call66 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 4, i32 1))
  store <16 x float> %call66, ptr %b, align 64, !tbaa !16
  %call67 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <8 x i64> %call67, ptr %c, align 64, !tbaa !16
  %16 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %17 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %18 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %16, ptr %indirect-arg-temp68, align 64, !tbaa !16
  store <16 x float> %17, ptr %indirect-arg-temp69, align 64, !tbaa !16
  store <8 x i64> %18, ptr %indirect-arg-temp70, align 64, !tbaa !16
  %call71 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp68, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp69, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp70, i32 noundef 159)
  store <16 x float> %call71, ptr %r, align 64, !tbaa !16
  br label %do.body72

do.body72:                                        ; preds = %do.end64
  %19 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call73 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 4, i32 4))
  %call74 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %19, ptr %indirect-arg-temp75, align 64, !tbaa !16
  store <16 x float> %call73, ptr %indirect-arg-temp76, align 64, !tbaa !16
  %call77 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp75, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp76, float noundef %call74, ptr noundef @.str.27, i32 noundef 1073, ptr noundef @.str.28, ptr noundef @.str.50)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body72
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end80:                                         ; preds = %do.body72
  br label %do.cond81

do.cond81:                                        ; preds = %if.end80
  br label %do.end82

do.end82:                                         ; preds = %do.cond81
  %call83 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 5))
  store <16 x float> %call83, ptr %a, align 64, !tbaa !16
  %call84 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 5, i32 1))
  store <16 x float> %call84, ptr %b, align 64, !tbaa !16
  %call85 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <8 x i64> %call85, ptr %c, align 64, !tbaa !16
  %20 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %21 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %22 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %20, ptr %indirect-arg-temp86, align 64, !tbaa !16
  store <16 x float> %21, ptr %indirect-arg-temp87, align 64, !tbaa !16
  store <8 x i64> %22, ptr %indirect-arg-temp88, align 64, !tbaa !16
  %call89 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp86, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp87, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp88, i32 noundef 187)
  store <16 x float> %call89, ptr %r, align 64, !tbaa !16
  br label %do.body90

do.body90:                                        ; preds = %do.end82
  %23 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call91 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 5, i32 4))
  %call92 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %23, ptr %indirect-arg-temp93, align 64, !tbaa !16
  store <16 x float> %call91, ptr %indirect-arg-temp94, align 64, !tbaa !16
  %call95 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp93, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp94, float noundef %call92, ptr noundef @.str.27, i32 noundef 1079, ptr noundef @.str.28, ptr noundef @.str.51)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.body90
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end98:                                         ; preds = %do.body90
  br label %do.cond99

do.cond99:                                        ; preds = %if.end98
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  %call101 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 6))
  store <16 x float> %call101, ptr %a, align 64, !tbaa !16
  %call102 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 6, i32 1))
  store <16 x float> %call102, ptr %b, align 64, !tbaa !16
  %call103 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <8 x i64> %call103, ptr %c, align 64, !tbaa !16
  %24 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %25 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %26 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %24, ptr %indirect-arg-temp104, align 64, !tbaa !16
  store <16 x float> %25, ptr %indirect-arg-temp105, align 64, !tbaa !16
  store <8 x i64> %26, ptr %indirect-arg-temp106, align 64, !tbaa !16
  %call107 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp104, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp105, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp106, i32 noundef 25)
  store <16 x float> %call107, ptr %r, align 64, !tbaa !16
  br label %do.body108

do.body108:                                       ; preds = %do.end100
  %27 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call109 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 6, i32 4))
  %call110 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %27, ptr %indirect-arg-temp111, align 64, !tbaa !16
  store <16 x float> %call109, ptr %indirect-arg-temp112, align 64, !tbaa !16
  %call113 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp111, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp112, float noundef %call110, ptr noundef @.str.27, i32 noundef 1085, ptr noundef @.str.28, ptr noundef @.str.52)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body108
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %do.body108
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %call119 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 7))
  store <16 x float> %call119, ptr %a, align 64, !tbaa !16
  %call120 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 7, i32 1))
  store <16 x float> %call120, ptr %b, align 64, !tbaa !16
  %call121 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <8 x i64> %call121, ptr %c, align 64, !tbaa !16
  %28 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %29 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %30 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %28, ptr %indirect-arg-temp122, align 64, !tbaa !16
  store <16 x float> %29, ptr %indirect-arg-temp123, align 64, !tbaa !16
  store <8 x i64> %30, ptr %indirect-arg-temp124, align 64, !tbaa !16
  %call125 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp122, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp123, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp124, i32 noundef 131)
  store <16 x float> %call125, ptr %r, align 64, !tbaa !16
  br label %do.body126

do.body126:                                       ; preds = %do.end118
  %31 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call127 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.6], ptr @test_simde_mm512_fixupimm_ps.test_vec, i64 0, i64 7, i32 4))
  %call128 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %31, ptr %indirect-arg-temp129, align 64, !tbaa !16
  store <16 x float> %call127, ptr %indirect-arg-temp130, align 64, !tbaa !16
  %call131 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp129, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp130, float noundef %call128, ptr noundef @.str.27, i32 noundef 1091, ptr noundef @.str.28, ptr noundef @.str.53)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %do.body126
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end134:                                        ; preds = %do.body126
  br label %do.cond135

do.cond135:                                       ; preds = %if.end134
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %if.then133, %if.then115, %if.then97, %if.then79, %if.then61, %if.then43, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_fixupimm_ps() #5 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <16 x float>, align 64
  %b = alloca <16 x float>, align 64
  %r = alloca <16 x float>, align 64
  %c = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <16 x float>, align 64
  %indirect-arg-temp3 = alloca <16 x float>, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <16 x float>, align 64
  %indirect-arg-temp7 = alloca <16 x float>, align 64
  %indirect-arg-temp11 = alloca <16 x float>, align 64
  %indirect-arg-temp12 = alloca <16 x float>, align 64
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp17 = alloca <16 x float>, align 64
  %indirect-arg-temp18 = alloca <16 x float>, align 64
  %indirect-arg-temp19 = alloca <8 x i64>, align 64
  %indirect-arg-temp21 = alloca <16 x float>, align 64
  %indirect-arg-temp22 = alloca <16 x float>, align 64
  %indirect-arg-temp27 = alloca <16 x float>, align 64
  %indirect-arg-temp28 = alloca <16 x float>, align 64
  %indirect-arg-temp38 = alloca <16 x float>, align 64
  %indirect-arg-temp39 = alloca <16 x float>, align 64
  %indirect-arg-temp40 = alloca <8 x i64>, align 64
  %indirect-arg-temp42 = alloca <16 x float>, align 64
  %indirect-arg-temp43 = alloca <16 x float>, align 64
  %indirect-arg-temp48 = alloca <16 x float>, align 64
  %indirect-arg-temp49 = alloca <16 x float>, align 64
  %indirect-arg-temp59 = alloca <16 x float>, align 64
  %indirect-arg-temp60 = alloca <16 x float>, align 64
  %indirect-arg-temp61 = alloca <8 x i64>, align 64
  %indirect-arg-temp63 = alloca <16 x float>, align 64
  %indirect-arg-temp64 = alloca <16 x float>, align 64
  %indirect-arg-temp69 = alloca <16 x float>, align 64
  %indirect-arg-temp70 = alloca <16 x float>, align 64
  %indirect-arg-temp80 = alloca <16 x float>, align 64
  %indirect-arg-temp81 = alloca <16 x float>, align 64
  %indirect-arg-temp82 = alloca <8 x i64>, align 64
  %indirect-arg-temp84 = alloca <16 x float>, align 64
  %indirect-arg-temp85 = alloca <16 x float>, align 64
  %indirect-arg-temp90 = alloca <16 x float>, align 64
  %indirect-arg-temp91 = alloca <16 x float>, align 64
  %indirect-arg-temp101 = alloca <16 x float>, align 64
  %indirect-arg-temp102 = alloca <16 x float>, align 64
  %indirect-arg-temp103 = alloca <8 x i64>, align 64
  %indirect-arg-temp105 = alloca <16 x float>, align 64
  %indirect-arg-temp106 = alloca <16 x float>, align 64
  %indirect-arg-temp111 = alloca <16 x float>, align 64
  %indirect-arg-temp112 = alloca <16 x float>, align 64
  %indirect-arg-temp122 = alloca <16 x float>, align 64
  %indirect-arg-temp123 = alloca <16 x float>, align 64
  %indirect-arg-temp124 = alloca <8 x i64>, align 64
  %indirect-arg-temp126 = alloca <16 x float>, align 64
  %indirect-arg-temp127 = alloca <16 x float>, align 64
  %indirect-arg-temp132 = alloca <16 x float>, align 64
  %indirect-arg-temp133 = alloca <16 x float>, align 64
  %indirect-arg-temp143 = alloca <16 x float>, align 64
  %indirect-arg-temp144 = alloca <16 x float>, align 64
  %indirect-arg-temp145 = alloca <8 x i64>, align 64
  %indirect-arg-temp147 = alloca <16 x float>, align 64
  %indirect-arg-temp148 = alloca <16 x float>, align 64
  %indirect-arg-temp153 = alloca <16 x float>, align 64
  %indirect-arg-temp154 = alloca <16 x float>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %c) #16
  %call = call <16 x float> @simde_mm512_loadu_ps(ptr noundef @test_simde_mm512_mask_fixupimm_ps.test_vec)
  store <16 x float> %call, ptr %a, align 64, !tbaa !16
  %call1 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i32 0, i32 2))
  store <16 x float> %call1, ptr %b, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i32 0, i32 3))
  store <8 x i64> %call2, ptr %c, align 64, !tbaa !16
  %0 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %1 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %2 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <16 x float> %2, ptr %indirect-arg-temp3, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp4, align 64, !tbaa !16
  %call5 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4, i32 noundef 105)
  store <16 x float> %0, ptr %indirect-arg-temp6, align 64, !tbaa !16
  store <16 x float> %call5, ptr %indirect-arg-temp7, align 64, !tbaa !16
  %call8 = call <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp6, i16 noundef zeroext 21745, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp7)
  store <16 x float> %call8, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call9 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.7, ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i32 0, i32 5))
  %call10 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %4, ptr %indirect-arg-temp11, align 64, !tbaa !16
  store <16 x float> %call9, ptr %indirect-arg-temp12, align 64, !tbaa !16
  %call13 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp11, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp12, float noundef %call10, ptr noundef @.str.27, i32 noundef 1268, ptr noundef @.str.28, ptr noundef @.str.46)
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
  %call14 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 1))
  store <16 x float> %call14, ptr %a, align 64, !tbaa !16
  %call15 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <16 x float> %call15, ptr %b, align 64, !tbaa !16
  %call16 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 3))
  store <8 x i64> %call16, ptr %c, align 64, !tbaa !16
  %5 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %6 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %7 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %8 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %6, ptr %indirect-arg-temp17, align 64, !tbaa !16
  store <16 x float> %7, ptr %indirect-arg-temp18, align 64, !tbaa !16
  store <8 x i64> %8, ptr %indirect-arg-temp19, align 64, !tbaa !16
  %call20 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp17, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp18, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp19, i32 noundef 37)
  store <16 x float> %5, ptr %indirect-arg-temp21, align 64, !tbaa !16
  store <16 x float> %call20, ptr %indirect-arg-temp22, align 64, !tbaa !16
  %call23 = call <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp21, i16 noundef zeroext 17880, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp22)
  store <16 x float> %call23, ptr %r, align 64, !tbaa !16
  br label %do.body24

do.body24:                                        ; preds = %do.end
  %9 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call25 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 1, i32 5))
  %call26 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %9, ptr %indirect-arg-temp27, align 64, !tbaa !16
  store <16 x float> %call25, ptr %indirect-arg-temp28, align 64, !tbaa !16
  %call29 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp27, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp28, float noundef %call26, ptr noundef @.str.27, i32 noundef 1274, ptr noundef @.str.28, ptr noundef @.str.47)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %do.body24
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  %call35 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 2))
  store <16 x float> %call35, ptr %a, align 64, !tbaa !16
  %call36 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <16 x float> %call36, ptr %b, align 64, !tbaa !16
  %call37 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 3))
  store <8 x i64> %call37, ptr %c, align 64, !tbaa !16
  %10 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %11 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %12 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %13 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %11, ptr %indirect-arg-temp38, align 64, !tbaa !16
  store <16 x float> %12, ptr %indirect-arg-temp39, align 64, !tbaa !16
  store <8 x i64> %13, ptr %indirect-arg-temp40, align 64, !tbaa !16
  %call41 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp38, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp39, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp40, i32 noundef 81)
  store <16 x float> %10, ptr %indirect-arg-temp42, align 64, !tbaa !16
  store <16 x float> %call41, ptr %indirect-arg-temp43, align 64, !tbaa !16
  %call44 = call <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp42, i16 noundef zeroext 11654, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp43)
  store <16 x float> %call44, ptr %r, align 64, !tbaa !16
  br label %do.body45

do.body45:                                        ; preds = %do.end34
  %14 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call46 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 2, i32 5))
  %call47 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %14, ptr %indirect-arg-temp48, align 64, !tbaa !16
  store <16 x float> %call46, ptr %indirect-arg-temp49, align 64, !tbaa !16
  %call50 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp48, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp49, float noundef %call47, ptr noundef @.str.27, i32 noundef 1280, ptr noundef @.str.28, ptr noundef @.str.48)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body45
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %do.body45
  br label %do.cond54

do.cond54:                                        ; preds = %if.end53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  %call56 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 3))
  store <16 x float> %call56, ptr %a, align 64, !tbaa !16
  %call57 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <16 x float> %call57, ptr %b, align 64, !tbaa !16
  %call58 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 3))
  store <8 x i64> %call58, ptr %c, align 64, !tbaa !16
  %15 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %16 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %17 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %18 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %16, ptr %indirect-arg-temp59, align 64, !tbaa !16
  store <16 x float> %17, ptr %indirect-arg-temp60, align 64, !tbaa !16
  store <8 x i64> %18, ptr %indirect-arg-temp61, align 64, !tbaa !16
  %call62 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp59, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp60, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp61, i32 noundef 205)
  store <16 x float> %15, ptr %indirect-arg-temp63, align 64, !tbaa !16
  store <16 x float> %call62, ptr %indirect-arg-temp64, align 64, !tbaa !16
  %call65 = call <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp63, i16 noundef zeroext 9817, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp64)
  store <16 x float> %call65, ptr %r, align 64, !tbaa !16
  br label %do.body66

do.body66:                                        ; preds = %do.end55
  %19 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call67 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 3, i32 5))
  %call68 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %19, ptr %indirect-arg-temp69, align 64, !tbaa !16
  store <16 x float> %call67, ptr %indirect-arg-temp70, align 64, !tbaa !16
  %call71 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp69, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp70, float noundef %call68, ptr noundef @.str.27, i32 noundef 1286, ptr noundef @.str.28, ptr noundef @.str.49)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body66
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %do.body66
  br label %do.cond75

do.cond75:                                        ; preds = %if.end74
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  %call77 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 4))
  store <16 x float> %call77, ptr %a, align 64, !tbaa !16
  %call78 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <16 x float> %call78, ptr %b, align 64, !tbaa !16
  %call79 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 3))
  store <8 x i64> %call79, ptr %c, align 64, !tbaa !16
  %20 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %21 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %22 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %23 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %21, ptr %indirect-arg-temp80, align 64, !tbaa !16
  store <16 x float> %22, ptr %indirect-arg-temp81, align 64, !tbaa !16
  store <8 x i64> %23, ptr %indirect-arg-temp82, align 64, !tbaa !16
  %call83 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp80, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp81, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp82, i32 noundef 86)
  store <16 x float> %20, ptr %indirect-arg-temp84, align 64, !tbaa !16
  store <16 x float> %call83, ptr %indirect-arg-temp85, align 64, !tbaa !16
  %call86 = call <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp84, i16 noundef zeroext 17926, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp85)
  store <16 x float> %call86, ptr %r, align 64, !tbaa !16
  br label %do.body87

do.body87:                                        ; preds = %do.end76
  %24 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call88 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 4, i32 5))
  %call89 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %24, ptr %indirect-arg-temp90, align 64, !tbaa !16
  store <16 x float> %call88, ptr %indirect-arg-temp91, align 64, !tbaa !16
  %call92 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp90, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp91, float noundef %call89, ptr noundef @.str.27, i32 noundef 1292, ptr noundef @.str.28, ptr noundef @.str.50)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body87
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %do.body87
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  %call98 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 5))
  store <16 x float> %call98, ptr %a, align 64, !tbaa !16
  %call99 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <16 x float> %call99, ptr %b, align 64, !tbaa !16
  %call100 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 3))
  store <8 x i64> %call100, ptr %c, align 64, !tbaa !16
  %25 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %26 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %27 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %28 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %26, ptr %indirect-arg-temp101, align 64, !tbaa !16
  store <16 x float> %27, ptr %indirect-arg-temp102, align 64, !tbaa !16
  store <8 x i64> %28, ptr %indirect-arg-temp103, align 64, !tbaa !16
  %call104 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp101, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp102, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp103, i32 noundef 76)
  store <16 x float> %25, ptr %indirect-arg-temp105, align 64, !tbaa !16
  store <16 x float> %call104, ptr %indirect-arg-temp106, align 64, !tbaa !16
  %call107 = call <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp105, i16 noundef zeroext -3072, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp106)
  store <16 x float> %call107, ptr %r, align 64, !tbaa !16
  br label %do.body108

do.body108:                                       ; preds = %do.end97
  %29 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call109 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 5, i32 5))
  %call110 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %29, ptr %indirect-arg-temp111, align 64, !tbaa !16
  store <16 x float> %call109, ptr %indirect-arg-temp112, align 64, !tbaa !16
  %call113 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp111, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp112, float noundef %call110, ptr noundef @.str.27, i32 noundef 1299, ptr noundef @.str.28, ptr noundef @.str.51)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body108
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %do.body108
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %call119 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 6))
  store <16 x float> %call119, ptr %a, align 64, !tbaa !16
  %call120 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <16 x float> %call120, ptr %b, align 64, !tbaa !16
  %call121 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 3))
  store <8 x i64> %call121, ptr %c, align 64, !tbaa !16
  %30 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %31 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %32 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %33 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %31, ptr %indirect-arg-temp122, align 64, !tbaa !16
  store <16 x float> %32, ptr %indirect-arg-temp123, align 64, !tbaa !16
  store <8 x i64> %33, ptr %indirect-arg-temp124, align 64, !tbaa !16
  %call125 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp122, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp123, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp124, i32 noundef 130)
  store <16 x float> %30, ptr %indirect-arg-temp126, align 64, !tbaa !16
  store <16 x float> %call125, ptr %indirect-arg-temp127, align 64, !tbaa !16
  %call128 = call <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp126, i16 noundef zeroext 16760, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp127)
  store <16 x float> %call128, ptr %r, align 64, !tbaa !16
  br label %do.body129

do.body129:                                       ; preds = %do.end118
  %34 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call130 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 6, i32 5))
  %call131 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %34, ptr %indirect-arg-temp132, align 64, !tbaa !16
  store <16 x float> %call130, ptr %indirect-arg-temp133, align 64, !tbaa !16
  %call134 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp132, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp133, float noundef %call131, ptr noundef @.str.27, i32 noundef 1305, ptr noundef @.str.28, ptr noundef @.str.52)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %do.body129
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end137:                                        ; preds = %do.body129
  br label %do.cond138

do.cond138:                                       ; preds = %if.end137
  br label %do.end139

do.end139:                                        ; preds = %do.cond138
  %call140 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 7))
  store <16 x float> %call140, ptr %a, align 64, !tbaa !16
  %call141 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <16 x float> %call141, ptr %b, align 64, !tbaa !16
  %call142 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 3))
  store <8 x i64> %call142, ptr %c, align 64, !tbaa !16
  %35 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %36 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %37 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %38 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %36, ptr %indirect-arg-temp143, align 64, !tbaa !16
  store <16 x float> %37, ptr %indirect-arg-temp144, align 64, !tbaa !16
  store <8 x i64> %38, ptr %indirect-arg-temp145, align 64, !tbaa !16
  %call146 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp143, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp144, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp145, i32 noundef 81)
  store <16 x float> %35, ptr %indirect-arg-temp147, align 64, !tbaa !16
  store <16 x float> %call146, ptr %indirect-arg-temp148, align 64, !tbaa !16
  %call149 = call <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp147, i16 noundef zeroext -19627, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp148)
  store <16 x float> %call149, ptr %r, align 64, !tbaa !16
  br label %do.body150

do.body150:                                       ; preds = %do.end139
  %39 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call151 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.7], ptr @test_simde_mm512_mask_fixupimm_ps.test_vec, i64 0, i64 7, i32 5))
  %call152 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %39, ptr %indirect-arg-temp153, align 64, !tbaa !16
  store <16 x float> %call151, ptr %indirect-arg-temp154, align 64, !tbaa !16
  %call155 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp153, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp154, float noundef %call152, ptr noundef @.str.27, i32 noundef 1311, ptr noundef @.str.28, ptr noundef @.str.53)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %do.body150
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end158:                                        ; preds = %do.body150
  br label %do.cond159

do.cond159:                                       ; preds = %if.end158
  br label %do.end160

do.end160:                                        ; preds = %do.cond159
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %if.then157, %if.then136, %if.then115, %if.then94, %if.then73, %if.then52, %if.then31, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #16
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_maskz_fixupimm_ps() #5 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <16 x float>, align 64
  %b = alloca <16 x float>, align 64
  %r = alloca <16 x float>, align 64
  %c = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <16 x float>, align 64
  %indirect-arg-temp3 = alloca <16 x float>, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <16 x float>, align 64
  %indirect-arg-temp10 = alloca <16 x float>, align 64
  %indirect-arg-temp11 = alloca <16 x float>, align 64
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp16 = alloca <16 x float>, align 64
  %indirect-arg-temp17 = alloca <16 x float>, align 64
  %indirect-arg-temp18 = alloca <8 x i64>, align 64
  %indirect-arg-temp20 = alloca <16 x float>, align 64
  %indirect-arg-temp25 = alloca <16 x float>, align 64
  %indirect-arg-temp26 = alloca <16 x float>, align 64
  %indirect-arg-temp36 = alloca <16 x float>, align 64
  %indirect-arg-temp37 = alloca <16 x float>, align 64
  %indirect-arg-temp38 = alloca <8 x i64>, align 64
  %indirect-arg-temp40 = alloca <16 x float>, align 64
  %indirect-arg-temp45 = alloca <16 x float>, align 64
  %indirect-arg-temp46 = alloca <16 x float>, align 64
  %indirect-arg-temp56 = alloca <16 x float>, align 64
  %indirect-arg-temp57 = alloca <16 x float>, align 64
  %indirect-arg-temp58 = alloca <8 x i64>, align 64
  %indirect-arg-temp60 = alloca <16 x float>, align 64
  %indirect-arg-temp65 = alloca <16 x float>, align 64
  %indirect-arg-temp66 = alloca <16 x float>, align 64
  %indirect-arg-temp76 = alloca <16 x float>, align 64
  %indirect-arg-temp77 = alloca <16 x float>, align 64
  %indirect-arg-temp78 = alloca <8 x i64>, align 64
  %indirect-arg-temp80 = alloca <16 x float>, align 64
  %indirect-arg-temp85 = alloca <16 x float>, align 64
  %indirect-arg-temp86 = alloca <16 x float>, align 64
  %indirect-arg-temp96 = alloca <16 x float>, align 64
  %indirect-arg-temp97 = alloca <16 x float>, align 64
  %indirect-arg-temp98 = alloca <8 x i64>, align 64
  %indirect-arg-temp100 = alloca <16 x float>, align 64
  %indirect-arg-temp105 = alloca <16 x float>, align 64
  %indirect-arg-temp106 = alloca <16 x float>, align 64
  %indirect-arg-temp116 = alloca <16 x float>, align 64
  %indirect-arg-temp117 = alloca <16 x float>, align 64
  %indirect-arg-temp118 = alloca <8 x i64>, align 64
  %indirect-arg-temp120 = alloca <16 x float>, align 64
  %indirect-arg-temp125 = alloca <16 x float>, align 64
  %indirect-arg-temp126 = alloca <16 x float>, align 64
  %indirect-arg-temp136 = alloca <16 x float>, align 64
  %indirect-arg-temp137 = alloca <16 x float>, align 64
  %indirect-arg-temp138 = alloca <8 x i64>, align 64
  %indirect-arg-temp140 = alloca <16 x float>, align 64
  %indirect-arg-temp145 = alloca <16 x float>, align 64
  %indirect-arg-temp146 = alloca <16 x float>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %c) #16
  %call = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.8, ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i32 0, i32 1))
  store <16 x float> %call, ptr %a, align 64, !tbaa !16
  %call1 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.8, ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i32 0, i32 2))
  store <16 x float> %call1, ptr %b, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds (%struct.anon.8, ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i32 0, i32 3))
  store <8 x i64> %call2, ptr %c, align 64, !tbaa !16
  %0 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %1 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %0, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <16 x float> %1, ptr %indirect-arg-temp3, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp4, align 64, !tbaa !16
  %call5 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4, i32 noundef 181)
  store <16 x float> %call5, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext 4530, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp6)
  store <16 x float> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call8 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.8, ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i32 0, i32 5))
  %call9 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %3, ptr %indirect-arg-temp10, align 64, !tbaa !16
  store <16 x float> %call8, ptr %indirect-arg-temp11, align 64, !tbaa !16
  %call12 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp10, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp11, float noundef %call9, ptr noundef @.str.27, i32 noundef 1489, ptr noundef @.str.28, ptr noundef @.str.46)
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
  %call13 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 1))
  store <16 x float> %call13, ptr %a, align 64, !tbaa !16
  %call14 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 2))
  store <16 x float> %call14, ptr %b, align 64, !tbaa !16
  %call15 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 3))
  store <8 x i64> %call15, ptr %c, align 64, !tbaa !16
  %4 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %5 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %6 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %4, ptr %indirect-arg-temp16, align 64, !tbaa !16
  store <16 x float> %5, ptr %indirect-arg-temp17, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp18, align 64, !tbaa !16
  %call19 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp16, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp17, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp18, i32 noundef 146)
  store <16 x float> %call19, ptr %indirect-arg-temp20, align 64, !tbaa !16
  %call21 = call <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext 14045, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp20)
  store <16 x float> %call21, ptr %r, align 64, !tbaa !16
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %7 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call23 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 1, i32 5))
  %call24 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %7, ptr %indirect-arg-temp25, align 64, !tbaa !16
  store <16 x float> %call23, ptr %indirect-arg-temp26, align 64, !tbaa !16
  %call27 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp25, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp26, float noundef %call24, ptr noundef @.str.27, i32 noundef 1496, ptr noundef @.str.28, ptr noundef @.str.47)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body22
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.body22
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  %call33 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 1))
  store <16 x float> %call33, ptr %a, align 64, !tbaa !16
  %call34 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 2))
  store <16 x float> %call34, ptr %b, align 64, !tbaa !16
  %call35 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 3))
  store <8 x i64> %call35, ptr %c, align 64, !tbaa !16
  %8 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %9 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %10 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %8, ptr %indirect-arg-temp36, align 64, !tbaa !16
  store <16 x float> %9, ptr %indirect-arg-temp37, align 64, !tbaa !16
  store <8 x i64> %10, ptr %indirect-arg-temp38, align 64, !tbaa !16
  %call39 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp36, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp37, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp38, i32 noundef 144)
  store <16 x float> %call39, ptr %indirect-arg-temp40, align 64, !tbaa !16
  %call41 = call <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext 18161, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp40)
  store <16 x float> %call41, ptr %r, align 64, !tbaa !16
  br label %do.body42

do.body42:                                        ; preds = %do.end32
  %11 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call43 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 2, i32 5))
  %call44 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %11, ptr %indirect-arg-temp45, align 64, !tbaa !16
  store <16 x float> %call43, ptr %indirect-arg-temp46, align 64, !tbaa !16
  %call47 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp45, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp46, float noundef %call44, ptr noundef @.str.27, i32 noundef 1502, ptr noundef @.str.28, ptr noundef @.str.48)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body42
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %do.body42
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  %call53 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 1))
  store <16 x float> %call53, ptr %a, align 64, !tbaa !16
  %call54 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 2))
  store <16 x float> %call54, ptr %b, align 64, !tbaa !16
  %call55 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 3))
  store <8 x i64> %call55, ptr %c, align 64, !tbaa !16
  %12 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %13 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %14 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %12, ptr %indirect-arg-temp56, align 64, !tbaa !16
  store <16 x float> %13, ptr %indirect-arg-temp57, align 64, !tbaa !16
  store <8 x i64> %14, ptr %indirect-arg-temp58, align 64, !tbaa !16
  %call59 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp56, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp57, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp58, i32 noundef 148)
  store <16 x float> %call59, ptr %indirect-arg-temp60, align 64, !tbaa !16
  %call61 = call <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext 5032, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp60)
  store <16 x float> %call61, ptr %r, align 64, !tbaa !16
  br label %do.body62

do.body62:                                        ; preds = %do.end52
  %15 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call63 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 3, i32 5))
  %call64 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %15, ptr %indirect-arg-temp65, align 64, !tbaa !16
  store <16 x float> %call63, ptr %indirect-arg-temp66, align 64, !tbaa !16
  %call67 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp65, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp66, float noundef %call64, ptr noundef @.str.27, i32 noundef 1508, ptr noundef @.str.28, ptr noundef @.str.49)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body62
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %do.body62
  br label %do.cond71

do.cond71:                                        ; preds = %if.end70
  br label %do.end72

do.end72:                                         ; preds = %do.cond71
  %call73 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 1))
  store <16 x float> %call73, ptr %a, align 64, !tbaa !16
  %call74 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 2))
  store <16 x float> %call74, ptr %b, align 64, !tbaa !16
  %call75 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 3))
  store <8 x i64> %call75, ptr %c, align 64, !tbaa !16
  %16 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %17 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %18 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %16, ptr %indirect-arg-temp76, align 64, !tbaa !16
  store <16 x float> %17, ptr %indirect-arg-temp77, align 64, !tbaa !16
  store <8 x i64> %18, ptr %indirect-arg-temp78, align 64, !tbaa !16
  %call79 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp76, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp77, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp78, i32 noundef 52)
  store <16 x float> %call79, ptr %indirect-arg-temp80, align 64, !tbaa !16
  %call81 = call <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext 14996, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp80)
  store <16 x float> %call81, ptr %r, align 64, !tbaa !16
  br label %do.body82

do.body82:                                        ; preds = %do.end72
  %19 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call83 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 4, i32 5))
  %call84 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %19, ptr %indirect-arg-temp85, align 64, !tbaa !16
  store <16 x float> %call83, ptr %indirect-arg-temp86, align 64, !tbaa !16
  %call87 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp85, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp86, float noundef %call84, ptr noundef @.str.27, i32 noundef 1515, ptr noundef @.str.28, ptr noundef @.str.50)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.body82
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end90:                                         ; preds = %do.body82
  br label %do.cond91

do.cond91:                                        ; preds = %if.end90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  %call93 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 1))
  store <16 x float> %call93, ptr %a, align 64, !tbaa !16
  %call94 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 2))
  store <16 x float> %call94, ptr %b, align 64, !tbaa !16
  %call95 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 3))
  store <8 x i64> %call95, ptr %c, align 64, !tbaa !16
  %20 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %21 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %22 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %20, ptr %indirect-arg-temp96, align 64, !tbaa !16
  store <16 x float> %21, ptr %indirect-arg-temp97, align 64, !tbaa !16
  store <8 x i64> %22, ptr %indirect-arg-temp98, align 64, !tbaa !16
  %call99 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp96, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp97, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp98, i32 noundef 109)
  store <16 x float> %call99, ptr %indirect-arg-temp100, align 64, !tbaa !16
  %call101 = call <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext 11800, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp100)
  store <16 x float> %call101, ptr %r, align 64, !tbaa !16
  br label %do.body102

do.body102:                                       ; preds = %do.end92
  %23 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call103 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 5, i32 5))
  %call104 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %23, ptr %indirect-arg-temp105, align 64, !tbaa !16
  store <16 x float> %call103, ptr %indirect-arg-temp106, align 64, !tbaa !16
  %call107 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp105, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp106, float noundef %call104, ptr noundef @.str.27, i32 noundef 1522, ptr noundef @.str.28, ptr noundef @.str.51)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %do.body102
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end110:                                        ; preds = %do.body102
  br label %do.cond111

do.cond111:                                       ; preds = %if.end110
  br label %do.end112

do.end112:                                        ; preds = %do.cond111
  %call113 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 1))
  store <16 x float> %call113, ptr %a, align 64, !tbaa !16
  %call114 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 2))
  store <16 x float> %call114, ptr %b, align 64, !tbaa !16
  %call115 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 3))
  store <8 x i64> %call115, ptr %c, align 64, !tbaa !16
  %24 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %25 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %26 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %24, ptr %indirect-arg-temp116, align 64, !tbaa !16
  store <16 x float> %25, ptr %indirect-arg-temp117, align 64, !tbaa !16
  store <8 x i64> %26, ptr %indirect-arg-temp118, align 64, !tbaa !16
  %call119 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp116, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp117, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp118, i32 noundef 61)
  store <16 x float> %call119, ptr %indirect-arg-temp120, align 64, !tbaa !16
  %call121 = call <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext -2874, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp120)
  store <16 x float> %call121, ptr %r, align 64, !tbaa !16
  br label %do.body122

do.body122:                                       ; preds = %do.end112
  %27 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call123 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 6, i32 5))
  %call124 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %27, ptr %indirect-arg-temp125, align 64, !tbaa !16
  store <16 x float> %call123, ptr %indirect-arg-temp126, align 64, !tbaa !16
  %call127 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp125, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp126, float noundef %call124, ptr noundef @.str.27, i32 noundef 1529, ptr noundef @.str.28, ptr noundef @.str.52)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %do.body122
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end130:                                        ; preds = %do.body122
  br label %do.cond131

do.cond131:                                       ; preds = %if.end130
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  %call133 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 1))
  store <16 x float> %call133, ptr %a, align 64, !tbaa !16
  %call134 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 2))
  store <16 x float> %call134, ptr %b, align 64, !tbaa !16
  %call135 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 3))
  store <8 x i64> %call135, ptr %c, align 64, !tbaa !16
  %28 = load <16 x float>, ptr %a, align 64, !tbaa !16
  %29 = load <16 x float>, ptr %b, align 64, !tbaa !16
  %30 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <16 x float> %28, ptr %indirect-arg-temp136, align 64, !tbaa !16
  store <16 x float> %29, ptr %indirect-arg-temp137, align 64, !tbaa !16
  store <8 x i64> %30, ptr %indirect-arg-temp138, align 64, !tbaa !16
  %call139 = call <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp136, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp137, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp138, i32 noundef 36)
  store <16 x float> %call139, ptr %indirect-arg-temp140, align 64, !tbaa !16
  %call141 = call <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext -10852, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp140)
  store <16 x float> %call141, ptr %r, align 64, !tbaa !16
  br label %do.body142

do.body142:                                       ; preds = %do.end132
  %31 = load <16 x float>, ptr %r, align 64, !tbaa !16
  %call143 = call <16 x float> @simde_mm512_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.8], ptr @test_simde_mm512_maskz_fixupimm_ps.test_vec, i64 0, i64 7, i32 5))
  %call144 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  store <16 x float> %31, ptr %indirect-arg-temp145, align 64, !tbaa !16
  store <16 x float> %call143, ptr %indirect-arg-temp146, align 64, !tbaa !16
  %call147 = call i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp145, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp146, float noundef %call144, ptr noundef @.str.27, i32 noundef 1535, ptr noundef @.str.28, ptr noundef @.str.53)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.body142
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end150:                                        ; preds = %do.body142
  br label %do.cond151

do.cond151:                                       ; preds = %if.end150
  br label %do.end152

do.end152:                                        ; preds = %do.cond151
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end152, %if.then149, %if.then129, %if.then109, %if.then89, %if.then69, %if.then49, %if.then29, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_fixupimm_ss() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  %r = alloca <4 x float>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <4 x float> @simde_mm_loadu_ps(ptr noundef @test_simde_mm_fixupimm_ss.test_vec)
  store <4 x float> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.9, ptr @test_simde_mm_fixupimm_ss.test_vec, i32 0, i32 1))
  store <4 x float> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.9, ptr @test_simde_mm_fixupimm_ss.test_vec, i32 0, i32 2))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %1 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %0, <4 x float> noundef %1, <2 x i64> noundef %2, i32 noundef 221)
  store <4 x float> %call3, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call4 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.9, ptr @test_simde_mm_fixupimm_ss.test_vec, i32 0, i32 4))
  %call5 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call6 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %3, <4 x float> noundef %call4, float noundef %call5, ptr noundef @.str.27, i32 noundef 1625, ptr noundef @.str.28, ptr noundef @.str.29)
  %tobool = icmp ne i32 %call6, 0
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
  %call7 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 1))
  store <4 x float> %call7, ptr %a, align 16, !tbaa !16
  %call8 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 1, i32 1))
  store <4 x float> %call8, ptr %b, align 16, !tbaa !16
  %call9 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 1, i32 2))
  store <2 x i64> %call9, ptr %c, align 16, !tbaa !16
  %4 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %5 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call10 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %4, <4 x float> noundef %5, <2 x i64> noundef %6, i32 noundef 198)
  store <4 x float> %call10, ptr %r, align 16, !tbaa !16
  br label %do.body11

do.body11:                                        ; preds = %do.end
  %7 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call12 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 1, i32 4))
  %call13 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call14 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %7, <4 x float> noundef %call12, float noundef %call13, ptr noundef @.str.27, i32 noundef 1632, ptr noundef @.str.28, ptr noundef @.str.30)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body11
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %do.body11
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  %call20 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 2))
  store <4 x float> %call20, ptr %a, align 16, !tbaa !16
  %call21 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 2, i32 1))
  store <4 x float> %call21, ptr %b, align 16, !tbaa !16
  %call22 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 2, i32 2))
  store <2 x i64> %call22, ptr %c, align 16, !tbaa !16
  %8 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %9 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %10 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call23 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %8, <4 x float> noundef %9, <2 x i64> noundef %10, i32 noundef 36)
  store <4 x float> %call23, ptr %r, align 16, !tbaa !16
  br label %do.body24

do.body24:                                        ; preds = %do.end19
  %11 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call25 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 2, i32 4))
  %call26 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call27 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %11, <4 x float> noundef %call25, float noundef %call26, ptr noundef @.str.27, i32 noundef 1638, ptr noundef @.str.28, ptr noundef @.str.31)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.body24
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  %call33 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 3))
  store <4 x float> %call33, ptr %a, align 16, !tbaa !16
  %call34 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 3, i32 1))
  store <4 x float> %call34, ptr %b, align 16, !tbaa !16
  %call35 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 3, i32 2))
  store <2 x i64> %call35, ptr %c, align 16, !tbaa !16
  %12 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %13 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %14 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call36 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %12, <4 x float> noundef %13, <2 x i64> noundef %14, i32 noundef 25)
  store <4 x float> %call36, ptr %r, align 16, !tbaa !16
  br label %do.body37

do.body37:                                        ; preds = %do.end32
  %15 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call38 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 3, i32 4))
  %call39 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call40 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %15, <4 x float> noundef %call38, float noundef %call39, ptr noundef @.str.27, i32 noundef 1644, ptr noundef @.str.28, ptr noundef @.str.32)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body37
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %do.body37
  br label %do.cond44

do.cond44:                                        ; preds = %if.end43
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  %call46 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 4))
  store <4 x float> %call46, ptr %a, align 16, !tbaa !16
  %call47 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 4, i32 1))
  store <4 x float> %call47, ptr %b, align 16, !tbaa !16
  %call48 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 4, i32 2))
  store <2 x i64> %call48, ptr %c, align 16, !tbaa !16
  %16 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %17 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call49 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %16, <4 x float> noundef %17, <2 x i64> noundef %18, i32 noundef 34)
  store <4 x float> %call49, ptr %r, align 16, !tbaa !16
  br label %do.body50

do.body50:                                        ; preds = %do.end45
  %19 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call51 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 4, i32 4))
  %call52 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call53 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %19, <4 x float> noundef %call51, float noundef %call52, ptr noundef @.str.27, i32 noundef 1650, ptr noundef @.str.28, ptr noundef @.str.33)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body50
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %do.body50
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %call59 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 5))
  store <4 x float> %call59, ptr %a, align 16, !tbaa !16
  %call60 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 5, i32 1))
  store <4 x float> %call60, ptr %b, align 16, !tbaa !16
  %call61 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 5, i32 2))
  store <2 x i64> %call61, ptr %c, align 16, !tbaa !16
  %20 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %21 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %22 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call62 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %20, <4 x float> noundef %21, <2 x i64> noundef %22, i32 noundef 98)
  store <4 x float> %call62, ptr %r, align 16, !tbaa !16
  br label %do.body63

do.body63:                                        ; preds = %do.end58
  %23 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call64 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 5, i32 4))
  %call65 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call66 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %23, <4 x float> noundef %call64, float noundef %call65, ptr noundef @.str.27, i32 noundef 1656, ptr noundef @.str.28, ptr noundef @.str.34)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.body63
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %do.body63
  br label %do.cond70

do.cond70:                                        ; preds = %if.end69
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  %call72 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 6))
  store <4 x float> %call72, ptr %a, align 16, !tbaa !16
  %call73 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 6, i32 1))
  store <4 x float> %call73, ptr %b, align 16, !tbaa !16
  %call74 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 6, i32 2))
  store <2 x i64> %call74, ptr %c, align 16, !tbaa !16
  %24 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %25 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %26 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call75 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %24, <4 x float> noundef %25, <2 x i64> noundef %26, i32 noundef 20)
  store <4 x float> %call75, ptr %r, align 16, !tbaa !16
  br label %do.body76

do.body76:                                        ; preds = %do.end71
  %27 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call77 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 6, i32 4))
  %call78 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call79 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %27, <4 x float> noundef %call77, float noundef %call78, ptr noundef @.str.27, i32 noundef 1662, ptr noundef @.str.28, ptr noundef @.str.35)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %do.body76
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end82:                                         ; preds = %do.body76
  br label %do.cond83

do.cond83:                                        ; preds = %if.end82
  br label %do.end84

do.end84:                                         ; preds = %do.cond83
  %call85 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 7))
  store <4 x float> %call85, ptr %a, align 16, !tbaa !16
  %call86 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 7, i32 1))
  store <4 x float> %call86, ptr %b, align 16, !tbaa !16
  %call87 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 7, i32 2))
  store <2 x i64> %call87, ptr %c, align 16, !tbaa !16
  %28 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %29 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %30 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call88 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %28, <4 x float> noundef %29, <2 x i64> noundef %30, i32 noundef 252)
  store <4 x float> %call88, ptr %r, align 16, !tbaa !16
  br label %do.body89

do.body89:                                        ; preds = %do.end84
  %31 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call90 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.9], ptr @test_simde_mm_fixupimm_ss.test_vec, i64 0, i64 7, i32 4))
  %call91 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call92 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %31, <4 x float> noundef %call90, float noundef %call91, ptr noundef @.str.27, i32 noundef 1669, ptr noundef @.str.28, ptr noundef @.str.36)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body89
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %do.body89
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.then94, %if.then81, %if.then68, %if.then55, %if.then42, %if.then29, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_fixupimm_ss() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  %r = alloca <4 x float>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <4 x float> @simde_mm_loadu_ps(ptr noundef @test_simde_mm_mask_fixupimm_ss.test_vec)
  store <4 x float> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.10, ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i32 0, i32 2))
  store <4 x float> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.10, ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i32 0, i32 3))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %1 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %2 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %3 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %1, <4 x float> noundef %2, <2 x i64> noundef %3, i32 noundef 123)
  %call4 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %0, i8 noundef zeroext -18, <4 x float> noundef %call3)
  store <4 x float> %call4, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call5 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.10, ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i32 0, i32 5))
  %call6 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call7 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %4, <4 x float> noundef %call5, float noundef %call6, ptr noundef @.str.27, i32 noundef 1765, ptr noundef @.str.28, ptr noundef @.str.29)
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
  %call8 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 1))
  store <4 x float> %call8, ptr %a, align 16, !tbaa !16
  %call9 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 1, i32 2))
  store <4 x float> %call9, ptr %b, align 16, !tbaa !16
  %call10 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 1, i32 3))
  store <2 x i64> %call10, ptr %c, align 16, !tbaa !16
  %5 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %6 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %7 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %8 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call11 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %6, <4 x float> noundef %7, <2 x i64> noundef %8, i32 noundef 162)
  %call12 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %5, i8 noundef zeroext 31, <4 x float> noundef %call11)
  store <4 x float> %call12, ptr %r, align 16, !tbaa !16
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %9 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call14 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 1, i32 5))
  %call15 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call16 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %9, <4 x float> noundef %call14, float noundef %call15, ptr noundef @.str.27, i32 noundef 1772, ptr noundef @.str.28, ptr noundef @.str.30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %call22 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 2))
  store <4 x float> %call22, ptr %a, align 16, !tbaa !16
  %call23 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 2, i32 2))
  store <4 x float> %call23, ptr %b, align 16, !tbaa !16
  %call24 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 2, i32 3))
  store <2 x i64> %call24, ptr %c, align 16, !tbaa !16
  %10 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %11 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %12 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %13 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call25 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %11, <4 x float> noundef %12, <2 x i64> noundef %13, i32 noundef 139)
  %call26 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %10, i8 noundef zeroext 30, <4 x float> noundef %call25)
  store <4 x float> %call26, ptr %r, align 16, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end21
  %14 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call28 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 2, i32 5))
  %call29 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call30 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %14, <4 x float> noundef %call28, float noundef %call29, ptr noundef @.str.27, i32 noundef 1778, ptr noundef @.str.28, ptr noundef @.str.31)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 3))
  store <4 x float> %call36, ptr %a, align 16, !tbaa !16
  %call37 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 3, i32 2))
  store <4 x float> %call37, ptr %b, align 16, !tbaa !16
  %call38 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 3, i32 3))
  store <2 x i64> %call38, ptr %c, align 16, !tbaa !16
  %15 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %16 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %17 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call39 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %16, <4 x float> noundef %17, <2 x i64> noundef %18, i32 noundef 252)
  %call40 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %15, i8 noundef zeroext -81, <4 x float> noundef %call39)
  store <4 x float> %call40, ptr %r, align 16, !tbaa !16
  br label %do.body41

do.body41:                                        ; preds = %do.end35
  %19 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call42 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 3, i32 5))
  %call43 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call44 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %19, <4 x float> noundef %call42, float noundef %call43, ptr noundef @.str.27, i32 noundef 1784, ptr noundef @.str.28, ptr noundef @.str.32)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %call50 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 4))
  store <4 x float> %call50, ptr %a, align 16, !tbaa !16
  %call51 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 4, i32 2))
  store <4 x float> %call51, ptr %b, align 16, !tbaa !16
  %call52 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 4, i32 3))
  store <2 x i64> %call52, ptr %c, align 16, !tbaa !16
  %20 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %21 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %22 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %23 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call53 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %21, <4 x float> noundef %22, <2 x i64> noundef %23, i32 noundef 207)
  %call54 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %20, i8 noundef zeroext 14, <4 x float> noundef %call53)
  store <4 x float> %call54, ptr %r, align 16, !tbaa !16
  br label %do.body55

do.body55:                                        ; preds = %do.end49
  %24 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call56 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 4, i32 5))
  %call57 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call58 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %24, <4 x float> noundef %call56, float noundef %call57, ptr noundef @.str.27, i32 noundef 1790, ptr noundef @.str.28, ptr noundef @.str.33)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %do.body55
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %call64 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 5))
  store <4 x float> %call64, ptr %a, align 16, !tbaa !16
  %call65 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 5, i32 2))
  store <4 x float> %call65, ptr %b, align 16, !tbaa !16
  %call66 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 5, i32 3))
  store <2 x i64> %call66, ptr %c, align 16, !tbaa !16
  %25 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %26 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %27 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %28 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call67 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %26, <4 x float> noundef %27, <2 x i64> noundef %28, i32 noundef 193)
  %call68 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %25, i8 noundef zeroext 79, <4 x float> noundef %call67)
  store <4 x float> %call68, ptr %r, align 16, !tbaa !16
  br label %do.body69

do.body69:                                        ; preds = %do.end63
  %29 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call70 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 5, i32 5))
  %call71 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call72 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %29, <4 x float> noundef %call70, float noundef %call71, ptr noundef @.str.27, i32 noundef 1796, ptr noundef @.str.28, ptr noundef @.str.34)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body69
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.body69
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 6))
  store <4 x float> %call78, ptr %a, align 16, !tbaa !16
  %call79 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 6, i32 2))
  store <4 x float> %call79, ptr %b, align 16, !tbaa !16
  %call80 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 6, i32 3))
  store <2 x i64> %call80, ptr %c, align 16, !tbaa !16
  %30 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %31 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %32 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %33 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call81 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %31, <4 x float> noundef %32, <2 x i64> noundef %33, i32 noundef 107)
  %call82 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %30, i8 noundef zeroext -66, <4 x float> noundef %call81)
  store <4 x float> %call82, ptr %r, align 16, !tbaa !16
  br label %do.body83

do.body83:                                        ; preds = %do.end77
  %34 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call84 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 6, i32 5))
  %call85 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call86 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %34, <4 x float> noundef %call84, float noundef %call85, ptr noundef @.str.27, i32 noundef 1802, ptr noundef @.str.28, ptr noundef @.str.35)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %call92 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 7))
  store <4 x float> %call92, ptr %a, align 16, !tbaa !16
  %call93 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 7, i32 2))
  store <4 x float> %call93, ptr %b, align 16, !tbaa !16
  %call94 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 7, i32 3))
  store <2 x i64> %call94, ptr %c, align 16, !tbaa !16
  %35 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %36 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %37 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %38 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call95 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %36, <4 x float> noundef %37, <2 x i64> noundef %38, i32 noundef 61)
  %call96 = call <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %35, i8 noundef zeroext 110, <4 x float> noundef %call95)
  store <4 x float> %call96, ptr %r, align 16, !tbaa !16
  br label %do.body97

do.body97:                                        ; preds = %do.end91
  %39 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call98 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.10], ptr @test_simde_mm_mask_fixupimm_ss.test_vec, i64 0, i64 7, i32 5))
  %call99 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call100 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %39, <4 x float> noundef %call98, float noundef %call99, ptr noundef @.str.27, i32 noundef 1808, ptr noundef @.str.28, ptr noundef @.str.36)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then102, %if.then88, %if.then74, %if.then60, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_maskz_fixupimm_ss() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x float>, align 16
  %b = alloca <4 x float>, align 16
  %r = alloca <4 x float>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.11, ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i32 0, i32 1))
  store <4 x float> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.11, ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i32 0, i32 2))
  store <4 x float> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds (%struct.anon.11, ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i32 0, i32 3))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %1 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %0, <4 x float> noundef %1, <2 x i64> noundef %2, i32 noundef 98)
  %call4 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext -18, <4 x float> noundef %call3)
  store <4 x float> %call4, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call5 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds (%struct.anon.11, ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i32 0, i32 5))
  %call6 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call7 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %3, <4 x float> noundef %call5, float noundef %call6, ptr noundef @.str.27, i32 noundef 1905, ptr noundef @.str.28, ptr noundef @.str.29)
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
  %call8 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 1, i32 1))
  store <4 x float> %call8, ptr %a, align 16, !tbaa !16
  %call9 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 1, i32 2))
  store <4 x float> %call9, ptr %b, align 16, !tbaa !16
  %call10 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 1, i32 3))
  store <2 x i64> %call10, ptr %c, align 16, !tbaa !16
  %4 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %5 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call11 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %4, <4 x float> noundef %5, <2 x i64> noundef %6, i32 noundef 172)
  %call12 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 110, <4 x float> noundef %call11)
  store <4 x float> %call12, ptr %r, align 16, !tbaa !16
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %7 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call14 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 1, i32 5))
  %call15 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call16 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %7, <4 x float> noundef %call14, float noundef %call15, ptr noundef @.str.27, i32 noundef 1912, ptr noundef @.str.28, ptr noundef @.str.30)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %call22 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 2, i32 1))
  store <4 x float> %call22, ptr %a, align 16, !tbaa !16
  %call23 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 2, i32 2))
  store <4 x float> %call23, ptr %b, align 16, !tbaa !16
  %call24 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 2, i32 3))
  store <2 x i64> %call24, ptr %c, align 16, !tbaa !16
  %8 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %9 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %10 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call25 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %8, <4 x float> noundef %9, <2 x i64> noundef %10, i32 noundef 110)
  %call26 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 94, <4 x float> noundef %call25)
  store <4 x float> %call26, ptr %r, align 16, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end21
  %11 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call28 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 2, i32 5))
  %call29 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call30 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %11, <4 x float> noundef %call28, float noundef %call29, ptr noundef @.str.27, i32 noundef 1918, ptr noundef @.str.28, ptr noundef @.str.31)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 3, i32 1))
  store <4 x float> %call36, ptr %a, align 16, !tbaa !16
  %call37 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 3, i32 2))
  store <4 x float> %call37, ptr %b, align 16, !tbaa !16
  %call38 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 3, i32 3))
  store <2 x i64> %call38, ptr %c, align 16, !tbaa !16
  %12 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %13 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %14 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call39 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %12, <4 x float> noundef %13, <2 x i64> noundef %14, i32 noundef 173)
  %call40 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext -18, <4 x float> noundef %call39)
  store <4 x float> %call40, ptr %r, align 16, !tbaa !16
  br label %do.body41

do.body41:                                        ; preds = %do.end35
  %15 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call42 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 3, i32 5))
  %call43 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call44 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %15, <4 x float> noundef %call42, float noundef %call43, ptr noundef @.str.27, i32 noundef 1924, ptr noundef @.str.28, ptr noundef @.str.32)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %call50 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 4, i32 1))
  store <4 x float> %call50, ptr %a, align 16, !tbaa !16
  %call51 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 4, i32 2))
  store <4 x float> %call51, ptr %b, align 16, !tbaa !16
  %call52 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 4, i32 3))
  store <2 x i64> %call52, ptr %c, align 16, !tbaa !16
  %16 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %17 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call53 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %16, <4 x float> noundef %17, <2 x i64> noundef %18, i32 noundef 198)
  %call54 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext -2, <4 x float> noundef %call53)
  store <4 x float> %call54, ptr %r, align 16, !tbaa !16
  br label %do.body55

do.body55:                                        ; preds = %do.end49
  %19 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call56 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 4, i32 5))
  %call57 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call58 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %19, <4 x float> noundef %call56, float noundef %call57, ptr noundef @.str.27, i32 noundef 1930, ptr noundef @.str.28, ptr noundef @.str.33)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %do.body55
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %call64 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 5, i32 1))
  store <4 x float> %call64, ptr %a, align 16, !tbaa !16
  %call65 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 5, i32 2))
  store <4 x float> %call65, ptr %b, align 16, !tbaa !16
  %call66 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 5, i32 3))
  store <2 x i64> %call66, ptr %c, align 16, !tbaa !16
  %20 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %21 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %22 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call67 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %20, <4 x float> noundef %21, <2 x i64> noundef %22, i32 noundef 56)
  %call68 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext -66, <4 x float> noundef %call67)
  store <4 x float> %call68, ptr %r, align 16, !tbaa !16
  br label %do.body69

do.body69:                                        ; preds = %do.end63
  %23 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call70 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 5, i32 5))
  %call71 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call72 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %23, <4 x float> noundef %call70, float noundef %call71, ptr noundef @.str.27, i32 noundef 1936, ptr noundef @.str.28, ptr noundef @.str.34)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body69
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.body69
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 6, i32 1))
  store <4 x float> %call78, ptr %a, align 16, !tbaa !16
  %call79 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 6, i32 2))
  store <4 x float> %call79, ptr %b, align 16, !tbaa !16
  %call80 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 6, i32 3))
  store <2 x i64> %call80, ptr %c, align 16, !tbaa !16
  %24 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %25 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %26 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call81 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %24, <4 x float> noundef %25, <2 x i64> noundef %26, i32 noundef 202)
  %call82 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 111, <4 x float> noundef %call81)
  store <4 x float> %call82, ptr %r, align 16, !tbaa !16
  br label %do.body83

do.body83:                                        ; preds = %do.end77
  %27 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call84 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 6, i32 5))
  %call85 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call86 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %27, <4 x float> noundef %call84, float noundef %call85, ptr noundef @.str.27, i32 noundef 1942, ptr noundef @.str.28, ptr noundef @.str.35)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %call92 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 7, i32 1))
  store <4 x float> %call92, ptr %a, align 16, !tbaa !16
  %call93 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 7, i32 2))
  store <4 x float> %call93, ptr %b, align 16, !tbaa !16
  %call94 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 7, i32 3))
  store <2 x i64> %call94, ptr %c, align 16, !tbaa !16
  %28 = load <4 x float>, ptr %a, align 16, !tbaa !16
  %29 = load <4 x float>, ptr %b, align 16, !tbaa !16
  %30 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call95 = call <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %28, <4 x float> noundef %29, <2 x i64> noundef %30, i32 noundef 211)
  %call96 = call <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext 62, <4 x float> noundef %call95)
  store <4 x float> %call96, ptr %r, align 16, !tbaa !16
  br label %do.body97

do.body97:                                        ; preds = %do.end91
  %31 = load <4 x float>, ptr %r, align 16, !tbaa !16
  %call98 = call <4 x float> @simde_mm_loadu_ps(ptr noundef getelementptr inbounds ([8 x %struct.anon.11], ptr @test_simde_mm_maskz_fixupimm_ss.test_vec, i64 0, i64 7, i32 5))
  %call99 = call float @simde_test_f32_precision_to_slop(i32 noundef 1)
  %call100 = call i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %31, <4 x float> noundef %call98, float noundef %call99, ptr noundef @.str.27, i32 noundef 1948, ptr noundef @.str.28, ptr noundef @.str.36)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then102, %if.then88, %if.then74, %if.then60, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_fixupimm_pd() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %b = alloca <2 x double>, align 16
  %r = alloca <2 x double>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <2 x double> @simde_mm_loadu_pd(ptr noundef @test_simde_mm_fixupimm_pd.test_vec)
  store <2 x double> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.12, ptr @test_simde_mm_fixupimm_pd.test_vec, i32 0, i32 1))
  store <2 x double> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.12, ptr @test_simde_mm_fixupimm_pd.test_vec, i32 0, i32 2))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %1 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %0, <2 x double> noundef %1, <2 x i64> noundef %2, i32 noundef 128)
  store <2 x double> %call3, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call4 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.12, ptr @test_simde_mm_fixupimm_pd.test_vec, i32 0, i32 4))
  %call5 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call6 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %3, <2 x double> noundef %call4, double noundef %call5, ptr noundef @.str.27, i32 noundef 2035, ptr noundef @.str.28, ptr noundef @.str.54)
  %tobool = icmp ne i32 %call6, 0
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
  %call7 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 1))
  store <2 x double> %call7, ptr %a, align 16, !tbaa !16
  %call8 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 1, i32 1))
  store <2 x double> %call8, ptr %b, align 16, !tbaa !16
  %call9 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <2 x i64> %call9, ptr %c, align 16, !tbaa !16
  %4 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %5 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call10 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %4, <2 x double> noundef %5, <2 x i64> noundef %6, i32 noundef 173)
  store <2 x double> %call10, ptr %r, align 16, !tbaa !16
  br label %do.body11

do.body11:                                        ; preds = %do.end
  %7 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call12 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 1, i32 4))
  %call13 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call14 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %7, <2 x double> noundef %call12, double noundef %call13, ptr noundef @.str.27, i32 noundef 2041, ptr noundef @.str.28, ptr noundef @.str.55)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body11
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %do.body11
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  %call20 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 2))
  store <2 x double> %call20, ptr %a, align 16, !tbaa !16
  %call21 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 2, i32 1))
  store <2 x double> %call21, ptr %b, align 16, !tbaa !16
  %call22 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <2 x i64> %call22, ptr %c, align 16, !tbaa !16
  %8 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %9 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %10 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call23 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %8, <2 x double> noundef %9, <2 x i64> noundef %10, i32 noundef 217)
  store <2 x double> %call23, ptr %r, align 16, !tbaa !16
  br label %do.body24

do.body24:                                        ; preds = %do.end19
  %11 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call25 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 2, i32 4))
  %call26 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call27 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %11, <2 x double> noundef %call25, double noundef %call26, ptr noundef @.str.27, i32 noundef 2047, ptr noundef @.str.28, ptr noundef @.str.56)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.body24
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  %call33 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 3))
  store <2 x double> %call33, ptr %a, align 16, !tbaa !16
  %call34 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 3, i32 1))
  store <2 x double> %call34, ptr %b, align 16, !tbaa !16
  %call35 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <2 x i64> %call35, ptr %c, align 16, !tbaa !16
  %12 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %13 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %14 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call36 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %12, <2 x double> noundef %13, <2 x i64> noundef %14, i32 noundef 249)
  store <2 x double> %call36, ptr %r, align 16, !tbaa !16
  br label %do.body37

do.body37:                                        ; preds = %do.end32
  %15 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call38 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 3, i32 4))
  %call39 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call40 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %15, <2 x double> noundef %call38, double noundef %call39, ptr noundef @.str.27, i32 noundef 2053, ptr noundef @.str.28, ptr noundef @.str.57)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body37
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %do.body37
  br label %do.cond44

do.cond44:                                        ; preds = %if.end43
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  %call46 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 4))
  store <2 x double> %call46, ptr %a, align 16, !tbaa !16
  %call47 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 4, i32 1))
  store <2 x double> %call47, ptr %b, align 16, !tbaa !16
  %call48 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <2 x i64> %call48, ptr %c, align 16, !tbaa !16
  %16 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %17 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call49 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %16, <2 x double> noundef %17, <2 x i64> noundef %18, i32 noundef 148)
  store <2 x double> %call49, ptr %r, align 16, !tbaa !16
  br label %do.body50

do.body50:                                        ; preds = %do.end45
  %19 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call51 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 4, i32 4))
  %call52 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call53 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %19, <2 x double> noundef %call51, double noundef %call52, ptr noundef @.str.27, i32 noundef 2059, ptr noundef @.str.28, ptr noundef @.str.58)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body50
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %do.body50
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %call59 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 5))
  store <2 x double> %call59, ptr %a, align 16, !tbaa !16
  %call60 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 5, i32 1))
  store <2 x double> %call60, ptr %b, align 16, !tbaa !16
  %call61 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <2 x i64> %call61, ptr %c, align 16, !tbaa !16
  %20 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %21 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %22 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call62 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %20, <2 x double> noundef %21, <2 x i64> noundef %22, i32 noundef 136)
  store <2 x double> %call62, ptr %r, align 16, !tbaa !16
  br label %do.body63

do.body63:                                        ; preds = %do.end58
  %23 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call64 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 5, i32 4))
  %call65 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call66 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %23, <2 x double> noundef %call64, double noundef %call65, ptr noundef @.str.27, i32 noundef 2065, ptr noundef @.str.28, ptr noundef @.str.59)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.body63
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %do.body63
  br label %do.cond70

do.cond70:                                        ; preds = %if.end69
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  %call72 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 6))
  store <2 x double> %call72, ptr %a, align 16, !tbaa !16
  %call73 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 6, i32 1))
  store <2 x double> %call73, ptr %b, align 16, !tbaa !16
  %call74 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <2 x i64> %call74, ptr %c, align 16, !tbaa !16
  %24 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %25 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %26 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call75 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %24, <2 x double> noundef %25, <2 x i64> noundef %26, i32 noundef 76)
  store <2 x double> %call75, ptr %r, align 16, !tbaa !16
  br label %do.body76

do.body76:                                        ; preds = %do.end71
  %27 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call77 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 6, i32 4))
  %call78 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call79 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %27, <2 x double> noundef %call77, double noundef %call78, ptr noundef @.str.27, i32 noundef 2071, ptr noundef @.str.28, ptr noundef @.str.60)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %do.body76
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end82:                                         ; preds = %do.body76
  br label %do.cond83

do.cond83:                                        ; preds = %if.end82
  br label %do.end84

do.end84:                                         ; preds = %do.cond83
  %call85 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 7))
  store <2 x double> %call85, ptr %a, align 16, !tbaa !16
  %call86 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 7, i32 1))
  store <2 x double> %call86, ptr %b, align 16, !tbaa !16
  %call87 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <2 x i64> %call87, ptr %c, align 16, !tbaa !16
  %28 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %29 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %30 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call88 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %28, <2 x double> noundef %29, <2 x i64> noundef %30, i32 noundef 119)
  store <2 x double> %call88, ptr %r, align 16, !tbaa !16
  br label %do.body89

do.body89:                                        ; preds = %do.end84
  %31 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call90 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.12], ptr @test_simde_mm_fixupimm_pd.test_vec, i64 0, i64 7, i32 4))
  %call91 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call92 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %31, <2 x double> noundef %call90, double noundef %call91, ptr noundef @.str.27, i32 noundef 2078, ptr noundef @.str.28, ptr noundef @.str.61)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body89
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %do.body89
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.then94, %if.then81, %if.then68, %if.then55, %if.then42, %if.then29, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_fixupimm_pd() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %b = alloca <2 x double>, align 16
  %r = alloca <2 x double>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <2 x double> @simde_mm_loadu_pd(ptr noundef @test_simde_mm_mask_fixupimm_pd.test_vec)
  store <2 x double> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.13, ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i32 0, i32 2))
  store <2 x double> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.13, ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i32 0, i32 3))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %1 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %2 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %3 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %1, <2 x double> noundef %2, <2 x i64> noundef %3, i32 noundef 204)
  %call4 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %0, i8 noundef zeroext 33, <2 x double> noundef %call3)
  store <2 x double> %call4, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call5 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.13, ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i32 0, i32 5))
  %call6 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call7 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %4, <2 x double> noundef %call5, double noundef %call6, ptr noundef @.str.27, i32 noundef 2173, ptr noundef @.str.28, ptr noundef @.str.54)
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
  %call8 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 1))
  store <2 x double> %call8, ptr %a, align 16, !tbaa !16
  %call9 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <2 x double> %call9, ptr %b, align 16, !tbaa !16
  %call10 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 3))
  store <2 x i64> %call10, ptr %c, align 16, !tbaa !16
  %5 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %6 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %8 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call11 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %6, <2 x double> noundef %7, <2 x i64> noundef %8, i32 noundef 174)
  %call12 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %5, i8 noundef zeroext -81, <2 x double> noundef %call11)
  store <2 x double> %call12, ptr %r, align 16, !tbaa !16
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %9 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call14 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 5))
  %call15 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call16 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %9, <2 x double> noundef %call14, double noundef %call15, ptr noundef @.str.27, i32 noundef 2180, ptr noundef @.str.28, ptr noundef @.str.55)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %call22 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 2))
  store <2 x double> %call22, ptr %a, align 16, !tbaa !16
  %call23 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <2 x double> %call23, ptr %b, align 16, !tbaa !16
  %call24 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 3))
  store <2 x i64> %call24, ptr %c, align 16, !tbaa !16
  %10 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %11 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %12 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %13 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call25 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %11, <2 x double> noundef %12, <2 x i64> noundef %13, i32 noundef 206)
  %call26 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %10, i8 noundef zeroext -69, <2 x double> noundef %call25)
  store <2 x double> %call26, ptr %r, align 16, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end21
  %14 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call28 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 5))
  %call29 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call30 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %14, <2 x double> noundef %call28, double noundef %call29, ptr noundef @.str.27, i32 noundef 2187, ptr noundef @.str.28, ptr noundef @.str.56)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 3))
  store <2 x double> %call36, ptr %a, align 16, !tbaa !16
  %call37 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <2 x double> %call37, ptr %b, align 16, !tbaa !16
  %call38 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 3))
  store <2 x i64> %call38, ptr %c, align 16, !tbaa !16
  %15 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %16 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %17 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call39 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %16, <2 x double> noundef %17, <2 x i64> noundef %18, i32 noundef 139)
  %call40 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %15, i8 noundef zeroext -6, <2 x double> noundef %call39)
  store <2 x double> %call40, ptr %r, align 16, !tbaa !16
  br label %do.body41

do.body41:                                        ; preds = %do.end35
  %19 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call42 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 5))
  %call43 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call44 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %19, <2 x double> noundef %call42, double noundef %call43, ptr noundef @.str.27, i32 noundef 2193, ptr noundef @.str.28, ptr noundef @.str.57)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %call50 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 4))
  store <2 x double> %call50, ptr %a, align 16, !tbaa !16
  %call51 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <2 x double> %call51, ptr %b, align 16, !tbaa !16
  %call52 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 3))
  store <2 x i64> %call52, ptr %c, align 16, !tbaa !16
  %20 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %21 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %22 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %23 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call53 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %21, <2 x double> noundef %22, <2 x i64> noundef %23, i32 noundef 226)
  %call54 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %20, i8 noundef zeroext -82, <2 x double> noundef %call53)
  store <2 x double> %call54, ptr %r, align 16, !tbaa !16
  br label %do.body55

do.body55:                                        ; preds = %do.end49
  %24 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call56 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 5))
  %call57 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call58 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %24, <2 x double> noundef %call56, double noundef %call57, ptr noundef @.str.27, i32 noundef 2199, ptr noundef @.str.28, ptr noundef @.str.58)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %do.body55
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %call64 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 5))
  store <2 x double> %call64, ptr %a, align 16, !tbaa !16
  %call65 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <2 x double> %call65, ptr %b, align 16, !tbaa !16
  %call66 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 3))
  store <2 x i64> %call66, ptr %c, align 16, !tbaa !16
  %25 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %26 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %27 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %28 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call67 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %26, <2 x double> noundef %27, <2 x i64> noundef %28, i32 noundef 117)
  %call68 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %25, i8 noundef zeroext 33, <2 x double> noundef %call67)
  store <2 x double> %call68, ptr %r, align 16, !tbaa !16
  br label %do.body69

do.body69:                                        ; preds = %do.end63
  %29 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call70 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 5))
  %call71 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call72 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %29, <2 x double> noundef %call70, double noundef %call71, ptr noundef @.str.27, i32 noundef 2205, ptr noundef @.str.28, ptr noundef @.str.59)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body69
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.body69
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 6))
  store <2 x double> %call78, ptr %a, align 16, !tbaa !16
  %call79 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <2 x double> %call79, ptr %b, align 16, !tbaa !16
  %call80 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 3))
  store <2 x i64> %call80, ptr %c, align 16, !tbaa !16
  %30 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %31 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %32 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %33 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call81 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %31, <2 x double> noundef %32, <2 x i64> noundef %33, i32 noundef 139)
  %call82 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %30, i8 noundef zeroext -49, <2 x double> noundef %call81)
  store <2 x double> %call82, ptr %r, align 16, !tbaa !16
  br label %do.body83

do.body83:                                        ; preds = %do.end77
  %34 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call84 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 5))
  %call85 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call86 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %34, <2 x double> noundef %call84, double noundef %call85, ptr noundef @.str.27, i32 noundef 2212, ptr noundef @.str.28, ptr noundef @.str.60)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %call92 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 7))
  store <2 x double> %call92, ptr %a, align 16, !tbaa !16
  %call93 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <2 x double> %call93, ptr %b, align 16, !tbaa !16
  %call94 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 3))
  store <2 x i64> %call94, ptr %c, align 16, !tbaa !16
  %35 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %36 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %37 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %38 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call95 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %36, <2 x double> noundef %37, <2 x i64> noundef %38, i32 noundef 212)
  %call96 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %35, i8 noundef zeroext 85, <2 x double> noundef %call95)
  store <2 x double> %call96, ptr %r, align 16, !tbaa !16
  br label %do.body97

do.body97:                                        ; preds = %do.end91
  %39 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call98 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.13], ptr @test_simde_mm_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 5))
  %call99 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call100 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %39, <2 x double> noundef %call98, double noundef %call99, ptr noundef @.str.27, i32 noundef 2219, ptr noundef @.str.28, ptr noundef @.str.61)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then102, %if.then88, %if.then74, %if.then60, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_maskz_fixupimm_pd() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %b = alloca <2 x double>, align 16
  %r = alloca <2 x double>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.14, ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i32 0, i32 1))
  store <2 x double> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.14, ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i32 0, i32 2))
  store <2 x double> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.14, ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i32 0, i32 3))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %1 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %0, <2 x double> noundef %1, <2 x i64> noundef %2, i32 noundef 11)
  %call4 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 0, <2 x double> noundef %call3)
  store <2 x double> %call4, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call5 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.14, ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i32 0, i32 5))
  %call6 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call7 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %3, <2 x double> noundef %call5, double noundef %call6, ptr noundef @.str.27, i32 noundef 2315, ptr noundef @.str.28, ptr noundef @.str.54)
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
  %call8 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 1))
  store <2 x double> %call8, ptr %a, align 16, !tbaa !16
  %call9 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <2 x double> %call9, ptr %b, align 16, !tbaa !16
  %call10 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 3))
  store <2 x i64> %call10, ptr %c, align 16, !tbaa !16
  %4 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %5 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call11 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %4, <2 x double> noundef %5, <2 x i64> noundef %6, i32 noundef 243)
  %call12 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext -91, <2 x double> noundef %call11)
  store <2 x double> %call12, ptr %r, align 16, !tbaa !16
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %7 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call14 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 5))
  %call15 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call16 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %7, <2 x double> noundef %call14, double noundef %call15, ptr noundef @.str.27, i32 noundef 2322, ptr noundef @.str.28, ptr noundef @.str.55)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %call22 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 1))
  store <2 x double> %call22, ptr %a, align 16, !tbaa !16
  %call23 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <2 x double> %call23, ptr %b, align 16, !tbaa !16
  %call24 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 3))
  store <2 x i64> %call24, ptr %c, align 16, !tbaa !16
  %8 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %9 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %10 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call25 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %8, <2 x double> noundef %9, <2 x i64> noundef %10, i32 noundef 115)
  %call26 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 48, <2 x double> noundef %call25)
  store <2 x double> %call26, ptr %r, align 16, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end21
  %11 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call28 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 5))
  %call29 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call30 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %11, <2 x double> noundef %call28, double noundef %call29, ptr noundef @.str.27, i32 noundef 2329, ptr noundef @.str.28, ptr noundef @.str.56)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 1))
  store <2 x double> %call36, ptr %a, align 16, !tbaa !16
  %call37 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <2 x double> %call37, ptr %b, align 16, !tbaa !16
  %call38 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 3))
  store <2 x i64> %call38, ptr %c, align 16, !tbaa !16
  %12 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %13 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %14 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call39 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %12, <2 x double> noundef %13, <2 x i64> noundef %14, i32 noundef 49)
  %call40 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 4, <2 x double> noundef %call39)
  store <2 x double> %call40, ptr %r, align 16, !tbaa !16
  br label %do.body41

do.body41:                                        ; preds = %do.end35
  %15 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call42 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 5))
  %call43 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call44 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %15, <2 x double> noundef %call42, double noundef %call43, ptr noundef @.str.27, i32 noundef 2335, ptr noundef @.str.28, ptr noundef @.str.57)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %call50 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 1))
  store <2 x double> %call50, ptr %a, align 16, !tbaa !16
  %call51 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <2 x double> %call51, ptr %b, align 16, !tbaa !16
  %call52 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 3))
  store <2 x i64> %call52, ptr %c, align 16, !tbaa !16
  %16 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %17 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call53 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %16, <2 x double> noundef %17, <2 x i64> noundef %18, i32 noundef 22)
  %call54 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 25, <2 x double> noundef %call53)
  store <2 x double> %call54, ptr %r, align 16, !tbaa !16
  br label %do.body55

do.body55:                                        ; preds = %do.end49
  %19 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call56 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 5))
  %call57 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call58 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %19, <2 x double> noundef %call56, double noundef %call57, ptr noundef @.str.27, i32 noundef 2342, ptr noundef @.str.28, ptr noundef @.str.58)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %do.body55
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %call64 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 1))
  store <2 x double> %call64, ptr %a, align 16, !tbaa !16
  %call65 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <2 x double> %call65, ptr %b, align 16, !tbaa !16
  %call66 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 3))
  store <2 x i64> %call66, ptr %c, align 16, !tbaa !16
  %20 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %21 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %22 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call67 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %20, <2 x double> noundef %21, <2 x i64> noundef %22, i32 noundef 171)
  %call68 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 73, <2 x double> noundef %call67)
  store <2 x double> %call68, ptr %r, align 16, !tbaa !16
  br label %do.body69

do.body69:                                        ; preds = %do.end63
  %23 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call70 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 5))
  %call71 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call72 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %23, <2 x double> noundef %call70, double noundef %call71, ptr noundef @.str.27, i32 noundef 2349, ptr noundef @.str.28, ptr noundef @.str.59)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body69
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.body69
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 1))
  store <2 x double> %call78, ptr %a, align 16, !tbaa !16
  %call79 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <2 x double> %call79, ptr %b, align 16, !tbaa !16
  %call80 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 3))
  store <2 x i64> %call80, ptr %c, align 16, !tbaa !16
  %24 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %25 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %26 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call81 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %24, <2 x double> noundef %25, <2 x i64> noundef %26, i32 noundef 180)
  %call82 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 104, <2 x double> noundef %call81)
  store <2 x double> %call82, ptr %r, align 16, !tbaa !16
  br label %do.body83

do.body83:                                        ; preds = %do.end77
  %27 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call84 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 5))
  %call85 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call86 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %27, <2 x double> noundef %call84, double noundef %call85, ptr noundef @.str.27, i32 noundef 2355, ptr noundef @.str.28, ptr noundef @.str.60)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %call92 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 1))
  store <2 x double> %call92, ptr %a, align 16, !tbaa !16
  %call93 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <2 x double> %call93, ptr %b, align 16, !tbaa !16
  %call94 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 3))
  store <2 x i64> %call94, ptr %c, align 16, !tbaa !16
  %28 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %29 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %30 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call95 = call <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %28, <2 x double> noundef %29, <2 x i64> noundef %30, i32 noundef 82)
  %call96 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 113, <2 x double> noundef %call95)
  store <2 x double> %call96, ptr %r, align 16, !tbaa !16
  br label %do.body97

do.body97:                                        ; preds = %do.end91
  %31 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call98 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.14], ptr @test_simde_mm_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 5))
  %call99 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call100 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %31, <2 x double> noundef %call98, double noundef %call99, ptr noundef @.str.27, i32 noundef 2361, ptr noundef @.str.28, ptr noundef @.str.61)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then102, %if.then88, %if.then74, %if.then60, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_fixupimm_pd() #4 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x double>, align 32
  %b = alloca <4 x double>, align 32
  %r = alloca <4 x double>, align 32
  %c = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x double>, align 32
  %indirect-arg-temp3 = alloca <4 x double>, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x double>, align 32
  %indirect-arg-temp9 = alloca <4 x double>, align 32
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp14 = alloca <4 x double>, align 32
  %indirect-arg-temp15 = alloca <4 x double>, align 32
  %indirect-arg-temp16 = alloca <4 x i64>, align 32
  %indirect-arg-temp21 = alloca <4 x double>, align 32
  %indirect-arg-temp22 = alloca <4 x double>, align 32
  %indirect-arg-temp32 = alloca <4 x double>, align 32
  %indirect-arg-temp33 = alloca <4 x double>, align 32
  %indirect-arg-temp34 = alloca <4 x i64>, align 32
  %indirect-arg-temp39 = alloca <4 x double>, align 32
  %indirect-arg-temp40 = alloca <4 x double>, align 32
  %indirect-arg-temp50 = alloca <4 x double>, align 32
  %indirect-arg-temp51 = alloca <4 x double>, align 32
  %indirect-arg-temp52 = alloca <4 x i64>, align 32
  %indirect-arg-temp57 = alloca <4 x double>, align 32
  %indirect-arg-temp58 = alloca <4 x double>, align 32
  %indirect-arg-temp68 = alloca <4 x double>, align 32
  %indirect-arg-temp69 = alloca <4 x double>, align 32
  %indirect-arg-temp70 = alloca <4 x i64>, align 32
  %indirect-arg-temp75 = alloca <4 x double>, align 32
  %indirect-arg-temp76 = alloca <4 x double>, align 32
  %indirect-arg-temp86 = alloca <4 x double>, align 32
  %indirect-arg-temp87 = alloca <4 x double>, align 32
  %indirect-arg-temp88 = alloca <4 x i64>, align 32
  %indirect-arg-temp93 = alloca <4 x double>, align 32
  %indirect-arg-temp94 = alloca <4 x double>, align 32
  %indirect-arg-temp104 = alloca <4 x double>, align 32
  %indirect-arg-temp105 = alloca <4 x double>, align 32
  %indirect-arg-temp106 = alloca <4 x i64>, align 32
  %indirect-arg-temp111 = alloca <4 x double>, align 32
  %indirect-arg-temp112 = alloca <4 x double>, align 32
  %indirect-arg-temp122 = alloca <4 x double>, align 32
  %indirect-arg-temp123 = alloca <4 x double>, align 32
  %indirect-arg-temp124 = alloca <4 x i64>, align 32
  %indirect-arg-temp129 = alloca <4 x double>, align 32
  %indirect-arg-temp130 = alloca <4 x double>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #16
  %call = call <4 x double> @simde_mm256_loadu_pd(ptr noundef @test_simde_mm256_fixupimm_pd.test_vec)
  store <4 x double> %call, ptr %a, align 32, !tbaa !16
  %call1 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.15, ptr @test_simde_mm256_fixupimm_pd.test_vec, i32 0, i32 1))
  store <4 x double> %call1, ptr %b, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.15, ptr @test_simde_mm256_fixupimm_pd.test_vec, i32 0, i32 2))
  store <4 x i64> %call2, ptr %c, align 32, !tbaa !16
  %0 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %1 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %0, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x double> %1, ptr %indirect-arg-temp3, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp4, align 32, !tbaa !16
  %call5 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4, i32 noundef 5)
  store <4 x double> %call5, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call6 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.15, ptr @test_simde_mm256_fixupimm_pd.test_vec, i32 0, i32 4))
  %call7 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %3, ptr %indirect-arg-temp8, align 32, !tbaa !16
  store <4 x double> %call6, ptr %indirect-arg-temp9, align 32, !tbaa !16
  %call10 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp8, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp9, double noundef %call7, ptr noundef @.str.27, i32 noundef 2448, ptr noundef @.str.28, ptr noundef @.str.62)
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
  %call11 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 1))
  store <4 x double> %call11, ptr %a, align 32, !tbaa !16
  %call12 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 1, i32 1))
  store <4 x double> %call12, ptr %b, align 32, !tbaa !16
  %call13 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <4 x i64> %call13, ptr %c, align 32, !tbaa !16
  %4 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %5 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %6 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %4, ptr %indirect-arg-temp14, align 32, !tbaa !16
  store <4 x double> %5, ptr %indirect-arg-temp15, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp16, align 32, !tbaa !16
  %call17 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp14, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp15, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp16, i32 noundef 239)
  store <4 x double> %call17, ptr %r, align 32, !tbaa !16
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %7 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call19 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 1, i32 4))
  %call20 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %7, ptr %indirect-arg-temp21, align 32, !tbaa !16
  store <4 x double> %call19, ptr %indirect-arg-temp22, align 32, !tbaa !16
  %call23 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp21, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp22, double noundef %call20, ptr noundef @.str.27, i32 noundef 2455, ptr noundef @.str.28, ptr noundef @.str.63)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %do.body18
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  %call29 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 2))
  store <4 x double> %call29, ptr %a, align 32, !tbaa !16
  %call30 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 2, i32 1))
  store <4 x double> %call30, ptr %b, align 32, !tbaa !16
  %call31 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <4 x i64> %call31, ptr %c, align 32, !tbaa !16
  %8 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %9 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %10 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %8, ptr %indirect-arg-temp32, align 32, !tbaa !16
  store <4 x double> %9, ptr %indirect-arg-temp33, align 32, !tbaa !16
  store <4 x i64> %10, ptr %indirect-arg-temp34, align 32, !tbaa !16
  %call35 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp32, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp33, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp34, i32 noundef 103)
  store <4 x double> %call35, ptr %r, align 32, !tbaa !16
  br label %do.body36

do.body36:                                        ; preds = %do.end28
  %11 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call37 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 2, i32 4))
  %call38 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %11, ptr %indirect-arg-temp39, align 32, !tbaa !16
  store <4 x double> %call37, ptr %indirect-arg-temp40, align 32, !tbaa !16
  %call41 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp39, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp40, double noundef %call38, ptr noundef @.str.27, i32 noundef 2462, ptr noundef @.str.28, ptr noundef @.str.64)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body36
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %do.body36
  br label %do.cond45

do.cond45:                                        ; preds = %if.end44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  %call47 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 3))
  store <4 x double> %call47, ptr %a, align 32, !tbaa !16
  %call48 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 3, i32 1))
  store <4 x double> %call48, ptr %b, align 32, !tbaa !16
  %call49 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <4 x i64> %call49, ptr %c, align 32, !tbaa !16
  %12 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %13 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %14 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %12, ptr %indirect-arg-temp50, align 32, !tbaa !16
  store <4 x double> %13, ptr %indirect-arg-temp51, align 32, !tbaa !16
  store <4 x i64> %14, ptr %indirect-arg-temp52, align 32, !tbaa !16
  %call53 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp50, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp51, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp52, i32 noundef 238)
  store <4 x double> %call53, ptr %r, align 32, !tbaa !16
  br label %do.body54

do.body54:                                        ; preds = %do.end46
  %15 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call55 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 3, i32 4))
  %call56 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %15, ptr %indirect-arg-temp57, align 32, !tbaa !16
  store <4 x double> %call55, ptr %indirect-arg-temp58, align 32, !tbaa !16
  %call59 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp57, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp58, double noundef %call56, ptr noundef @.str.27, i32 noundef 2468, ptr noundef @.str.28, ptr noundef @.str.65)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body54
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %do.body54
  br label %do.cond63

do.cond63:                                        ; preds = %if.end62
  br label %do.end64

do.end64:                                         ; preds = %do.cond63
  %call65 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 4))
  store <4 x double> %call65, ptr %a, align 32, !tbaa !16
  %call66 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 4, i32 1))
  store <4 x double> %call66, ptr %b, align 32, !tbaa !16
  %call67 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <4 x i64> %call67, ptr %c, align 32, !tbaa !16
  %16 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %17 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %18 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %16, ptr %indirect-arg-temp68, align 32, !tbaa !16
  store <4 x double> %17, ptr %indirect-arg-temp69, align 32, !tbaa !16
  store <4 x i64> %18, ptr %indirect-arg-temp70, align 32, !tbaa !16
  %call71 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp68, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp69, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp70, i32 noundef 115)
  store <4 x double> %call71, ptr %r, align 32, !tbaa !16
  br label %do.body72

do.body72:                                        ; preds = %do.end64
  %19 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call73 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 4, i32 4))
  %call74 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %19, ptr %indirect-arg-temp75, align 32, !tbaa !16
  store <4 x double> %call73, ptr %indirect-arg-temp76, align 32, !tbaa !16
  %call77 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp75, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp76, double noundef %call74, ptr noundef @.str.27, i32 noundef 2475, ptr noundef @.str.28, ptr noundef @.str.66)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body72
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end80:                                         ; preds = %do.body72
  br label %do.cond81

do.cond81:                                        ; preds = %if.end80
  br label %do.end82

do.end82:                                         ; preds = %do.cond81
  %call83 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 5))
  store <4 x double> %call83, ptr %a, align 32, !tbaa !16
  %call84 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 5, i32 1))
  store <4 x double> %call84, ptr %b, align 32, !tbaa !16
  %call85 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <4 x i64> %call85, ptr %c, align 32, !tbaa !16
  %20 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %21 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %22 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %20, ptr %indirect-arg-temp86, align 32, !tbaa !16
  store <4 x double> %21, ptr %indirect-arg-temp87, align 32, !tbaa !16
  store <4 x i64> %22, ptr %indirect-arg-temp88, align 32, !tbaa !16
  %call89 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp86, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp87, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp88, i32 noundef 189)
  store <4 x double> %call89, ptr %r, align 32, !tbaa !16
  br label %do.body90

do.body90:                                        ; preds = %do.end82
  %23 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call91 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 5, i32 4))
  %call92 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %23, ptr %indirect-arg-temp93, align 32, !tbaa !16
  store <4 x double> %call91, ptr %indirect-arg-temp94, align 32, !tbaa !16
  %call95 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp93, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp94, double noundef %call92, ptr noundef @.str.27, i32 noundef 2482, ptr noundef @.str.28, ptr noundef @.str.67)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.body90
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end98:                                         ; preds = %do.body90
  br label %do.cond99

do.cond99:                                        ; preds = %if.end98
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  %call101 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 6))
  store <4 x double> %call101, ptr %a, align 32, !tbaa !16
  %call102 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 6, i32 1))
  store <4 x double> %call102, ptr %b, align 32, !tbaa !16
  %call103 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <4 x i64> %call103, ptr %c, align 32, !tbaa !16
  %24 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %25 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %26 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %24, ptr %indirect-arg-temp104, align 32, !tbaa !16
  store <4 x double> %25, ptr %indirect-arg-temp105, align 32, !tbaa !16
  store <4 x i64> %26, ptr %indirect-arg-temp106, align 32, !tbaa !16
  %call107 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp104, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp105, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp106, i32 noundef 29)
  store <4 x double> %call107, ptr %r, align 32, !tbaa !16
  br label %do.body108

do.body108:                                       ; preds = %do.end100
  %27 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call109 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 6, i32 4))
  %call110 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %27, ptr %indirect-arg-temp111, align 32, !tbaa !16
  store <4 x double> %call109, ptr %indirect-arg-temp112, align 32, !tbaa !16
  %call113 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp111, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp112, double noundef %call110, ptr noundef @.str.27, i32 noundef 2489, ptr noundef @.str.28, ptr noundef @.str.68)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body108
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %do.body108
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %call119 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 7))
  store <4 x double> %call119, ptr %a, align 32, !tbaa !16
  %call120 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 7, i32 1))
  store <4 x double> %call120, ptr %b, align 32, !tbaa !16
  %call121 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <4 x i64> %call121, ptr %c, align 32, !tbaa !16
  %28 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %29 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %30 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %28, ptr %indirect-arg-temp122, align 32, !tbaa !16
  store <4 x double> %29, ptr %indirect-arg-temp123, align 32, !tbaa !16
  store <4 x i64> %30, ptr %indirect-arg-temp124, align 32, !tbaa !16
  %call125 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp122, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp123, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp124, i32 noundef 118)
  store <4 x double> %call125, ptr %r, align 32, !tbaa !16
  br label %do.body126

do.body126:                                       ; preds = %do.end118
  %31 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call127 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.15], ptr @test_simde_mm256_fixupimm_pd.test_vec, i64 0, i64 7, i32 4))
  %call128 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %31, ptr %indirect-arg-temp129, align 32, !tbaa !16
  store <4 x double> %call127, ptr %indirect-arg-temp130, align 32, !tbaa !16
  %call131 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp129, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp130, double noundef %call128, ptr noundef @.str.27, i32 noundef 2495, ptr noundef @.str.28, ptr noundef @.str.69)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %do.body126
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end134:                                        ; preds = %do.body126
  br label %do.cond135

do.cond135:                                       ; preds = %if.end134
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %if.then133, %if.then115, %if.then97, %if.then79, %if.then61, %if.then43, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_fixupimm_pd() #4 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x double>, align 32
  %b = alloca <4 x double>, align 32
  %r = alloca <4 x double>, align 32
  %c = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x double>, align 32
  %indirect-arg-temp3 = alloca <4 x double>, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x double>, align 32
  %indirect-arg-temp7 = alloca <4 x double>, align 32
  %indirect-arg-temp11 = alloca <4 x double>, align 32
  %indirect-arg-temp12 = alloca <4 x double>, align 32
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp17 = alloca <4 x double>, align 32
  %indirect-arg-temp18 = alloca <4 x double>, align 32
  %indirect-arg-temp19 = alloca <4 x i64>, align 32
  %indirect-arg-temp21 = alloca <4 x double>, align 32
  %indirect-arg-temp22 = alloca <4 x double>, align 32
  %indirect-arg-temp27 = alloca <4 x double>, align 32
  %indirect-arg-temp28 = alloca <4 x double>, align 32
  %indirect-arg-temp38 = alloca <4 x double>, align 32
  %indirect-arg-temp39 = alloca <4 x double>, align 32
  %indirect-arg-temp40 = alloca <4 x i64>, align 32
  %indirect-arg-temp42 = alloca <4 x double>, align 32
  %indirect-arg-temp43 = alloca <4 x double>, align 32
  %indirect-arg-temp48 = alloca <4 x double>, align 32
  %indirect-arg-temp49 = alloca <4 x double>, align 32
  %indirect-arg-temp59 = alloca <4 x double>, align 32
  %indirect-arg-temp60 = alloca <4 x double>, align 32
  %indirect-arg-temp61 = alloca <4 x i64>, align 32
  %indirect-arg-temp63 = alloca <4 x double>, align 32
  %indirect-arg-temp64 = alloca <4 x double>, align 32
  %indirect-arg-temp69 = alloca <4 x double>, align 32
  %indirect-arg-temp70 = alloca <4 x double>, align 32
  %indirect-arg-temp80 = alloca <4 x double>, align 32
  %indirect-arg-temp81 = alloca <4 x double>, align 32
  %indirect-arg-temp82 = alloca <4 x i64>, align 32
  %indirect-arg-temp84 = alloca <4 x double>, align 32
  %indirect-arg-temp85 = alloca <4 x double>, align 32
  %indirect-arg-temp90 = alloca <4 x double>, align 32
  %indirect-arg-temp91 = alloca <4 x double>, align 32
  %indirect-arg-temp101 = alloca <4 x double>, align 32
  %indirect-arg-temp102 = alloca <4 x double>, align 32
  %indirect-arg-temp103 = alloca <4 x i64>, align 32
  %indirect-arg-temp105 = alloca <4 x double>, align 32
  %indirect-arg-temp106 = alloca <4 x double>, align 32
  %indirect-arg-temp111 = alloca <4 x double>, align 32
  %indirect-arg-temp112 = alloca <4 x double>, align 32
  %indirect-arg-temp122 = alloca <4 x double>, align 32
  %indirect-arg-temp123 = alloca <4 x double>, align 32
  %indirect-arg-temp124 = alloca <4 x i64>, align 32
  %indirect-arg-temp126 = alloca <4 x double>, align 32
  %indirect-arg-temp127 = alloca <4 x double>, align 32
  %indirect-arg-temp132 = alloca <4 x double>, align 32
  %indirect-arg-temp133 = alloca <4 x double>, align 32
  %indirect-arg-temp143 = alloca <4 x double>, align 32
  %indirect-arg-temp144 = alloca <4 x double>, align 32
  %indirect-arg-temp145 = alloca <4 x i64>, align 32
  %indirect-arg-temp147 = alloca <4 x double>, align 32
  %indirect-arg-temp148 = alloca <4 x double>, align 32
  %indirect-arg-temp153 = alloca <4 x double>, align 32
  %indirect-arg-temp154 = alloca <4 x double>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #16
  %call = call <4 x double> @simde_mm256_loadu_pd(ptr noundef @test_simde_mm256_mask_fixupimm_pd.test_vec)
  store <4 x double> %call, ptr %a, align 32, !tbaa !16
  %call1 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.16, ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i32 0, i32 2))
  store <4 x double> %call1, ptr %b, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.16, ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i32 0, i32 3))
  store <4 x i64> %call2, ptr %c, align 32, !tbaa !16
  %0 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %1 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %2 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x double> %2, ptr %indirect-arg-temp3, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp4, align 32, !tbaa !16
  %call5 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4, i32 noundef 115)
  store <4 x double> %0, ptr %indirect-arg-temp6, align 32, !tbaa !16
  store <4 x double> %call5, ptr %indirect-arg-temp7, align 32, !tbaa !16
  %call8 = call <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp6, i8 noundef zeroext 51, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp7)
  store <4 x double> %call8, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call9 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.16, ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i32 0, i32 5))
  %call10 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %4, ptr %indirect-arg-temp11, align 32, !tbaa !16
  store <4 x double> %call9, ptr %indirect-arg-temp12, align 32, !tbaa !16
  %call13 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp11, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp12, double noundef %call10, ptr noundef @.str.27, i32 noundef 2590, ptr noundef @.str.28, ptr noundef @.str.62)
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
  %call14 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 1))
  store <4 x double> %call14, ptr %a, align 32, !tbaa !16
  %call15 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <4 x double> %call15, ptr %b, align 32, !tbaa !16
  %call16 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 3))
  store <4 x i64> %call16, ptr %c, align 32, !tbaa !16
  %5 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %6 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %8 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %6, ptr %indirect-arg-temp17, align 32, !tbaa !16
  store <4 x double> %7, ptr %indirect-arg-temp18, align 32, !tbaa !16
  store <4 x i64> %8, ptr %indirect-arg-temp19, align 32, !tbaa !16
  %call20 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp17, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp18, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp19, i32 noundef 43)
  store <4 x double> %5, ptr %indirect-arg-temp21, align 32, !tbaa !16
  store <4 x double> %call20, ptr %indirect-arg-temp22, align 32, !tbaa !16
  %call23 = call <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp21, i8 noundef zeroext -20, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp22)
  store <4 x double> %call23, ptr %r, align 32, !tbaa !16
  br label %do.body24

do.body24:                                        ; preds = %do.end
  %9 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call25 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 5))
  %call26 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %9, ptr %indirect-arg-temp27, align 32, !tbaa !16
  store <4 x double> %call25, ptr %indirect-arg-temp28, align 32, !tbaa !16
  %call29 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp27, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp28, double noundef %call26, ptr noundef @.str.27, i32 noundef 2597, ptr noundef @.str.28, ptr noundef @.str.63)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %do.body24
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  %call35 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 2))
  store <4 x double> %call35, ptr %a, align 32, !tbaa !16
  %call36 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <4 x double> %call36, ptr %b, align 32, !tbaa !16
  %call37 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 3))
  store <4 x i64> %call37, ptr %c, align 32, !tbaa !16
  %10 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %11 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %12 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %13 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %11, ptr %indirect-arg-temp38, align 32, !tbaa !16
  store <4 x double> %12, ptr %indirect-arg-temp39, align 32, !tbaa !16
  store <4 x i64> %13, ptr %indirect-arg-temp40, align 32, !tbaa !16
  %call41 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp38, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp39, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp40, i32 noundef 17)
  store <4 x double> %10, ptr %indirect-arg-temp42, align 32, !tbaa !16
  store <4 x double> %call41, ptr %indirect-arg-temp43, align 32, !tbaa !16
  %call44 = call <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp42, i8 noundef zeroext -42, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp43)
  store <4 x double> %call44, ptr %r, align 32, !tbaa !16
  br label %do.body45

do.body45:                                        ; preds = %do.end34
  %14 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call46 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 5))
  %call47 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %14, ptr %indirect-arg-temp48, align 32, !tbaa !16
  store <4 x double> %call46, ptr %indirect-arg-temp49, align 32, !tbaa !16
  %call50 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp48, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp49, double noundef %call47, ptr noundef @.str.27, i32 noundef 2603, ptr noundef @.str.28, ptr noundef @.str.64)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body45
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %do.body45
  br label %do.cond54

do.cond54:                                        ; preds = %if.end53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  %call56 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 3))
  store <4 x double> %call56, ptr %a, align 32, !tbaa !16
  %call57 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <4 x double> %call57, ptr %b, align 32, !tbaa !16
  %call58 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 3))
  store <4 x i64> %call58, ptr %c, align 32, !tbaa !16
  %15 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %16 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %17 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %18 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %16, ptr %indirect-arg-temp59, align 32, !tbaa !16
  store <4 x double> %17, ptr %indirect-arg-temp60, align 32, !tbaa !16
  store <4 x i64> %18, ptr %indirect-arg-temp61, align 32, !tbaa !16
  %call62 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp59, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp60, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp61, i32 noundef 95)
  store <4 x double> %15, ptr %indirect-arg-temp63, align 32, !tbaa !16
  store <4 x double> %call62, ptr %indirect-arg-temp64, align 32, !tbaa !16
  %call65 = call <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp63, i8 noundef zeroext 10, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp64)
  store <4 x double> %call65, ptr %r, align 32, !tbaa !16
  br label %do.body66

do.body66:                                        ; preds = %do.end55
  %19 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call67 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 5))
  %call68 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %19, ptr %indirect-arg-temp69, align 32, !tbaa !16
  store <4 x double> %call67, ptr %indirect-arg-temp70, align 32, !tbaa !16
  %call71 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp69, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp70, double noundef %call68, ptr noundef @.str.27, i32 noundef 2609, ptr noundef @.str.28, ptr noundef @.str.65)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body66
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %do.body66
  br label %do.cond75

do.cond75:                                        ; preds = %if.end74
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  %call77 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 4))
  store <4 x double> %call77, ptr %a, align 32, !tbaa !16
  %call78 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <4 x double> %call78, ptr %b, align 32, !tbaa !16
  %call79 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 3))
  store <4 x i64> %call79, ptr %c, align 32, !tbaa !16
  %20 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %21 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %22 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %23 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %21, ptr %indirect-arg-temp80, align 32, !tbaa !16
  store <4 x double> %22, ptr %indirect-arg-temp81, align 32, !tbaa !16
  store <4 x i64> %23, ptr %indirect-arg-temp82, align 32, !tbaa !16
  %call83 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp80, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp81, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp82, i32 noundef 148)
  store <4 x double> %20, ptr %indirect-arg-temp84, align 32, !tbaa !16
  store <4 x double> %call83, ptr %indirect-arg-temp85, align 32, !tbaa !16
  %call86 = call <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp84, i8 noundef zeroext 46, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp85)
  store <4 x double> %call86, ptr %r, align 32, !tbaa !16
  br label %do.body87

do.body87:                                        ; preds = %do.end76
  %24 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call88 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 5))
  %call89 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %24, ptr %indirect-arg-temp90, align 32, !tbaa !16
  store <4 x double> %call88, ptr %indirect-arg-temp91, align 32, !tbaa !16
  %call92 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp90, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp91, double noundef %call89, ptr noundef @.str.27, i32 noundef 2615, ptr noundef @.str.28, ptr noundef @.str.66)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body87
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %do.body87
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  %call98 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 5))
  store <4 x double> %call98, ptr %a, align 32, !tbaa !16
  %call99 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <4 x double> %call99, ptr %b, align 32, !tbaa !16
  %call100 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 3))
  store <4 x i64> %call100, ptr %c, align 32, !tbaa !16
  %25 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %26 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %27 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %28 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %26, ptr %indirect-arg-temp101, align 32, !tbaa !16
  store <4 x double> %27, ptr %indirect-arg-temp102, align 32, !tbaa !16
  store <4 x i64> %28, ptr %indirect-arg-temp103, align 32, !tbaa !16
  %call104 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp101, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp102, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp103, i32 noundef 37)
  store <4 x double> %25, ptr %indirect-arg-temp105, align 32, !tbaa !16
  store <4 x double> %call104, ptr %indirect-arg-temp106, align 32, !tbaa !16
  %call107 = call <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp105, i8 noundef zeroext -77, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp106)
  store <4 x double> %call107, ptr %r, align 32, !tbaa !16
  br label %do.body108

do.body108:                                       ; preds = %do.end97
  %29 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call109 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 5))
  %call110 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %29, ptr %indirect-arg-temp111, align 32, !tbaa !16
  store <4 x double> %call109, ptr %indirect-arg-temp112, align 32, !tbaa !16
  %call113 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp111, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp112, double noundef %call110, ptr noundef @.str.27, i32 noundef 2621, ptr noundef @.str.28, ptr noundef @.str.67)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body108
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %do.body108
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %call119 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 6))
  store <4 x double> %call119, ptr %a, align 32, !tbaa !16
  %call120 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <4 x double> %call120, ptr %b, align 32, !tbaa !16
  %call121 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 3))
  store <4 x i64> %call121, ptr %c, align 32, !tbaa !16
  %30 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %31 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %32 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %33 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %31, ptr %indirect-arg-temp122, align 32, !tbaa !16
  store <4 x double> %32, ptr %indirect-arg-temp123, align 32, !tbaa !16
  store <4 x i64> %33, ptr %indirect-arg-temp124, align 32, !tbaa !16
  %call125 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp122, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp123, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp124, i32 noundef 61)
  store <4 x double> %30, ptr %indirect-arg-temp126, align 32, !tbaa !16
  store <4 x double> %call125, ptr %indirect-arg-temp127, align 32, !tbaa !16
  %call128 = call <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp126, i8 noundef zeroext 35, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp127)
  store <4 x double> %call128, ptr %r, align 32, !tbaa !16
  br label %do.body129

do.body129:                                       ; preds = %do.end118
  %34 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call130 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 5))
  %call131 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %34, ptr %indirect-arg-temp132, align 32, !tbaa !16
  store <4 x double> %call130, ptr %indirect-arg-temp133, align 32, !tbaa !16
  %call134 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp132, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp133, double noundef %call131, ptr noundef @.str.27, i32 noundef 2627, ptr noundef @.str.28, ptr noundef @.str.68)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %do.body129
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end137:                                        ; preds = %do.body129
  br label %do.cond138

do.cond138:                                       ; preds = %if.end137
  br label %do.end139

do.end139:                                        ; preds = %do.cond138
  %call140 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 7))
  store <4 x double> %call140, ptr %a, align 32, !tbaa !16
  %call141 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <4 x double> %call141, ptr %b, align 32, !tbaa !16
  %call142 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 3))
  store <4 x i64> %call142, ptr %c, align 32, !tbaa !16
  %35 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %36 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %37 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %38 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %36, ptr %indirect-arg-temp143, align 32, !tbaa !16
  store <4 x double> %37, ptr %indirect-arg-temp144, align 32, !tbaa !16
  store <4 x i64> %38, ptr %indirect-arg-temp145, align 32, !tbaa !16
  %call146 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp143, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp144, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp145, i32 noundef 27)
  store <4 x double> %35, ptr %indirect-arg-temp147, align 32, !tbaa !16
  store <4 x double> %call146, ptr %indirect-arg-temp148, align 32, !tbaa !16
  %call149 = call <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp147, i8 noundef zeroext -91, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp148)
  store <4 x double> %call149, ptr %r, align 32, !tbaa !16
  br label %do.body150

do.body150:                                       ; preds = %do.end139
  %39 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call151 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.16], ptr @test_simde_mm256_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 5))
  %call152 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %39, ptr %indirect-arg-temp153, align 32, !tbaa !16
  store <4 x double> %call151, ptr %indirect-arg-temp154, align 32, !tbaa !16
  %call155 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp153, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp154, double noundef %call152, ptr noundef @.str.27, i32 noundef 2633, ptr noundef @.str.28, ptr noundef @.str.69)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %do.body150
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end158:                                        ; preds = %do.body150
  br label %do.cond159

do.cond159:                                       ; preds = %if.end158
  br label %do.end160

do.end160:                                        ; preds = %do.cond159
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %if.then157, %if.then136, %if.then115, %if.then94, %if.then73, %if.then52, %if.then31, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #16
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_maskz_fixupimm_pd() #4 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <4 x double>, align 32
  %b = alloca <4 x double>, align 32
  %r = alloca <4 x double>, align 32
  %c = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x double>, align 32
  %indirect-arg-temp3 = alloca <4 x double>, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x double>, align 32
  %indirect-arg-temp10 = alloca <4 x double>, align 32
  %indirect-arg-temp11 = alloca <4 x double>, align 32
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp16 = alloca <4 x double>, align 32
  %indirect-arg-temp17 = alloca <4 x double>, align 32
  %indirect-arg-temp18 = alloca <4 x i64>, align 32
  %indirect-arg-temp20 = alloca <4 x double>, align 32
  %indirect-arg-temp25 = alloca <4 x double>, align 32
  %indirect-arg-temp26 = alloca <4 x double>, align 32
  %indirect-arg-temp36 = alloca <4 x double>, align 32
  %indirect-arg-temp37 = alloca <4 x double>, align 32
  %indirect-arg-temp38 = alloca <4 x i64>, align 32
  %indirect-arg-temp40 = alloca <4 x double>, align 32
  %indirect-arg-temp45 = alloca <4 x double>, align 32
  %indirect-arg-temp46 = alloca <4 x double>, align 32
  %indirect-arg-temp56 = alloca <4 x double>, align 32
  %indirect-arg-temp57 = alloca <4 x double>, align 32
  %indirect-arg-temp58 = alloca <4 x i64>, align 32
  %indirect-arg-temp60 = alloca <4 x double>, align 32
  %indirect-arg-temp65 = alloca <4 x double>, align 32
  %indirect-arg-temp66 = alloca <4 x double>, align 32
  %indirect-arg-temp76 = alloca <4 x double>, align 32
  %indirect-arg-temp77 = alloca <4 x double>, align 32
  %indirect-arg-temp78 = alloca <4 x i64>, align 32
  %indirect-arg-temp80 = alloca <4 x double>, align 32
  %indirect-arg-temp85 = alloca <4 x double>, align 32
  %indirect-arg-temp86 = alloca <4 x double>, align 32
  %indirect-arg-temp96 = alloca <4 x double>, align 32
  %indirect-arg-temp97 = alloca <4 x double>, align 32
  %indirect-arg-temp98 = alloca <4 x i64>, align 32
  %indirect-arg-temp100 = alloca <4 x double>, align 32
  %indirect-arg-temp105 = alloca <4 x double>, align 32
  %indirect-arg-temp106 = alloca <4 x double>, align 32
  %indirect-arg-temp116 = alloca <4 x double>, align 32
  %indirect-arg-temp117 = alloca <4 x double>, align 32
  %indirect-arg-temp118 = alloca <4 x i64>, align 32
  %indirect-arg-temp120 = alloca <4 x double>, align 32
  %indirect-arg-temp125 = alloca <4 x double>, align 32
  %indirect-arg-temp126 = alloca <4 x double>, align 32
  %indirect-arg-temp136 = alloca <4 x double>, align 32
  %indirect-arg-temp137 = alloca <4 x double>, align 32
  %indirect-arg-temp138 = alloca <4 x i64>, align 32
  %indirect-arg-temp140 = alloca <4 x double>, align 32
  %indirect-arg-temp145 = alloca <4 x double>, align 32
  %indirect-arg-temp146 = alloca <4 x double>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %c) #16
  %call = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.17, ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i32 0, i32 1))
  store <4 x double> %call, ptr %a, align 32, !tbaa !16
  %call1 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.17, ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i32 0, i32 2))
  store <4 x double> %call1, ptr %b, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.17, ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i32 0, i32 3))
  store <4 x i64> %call2, ptr %c, align 32, !tbaa !16
  %0 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %1 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %0, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x double> %1, ptr %indirect-arg-temp3, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp4, align 32, !tbaa !16
  %call5 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4, i32 noundef 173)
  store <4 x double> %call5, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext -40, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp6)
  store <4 x double> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call8 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.17, ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i32 0, i32 5))
  %call9 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %3, ptr %indirect-arg-temp10, align 32, !tbaa !16
  store <4 x double> %call8, ptr %indirect-arg-temp11, align 32, !tbaa !16
  %call12 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp10, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp11, double noundef %call9, ptr noundef @.str.27, i32 noundef 2729, ptr noundef @.str.28, ptr noundef @.str.62)
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
  %call13 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 1))
  store <4 x double> %call13, ptr %a, align 32, !tbaa !16
  %call14 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <4 x double> %call14, ptr %b, align 32, !tbaa !16
  %call15 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 3))
  store <4 x i64> %call15, ptr %c, align 32, !tbaa !16
  %4 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %5 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %6 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %4, ptr %indirect-arg-temp16, align 32, !tbaa !16
  store <4 x double> %5, ptr %indirect-arg-temp17, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp18, align 32, !tbaa !16
  %call19 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp16, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp17, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp18, i32 noundef 197)
  store <4 x double> %call19, ptr %indirect-arg-temp20, align 32, !tbaa !16
  %call21 = call <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext 58, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp20)
  store <4 x double> %call21, ptr %r, align 32, !tbaa !16
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %7 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call23 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 5))
  %call24 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %7, ptr %indirect-arg-temp25, align 32, !tbaa !16
  store <4 x double> %call23, ptr %indirect-arg-temp26, align 32, !tbaa !16
  %call27 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp25, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp26, double noundef %call24, ptr noundef @.str.27, i32 noundef 2735, ptr noundef @.str.28, ptr noundef @.str.63)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body22
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.body22
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  %call33 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 1))
  store <4 x double> %call33, ptr %a, align 32, !tbaa !16
  %call34 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <4 x double> %call34, ptr %b, align 32, !tbaa !16
  %call35 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 3))
  store <4 x i64> %call35, ptr %c, align 32, !tbaa !16
  %8 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %9 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %10 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %8, ptr %indirect-arg-temp36, align 32, !tbaa !16
  store <4 x double> %9, ptr %indirect-arg-temp37, align 32, !tbaa !16
  store <4 x i64> %10, ptr %indirect-arg-temp38, align 32, !tbaa !16
  %call39 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp36, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp37, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp38, i32 noundef 94)
  store <4 x double> %call39, ptr %indirect-arg-temp40, align 32, !tbaa !16
  %call41 = call <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext -103, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp40)
  store <4 x double> %call41, ptr %r, align 32, !tbaa !16
  br label %do.body42

do.body42:                                        ; preds = %do.end32
  %11 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call43 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 5))
  %call44 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %11, ptr %indirect-arg-temp45, align 32, !tbaa !16
  store <4 x double> %call43, ptr %indirect-arg-temp46, align 32, !tbaa !16
  %call47 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp45, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp46, double noundef %call44, ptr noundef @.str.27, i32 noundef 2741, ptr noundef @.str.28, ptr noundef @.str.64)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body42
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %do.body42
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  %call53 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 1))
  store <4 x double> %call53, ptr %a, align 32, !tbaa !16
  %call54 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <4 x double> %call54, ptr %b, align 32, !tbaa !16
  %call55 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 3))
  store <4 x i64> %call55, ptr %c, align 32, !tbaa !16
  %12 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %13 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %14 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %12, ptr %indirect-arg-temp56, align 32, !tbaa !16
  store <4 x double> %13, ptr %indirect-arg-temp57, align 32, !tbaa !16
  store <4 x i64> %14, ptr %indirect-arg-temp58, align 32, !tbaa !16
  %call59 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp56, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp57, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp58, i32 noundef 201)
  store <4 x double> %call59, ptr %indirect-arg-temp60, align 32, !tbaa !16
  %call61 = call <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext 51, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp60)
  store <4 x double> %call61, ptr %r, align 32, !tbaa !16
  br label %do.body62

do.body62:                                        ; preds = %do.end52
  %15 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call63 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 5))
  %call64 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %15, ptr %indirect-arg-temp65, align 32, !tbaa !16
  store <4 x double> %call63, ptr %indirect-arg-temp66, align 32, !tbaa !16
  %call67 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp65, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp66, double noundef %call64, ptr noundef @.str.27, i32 noundef 2747, ptr noundef @.str.28, ptr noundef @.str.65)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body62
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %do.body62
  br label %do.cond71

do.cond71:                                        ; preds = %if.end70
  br label %do.end72

do.end72:                                         ; preds = %do.cond71
  %call73 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 1))
  store <4 x double> %call73, ptr %a, align 32, !tbaa !16
  %call74 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <4 x double> %call74, ptr %b, align 32, !tbaa !16
  %call75 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 3))
  store <4 x i64> %call75, ptr %c, align 32, !tbaa !16
  %16 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %17 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %18 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %16, ptr %indirect-arg-temp76, align 32, !tbaa !16
  store <4 x double> %17, ptr %indirect-arg-temp77, align 32, !tbaa !16
  store <4 x i64> %18, ptr %indirect-arg-temp78, align 32, !tbaa !16
  %call79 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp76, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp77, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp78, i32 noundef 204)
  store <4 x double> %call79, ptr %indirect-arg-temp80, align 32, !tbaa !16
  %call81 = call <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext 38, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp80)
  store <4 x double> %call81, ptr %r, align 32, !tbaa !16
  br label %do.body82

do.body82:                                        ; preds = %do.end72
  %19 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call83 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 5))
  %call84 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %19, ptr %indirect-arg-temp85, align 32, !tbaa !16
  store <4 x double> %call83, ptr %indirect-arg-temp86, align 32, !tbaa !16
  %call87 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp85, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp86, double noundef %call84, ptr noundef @.str.27, i32 noundef 2753, ptr noundef @.str.28, ptr noundef @.str.66)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.body82
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end90:                                         ; preds = %do.body82
  br label %do.cond91

do.cond91:                                        ; preds = %if.end90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  %call93 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 1))
  store <4 x double> %call93, ptr %a, align 32, !tbaa !16
  %call94 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <4 x double> %call94, ptr %b, align 32, !tbaa !16
  %call95 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 3))
  store <4 x i64> %call95, ptr %c, align 32, !tbaa !16
  %20 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %21 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %22 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %20, ptr %indirect-arg-temp96, align 32, !tbaa !16
  store <4 x double> %21, ptr %indirect-arg-temp97, align 32, !tbaa !16
  store <4 x i64> %22, ptr %indirect-arg-temp98, align 32, !tbaa !16
  %call99 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp96, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp97, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp98, i32 noundef 54)
  store <4 x double> %call99, ptr %indirect-arg-temp100, align 32, !tbaa !16
  %call101 = call <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext -111, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp100)
  store <4 x double> %call101, ptr %r, align 32, !tbaa !16
  br label %do.body102

do.body102:                                       ; preds = %do.end92
  %23 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call103 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 5))
  %call104 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %23, ptr %indirect-arg-temp105, align 32, !tbaa !16
  store <4 x double> %call103, ptr %indirect-arg-temp106, align 32, !tbaa !16
  %call107 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp105, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp106, double noundef %call104, ptr noundef @.str.27, i32 noundef 2759, ptr noundef @.str.28, ptr noundef @.str.67)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %do.body102
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end110:                                        ; preds = %do.body102
  br label %do.cond111

do.cond111:                                       ; preds = %if.end110
  br label %do.end112

do.end112:                                        ; preds = %do.cond111
  %call113 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 1))
  store <4 x double> %call113, ptr %a, align 32, !tbaa !16
  %call114 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <4 x double> %call114, ptr %b, align 32, !tbaa !16
  %call115 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 3))
  store <4 x i64> %call115, ptr %c, align 32, !tbaa !16
  %24 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %25 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %26 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %24, ptr %indirect-arg-temp116, align 32, !tbaa !16
  store <4 x double> %25, ptr %indirect-arg-temp117, align 32, !tbaa !16
  store <4 x i64> %26, ptr %indirect-arg-temp118, align 32, !tbaa !16
  %call119 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp116, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp117, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp118, i32 noundef 53)
  store <4 x double> %call119, ptr %indirect-arg-temp120, align 32, !tbaa !16
  %call121 = call <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext 44, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp120)
  store <4 x double> %call121, ptr %r, align 32, !tbaa !16
  br label %do.body122

do.body122:                                       ; preds = %do.end112
  %27 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call123 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 5))
  %call124 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %27, ptr %indirect-arg-temp125, align 32, !tbaa !16
  store <4 x double> %call123, ptr %indirect-arg-temp126, align 32, !tbaa !16
  %call127 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp125, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp126, double noundef %call124, ptr noundef @.str.27, i32 noundef 2765, ptr noundef @.str.28, ptr noundef @.str.68)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %do.body122
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end130:                                        ; preds = %do.body122
  br label %do.cond131

do.cond131:                                       ; preds = %if.end130
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  %call133 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 1))
  store <4 x double> %call133, ptr %a, align 32, !tbaa !16
  %call134 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <4 x double> %call134, ptr %b, align 32, !tbaa !16
  %call135 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 3))
  store <4 x i64> %call135, ptr %c, align 32, !tbaa !16
  %28 = load <4 x double>, ptr %a, align 32, !tbaa !16
  %29 = load <4 x double>, ptr %b, align 32, !tbaa !16
  %30 = load <4 x i64>, ptr %c, align 32, !tbaa !16
  store <4 x double> %28, ptr %indirect-arg-temp136, align 32, !tbaa !16
  store <4 x double> %29, ptr %indirect-arg-temp137, align 32, !tbaa !16
  store <4 x i64> %30, ptr %indirect-arg-temp138, align 32, !tbaa !16
  %call139 = call <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp136, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp137, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp138, i32 noundef 54)
  store <4 x double> %call139, ptr %indirect-arg-temp140, align 32, !tbaa !16
  %call141 = call <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext -26, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp140)
  store <4 x double> %call141, ptr %r, align 32, !tbaa !16
  br label %do.body142

do.body142:                                       ; preds = %do.end132
  %31 = load <4 x double>, ptr %r, align 32, !tbaa !16
  %call143 = call <4 x double> @simde_mm256_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.17], ptr @test_simde_mm256_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 5))
  %call144 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <4 x double> %31, ptr %indirect-arg-temp145, align 32, !tbaa !16
  store <4 x double> %call143, ptr %indirect-arg-temp146, align 32, !tbaa !16
  %call147 = call i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp145, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp146, double noundef %call144, ptr noundef @.str.27, i32 noundef 2772, ptr noundef @.str.28, ptr noundef @.str.69)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.body142
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end150:                                        ; preds = %do.body142
  br label %do.cond151

do.cond151:                                       ; preds = %if.end150
  br label %do.end152

do.end152:                                        ; preds = %do.cond151
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end152, %if.then149, %if.then129, %if.then109, %if.then89, %if.then69, %if.then49, %if.then29, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_fixupimm_pd() #5 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <8 x double>, align 64
  %b = alloca <8 x double>, align 64
  %r = alloca <8 x double>, align 64
  %c = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x double>, align 64
  %indirect-arg-temp3 = alloca <8 x double>, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x double>, align 64
  %indirect-arg-temp9 = alloca <8 x double>, align 64
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp14 = alloca <8 x double>, align 64
  %indirect-arg-temp15 = alloca <8 x double>, align 64
  %indirect-arg-temp16 = alloca <8 x i64>, align 64
  %indirect-arg-temp21 = alloca <8 x double>, align 64
  %indirect-arg-temp22 = alloca <8 x double>, align 64
  %indirect-arg-temp32 = alloca <8 x double>, align 64
  %indirect-arg-temp33 = alloca <8 x double>, align 64
  %indirect-arg-temp34 = alloca <8 x i64>, align 64
  %indirect-arg-temp39 = alloca <8 x double>, align 64
  %indirect-arg-temp40 = alloca <8 x double>, align 64
  %indirect-arg-temp50 = alloca <8 x double>, align 64
  %indirect-arg-temp51 = alloca <8 x double>, align 64
  %indirect-arg-temp52 = alloca <8 x i64>, align 64
  %indirect-arg-temp57 = alloca <8 x double>, align 64
  %indirect-arg-temp58 = alloca <8 x double>, align 64
  %indirect-arg-temp68 = alloca <8 x double>, align 64
  %indirect-arg-temp69 = alloca <8 x double>, align 64
  %indirect-arg-temp70 = alloca <8 x i64>, align 64
  %indirect-arg-temp75 = alloca <8 x double>, align 64
  %indirect-arg-temp76 = alloca <8 x double>, align 64
  %indirect-arg-temp86 = alloca <8 x double>, align 64
  %indirect-arg-temp87 = alloca <8 x double>, align 64
  %indirect-arg-temp88 = alloca <8 x i64>, align 64
  %indirect-arg-temp93 = alloca <8 x double>, align 64
  %indirect-arg-temp94 = alloca <8 x double>, align 64
  %indirect-arg-temp104 = alloca <8 x double>, align 64
  %indirect-arg-temp105 = alloca <8 x double>, align 64
  %indirect-arg-temp106 = alloca <8 x i64>, align 64
  %indirect-arg-temp111 = alloca <8 x double>, align 64
  %indirect-arg-temp112 = alloca <8 x double>, align 64
  %indirect-arg-temp122 = alloca <8 x double>, align 64
  %indirect-arg-temp123 = alloca <8 x double>, align 64
  %indirect-arg-temp124 = alloca <8 x i64>, align 64
  %indirect-arg-temp129 = alloca <8 x double>, align 64
  %indirect-arg-temp130 = alloca <8 x double>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %c) #16
  %call = call <8 x double> @simde_mm512_loadu_pd(ptr noundef @test_simde_mm512_fixupimm_pd.test_vec)
  store <8 x double> %call, ptr %a, align 64, !tbaa !16
  %call1 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.18, ptr @test_simde_mm512_fixupimm_pd.test_vec, i32 0, i32 1))
  store <8 x double> %call1, ptr %b, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds (%struct.anon.18, ptr @test_simde_mm512_fixupimm_pd.test_vec, i32 0, i32 2))
  store <8 x i64> %call2, ptr %c, align 64, !tbaa !16
  %0 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %1 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %0, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x double> %1, ptr %indirect-arg-temp3, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp4, align 64, !tbaa !16
  %call5 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4, i32 noundef 185)
  store <8 x double> %call5, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call6 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.18, ptr @test_simde_mm512_fixupimm_pd.test_vec, i32 0, i32 4))
  %call7 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %3, ptr %indirect-arg-temp8, align 64, !tbaa !16
  store <8 x double> %call6, ptr %indirect-arg-temp9, align 64, !tbaa !16
  %call10 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp8, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp9, double noundef %call7, ptr noundef @.str.27, i32 noundef 2893, ptr noundef @.str.28, ptr noundef @.str.70)
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
  %call11 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 1))
  store <8 x double> %call11, ptr %a, align 64, !tbaa !16
  %call12 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 1, i32 1))
  store <8 x double> %call12, ptr %b, align 64, !tbaa !16
  %call13 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <8 x i64> %call13, ptr %c, align 64, !tbaa !16
  %4 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %5 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %6 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %4, ptr %indirect-arg-temp14, align 64, !tbaa !16
  store <8 x double> %5, ptr %indirect-arg-temp15, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp16, align 64, !tbaa !16
  %call17 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp14, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp15, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp16, i32 noundef 24)
  store <8 x double> %call17, ptr %r, align 64, !tbaa !16
  br label %do.body18

do.body18:                                        ; preds = %do.end
  %7 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call19 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 1, i32 4))
  %call20 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %7, ptr %indirect-arg-temp21, align 64, !tbaa !16
  store <8 x double> %call19, ptr %indirect-arg-temp22, align 64, !tbaa !16
  %call23 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp21, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp22, double noundef %call20, ptr noundef @.str.27, i32 noundef 2900, ptr noundef @.str.28, ptr noundef @.str.71)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %do.body18
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %do.body18
  br label %do.cond27

do.cond27:                                        ; preds = %if.end26
  br label %do.end28

do.end28:                                         ; preds = %do.cond27
  %call29 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 2))
  store <8 x double> %call29, ptr %a, align 64, !tbaa !16
  %call30 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 2, i32 1))
  store <8 x double> %call30, ptr %b, align 64, !tbaa !16
  %call31 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <8 x i64> %call31, ptr %c, align 64, !tbaa !16
  %8 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %9 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %10 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %8, ptr %indirect-arg-temp32, align 64, !tbaa !16
  store <8 x double> %9, ptr %indirect-arg-temp33, align 64, !tbaa !16
  store <8 x i64> %10, ptr %indirect-arg-temp34, align 64, !tbaa !16
  %call35 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp32, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp33, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp34, i32 noundef 102)
  store <8 x double> %call35, ptr %r, align 64, !tbaa !16
  br label %do.body36

do.body36:                                        ; preds = %do.end28
  %11 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call37 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 2, i32 4))
  %call38 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %11, ptr %indirect-arg-temp39, align 64, !tbaa !16
  store <8 x double> %call37, ptr %indirect-arg-temp40, align 64, !tbaa !16
  %call41 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp39, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp40, double noundef %call38, ptr noundef @.str.27, i32 noundef 2906, ptr noundef @.str.28, ptr noundef @.str.72)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %do.body36
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end44:                                         ; preds = %do.body36
  br label %do.cond45

do.cond45:                                        ; preds = %if.end44
  br label %do.end46

do.end46:                                         ; preds = %do.cond45
  %call47 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 3))
  store <8 x double> %call47, ptr %a, align 64, !tbaa !16
  %call48 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 3, i32 1))
  store <8 x double> %call48, ptr %b, align 64, !tbaa !16
  %call49 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <8 x i64> %call49, ptr %c, align 64, !tbaa !16
  %12 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %13 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %14 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %12, ptr %indirect-arg-temp50, align 64, !tbaa !16
  store <8 x double> %13, ptr %indirect-arg-temp51, align 64, !tbaa !16
  store <8 x i64> %14, ptr %indirect-arg-temp52, align 64, !tbaa !16
  %call53 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp50, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp51, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp52, i32 noundef 226)
  store <8 x double> %call53, ptr %r, align 64, !tbaa !16
  br label %do.body54

do.body54:                                        ; preds = %do.end46
  %15 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call55 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 3, i32 4))
  %call56 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %15, ptr %indirect-arg-temp57, align 64, !tbaa !16
  store <8 x double> %call55, ptr %indirect-arg-temp58, align 64, !tbaa !16
  %call59 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp57, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp58, double noundef %call56, ptr noundef @.str.27, i32 noundef 2913, ptr noundef @.str.28, ptr noundef @.str.73)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.body54
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end62:                                         ; preds = %do.body54
  br label %do.cond63

do.cond63:                                        ; preds = %if.end62
  br label %do.end64

do.end64:                                         ; preds = %do.cond63
  %call65 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 4))
  store <8 x double> %call65, ptr %a, align 64, !tbaa !16
  %call66 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 4, i32 1))
  store <8 x double> %call66, ptr %b, align 64, !tbaa !16
  %call67 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <8 x i64> %call67, ptr %c, align 64, !tbaa !16
  %16 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %17 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %18 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %16, ptr %indirect-arg-temp68, align 64, !tbaa !16
  store <8 x double> %17, ptr %indirect-arg-temp69, align 64, !tbaa !16
  store <8 x i64> %18, ptr %indirect-arg-temp70, align 64, !tbaa !16
  %call71 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp68, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp69, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp70, i32 noundef 244)
  store <8 x double> %call71, ptr %r, align 64, !tbaa !16
  br label %do.body72

do.body72:                                        ; preds = %do.end64
  %19 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call73 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 4, i32 4))
  %call74 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %19, ptr %indirect-arg-temp75, align 64, !tbaa !16
  store <8 x double> %call73, ptr %indirect-arg-temp76, align 64, !tbaa !16
  %call77 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp75, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp76, double noundef %call74, ptr noundef @.str.27, i32 noundef 2920, ptr noundef @.str.28, ptr noundef @.str.74)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body72
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end80:                                         ; preds = %do.body72
  br label %do.cond81

do.cond81:                                        ; preds = %if.end80
  br label %do.end82

do.end82:                                         ; preds = %do.cond81
  %call83 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 5))
  store <8 x double> %call83, ptr %a, align 64, !tbaa !16
  %call84 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 5, i32 1))
  store <8 x double> %call84, ptr %b, align 64, !tbaa !16
  %call85 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <8 x i64> %call85, ptr %c, align 64, !tbaa !16
  %20 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %21 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %22 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %20, ptr %indirect-arg-temp86, align 64, !tbaa !16
  store <8 x double> %21, ptr %indirect-arg-temp87, align 64, !tbaa !16
  store <8 x i64> %22, ptr %indirect-arg-temp88, align 64, !tbaa !16
  %call89 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp86, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp87, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp88, i32 noundef 61)
  store <8 x double> %call89, ptr %r, align 64, !tbaa !16
  br label %do.body90

do.body90:                                        ; preds = %do.end82
  %23 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call91 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 5, i32 4))
  %call92 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %23, ptr %indirect-arg-temp93, align 64, !tbaa !16
  store <8 x double> %call91, ptr %indirect-arg-temp94, align 64, !tbaa !16
  %call95 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp93, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp94, double noundef %call92, ptr noundef @.str.27, i32 noundef 2926, ptr noundef @.str.28, ptr noundef @.str.75)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.body90
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end98:                                         ; preds = %do.body90
  br label %do.cond99

do.cond99:                                        ; preds = %if.end98
  br label %do.end100

do.end100:                                        ; preds = %do.cond99
  %call101 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 6))
  store <8 x double> %call101, ptr %a, align 64, !tbaa !16
  %call102 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 6, i32 1))
  store <8 x double> %call102, ptr %b, align 64, !tbaa !16
  %call103 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <8 x i64> %call103, ptr %c, align 64, !tbaa !16
  %24 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %25 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %26 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %24, ptr %indirect-arg-temp104, align 64, !tbaa !16
  store <8 x double> %25, ptr %indirect-arg-temp105, align 64, !tbaa !16
  store <8 x i64> %26, ptr %indirect-arg-temp106, align 64, !tbaa !16
  %call107 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp104, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp105, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp106, i32 noundef 33)
  store <8 x double> %call107, ptr %r, align 64, !tbaa !16
  br label %do.body108

do.body108:                                       ; preds = %do.end100
  %27 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call109 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 6, i32 4))
  %call110 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %27, ptr %indirect-arg-temp111, align 64, !tbaa !16
  store <8 x double> %call109, ptr %indirect-arg-temp112, align 64, !tbaa !16
  %call113 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp111, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp112, double noundef %call110, ptr noundef @.str.27, i32 noundef 2933, ptr noundef @.str.28, ptr noundef @.str.76)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body108
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %do.body108
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %call119 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 7))
  store <8 x double> %call119, ptr %a, align 64, !tbaa !16
  %call120 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 7, i32 1))
  store <8 x double> %call120, ptr %b, align 64, !tbaa !16
  %call121 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <8 x i64> %call121, ptr %c, align 64, !tbaa !16
  %28 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %29 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %30 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %28, ptr %indirect-arg-temp122, align 64, !tbaa !16
  store <8 x double> %29, ptr %indirect-arg-temp123, align 64, !tbaa !16
  store <8 x i64> %30, ptr %indirect-arg-temp124, align 64, !tbaa !16
  %call125 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp122, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp123, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp124, i32 noundef 127)
  store <8 x double> %call125, ptr %r, align 64, !tbaa !16
  br label %do.body126

do.body126:                                       ; preds = %do.end118
  %31 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call127 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.18], ptr @test_simde_mm512_fixupimm_pd.test_vec, i64 0, i64 7, i32 4))
  %call128 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %31, ptr %indirect-arg-temp129, align 64, !tbaa !16
  store <8 x double> %call127, ptr %indirect-arg-temp130, align 64, !tbaa !16
  %call131 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp129, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp130, double noundef %call128, ptr noundef @.str.27, i32 noundef 2939, ptr noundef @.str.28, ptr noundef @.str.77)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %do.body126
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end134:                                        ; preds = %do.body126
  br label %do.cond135

do.cond135:                                       ; preds = %if.end134
  br label %do.end136

do.end136:                                        ; preds = %do.cond135
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %if.then133, %if.then115, %if.then97, %if.then79, %if.then61, %if.then43, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_fixupimm_pd() #5 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <8 x double>, align 64
  %b = alloca <8 x double>, align 64
  %r = alloca <8 x double>, align 64
  %c = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x double>, align 64
  %indirect-arg-temp3 = alloca <8 x double>, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x double>, align 64
  %indirect-arg-temp7 = alloca <8 x double>, align 64
  %indirect-arg-temp11 = alloca <8 x double>, align 64
  %indirect-arg-temp12 = alloca <8 x double>, align 64
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp17 = alloca <8 x double>, align 64
  %indirect-arg-temp18 = alloca <8 x double>, align 64
  %indirect-arg-temp19 = alloca <8 x i64>, align 64
  %indirect-arg-temp21 = alloca <8 x double>, align 64
  %indirect-arg-temp22 = alloca <8 x double>, align 64
  %indirect-arg-temp27 = alloca <8 x double>, align 64
  %indirect-arg-temp28 = alloca <8 x double>, align 64
  %indirect-arg-temp38 = alloca <8 x double>, align 64
  %indirect-arg-temp39 = alloca <8 x double>, align 64
  %indirect-arg-temp40 = alloca <8 x i64>, align 64
  %indirect-arg-temp42 = alloca <8 x double>, align 64
  %indirect-arg-temp43 = alloca <8 x double>, align 64
  %indirect-arg-temp48 = alloca <8 x double>, align 64
  %indirect-arg-temp49 = alloca <8 x double>, align 64
  %indirect-arg-temp59 = alloca <8 x double>, align 64
  %indirect-arg-temp60 = alloca <8 x double>, align 64
  %indirect-arg-temp61 = alloca <8 x i64>, align 64
  %indirect-arg-temp63 = alloca <8 x double>, align 64
  %indirect-arg-temp64 = alloca <8 x double>, align 64
  %indirect-arg-temp69 = alloca <8 x double>, align 64
  %indirect-arg-temp70 = alloca <8 x double>, align 64
  %indirect-arg-temp80 = alloca <8 x double>, align 64
  %indirect-arg-temp81 = alloca <8 x double>, align 64
  %indirect-arg-temp82 = alloca <8 x i64>, align 64
  %indirect-arg-temp84 = alloca <8 x double>, align 64
  %indirect-arg-temp85 = alloca <8 x double>, align 64
  %indirect-arg-temp90 = alloca <8 x double>, align 64
  %indirect-arg-temp91 = alloca <8 x double>, align 64
  %indirect-arg-temp101 = alloca <8 x double>, align 64
  %indirect-arg-temp102 = alloca <8 x double>, align 64
  %indirect-arg-temp103 = alloca <8 x i64>, align 64
  %indirect-arg-temp105 = alloca <8 x double>, align 64
  %indirect-arg-temp106 = alloca <8 x double>, align 64
  %indirect-arg-temp111 = alloca <8 x double>, align 64
  %indirect-arg-temp112 = alloca <8 x double>, align 64
  %indirect-arg-temp122 = alloca <8 x double>, align 64
  %indirect-arg-temp123 = alloca <8 x double>, align 64
  %indirect-arg-temp124 = alloca <8 x i64>, align 64
  %indirect-arg-temp126 = alloca <8 x double>, align 64
  %indirect-arg-temp127 = alloca <8 x double>, align 64
  %indirect-arg-temp132 = alloca <8 x double>, align 64
  %indirect-arg-temp133 = alloca <8 x double>, align 64
  %indirect-arg-temp143 = alloca <8 x double>, align 64
  %indirect-arg-temp144 = alloca <8 x double>, align 64
  %indirect-arg-temp145 = alloca <8 x i64>, align 64
  %indirect-arg-temp147 = alloca <8 x double>, align 64
  %indirect-arg-temp148 = alloca <8 x double>, align 64
  %indirect-arg-temp153 = alloca <8 x double>, align 64
  %indirect-arg-temp154 = alloca <8 x double>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %c) #16
  %call = call <8 x double> @simde_mm512_loadu_pd(ptr noundef @test_simde_mm512_mask_fixupimm_pd.test_vec)
  store <8 x double> %call, ptr %a, align 64, !tbaa !16
  %call1 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.19, ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i32 0, i32 2))
  store <8 x double> %call1, ptr %b, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds (%struct.anon.19, ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i32 0, i32 3))
  store <8 x i64> %call2, ptr %c, align 64, !tbaa !16
  %0 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %1 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %2 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x double> %2, ptr %indirect-arg-temp3, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp4, align 64, !tbaa !16
  %call5 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4, i32 noundef 93)
  store <8 x double> %0, ptr %indirect-arg-temp6, align 64, !tbaa !16
  store <8 x double> %call5, ptr %indirect-arg-temp7, align 64, !tbaa !16
  %call8 = call <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp6, i8 noundef zeroext -128, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp7)
  store <8 x double> %call8, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call9 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.19, ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i32 0, i32 5))
  %call10 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %4, ptr %indirect-arg-temp11, align 64, !tbaa !16
  store <8 x double> %call9, ptr %indirect-arg-temp12, align 64, !tbaa !16
  %call13 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp11, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp12, double noundef %call10, ptr noundef @.str.27, i32 noundef 3067, ptr noundef @.str.28, ptr noundef @.str.70)
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
  %call14 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 1))
  store <8 x double> %call14, ptr %a, align 64, !tbaa !16
  %call15 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <8 x double> %call15, ptr %b, align 64, !tbaa !16
  %call16 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 3))
  store <8 x i64> %call16, ptr %c, align 64, !tbaa !16
  %5 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %6 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %8 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %6, ptr %indirect-arg-temp17, align 64, !tbaa !16
  store <8 x double> %7, ptr %indirect-arg-temp18, align 64, !tbaa !16
  store <8 x i64> %8, ptr %indirect-arg-temp19, align 64, !tbaa !16
  %call20 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp17, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp18, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp19, i32 noundef 145)
  store <8 x double> %5, ptr %indirect-arg-temp21, align 64, !tbaa !16
  store <8 x double> %call20, ptr %indirect-arg-temp22, align 64, !tbaa !16
  %call23 = call <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp21, i8 noundef zeroext -76, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp22)
  store <8 x double> %call23, ptr %r, align 64, !tbaa !16
  br label %do.body24

do.body24:                                        ; preds = %do.end
  %9 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call25 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 1, i32 5))
  %call26 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %9, ptr %indirect-arg-temp27, align 64, !tbaa !16
  store <8 x double> %call25, ptr %indirect-arg-temp28, align 64, !tbaa !16
  %call29 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp27, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp28, double noundef %call26, ptr noundef @.str.27, i32 noundef 3074, ptr noundef @.str.28, ptr noundef @.str.71)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %do.body24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %do.body24
  br label %do.cond33

do.cond33:                                        ; preds = %if.end32
  br label %do.end34

do.end34:                                         ; preds = %do.cond33
  %call35 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 2))
  store <8 x double> %call35, ptr %a, align 64, !tbaa !16
  %call36 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <8 x double> %call36, ptr %b, align 64, !tbaa !16
  %call37 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 3))
  store <8 x i64> %call37, ptr %c, align 64, !tbaa !16
  %10 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %11 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %12 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %13 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %11, ptr %indirect-arg-temp38, align 64, !tbaa !16
  store <8 x double> %12, ptr %indirect-arg-temp39, align 64, !tbaa !16
  store <8 x i64> %13, ptr %indirect-arg-temp40, align 64, !tbaa !16
  %call41 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp38, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp39, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp40, i32 noundef 109)
  store <8 x double> %10, ptr %indirect-arg-temp42, align 64, !tbaa !16
  store <8 x double> %call41, ptr %indirect-arg-temp43, align 64, !tbaa !16
  %call44 = call <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp42, i8 noundef zeroext 126, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp43)
  store <8 x double> %call44, ptr %r, align 64, !tbaa !16
  br label %do.body45

do.body45:                                        ; preds = %do.end34
  %14 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call46 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 2, i32 5))
  %call47 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %14, ptr %indirect-arg-temp48, align 64, !tbaa !16
  store <8 x double> %call46, ptr %indirect-arg-temp49, align 64, !tbaa !16
  %call50 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp48, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp49, double noundef %call47, ptr noundef @.str.27, i32 noundef 3081, ptr noundef @.str.28, ptr noundef @.str.72)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %do.body45
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %do.body45
  br label %do.cond54

do.cond54:                                        ; preds = %if.end53
  br label %do.end55

do.end55:                                         ; preds = %do.cond54
  %call56 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 3))
  store <8 x double> %call56, ptr %a, align 64, !tbaa !16
  %call57 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <8 x double> %call57, ptr %b, align 64, !tbaa !16
  %call58 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 3))
  store <8 x i64> %call58, ptr %c, align 64, !tbaa !16
  %15 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %16 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %17 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %18 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %16, ptr %indirect-arg-temp59, align 64, !tbaa !16
  store <8 x double> %17, ptr %indirect-arg-temp60, align 64, !tbaa !16
  store <8 x i64> %18, ptr %indirect-arg-temp61, align 64, !tbaa !16
  %call62 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp59, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp60, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp61, i32 noundef 44)
  store <8 x double> %15, ptr %indirect-arg-temp63, align 64, !tbaa !16
  store <8 x double> %call62, ptr %indirect-arg-temp64, align 64, !tbaa !16
  %call65 = call <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp63, i8 noundef zeroext 7, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp64)
  store <8 x double> %call65, ptr %r, align 64, !tbaa !16
  br label %do.body66

do.body66:                                        ; preds = %do.end55
  %19 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call67 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 3, i32 5))
  %call68 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %19, ptr %indirect-arg-temp69, align 64, !tbaa !16
  store <8 x double> %call67, ptr %indirect-arg-temp70, align 64, !tbaa !16
  %call71 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp69, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp70, double noundef %call68, ptr noundef @.str.27, i32 noundef 3087, ptr noundef @.str.28, ptr noundef @.str.73)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %do.body66
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end74:                                         ; preds = %do.body66
  br label %do.cond75

do.cond75:                                        ; preds = %if.end74
  br label %do.end76

do.end76:                                         ; preds = %do.cond75
  %call77 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 4))
  store <8 x double> %call77, ptr %a, align 64, !tbaa !16
  %call78 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <8 x double> %call78, ptr %b, align 64, !tbaa !16
  %call79 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 3))
  store <8 x i64> %call79, ptr %c, align 64, !tbaa !16
  %20 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %21 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %22 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %23 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %21, ptr %indirect-arg-temp80, align 64, !tbaa !16
  store <8 x double> %22, ptr %indirect-arg-temp81, align 64, !tbaa !16
  store <8 x i64> %23, ptr %indirect-arg-temp82, align 64, !tbaa !16
  %call83 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp80, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp81, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp82, i32 noundef 24)
  store <8 x double> %20, ptr %indirect-arg-temp84, align 64, !tbaa !16
  store <8 x double> %call83, ptr %indirect-arg-temp85, align 64, !tbaa !16
  %call86 = call <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp84, i8 noundef zeroext -40, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp85)
  store <8 x double> %call86, ptr %r, align 64, !tbaa !16
  br label %do.body87

do.body87:                                        ; preds = %do.end76
  %24 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call88 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 4, i32 5))
  %call89 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %24, ptr %indirect-arg-temp90, align 64, !tbaa !16
  store <8 x double> %call88, ptr %indirect-arg-temp91, align 64, !tbaa !16
  %call92 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp90, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp91, double noundef %call89, ptr noundef @.str.27, i32 noundef 3094, ptr noundef @.str.28, ptr noundef @.str.74)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body87
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %do.body87
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  %call98 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 5))
  store <8 x double> %call98, ptr %a, align 64, !tbaa !16
  %call99 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <8 x double> %call99, ptr %b, align 64, !tbaa !16
  %call100 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 3))
  store <8 x i64> %call100, ptr %c, align 64, !tbaa !16
  %25 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %26 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %27 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %28 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %26, ptr %indirect-arg-temp101, align 64, !tbaa !16
  store <8 x double> %27, ptr %indirect-arg-temp102, align 64, !tbaa !16
  store <8 x i64> %28, ptr %indirect-arg-temp103, align 64, !tbaa !16
  %call104 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp101, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp102, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp103, i32 noundef 6)
  store <8 x double> %25, ptr %indirect-arg-temp105, align 64, !tbaa !16
  store <8 x double> %call104, ptr %indirect-arg-temp106, align 64, !tbaa !16
  %call107 = call <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp105, i8 noundef zeroext -28, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp106)
  store <8 x double> %call107, ptr %r, align 64, !tbaa !16
  br label %do.body108

do.body108:                                       ; preds = %do.end97
  %29 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call109 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 5, i32 5))
  %call110 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %29, ptr %indirect-arg-temp111, align 64, !tbaa !16
  store <8 x double> %call109, ptr %indirect-arg-temp112, align 64, !tbaa !16
  %call113 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp111, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp112, double noundef %call110, ptr noundef @.str.27, i32 noundef 3100, ptr noundef @.str.28, ptr noundef @.str.75)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %do.body108
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end116:                                        ; preds = %do.body108
  br label %do.cond117

do.cond117:                                       ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.cond117
  %call119 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 6))
  store <8 x double> %call119, ptr %a, align 64, !tbaa !16
  %call120 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <8 x double> %call120, ptr %b, align 64, !tbaa !16
  %call121 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 3))
  store <8 x i64> %call121, ptr %c, align 64, !tbaa !16
  %30 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %31 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %32 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %33 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %31, ptr %indirect-arg-temp122, align 64, !tbaa !16
  store <8 x double> %32, ptr %indirect-arg-temp123, align 64, !tbaa !16
  store <8 x i64> %33, ptr %indirect-arg-temp124, align 64, !tbaa !16
  %call125 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp122, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp123, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp124, i32 noundef 34)
  store <8 x double> %30, ptr %indirect-arg-temp126, align 64, !tbaa !16
  store <8 x double> %call125, ptr %indirect-arg-temp127, align 64, !tbaa !16
  %call128 = call <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp126, i8 noundef zeroext -23, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp127)
  store <8 x double> %call128, ptr %r, align 64, !tbaa !16
  br label %do.body129

do.body129:                                       ; preds = %do.end118
  %34 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call130 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 6, i32 5))
  %call131 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %34, ptr %indirect-arg-temp132, align 64, !tbaa !16
  store <8 x double> %call130, ptr %indirect-arg-temp133, align 64, !tbaa !16
  %call134 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp132, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp133, double noundef %call131, ptr noundef @.str.27, i32 noundef 3106, ptr noundef @.str.28, ptr noundef @.str.76)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %if.end137

if.then136:                                       ; preds = %do.body129
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end137:                                        ; preds = %do.body129
  br label %do.cond138

do.cond138:                                       ; preds = %if.end137
  br label %do.end139

do.end139:                                        ; preds = %do.cond138
  %call140 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 7))
  store <8 x double> %call140, ptr %a, align 64, !tbaa !16
  %call141 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <8 x double> %call141, ptr %b, align 64, !tbaa !16
  %call142 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 3))
  store <8 x i64> %call142, ptr %c, align 64, !tbaa !16
  %35 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %36 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %37 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %38 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %36, ptr %indirect-arg-temp143, align 64, !tbaa !16
  store <8 x double> %37, ptr %indirect-arg-temp144, align 64, !tbaa !16
  store <8 x i64> %38, ptr %indirect-arg-temp145, align 64, !tbaa !16
  %call146 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp143, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp144, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp145, i32 noundef 180)
  store <8 x double> %35, ptr %indirect-arg-temp147, align 64, !tbaa !16
  store <8 x double> %call146, ptr %indirect-arg-temp148, align 64, !tbaa !16
  %call149 = call <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp147, i8 noundef zeroext 38, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp148)
  store <8 x double> %call149, ptr %r, align 64, !tbaa !16
  br label %do.body150

do.body150:                                       ; preds = %do.end139
  %39 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call151 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.19], ptr @test_simde_mm512_mask_fixupimm_pd.test_vec, i64 0, i64 7, i32 5))
  %call152 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %39, ptr %indirect-arg-temp153, align 64, !tbaa !16
  store <8 x double> %call151, ptr %indirect-arg-temp154, align 64, !tbaa !16
  %call155 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp153, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp154, double noundef %call152, ptr noundef @.str.27, i32 noundef 3112, ptr noundef @.str.28, ptr noundef @.str.77)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then157, label %if.end158

if.then157:                                       ; preds = %do.body150
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end158:                                        ; preds = %do.body150
  br label %do.cond159

do.cond159:                                       ; preds = %if.end158
  br label %do.end160

do.end160:                                        ; preds = %do.cond159
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %if.then157, %if.then136, %if.then115, %if.then94, %if.then73, %if.then52, %if.then31, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #16
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_maskz_fixupimm_pd() #5 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <8 x double>, align 64
  %b = alloca <8 x double>, align 64
  %r = alloca <8 x double>, align 64
  %c = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x double>, align 64
  %indirect-arg-temp3 = alloca <8 x double>, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x double>, align 64
  %indirect-arg-temp10 = alloca <8 x double>, align 64
  %indirect-arg-temp11 = alloca <8 x double>, align 64
  %cleanup.dest.slot = alloca i32, align 4
  %indirect-arg-temp16 = alloca <8 x double>, align 64
  %indirect-arg-temp17 = alloca <8 x double>, align 64
  %indirect-arg-temp18 = alloca <8 x i64>, align 64
  %indirect-arg-temp20 = alloca <8 x double>, align 64
  %indirect-arg-temp25 = alloca <8 x double>, align 64
  %indirect-arg-temp26 = alloca <8 x double>, align 64
  %indirect-arg-temp36 = alloca <8 x double>, align 64
  %indirect-arg-temp37 = alloca <8 x double>, align 64
  %indirect-arg-temp38 = alloca <8 x i64>, align 64
  %indirect-arg-temp40 = alloca <8 x double>, align 64
  %indirect-arg-temp45 = alloca <8 x double>, align 64
  %indirect-arg-temp46 = alloca <8 x double>, align 64
  %indirect-arg-temp56 = alloca <8 x double>, align 64
  %indirect-arg-temp57 = alloca <8 x double>, align 64
  %indirect-arg-temp58 = alloca <8 x i64>, align 64
  %indirect-arg-temp60 = alloca <8 x double>, align 64
  %indirect-arg-temp65 = alloca <8 x double>, align 64
  %indirect-arg-temp66 = alloca <8 x double>, align 64
  %indirect-arg-temp76 = alloca <8 x double>, align 64
  %indirect-arg-temp77 = alloca <8 x double>, align 64
  %indirect-arg-temp78 = alloca <8 x i64>, align 64
  %indirect-arg-temp80 = alloca <8 x double>, align 64
  %indirect-arg-temp85 = alloca <8 x double>, align 64
  %indirect-arg-temp86 = alloca <8 x double>, align 64
  %indirect-arg-temp96 = alloca <8 x double>, align 64
  %indirect-arg-temp97 = alloca <8 x double>, align 64
  %indirect-arg-temp98 = alloca <8 x i64>, align 64
  %indirect-arg-temp100 = alloca <8 x double>, align 64
  %indirect-arg-temp105 = alloca <8 x double>, align 64
  %indirect-arg-temp106 = alloca <8 x double>, align 64
  %indirect-arg-temp116 = alloca <8 x double>, align 64
  %indirect-arg-temp117 = alloca <8 x double>, align 64
  %indirect-arg-temp118 = alloca <8 x i64>, align 64
  %indirect-arg-temp120 = alloca <8 x double>, align 64
  %indirect-arg-temp125 = alloca <8 x double>, align 64
  %indirect-arg-temp126 = alloca <8 x double>, align 64
  %indirect-arg-temp136 = alloca <8 x double>, align 64
  %indirect-arg-temp137 = alloca <8 x double>, align 64
  %indirect-arg-temp138 = alloca <8 x i64>, align 64
  %indirect-arg-temp140 = alloca <8 x double>, align 64
  %indirect-arg-temp145 = alloca <8 x double>, align 64
  %indirect-arg-temp146 = alloca <8 x double>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %c) #16
  %call = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.20, ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i32 0, i32 1))
  store <8 x double> %call, ptr %a, align 64, !tbaa !16
  %call1 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.20, ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i32 0, i32 2))
  store <8 x double> %call1, ptr %b, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds (%struct.anon.20, ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i32 0, i32 3))
  store <8 x i64> %call2, ptr %c, align 64, !tbaa !16
  %0 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %1 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %0, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x double> %1, ptr %indirect-arg-temp3, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp4, align 64, !tbaa !16
  %call5 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4, i32 noundef 38)
  store <8 x double> %call5, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext 7, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp6)
  store <8 x double> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call8 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.20, ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i32 0, i32 5))
  %call9 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %3, ptr %indirect-arg-temp10, align 64, !tbaa !16
  store <8 x double> %call8, ptr %indirect-arg-temp11, align 64, !tbaa !16
  %call12 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp10, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp11, double noundef %call9, ptr noundef @.str.27, i32 noundef 3241, ptr noundef @.str.28, ptr noundef @.str.70)
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
  %call13 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 1))
  store <8 x double> %call13, ptr %a, align 64, !tbaa !16
  %call14 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 2))
  store <8 x double> %call14, ptr %b, align 64, !tbaa !16
  %call15 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 3))
  store <8 x i64> %call15, ptr %c, align 64, !tbaa !16
  %4 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %5 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %6 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %4, ptr %indirect-arg-temp16, align 64, !tbaa !16
  store <8 x double> %5, ptr %indirect-arg-temp17, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp18, align 64, !tbaa !16
  %call19 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp16, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp17, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp18, i32 noundef 237)
  store <8 x double> %call19, ptr %indirect-arg-temp20, align 64, !tbaa !16
  %call21 = call <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext -59, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp20)
  store <8 x double> %call21, ptr %r, align 64, !tbaa !16
  br label %do.body22

do.body22:                                        ; preds = %do.end
  %7 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call23 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 1, i32 5))
  %call24 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %7, ptr %indirect-arg-temp25, align 64, !tbaa !16
  store <8 x double> %call23, ptr %indirect-arg-temp26, align 64, !tbaa !16
  %call27 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp25, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp26, double noundef %call24, ptr noundef @.str.27, i32 noundef 3248, ptr noundef @.str.28, ptr noundef @.str.71)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body22
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.body22
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  %call33 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 1))
  store <8 x double> %call33, ptr %a, align 64, !tbaa !16
  %call34 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 2))
  store <8 x double> %call34, ptr %b, align 64, !tbaa !16
  %call35 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 3))
  store <8 x i64> %call35, ptr %c, align 64, !tbaa !16
  %8 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %9 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %10 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %8, ptr %indirect-arg-temp36, align 64, !tbaa !16
  store <8 x double> %9, ptr %indirect-arg-temp37, align 64, !tbaa !16
  store <8 x i64> %10, ptr %indirect-arg-temp38, align 64, !tbaa !16
  %call39 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp36, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp37, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp38, i32 noundef 166)
  store <8 x double> %call39, ptr %indirect-arg-temp40, align 64, !tbaa !16
  %call41 = call <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext -4, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp40)
  store <8 x double> %call41, ptr %r, align 64, !tbaa !16
  br label %do.body42

do.body42:                                        ; preds = %do.end32
  %11 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call43 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 2, i32 5))
  %call44 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %11, ptr %indirect-arg-temp45, align 64, !tbaa !16
  store <8 x double> %call43, ptr %indirect-arg-temp46, align 64, !tbaa !16
  %call47 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp45, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp46, double noundef %call44, ptr noundef @.str.27, i32 noundef 3255, ptr noundef @.str.28, ptr noundef @.str.72)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %do.body42
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %do.body42
  br label %do.cond51

do.cond51:                                        ; preds = %if.end50
  br label %do.end52

do.end52:                                         ; preds = %do.cond51
  %call53 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 1))
  store <8 x double> %call53, ptr %a, align 64, !tbaa !16
  %call54 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 2))
  store <8 x double> %call54, ptr %b, align 64, !tbaa !16
  %call55 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 3))
  store <8 x i64> %call55, ptr %c, align 64, !tbaa !16
  %12 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %13 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %14 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %12, ptr %indirect-arg-temp56, align 64, !tbaa !16
  store <8 x double> %13, ptr %indirect-arg-temp57, align 64, !tbaa !16
  store <8 x i64> %14, ptr %indirect-arg-temp58, align 64, !tbaa !16
  %call59 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp56, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp57, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp58, i32 noundef 24)
  store <8 x double> %call59, ptr %indirect-arg-temp60, align 64, !tbaa !16
  %call61 = call <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext -40, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp60)
  store <8 x double> %call61, ptr %r, align 64, !tbaa !16
  br label %do.body62

do.body62:                                        ; preds = %do.end52
  %15 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call63 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 3, i32 5))
  %call64 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %15, ptr %indirect-arg-temp65, align 64, !tbaa !16
  store <8 x double> %call63, ptr %indirect-arg-temp66, align 64, !tbaa !16
  %call67 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp65, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp66, double noundef %call64, ptr noundef @.str.27, i32 noundef 3261, ptr noundef @.str.28, ptr noundef @.str.73)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %do.body62
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end70:                                         ; preds = %do.body62
  br label %do.cond71

do.cond71:                                        ; preds = %if.end70
  br label %do.end72

do.end72:                                         ; preds = %do.cond71
  %call73 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 1))
  store <8 x double> %call73, ptr %a, align 64, !tbaa !16
  %call74 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 2))
  store <8 x double> %call74, ptr %b, align 64, !tbaa !16
  %call75 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 3))
  store <8 x i64> %call75, ptr %c, align 64, !tbaa !16
  %16 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %17 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %18 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %16, ptr %indirect-arg-temp76, align 64, !tbaa !16
  store <8 x double> %17, ptr %indirect-arg-temp77, align 64, !tbaa !16
  store <8 x i64> %18, ptr %indirect-arg-temp78, align 64, !tbaa !16
  %call79 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp76, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp77, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp78, i32 noundef 213)
  store <8 x double> %call79, ptr %indirect-arg-temp80, align 64, !tbaa !16
  %call81 = call <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext 13, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp80)
  store <8 x double> %call81, ptr %r, align 64, !tbaa !16
  br label %do.body82

do.body82:                                        ; preds = %do.end72
  %19 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call83 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 4, i32 5))
  %call84 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %19, ptr %indirect-arg-temp85, align 64, !tbaa !16
  store <8 x double> %call83, ptr %indirect-arg-temp86, align 64, !tbaa !16
  %call87 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp85, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp86, double noundef %call84, ptr noundef @.str.27, i32 noundef 3268, ptr noundef @.str.28, ptr noundef @.str.74)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %do.body82
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end90:                                         ; preds = %do.body82
  br label %do.cond91

do.cond91:                                        ; preds = %if.end90
  br label %do.end92

do.end92:                                         ; preds = %do.cond91
  %call93 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 1))
  store <8 x double> %call93, ptr %a, align 64, !tbaa !16
  %call94 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 2))
  store <8 x double> %call94, ptr %b, align 64, !tbaa !16
  %call95 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 3))
  store <8 x i64> %call95, ptr %c, align 64, !tbaa !16
  %20 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %21 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %22 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %20, ptr %indirect-arg-temp96, align 64, !tbaa !16
  store <8 x double> %21, ptr %indirect-arg-temp97, align 64, !tbaa !16
  store <8 x i64> %22, ptr %indirect-arg-temp98, align 64, !tbaa !16
  %call99 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp96, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp97, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp98, i32 noundef 73)
  store <8 x double> %call99, ptr %indirect-arg-temp100, align 64, !tbaa !16
  %call101 = call <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext 26, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp100)
  store <8 x double> %call101, ptr %r, align 64, !tbaa !16
  br label %do.body102

do.body102:                                       ; preds = %do.end92
  %23 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call103 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 5, i32 5))
  %call104 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %23, ptr %indirect-arg-temp105, align 64, !tbaa !16
  store <8 x double> %call103, ptr %indirect-arg-temp106, align 64, !tbaa !16
  %call107 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp105, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp106, double noundef %call104, ptr noundef @.str.27, i32 noundef 3274, ptr noundef @.str.28, ptr noundef @.str.75)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %do.body102
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end110:                                        ; preds = %do.body102
  br label %do.cond111

do.cond111:                                       ; preds = %if.end110
  br label %do.end112

do.end112:                                        ; preds = %do.cond111
  %call113 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 1))
  store <8 x double> %call113, ptr %a, align 64, !tbaa !16
  %call114 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 2))
  store <8 x double> %call114, ptr %b, align 64, !tbaa !16
  %call115 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 3))
  store <8 x i64> %call115, ptr %c, align 64, !tbaa !16
  %24 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %25 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %26 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %24, ptr %indirect-arg-temp116, align 64, !tbaa !16
  store <8 x double> %25, ptr %indirect-arg-temp117, align 64, !tbaa !16
  store <8 x i64> %26, ptr %indirect-arg-temp118, align 64, !tbaa !16
  %call119 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp116, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp117, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp118, i32 noundef 115)
  store <8 x double> %call119, ptr %indirect-arg-temp120, align 64, !tbaa !16
  %call121 = call <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext -28, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp120)
  store <8 x double> %call121, ptr %r, align 64, !tbaa !16
  br label %do.body122

do.body122:                                       ; preds = %do.end112
  %27 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call123 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 6, i32 5))
  %call124 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %27, ptr %indirect-arg-temp125, align 64, !tbaa !16
  store <8 x double> %call123, ptr %indirect-arg-temp126, align 64, !tbaa !16
  %call127 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp125, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp126, double noundef %call124, ptr noundef @.str.27, i32 noundef 3280, ptr noundef @.str.28, ptr noundef @.str.76)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %do.body122
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end130:                                        ; preds = %do.body122
  br label %do.cond131

do.cond131:                                       ; preds = %if.end130
  br label %do.end132

do.end132:                                        ; preds = %do.cond131
  %call133 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 1))
  store <8 x double> %call133, ptr %a, align 64, !tbaa !16
  %call134 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 2))
  store <8 x double> %call134, ptr %b, align 64, !tbaa !16
  %call135 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 3))
  store <8 x i64> %call135, ptr %c, align 64, !tbaa !16
  %28 = load <8 x double>, ptr %a, align 64, !tbaa !16
  %29 = load <8 x double>, ptr %b, align 64, !tbaa !16
  %30 = load <8 x i64>, ptr %c, align 64, !tbaa !16
  store <8 x double> %28, ptr %indirect-arg-temp136, align 64, !tbaa !16
  store <8 x double> %29, ptr %indirect-arg-temp137, align 64, !tbaa !16
  store <8 x i64> %30, ptr %indirect-arg-temp138, align 64, !tbaa !16
  %call139 = call <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp136, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp137, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp138, i32 noundef 134)
  store <8 x double> %call139, ptr %indirect-arg-temp140, align 64, !tbaa !16
  %call141 = call <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext 125, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp140)
  store <8 x double> %call141, ptr %r, align 64, !tbaa !16
  br label %do.body142

do.body142:                                       ; preds = %do.end132
  %31 = load <8 x double>, ptr %r, align 64, !tbaa !16
  %call143 = call <8 x double> @simde_mm512_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.20], ptr @test_simde_mm512_maskz_fixupimm_pd.test_vec, i64 0, i64 7, i32 5))
  %call144 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  store <8 x double> %31, ptr %indirect-arg-temp145, align 64, !tbaa !16
  store <8 x double> %call143, ptr %indirect-arg-temp146, align 64, !tbaa !16
  %call147 = call i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp145, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp146, double noundef %call144, ptr noundef @.str.27, i32 noundef 3287, ptr noundef @.str.28, ptr noundef @.str.77)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %do.body142
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end150:                                        ; preds = %do.body142
  br label %do.cond151

do.cond151:                                       ; preds = %if.end150
  br label %do.end152

do.end152:                                        ; preds = %do.cond151
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end152, %if.then149, %if.then129, %if.then109, %if.then89, %if.then69, %if.then49, %if.then29, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_fixupimm_sd() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %b = alloca <2 x double>, align 16
  %r = alloca <2 x double>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <2 x double> @simde_mm_loadu_pd(ptr noundef @test_simde_mm_fixupimm_sd.test_vec)
  store <2 x double> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.21, ptr @test_simde_mm_fixupimm_sd.test_vec, i32 0, i32 1))
  store <2 x double> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.21, ptr @test_simde_mm_fixupimm_sd.test_vec, i32 0, i32 2))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %1 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %0, <2 x double> noundef %1, <2 x i64> noundef %2, i32 noundef 203)
  store <2 x double> %call3, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call4 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.21, ptr @test_simde_mm_fixupimm_sd.test_vec, i32 0, i32 4))
  %call5 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call6 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %3, <2 x double> noundef %call4, double noundef %call5, ptr noundef @.str.27, i32 noundef 3375, ptr noundef @.str.28, ptr noundef @.str.54)
  %tobool = icmp ne i32 %call6, 0
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
  %call7 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 1))
  store <2 x double> %call7, ptr %a, align 16, !tbaa !16
  %call8 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 1, i32 1))
  store <2 x double> %call8, ptr %b, align 16, !tbaa !16
  %call9 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 1, i32 2))
  store <2 x i64> %call9, ptr %c, align 16, !tbaa !16
  %4 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %5 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call10 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %4, <2 x double> noundef %5, <2 x i64> noundef %6, i32 noundef 71)
  store <2 x double> %call10, ptr %r, align 16, !tbaa !16
  br label %do.body11

do.body11:                                        ; preds = %do.end
  %7 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call12 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 1, i32 4))
  %call13 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call14 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %7, <2 x double> noundef %call12, double noundef %call13, ptr noundef @.str.27, i32 noundef 3382, ptr noundef @.str.28, ptr noundef @.str.55)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.body11
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %do.body11
  br label %do.cond18

do.cond18:                                        ; preds = %if.end17
  br label %do.end19

do.end19:                                         ; preds = %do.cond18
  %call20 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 2))
  store <2 x double> %call20, ptr %a, align 16, !tbaa !16
  %call21 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 2, i32 1))
  store <2 x double> %call21, ptr %b, align 16, !tbaa !16
  %call22 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 2, i32 2))
  store <2 x i64> %call22, ptr %c, align 16, !tbaa !16
  %8 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %9 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %10 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call23 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %8, <2 x double> noundef %9, <2 x i64> noundef %10, i32 noundef 105)
  store <2 x double> %call23, ptr %r, align 16, !tbaa !16
  br label %do.body24

do.body24:                                        ; preds = %do.end19
  %11 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call25 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 2, i32 4))
  %call26 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call27 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %11, <2 x double> noundef %call25, double noundef %call26, ptr noundef @.str.27, i32 noundef 3389, ptr noundef @.str.28, ptr noundef @.str.56)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %do.body24
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end30:                                         ; preds = %do.body24
  br label %do.cond31

do.cond31:                                        ; preds = %if.end30
  br label %do.end32

do.end32:                                         ; preds = %do.cond31
  %call33 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 3))
  store <2 x double> %call33, ptr %a, align 16, !tbaa !16
  %call34 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 3, i32 1))
  store <2 x double> %call34, ptr %b, align 16, !tbaa !16
  %call35 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 3, i32 2))
  store <2 x i64> %call35, ptr %c, align 16, !tbaa !16
  %12 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %13 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %14 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call36 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %12, <2 x double> noundef %13, <2 x i64> noundef %14, i32 noundef 80)
  store <2 x double> %call36, ptr %r, align 16, !tbaa !16
  br label %do.body37

do.body37:                                        ; preds = %do.end32
  %15 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call38 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 3, i32 4))
  %call39 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call40 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %15, <2 x double> noundef %call38, double noundef %call39, ptr noundef @.str.27, i32 noundef 3396, ptr noundef @.str.28, ptr noundef @.str.57)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %do.body37
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %do.body37
  br label %do.cond44

do.cond44:                                        ; preds = %if.end43
  br label %do.end45

do.end45:                                         ; preds = %do.cond44
  %call46 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 4))
  store <2 x double> %call46, ptr %a, align 16, !tbaa !16
  %call47 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 4, i32 1))
  store <2 x double> %call47, ptr %b, align 16, !tbaa !16
  %call48 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 4, i32 2))
  store <2 x i64> %call48, ptr %c, align 16, !tbaa !16
  %16 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %17 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call49 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %16, <2 x double> noundef %17, <2 x i64> noundef %18, i32 noundef 203)
  store <2 x double> %call49, ptr %r, align 16, !tbaa !16
  br label %do.body50

do.body50:                                        ; preds = %do.end45
  %19 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call51 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 4, i32 4))
  %call52 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call53 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %19, <2 x double> noundef %call51, double noundef %call52, ptr noundef @.str.27, i32 noundef 3402, ptr noundef @.str.28, ptr noundef @.str.58)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %do.body50
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %do.body50
  br label %do.cond57

do.cond57:                                        ; preds = %if.end56
  br label %do.end58

do.end58:                                         ; preds = %do.cond57
  %call59 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 5))
  store <2 x double> %call59, ptr %a, align 16, !tbaa !16
  %call60 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 5, i32 1))
  store <2 x double> %call60, ptr %b, align 16, !tbaa !16
  %call61 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 5, i32 2))
  store <2 x i64> %call61, ptr %c, align 16, !tbaa !16
  %20 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %21 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %22 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call62 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %20, <2 x double> noundef %21, <2 x i64> noundef %22, i32 noundef 85)
  store <2 x double> %call62, ptr %r, align 16, !tbaa !16
  br label %do.body63

do.body63:                                        ; preds = %do.end58
  %23 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call64 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 5, i32 4))
  %call65 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call66 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %23, <2 x double> noundef %call64, double noundef %call65, ptr noundef @.str.27, i32 noundef 3409, ptr noundef @.str.28, ptr noundef @.str.59)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %do.body63
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %do.body63
  br label %do.cond70

do.cond70:                                        ; preds = %if.end69
  br label %do.end71

do.end71:                                         ; preds = %do.cond70
  %call72 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 6))
  store <2 x double> %call72, ptr %a, align 16, !tbaa !16
  %call73 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 6, i32 1))
  store <2 x double> %call73, ptr %b, align 16, !tbaa !16
  %call74 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 6, i32 2))
  store <2 x i64> %call74, ptr %c, align 16, !tbaa !16
  %24 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %25 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %26 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call75 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %24, <2 x double> noundef %25, <2 x i64> noundef %26, i32 noundef 234)
  store <2 x double> %call75, ptr %r, align 16, !tbaa !16
  br label %do.body76

do.body76:                                        ; preds = %do.end71
  %27 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call77 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 6, i32 4))
  %call78 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call79 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %27, <2 x double> noundef %call77, double noundef %call78, ptr noundef @.str.27, i32 noundef 3415, ptr noundef @.str.28, ptr noundef @.str.60)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %do.body76
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end82:                                         ; preds = %do.body76
  br label %do.cond83

do.cond83:                                        ; preds = %if.end82
  br label %do.end84

do.end84:                                         ; preds = %do.cond83
  %call85 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 7))
  store <2 x double> %call85, ptr %a, align 16, !tbaa !16
  %call86 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 7, i32 1))
  store <2 x double> %call86, ptr %b, align 16, !tbaa !16
  %call87 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 7, i32 2))
  store <2 x i64> %call87, ptr %c, align 16, !tbaa !16
  %28 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %29 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %30 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call88 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %28, <2 x double> noundef %29, <2 x i64> noundef %30, i32 noundef 126)
  store <2 x double> %call88, ptr %r, align 16, !tbaa !16
  br label %do.body89

do.body89:                                        ; preds = %do.end84
  %31 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call90 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.21], ptr @test_simde_mm_fixupimm_sd.test_vec, i64 0, i64 7, i32 4))
  %call91 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call92 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %31, <2 x double> noundef %call90, double noundef %call91, ptr noundef @.str.27, i32 noundef 3422, ptr noundef @.str.28, ptr noundef @.str.61)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body89
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end95:                                         ; preds = %do.body89
  br label %do.cond96

do.cond96:                                        ; preds = %if.end95
  br label %do.end97

do.end97:                                         ; preds = %do.cond96
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %if.then94, %if.then81, %if.then68, %if.then55, %if.then42, %if.then29, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_fixupimm_sd() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %b = alloca <2 x double>, align 16
  %r = alloca <2 x double>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <2 x double> @simde_mm_loadu_pd(ptr noundef @test_simde_mm_mask_fixupimm_sd.test_vec)
  store <2 x double> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.22, ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i32 0, i32 2))
  store <2 x double> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.22, ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i32 0, i32 3))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %1 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %2 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %3 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %1, <2 x double> noundef %2, <2 x i64> noundef %3, i32 noundef 54)
  %call4 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %0, i8 noundef zeroext 110, <2 x double> noundef %call3)
  store <2 x double> %call4, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call5 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.22, ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i32 0, i32 5))
  %call6 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call7 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %4, <2 x double> noundef %call5, double noundef %call6, ptr noundef @.str.27, i32 noundef 3518, ptr noundef @.str.28, ptr noundef @.str.54)
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
  %call8 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 1))
  store <2 x double> %call8, ptr %a, align 16, !tbaa !16
  %call9 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 1, i32 2))
  store <2 x double> %call9, ptr %b, align 16, !tbaa !16
  %call10 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 1, i32 3))
  store <2 x i64> %call10, ptr %c, align 16, !tbaa !16
  %5 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %6 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %8 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call11 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %6, <2 x double> noundef %7, <2 x i64> noundef %8, i32 noundef 119)
  %call12 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %5, i8 noundef zeroext 18, <2 x double> noundef %call11)
  store <2 x double> %call12, ptr %r, align 16, !tbaa !16
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %9 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call14 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 1, i32 5))
  %call15 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call16 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %9, <2 x double> noundef %call14, double noundef %call15, ptr noundef @.str.27, i32 noundef 3524, ptr noundef @.str.28, ptr noundef @.str.55)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %call22 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 2))
  store <2 x double> %call22, ptr %a, align 16, !tbaa !16
  %call23 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 2, i32 2))
  store <2 x double> %call23, ptr %b, align 16, !tbaa !16
  %call24 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 2, i32 3))
  store <2 x i64> %call24, ptr %c, align 16, !tbaa !16
  %10 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %11 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %12 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %13 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call25 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %11, <2 x double> noundef %12, <2 x i64> noundef %13, i32 noundef 94)
  %call26 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %10, i8 noundef zeroext 50, <2 x double> noundef %call25)
  store <2 x double> %call26, ptr %r, align 16, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end21
  %14 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call28 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 2, i32 5))
  %call29 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call30 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %14, <2 x double> noundef %call28, double noundef %call29, ptr noundef @.str.27, i32 noundef 3531, ptr noundef @.str.28, ptr noundef @.str.56)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 3))
  store <2 x double> %call36, ptr %a, align 16, !tbaa !16
  %call37 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 3, i32 2))
  store <2 x double> %call37, ptr %b, align 16, !tbaa !16
  %call38 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 3, i32 3))
  store <2 x i64> %call38, ptr %c, align 16, !tbaa !16
  %15 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %16 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %17 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call39 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %16, <2 x double> noundef %17, <2 x i64> noundef %18, i32 noundef 220)
  %call40 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %15, i8 noundef zeroext -45, <2 x double> noundef %call39)
  store <2 x double> %call40, ptr %r, align 16, !tbaa !16
  br label %do.body41

do.body41:                                        ; preds = %do.end35
  %19 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call42 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 3, i32 5))
  %call43 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call44 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %19, <2 x double> noundef %call42, double noundef %call43, ptr noundef @.str.27, i32 noundef 3537, ptr noundef @.str.28, ptr noundef @.str.57)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %call50 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 4))
  store <2 x double> %call50, ptr %a, align 16, !tbaa !16
  %call51 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 4, i32 2))
  store <2 x double> %call51, ptr %b, align 16, !tbaa !16
  %call52 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 4, i32 3))
  store <2 x i64> %call52, ptr %c, align 16, !tbaa !16
  %20 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %21 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %22 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %23 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call53 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %21, <2 x double> noundef %22, <2 x i64> noundef %23, i32 noundef 114)
  %call54 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %20, i8 noundef zeroext -98, <2 x double> noundef %call53)
  store <2 x double> %call54, ptr %r, align 16, !tbaa !16
  br label %do.body55

do.body55:                                        ; preds = %do.end49
  %24 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call56 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 4, i32 5))
  %call57 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call58 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %24, <2 x double> noundef %call56, double noundef %call57, ptr noundef @.str.27, i32 noundef 3543, ptr noundef @.str.28, ptr noundef @.str.58)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %do.body55
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %call64 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 5))
  store <2 x double> %call64, ptr %a, align 16, !tbaa !16
  %call65 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 5, i32 2))
  store <2 x double> %call65, ptr %b, align 16, !tbaa !16
  %call66 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 5, i32 3))
  store <2 x i64> %call66, ptr %c, align 16, !tbaa !16
  %25 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %26 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %27 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %28 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call67 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %26, <2 x double> noundef %27, <2 x i64> noundef %28, i32 noundef 248)
  %call68 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %25, i8 noundef zeroext 34, <2 x double> noundef %call67)
  store <2 x double> %call68, ptr %r, align 16, !tbaa !16
  br label %do.body69

do.body69:                                        ; preds = %do.end63
  %29 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call70 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 5, i32 5))
  %call71 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call72 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %29, <2 x double> noundef %call70, double noundef %call71, ptr noundef @.str.27, i32 noundef 3549, ptr noundef @.str.28, ptr noundef @.str.59)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body69
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.body69
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 6))
  store <2 x double> %call78, ptr %a, align 16, !tbaa !16
  %call79 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 6, i32 2))
  store <2 x double> %call79, ptr %b, align 16, !tbaa !16
  %call80 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 6, i32 3))
  store <2 x i64> %call80, ptr %c, align 16, !tbaa !16
  %30 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %31 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %32 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %33 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call81 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %31, <2 x double> noundef %32, <2 x i64> noundef %33, i32 noundef 199)
  %call82 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %30, i8 noundef zeroext -5, <2 x double> noundef %call81)
  store <2 x double> %call82, ptr %r, align 16, !tbaa !16
  br label %do.body83

do.body83:                                        ; preds = %do.end77
  %34 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call84 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 6, i32 5))
  %call85 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call86 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %34, <2 x double> noundef %call84, double noundef %call85, ptr noundef @.str.27, i32 noundef 3555, ptr noundef @.str.28, ptr noundef @.str.60)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %call92 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 7))
  store <2 x double> %call92, ptr %a, align 16, !tbaa !16
  %call93 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 7, i32 2))
  store <2 x double> %call93, ptr %b, align 16, !tbaa !16
  %call94 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 7, i32 3))
  store <2 x i64> %call94, ptr %c, align 16, !tbaa !16
  %35 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %36 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %37 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %38 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call95 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %36, <2 x double> noundef %37, <2 x i64> noundef %38, i32 noundef 150)
  %call96 = call <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %35, i8 noundef zeroext -17, <2 x double> noundef %call95)
  store <2 x double> %call96, ptr %r, align 16, !tbaa !16
  br label %do.body97

do.body97:                                        ; preds = %do.end91
  %39 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call98 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.22], ptr @test_simde_mm_mask_fixupimm_sd.test_vec, i64 0, i64 7, i32 5))
  %call99 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call100 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %39, <2 x double> noundef %call98, double noundef %call99, ptr noundef @.str.27, i32 noundef 3561, ptr noundef @.str.28, ptr noundef @.str.61)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then102, %if.then88, %if.then74, %if.then60, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_maskz_fixupimm_sd() #3 {
entry:
  %retval = alloca i32, align 4
  %a = alloca <2 x double>, align 16
  %b = alloca <2 x double>, align 16
  %r = alloca <2 x double>, align 16
  %c = alloca <2 x i64>, align 16
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %c) #16
  %call = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.23, ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i32 0, i32 1))
  store <2 x double> %call, ptr %a, align 16, !tbaa !16
  %call1 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.23, ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i32 0, i32 2))
  store <2 x double> %call1, ptr %b, align 16, !tbaa !16
  %call2 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds (%struct.anon.23, ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i32 0, i32 3))
  store <2 x i64> %call2, ptr %c, align 16, !tbaa !16
  %0 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %1 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %0, <2 x double> noundef %1, <2 x i64> noundef %2, i32 noundef 144)
  %call4 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 74, <2 x double> noundef %call3)
  store <2 x double> %call4, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call5 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds (%struct.anon.23, ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i32 0, i32 5))
  %call6 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call7 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %3, <2 x double> noundef %call5, double noundef %call6, ptr noundef @.str.27, i32 noundef 3658, ptr noundef @.str.28, ptr noundef @.str.54)
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
  %call8 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 1, i32 1))
  store <2 x double> %call8, ptr %a, align 16, !tbaa !16
  %call9 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 1, i32 2))
  store <2 x double> %call9, ptr %b, align 16, !tbaa !16
  %call10 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 1, i32 3))
  store <2 x i64> %call10, ptr %c, align 16, !tbaa !16
  %4 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %5 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %6 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call11 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %4, <2 x double> noundef %5, <2 x i64> noundef %6, i32 noundef 226)
  %call12 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext -118, <2 x double> noundef %call11)
  store <2 x double> %call12, ptr %r, align 16, !tbaa !16
  br label %do.body13

do.body13:                                        ; preds = %do.end
  %7 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call14 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 1, i32 5))
  %call15 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call16 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %7, <2 x double> noundef %call14, double noundef %call15, ptr noundef @.str.27, i32 noundef 3665, ptr noundef @.str.28, ptr noundef @.str.55)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %do.body13
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.body13
  br label %do.cond20

do.cond20:                                        ; preds = %if.end19
  br label %do.end21

do.end21:                                         ; preds = %do.cond20
  %call22 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 2, i32 1))
  store <2 x double> %call22, ptr %a, align 16, !tbaa !16
  %call23 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 2, i32 2))
  store <2 x double> %call23, ptr %b, align 16, !tbaa !16
  %call24 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 2, i32 3))
  store <2 x i64> %call24, ptr %c, align 16, !tbaa !16
  %8 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %9 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %10 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call25 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %8, <2 x double> noundef %9, <2 x i64> noundef %10, i32 noundef 104)
  %call26 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext 87, <2 x double> noundef %call25)
  store <2 x double> %call26, ptr %r, align 16, !tbaa !16
  br label %do.body27

do.body27:                                        ; preds = %do.end21
  %11 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call28 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 2, i32 5))
  %call29 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call30 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %11, <2 x double> noundef %call28, double noundef %call29, ptr noundef @.str.27, i32 noundef 3672, ptr noundef @.str.28, ptr noundef @.str.56)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body27
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %do.body27
  br label %do.cond34

do.cond34:                                        ; preds = %if.end33
  br label %do.end35

do.end35:                                         ; preds = %do.cond34
  %call36 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 3, i32 1))
  store <2 x double> %call36, ptr %a, align 16, !tbaa !16
  %call37 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 3, i32 2))
  store <2 x double> %call37, ptr %b, align 16, !tbaa !16
  %call38 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 3, i32 3))
  store <2 x i64> %call38, ptr %c, align 16, !tbaa !16
  %12 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %13 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %14 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call39 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %12, <2 x double> noundef %13, <2 x i64> noundef %14, i32 noundef 59)
  %call40 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext -10, <2 x double> noundef %call39)
  store <2 x double> %call40, ptr %r, align 16, !tbaa !16
  br label %do.body41

do.body41:                                        ; preds = %do.end35
  %15 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call42 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 3, i32 5))
  %call43 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call44 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %15, <2 x double> noundef %call42, double noundef %call43, ptr noundef @.str.27, i32 noundef 3679, ptr noundef @.str.28, ptr noundef @.str.57)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %do.body41
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %do.body41
  br label %do.cond48

do.cond48:                                        ; preds = %if.end47
  br label %do.end49

do.end49:                                         ; preds = %do.cond48
  %call50 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 4, i32 1))
  store <2 x double> %call50, ptr %a, align 16, !tbaa !16
  %call51 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 4, i32 2))
  store <2 x double> %call51, ptr %b, align 16, !tbaa !16
  %call52 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 4, i32 3))
  store <2 x i64> %call52, ptr %c, align 16, !tbaa !16
  %16 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %17 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %18 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call53 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %16, <2 x double> noundef %17, <2 x i64> noundef %18, i32 noundef 134)
  %call54 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext -5, <2 x double> noundef %call53)
  store <2 x double> %call54, ptr %r, align 16, !tbaa !16
  br label %do.body55

do.body55:                                        ; preds = %do.end49
  %19 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call56 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 4, i32 5))
  %call57 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call58 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %19, <2 x double> noundef %call56, double noundef %call57, ptr noundef @.str.27, i32 noundef 3685, ptr noundef @.str.28, ptr noundef @.str.58)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %do.body55
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end61:                                         ; preds = %do.body55
  br label %do.cond62

do.cond62:                                        ; preds = %if.end61
  br label %do.end63

do.end63:                                         ; preds = %do.cond62
  %call64 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 5, i32 1))
  store <2 x double> %call64, ptr %a, align 16, !tbaa !16
  %call65 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 5, i32 2))
  store <2 x double> %call65, ptr %b, align 16, !tbaa !16
  %call66 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 5, i32 3))
  store <2 x i64> %call66, ptr %c, align 16, !tbaa !16
  %20 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %21 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %22 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call67 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %20, <2 x double> noundef %21, <2 x i64> noundef %22, i32 noundef 203)
  %call68 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext -26, <2 x double> noundef %call67)
  store <2 x double> %call68, ptr %r, align 16, !tbaa !16
  br label %do.body69

do.body69:                                        ; preds = %do.end63
  %23 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call70 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 5, i32 5))
  %call71 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call72 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %23, <2 x double> noundef %call70, double noundef %call71, ptr noundef @.str.27, i32 noundef 3691, ptr noundef @.str.28, ptr noundef @.str.59)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %do.body69
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end75:                                         ; preds = %do.body69
  br label %do.cond76

do.cond76:                                        ; preds = %if.end75
  br label %do.end77

do.end77:                                         ; preds = %do.cond76
  %call78 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 6, i32 1))
  store <2 x double> %call78, ptr %a, align 16, !tbaa !16
  %call79 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 6, i32 2))
  store <2 x double> %call79, ptr %b, align 16, !tbaa !16
  %call80 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 6, i32 3))
  store <2 x i64> %call80, ptr %c, align 16, !tbaa !16
  %24 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %25 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %26 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call81 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %24, <2 x double> noundef %25, <2 x i64> noundef %26, i32 noundef 198)
  %call82 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext -69, <2 x double> noundef %call81)
  store <2 x double> %call82, ptr %r, align 16, !tbaa !16
  br label %do.body83

do.body83:                                        ; preds = %do.end77
  %27 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call84 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 6, i32 5))
  %call85 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call86 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %27, <2 x double> noundef %call84, double noundef %call85, ptr noundef @.str.27, i32 noundef 3697, ptr noundef @.str.28, ptr noundef @.str.60)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body83
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end89:                                         ; preds = %do.body83
  br label %do.cond90

do.cond90:                                        ; preds = %if.end89
  br label %do.end91

do.end91:                                         ; preds = %do.cond90
  %call92 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 7, i32 1))
  store <2 x double> %call92, ptr %a, align 16, !tbaa !16
  %call93 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 7, i32 2))
  store <2 x double> %call93, ptr %b, align 16, !tbaa !16
  %call94 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 7, i32 3))
  store <2 x i64> %call94, ptr %c, align 16, !tbaa !16
  %28 = load <2 x double>, ptr %a, align 16, !tbaa !16
  %29 = load <2 x double>, ptr %b, align 16, !tbaa !16
  %30 = load <2 x i64>, ptr %c, align 16, !tbaa !16
  %call95 = call <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %28, <2 x double> noundef %29, <2 x i64> noundef %30, i32 noundef 180)
  %call96 = call <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext -21, <2 x double> noundef %call95)
  store <2 x double> %call96, ptr %r, align 16, !tbaa !16
  br label %do.body97

do.body97:                                        ; preds = %do.end91
  %31 = load <2 x double>, ptr %r, align 16, !tbaa !16
  %call98 = call <2 x double> @simde_mm_loadu_pd(ptr noundef getelementptr inbounds ([8 x %struct.anon.23], ptr @test_simde_mm_maskz_fixupimm_sd.test_vec, i64 0, i64 7, i32 5))
  %call99 = call double @simde_test_f64_precision_to_slop(i32 noundef 1)
  %call100 = call i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %31, <2 x double> noundef %call98, double noundef %call99, ptr noundef @.str.27, i32 noundef 3703, ptr noundef @.str.28, ptr noundef @.str.61)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %do.body97
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end103:                                        ; preds = %do.body97
  br label %do.cond104

do.cond104:                                       ; preds = %if.end103
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then102, %if.then88, %if.then74, %if.then60, %if.then46, %if.then32, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %c) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #16
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_mm_loadu_ps(ptr noundef %mem_addr) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde__m128_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 4 %0, i64 16, i1 false)
  %1 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %call = call <4 x float> @simde__m128_from_private(double %2, double %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  ret <4 x float> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_loadu_epi32(ptr noundef %mem_addr) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde__m128i_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %1 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %call = call <2 x i64> @simde__m128i_from_private(double %2, double %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_mm_fixupimm_ps(<4 x float> noundef %a, <4 x float> noundef %b, <2 x i64> noundef %c, i32 noundef %imm8) #6 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %b.addr = alloca <4 x float>, align 16
  %c.addr = alloca <2 x i64>, align 16
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m128_private, align 16
  %a_ = alloca %union.simde__m128_private, align 16
  %b_ = alloca %union.simde__m128_private, align 16
  %s_ = alloca %union.simde__m128_private, align 16
  %c_ = alloca %union.simde__m128i_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %select = alloca i32, align 4
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  store <4 x float> %b, ptr %b.addr, align 16, !tbaa !16
  store <2 x i64> %c, ptr %c.addr, align 16, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  %0 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %1 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128_to_private(<4 x float> noundef %1)
  %coerce.dive = getelementptr inbounds %union.simde__m128_private, ptr %a_, i32 0, i32 0
  %2 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %3 = extractvalue { double, double } %call, 0
  store double %3, ptr %2, align 16
  %4 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %5 = extractvalue { double, double } %call, 1
  store double %5, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #16
  %6 = load <4 x float>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128_to_private(<4 x float> noundef %6)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128_private, ptr %b_, i32 0, i32 0
  %7 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %8 = extractvalue { double, double } %call1, 0
  store double %8, ptr %7, align 16
  %9 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %10 = extractvalue { double, double } %call1, 1
  store double %10, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %s_) #16
  %11 = load <4 x float>, ptr %b.addr, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_x_mm_flushsubnormal_ps(<4 x float> noundef %11)
  %call4 = call { double, double } @simde__m128_to_private(<4 x float> noundef %call3)
  %coerce.dive5 = getelementptr inbounds %union.simde__m128_private, ptr %s_, i32 0, i32 0
  %12 = getelementptr inbounds { double, double }, ptr %coerce.dive5, i32 0, i32 0
  %13 = extractvalue { double, double } %call4, 0
  store double %13, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %coerce.dive5, i32 0, i32 1
  %15 = extractvalue { double, double } %call4, 1
  store double %15, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %c_) #16
  %16 = load <2 x i64>, ptr %c.addr, align 16, !tbaa !16
  %call6 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %16)
  %coerce.dive7 = getelementptr inbounds %union.simde__m128i_private, ptr %c_, i32 0, i32 0
  %17 = getelementptr inbounds { double, double }, ptr %coerce.dive7, i32 0, i32 0
  %18 = extractvalue { double, double } %call6, 0
  store double %18, ptr %17, align 16
  %19 = getelementptr inbounds { double, double }, ptr %coerce.dive7, i32 0, i32 1
  %20 = extractvalue { double, double } %call6, 1
  store double %20, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %21 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %cmp = icmp ult i64 %21, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %mul = mul i64 %22, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %select) #16, !llvm.access.group !17
  store i32 1, ptr %select, align 4, !tbaa !5, !llvm.access.group !17
  %23 = load <4 x float>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !17
  %24 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext = extractelement <4 x float> %23, i64 %24
  %call8 = call i32 @simde_math_fpclassifyf(float noundef %vecext), !llvm.access.group !17
  switch i32 %call8, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb14
    i32 0, label %sw.bb15
    i32 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %omp.inner.for.body
  %25 = load <4 x float>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !17
  %26 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext9 = extractelement <4 x float> %25, i64 %26
  %cmp10 = fcmp olt float %vecext9, 0.000000e+00
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %27 = load <4 x float>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !17
  %28 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext11 = extractelement <4 x float> %27, i64 %28
  %cmp12 = fcmp oeq float %vecext11, 1.000000e+00
  %29 = zext i1 %cmp12 to i64
  %cond = select i1 %cmp12, i32 3, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ 6, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond13, ptr %select, align 4, !tbaa !5, !llvm.access.group !17
  br label %sw.epilog

sw.bb14:                                          ; preds = %omp.inner.for.body
  store i32 2, ptr %select, align 4, !tbaa !5, !llvm.access.group !17
  br label %sw.epilog

sw.bb15:                                          ; preds = %omp.inner.for.body
  store i32 0, ptr %select, align 4, !tbaa !5, !llvm.access.group !17
  br label %sw.epilog

sw.bb16:                                          ; preds = %omp.inner.for.body
  %30 = load <4 x float>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !17
  %31 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext17 = extractelement <4 x float> %30, i64 %31
  %cmp18 = fcmp ogt float %vecext17, 0.000000e+00
  %32 = zext i1 %cmp18 to i64
  %cond19 = select i1 %cmp18, i32 5, i32 4
  store i32 %cond19, ptr %select, align 4, !tbaa !5, !llvm.access.group !17
  br label %sw.epilog

sw.epilog:                                        ; preds = %omp.inner.for.body, %sw.bb16, %sw.bb15, %sw.bb14, %cond.end
  %33 = load <4 x i32>, ptr %c_, align 16, !tbaa !16, !llvm.access.group !17
  %34 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext20 = extractelement <4 x i32> %33, i64 %34
  %35 = load i32, ptr %select, align 4, !tbaa !5, !llvm.access.group !17
  %shl = shl i32 %35, 2
  %shr = ashr i32 %vecext20, %shl
  %and = and i32 %shr, 15
  switch i32 %and, label %sw.epilog57 [
    i32 0, label %sw.bb21
    i32 1, label %sw.bb23
    i32 2, label %sw.bb26
    i32 3, label %sw.bb28
    i32 4, label %sw.bb30
    i32 5, label %sw.bb32
    i32 6, label %sw.bb34
    i32 7, label %sw.bb39
    i32 8, label %sw.bb41
    i32 9, label %sw.bb43
    i32 10, label %sw.bb45
    i32 11, label %sw.bb47
    i32 12, label %sw.bb49
    i32 13, label %sw.bb51
    i32 14, label %sw.bb53
    i32 15, label %sw.bb55
  ]

sw.bb21:                                          ; preds = %sw.epilog
  %36 = load <4 x float>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !17
  %37 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext22 = extractelement <4 x float> %36, i64 %37
  %38 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %39 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins = insertelement <4 x float> %39, float %vecext22, i64 %38
  store <4 x float> %vecins, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb23:                                          ; preds = %sw.epilog
  %40 = load <4 x float>, ptr %b_, align 16, !tbaa !16, !llvm.access.group !17
  %41 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext24 = extractelement <4 x float> %40, i64 %41
  %42 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %43 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins25 = insertelement <4 x float> %43, float %vecext24, i64 %42
  store <4 x float> %vecins25, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb26:                                          ; preds = %sw.epilog
  %44 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %45 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins27 = insertelement <4 x float> %45, float 0x7FF8000000000000, i64 %44
  store <4 x float> %vecins27, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb28:                                          ; preds = %sw.epilog
  %46 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %47 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins29 = insertelement <4 x float> %47, float 0xFFF8000000000000, i64 %46
  store <4 x float> %vecins29, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb30:                                          ; preds = %sw.epilog
  %48 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %49 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins31 = insertelement <4 x float> %49, float 0xFFF0000000000000, i64 %48
  store <4 x float> %vecins31, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb32:                                          ; preds = %sw.epilog
  %50 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %51 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins33 = insertelement <4 x float> %51, float 0x7FF0000000000000, i64 %50
  store <4 x float> %vecins33, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb34:                                          ; preds = %sw.epilog
  %52 = load <4 x float>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !17
  %53 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %vecext35 = extractelement <4 x float> %52, i64 %53
  %cmp36 = fcmp olt float %vecext35, 0.000000e+00
  %54 = zext i1 %cmp36 to i64
  %cond37 = select i1 %cmp36, float 0xFFF0000000000000, float 0x7FF0000000000000
  %55 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %56 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins38 = insertelement <4 x float> %56, float %cond37, i64 %55
  store <4 x float> %vecins38, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb39:                                          ; preds = %sw.epilog
  %57 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %58 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins40 = insertelement <4 x float> %58, float -0.000000e+00, i64 %57
  store <4 x float> %vecins40, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb41:                                          ; preds = %sw.epilog
  %59 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %60 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins42 = insertelement <4 x float> %60, float 0.000000e+00, i64 %59
  store <4 x float> %vecins42, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb43:                                          ; preds = %sw.epilog
  %61 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %62 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins44 = insertelement <4 x float> %62, float -1.000000e+00, i64 %61
  store <4 x float> %vecins44, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb45:                                          ; preds = %sw.epilog
  %63 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %64 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins46 = insertelement <4 x float> %64, float 1.000000e+00, i64 %63
  store <4 x float> %vecins46, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb47:                                          ; preds = %sw.epilog
  %65 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %66 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins48 = insertelement <4 x float> %66, float 5.000000e-01, i64 %65
  store <4 x float> %vecins48, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb49:                                          ; preds = %sw.epilog
  %67 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %68 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins50 = insertelement <4 x float> %68, float 9.000000e+01, i64 %67
  store <4 x float> %vecins50, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb51:                                          ; preds = %sw.epilog
  %69 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %70 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins52 = insertelement <4 x float> %70, float 0x3FF921FB60000000, i64 %69
  store <4 x float> %vecins52, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb53:                                          ; preds = %sw.epilog
  %71 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %72 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins54 = insertelement <4 x float> %72, float 0x47EFFFFFE0000000, i64 %71
  store <4 x float> %vecins54, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.bb55:                                          ; preds = %sw.epilog
  %73 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !17
  %74 = load <4 x float>, ptr %r_, align 16, !llvm.access.group !17
  %vecins56 = insertelement <4 x float> %74, float 0xC7EFFFFFE0000000, i64 %73
  store <4 x float> %vecins56, ptr %r_, align 16, !llvm.access.group !17
  br label %sw.epilog57

sw.epilog57:                                      ; preds = %sw.epilog, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb23, %sw.bb21
  call void @llvm.lifetime.end.p0(i64 4, ptr %select) #16, !llvm.access.group !17
  br label %omp.body.continue

omp.body.continue:                                ; preds = %sw.epilog57
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %75 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  %add58 = add i64 %75, 1
  store i64 %add58, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !17
  br label %omp.inner.for.cond, !llvm.loop !18

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %76 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %77 = load double, ptr %76, align 16
  %78 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %79 = load double, ptr %78, align 8
  %call59 = call <4 x float> @simde__m128_from_private(double %77, double %79)
  call void @llvm.lifetime.end.p0(i64 16, ptr %c_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %s_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  ret <4 x float> %call59
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_f32x4_(<4 x float> noundef %a, <4 x float> noundef %b, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
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
  store float %slop, ptr %slop.addr, align 4, !tbaa !21
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #16
  %arraydecay = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %0 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_ps(ptr noundef %arraydecay, <4 x float> noundef %0)
  %arraydecay1 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %1 = load <4 x float>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_ps(ptr noundef %arraydecay1, <4 x float> noundef %1)
  %arraydecay2 = getelementptr inbounds [4 x float], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [4 x float], ptr %b_, i64 0, i64 0
  %2 = load float, ptr %slop.addr, align 4, !tbaa !21
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf32_(i64 noundef 4, ptr noundef %arraydecay2, ptr noundef %arraydecay3, float noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
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
  %call = call float @powf(float noundef 1.000000e+01, float noundef %fneg) #16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret float %cond
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde__m128_from_private(double %v.coerce0, double %v.coerce1) #6 {
entry:
  %v = alloca %union.simde__m128_private, align 16
  %r = alloca <4 x float>, align 16
  %0 = getelementptr inbounds { double, double }, ptr %v, i32 0, i32 0
  store double %v.coerce0, ptr %0, align 16
  %1 = getelementptr inbounds { double, double }, ptr %v, i32 0, i32 1
  store double %v.coerce1, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %v, i64 16, i1 false)
  %2 = load <4 x float>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  ret <4 x float> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde__m128i_from_private(double %v.coerce0, double %v.coerce1) #6 {
entry:
  %v = alloca %union.simde__m128i_private, align 16
  %r = alloca <2 x i64>, align 16
  %0 = getelementptr inbounds { double, double }, ptr %v, i32 0, i32 0
  store double %v.coerce0, ptr %0, align 16
  %1 = getelementptr inbounds { double, double }, ptr %v, i32 0, i32 1
  store double %v.coerce1, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %v, i64 16, i1 false)
  %2 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal { double, double } @simde__m128_to_private(<4 x float> noundef %v) #6 {
entry:
  %retval = alloca %union.simde__m128_private, align 16
  %v.addr = alloca <4 x float>, align 16
  store <4 x float> %v, ptr %v.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %v.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde__m128_private, ptr %retval, i32 0, i32 0
  %0 = load { double, double }, ptr %coerce.dive, align 16
  ret { double, double } %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_x_mm_flushsubnormal_ps(<4 x float> noundef %a) #6 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %a_ = alloca %union.simde__m128_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %0 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128_to_private(<4 x float> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %cmp = icmp ult i64 %5, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %6 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %mul = mul i64 %6, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %7 = load <4 x float>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !23
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %vecext = extractelement <4 x float> %7, i64 %8
  %iszero = fcmp oeq float %vecext, 0.000000e+00
  br i1 %iszero, label %fpclassify_end, label %fpclassify_not_zero

fpclassify_end:                                   ; preds = %fpclassify_not_inf, %fpclassify_not_nan, %fpclassify_not_zero, %omp.inner.for.body
  %fpclassify_result = phi i32 [ 0, %omp.inner.for.body ], [ 0, %fpclassify_not_zero ], [ 0, %fpclassify_not_nan ], [ %15, %fpclassify_not_inf ]
  %tobool = icmp ne i32 %fpclassify_result, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fpclassify_end
  br label %cond.end

cond.false:                                       ; preds = %fpclassify_end
  %9 = load <4 x float>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !23
  %10 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %vecext2 = extractelement <4 x float> %9, i64 %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %vecext2, %cond.false ]
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !23
  %12 = load <4 x float>, ptr %a_, align 16, !llvm.access.group !23
  %vecins = insertelement <4 x float> %12, float %cond, i64 %11
  store <4 x float> %vecins, ptr %a_, align 16, !llvm.access.group !23
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  %add3 = add i64 %13, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !23
  br label %omp.inner.for.cond, !llvm.loop !24

fpclassify_not_zero:                              ; preds = %omp.inner.for.body
  %cmp1 = fcmp uno float %vecext, %vecext
  br i1 %cmp1, label %fpclassify_end, label %fpclassify_not_nan

fpclassify_not_nan:                               ; preds = %fpclassify_not_zero
  %14 = call float @llvm.fabs.f32(float %vecext) #17
  %isinf = fcmp oeq float %14, 0x7FF0000000000000
  br i1 %isinf, label %fpclassify_end, label %fpclassify_not_inf

fpclassify_not_inf:                               ; preds = %fpclassify_not_nan
  %isnormal = fcmp uge float %14, 0x3810000000000000
  %15 = select i1 %isnormal, i32 0, i32 1
  br label %fpclassify_end

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %16 = getelementptr inbounds { double, double }, ptr %a_, i32 0, i32 0
  %17 = load double, ptr %16, align 16
  %18 = getelementptr inbounds { double, double }, ptr %a_, i32 0, i32 1
  %19 = load double, ptr %18, align 8
  %call4 = call <4 x float> @simde__m128_from_private(double %17, double %19)
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  ret <4 x float> %call4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal { double, double } @simde__m128i_to_private(<2 x i64> noundef %v) #6 {
entry:
  %retval = alloca %union.simde__m128i_private, align 16
  %v.addr = alloca <2 x i64>, align 16
  store <2 x i64> %v, ptr %v.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %v.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %retval, i32 0, i32 0
  %0 = load { double, double }, ptr %coerce.dive, align 16
  ret { double, double } %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @simde_math_fpclassifyf(float noundef %v) #8 {
entry:
  %v.addr = alloca float, align 4
  store float %v, ptr %v.addr, align 4, !tbaa !21
  %0 = load float, ptr %v.addr, align 4, !tbaa !21
  %iszero = fcmp oeq float %0, 0.000000e+00
  br i1 %iszero, label %fpclassify_end, label %fpclassify_not_zero

fpclassify_end:                                   ; preds = %fpclassify_not_inf, %fpclassify_not_nan, %fpclassify_not_zero, %entry
  %fpclassify_result = phi i32 [ 2, %entry ], [ 0, %fpclassify_not_zero ], [ 1, %fpclassify_not_nan ], [ %2, %fpclassify_not_inf ]
  ret i32 %fpclassify_result

fpclassify_not_zero:                              ; preds = %entry
  %cmp = fcmp uno float %0, %0
  br i1 %cmp, label %fpclassify_end, label %fpclassify_not_nan

fpclassify_not_nan:                               ; preds = %fpclassify_not_zero
  %1 = call float @llvm.fabs.f32(float %0) #17
  %isinf = fcmp oeq float %1, 0x7FF0000000000000
  br i1 %isinf, label %fpclassify_end, label %fpclassify_not_inf

fpclassify_not_inf:                               ; preds = %fpclassify_not_nan
  %isnormal = fcmp uge float %1, 0x3810000000000000
  %2 = select i1 %isnormal, i32 4, i32 3
  br label %fpclassify_end
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm_storeu_ps(ptr noundef %mem_addr, <4 x float> noundef %a) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <4 x float>, align 16
  %a_ = alloca %union.simde__m128_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %0 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128_to_private(<4 x float> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  %5 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 16 %a_, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
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
  store float %slop, ptr %slop.addr, align 4, !tbaa !21
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
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
  %6 = load float, ptr %arrayidx, align 4, !tbaa !21
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds float, ptr %7, i64 %8
  %9 = load float, ptr %arrayidx1, align 4, !tbaa !21
  %10 = load float, ptr %slop.addr, align 4, !tbaa !21
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
  %19 = load float, ptr %arrayidx5, align 4, !tbaa !21
  %conv6 = fpext float %19 to double
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds float, ptr %20, i64 %21
  %22 = load float, ptr %arrayidx7, align 4, !tbaa !21
  %conv8 = fpext float %22 to double
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.37, ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, double noundef %conv6, double noundef %conv8)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
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
  store float %a, ptr %a.addr, align 4, !tbaa !21
  store float %b, ptr %b.addr, align 4, !tbaa !21
  store float %slop, ptr %slop.addr, align 4, !tbaa !21
  %0 = load float, ptr %a.addr, align 4, !tbaa !21
  %1 = call i1 @llvm.is.fpclass.f32(float %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, ptr %b.addr, align 4, !tbaa !21
  %3 = call i1 @llvm.is.fpclass.f32(float %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load float, ptr %a.addr, align 4, !tbaa !21
  %6 = call i1 @llvm.is.fpclass.f32(float %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load float, ptr %a.addr, align 4, !tbaa !21
  %8 = load float, ptr %b.addr, align 4, !tbaa !21
  %cmp = fcmp olt float %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load float, ptr %a.addr, align 4, !tbaa !21
  %10 = load float, ptr %b.addr, align 4, !tbaa !21
  %cmp2 = fcmp ogt float %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load float, ptr %slop.addr, align 4, !tbaa !21
  %cmp4 = fcmp oeq float %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 4) #16
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #16
  %13 = load float, ptr %a.addr, align 4, !tbaa !21
  %14 = load float, ptr %slop.addr, align 4, !tbaa !21
  %sub = fsub float %13, %14
  store float %sub, ptr %lo, align 4, !tbaa !21
  %15 = load float, ptr %lo, align 4, !tbaa !21
  %16 = load float, ptr %a.addr, align 4, !tbaa !21
  %cmp9 = fcmp oeq float %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext13 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else8
  %17 = load float, ptr %a.addr, align 4, !tbaa !21
  %call16 = call float @nextafterf(float noundef %17, float noundef 0xFFF0000000000000) #16
  store float %call16, ptr %lo, align 4, !tbaa !21
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else8
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #16
  %18 = load float, ptr %a.addr, align 4, !tbaa !21
  %19 = load float, ptr %slop.addr, align 4, !tbaa !21
  %add = fadd float %18, %19
  store float %add, ptr %hi, align 4, !tbaa !21
  %20 = load float, ptr %hi, align 4, !tbaa !21
  %21 = load float, ptr %a.addr, align 4, !tbaa !21
  %cmp17 = fcmp oeq float %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %22 = load float, ptr %a.addr, align 4, !tbaa !21
  %call27 = call float @nextafterf(float noundef %22, float noundef 0x7FF0000000000000) #16
  store float %call27, ptr %hi, align 4, !tbaa !21
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %23 = load float, ptr %b.addr, align 4, !tbaa !21
  %24 = load float, ptr %lo, align 4, !tbaa !21
  %cmp29 = fcmp oge float %23, %24
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  %25 = load float, ptr %b.addr, align 4, !tbaa !21
  %26 = load float, ptr %hi, align 4, !tbaa !21
  %cmp31 = fcmp ole float %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %27 = phi i1 [ false, %if.end28 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #16
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #16
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
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #9

; Function Attrs: nounwind
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #11

; Function Attrs: nounwind
declare float @nextafterf(float noundef, float noundef) #11

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare float @powf(float noundef, float noundef) #11

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_mm_mask_mov_ps(<4 x float> noundef %src, i8 noundef zeroext %k, <4 x float> noundef %a) #6 {
entry:
  %src.addr = alloca <4 x float>, align 16
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x float>, align 16
  store <4 x float> %src, ptr %src.addr, align 16, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load <4 x float>, ptr %src.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_mm_castps_si128(<4 x float> noundef %0)
  %1 = load i8, ptr %k.addr, align 1, !tbaa !16
  %2 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  %call1 = call <2 x i64> @simde_mm_castps_si128(<4 x float> noundef %2)
  %call2 = call <2 x i64> @simde_mm_mask_mov_epi32(<2 x i64> noundef %call, i8 noundef zeroext %1, <2 x i64> noundef %call1)
  %call3 = call <4 x float> @simde_mm_castsi128_ps(<2 x i64> noundef %call2)
  ret <4 x float> %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_mm_castsi128_ps(<2 x i64> noundef %a) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %r = alloca <4 x float>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %a.addr, i64 16, i1 false)
  %0 = load <4 x float>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  ret <4 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_mask_mov_epi32(<2 x i64> noundef %src, i8 noundef zeroext %k, <2 x i64> noundef %a) #6 {
entry:
  %src.addr = alloca <2 x i64>, align 16
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %src_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store <2 x i64> %src, ptr %src.addr, align 16, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %src_) #16
  %0 = load <2 x i64>, ptr %src.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %src_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %5 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !26
  %cmp = icmp ult i64 %10, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !26
  %mul = mul i64 %11, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %12 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !26
  %conv = zext i8 %12 to i32
  %13 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %sh_prom = trunc i64 %13 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %14 = load <4 x i32>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !26
  %15 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %vecext = extractelement <4 x i32> %14, i64 %15
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  %16 = load <4 x i32>, ptr %src_, align 16, !tbaa !16, !llvm.access.group !26
  %17 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %vecext3 = extractelement <4 x i32> %16, i64 %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %vecext, %cond.true ], [ %vecext3, %cond.false ]
  %18 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !26
  %19 = load <4 x i32>, ptr %r_, align 16, !llvm.access.group !26
  %vecins = insertelement <4 x i32> %19, i32 %cond, i64 %18
  store <4 x i32> %vecins, ptr %r_, align 16, !llvm.access.group !26
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !26
  %add4 = add i64 %20, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !26
  br label %omp.inner.for.cond, !llvm.loop !27

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %21 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %22 = load double, ptr %21, align 16
  %23 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %24 = load double, ptr %23, align 8
  %call5 = call <2 x i64> @simde__m128i_from_private(double %22, double %24)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %src_) #16
  ret <2 x i64> %call5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_castps_si128(<4 x float> noundef %a) #6 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %r = alloca <2 x i64>, align 16
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %a.addr, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_mm_maskz_mov_ps(i8 noundef zeroext %k, <4 x float> noundef %a) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x float>, align 16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load i8, ptr %k.addr, align 1, !tbaa !16
  %1 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_mm_castps_si128(<4 x float> noundef %1)
  %call1 = call <2 x i64> @simde_mm_maskz_mov_epi32(i8 noundef zeroext %0, <2 x i64> noundef %call)
  %call2 = call <4 x float> @simde_mm_castsi128_ps(<2 x i64> noundef %call1)
  ret <4 x float> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_maskz_mov_epi32(i8 noundef zeroext %k, <2 x i64> noundef %a) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !29
  %cmp = icmp ult i64 %5, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %6 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !29
  %mul = mul i64 %6, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !29
  %7 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !29
  %conv = zext i8 %7 to i32
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !29
  %sh_prom = trunc i64 %8 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %9 = load <4 x i32>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !29
  %10 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !29
  %vecext = extractelement <4 x i32> %9, i64 %10
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %vecext, %cond.true ], [ 0, %cond.false ]
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !29
  %12 = load <4 x i32>, ptr %r_, align 16, !llvm.access.group !29
  %vecins = insertelement <4 x i32> %12, i32 %cond, i64 %11
  store <4 x i32> %vecins, ptr %r_, align 16, !llvm.access.group !29
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !29
  %add1 = add i64 %13, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !29
  br label %omp.inner.for.cond, !llvm.loop !30

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %15 = load double, ptr %14, align 16
  %16 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %17 = load double, ptr %16, align 8
  %call2 = call <2 x i64> @simde__m128i_from_private(double %15, double %17)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  ret <2 x i64> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @simde_mm256_loadu_ps(ptr noundef %a) #12 {
entry:
  %a.addr = alloca ptr, align 8
  %r = alloca <8 x float>, align 32
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 4 %0, i64 32, i1 false)
  %1 = load <8 x float>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %mem_addr) #12 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <4 x i64>, align 32
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 1 %0, i64 32, i1 false)
  %1 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @simde_mm256_fixupimm_ps(ptr noundef byval(<8 x float>) align 32 %0, ptr noundef byval(<8 x float>) align 32 %1, ptr noundef byval(<4 x i64>) align 32 %2, i32 noundef %imm8) #12 {
entry:
  %a.addr = alloca <8 x float>, align 32
  %b.addr = alloca <8 x float>, align 32
  %c.addr = alloca <4 x i64>, align 32
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m256_private, align 32
  %a_ = alloca %union.simde__m256_private, align 32
  %indirect-arg-temp = alloca <8 x float>, align 32
  %b_ = alloca %union.simde__m256_private, align 32
  %indirect-arg-temp1 = alloca <8 x float>, align 32
  %s_ = alloca %union.simde__m256_private, align 32
  %indirect-arg-temp2 = alloca <8 x float>, align 32
  %indirect-arg-temp3 = alloca <8 x float>, align 32
  %c_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %select = alloca i32, align 4
  %a = load <8 x float>, ptr %0, align 32, !tbaa !16
  %b = load <8 x float>, ptr %1, align 32, !tbaa !16
  %c = load <4 x i64>, ptr %2, align 32, !tbaa !16
  store <8 x float> %a, ptr %a.addr, align 32, !tbaa !16
  store <8 x float> %b, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %c, ptr %c.addr, align 32, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  %3 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  %4 = load <8 x float>, ptr %a.addr, align 32, !tbaa !16
  store <8 x float> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256_to_private(ptr sret(%union.simde__m256_private) align 32 %a_, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #16
  %5 = load <8 x float>, ptr %b.addr, align 32, !tbaa !16
  store <8 x float> %5, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256_to_private(ptr sret(%union.simde__m256_private) align 32 %b_, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 32, ptr %s_) #16
  %6 = load <8 x float>, ptr %b.addr, align 32, !tbaa !16
  store <8 x float> %6, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call = call <8 x float> @simde_x_mm256_flushsubnormal_ps(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp2)
  store <8 x float> %call, ptr %indirect-arg-temp3, align 32, !tbaa !16
  call void @simde__m256_to_private(ptr sret(%union.simde__m256_private) align 32 %s_, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp3)
  call void @llvm.lifetime.start.p0(i64 32, ptr %c_) #16
  %7 = load <4 x i64>, ptr %c.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %c_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %cmp = icmp ult i64 %8, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %9 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %mul = mul i64 %9, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %select) #16, !llvm.access.group !32
  store i32 1, ptr %select, align 4, !tbaa !5, !llvm.access.group !32
  %10 = load <8 x float>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !32
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext = extractelement <8 x float> %10, i64 %11
  %call5 = call i32 @simde_math_fpclassifyf(float noundef %vecext), !llvm.access.group !32
  switch i32 %call5, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb11
    i32 0, label %sw.bb12
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %omp.inner.for.body
  %12 = load <8 x float>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !32
  %13 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext6 = extractelement <8 x float> %12, i64 %13
  %cmp7 = fcmp olt float %vecext6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %14 = load <8 x float>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !32
  %15 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext8 = extractelement <8 x float> %14, i64 %15
  %cmp9 = fcmp oeq float %vecext8, 1.000000e+00
  %16 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 3, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ 6, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond10, ptr %select, align 4, !tbaa !5, !llvm.access.group !32
  br label %sw.epilog

sw.bb11:                                          ; preds = %omp.inner.for.body
  store i32 2, ptr %select, align 4, !tbaa !5, !llvm.access.group !32
  br label %sw.epilog

sw.bb12:                                          ; preds = %omp.inner.for.body
  store i32 0, ptr %select, align 4, !tbaa !5, !llvm.access.group !32
  br label %sw.epilog

sw.bb13:                                          ; preds = %omp.inner.for.body
  %17 = load <8 x float>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !32
  %18 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext14 = extractelement <8 x float> %17, i64 %18
  %cmp15 = fcmp ogt float %vecext14, 0.000000e+00
  %19 = zext i1 %cmp15 to i64
  %cond16 = select i1 %cmp15, i32 5, i32 4
  store i32 %cond16, ptr %select, align 4, !tbaa !5, !llvm.access.group !32
  br label %sw.epilog

sw.epilog:                                        ; preds = %omp.inner.for.body, %sw.bb13, %sw.bb12, %sw.bb11, %cond.end
  %20 = load <8 x i32>, ptr %c_, align 32, !tbaa !16, !llvm.access.group !32
  %21 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext17 = extractelement <8 x i32> %20, i64 %21
  %22 = load i32, ptr %select, align 4, !tbaa !5, !llvm.access.group !32
  %shl = shl i32 %22, 2
  %shr = ashr i32 %vecext17, %shl
  %and = and i32 %shr, 15
  switch i32 %and, label %sw.epilog54 [
    i32 0, label %sw.bb18
    i32 1, label %sw.bb20
    i32 2, label %sw.bb23
    i32 3, label %sw.bb25
    i32 4, label %sw.bb27
    i32 5, label %sw.bb29
    i32 6, label %sw.bb31
    i32 7, label %sw.bb36
    i32 8, label %sw.bb38
    i32 9, label %sw.bb40
    i32 10, label %sw.bb42
    i32 11, label %sw.bb44
    i32 12, label %sw.bb46
    i32 13, label %sw.bb48
    i32 14, label %sw.bb50
    i32 15, label %sw.bb52
  ]

sw.bb18:                                          ; preds = %sw.epilog
  %23 = load <8 x float>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !32
  %24 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext19 = extractelement <8 x float> %23, i64 %24
  %25 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %26 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins = insertelement <8 x float> %26, float %vecext19, i64 %25
  store <8 x float> %vecins, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb20:                                          ; preds = %sw.epilog
  %27 = load <8 x float>, ptr %b_, align 32, !tbaa !16, !llvm.access.group !32
  %28 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext21 = extractelement <8 x float> %27, i64 %28
  %29 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %30 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins22 = insertelement <8 x float> %30, float %vecext21, i64 %29
  store <8 x float> %vecins22, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb23:                                          ; preds = %sw.epilog
  %31 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %32 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins24 = insertelement <8 x float> %32, float 0x7FF8000000000000, i64 %31
  store <8 x float> %vecins24, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb25:                                          ; preds = %sw.epilog
  %33 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %34 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins26 = insertelement <8 x float> %34, float 0xFFF8000000000000, i64 %33
  store <8 x float> %vecins26, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb27:                                          ; preds = %sw.epilog
  %35 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %36 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins28 = insertelement <8 x float> %36, float 0xFFF0000000000000, i64 %35
  store <8 x float> %vecins28, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb29:                                          ; preds = %sw.epilog
  %37 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %38 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins30 = insertelement <8 x float> %38, float 0x7FF0000000000000, i64 %37
  store <8 x float> %vecins30, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb31:                                          ; preds = %sw.epilog
  %39 = load <8 x float>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !32
  %40 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %vecext32 = extractelement <8 x float> %39, i64 %40
  %cmp33 = fcmp olt float %vecext32, 0.000000e+00
  %41 = zext i1 %cmp33 to i64
  %cond34 = select i1 %cmp33, float 0xFFF0000000000000, float 0x7FF0000000000000
  %42 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %43 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins35 = insertelement <8 x float> %43, float %cond34, i64 %42
  store <8 x float> %vecins35, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb36:                                          ; preds = %sw.epilog
  %44 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %45 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins37 = insertelement <8 x float> %45, float -0.000000e+00, i64 %44
  store <8 x float> %vecins37, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb38:                                          ; preds = %sw.epilog
  %46 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %47 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins39 = insertelement <8 x float> %47, float 0.000000e+00, i64 %46
  store <8 x float> %vecins39, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb40:                                          ; preds = %sw.epilog
  %48 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %49 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins41 = insertelement <8 x float> %49, float -1.000000e+00, i64 %48
  store <8 x float> %vecins41, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb42:                                          ; preds = %sw.epilog
  %50 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %51 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins43 = insertelement <8 x float> %51, float 1.000000e+00, i64 %50
  store <8 x float> %vecins43, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb44:                                          ; preds = %sw.epilog
  %52 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %53 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins45 = insertelement <8 x float> %53, float 5.000000e-01, i64 %52
  store <8 x float> %vecins45, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb46:                                          ; preds = %sw.epilog
  %54 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %55 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins47 = insertelement <8 x float> %55, float 9.000000e+01, i64 %54
  store <8 x float> %vecins47, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb48:                                          ; preds = %sw.epilog
  %56 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %57 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins49 = insertelement <8 x float> %57, float 0x3FF921FB60000000, i64 %56
  store <8 x float> %vecins49, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb50:                                          ; preds = %sw.epilog
  %58 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %59 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins51 = insertelement <8 x float> %59, float 0x47EFFFFFE0000000, i64 %58
  store <8 x float> %vecins51, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.bb52:                                          ; preds = %sw.epilog
  %60 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !32
  %61 = load <8 x float>, ptr %r_, align 32, !llvm.access.group !32
  %vecins53 = insertelement <8 x float> %61, float 0xC7EFFFFFE0000000, i64 %60
  store <8 x float> %vecins53, ptr %r_, align 32, !llvm.access.group !32
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.epilog, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb20, %sw.bb18
  call void @llvm.lifetime.end.p0(i64 4, ptr %select) #16, !llvm.access.group !32
  br label %omp.body.continue

omp.body.continue:                                ; preds = %sw.epilog54
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %62 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  %add55 = add i64 %62, 1
  store i64 %add55, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !32
  br label %omp.inner.for.cond, !llvm.loop !33

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call56 = call <8 x float> @simde__m256_from_private(ptr noundef byval(%union.simde__m256_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %c_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %s_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #16
  ret <8 x float> %call56
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_f32x8_(ptr noundef byval(<8 x float>) align 32 %0, ptr noundef byval(<8 x float>) align 32 %1, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x float>, align 32
  %b.addr = alloca <8 x float>, align 32
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x float], align 16
  %b_ = alloca [8 x float], align 16
  %indirect-arg-temp = alloca <8 x float>, align 32
  %indirect-arg-temp2 = alloca <8 x float>, align 32
  %a = load <8 x float>, ptr %0, align 32, !tbaa !16
  %b = load <8 x float>, ptr %1, align 32, !tbaa !16
  store <8 x float> %a, ptr %a.addr, align 32, !tbaa !16
  store <8 x float> %b, ptr %b.addr, align 32, !tbaa !16
  store float %slop, ptr %slop.addr, align 4, !tbaa !21
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #16
  %arraydecay = getelementptr inbounds [8 x float], ptr %a_, i64 0, i64 0
  %2 = load <8 x float>, ptr %a.addr, align 32, !tbaa !16
  store <8 x float> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_ps(ptr noundef %arraydecay, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp)
  %arraydecay1 = getelementptr inbounds [8 x float], ptr %b_, i64 0, i64 0
  %3 = load <8 x float>, ptr %b.addr, align 32, !tbaa !16
  store <8 x float> %3, ptr %indirect-arg-temp2, align 32, !tbaa !16
  call void @simde_mm256_storeu_ps(ptr noundef %arraydecay1, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp2)
  %arraydecay3 = getelementptr inbounds [8 x float], ptr %a_, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [8 x float], ptr %b_, i64 0, i64 0
  %4 = load float, ptr %slop.addr, align 4, !tbaa !21
  %5 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %6 = load i32, ptr %line.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf32_(i64 noundef 8, ptr noundef %arraydecay3, ptr noundef %arraydecay4, float noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m256_to_private(ptr noalias sret(%union.simde__m256_private) align 32 %agg.result, ptr noundef byval(<8 x float>) align 32 %0) #13 {
entry:
  %v.addr = alloca <8 x float>, align 32
  %v = load <8 x float>, ptr %0, align 32, !tbaa !16
  store <8 x float> %v, ptr %v.addr, align 32, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %agg.result, ptr align 32 %v.addr, i64 32, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @simde_x_mm256_flushsubnormal_ps(ptr noundef byval(<8 x float>) align 32 %0) #12 {
entry:
  %a.addr = alloca <8 x float>, align 32
  %a_ = alloca %union.simde__m256_private, align 32
  %indirect-arg-temp = alloca <8 x float>, align 32
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <8 x float>, ptr %0, align 32, !tbaa !16
  store <8 x float> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  %1 = load <8 x float>, ptr %a.addr, align 32, !tbaa !16
  store <8 x float> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256_to_private(ptr sret(%union.simde__m256_private) align 32 %a_, ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !35
  %cmp = icmp ult i64 %2, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !35
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !35
  %4 = load <8 x float>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !35
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !35
  %vecext = extractelement <8 x float> %4, i64 %5
  %iszero = fcmp oeq float %vecext, 0.000000e+00
  br i1 %iszero, label %fpclassify_end, label %fpclassify_not_zero

fpclassify_end:                                   ; preds = %fpclassify_not_inf, %fpclassify_not_nan, %fpclassify_not_zero, %omp.inner.for.body
  %fpclassify_result = phi i32 [ 0, %omp.inner.for.body ], [ 0, %fpclassify_not_zero ], [ 0, %fpclassify_not_nan ], [ %12, %fpclassify_not_inf ]
  %tobool = icmp ne i32 %fpclassify_result, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fpclassify_end
  br label %cond.end

cond.false:                                       ; preds = %fpclassify_end
  %6 = load <8 x float>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !35
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !35
  %vecext2 = extractelement <8 x float> %6, i64 %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %vecext2, %cond.false ]
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !35
  %9 = load <8 x float>, ptr %a_, align 32, !llvm.access.group !35
  %vecins = insertelement <8 x float> %9, float %cond, i64 %8
  store <8 x float> %vecins, ptr %a_, align 32, !llvm.access.group !35
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !35
  %add3 = add i64 %10, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !35
  br label %omp.inner.for.cond, !llvm.loop !36

fpclassify_not_zero:                              ; preds = %omp.inner.for.body
  %cmp1 = fcmp uno float %vecext, %vecext
  br i1 %cmp1, label %fpclassify_end, label %fpclassify_not_nan

fpclassify_not_nan:                               ; preds = %fpclassify_not_zero
  %11 = call float @llvm.fabs.f32(float %vecext) #17
  %isinf = fcmp oeq float %11, 0x7FF0000000000000
  br i1 %isinf, label %fpclassify_end, label %fpclassify_not_inf

fpclassify_not_inf:                               ; preds = %fpclassify_not_nan
  %isnormal = fcmp uge float %11, 0x3810000000000000
  %12 = select i1 %isnormal, i32 0, i32 1
  br label %fpclassify_end

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <8 x float> @simde__m256_from_private(ptr noundef byval(%union.simde__m256_private) align 32 %a_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  ret <8 x float> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m256i_to_private(ptr noalias sret(%union.simde__m256i_private) align 32 %agg.result, ptr noundef byval(<4 x i64>) align 32 %0) #13 {
entry:
  %v.addr = alloca <4 x i64>, align 32
  %v = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store <4 x i64> %v, ptr %v.addr, align 32, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %agg.result, ptr align 32 %v.addr, i64 32, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @simde__m256_from_private(ptr noundef byval(%union.simde__m256_private) align 32 %v) #12 {
entry:
  %r = alloca <8 x float>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 32 %v, i64 32, i1 false)
  %0 = load <8 x float>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  ret <8 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm256_storeu_ps(ptr noundef %mem_addr, ptr noundef byval(<8 x float>) align 32 %0) #13 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <8 x float>, align 32
  %a = load <8 x float>, ptr %0, align 32, !tbaa !16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <8 x float> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 32 %a.addr, i64 32, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @simde_mm256_mask_mov_ps(ptr noundef byval(<8 x float>) align 32 %0, i8 noundef zeroext %k, ptr noundef byval(<8 x float>) align 32 %1) #12 {
entry:
  %src.addr = alloca <8 x float>, align 32
  %k.addr = alloca i8, align 1
  %a.addr = alloca <8 x float>, align 32
  %indirect-arg-temp = alloca <8 x float>, align 32
  %indirect-arg-temp1 = alloca <8 x float>, align 32
  %indirect-arg-temp3 = alloca <4 x i64>, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %src = load <8 x float>, ptr %0, align 32, !tbaa !16
  %a = load <8 x float>, ptr %1, align 32, !tbaa !16
  store <8 x float> %src, ptr %src.addr, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <8 x float> %a, ptr %a.addr, align 32, !tbaa !16
  %2 = load <8 x float>, ptr %src.addr, align 32, !tbaa !16
  store <8 x float> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  %call = call <4 x i64> @simde_mm256_castps_si256(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp)
  %3 = load i8, ptr %k.addr, align 1, !tbaa !16
  %4 = load <8 x float>, ptr %a.addr, align 32, !tbaa !16
  store <8 x float> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_castps_si256(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp3, align 32, !tbaa !16
  store <4 x i64> %call2, ptr %indirect-arg-temp4, align 32, !tbaa !16
  %call5 = call <4 x i64> @simde_mm256_mask_mov_epi32(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp3, i8 noundef zeroext %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  store <4 x i64> %call5, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <8 x float> @simde_mm256_castsi256_ps(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  ret <8 x float> %call7
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @simde_mm256_castsi256_ps(ptr noundef byval(<4 x i64>) align 32 %0) #12 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load <8 x float>, ptr %a.addr, align 32, !tbaa !16
  ret <8 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_mask_mov_epi32(ptr noundef byval(<4 x i64>) align 32 %0, i8 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %1) #12 {
entry:
  %src.addr = alloca <4 x i64>, align 32
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x i64>, align 32
  %src_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %src = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %a = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %src, ptr %src.addr, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %src_) #16
  %2 = load <4 x i64>, ptr %src.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %src_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !38
  %cmp = icmp ult i64 %4, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !38
  %mul = mul i64 %5, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !38
  %6 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !38
  %conv = zext i8 %6 to i32
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !38
  %sh_prom = trunc i64 %7 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %8 = load <8 x i32>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !38
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !38
  %vecext = extractelement <8 x i32> %8, i64 %9
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  %10 = load <8 x i32>, ptr %src_, align 32, !tbaa !16, !llvm.access.group !38
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !38
  %vecext2 = extractelement <8 x i32> %10, i64 %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %vecext, %cond.true ], [ %vecext2, %cond.false ]
  %12 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !38
  %13 = load <8 x i32>, ptr %r_, align 32, !llvm.access.group !38
  %vecins = insertelement <8 x i32> %13, i32 %cond, i64 %12
  store <8 x i32> %vecins, ptr %r_, align 32, !llvm.access.group !38
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !38
  %add3 = add i64 %14, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !38
  br label %omp.inner.for.cond, !llvm.loop !39

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %src_) #16
  ret <4 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_castps_si256(ptr noundef byval(<8 x float>) align 32 %0) #12 {
entry:
  %a.addr = alloca <8 x float>, align 32
  %a = load <8 x float>, ptr %0, align 32, !tbaa !16
  store <8 x float> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %v) #12 {
entry:
  %r = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 32 %v, i64 32, i1 false)
  %0 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  ret <4 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x float> @simde_mm256_maskz_mov_ps(i8 noundef zeroext %k, ptr noundef byval(<8 x float>) align 32 %0) #12 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <8 x float>, align 32
  %indirect-arg-temp = alloca <8 x float>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp3 = alloca <4 x i64>, align 32
  %a = load <8 x float>, ptr %0, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <8 x float> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load i8, ptr %k.addr, align 1, !tbaa !16
  %2 = load <8 x float>, ptr %a.addr, align 32, !tbaa !16
  store <8 x float> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  %call = call <4 x i64> @simde_mm256_castps_si256(ptr noundef byval(<8 x float>) align 32 %indirect-arg-temp)
  store <4 x i64> %call, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_maskz_mov_epi32(i8 noundef zeroext %1, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call2, ptr %indirect-arg-temp3, align 32, !tbaa !16
  %call4 = call <8 x float> @simde_mm256_castsi256_ps(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp3)
  ret <8 x float> %call4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_maskz_mov_epi32(i8 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %0) #12 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x i64>, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  %1 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !41
  %cmp = icmp ult i64 %2, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !41
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !41
  %4 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !41
  %conv = zext i8 %4 to i32
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !41
  %sh_prom = trunc i64 %5 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load <8 x i32>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !41
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !41
  %vecext = extractelement <8 x i32> %6, i64 %7
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %vecext, %cond.true ], [ 0, %cond.false ]
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !41
  %9 = load <8 x i32>, ptr %r_, align 32, !llvm.access.group !41
  %vecins = insertelement <8 x i32> %9, i32 %cond, i64 %8
  store <8 x i32> %vecins, ptr %r_, align 32, !llvm.access.group !41
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !41
  %add1 = add i64 %10, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !41
  br label %omp.inner.for.cond, !llvm.loop !42

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  ret <4 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @simde_mm512_loadu_ps(ptr noundef %mem_addr) #14 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <16 x float>, align 64
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 1 %0, i64 64, i1 false)
  %1 = load <16 x float>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_loadu_si512(ptr noundef %mem_addr) #14 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <8 x i64>, align 64
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  %v = getelementptr inbounds %struct.simde_mm512_loadu_si512_s, ptr %0, i32 0, i32 0
  %1 = load <8 x i64>, ptr %v, align 1, !tbaa !16
  store <8 x i64> %1, ptr %r, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <8 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @simde_mm512_fixupimm_ps(ptr noundef byval(<16 x float>) align 64 %0, ptr noundef byval(<16 x float>) align 64 %1, ptr noundef byval(<8 x i64>) align 64 %2, i32 noundef %imm8) #14 {
entry:
  %a.addr = alloca <16 x float>, align 64
  %b.addr = alloca <16 x float>, align 64
  %c.addr = alloca <8 x i64>, align 64
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m512_private, align 64
  %a_ = alloca %union.simde__m512_private, align 64
  %indirect-arg-temp = alloca <16 x float>, align 64
  %b_ = alloca %union.simde__m512_private, align 64
  %indirect-arg-temp1 = alloca <16 x float>, align 64
  %s_ = alloca %union.simde__m512_private, align 64
  %indirect-arg-temp2 = alloca <16 x float>, align 64
  %indirect-arg-temp3 = alloca <16 x float>, align 64
  %c_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %select = alloca i32, align 4
  %a = load <16 x float>, ptr %0, align 64, !tbaa !16
  %b = load <16 x float>, ptr %1, align 64, !tbaa !16
  %c = load <8 x i64>, ptr %2, align 64, !tbaa !16
  store <16 x float> %a, ptr %a.addr, align 64, !tbaa !16
  store <16 x float> %b, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %c, ptr %c.addr, align 64, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  %3 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  %4 = load <16 x float>, ptr %a.addr, align 64, !tbaa !16
  store <16 x float> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512_to_private(ptr sret(%union.simde__m512_private) align 64 %a_, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #16
  %5 = load <16 x float>, ptr %b.addr, align 64, !tbaa !16
  store <16 x float> %5, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512_to_private(ptr sret(%union.simde__m512_private) align 64 %b_, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 64, ptr %s_) #16
  %6 = load <16 x float>, ptr %b.addr, align 64, !tbaa !16
  store <16 x float> %6, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call = call <16 x float> @simde_x_mm512_flushsubnormal_ps(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp2)
  store <16 x float> %call, ptr %indirect-arg-temp3, align 64, !tbaa !16
  call void @simde__m512_to_private(ptr sret(%union.simde__m512_private) align 64 %s_, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp3)
  call void @llvm.lifetime.start.p0(i64 64, ptr %c_) #16
  %7 = load <8 x i64>, ptr %c.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %c_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !44
  %cmp = icmp ult i64 %8, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %9 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !44
  %mul = mul i64 %9, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  call void @llvm.lifetime.start.p0(i64 4, ptr %select) #16, !llvm.access.group !44
  store i32 1, ptr %select, align 4, !tbaa !5, !llvm.access.group !44
  %10 = load <16 x float>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !44
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %vecext = extractelement <16 x float> %10, i64 %11
  %call5 = call i32 @simde_math_fpclassifyf(float noundef %vecext), !llvm.access.group !44
  switch i32 %call5, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb11
    i32 0, label %sw.bb12
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %omp.inner.for.body
  %12 = load <16 x float>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !44
  %13 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %vecext6 = extractelement <16 x float> %12, i64 %13
  %cmp7 = fcmp olt float %vecext6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %14 = load <16 x float>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !44
  %15 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %vecext8 = extractelement <16 x float> %14, i64 %15
  %cmp9 = fcmp oeq float %vecext8, 1.000000e+00
  %16 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 3, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ 6, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond10, ptr %select, align 4, !tbaa !5, !llvm.access.group !44
  br label %sw.epilog

sw.bb11:                                          ; preds = %omp.inner.for.body
  store i32 2, ptr %select, align 4, !tbaa !5, !llvm.access.group !44
  br label %sw.epilog

sw.bb12:                                          ; preds = %omp.inner.for.body
  store i32 0, ptr %select, align 4, !tbaa !5, !llvm.access.group !44
  br label %sw.epilog

sw.bb13:                                          ; preds = %omp.inner.for.body
  %17 = load <16 x float>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !44
  %18 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %vecext14 = extractelement <16 x float> %17, i64 %18
  %cmp15 = fcmp ogt float %vecext14, 0.000000e+00
  %19 = zext i1 %cmp15 to i64
  %cond16 = select i1 %cmp15, i32 5, i32 4
  store i32 %cond16, ptr %select, align 4, !tbaa !5, !llvm.access.group !44
  br label %sw.epilog

sw.epilog:                                        ; preds = %omp.inner.for.body, %sw.bb13, %sw.bb12, %sw.bb11, %cond.end
  %20 = load <16 x i32>, ptr %c_, align 64, !tbaa !16, !llvm.access.group !44
  %21 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %vecext17 = extractelement <16 x i32> %20, i64 %21
  %22 = load i32, ptr %select, align 4, !tbaa !5, !llvm.access.group !44
  %shl = shl i32 %22, 2
  %shr = ashr i32 %vecext17, %shl
  %and = and i32 %shr, 15
  switch i32 %and, label %sw.epilog54 [
    i32 0, label %sw.bb18
    i32 1, label %sw.bb20
    i32 2, label %sw.bb23
    i32 3, label %sw.bb25
    i32 4, label %sw.bb27
    i32 5, label %sw.bb29
    i32 6, label %sw.bb31
    i32 7, label %sw.bb36
    i32 8, label %sw.bb38
    i32 9, label %sw.bb40
    i32 10, label %sw.bb42
    i32 11, label %sw.bb44
    i32 12, label %sw.bb46
    i32 13, label %sw.bb48
    i32 14, label %sw.bb50
    i32 15, label %sw.bb52
  ]

sw.bb18:                                          ; preds = %sw.epilog
  %23 = load <16 x float>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !44
  %24 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %vecext19 = extractelement <16 x float> %23, i64 %24
  %25 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %26 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins = insertelement <16 x float> %26, float %vecext19, i64 %25
  store <16 x float> %vecins, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb20:                                          ; preds = %sw.epilog
  %27 = load <16 x float>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !44
  %28 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %vecext21 = extractelement <16 x float> %27, i64 %28
  %29 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %30 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins22 = insertelement <16 x float> %30, float %vecext21, i64 %29
  store <16 x float> %vecins22, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb23:                                          ; preds = %sw.epilog
  %31 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %32 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins24 = insertelement <16 x float> %32, float 0x7FF8000000000000, i64 %31
  store <16 x float> %vecins24, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb25:                                          ; preds = %sw.epilog
  %33 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %34 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins26 = insertelement <16 x float> %34, float 0xFFF8000000000000, i64 %33
  store <16 x float> %vecins26, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb27:                                          ; preds = %sw.epilog
  %35 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %36 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins28 = insertelement <16 x float> %36, float 0xFFF0000000000000, i64 %35
  store <16 x float> %vecins28, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb29:                                          ; preds = %sw.epilog
  %37 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %38 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins30 = insertelement <16 x float> %38, float 0x7FF0000000000000, i64 %37
  store <16 x float> %vecins30, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb31:                                          ; preds = %sw.epilog
  %39 = load <16 x float>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !44
  %40 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %vecext32 = extractelement <16 x float> %39, i64 %40
  %cmp33 = fcmp olt float %vecext32, 0.000000e+00
  %41 = zext i1 %cmp33 to i64
  %cond34 = select i1 %cmp33, float 0xFFF0000000000000, float 0x7FF0000000000000
  %42 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %43 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins35 = insertelement <16 x float> %43, float %cond34, i64 %42
  store <16 x float> %vecins35, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb36:                                          ; preds = %sw.epilog
  %44 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %45 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins37 = insertelement <16 x float> %45, float -0.000000e+00, i64 %44
  store <16 x float> %vecins37, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb38:                                          ; preds = %sw.epilog
  %46 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %47 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins39 = insertelement <16 x float> %47, float 0.000000e+00, i64 %46
  store <16 x float> %vecins39, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb40:                                          ; preds = %sw.epilog
  %48 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %49 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins41 = insertelement <16 x float> %49, float -1.000000e+00, i64 %48
  store <16 x float> %vecins41, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb42:                                          ; preds = %sw.epilog
  %50 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %51 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins43 = insertelement <16 x float> %51, float 1.000000e+00, i64 %50
  store <16 x float> %vecins43, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb44:                                          ; preds = %sw.epilog
  %52 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %53 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins45 = insertelement <16 x float> %53, float 5.000000e-01, i64 %52
  store <16 x float> %vecins45, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb46:                                          ; preds = %sw.epilog
  %54 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %55 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins47 = insertelement <16 x float> %55, float 9.000000e+01, i64 %54
  store <16 x float> %vecins47, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb48:                                          ; preds = %sw.epilog
  %56 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %57 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins49 = insertelement <16 x float> %57, float 0x3FF921FB60000000, i64 %56
  store <16 x float> %vecins49, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb50:                                          ; preds = %sw.epilog
  %58 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %59 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins51 = insertelement <16 x float> %59, float 0x47EFFFFFE0000000, i64 %58
  store <16 x float> %vecins51, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.bb52:                                          ; preds = %sw.epilog
  %60 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !44
  %61 = load <16 x float>, ptr %r_, align 64, !llvm.access.group !44
  %vecins53 = insertelement <16 x float> %61, float 0xC7EFFFFFE0000000, i64 %60
  store <16 x float> %vecins53, ptr %r_, align 64, !llvm.access.group !44
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.epilog, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb20, %sw.bb18
  call void @llvm.lifetime.end.p0(i64 4, ptr %select) #16, !llvm.access.group !44
  br label %omp.body.continue

omp.body.continue:                                ; preds = %sw.epilog54
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %62 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !44
  %add55 = add i64 %62, 1
  store i64 %add55, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !44
  br label %omp.inner.for.cond, !llvm.loop !45

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call56 = call <16 x float> @simde__m512_from_private(ptr noundef byval(%union.simde__m512_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %c_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %s_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #16
  ret <16 x float> %call56
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_f32x16_(ptr noundef byval(<16 x float>) align 64 %0, ptr noundef byval(<16 x float>) align 64 %1, float noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <16 x float>, align 64
  %b.addr = alloca <16 x float>, align 64
  %slop.addr = alloca float, align 4
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x float], align 16
  %b_ = alloca [16 x float], align 16
  %indirect-arg-temp = alloca <16 x float>, align 64
  %indirect-arg-temp2 = alloca <16 x float>, align 64
  %a = load <16 x float>, ptr %0, align 64, !tbaa !16
  %b = load <16 x float>, ptr %1, align 64, !tbaa !16
  store <16 x float> %a, ptr %a.addr, align 64, !tbaa !16
  store <16 x float> %b, ptr %b.addr, align 64, !tbaa !16
  store float %slop, ptr %slop.addr, align 4, !tbaa !21
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #16
  %arraydecay = getelementptr inbounds [16 x float], ptr %a_, i64 0, i64 0
  %2 = load <16 x float>, ptr %a.addr, align 64, !tbaa !16
  store <16 x float> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_ps(ptr noundef %arraydecay, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp)
  %arraydecay1 = getelementptr inbounds [16 x float], ptr %b_, i64 0, i64 0
  %3 = load <16 x float>, ptr %b.addr, align 64, !tbaa !16
  store <16 x float> %3, ptr %indirect-arg-temp2, align 64, !tbaa !16
  call void @simde_mm512_storeu_ps(ptr noundef %arraydecay1, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp2)
  %arraydecay3 = getelementptr inbounds [16 x float], ptr %a_, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [16 x float], ptr %b_, i64 0, i64 0
  %4 = load float, ptr %slop.addr, align 4, !tbaa !21
  %5 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %6 = load i32, ptr %line.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf32_(i64 noundef 16, ptr noundef %arraydecay3, ptr noundef %arraydecay4, float noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m512_to_private(ptr noalias sret(%union.simde__m512_private) align 64 %agg.result, ptr noundef byval(<16 x float>) align 64 %0) #13 {
entry:
  %v.addr = alloca <16 x float>, align 64
  %v = load <16 x float>, ptr %0, align 64, !tbaa !16
  store <16 x float> %v, ptr %v.addr, align 64, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %agg.result, ptr align 64 %v.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @simde_x_mm512_flushsubnormal_ps(ptr noundef byval(<16 x float>) align 64 %0) #14 {
entry:
  %a.addr = alloca <16 x float>, align 64
  %a_ = alloca %union.simde__m512_private, align 64
  %indirect-arg-temp = alloca <16 x float>, align 64
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <16 x float>, ptr %0, align 64, !tbaa !16
  store <16 x float> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  %1 = load <16 x float>, ptr %a.addr, align 64, !tbaa !16
  store <16 x float> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512_to_private(ptr sret(%union.simde__m512_private) align 64 %a_, ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %cmp = icmp ult i64 %2, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !47
  %4 = load <16 x float>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !47
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !47
  %vecext = extractelement <16 x float> %4, i64 %5
  %iszero = fcmp oeq float %vecext, 0.000000e+00
  br i1 %iszero, label %fpclassify_end, label %fpclassify_not_zero

fpclassify_end:                                   ; preds = %fpclassify_not_inf, %fpclassify_not_nan, %fpclassify_not_zero, %omp.inner.for.body
  %fpclassify_result = phi i32 [ 0, %omp.inner.for.body ], [ 0, %fpclassify_not_zero ], [ 0, %fpclassify_not_nan ], [ %12, %fpclassify_not_inf ]
  %tobool = icmp ne i32 %fpclassify_result, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fpclassify_end
  br label %cond.end

cond.false:                                       ; preds = %fpclassify_end
  %6 = load <16 x float>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !47
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !47
  %vecext2 = extractelement <16 x float> %6, i64 %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ 0.000000e+00, %cond.true ], [ %vecext2, %cond.false ]
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !47
  %9 = load <16 x float>, ptr %a_, align 64, !llvm.access.group !47
  %vecins = insertelement <16 x float> %9, float %cond, i64 %8
  store <16 x float> %vecins, ptr %a_, align 64, !llvm.access.group !47
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  %add3 = add i64 %10, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !47
  br label %omp.inner.for.cond, !llvm.loop !48

fpclassify_not_zero:                              ; preds = %omp.inner.for.body
  %cmp1 = fcmp uno float %vecext, %vecext
  br i1 %cmp1, label %fpclassify_end, label %fpclassify_not_nan

fpclassify_not_nan:                               ; preds = %fpclassify_not_zero
  %11 = call float @llvm.fabs.f32(float %vecext) #17
  %isinf = fcmp oeq float %11, 0x7FF0000000000000
  br i1 %isinf, label %fpclassify_end, label %fpclassify_not_inf

fpclassify_not_inf:                               ; preds = %fpclassify_not_nan
  %isnormal = fcmp uge float %11, 0x3810000000000000
  %12 = select i1 %isnormal, i32 0, i32 1
  br label %fpclassify_end

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <16 x float> @simde__m512_from_private(ptr noundef byval(%union.simde__m512_private) align 64 %a_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  ret <16 x float> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m512i_to_private(ptr noalias sret(%union.simde__m512i_private) align 64 %agg.result, ptr noundef byval(<8 x i64>) align 64 %0) #13 {
entry:
  %v.addr = alloca <8 x i64>, align 64
  %v = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %v, ptr %v.addr, align 64, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %agg.result, ptr align 64 %v.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @simde__m512_from_private(ptr noundef byval(%union.simde__m512_private) align 64 %v) #14 {
entry:
  %r = alloca <16 x float>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %v, i64 64, i1 false)
  %0 = load <16 x float>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <16 x float> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm512_storeu_ps(ptr noundef %mem_addr, ptr noundef byval(<16 x float>) align 64 %0) #13 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <16 x float>, align 64
  %a = load <16 x float>, ptr %0, align 64, !tbaa !16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <16 x float> %a, ptr %a.addr, align 64, !tbaa !16
  %1 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 64 %a.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @simde_mm512_mask_mov_ps(ptr noundef byval(<16 x float>) align 64 %0, i16 noundef zeroext %k, ptr noundef byval(<16 x float>) align 64 %1) #14 {
entry:
  %src.addr = alloca <16 x float>, align 64
  %k.addr = alloca i16, align 2
  %a.addr = alloca <16 x float>, align 64
  %indirect-arg-temp = alloca <16 x float>, align 64
  %indirect-arg-temp1 = alloca <16 x float>, align 64
  %indirect-arg-temp3 = alloca <8 x i64>, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %src = load <16 x float>, ptr %0, align 64, !tbaa !16
  %a = load <16 x float>, ptr %1, align 64, !tbaa !16
  store <16 x float> %src, ptr %src.addr, align 64, !tbaa !16
  store i16 %k, ptr %k.addr, align 2, !tbaa !50
  store <16 x float> %a, ptr %a.addr, align 64, !tbaa !16
  %2 = load <16 x float>, ptr %src.addr, align 64, !tbaa !16
  store <16 x float> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  %call = call <8 x i64> @simde_mm512_castps_si512(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp)
  %3 = load i16, ptr %k.addr, align 2, !tbaa !50
  %4 = load <16 x float>, ptr %a.addr, align 64, !tbaa !16
  store <16 x float> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_castps_si512(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp3, align 64, !tbaa !16
  store <8 x i64> %call2, ptr %indirect-arg-temp4, align 64, !tbaa !16
  %call5 = call <8 x i64> @simde_mm512_mask_mov_epi32(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp3, i16 noundef zeroext %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  store <8 x i64> %call5, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <16 x float> @simde_mm512_castsi512_ps(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  ret <16 x float> %call7
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @simde_mm512_castsi512_ps(ptr noundef byval(<8 x i64>) align 64 %0) #14 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %r = alloca <16 x float>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %a.addr, i64 64, i1 false)
  %1 = load <16 x float>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <16 x float> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_mask_mov_epi32(ptr noundef byval(<8 x i64>) align 64 %0, i16 noundef zeroext %k, ptr noundef byval(<8 x i64>) align 64 %1) #14 {
entry:
  %src.addr = alloca <8 x i64>, align 64
  %k.addr = alloca i16, align 2
  %a.addr = alloca <8 x i64>, align 64
  %src_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %src = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %a = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %src, ptr %src.addr, align 64, !tbaa !16
  store i16 %k, ptr %k.addr, align 2, !tbaa !50
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %src_) #16
  %2 = load <8 x i64>, ptr %src.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %src_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !52
  %cmp = icmp ult i64 %4, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !52
  %mul = mul i64 %5, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !52
  %6 = load i16, ptr %k.addr, align 2, !tbaa !50, !llvm.access.group !52
  %conv = zext i16 %6 to i32
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !52
  %sh_prom = trunc i64 %7 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %8 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !52
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !52
  %vecext = extractelement <16 x i32> %8, i64 %9
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  %10 = load <16 x i32>, ptr %src_, align 64, !tbaa !16, !llvm.access.group !52
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !52
  %vecext2 = extractelement <16 x i32> %10, i64 %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %vecext, %cond.true ], [ %vecext2, %cond.false ]
  %12 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !52
  %13 = load <16 x i32>, ptr %r_, align 64, !llvm.access.group !52
  %vecins = insertelement <16 x i32> %13, i32 %cond, i64 %12
  store <16 x i32> %vecins, ptr %r_, align 64, !llvm.access.group !52
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !52
  %add3 = add i64 %14, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !52
  br label %omp.inner.for.cond, !llvm.loop !53

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %src_) #16
  ret <8 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_castps_si512(ptr noundef byval(<16 x float>) align 64 %0) #14 {
entry:
  %a.addr = alloca <16 x float>, align 64
  %r = alloca <8 x i64>, align 64
  %a = load <16 x float>, ptr %0, align 64, !tbaa !16
  store <16 x float> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %a.addr, i64 64, i1 false)
  %1 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <8 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %v) #14 {
entry:
  %r = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %v, i64 64, i1 false)
  %0 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <8 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <16 x float> @simde_mm512_maskz_mov_ps(i16 noundef zeroext %k, ptr noundef byval(<16 x float>) align 64 %0) #14 {
entry:
  %k.addr = alloca i16, align 2
  %a.addr = alloca <16 x float>, align 64
  %indirect-arg-temp = alloca <16 x float>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp3 = alloca <8 x i64>, align 64
  %a = load <16 x float>, ptr %0, align 64, !tbaa !16
  store i16 %k, ptr %k.addr, align 2, !tbaa !50
  store <16 x float> %a, ptr %a.addr, align 64, !tbaa !16
  %1 = load i16, ptr %k.addr, align 2, !tbaa !50
  %2 = load <16 x float>, ptr %a.addr, align 64, !tbaa !16
  store <16 x float> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  %call = call <8 x i64> @simde_mm512_castps_si512(ptr noundef byval(<16 x float>) align 64 %indirect-arg-temp)
  store <8 x i64> %call, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_maskz_mov_epi32(i16 noundef zeroext %1, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call2, ptr %indirect-arg-temp3, align 64, !tbaa !16
  %call4 = call <16 x float> @simde_mm512_castsi512_ps(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp3)
  ret <16 x float> %call4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_maskz_mov_epi32(i16 noundef zeroext %k, ptr noundef byval(<8 x i64>) align 64 %0) #14 {
entry:
  %k.addr = alloca i16, align 2
  %a.addr = alloca <8 x i64>, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store i16 %k, ptr %k.addr, align 2, !tbaa !50
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !55
  %cmp = icmp ult i64 %2, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !55
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !55
  %4 = load i16, ptr %k.addr, align 2, !tbaa !50, !llvm.access.group !55
  %conv = zext i16 %4 to i32
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !55
  %sh_prom = trunc i64 %5 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !55
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !55
  %vecext = extractelement <16 x i32> %6, i64 %7
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %vecext, %cond.true ], [ 0, %cond.false ]
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !55
  %9 = load <16 x i32>, ptr %r_, align 64, !llvm.access.group !55
  %vecins = insertelement <16 x i32> %9, i32 %cond, i64 %8
  store <16 x i32> %vecins, ptr %r_, align 64, !llvm.access.group !55
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !55
  %add1 = add i64 %10, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !55
  br label %omp.inner.for.cond, !llvm.loop !56

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  ret <8 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x float> @simde_mm_fixupimm_ss(<4 x float> noundef %a, <4 x float> noundef %b, <2 x i64> noundef %c, i32 noundef %imm8) #6 {
entry:
  %a.addr = alloca <4 x float>, align 16
  %b.addr = alloca <4 x float>, align 16
  %c.addr = alloca <2 x i64>, align 16
  %imm8.addr = alloca i32, align 4
  %a_ = alloca %union.simde__m128_private, align 16
  %b_ = alloca %union.simde__m128_private, align 16
  %s_ = alloca %union.simde__m128_private, align 16
  %c_ = alloca %union.simde__m128i_private, align 16
  %select = alloca i32, align 4
  store <4 x float> %a, ptr %a.addr, align 16, !tbaa !16
  store <4 x float> %b, ptr %b.addr, align 16, !tbaa !16
  store <2 x i64> %c, ptr %c.addr, align 16, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  %0 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %1 = load <4 x float>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128_to_private(<4 x float> noundef %1)
  %coerce.dive = getelementptr inbounds %union.simde__m128_private, ptr %a_, i32 0, i32 0
  %2 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %3 = extractvalue { double, double } %call, 0
  store double %3, ptr %2, align 16
  %4 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %5 = extractvalue { double, double } %call, 1
  store double %5, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #16
  %6 = load <4 x float>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128_to_private(<4 x float> noundef %6)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128_private, ptr %b_, i32 0, i32 0
  %7 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %8 = extractvalue { double, double } %call1, 0
  store double %8, ptr %7, align 16
  %9 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %10 = extractvalue { double, double } %call1, 1
  store double %10, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %s_) #16
  %11 = load <4 x float>, ptr %b.addr, align 16, !tbaa !16
  %call3 = call <4 x float> @simde_x_mm_flushsubnormal_ps(<4 x float> noundef %11)
  %call4 = call { double, double } @simde__m128_to_private(<4 x float> noundef %call3)
  %coerce.dive5 = getelementptr inbounds %union.simde__m128_private, ptr %s_, i32 0, i32 0
  %12 = getelementptr inbounds { double, double }, ptr %coerce.dive5, i32 0, i32 0
  %13 = extractvalue { double, double } %call4, 0
  store double %13, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %coerce.dive5, i32 0, i32 1
  %15 = extractvalue { double, double } %call4, 1
  store double %15, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %c_) #16
  %16 = load <2 x i64>, ptr %c.addr, align 16, !tbaa !16
  %call6 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %16)
  %coerce.dive7 = getelementptr inbounds %union.simde__m128i_private, ptr %c_, i32 0, i32 0
  %17 = getelementptr inbounds { double, double }, ptr %coerce.dive7, i32 0, i32 0
  %18 = extractvalue { double, double } %call6, 0
  store double %18, ptr %17, align 16
  %19 = getelementptr inbounds { double, double }, ptr %coerce.dive7, i32 0, i32 1
  %20 = extractvalue { double, double } %call6, 1
  store double %20, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %select) #16
  store i32 1, ptr %select, align 4, !tbaa !5
  %21 = load <4 x float>, ptr %s_, align 16, !tbaa !16
  %vecext = extractelement <4 x float> %21, i32 0
  %call8 = call i32 @simde_math_fpclassifyf(float noundef %vecext)
  switch i32 %call8, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb13
    i32 0, label %sw.bb14
    i32 1, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %22 = load <4 x float>, ptr %s_, align 16, !tbaa !16
  %vecext9 = extractelement <4 x float> %22, i32 0
  %cmp = fcmp olt float %vecext9, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %23 = load <4 x float>, ptr %s_, align 16, !tbaa !16
  %vecext10 = extractelement <4 x float> %23, i32 0
  %cmp11 = fcmp oeq float %vecext10, 1.000000e+00
  %24 = zext i1 %cmp11 to i64
  %cond = select i1 %cmp11, i32 3, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi i32 [ 6, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond12, ptr %select, align 4, !tbaa !5
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 2, ptr %select, align 4, !tbaa !5
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store i32 0, ptr %select, align 4, !tbaa !5
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %25 = load <4 x float>, ptr %s_, align 16, !tbaa !16
  %vecext16 = extractelement <4 x float> %25, i32 0
  %cmp17 = fcmp ogt float %vecext16, 0.000000e+00
  %26 = zext i1 %cmp17 to i64
  %cond18 = select i1 %cmp17, i32 5, i32 4
  store i32 %cond18, ptr %select, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb15, %sw.bb14, %sw.bb13, %cond.end
  %27 = load <4 x i32>, ptr %c_, align 16, !tbaa !16
  %vecext19 = extractelement <4 x i32> %27, i32 0
  %28 = load i32, ptr %select, align 4, !tbaa !5
  %shl = shl i32 %28, 2
  %shr = ashr i32 %vecext19, %shl
  %and = and i32 %shr, 15
  switch i32 %and, label %sw.epilog53 [
    i32 0, label %sw.bb20
    i32 2, label %sw.bb22
    i32 3, label %sw.bb24
    i32 4, label %sw.bb26
    i32 5, label %sw.bb28
    i32 6, label %sw.bb30
    i32 7, label %sw.bb35
    i32 8, label %sw.bb37
    i32 9, label %sw.bb39
    i32 10, label %sw.bb41
    i32 11, label %sw.bb43
    i32 12, label %sw.bb45
    i32 13, label %sw.bb47
    i32 14, label %sw.bb49
    i32 15, label %sw.bb51
  ]

sw.bb20:                                          ; preds = %sw.epilog
  %29 = load <4 x float>, ptr %a_, align 16, !tbaa !16
  %vecext21 = extractelement <4 x float> %29, i32 0
  %30 = load <4 x float>, ptr %b_, align 16
  %vecins = insertelement <4 x float> %30, float %vecext21, i32 0
  store <4 x float> %vecins, ptr %b_, align 16
  br label %sw.epilog53

sw.bb22:                                          ; preds = %sw.epilog
  %31 = load <4 x float>, ptr %b_, align 16
  %vecins23 = insertelement <4 x float> %31, float 0x7FF8000000000000, i32 0
  store <4 x float> %vecins23, ptr %b_, align 16
  br label %sw.epilog53

sw.bb24:                                          ; preds = %sw.epilog
  %32 = load <4 x float>, ptr %b_, align 16
  %vecins25 = insertelement <4 x float> %32, float 0xFFF8000000000000, i32 0
  store <4 x float> %vecins25, ptr %b_, align 16
  br label %sw.epilog53

sw.bb26:                                          ; preds = %sw.epilog
  %33 = load <4 x float>, ptr %b_, align 16
  %vecins27 = insertelement <4 x float> %33, float 0xFFF0000000000000, i32 0
  store <4 x float> %vecins27, ptr %b_, align 16
  br label %sw.epilog53

sw.bb28:                                          ; preds = %sw.epilog
  %34 = load <4 x float>, ptr %b_, align 16
  %vecins29 = insertelement <4 x float> %34, float 0x7FF0000000000000, i32 0
  store <4 x float> %vecins29, ptr %b_, align 16
  br label %sw.epilog53

sw.bb30:                                          ; preds = %sw.epilog
  %35 = load <4 x float>, ptr %s_, align 16, !tbaa !16
  %vecext31 = extractelement <4 x float> %35, i32 0
  %cmp32 = fcmp olt float %vecext31, 0.000000e+00
  %36 = zext i1 %cmp32 to i64
  %cond33 = select i1 %cmp32, float 0xFFF0000000000000, float 0x7FF0000000000000
  %37 = load <4 x float>, ptr %b_, align 16
  %vecins34 = insertelement <4 x float> %37, float %cond33, i32 0
  store <4 x float> %vecins34, ptr %b_, align 16
  br label %sw.epilog53

sw.bb35:                                          ; preds = %sw.epilog
  %38 = load <4 x float>, ptr %b_, align 16
  %vecins36 = insertelement <4 x float> %38, float -0.000000e+00, i32 0
  store <4 x float> %vecins36, ptr %b_, align 16
  br label %sw.epilog53

sw.bb37:                                          ; preds = %sw.epilog
  %39 = load <4 x float>, ptr %b_, align 16
  %vecins38 = insertelement <4 x float> %39, float 0.000000e+00, i32 0
  store <4 x float> %vecins38, ptr %b_, align 16
  br label %sw.epilog53

sw.bb39:                                          ; preds = %sw.epilog
  %40 = load <4 x float>, ptr %b_, align 16
  %vecins40 = insertelement <4 x float> %40, float -1.000000e+00, i32 0
  store <4 x float> %vecins40, ptr %b_, align 16
  br label %sw.epilog53

sw.bb41:                                          ; preds = %sw.epilog
  %41 = load <4 x float>, ptr %b_, align 16
  %vecins42 = insertelement <4 x float> %41, float 1.000000e+00, i32 0
  store <4 x float> %vecins42, ptr %b_, align 16
  br label %sw.epilog53

sw.bb43:                                          ; preds = %sw.epilog
  %42 = load <4 x float>, ptr %b_, align 16
  %vecins44 = insertelement <4 x float> %42, float 5.000000e-01, i32 0
  store <4 x float> %vecins44, ptr %b_, align 16
  br label %sw.epilog53

sw.bb45:                                          ; preds = %sw.epilog
  %43 = load <4 x float>, ptr %b_, align 16
  %vecins46 = insertelement <4 x float> %43, float 9.000000e+01, i32 0
  store <4 x float> %vecins46, ptr %b_, align 16
  br label %sw.epilog53

sw.bb47:                                          ; preds = %sw.epilog
  %44 = load <4 x float>, ptr %b_, align 16
  %vecins48 = insertelement <4 x float> %44, float 0x3FF921FB60000000, i32 0
  store <4 x float> %vecins48, ptr %b_, align 16
  br label %sw.epilog53

sw.bb49:                                          ; preds = %sw.epilog
  %45 = load <4 x float>, ptr %b_, align 16
  %vecins50 = insertelement <4 x float> %45, float 0x47EFFFFFE0000000, i32 0
  store <4 x float> %vecins50, ptr %b_, align 16
  br label %sw.epilog53

sw.bb51:                                          ; preds = %sw.epilog
  %46 = load <4 x float>, ptr %b_, align 16
  %vecins52 = insertelement <4 x float> %46, float 0xC7EFFFFFE0000000, i32 0
  store <4 x float> %vecins52, ptr %b_, align 16
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.epilog, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20
  %47 = getelementptr inbounds { double, double }, ptr %b_, i32 0, i32 0
  %48 = load double, ptr %47, align 16
  %49 = getelementptr inbounds { double, double }, ptr %b_, i32 0, i32 1
  %50 = load double, ptr %49, align 8
  %call54 = call <4 x float> @simde__m128_from_private(double %48, double %50)
  call void @llvm.lifetime.end.p0(i64 4, ptr %select) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %c_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %s_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  ret <4 x float> %call54
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_mm_loadu_pd(ptr noundef %mem_addr) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde__m128d_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 8 %0, i64 16, i1 false)
  %1 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %call = call <2 x double> @simde__m128d_from_private(double %2, double %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  ret <2 x double> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_loadu_epi64(ptr noundef %mem_addr) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde__m128i_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %1 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %call = call <2 x i64> @simde__m128i_from_private(double %2, double %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_mm_fixupimm_pd(<2 x double> noundef %a, <2 x double> noundef %b, <2 x i64> noundef %c, i32 noundef %imm8) #6 {
entry:
  %a.addr = alloca <2 x double>, align 16
  %b.addr = alloca <2 x double>, align 16
  %c.addr = alloca <2 x i64>, align 16
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m128d_private, align 16
  %a_ = alloca %union.simde__m128d_private, align 16
  %b_ = alloca %union.simde__m128d_private, align 16
  %s_ = alloca %union.simde__m128d_private, align 16
  %c_ = alloca %union.simde__m128i_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %select = alloca i32, align 4
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x double> %b, ptr %b.addr, align 16, !tbaa !16
  store <2 x i64> %c, ptr %c.addr, align 16, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  %0 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %1 = load <2 x double>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128d_to_private(<2 x double> noundef %1)
  %coerce.dive = getelementptr inbounds %union.simde__m128d_private, ptr %a_, i32 0, i32 0
  %2 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %3 = extractvalue { double, double } %call, 0
  store double %3, ptr %2, align 16
  %4 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %5 = extractvalue { double, double } %call, 1
  store double %5, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #16
  %6 = load <2 x double>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128d_to_private(<2 x double> noundef %6)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128d_private, ptr %b_, i32 0, i32 0
  %7 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %8 = extractvalue { double, double } %call1, 0
  store double %8, ptr %7, align 16
  %9 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %10 = extractvalue { double, double } %call1, 1
  store double %10, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %s_) #16
  %11 = load <2 x double>, ptr %b.addr, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_x_mm_flushsubnormal_pd(<2 x double> noundef %11)
  %call4 = call { double, double } @simde__m128d_to_private(<2 x double> noundef %call3)
  %coerce.dive5 = getelementptr inbounds %union.simde__m128d_private, ptr %s_, i32 0, i32 0
  %12 = getelementptr inbounds { double, double }, ptr %coerce.dive5, i32 0, i32 0
  %13 = extractvalue { double, double } %call4, 0
  store double %13, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %coerce.dive5, i32 0, i32 1
  %15 = extractvalue { double, double } %call4, 1
  store double %15, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %c_) #16
  %16 = load <2 x i64>, ptr %c.addr, align 16, !tbaa !16
  %call6 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %16)
  %coerce.dive7 = getelementptr inbounds %union.simde__m128i_private, ptr %c_, i32 0, i32 0
  %17 = getelementptr inbounds { double, double }, ptr %coerce.dive7, i32 0, i32 0
  %18 = extractvalue { double, double } %call6, 0
  store double %18, ptr %17, align 16
  %19 = getelementptr inbounds { double, double }, ptr %coerce.dive7, i32 0, i32 1
  %20 = extractvalue { double, double } %call6, 1
  store double %20, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %21 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !58
  %cmp = icmp ult i64 %21, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !58
  %mul = mul i64 %22, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %select) #16, !llvm.access.group !58
  store i32 1, ptr %select, align 4, !tbaa !5, !llvm.access.group !58
  %23 = load <2 x double>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !58
  %24 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %vecext = extractelement <2 x double> %23, i64 %24
  %call8 = call i32 @simde_math_fpclassify(double noundef %vecext), !llvm.access.group !58
  switch i32 %call8, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb14
    i32 0, label %sw.bb15
    i32 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %omp.inner.for.body
  %25 = load <2 x double>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !58
  %26 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %vecext9 = extractelement <2 x double> %25, i64 %26
  %cmp10 = fcmp olt double %vecext9, 0.000000e+00
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %27 = load <2 x double>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !58
  %28 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %vecext11 = extractelement <2 x double> %27, i64 %28
  %cmp12 = fcmp oeq double %vecext11, 1.000000e+00
  %29 = zext i1 %cmp12 to i64
  %cond = select i1 %cmp12, i32 3, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond13 = phi i32 [ 6, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond13, ptr %select, align 4, !tbaa !5, !llvm.access.group !58
  br label %sw.epilog

sw.bb14:                                          ; preds = %omp.inner.for.body
  store i32 2, ptr %select, align 4, !tbaa !5, !llvm.access.group !58
  br label %sw.epilog

sw.bb15:                                          ; preds = %omp.inner.for.body
  store i32 0, ptr %select, align 4, !tbaa !5, !llvm.access.group !58
  br label %sw.epilog

sw.bb16:                                          ; preds = %omp.inner.for.body
  %30 = load <2 x double>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !58
  %31 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %vecext17 = extractelement <2 x double> %30, i64 %31
  %cmp18 = fcmp ogt double %vecext17, 0.000000e+00
  %32 = zext i1 %cmp18 to i64
  %cond19 = select i1 %cmp18, i32 5, i32 4
  store i32 %cond19, ptr %select, align 4, !tbaa !5, !llvm.access.group !58
  br label %sw.epilog

sw.epilog:                                        ; preds = %omp.inner.for.body, %sw.bb16, %sw.bb15, %sw.bb14, %cond.end
  %33 = load <2 x i64>, ptr %c_, align 16, !tbaa !16, !llvm.access.group !58
  %34 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %vecext20 = extractelement <2 x i64> %33, i64 %34
  %35 = load i32, ptr %select, align 4, !tbaa !5, !llvm.access.group !58
  %shl = shl i32 %35, 2
  %sh_prom = zext i32 %shl to i64
  %shr = ashr i64 %vecext20, %sh_prom
  %and = and i64 %shr, 15
  switch i64 %and, label %sw.epilog57 [
    i64 0, label %sw.bb21
    i64 1, label %sw.bb23
    i64 2, label %sw.bb26
    i64 3, label %sw.bb28
    i64 4, label %sw.bb30
    i64 5, label %sw.bb32
    i64 6, label %sw.bb34
    i64 7, label %sw.bb39
    i64 8, label %sw.bb41
    i64 9, label %sw.bb43
    i64 10, label %sw.bb45
    i64 11, label %sw.bb47
    i64 12, label %sw.bb49
    i64 13, label %sw.bb51
    i64 14, label %sw.bb53
    i64 15, label %sw.bb55
  ]

sw.bb21:                                          ; preds = %sw.epilog
  %36 = load <2 x double>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !58
  %37 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %vecext22 = extractelement <2 x double> %36, i64 %37
  %38 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %39 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins = insertelement <2 x double> %39, double %vecext22, i64 %38
  store <2 x double> %vecins, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb23:                                          ; preds = %sw.epilog
  %40 = load <2 x double>, ptr %b_, align 16, !tbaa !16, !llvm.access.group !58
  %41 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %vecext24 = extractelement <2 x double> %40, i64 %41
  %42 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %43 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins25 = insertelement <2 x double> %43, double %vecext24, i64 %42
  store <2 x double> %vecins25, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb26:                                          ; preds = %sw.epilog
  %44 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %45 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins27 = insertelement <2 x double> %45, double 0x7FF8000000000000, i64 %44
  store <2 x double> %vecins27, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb28:                                          ; preds = %sw.epilog
  %46 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %47 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins29 = insertelement <2 x double> %47, double 0xFFF8000000000000, i64 %46
  store <2 x double> %vecins29, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb30:                                          ; preds = %sw.epilog
  %48 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %49 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins31 = insertelement <2 x double> %49, double 0xFFF0000000000000, i64 %48
  store <2 x double> %vecins31, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb32:                                          ; preds = %sw.epilog
  %50 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %51 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins33 = insertelement <2 x double> %51, double 0x7FF0000000000000, i64 %50
  store <2 x double> %vecins33, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb34:                                          ; preds = %sw.epilog
  %52 = load <2 x double>, ptr %s_, align 16, !tbaa !16, !llvm.access.group !58
  %53 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %vecext35 = extractelement <2 x double> %52, i64 %53
  %cmp36 = fcmp olt double %vecext35, 0.000000e+00
  %54 = zext i1 %cmp36 to i64
  %cond37 = select i1 %cmp36, double 0xFFF0000000000000, double 0x7FF0000000000000
  %55 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %56 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins38 = insertelement <2 x double> %56, double %cond37, i64 %55
  store <2 x double> %vecins38, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb39:                                          ; preds = %sw.epilog
  %57 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %58 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins40 = insertelement <2 x double> %58, double -0.000000e+00, i64 %57
  store <2 x double> %vecins40, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb41:                                          ; preds = %sw.epilog
  %59 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %60 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins42 = insertelement <2 x double> %60, double 0.000000e+00, i64 %59
  store <2 x double> %vecins42, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb43:                                          ; preds = %sw.epilog
  %61 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %62 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins44 = insertelement <2 x double> %62, double -1.000000e+00, i64 %61
  store <2 x double> %vecins44, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb45:                                          ; preds = %sw.epilog
  %63 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %64 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins46 = insertelement <2 x double> %64, double 1.000000e+00, i64 %63
  store <2 x double> %vecins46, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb47:                                          ; preds = %sw.epilog
  %65 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %66 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins48 = insertelement <2 x double> %66, double 5.000000e-01, i64 %65
  store <2 x double> %vecins48, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb49:                                          ; preds = %sw.epilog
  %67 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %68 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins50 = insertelement <2 x double> %68, double 9.000000e+01, i64 %67
  store <2 x double> %vecins50, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb51:                                          ; preds = %sw.epilog
  %69 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %70 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins52 = insertelement <2 x double> %70, double 0x3FF921FB54442D18, i64 %69
  store <2 x double> %vecins52, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb53:                                          ; preds = %sw.epilog
  %71 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %72 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins54 = insertelement <2 x double> %72, double 0x7FEFFFFFFFFFFFFF, i64 %71
  store <2 x double> %vecins54, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.bb55:                                          ; preds = %sw.epilog
  %73 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !58
  %74 = load <2 x double>, ptr %r_, align 16, !llvm.access.group !58
  %vecins56 = insertelement <2 x double> %74, double 0xFFEFFFFFFFFFFFFF, i64 %73
  store <2 x double> %vecins56, ptr %r_, align 16, !llvm.access.group !58
  br label %sw.epilog57

sw.epilog57:                                      ; preds = %sw.epilog, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb23, %sw.bb21
  call void @llvm.lifetime.end.p0(i64 4, ptr %select) #16, !llvm.access.group !58
  br label %omp.body.continue

omp.body.continue:                                ; preds = %sw.epilog57
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %75 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !58
  %add58 = add i64 %75, 1
  store i64 %add58, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !58
  br label %omp.inner.for.cond, !llvm.loop !59

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %76 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %77 = load double, ptr %76, align 16
  %78 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %79 = load double, ptr %78, align 8
  %call59 = call <2 x double> @simde__m128d_from_private(double %77, double %79)
  call void @llvm.lifetime.end.p0(i64 16, ptr %c_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %s_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  ret <2 x double> %call59
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_f64x2_(<2 x double> noundef %a, <2 x double> noundef %b, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
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
  store double %slop, ptr %slop.addr, align 8, !tbaa !61
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #16
  %arraydecay = getelementptr inbounds [2 x double], ptr %a_, i64 0, i64 0
  %0 = load <2 x double>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_pd(ptr noundef %arraydecay, <2 x double> noundef %0)
  %arraydecay1 = getelementptr inbounds [2 x double], ptr %b_, i64 0, i64 0
  %1 = load <2 x double>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_pd(ptr noundef %arraydecay1, <2 x double> noundef %1)
  %arraydecay2 = getelementptr inbounds [2 x double], ptr %a_, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [2 x double], ptr %b_, i64 0, i64 0
  %2 = load double, ptr %slop.addr, align 8, !tbaa !61
  %3 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %4 = load i32, ptr %line.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %6 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf64_(i64 noundef 2, ptr noundef %arraydecay2, ptr noundef %arraydecay3, double noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
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
  %call = call double @pow(double noundef 1.000000e+01, double noundef %fneg) #16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %call, %cond.false ]
  ret double %cond
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde__m128d_from_private(double %v.coerce0, double %v.coerce1) #6 {
entry:
  %v = alloca %union.simde__m128d_private, align 16
  %r = alloca <2 x double>, align 16
  %0 = getelementptr inbounds { double, double }, ptr %v, i32 0, i32 0
  store double %v.coerce0, ptr %0, align 16
  %1 = getelementptr inbounds { double, double }, ptr %v, i32 0, i32 1
  store double %v.coerce1, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %v, i64 16, i1 false)
  %2 = load <2 x double>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  ret <2 x double> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal { double, double } @simde__m128d_to_private(<2 x double> noundef %v) #6 {
entry:
  %retval = alloca %union.simde__m128d_private, align 16
  %v.addr = alloca <2 x double>, align 16
  store <2 x double> %v, ptr %v.addr, align 16, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %retval, ptr align 16 %v.addr, i64 16, i1 false)
  %coerce.dive = getelementptr inbounds %union.simde__m128d_private, ptr %retval, i32 0, i32 0
  %0 = load { double, double }, ptr %coerce.dive, align 16
  ret { double, double } %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_x_mm_flushsubnormal_pd(<2 x double> noundef %a) #6 {
entry:
  %a.addr = alloca <2 x double>, align 16
  %a_ = alloca %union.simde__m128d_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %0 = load <2 x double>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128d_to_private(<2 x double> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128d_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !63
  %cmp = icmp ult i64 %5, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %6 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !63
  %mul = mul i64 %6, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !63
  %7 = load <2 x double>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !63
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !63
  %vecext = extractelement <2 x double> %7, i64 %8
  %iszero = fcmp oeq double %vecext, 0.000000e+00
  br i1 %iszero, label %fpclassify_end, label %fpclassify_not_zero

fpclassify_end:                                   ; preds = %fpclassify_not_inf, %fpclassify_not_nan, %fpclassify_not_zero, %omp.inner.for.body
  %fpclassify_result = phi i32 [ 0, %omp.inner.for.body ], [ 0, %fpclassify_not_zero ], [ 0, %fpclassify_not_nan ], [ %15, %fpclassify_not_inf ]
  %tobool = icmp ne i32 %fpclassify_result, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fpclassify_end
  br label %cond.end

cond.false:                                       ; preds = %fpclassify_end
  %9 = load <2 x double>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !63
  %10 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !63
  %vecext2 = extractelement <2 x double> %9, i64 %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %vecext2, %cond.false ]
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !63
  %12 = load <2 x double>, ptr %a_, align 16, !llvm.access.group !63
  %vecins = insertelement <2 x double> %12, double %cond, i64 %11
  store <2 x double> %vecins, ptr %a_, align 16, !llvm.access.group !63
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !63
  %add3 = add i64 %13, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !63
  br label %omp.inner.for.cond, !llvm.loop !64

fpclassify_not_zero:                              ; preds = %omp.inner.for.body
  %cmp1 = fcmp uno double %vecext, %vecext
  br i1 %cmp1, label %fpclassify_end, label %fpclassify_not_nan

fpclassify_not_nan:                               ; preds = %fpclassify_not_zero
  %14 = call double @llvm.fabs.f64(double %vecext) #17
  %isinf = fcmp oeq double %14, 0x7FF0000000000000
  br i1 %isinf, label %fpclassify_end, label %fpclassify_not_inf

fpclassify_not_inf:                               ; preds = %fpclassify_not_nan
  %isnormal = fcmp uge double %14, 0x10000000000000
  %15 = select i1 %isnormal, i32 0, i32 1
  br label %fpclassify_end

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %16 = getelementptr inbounds { double, double }, ptr %a_, i32 0, i32 0
  %17 = load double, ptr %16, align 16
  %18 = getelementptr inbounds { double, double }, ptr %a_, i32 0, i32 1
  %19 = load double, ptr %18, align 8
  %call4 = call <2 x double> @simde__m128d_from_private(double %17, double %19)
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  ret <2 x double> %call4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @simde_math_fpclassify(double noundef %v) #8 {
entry:
  %v.addr = alloca double, align 8
  store double %v, ptr %v.addr, align 8, !tbaa !61
  %0 = load double, ptr %v.addr, align 8, !tbaa !61
  %iszero = fcmp oeq double %0, 0.000000e+00
  br i1 %iszero, label %fpclassify_end, label %fpclassify_not_zero

fpclassify_end:                                   ; preds = %fpclassify_not_inf, %fpclassify_not_nan, %fpclassify_not_zero, %entry
  %fpclassify_result = phi i32 [ 2, %entry ], [ 0, %fpclassify_not_zero ], [ 1, %fpclassify_not_nan ], [ %2, %fpclassify_not_inf ]
  ret i32 %fpclassify_result

fpclassify_not_zero:                              ; preds = %entry
  %cmp = fcmp uno double %0, %0
  br i1 %cmp, label %fpclassify_end, label %fpclassify_not_nan

fpclassify_not_nan:                               ; preds = %fpclassify_not_zero
  %1 = call double @llvm.fabs.f64(double %0) #17
  %isinf = fcmp oeq double %1, 0x7FF0000000000000
  br i1 %isinf, label %fpclassify_end, label %fpclassify_not_inf

fpclassify_not_inf:                               ; preds = %fpclassify_not_nan
  %isnormal = fcmp uge double %1, 0x10000000000000
  %2 = select i1 %isnormal, i32 4, i32 3
  br label %fpclassify_end
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm_storeu_pd(ptr noundef %mem_addr, <2 x double> noundef %a) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <2 x double>, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 16 %a.addr, i64 16, i1 false)
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
  store double %slop, ptr %slop.addr, align 8, !tbaa !61
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  %1 = load i64, ptr %vec_len.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
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
  %6 = load double, ptr %arrayidx, align 8, !tbaa !61
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds double, ptr %7, i64 %8
  %9 = load double, ptr %arrayidx1, align 8, !tbaa !61
  %10 = load double, ptr %slop.addr, align 8, !tbaa !61
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
  %19 = load double, ptr %arrayidx5, align 8, !tbaa !61
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %21 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx6 = getelementptr inbounds double, ptr %20, i64 %21
  %22 = load double, ptr %arrayidx6, align 8, !tbaa !61
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.37, ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, i64 noundef %16, double noundef %19, double noundef %22)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
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
  store double %a, ptr %a.addr, align 8, !tbaa !61
  store double %b, ptr %b.addr, align 8, !tbaa !61
  store double %slop, ptr %slop.addr, align 8, !tbaa !61
  %0 = load double, ptr %a.addr, align 8, !tbaa !61
  %1 = call i1 @llvm.is.fpclass.f64(double %0, i32 3)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, ptr %b.addr, align 8, !tbaa !61
  %3 = call i1 @llvm.is.fpclass.f64(double %2, i32 3)
  %4 = zext i1 %3 to i32
  store i32 %4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load double, ptr %a.addr, align 8, !tbaa !61
  %6 = call i1 @llvm.is.fpclass.f64(double %5, i32 516)
  br i1 %6, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  %7 = load double, ptr %a.addr, align 8, !tbaa !61
  %8 = load double, ptr %b.addr, align 8, !tbaa !61
  %cmp = fcmp olt double %7, %8
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then1
  %9 = load double, ptr %a.addr, align 8, !tbaa !61
  %10 = load double, ptr %b.addr, align 8, !tbaa !61
  %cmp2 = fcmp ogt double %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then1
  %11 = phi i1 [ true, %if.then1 ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %12 = load double, ptr %slop.addr, align 8, !tbaa !61
  %cmp4 = fcmp oeq double %12, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else3
  %call = call i32 @memcmp(ptr noundef %a.addr, ptr noundef %b.addr, i64 noundef 8) #16
  %tobool = icmp ne i32 %call, 0
  %lnot6 = xor i1 %tobool, true
  %lnot.ext7 = zext i1 %lnot6 to i32
  store i32 %lnot.ext7, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #16
  %13 = load double, ptr %a.addr, align 8, !tbaa !61
  %14 = load double, ptr %slop.addr, align 8, !tbaa !61
  %sub = fsub double %13, %14
  store double %sub, ptr %lo, align 8, !tbaa !61
  %15 = load double, ptr %lo, align 8, !tbaa !61
  %16 = load double, ptr %a.addr, align 8, !tbaa !61
  %cmp9 = fcmp oeq double %15, %16
  %lnot10 = xor i1 %cmp9, true
  %lnot12 = xor i1 %lnot10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv = sext i32 %lnot.ext13 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool14 = icmp ne i64 %expval, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else8
  %17 = load double, ptr %a.addr, align 8, !tbaa !61
  %call16 = call double @nextafter(double noundef %17, double noundef 0xFFF0000000000000) #16
  store double %call16, ptr %lo, align 8, !tbaa !61
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else8
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #16
  %18 = load double, ptr %a.addr, align 8, !tbaa !61
  %19 = load double, ptr %slop.addr, align 8, !tbaa !61
  %add = fadd double %18, %19
  store double %add, ptr %hi, align 8, !tbaa !61
  %20 = load double, ptr %hi, align 8, !tbaa !61
  %21 = load double, ptr %a.addr, align 8, !tbaa !61
  %cmp17 = fcmp oeq double %20, %21
  %lnot19 = xor i1 %cmp17, true
  %lnot21 = xor i1 %lnot19, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %conv23 = sext i32 %lnot.ext22 to i64
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0)
  %tobool25 = icmp ne i64 %expval24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end
  %22 = load double, ptr %a.addr, align 8, !tbaa !61
  %call27 = call double @nextafter(double noundef %22, double noundef 0x7FF0000000000000) #16
  store double %call27, ptr %hi, align 8, !tbaa !61
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end
  %23 = load double, ptr %b.addr, align 8, !tbaa !61
  %24 = load double, ptr %lo, align 8, !tbaa !61
  %cmp29 = fcmp oge double %23, %24
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end28
  %25 = load double, ptr %b.addr, align 8, !tbaa !61
  %26 = load double, ptr %hi, align 8, !tbaa !61
  %cmp31 = fcmp ole double %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28
  %27 = phi i1 [ false, %if.end28 ], [ %cmp31, %land.rhs ]
  %land.ext = zext i1 %27 to i32
  store i32 %land.ext, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #16
  br label %return

return:                                           ; preds = %land.end, %if.then5, %lor.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #9

; Function Attrs: nounwind
declare double @nextafter(double noundef, double noundef) #11

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #11

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_mm_mask_mov_pd(<2 x double> noundef %src, i8 noundef zeroext %k, <2 x double> noundef %a) #6 {
entry:
  %src.addr = alloca <2 x double>, align 16
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x double>, align 16
  store <2 x double> %src, ptr %src.addr, align 16, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load <2 x double>, ptr %src.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_mm_castpd_si128(<2 x double> noundef %0)
  %1 = load i8, ptr %k.addr, align 1, !tbaa !16
  %2 = load <2 x double>, ptr %a.addr, align 16, !tbaa !16
  %call1 = call <2 x i64> @simde_mm_castpd_si128(<2 x double> noundef %2)
  %call2 = call <2 x i64> @simde_mm_mask_mov_epi64(<2 x i64> noundef %call, i8 noundef zeroext %1, <2 x i64> noundef %call1)
  %call3 = call <2 x double> @simde_mm_castsi128_pd(<2 x i64> noundef %call2)
  ret <2 x double> %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_mm_castsi128_pd(<2 x i64> noundef %a) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %r = alloca <2 x double>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %a.addr, i64 16, i1 false)
  %0 = load <2 x double>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  ret <2 x double> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_mask_mov_epi64(<2 x i64> noundef %src, i8 noundef zeroext %k, <2 x i64> noundef %a) #6 {
entry:
  %src.addr = alloca <2 x i64>, align 16
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %src_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store <2 x i64> %src, ptr %src.addr, align 16, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %src_) #16
  %0 = load <2 x i64>, ptr %src.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %src_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %5 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !66
  %cmp = icmp ult i64 %10, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !66
  %mul = mul i64 %11, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !66
  %12 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !66
  %conv = zext i8 %12 to i32
  %13 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !66
  %sh_prom = trunc i64 %13 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %14 = load <2 x i64>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !66
  %15 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !66
  %vecext = extractelement <2 x i64> %14, i64 %15
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  %16 = load <2 x i64>, ptr %src_, align 16, !tbaa !16, !llvm.access.group !66
  %17 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !66
  %vecext3 = extractelement <2 x i64> %16, i64 %17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %vecext, %cond.true ], [ %vecext3, %cond.false ]
  %18 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !66
  %19 = load <2 x i64>, ptr %r_, align 16, !llvm.access.group !66
  %vecins = insertelement <2 x i64> %19, i64 %cond, i64 %18
  store <2 x i64> %vecins, ptr %r_, align 16, !llvm.access.group !66
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !66
  %add4 = add i64 %20, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !66
  br label %omp.inner.for.cond, !llvm.loop !67

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %21 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %22 = load double, ptr %21, align 16
  %23 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %24 = load double, ptr %23, align 8
  %call5 = call <2 x i64> @simde__m128i_from_private(double %22, double %24)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %src_) #16
  ret <2 x i64> %call5
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_castpd_si128(<2 x double> noundef %a) #6 {
entry:
  %a.addr = alloca <2 x double>, align 16
  %r = alloca <2 x i64>, align 16
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %a.addr, i64 16, i1 false)
  %0 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #16
  ret <2 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_mm_maskz_mov_pd(i8 noundef zeroext %k, <2 x double> noundef %a) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x double>, align 16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load i8, ptr %k.addr, align 1, !tbaa !16
  %1 = load <2 x double>, ptr %a.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_mm_castpd_si128(<2 x double> noundef %1)
  %call1 = call <2 x i64> @simde_mm_maskz_mov_epi64(i8 noundef zeroext %0, <2 x i64> noundef %call)
  %call2 = call <2 x double> @simde_mm_castsi128_pd(<2 x i64> noundef %call1)
  ret <2 x double> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_maskz_mov_epi64(i8 noundef zeroext %k, <2 x i64> noundef %a) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !69
  %cmp = icmp ult i64 %5, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %6 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !69
  %mul = mul i64 %6, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !69
  %7 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !69
  %conv = zext i8 %7 to i32
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !69
  %sh_prom = trunc i64 %8 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %9 = load <2 x i64>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !69
  %10 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !69
  %vecext = extractelement <2 x i64> %9, i64 %10
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %vecext, %cond.true ], [ 0, %cond.false ]
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !69
  %12 = load <2 x i64>, ptr %r_, align 16, !llvm.access.group !69
  %vecins = insertelement <2 x i64> %12, i64 %cond, i64 %11
  store <2 x i64> %vecins, ptr %r_, align 16, !llvm.access.group !69
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !69
  %add1 = add i64 %13, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !69
  br label %omp.inner.for.cond, !llvm.loop !70

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %15 = load double, ptr %14, align 16
  %16 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %17 = load double, ptr %16, align 8
  %call2 = call <2 x i64> @simde__m128i_from_private(double %15, double %17)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  ret <2 x i64> %call2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x double> @simde_mm256_loadu_pd(ptr noundef %a) #12 {
entry:
  %a.addr = alloca ptr, align 8
  %r = alloca <4 x double>, align 32
  store ptr %a, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 8 %0, i64 32, i1 false)
  %1 = load <4 x double>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  ret <4 x double> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %mem_addr) #12 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <4 x i64>, align 32
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 1 %0, i64 32, i1 false)
  %1 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x double> @simde_mm256_fixupimm_pd(ptr noundef byval(<4 x double>) align 32 %0, ptr noundef byval(<4 x double>) align 32 %1, ptr noundef byval(<4 x i64>) align 32 %2, i32 noundef %imm8) #12 {
entry:
  %a.addr = alloca <4 x double>, align 32
  %b.addr = alloca <4 x double>, align 32
  %c.addr = alloca <4 x i64>, align 32
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m256d_private, align 32
  %a_ = alloca %union.simde__m256d_private, align 32
  %indirect-arg-temp = alloca <4 x double>, align 32
  %b_ = alloca %union.simde__m256d_private, align 32
  %indirect-arg-temp1 = alloca <4 x double>, align 32
  %s_ = alloca %union.simde__m256d_private, align 32
  %indirect-arg-temp2 = alloca <4 x double>, align 32
  %indirect-arg-temp3 = alloca <4 x double>, align 32
  %c_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %select = alloca i32, align 4
  %a = load <4 x double>, ptr %0, align 32, !tbaa !16
  %b = load <4 x double>, ptr %1, align 32, !tbaa !16
  %c = load <4 x i64>, ptr %2, align 32, !tbaa !16
  store <4 x double> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x double> %b, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %c, ptr %c.addr, align 32, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  %3 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  %4 = load <4 x double>, ptr %a.addr, align 32, !tbaa !16
  store <4 x double> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256d_to_private(ptr sret(%union.simde__m256d_private) align 32 %a_, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #16
  %5 = load <4 x double>, ptr %b.addr, align 32, !tbaa !16
  store <4 x double> %5, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256d_to_private(ptr sret(%union.simde__m256d_private) align 32 %b_, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 32, ptr %s_) #16
  %6 = load <4 x double>, ptr %b.addr, align 32, !tbaa !16
  store <4 x double> %6, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call = call <4 x double> @simde_x_mm256_flushsubnormal_pd(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp2)
  store <4 x double> %call, ptr %indirect-arg-temp3, align 32, !tbaa !16
  call void @simde__m256d_to_private(ptr sret(%union.simde__m256d_private) align 32 %s_, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp3)
  call void @llvm.lifetime.start.p0(i64 32, ptr %c_) #16
  %7 = load <4 x i64>, ptr %c.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %c_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !72
  %cmp = icmp ult i64 %8, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %9 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !72
  %mul = mul i64 %9, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %select) #16, !llvm.access.group !72
  store i32 1, ptr %select, align 4, !tbaa !5, !llvm.access.group !72
  %10 = load <4 x double>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !72
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %vecext = extractelement <4 x double> %10, i64 %11
  %call5 = call i32 @simde_math_fpclassify(double noundef %vecext), !llvm.access.group !72
  switch i32 %call5, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb11
    i32 0, label %sw.bb12
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %omp.inner.for.body
  %12 = load <4 x double>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !72
  %13 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %vecext6 = extractelement <4 x double> %12, i64 %13
  %cmp7 = fcmp olt double %vecext6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %14 = load <4 x double>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !72
  %15 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %vecext8 = extractelement <4 x double> %14, i64 %15
  %cmp9 = fcmp oeq double %vecext8, 1.000000e+00
  %16 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 3, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ 6, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond10, ptr %select, align 4, !tbaa !5, !llvm.access.group !72
  br label %sw.epilog

sw.bb11:                                          ; preds = %omp.inner.for.body
  store i32 2, ptr %select, align 4, !tbaa !5, !llvm.access.group !72
  br label %sw.epilog

sw.bb12:                                          ; preds = %omp.inner.for.body
  store i32 0, ptr %select, align 4, !tbaa !5, !llvm.access.group !72
  br label %sw.epilog

sw.bb13:                                          ; preds = %omp.inner.for.body
  %17 = load <4 x double>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !72
  %18 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %vecext14 = extractelement <4 x double> %17, i64 %18
  %cmp15 = fcmp ogt double %vecext14, 0.000000e+00
  %19 = zext i1 %cmp15 to i64
  %cond16 = select i1 %cmp15, i32 5, i32 4
  store i32 %cond16, ptr %select, align 4, !tbaa !5, !llvm.access.group !72
  br label %sw.epilog

sw.epilog:                                        ; preds = %omp.inner.for.body, %sw.bb13, %sw.bb12, %sw.bb11, %cond.end
  %20 = load <4 x i64>, ptr %c_, align 32, !tbaa !16, !llvm.access.group !72
  %21 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %vecext17 = extractelement <4 x i64> %20, i64 %21
  %22 = load i32, ptr %select, align 4, !tbaa !5, !llvm.access.group !72
  %shl = shl i32 %22, 2
  %sh_prom = zext i32 %shl to i64
  %shr = ashr i64 %vecext17, %sh_prom
  %and = and i64 %shr, 15
  switch i64 %and, label %sw.epilog54 [
    i64 0, label %sw.bb18
    i64 1, label %sw.bb20
    i64 2, label %sw.bb23
    i64 3, label %sw.bb25
    i64 4, label %sw.bb27
    i64 5, label %sw.bb29
    i64 6, label %sw.bb31
    i64 7, label %sw.bb36
    i64 8, label %sw.bb38
    i64 9, label %sw.bb40
    i64 10, label %sw.bb42
    i64 11, label %sw.bb44
    i64 12, label %sw.bb46
    i64 13, label %sw.bb48
    i64 14, label %sw.bb50
    i64 15, label %sw.bb52
  ]

sw.bb18:                                          ; preds = %sw.epilog
  %23 = load <4 x double>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !72
  %24 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %vecext19 = extractelement <4 x double> %23, i64 %24
  %25 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %26 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins = insertelement <4 x double> %26, double %vecext19, i64 %25
  store <4 x double> %vecins, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb20:                                          ; preds = %sw.epilog
  %27 = load <4 x double>, ptr %b_, align 32, !tbaa !16, !llvm.access.group !72
  %28 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %vecext21 = extractelement <4 x double> %27, i64 %28
  %29 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %30 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins22 = insertelement <4 x double> %30, double %vecext21, i64 %29
  store <4 x double> %vecins22, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb23:                                          ; preds = %sw.epilog
  %31 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %32 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins24 = insertelement <4 x double> %32, double 0x7FF8000000000000, i64 %31
  store <4 x double> %vecins24, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb25:                                          ; preds = %sw.epilog
  %33 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %34 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins26 = insertelement <4 x double> %34, double 0xFFF8000000000000, i64 %33
  store <4 x double> %vecins26, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb27:                                          ; preds = %sw.epilog
  %35 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %36 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins28 = insertelement <4 x double> %36, double 0xFFF0000000000000, i64 %35
  store <4 x double> %vecins28, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb29:                                          ; preds = %sw.epilog
  %37 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %38 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins30 = insertelement <4 x double> %38, double 0x7FF0000000000000, i64 %37
  store <4 x double> %vecins30, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb31:                                          ; preds = %sw.epilog
  %39 = load <4 x double>, ptr %s_, align 32, !tbaa !16, !llvm.access.group !72
  %40 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %vecext32 = extractelement <4 x double> %39, i64 %40
  %cmp33 = fcmp olt double %vecext32, 0.000000e+00
  %41 = zext i1 %cmp33 to i64
  %cond34 = select i1 %cmp33, double 0xFFF0000000000000, double 0x7FF0000000000000
  %42 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %43 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins35 = insertelement <4 x double> %43, double %cond34, i64 %42
  store <4 x double> %vecins35, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb36:                                          ; preds = %sw.epilog
  %44 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %45 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins37 = insertelement <4 x double> %45, double -0.000000e+00, i64 %44
  store <4 x double> %vecins37, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb38:                                          ; preds = %sw.epilog
  %46 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %47 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins39 = insertelement <4 x double> %47, double 0.000000e+00, i64 %46
  store <4 x double> %vecins39, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb40:                                          ; preds = %sw.epilog
  %48 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %49 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins41 = insertelement <4 x double> %49, double -1.000000e+00, i64 %48
  store <4 x double> %vecins41, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb42:                                          ; preds = %sw.epilog
  %50 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %51 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins43 = insertelement <4 x double> %51, double 1.000000e+00, i64 %50
  store <4 x double> %vecins43, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb44:                                          ; preds = %sw.epilog
  %52 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %53 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins45 = insertelement <4 x double> %53, double 5.000000e-01, i64 %52
  store <4 x double> %vecins45, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb46:                                          ; preds = %sw.epilog
  %54 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %55 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins47 = insertelement <4 x double> %55, double 9.000000e+01, i64 %54
  store <4 x double> %vecins47, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb48:                                          ; preds = %sw.epilog
  %56 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %57 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins49 = insertelement <4 x double> %57, double 0x3FF921FB54442D18, i64 %56
  store <4 x double> %vecins49, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb50:                                          ; preds = %sw.epilog
  %58 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %59 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins51 = insertelement <4 x double> %59, double 0x7FEFFFFFFFFFFFFF, i64 %58
  store <4 x double> %vecins51, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.bb52:                                          ; preds = %sw.epilog
  %60 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !72
  %61 = load <4 x double>, ptr %r_, align 32, !llvm.access.group !72
  %vecins53 = insertelement <4 x double> %61, double 0xFFEFFFFFFFFFFFFF, i64 %60
  store <4 x double> %vecins53, ptr %r_, align 32, !llvm.access.group !72
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.epilog, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb20, %sw.bb18
  call void @llvm.lifetime.end.p0(i64 4, ptr %select) #16, !llvm.access.group !72
  br label %omp.body.continue

omp.body.continue:                                ; preds = %sw.epilog54
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %62 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !72
  %add55 = add i64 %62, 1
  store i64 %add55, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !72
  br label %omp.inner.for.cond, !llvm.loop !73

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call56 = call <4 x double> @simde__m256d_from_private(ptr noundef byval(%union.simde__m256d_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %c_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %s_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #16
  ret <4 x double> %call56
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_f64x4_(ptr noundef byval(<4 x double>) align 32 %0, ptr noundef byval(<4 x double>) align 32 %1, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x double>, align 32
  %b.addr = alloca <4 x double>, align 32
  %slop.addr = alloca double, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x double], align 16
  %b_ = alloca [4 x double], align 16
  %indirect-arg-temp = alloca <4 x double>, align 32
  %indirect-arg-temp2 = alloca <4 x double>, align 32
  %a = load <4 x double>, ptr %0, align 32, !tbaa !16
  %b = load <4 x double>, ptr %1, align 32, !tbaa !16
  store <4 x double> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x double> %b, ptr %b.addr, align 32, !tbaa !16
  store double %slop, ptr %slop.addr, align 8, !tbaa !61
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #16
  %arraydecay = getelementptr inbounds [4 x double], ptr %a_, i64 0, i64 0
  %2 = load <4 x double>, ptr %a.addr, align 32, !tbaa !16
  store <4 x double> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_pd(ptr noundef %arraydecay, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp)
  %arraydecay1 = getelementptr inbounds [4 x double], ptr %b_, i64 0, i64 0
  %3 = load <4 x double>, ptr %b.addr, align 32, !tbaa !16
  store <4 x double> %3, ptr %indirect-arg-temp2, align 32, !tbaa !16
  call void @simde_mm256_storeu_pd(ptr noundef %arraydecay1, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp2)
  %arraydecay3 = getelementptr inbounds [4 x double], ptr %a_, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [4 x double], ptr %b_, i64 0, i64 0
  %4 = load double, ptr %slop.addr, align 8, !tbaa !61
  %5 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %6 = load i32, ptr %line.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf64_(i64 noundef 4, ptr noundef %arraydecay3, ptr noundef %arraydecay4, double noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m256d_to_private(ptr noalias sret(%union.simde__m256d_private) align 32 %agg.result, ptr noundef byval(<4 x double>) align 32 %0) #13 {
entry:
  %v.addr = alloca <4 x double>, align 32
  %v = load <4 x double>, ptr %0, align 32, !tbaa !16
  store <4 x double> %v, ptr %v.addr, align 32, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %agg.result, ptr align 32 %v.addr, i64 32, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x double> @simde_x_mm256_flushsubnormal_pd(ptr noundef byval(<4 x double>) align 32 %0) #12 {
entry:
  %a.addr = alloca <4 x double>, align 32
  %a_ = alloca %union.simde__m256d_private, align 32
  %indirect-arg-temp = alloca <4 x double>, align 32
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <4 x double>, ptr %0, align 32, !tbaa !16
  store <4 x double> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  %1 = load <4 x double>, ptr %a.addr, align 32, !tbaa !16
  store <4 x double> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256d_to_private(ptr sret(%union.simde__m256d_private) align 32 %a_, ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !75
  %cmp = icmp ult i64 %2, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !75
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !75
  %4 = load <4 x double>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !75
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !75
  %vecext = extractelement <4 x double> %4, i64 %5
  %iszero = fcmp oeq double %vecext, 0.000000e+00
  br i1 %iszero, label %fpclassify_end, label %fpclassify_not_zero

fpclassify_end:                                   ; preds = %fpclassify_not_inf, %fpclassify_not_nan, %fpclassify_not_zero, %omp.inner.for.body
  %fpclassify_result = phi i32 [ 0, %omp.inner.for.body ], [ 0, %fpclassify_not_zero ], [ 0, %fpclassify_not_nan ], [ %12, %fpclassify_not_inf ]
  %tobool = icmp ne i32 %fpclassify_result, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fpclassify_end
  br label %cond.end

cond.false:                                       ; preds = %fpclassify_end
  %6 = load <4 x double>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !75
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !75
  %vecext2 = extractelement <4 x double> %6, i64 %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %vecext2, %cond.false ]
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !75
  %9 = load <4 x double>, ptr %a_, align 32, !llvm.access.group !75
  %vecins = insertelement <4 x double> %9, double %cond, i64 %8
  store <4 x double> %vecins, ptr %a_, align 32, !llvm.access.group !75
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !75
  %add3 = add i64 %10, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !75
  br label %omp.inner.for.cond, !llvm.loop !76

fpclassify_not_zero:                              ; preds = %omp.inner.for.body
  %cmp1 = fcmp uno double %vecext, %vecext
  br i1 %cmp1, label %fpclassify_end, label %fpclassify_not_nan

fpclassify_not_nan:                               ; preds = %fpclassify_not_zero
  %11 = call double @llvm.fabs.f64(double %vecext) #17
  %isinf = fcmp oeq double %11, 0x7FF0000000000000
  br i1 %isinf, label %fpclassify_end, label %fpclassify_not_inf

fpclassify_not_inf:                               ; preds = %fpclassify_not_nan
  %isnormal = fcmp uge double %11, 0x10000000000000
  %12 = select i1 %isnormal, i32 0, i32 1
  br label %fpclassify_end

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <4 x double> @simde__m256d_from_private(ptr noundef byval(%union.simde__m256d_private) align 32 %a_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  ret <4 x double> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x double> @simde__m256d_from_private(ptr noundef byval(%union.simde__m256d_private) align 32 %v) #12 {
entry:
  %r = alloca <4 x double>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 32 %v, i64 32, i1 false)
  %0 = load <4 x double>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #16
  ret <4 x double> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm256_storeu_pd(ptr noundef %mem_addr, ptr noundef byval(<4 x double>) align 32 %0) #13 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <4 x double>, align 32
  %a = load <4 x double>, ptr %0, align 32, !tbaa !16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <4 x double> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 32 %a.addr, i64 32, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x double> @simde_mm256_mask_mov_pd(ptr noundef byval(<4 x double>) align 32 %0, i8 noundef zeroext %k, ptr noundef byval(<4 x double>) align 32 %1) #12 {
entry:
  %src.addr = alloca <4 x double>, align 32
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x double>, align 32
  %indirect-arg-temp = alloca <4 x double>, align 32
  %indirect-arg-temp1 = alloca <4 x double>, align 32
  %indirect-arg-temp3 = alloca <4 x i64>, align 32
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %src = load <4 x double>, ptr %0, align 32, !tbaa !16
  %a = load <4 x double>, ptr %1, align 32, !tbaa !16
  store <4 x double> %src, ptr %src.addr, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x double> %a, ptr %a.addr, align 32, !tbaa !16
  %2 = load <4 x double>, ptr %src.addr, align 32, !tbaa !16
  store <4 x double> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  %call = call <4 x i64> @simde_mm256_castpd_si256(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp)
  %3 = load i8, ptr %k.addr, align 1, !tbaa !16
  %4 = load <4 x double>, ptr %a.addr, align 32, !tbaa !16
  store <4 x double> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_castpd_si256(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp3, align 32, !tbaa !16
  store <4 x i64> %call2, ptr %indirect-arg-temp4, align 32, !tbaa !16
  %call5 = call <4 x i64> @simde_mm256_mask_mov_epi64(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp3, i8 noundef zeroext %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  store <4 x i64> %call5, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x double> @simde_mm256_castsi256_pd(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  ret <4 x double> %call7
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x double> @simde_mm256_castsi256_pd(ptr noundef byval(<4 x i64>) align 32 %0) #12 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load <4 x double>, ptr %a.addr, align 32, !tbaa !16
  ret <4 x double> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_mask_mov_epi64(ptr noundef byval(<4 x i64>) align 32 %0, i8 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %1) #12 {
entry:
  %src.addr = alloca <4 x i64>, align 32
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x i64>, align 32
  %src_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %src = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %a = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %src, ptr %src.addr, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %src_) #16
  %2 = load <4 x i64>, ptr %src.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %src_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !78
  %cmp = icmp ult i64 %4, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !78
  %mul = mul i64 %5, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !78
  %6 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !78
  %conv = zext i8 %6 to i32
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !78
  %sh_prom = trunc i64 %7 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %8 = load <4 x i64>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !78
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !78
  %vecext = extractelement <4 x i64> %8, i64 %9
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  %10 = load <4 x i64>, ptr %src_, align 32, !tbaa !16, !llvm.access.group !78
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !78
  %vecext2 = extractelement <4 x i64> %10, i64 %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %vecext, %cond.true ], [ %vecext2, %cond.false ]
  %12 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !78
  %13 = load <4 x i64>, ptr %r_, align 32, !llvm.access.group !78
  %vecins = insertelement <4 x i64> %13, i64 %cond, i64 %12
  store <4 x i64> %vecins, ptr %r_, align 32, !llvm.access.group !78
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !78
  %add3 = add i64 %14, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !78
  br label %omp.inner.for.cond, !llvm.loop !79

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %src_) #16
  ret <4 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_castpd_si256(ptr noundef byval(<4 x double>) align 32 %0) #12 {
entry:
  %a.addr = alloca <4 x double>, align 32
  %a = load <4 x double>, ptr %0, align 32, !tbaa !16
  store <4 x double> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x double> @simde_mm256_maskz_mov_pd(i8 noundef zeroext %k, ptr noundef byval(<4 x double>) align 32 %0) #12 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x double>, align 32
  %indirect-arg-temp = alloca <4 x double>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp3 = alloca <4 x i64>, align 32
  %a = load <4 x double>, ptr %0, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x double> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load i8, ptr %k.addr, align 1, !tbaa !16
  %2 = load <4 x double>, ptr %a.addr, align 32, !tbaa !16
  store <4 x double> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  %call = call <4 x i64> @simde_mm256_castpd_si256(ptr noundef byval(<4 x double>) align 32 %indirect-arg-temp)
  store <4 x i64> %call, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call2 = call <4 x i64> @simde_mm256_maskz_mov_epi64(i8 noundef zeroext %1, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call2, ptr %indirect-arg-temp3, align 32, !tbaa !16
  %call4 = call <4 x double> @simde_mm256_castsi256_pd(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp3)
  ret <4 x double> %call4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_maskz_mov_epi64(i8 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %0) #12 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x i64>, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #16
  %1 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !81
  %cmp = icmp ult i64 %2, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !81
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !81
  %4 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !81
  %conv = zext i8 %4 to i32
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !81
  %sh_prom = trunc i64 %5 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load <4 x i64>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !81
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !81
  %vecext = extractelement <4 x i64> %6, i64 %7
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %vecext, %cond.true ], [ 0, %cond.false ]
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !81
  %9 = load <4 x i64>, ptr %r_, align 32, !llvm.access.group !81
  %vecins = insertelement <4 x i64> %9, i64 %cond, i64 %8
  store <4 x i64> %vecins, ptr %r_, align 32, !llvm.access.group !81
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !81
  %add1 = add i64 %10, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !81
  br label %omp.inner.for.cond, !llvm.loop !82

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #16
  ret <4 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x double> @simde_mm512_loadu_pd(ptr noundef %mem_addr) #14 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <8 x double>, align 64
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 1 %0, i64 64, i1 false)
  %1 = load <8 x double>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <8 x double> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x double> @simde_mm512_fixupimm_pd(ptr noundef byval(<8 x double>) align 64 %0, ptr noundef byval(<8 x double>) align 64 %1, ptr noundef byval(<8 x i64>) align 64 %2, i32 noundef %imm8) #14 {
entry:
  %a.addr = alloca <8 x double>, align 64
  %b.addr = alloca <8 x double>, align 64
  %c.addr = alloca <8 x i64>, align 64
  %imm8.addr = alloca i32, align 4
  %r_ = alloca %union.simde__m512d_private, align 64
  %a_ = alloca %union.simde__m512d_private, align 64
  %indirect-arg-temp = alloca <8 x double>, align 64
  %b_ = alloca %union.simde__m512d_private, align 64
  %indirect-arg-temp1 = alloca <8 x double>, align 64
  %s_ = alloca %union.simde__m512d_private, align 64
  %indirect-arg-temp2 = alloca <8 x double>, align 64
  %indirect-arg-temp3 = alloca <8 x double>, align 64
  %c_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %select = alloca i32, align 4
  %a = load <8 x double>, ptr %0, align 64, !tbaa !16
  %b = load <8 x double>, ptr %1, align 64, !tbaa !16
  %c = load <8 x i64>, ptr %2, align 64, !tbaa !16
  store <8 x double> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x double> %b, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %c, ptr %c.addr, align 64, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  %3 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  %4 = load <8 x double>, ptr %a.addr, align 64, !tbaa !16
  store <8 x double> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512d_to_private(ptr sret(%union.simde__m512d_private) align 64 %a_, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #16
  %5 = load <8 x double>, ptr %b.addr, align 64, !tbaa !16
  store <8 x double> %5, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512d_to_private(ptr sret(%union.simde__m512d_private) align 64 %b_, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 64, ptr %s_) #16
  %6 = load <8 x double>, ptr %b.addr, align 64, !tbaa !16
  store <8 x double> %6, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call = call <8 x double> @simde_x_mm512_flushsubnormal_pd(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp2)
  store <8 x double> %call, ptr %indirect-arg-temp3, align 64, !tbaa !16
  call void @simde__m512d_to_private(ptr sret(%union.simde__m512d_private) align 64 %s_, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp3)
  call void @llvm.lifetime.start.p0(i64 64, ptr %c_) #16
  %7 = load <8 x i64>, ptr %c.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %c_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !84
  %cmp = icmp ult i64 %8, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %9 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !84
  %mul = mul i64 %9, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  call void @llvm.lifetime.start.p0(i64 4, ptr %select) #16, !llvm.access.group !84
  store i32 1, ptr %select, align 4, !tbaa !5, !llvm.access.group !84
  %10 = load <8 x double>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !84
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %vecext = extractelement <8 x double> %10, i64 %11
  %call5 = call i32 @simde_math_fpclassify(double noundef %vecext), !llvm.access.group !84
  switch i32 %call5, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb11
    i32 0, label %sw.bb12
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %omp.inner.for.body
  %12 = load <8 x double>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !84
  %13 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %vecext6 = extractelement <8 x double> %12, i64 %13
  %cmp7 = fcmp olt double %vecext6, 0.000000e+00
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %14 = load <8 x double>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !84
  %15 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %vecext8 = extractelement <8 x double> %14, i64 %15
  %cmp9 = fcmp oeq double %vecext8, 1.000000e+00
  %16 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 3, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond10 = phi i32 [ 6, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond10, ptr %select, align 4, !tbaa !5, !llvm.access.group !84
  br label %sw.epilog

sw.bb11:                                          ; preds = %omp.inner.for.body
  store i32 2, ptr %select, align 4, !tbaa !5, !llvm.access.group !84
  br label %sw.epilog

sw.bb12:                                          ; preds = %omp.inner.for.body
  store i32 0, ptr %select, align 4, !tbaa !5, !llvm.access.group !84
  br label %sw.epilog

sw.bb13:                                          ; preds = %omp.inner.for.body
  %17 = load <8 x double>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !84
  %18 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %vecext14 = extractelement <8 x double> %17, i64 %18
  %cmp15 = fcmp ogt double %vecext14, 0.000000e+00
  %19 = zext i1 %cmp15 to i64
  %cond16 = select i1 %cmp15, i32 5, i32 4
  store i32 %cond16, ptr %select, align 4, !tbaa !5, !llvm.access.group !84
  br label %sw.epilog

sw.epilog:                                        ; preds = %omp.inner.for.body, %sw.bb13, %sw.bb12, %sw.bb11, %cond.end
  %20 = load <8 x i64>, ptr %c_, align 64, !tbaa !16, !llvm.access.group !84
  %21 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %vecext17 = extractelement <8 x i64> %20, i64 %21
  %22 = load i32, ptr %select, align 4, !tbaa !5, !llvm.access.group !84
  %shl = shl i32 %22, 2
  %sh_prom = zext i32 %shl to i64
  %shr = ashr i64 %vecext17, %sh_prom
  %and = and i64 %shr, 15
  switch i64 %and, label %sw.epilog54 [
    i64 0, label %sw.bb18
    i64 1, label %sw.bb20
    i64 2, label %sw.bb23
    i64 3, label %sw.bb25
    i64 4, label %sw.bb27
    i64 5, label %sw.bb29
    i64 6, label %sw.bb31
    i64 7, label %sw.bb36
    i64 8, label %sw.bb38
    i64 9, label %sw.bb40
    i64 10, label %sw.bb42
    i64 11, label %sw.bb44
    i64 12, label %sw.bb46
    i64 13, label %sw.bb48
    i64 14, label %sw.bb50
    i64 15, label %sw.bb52
  ]

sw.bb18:                                          ; preds = %sw.epilog
  %23 = load <8 x double>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !84
  %24 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %vecext19 = extractelement <8 x double> %23, i64 %24
  %25 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %26 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins = insertelement <8 x double> %26, double %vecext19, i64 %25
  store <8 x double> %vecins, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb20:                                          ; preds = %sw.epilog
  %27 = load <8 x double>, ptr %b_, align 64, !tbaa !16, !llvm.access.group !84
  %28 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %vecext21 = extractelement <8 x double> %27, i64 %28
  %29 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %30 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins22 = insertelement <8 x double> %30, double %vecext21, i64 %29
  store <8 x double> %vecins22, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb23:                                          ; preds = %sw.epilog
  %31 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %32 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins24 = insertelement <8 x double> %32, double 0x7FF8000000000000, i64 %31
  store <8 x double> %vecins24, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb25:                                          ; preds = %sw.epilog
  %33 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %34 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins26 = insertelement <8 x double> %34, double 0xFFF8000000000000, i64 %33
  store <8 x double> %vecins26, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb27:                                          ; preds = %sw.epilog
  %35 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %36 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins28 = insertelement <8 x double> %36, double 0xFFF0000000000000, i64 %35
  store <8 x double> %vecins28, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb29:                                          ; preds = %sw.epilog
  %37 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %38 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins30 = insertelement <8 x double> %38, double 0x7FF0000000000000, i64 %37
  store <8 x double> %vecins30, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb31:                                          ; preds = %sw.epilog
  %39 = load <8 x double>, ptr %s_, align 64, !tbaa !16, !llvm.access.group !84
  %40 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %vecext32 = extractelement <8 x double> %39, i64 %40
  %cmp33 = fcmp olt double %vecext32, 0.000000e+00
  %41 = zext i1 %cmp33 to i64
  %cond34 = select i1 %cmp33, double 0xFFF0000000000000, double 0x7FF0000000000000
  %42 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %43 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins35 = insertelement <8 x double> %43, double %cond34, i64 %42
  store <8 x double> %vecins35, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb36:                                          ; preds = %sw.epilog
  %44 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %45 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins37 = insertelement <8 x double> %45, double -0.000000e+00, i64 %44
  store <8 x double> %vecins37, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb38:                                          ; preds = %sw.epilog
  %46 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %47 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins39 = insertelement <8 x double> %47, double 0.000000e+00, i64 %46
  store <8 x double> %vecins39, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb40:                                          ; preds = %sw.epilog
  %48 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %49 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins41 = insertelement <8 x double> %49, double -1.000000e+00, i64 %48
  store <8 x double> %vecins41, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb42:                                          ; preds = %sw.epilog
  %50 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %51 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins43 = insertelement <8 x double> %51, double 1.000000e+00, i64 %50
  store <8 x double> %vecins43, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb44:                                          ; preds = %sw.epilog
  %52 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %53 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins45 = insertelement <8 x double> %53, double 5.000000e-01, i64 %52
  store <8 x double> %vecins45, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb46:                                          ; preds = %sw.epilog
  %54 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %55 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins47 = insertelement <8 x double> %55, double 9.000000e+01, i64 %54
  store <8 x double> %vecins47, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb48:                                          ; preds = %sw.epilog
  %56 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %57 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins49 = insertelement <8 x double> %57, double 0x3FF921FB54442D18, i64 %56
  store <8 x double> %vecins49, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb50:                                          ; preds = %sw.epilog
  %58 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %59 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins51 = insertelement <8 x double> %59, double 0x7FEFFFFFFFFFFFFF, i64 %58
  store <8 x double> %vecins51, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.bb52:                                          ; preds = %sw.epilog
  %60 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !84
  %61 = load <8 x double>, ptr %r_, align 64, !llvm.access.group !84
  %vecins53 = insertelement <8 x double> %61, double 0xFFEFFFFFFFFFFFFF, i64 %60
  store <8 x double> %vecins53, ptr %r_, align 64, !llvm.access.group !84
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.epilog, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb20, %sw.bb18
  call void @llvm.lifetime.end.p0(i64 4, ptr %select) #16, !llvm.access.group !84
  br label %omp.body.continue

omp.body.continue:                                ; preds = %sw.epilog54
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %62 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !84
  %add55 = add i64 %62, 1
  store i64 %add55, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !84
  br label %omp.inner.for.cond, !llvm.loop !85

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call56 = call <8 x double> @simde__m512d_from_private(ptr noundef byval(%union.simde__m512d_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %c_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %s_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #16
  ret <8 x double> %call56
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_f64x8_(ptr noundef byval(<8 x double>) align 64 %0, ptr noundef byval(<8 x double>) align 64 %1, double noundef %slop, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x double>, align 64
  %b.addr = alloca <8 x double>, align 64
  %slop.addr = alloca double, align 8
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x double], align 16
  %b_ = alloca [8 x double], align 16
  %indirect-arg-temp = alloca <8 x double>, align 64
  %indirect-arg-temp2 = alloca <8 x double>, align 64
  %a = load <8 x double>, ptr %0, align 64, !tbaa !16
  %b = load <8 x double>, ptr %1, align 64, !tbaa !16
  store <8 x double> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x double> %b, ptr %b.addr, align 64, !tbaa !16
  store double %slop, ptr %slop.addr, align 8, !tbaa !61
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #16
  %arraydecay = getelementptr inbounds [8 x double], ptr %a_, i64 0, i64 0
  %2 = load <8 x double>, ptr %a.addr, align 64, !tbaa !16
  store <8 x double> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_pd(ptr noundef %arraydecay, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp)
  %arraydecay1 = getelementptr inbounds [8 x double], ptr %b_, i64 0, i64 0
  %3 = load <8 x double>, ptr %b.addr, align 64, !tbaa !16
  store <8 x double> %3, ptr %indirect-arg-temp2, align 64, !tbaa !16
  call void @simde_mm512_storeu_pd(ptr noundef %arraydecay1, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp2)
  %arraydecay3 = getelementptr inbounds [8 x double], ptr %a_, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [8 x double], ptr %b_, i64 0, i64 0
  %4 = load double, ptr %slop.addr, align 8, !tbaa !61
  %5 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %6 = load i32, ptr %line.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %8 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vf64_(i64 noundef 8, ptr noundef %arraydecay3, ptr noundef %arraydecay4, double noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m512d_to_private(ptr noalias sret(%union.simde__m512d_private) align 64 %agg.result, ptr noundef byval(<8 x double>) align 64 %0) #13 {
entry:
  %v.addr = alloca <8 x double>, align 64
  %v = load <8 x double>, ptr %0, align 64, !tbaa !16
  store <8 x double> %v, ptr %v.addr, align 64, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %agg.result, ptr align 64 %v.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x double> @simde_x_mm512_flushsubnormal_pd(ptr noundef byval(<8 x double>) align 64 %0) #14 {
entry:
  %a.addr = alloca <8 x double>, align 64
  %a_ = alloca %union.simde__m512d_private, align 64
  %indirect-arg-temp = alloca <8 x double>, align 64
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <8 x double>, ptr %0, align 64, !tbaa !16
  store <8 x double> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  %1 = load <8 x double>, ptr %a.addr, align 64, !tbaa !16
  store <8 x double> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512d_to_private(ptr sret(%union.simde__m512d_private) align 64 %a_, ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !87
  %cmp = icmp ult i64 %2, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !87
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !87
  %4 = load <8 x double>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !87
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !87
  %vecext = extractelement <8 x double> %4, i64 %5
  %iszero = fcmp oeq double %vecext, 0.000000e+00
  br i1 %iszero, label %fpclassify_end, label %fpclassify_not_zero

fpclassify_end:                                   ; preds = %fpclassify_not_inf, %fpclassify_not_nan, %fpclassify_not_zero, %omp.inner.for.body
  %fpclassify_result = phi i32 [ 0, %omp.inner.for.body ], [ 0, %fpclassify_not_zero ], [ 0, %fpclassify_not_nan ], [ %12, %fpclassify_not_inf ]
  %tobool = icmp ne i32 %fpclassify_result, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %fpclassify_end
  br label %cond.end

cond.false:                                       ; preds = %fpclassify_end
  %6 = load <8 x double>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !87
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !87
  %vecext2 = extractelement <8 x double> %6, i64 %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ 0.000000e+00, %cond.true ], [ %vecext2, %cond.false ]
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !87
  %9 = load <8 x double>, ptr %a_, align 64, !llvm.access.group !87
  %vecins = insertelement <8 x double> %9, double %cond, i64 %8
  store <8 x double> %vecins, ptr %a_, align 64, !llvm.access.group !87
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !87
  %add3 = add i64 %10, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !87
  br label %omp.inner.for.cond, !llvm.loop !88

fpclassify_not_zero:                              ; preds = %omp.inner.for.body
  %cmp1 = fcmp uno double %vecext, %vecext
  br i1 %cmp1, label %fpclassify_end, label %fpclassify_not_nan

fpclassify_not_nan:                               ; preds = %fpclassify_not_zero
  %11 = call double @llvm.fabs.f64(double %vecext) #17
  %isinf = fcmp oeq double %11, 0x7FF0000000000000
  br i1 %isinf, label %fpclassify_end, label %fpclassify_not_inf

fpclassify_not_inf:                               ; preds = %fpclassify_not_nan
  %isnormal = fcmp uge double %11, 0x10000000000000
  %12 = select i1 %isnormal, i32 0, i32 1
  br label %fpclassify_end

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <8 x double> @simde__m512d_from_private(ptr noundef byval(%union.simde__m512d_private) align 64 %a_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  ret <8 x double> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x double> @simde__m512d_from_private(ptr noundef byval(%union.simde__m512d_private) align 64 %v) #14 {
entry:
  %r = alloca <8 x double>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %v, i64 64, i1 false)
  %0 = load <8 x double>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <8 x double> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm512_storeu_pd(ptr noundef %mem_addr, ptr noundef byval(<8 x double>) align 64 %0) #13 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <8 x double>, align 64
  %a = load <8 x double>, ptr %0, align 64, !tbaa !16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <8 x double> %a, ptr %a.addr, align 64, !tbaa !16
  %1 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 64 %a.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x double> @simde_mm512_mask_mov_pd(ptr noundef byval(<8 x double>) align 64 %0, i8 noundef zeroext %k, ptr noundef byval(<8 x double>) align 64 %1) #14 {
entry:
  %src.addr = alloca <8 x double>, align 64
  %k.addr = alloca i8, align 1
  %a.addr = alloca <8 x double>, align 64
  %indirect-arg-temp = alloca <8 x double>, align 64
  %indirect-arg-temp1 = alloca <8 x double>, align 64
  %indirect-arg-temp3 = alloca <8 x i64>, align 64
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %src = load <8 x double>, ptr %0, align 64, !tbaa !16
  %a = load <8 x double>, ptr %1, align 64, !tbaa !16
  store <8 x double> %src, ptr %src.addr, align 64, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <8 x double> %a, ptr %a.addr, align 64, !tbaa !16
  %2 = load <8 x double>, ptr %src.addr, align 64, !tbaa !16
  store <8 x double> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  %call = call <8 x i64> @simde_mm512_castpd_si512(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp)
  %3 = load i8, ptr %k.addr, align 1, !tbaa !16
  %4 = load <8 x double>, ptr %a.addr, align 64, !tbaa !16
  store <8 x double> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_castpd_si512(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp3, align 64, !tbaa !16
  store <8 x i64> %call2, ptr %indirect-arg-temp4, align 64, !tbaa !16
  %call5 = call <8 x i64> @simde_mm512_mask_mov_epi64(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp3, i8 noundef zeroext %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  store <8 x i64> %call5, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x double> @simde_mm512_castsi512_pd(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  ret <8 x double> %call7
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x double> @simde_mm512_castsi512_pd(ptr noundef byval(<8 x i64>) align 64 %0) #14 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %r = alloca <8 x double>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %a.addr, i64 64, i1 false)
  %1 = load <8 x double>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <8 x double> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_mask_mov_epi64(ptr noundef byval(<8 x i64>) align 64 %0, i8 noundef zeroext %k, ptr noundef byval(<8 x i64>) align 64 %1) #14 {
entry:
  %src.addr = alloca <8 x i64>, align 64
  %k.addr = alloca i8, align 1
  %a.addr = alloca <8 x i64>, align 64
  %src_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %src = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %a = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %src, ptr %src.addr, align 64, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %src_) #16
  %2 = load <8 x i64>, ptr %src.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %src_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %4 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !90
  %cmp = icmp ult i64 %4, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !90
  %mul = mul i64 %5, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !90
  %6 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !90
  %conv = zext i8 %6 to i32
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !90
  %sh_prom = trunc i64 %7 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %8 = load <8 x i64>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !90
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !90
  %vecext = extractelement <8 x i64> %8, i64 %9
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  %10 = load <8 x i64>, ptr %src_, align 64, !tbaa !16, !llvm.access.group !90
  %11 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !90
  %vecext2 = extractelement <8 x i64> %10, i64 %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %vecext, %cond.true ], [ %vecext2, %cond.false ]
  %12 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !90
  %13 = load <8 x i64>, ptr %r_, align 64, !llvm.access.group !90
  %vecins = insertelement <8 x i64> %13, i64 %cond, i64 %12
  store <8 x i64> %vecins, ptr %r_, align 64, !llvm.access.group !90
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !90
  %add3 = add i64 %14, 1
  store i64 %add3, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !90
  br label %omp.inner.for.cond, !llvm.loop !91

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %src_) #16
  ret <8 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_castpd_si512(ptr noundef byval(<8 x double>) align 64 %0) #14 {
entry:
  %a.addr = alloca <8 x double>, align 64
  %r = alloca <8 x i64>, align 64
  %a = load <8 x double>, ptr %0, align 64, !tbaa !16
  store <8 x double> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %a.addr, i64 64, i1 false)
  %1 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #16
  ret <8 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x double> @simde_mm512_maskz_mov_pd(i8 noundef zeroext %k, ptr noundef byval(<8 x double>) align 64 %0) #14 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <8 x double>, align 64
  %indirect-arg-temp = alloca <8 x double>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp3 = alloca <8 x i64>, align 64
  %a = load <8 x double>, ptr %0, align 64, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <8 x double> %a, ptr %a.addr, align 64, !tbaa !16
  %1 = load i8, ptr %k.addr, align 1, !tbaa !16
  %2 = load <8 x double>, ptr %a.addr, align 64, !tbaa !16
  store <8 x double> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  %call = call <8 x i64> @simde_mm512_castpd_si512(ptr noundef byval(<8 x double>) align 64 %indirect-arg-temp)
  store <8 x i64> %call, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call2 = call <8 x i64> @simde_mm512_maskz_mov_epi64(i8 noundef zeroext %1, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call2, ptr %indirect-arg-temp3, align 64, !tbaa !16
  %call4 = call <8 x double> @simde_mm512_castsi512_pd(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp3)
  ret <8 x double> %call4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_maskz_mov_epi64(i8 noundef zeroext %k, ptr noundef byval(<8 x i64>) align 64 %0) #14 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <8 x i64>, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #16
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #16
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !93
  %cmp = icmp ult i64 %2, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !93
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !93
  %4 = load i8, ptr %k.addr, align 1, !tbaa !16, !llvm.access.group !93
  %conv = zext i8 %4 to i32
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !93
  %sh_prom = trunc i64 %5 to i32
  %shr = ashr i32 %conv, %sh_prom
  %and = and i32 %shr, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load <8 x i64>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !93
  %7 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !93
  %vecext = extractelement <8 x i64> %6, i64 %7
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %vecext, %cond.true ], [ 0, %cond.false ]
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !93
  %9 = load <8 x i64>, ptr %r_, align 64, !llvm.access.group !93
  %vecins = insertelement <8 x i64> %9, i64 %cond, i64 %8
  store <8 x i64> %vecins, ptr %r_, align 64, !llvm.access.group !93
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %10 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !93
  %add1 = add i64 %10, 1
  store i64 %add1, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !93
  br label %omp.inner.for.cond, !llvm.loop !94

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #16
  ret <8 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x double> @simde_mm_fixupimm_sd(<2 x double> noundef %a, <2 x double> noundef %b, <2 x i64> noundef %c, i32 noundef %imm8) #6 {
entry:
  %a.addr = alloca <2 x double>, align 16
  %b.addr = alloca <2 x double>, align 16
  %c.addr = alloca <2 x i64>, align 16
  %imm8.addr = alloca i32, align 4
  %a_ = alloca %union.simde__m128d_private, align 16
  %b_ = alloca %union.simde__m128d_private, align 16
  %s_ = alloca %union.simde__m128d_private, align 16
  %c_ = alloca %union.simde__m128i_private, align 16
  %select = alloca i32, align 4
  store <2 x double> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x double> %b, ptr %b.addr, align 16, !tbaa !16
  store <2 x i64> %c, ptr %c.addr, align 16, !tbaa !16
  store i32 %imm8, ptr %imm8.addr, align 4, !tbaa !5
  %0 = load i32, ptr %imm8.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #16
  %1 = load <2 x double>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128d_to_private(<2 x double> noundef %1)
  %coerce.dive = getelementptr inbounds %union.simde__m128d_private, ptr %a_, i32 0, i32 0
  %2 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %3 = extractvalue { double, double } %call, 0
  store double %3, ptr %2, align 16
  %4 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %5 = extractvalue { double, double } %call, 1
  store double %5, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #16
  %6 = load <2 x double>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128d_to_private(<2 x double> noundef %6)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128d_private, ptr %b_, i32 0, i32 0
  %7 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %8 = extractvalue { double, double } %call1, 0
  store double %8, ptr %7, align 16
  %9 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %10 = extractvalue { double, double } %call1, 1
  store double %10, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %s_) #16
  %11 = load <2 x double>, ptr %b.addr, align 16, !tbaa !16
  %call3 = call <2 x double> @simde_x_mm_flushsubnormal_pd(<2 x double> noundef %11)
  %call4 = call { double, double } @simde__m128d_to_private(<2 x double> noundef %call3)
  %coerce.dive5 = getelementptr inbounds %union.simde__m128d_private, ptr %s_, i32 0, i32 0
  %12 = getelementptr inbounds { double, double }, ptr %coerce.dive5, i32 0, i32 0
  %13 = extractvalue { double, double } %call4, 0
  store double %13, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %coerce.dive5, i32 0, i32 1
  %15 = extractvalue { double, double } %call4, 1
  store double %15, ptr %14, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %c_) #16
  %16 = load <2 x i64>, ptr %c.addr, align 16, !tbaa !16
  %call6 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %16)
  %coerce.dive7 = getelementptr inbounds %union.simde__m128i_private, ptr %c_, i32 0, i32 0
  %17 = getelementptr inbounds { double, double }, ptr %coerce.dive7, i32 0, i32 0
  %18 = extractvalue { double, double } %call6, 0
  store double %18, ptr %17, align 16
  %19 = getelementptr inbounds { double, double }, ptr %coerce.dive7, i32 0, i32 1
  %20 = extractvalue { double, double } %call6, 1
  store double %20, ptr %19, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %select) #16
  store i32 1, ptr %select, align 4, !tbaa !5
  %21 = load <2 x double>, ptr %s_, align 16, !tbaa !16
  %vecext = extractelement <2 x double> %21, i32 0
  %call8 = call i32 @simde_math_fpclassify(double noundef %vecext)
  switch i32 %call8, label %sw.epilog [
    i32 4, label %sw.bb
    i32 2, label %sw.bb13
    i32 0, label %sw.bb14
    i32 1, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  %22 = load <2 x double>, ptr %s_, align 16, !tbaa !16
  %vecext9 = extractelement <2 x double> %22, i32 0
  %cmp = fcmp olt double %vecext9, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %23 = load <2 x double>, ptr %s_, align 16, !tbaa !16
  %vecext10 = extractelement <2 x double> %23, i32 0
  %cmp11 = fcmp oeq double %vecext10, 1.000000e+00
  %24 = zext i1 %cmp11 to i64
  %cond = select i1 %cmp11, i32 3, i32 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi i32 [ 6, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond12, ptr %select, align 4, !tbaa !5
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i32 2, ptr %select, align 4, !tbaa !5
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store i32 0, ptr %select, align 4, !tbaa !5
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %25 = load <2 x double>, ptr %s_, align 16, !tbaa !16
  %vecext16 = extractelement <2 x double> %25, i32 0
  %cmp17 = fcmp ogt double %vecext16, 0.000000e+00
  %26 = zext i1 %cmp17 to i64
  %cond18 = select i1 %cmp17, i32 5, i32 4
  store i32 %cond18, ptr %select, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb15, %sw.bb14, %sw.bb13, %cond.end
  %27 = load <2 x i64>, ptr %c_, align 16, !tbaa !16
  %vecext19 = extractelement <2 x i64> %27, i32 0
  %28 = load i32, ptr %select, align 4, !tbaa !5
  %shl = shl i32 %28, 2
  %sh_prom = zext i32 %shl to i64
  %shr = ashr i64 %vecext19, %sh_prom
  %and = and i64 %shr, 15
  switch i64 %and, label %sw.epilog56 [
    i64 0, label %sw.bb20
    i64 1, label %sw.bb22
    i64 2, label %sw.bb25
    i64 3, label %sw.bb27
    i64 4, label %sw.bb29
    i64 5, label %sw.bb31
    i64 6, label %sw.bb33
    i64 7, label %sw.bb38
    i64 8, label %sw.bb40
    i64 9, label %sw.bb42
    i64 10, label %sw.bb44
    i64 11, label %sw.bb46
    i64 12, label %sw.bb48
    i64 13, label %sw.bb50
    i64 14, label %sw.bb52
    i64 15, label %sw.bb54
  ]

sw.bb20:                                          ; preds = %sw.epilog
  %29 = load <2 x double>, ptr %a_, align 16, !tbaa !16
  %vecext21 = extractelement <2 x double> %29, i32 0
  %30 = load <2 x double>, ptr %b_, align 16
  %vecins = insertelement <2 x double> %30, double %vecext21, i32 0
  store <2 x double> %vecins, ptr %b_, align 16
  br label %sw.epilog56

sw.bb22:                                          ; preds = %sw.epilog
  %31 = load <2 x double>, ptr %b_, align 16, !tbaa !16
  %vecext23 = extractelement <2 x double> %31, i32 0
  %32 = load <2 x double>, ptr %b_, align 16
  %vecins24 = insertelement <2 x double> %32, double %vecext23, i32 0
  store <2 x double> %vecins24, ptr %b_, align 16
  br label %sw.epilog56

sw.bb25:                                          ; preds = %sw.epilog
  %33 = load <2 x double>, ptr %b_, align 16
  %vecins26 = insertelement <2 x double> %33, double 0x7FF8000000000000, i32 0
  store <2 x double> %vecins26, ptr %b_, align 16
  br label %sw.epilog56

sw.bb27:                                          ; preds = %sw.epilog
  %34 = load <2 x double>, ptr %b_, align 16
  %vecins28 = insertelement <2 x double> %34, double 0xFFF8000000000000, i32 0
  store <2 x double> %vecins28, ptr %b_, align 16
  br label %sw.epilog56

sw.bb29:                                          ; preds = %sw.epilog
  %35 = load <2 x double>, ptr %b_, align 16
  %vecins30 = insertelement <2 x double> %35, double 0xFFF0000000000000, i32 0
  store <2 x double> %vecins30, ptr %b_, align 16
  br label %sw.epilog56

sw.bb31:                                          ; preds = %sw.epilog
  %36 = load <2 x double>, ptr %b_, align 16
  %vecins32 = insertelement <2 x double> %36, double 0x7FF0000000000000, i32 0
  store <2 x double> %vecins32, ptr %b_, align 16
  br label %sw.epilog56

sw.bb33:                                          ; preds = %sw.epilog
  %37 = load <2 x double>, ptr %s_, align 16, !tbaa !16
  %vecext34 = extractelement <2 x double> %37, i32 0
  %cmp35 = fcmp olt double %vecext34, 0.000000e+00
  %38 = zext i1 %cmp35 to i64
  %cond36 = select i1 %cmp35, double 0xFFF0000000000000, double 0x7FF0000000000000
  %39 = load <2 x double>, ptr %b_, align 16
  %vecins37 = insertelement <2 x double> %39, double %cond36, i32 0
  store <2 x double> %vecins37, ptr %b_, align 16
  br label %sw.epilog56

sw.bb38:                                          ; preds = %sw.epilog
  %40 = load <2 x double>, ptr %b_, align 16
  %vecins39 = insertelement <2 x double> %40, double -0.000000e+00, i32 0
  store <2 x double> %vecins39, ptr %b_, align 16
  br label %sw.epilog56

sw.bb40:                                          ; preds = %sw.epilog
  %41 = load <2 x double>, ptr %b_, align 16
  %vecins41 = insertelement <2 x double> %41, double 0.000000e+00, i32 0
  store <2 x double> %vecins41, ptr %b_, align 16
  br label %sw.epilog56

sw.bb42:                                          ; preds = %sw.epilog
  %42 = load <2 x double>, ptr %b_, align 16
  %vecins43 = insertelement <2 x double> %42, double -1.000000e+00, i32 0
  store <2 x double> %vecins43, ptr %b_, align 16
  br label %sw.epilog56

sw.bb44:                                          ; preds = %sw.epilog
  %43 = load <2 x double>, ptr %b_, align 16
  %vecins45 = insertelement <2 x double> %43, double 1.000000e+00, i32 0
  store <2 x double> %vecins45, ptr %b_, align 16
  br label %sw.epilog56

sw.bb46:                                          ; preds = %sw.epilog
  %44 = load <2 x double>, ptr %b_, align 16
  %vecins47 = insertelement <2 x double> %44, double 5.000000e-01, i32 0
  store <2 x double> %vecins47, ptr %b_, align 16
  br label %sw.epilog56

sw.bb48:                                          ; preds = %sw.epilog
  %45 = load <2 x double>, ptr %b_, align 16
  %vecins49 = insertelement <2 x double> %45, double 9.000000e+01, i32 0
  store <2 x double> %vecins49, ptr %b_, align 16
  br label %sw.epilog56

sw.bb50:                                          ; preds = %sw.epilog
  %46 = load <2 x double>, ptr %b_, align 16
  %vecins51 = insertelement <2 x double> %46, double 0x3FF921FB54442D18, i32 0
  store <2 x double> %vecins51, ptr %b_, align 16
  br label %sw.epilog56

sw.bb52:                                          ; preds = %sw.epilog
  %47 = load <2 x double>, ptr %b_, align 16
  %vecins53 = insertelement <2 x double> %47, double 0x7FEFFFFFFFFFFFFF, i32 0
  store <2 x double> %vecins53, ptr %b_, align 16
  br label %sw.epilog56

sw.bb54:                                          ; preds = %sw.epilog
  %48 = load <2 x double>, ptr %b_, align 16
  %vecins55 = insertelement <2 x double> %48, double 0xFFEFFFFFFFFFFFFF, i32 0
  store <2 x double> %vecins55, ptr %b_, align 16
  br label %sw.epilog56

sw.epilog56:                                      ; preds = %sw.epilog, %sw.bb54, %sw.bb52, %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb22, %sw.bb20
  %49 = getelementptr inbounds { double, double }, ptr %b_, i32 0, i32 0
  %50 = load double, ptr %49, align 16
  %51 = getelementptr inbounds { double, double }, ptr %b_, i32 0, i32 1
  %52 = load double, ptr %51, align 8
  %call57 = call <2 x double> @simde__m128d_from_private(double %50, double %52)
  call void @llvm.lifetime.end.p0(i64 4, ptr %select) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %c_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %s_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #16
  ret <2 x double> %call57
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { nounwind }
attributes #17 = { memory(none) }

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
!17 = distinct !{}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.parallel_accesses", !17}
!20 = !{!"llvm.loop.vectorize.enable", i1 true}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !7, i64 0}
!23 = distinct !{}
!24 = distinct !{!24, !25, !20}
!25 = !{!"llvm.loop.parallel_accesses", !23}
!26 = distinct !{}
!27 = distinct !{!27, !28, !20}
!28 = !{!"llvm.loop.parallel_accesses", !26}
!29 = distinct !{}
!30 = distinct !{!30, !31, !20}
!31 = !{!"llvm.loop.parallel_accesses", !29}
!32 = distinct !{}
!33 = distinct !{!33, !34, !20}
!34 = !{!"llvm.loop.parallel_accesses", !32}
!35 = distinct !{}
!36 = distinct !{!36, !37, !20}
!37 = !{!"llvm.loop.parallel_accesses", !35}
!38 = distinct !{}
!39 = distinct !{!39, !40, !20}
!40 = !{!"llvm.loop.parallel_accesses", !38}
!41 = distinct !{}
!42 = distinct !{!42, !43, !20}
!43 = !{!"llvm.loop.parallel_accesses", !41}
!44 = distinct !{}
!45 = distinct !{!45, !46, !20}
!46 = !{!"llvm.loop.parallel_accesses", !44}
!47 = distinct !{}
!48 = distinct !{!48, !49, !20}
!49 = !{!"llvm.loop.parallel_accesses", !47}
!50 = !{!51, !51, i64 0}
!51 = !{!"short", !7, i64 0}
!52 = distinct !{}
!53 = distinct !{!53, !54, !20}
!54 = !{!"llvm.loop.parallel_accesses", !52}
!55 = distinct !{}
!56 = distinct !{!56, !57, !20}
!57 = !{!"llvm.loop.parallel_accesses", !55}
!58 = distinct !{}
!59 = distinct !{!59, !60, !20}
!60 = !{!"llvm.loop.parallel_accesses", !58}
!61 = !{!62, !62, i64 0}
!62 = !{!"double", !7, i64 0}
!63 = distinct !{}
!64 = distinct !{!64, !65, !20}
!65 = !{!"llvm.loop.parallel_accesses", !63}
!66 = distinct !{}
!67 = distinct !{!67, !68, !20}
!68 = !{!"llvm.loop.parallel_accesses", !66}
!69 = distinct !{}
!70 = distinct !{!70, !71, !20}
!71 = !{!"llvm.loop.parallel_accesses", !69}
!72 = distinct !{}
!73 = distinct !{!73, !74, !20}
!74 = !{!"llvm.loop.parallel_accesses", !72}
!75 = distinct !{}
!76 = distinct !{!76, !77, !20}
!77 = !{!"llvm.loop.parallel_accesses", !75}
!78 = distinct !{}
!79 = distinct !{!79, !80, !20}
!80 = !{!"llvm.loop.parallel_accesses", !78}
!81 = distinct !{}
!82 = distinct !{!82, !83, !20}
!83 = !{!"llvm.loop.parallel_accesses", !81}
!84 = distinct !{}
!85 = distinct !{!85, !86, !20}
!86 = !{!"llvm.loop.parallel_accesses", !84}
!87 = distinct !{}
!88 = distinct !{!88, !89, !20}
!89 = !{!"llvm.loop.parallel_accesses", !87}
!90 = distinct !{}
!91 = distinct !{!91, !92, !20}
!92 = !{!"llvm.loop.parallel_accesses", !90}
!93 = distinct !{}
!94 = distinct !{!94, !95, !20}
!95 = !{!"llvm.loop.parallel_accesses", !93}
