; ModuleID = 'samples/578.bc'
source_filename = "../spack-src/test/x86/avx512/cmpge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.anon.0 = type { [16 x i8], [16 x i8], [16 x i8] }
%struct.anon.1 = type { [16 x i8], [16 x i8], i16 }
%struct.anon.2 = type { i16, [16 x i8], [16 x i8], i16 }
%struct.anon.3 = type { [32 x i8], [32 x i8], [32 x i8] }
%struct.anon.4 = type { [32 x i8], [32 x i8], i32 }
%struct.anon.5 = type { i32, [32 x i8], [32 x i8], i32 }
%struct.anon.6 = type { [64 x i8], [64 x i8], [64 x i8] }
%struct.anon.7 = type { [64 x i8], [64 x i8], i64 }
%struct.anon.8 = type { i64, [64 x i8], [64 x i8], i64 }
%struct.anon.9 = type { [16 x i8], [16 x i8], [16 x i8] }
%struct.anon.10 = type { [16 x i8], [16 x i8], i16 }
%struct.anon.11 = type { i16, [16 x i8], [16 x i8], i16 }
%struct.anon.12 = type { [32 x i8], [32 x i8], [32 x i8] }
%struct.anon.13 = type { [32 x i8], [32 x i8], i32 }
%struct.anon.14 = type { i32, [32 x i8], [32 x i8], i32 }
%struct.anon.15 = type { [64 x i8], [64 x i8], [64 x i8] }
%struct.anon.16 = type { [64 x i8], [64 x i8], i64 }
%struct.anon.17 = type { i64, [64 x i8], [64 x i8], i64 }
%struct.anon.18 = type { [8 x i16], [8 x i16], [8 x i16] }
%struct.anon.19 = type { [8 x i16], [8 x i16], i8 }
%struct.anon.20 = type { i8, [8 x i16], [8 x i16], i8 }
%struct.anon.21 = type { [16 x i16], [16 x i16], [16 x i16] }
%struct.anon.22 = type { [16 x i16], [16 x i16], i16 }
%struct.anon.23 = type { i16, [16 x i16], [16 x i16], i16 }
%struct.anon.24 = type { [32 x i16], [32 x i16], [32 x i16] }
%struct.anon.25 = type { [32 x i16], [32 x i16], i32 }
%struct.anon.26 = type { i32, [32 x i16], [32 x i16], i32 }
%struct.anon.27 = type { [8 x i16], [8 x i16], [8 x i16] }
%struct.anon.28 = type { [8 x i16], [8 x i16], i8 }
%struct.anon.29 = type { i8, [8 x i16], [8 x i16], i8 }
%struct.anon.30 = type { [16 x i16], [16 x i16], [16 x i16] }
%struct.anon.31 = type { [16 x i16], [16 x i16], i16 }
%struct.anon.32 = type { i16, [16 x i16], [16 x i16], i16 }
%struct.anon.33 = type { [32 x i16], [32 x i16], [32 x i16] }
%struct.anon.34 = type { [32 x i16], [32 x i16], i32 }
%struct.anon.35 = type { i32, [32 x i16], [32 x i16], i32 }
%struct.anon.36 = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.anon.37 = type { [4 x i32], [4 x i32], i8 }
%struct.anon.38 = type { i8, [4 x i32], [4 x i32], i8 }
%struct.anon.39 = type { [8 x i32], [8 x i32], [8 x i32] }
%struct.anon.40 = type { [8 x i32], [8 x i32], i8 }
%struct.anon.41 = type { i8, [8 x i32], [8 x i32], i8 }
%struct.anon.42 = type { [16 x i32], [16 x i32], [16 x i32] }
%struct.anon.43 = type { [16 x i32], [16 x i32], i16 }
%struct.anon.44 = type { i16, [16 x i32], [16 x i32], i16 }
%struct.anon.45 = type { [4 x i32], [4 x i32], [4 x i32] }
%struct.anon.46 = type { [4 x i32], [4 x i32], i8 }
%struct.anon.47 = type { i8, [4 x i32], [4 x i32], i8 }
%struct.anon.48 = type { [8 x i32], [8 x i32], [8 x i32] }
%struct.anon.49 = type { [8 x i32], [8 x i32], i8 }
%struct.anon.50 = type { i8, [8 x i32], [8 x i32], i8 }
%struct.anon.51 = type { [16 x i32], [16 x i32], [16 x i32] }
%struct.anon.52 = type { [16 x i32], [16 x i32], i16 }
%struct.anon.53 = type { i16, [16 x i32], [16 x i32], i16 }
%struct.anon.54 = type { [2 x i64], [2 x i64], [2 x i64] }
%struct.anon.55 = type { [2 x i64], [2 x i64], i8 }
%struct.anon.56 = type { i8, [2 x i64], [2 x i64], i8 }
%struct.anon.57 = type { [4 x i64], [4 x i64], [4 x i64] }
%struct.anon.58 = type { [4 x i64], [4 x i64], i8 }
%struct.anon.59 = type { i8, [4 x i64], [4 x i64], i8 }
%struct.anon.60 = type { [8 x i64], [8 x i64], [8 x i64] }
%struct.anon.61 = type { [8 x i64], [8 x i64], i8 }
%struct.anon.62 = type { i8, [8 x i64], [8 x i64], i8 }
%struct.anon.63 = type { [2 x i64], [2 x i64], [2 x i64] }
%struct.anon.64 = type { [2 x i64], [2 x i64], i8 }
%struct.anon.65 = type { i8, [2 x i64], [2 x i64], i8 }
%struct.anon.66 = type { [4 x i64], [4 x i64], [4 x i64] }
%struct.anon.67 = type { [4 x i64], [4 x i64], i8 }
%struct.anon.68 = type { i8, [4 x i64], [4 x i64], i8 }
%struct.anon.69 = type { [8 x i64], [8 x i64], [8 x i64] }
%struct.anon.70 = type { [8 x i64], [8 x i64], i8 }
%struct.anon.71 = type { i8, [8 x i64], [8 x i64], i8 }
%union.simde__m128i_private = type { <16 x i8> }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%union.simde__m256i_private = type { <32 x i8> }
%struct.simde_mm512_loadu_si512_s = type { <8 x i64> }
%union.simde__m512i_private = type { <64 x i8> }

@stdout = external global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"1..%zu\0A\00", align 1
@test_suite_tests = internal constant [72 x %struct.anon] [%struct.anon { ptr @test_simde_x_mm_cmpge_epi8, ptr @.str.3 }, %struct.anon { ptr @test_simde_mm_cmpge_epi8_mask, ptr @.str.4 }, %struct.anon { ptr @test_simde_mm_mask_cmpge_epi8_mask, ptr @.str.5 }, %struct.anon { ptr @test_simde_x_mm256_cmpge_epi8, ptr @.str.6 }, %struct.anon { ptr @test_simde_mm256_cmpge_epi8_mask, ptr @.str.7 }, %struct.anon { ptr @test_simde_mm256_mask_cmpge_epi8_mask, ptr @.str.8 }, %struct.anon { ptr @test_simde_x_mm512_cmpge_epi8, ptr @.str.9 }, %struct.anon { ptr @test_simde_mm512_cmpge_epi8_mask, ptr @.str.10 }, %struct.anon { ptr @test_simde_mm512_mask_cmpge_epi8_mask, ptr @.str.11 }, %struct.anon { ptr @test_simde_x_mm_cmpge_epu8, ptr @.str.12 }, %struct.anon { ptr @test_simde_mm_cmpge_epu8_mask, ptr @.str.13 }, %struct.anon { ptr @test_simde_mm_mask_cmpge_epu8_mask, ptr @.str.14 }, %struct.anon { ptr @test_simde_x_mm256_cmpge_epu8, ptr @.str.15 }, %struct.anon { ptr @test_simde_mm256_cmpge_epu8_mask, ptr @.str.16 }, %struct.anon { ptr @test_simde_mm256_mask_cmpge_epu8_mask, ptr @.str.17 }, %struct.anon { ptr @test_simde_x_mm512_cmpge_epu8, ptr @.str.18 }, %struct.anon { ptr @test_simde_mm512_cmpge_epu8_mask, ptr @.str.19 }, %struct.anon { ptr @test_simde_mm512_mask_cmpge_epu8_mask, ptr @.str.20 }, %struct.anon { ptr @test_simde_x_mm_cmpge_epi16, ptr @.str.21 }, %struct.anon { ptr @test_simde_mm_cmpge_epi16_mask, ptr @.str.22 }, %struct.anon { ptr @test_simde_mm_mask_cmpge_epi16_mask, ptr @.str.23 }, %struct.anon { ptr @test_simde_x_mm256_cmpge_epi16, ptr @.str.24 }, %struct.anon { ptr @test_simde_mm256_cmpge_epi16_mask, ptr @.str.25 }, %struct.anon { ptr @test_simde_mm256_mask_cmpge_epi16_mask, ptr @.str.26 }, %struct.anon { ptr @test_simde_x_mm512_cmpge_epi16, ptr @.str.27 }, %struct.anon { ptr @test_simde_mm512_cmpge_epi16_mask, ptr @.str.28 }, %struct.anon { ptr @test_simde_mm512_mask_cmpge_epi16_mask, ptr @.str.29 }, %struct.anon { ptr @test_simde_x_mm_cmpge_epu16, ptr @.str.30 }, %struct.anon { ptr @test_simde_mm_cmpge_epu16_mask, ptr @.str.31 }, %struct.anon { ptr @test_simde_mm_mask_cmpge_epu16_mask, ptr @.str.32 }, %struct.anon { ptr @test_simde_x_mm256_cmpge_epu16, ptr @.str.33 }, %struct.anon { ptr @test_simde_mm256_cmpge_epu16_mask, ptr @.str.34 }, %struct.anon { ptr @test_simde_mm256_mask_cmpge_epu16_mask, ptr @.str.35 }, %struct.anon { ptr @test_simde_x_mm512_cmpge_epu16, ptr @.str.36 }, %struct.anon { ptr @test_simde_mm512_cmpge_epu16_mask, ptr @.str.37 }, %struct.anon { ptr @test_simde_mm512_mask_cmpge_epu16_mask, ptr @.str.38 }, %struct.anon { ptr @test_simde_x_mm_cmpge_epi32, ptr @.str.39 }, %struct.anon { ptr @test_simde_mm_cmpge_epi32_mask, ptr @.str.40 }, %struct.anon { ptr @test_simde_mm_mask_cmpge_epi32_mask, ptr @.str.41 }, %struct.anon { ptr @test_simde_x_mm256_cmpge_epi32, ptr @.str.42 }, %struct.anon { ptr @test_simde_mm256_cmpge_epi32_mask, ptr @.str.43 }, %struct.anon { ptr @test_simde_mm256_mask_cmpge_epi32_mask, ptr @.str.44 }, %struct.anon { ptr @test_simde_x_mm512_cmpge_epi32, ptr @.str.45 }, %struct.anon { ptr @test_simde_mm512_cmpge_epi32_mask, ptr @.str.46 }, %struct.anon { ptr @test_simde_mm512_mask_cmpge_epi32_mask, ptr @.str.47 }, %struct.anon { ptr @test_simde_x_mm_cmpge_epu32, ptr @.str.48 }, %struct.anon { ptr @test_simde_mm_cmpge_epu32_mask, ptr @.str.49 }, %struct.anon { ptr @test_simde_mm_mask_cmpge_epu32_mask, ptr @.str.50 }, %struct.anon { ptr @test_simde_x_mm256_cmpge_epu32, ptr @.str.51 }, %struct.anon { ptr @test_simde_mm256_cmpge_epu32_mask, ptr @.str.52 }, %struct.anon { ptr @test_simde_mm256_mask_cmpge_epu32_mask, ptr @.str.53 }, %struct.anon { ptr @test_simde_x_mm512_cmpge_epu32, ptr @.str.54 }, %struct.anon { ptr @test_simde_mm512_cmpge_epu32_mask, ptr @.str.55 }, %struct.anon { ptr @test_simde_mm512_mask_cmpge_epu32_mask, ptr @.str.56 }, %struct.anon { ptr @test_simde_x_mm_cmpge_epi64, ptr @.str.57 }, %struct.anon { ptr @test_simde_mm_cmpge_epi64_mask, ptr @.str.58 }, %struct.anon { ptr @test_simde_mm_mask_cmpge_epi64_mask, ptr @.str.59 }, %struct.anon { ptr @test_simde_x_mm256_cmpge_epi64, ptr @.str.60 }, %struct.anon { ptr @test_simde_mm256_cmpge_epi64_mask, ptr @.str.61 }, %struct.anon { ptr @test_simde_mm256_mask_cmpge_epi64_mask, ptr @.str.62 }, %struct.anon { ptr @test_simde_x_mm512_cmpge_epi64, ptr @.str.63 }, %struct.anon { ptr @test_simde_mm512_cmpge_epi64_mask, ptr @.str.64 }, %struct.anon { ptr @test_simde_mm512_mask_cmpge_epi64_mask, ptr @.str.65 }, %struct.anon { ptr @test_simde_x_mm_cmpge_epu64, ptr @.str.66 }, %struct.anon { ptr @test_simde_mm_cmpge_epu64_mask, ptr @.str.67 }, %struct.anon { ptr @test_simde_mm_mask_cmpge_epu64_mask, ptr @.str.68 }, %struct.anon { ptr @test_simde_x_mm256_cmpge_epu64, ptr @.str.69 }, %struct.anon { ptr @test_simde_mm256_cmpge_epu64_mask, ptr @.str.70 }, %struct.anon { ptr @test_simde_mm256_mask_cmpge_epu64_mask, ptr @.str.71 }, %struct.anon { ptr @test_simde_x_mm512_cmpge_epu64, ptr @.str.72 }, %struct.anon { ptr @test_simde_mm512_cmpge_epu64_mask, ptr @.str.73 }, %struct.anon { ptr @test_simde_mm512_mask_cmpge_epu64_mask, ptr @.str.74 }], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"not ok %zu cmpge/%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ok %zu cmpge/%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"x_mm_cmpge_epi8\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"mm_cmpge_epi8_mask\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"mm_mask_cmpge_epi8_mask\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"x_mm256_cmpge_epi8\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"mm256_cmpge_epi8_mask\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"mm256_mask_cmpge_epi8_mask\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"x_mm512_cmpge_epi8\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"mm512_cmpge_epi8_mask\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"mm512_mask_cmpge_epi8_mask\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"x_mm_cmpge_epu8\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"mm_cmpge_epu8_mask\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"mm_mask_cmpge_epu8_mask\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"x_mm256_cmpge_epu8\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"mm256_cmpge_epu8_mask\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"mm256_mask_cmpge_epu8_mask\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"x_mm512_cmpge_epu8\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"mm512_cmpge_epu8_mask\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"mm512_mask_cmpge_epu8_mask\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"x_mm_cmpge_epi16\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"mm_cmpge_epi16_mask\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"mm_mask_cmpge_epi16_mask\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"x_mm256_cmpge_epi16\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"mm256_cmpge_epi16_mask\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"mm256_mask_cmpge_epi16_mask\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"x_mm512_cmpge_epi16\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"mm512_cmpge_epi16_mask\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"mm512_mask_cmpge_epi16_mask\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"x_mm_cmpge_epu16\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"mm_cmpge_epu16_mask\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"mm_mask_cmpge_epu16_mask\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"x_mm256_cmpge_epu16\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"mm256_cmpge_epu16_mask\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"mm256_mask_cmpge_epu16_mask\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"x_mm512_cmpge_epu16\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"mm512_cmpge_epu16_mask\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"mm512_mask_cmpge_epu16_mask\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"x_mm_cmpge_epi32\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"mm_cmpge_epi32_mask\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"mm_mask_cmpge_epi32_mask\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"x_mm256_cmpge_epi32\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"mm256_cmpge_epi32_mask\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"mm256_mask_cmpge_epi32_mask\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"x_mm512_cmpge_epi32\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"mm512_cmpge_epi32_mask\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"mm512_mask_cmpge_epi32_mask\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"x_mm_cmpge_epu32\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"mm_cmpge_epu32_mask\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"mm_mask_cmpge_epu32_mask\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"x_mm256_cmpge_epu32\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"mm256_cmpge_epu32_mask\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"mm256_mask_cmpge_epu32_mask\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"x_mm512_cmpge_epu32\00", align 1
@.str.55 = private unnamed_addr constant [23 x i8] c"mm512_cmpge_epu32_mask\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"mm512_mask_cmpge_epu32_mask\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"x_mm_cmpge_epi64\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"mm_cmpge_epi64_mask\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"mm_mask_cmpge_epi64_mask\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"x_mm256_cmpge_epi64\00", align 1
@.str.61 = private unnamed_addr constant [23 x i8] c"mm256_cmpge_epi64_mask\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"mm256_mask_cmpge_epi64_mask\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"x_mm512_cmpge_epi64\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"mm512_cmpge_epi64_mask\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"mm512_mask_cmpge_epi64_mask\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"x_mm_cmpge_epu64\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"mm_cmpge_epu64_mask\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"mm_mask_cmpge_epu64_mask\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"x_mm256_cmpge_epu64\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"mm256_cmpge_epu64_mask\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"mm256_mask_cmpge_epu64_mask\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"x_mm512_cmpge_epu64\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"mm512_cmpge_epu64_mask\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"mm512_mask_cmpge_epu64_mask\00", align 1
@test_simde_x_mm_cmpge_epi8.test_vec = internal constant [8 x %struct.anon.0] [%struct.anon.0 { [16 x i8] c"\EF\0Dku\F4q\DE\1C\03\85\DD\D4+\91\7F\01", [16 x i8] c"\EF\0D\10u\E0\99\C1\1C\03\81\DDy\01K\7F\F0", [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\00\FF\FF" }, %struct.anon.0 { [16 x i8] c"\99\05\13z\9E\D4\C5\DDUPWV\9B{F\F3", [16 x i8] c"\99\AB\13\0C\EE\A9\10\B7\EF\E9\AA\C6@\9F\94\DA", [16 x i8] c"\FF\FF\FF\FF\00\FF\00\FF\FF\FF\FF\FF\00\FF\FF\FF" }, %struct.anon.0 { [16 x i8] c"\199\0A\08\E2\1A\BF\D1\03i\97D\08,\1E\AC", [16 x i8] c"\D3r\EEO\E2\0E\BF\D1\84G\97D\B5\F4\1E\CF", [16 x i8] c"\FF\00\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00" }, %struct.anon.0 { [16 x i8] c"p\A3\C6\FB\B1\E6\F15-\EC\AC\E3\E0 \B2\0D", [16 x i8] c"\9E\A3\C66\1F\FC\F1\1Es\EC&\17\E0 \8E ", [16 x i8] c"\FF\FF\FF\00\00\00\FF\FF\00\FF\00\00\FF\FF\FF\00" }, %struct.anon.0 { [16 x i8] c"\85\02\05\A4\FE\D7\C3q\8A\E9\88:\C4\16[B", [16 x i8] c"jwq\A4\84\D7\0Cq\E6VV\17\C4<[\D8", [16 x i8] c"\00\00\00\FF\FF\FF\00\FF\00\00\00\FF\FF\00\FF\FF" }, %struct.anon.0 { [16 x i8] c"X\A2[\DCxgY^\BE\AFu\11\EB[\E9)", [16 x i8] c"X\A2[\DC\A6\13S\D0I\AF\BE\95\BB[L\14", [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\00\FF" }, %struct.anon.0 { [16 x i8] c".t\84\D5\87\D8\A5\D0\B2cemQ\B2\81\E2", [16 x i8] c"Zr\EA\D5\BCQ\A5\B5.\15\9Ae\DD\B2\81\0C", [16 x i8] c"\00\FF\00\FF\00\00\FF\FF\00\FF\FF\FF\FF\FF\FF\00" }, %struct.anon.0 { [16 x i8] c"R\07O\0EX\86\C3\86\9B^\ECy\07\CE\85$", [16 x i8] c"5fOt\EC<e\D5\15\C4\ECy\07,\85\F6", [16 x i8] c"\FF\00\FF\00\FF\00\00\00\00\FF\FF\FF\FF\00\FF\FF" }], align 16
@.str.75 = private unnamed_addr constant [37 x i8] c"../spack-src/test/x86/avx512/cmpge.c\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"simde_x_mm_loadu_epi8(test_vec[i].r)\00", align 1
@.str.78 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\0A\00", align 1
@stderr = external global ptr, align 8
@test_simde_mm_cmpge_epi8_mask.test_vec = internal constant [8 x %struct.anon.1] [%struct.anon.1 { [16 x i8] c"%\8F\0E0\AE\99\C6d\F6\B1\C8\7F\A0@\FC\F3", [16 x i8] c"\FA\17\A5E\AEB\DC<\A8\CCCb\E6\B7q\0B", i16 10645 }, %struct.anon.1 { [16 x i8] c"\A1\EC\A1\CB.}\08\D6JK80\02\AA;I", [16 x i8] c")v>\CBx\97Q+\B8\DF\7F\19i\AA;\0A", i16 -5336 }, %struct.anon.1 { [16 x i8] c"\BF\B2\047IUc\014\E2\1B\9D\A7\90\A8Y", [16 x i8] c"\A6~99I\EF\17\014$\B0\9Dm%:,", i16 -29199 }, %struct.anon.1 { [16 x i8] c"\8C\E2\AD\E8\D1\C4m\B0\E8\1D'UBa\81\1A", [16 x i8] c"\A0\E5\AD\E8\AB]mT\9B\1D\A4hpa\DC\FC", i16 -22692 }, %struct.anon.1 { [16 x i8] c"\F1\06\0D\9Dd\0A\F1\FFl\95g\DD\E2C\D9\11", [16 x i8] c"\CC\BE\11\19d\C2O~\9A\950\D3\E2\FB\AD\11", i16 -205 }, %struct.anon.1 { [16 x i8] c"\A5\FF\F6\B5\C1E3[\1Fc/\05_\DC\DDa", [16 x i8] c"\96R\F6[\C1,\8C\B3\F8\9A/\08\81~\E5a", i16 -26635 }, %struct.anon.1 { [16 x i8] c"t\FA\97-&#\E0\1E\BDq'?\EF\0Cfm", [16 x i8] c"\E7\FA\AD\07QH\E0\C4\12\8A'\B8\AC\C9f!", i16 -309 }, %struct.anon.1 { [16 x i8] c"T\A9)\A5\F1oj\03\F9\00\BB\A6\CA\B0\C7\8D", [16 x i8] c"T\A9)\EBC\7FX\03\AE\00r\A6\CAn\0B\8D", i16 -25657 }], align 16
@.str.79 = private unnamed_addr constant [14 x i8] c"test_vec[i].r\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"%s:%d: assertion failed: %s == %s (%u == %u)\0A\00", align 1
@test_simde_mm_mask_cmpge_epi8_mask.test_vec = internal constant [8 x %struct.anon.2] [%struct.anon.2 { i16 1862, [16 x i8] c"\97\B6\A0l\9Eg5\1A\10;e\A5\C9\CDq$", [16 x i8] c"1\B6\A0\C3\D2\1AM\97\7F\CE\DF\9F\\\9B@\F4", i16 1542 }, %struct.anon.2 { i16 22349, [16 x i8] c"0\18!}\AF\A0L\8E?\A8)\7F\9Cz`\FD", [16 x i8] c"0\A7\93r\FFd\E0\FC\FF\1Cj\BD\89\B0`\B9", i16 20813 }, %struct.anon.2 { i16 18052, [16 x i8] c"\85L\BCfH\BB\82\B2x\0Bb=\C4*#\FA", [16 x i8] c"\A1\A9}\A6o\A8\D5\B5o\7Fb4\92\A7\8B\17", i16 17408 }, %struct.anon.2 { i16 -2071, [16 x i8] c"\C1\F4\EE\96\A9]\15\03\91\A7\AB\1D\BF\9Ed<", [16 x i8] c"\DAg<\C7\E2]\17\9A\15\90u\DE\AB\F9$l", i16 21152 }, %struct.anon.2 { i16 -7009, [16 x i8] c"\85\CB=\9CeR,\DA0\D7\D4TC\C1fF", [16 x i8] c"\85\D6^\F2\D7\1D,\F5\9C\D7wT\D8aN]", i16 16401 }, %struct.anon.2 { i16 31980, [16 x i8] c"Lv\02\83k\9E\9D\E3\F5uDC\D2p\CE\CB", [16 x i8] c"\02\AC\F1o\BB\9E\9D\1E.u\E7C\D2p\99W", i16 31844 }, %struct.anon.2 { i16 -29002, [16 x i8] c"r\A7j!\C5\99\D3\ADN\DE4\E761\83\10", [16 x i8] c"r\A7\88\E6\EB\99v\\6w\9C\C16\89>\EC", i16 -29658 }, %struct.anon.2 { i16 -3189, [16 x i8] c"\89\A1\04\00\FE:w\9A\FB\F1#9\DDT\E2\EA", [16 x i8] c"\89#\CB\ED\FE:w\9A\7F\F1$\84\DD\DA\E2\F9", i16 29321 }], align 16
@test_simde_x_mm256_cmpge_epi8.test_vec = internal constant [8 x %struct.anon.3] [%struct.anon.3 { [32 x i8] c"hf\94\A0D\1A\A0\AF\17\81\EFC\07\D5/\D5\C7\BDgm\81\06p\BC\B1h;1\18\C7\CC\80", [32 x i8] c"ha q{\C0 \92A\10\D5I\07\D5/\AD\C2\85\1AC\81\8A\FF=\B1;;\0A\02;\8A0", [32 x i8] c"\FF\FF\00\00\00\FF\00\FF\00\00\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\00\FF\00" }, %struct.anon.3 { [32 x i8] c":\98\C1\A5ZkR,\EAH\E4n\\H\B4\F6\C7>\1B\CF\C8~\CA\8CP\CES^]J\08\97", [32 x i8] c":\C9==4kj\1E\D8H\8C4\96A*\F6\C7F\1B\CF\C4~\D4\8C\C5\CEs#r{\BA\97", [32 x i8] c"\FF\00\00\00\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\00\FF\FF\FF\FF\00\FF\FF\FF\00\FF\00\00\FF\FF" }, %struct.anon.3 { [32 x i8] c"\FD\81\89\84} \E3\C8Dv\A9\A94\E7\8E8S\BA\01\B5\BA\DE\DD\E1/({\FA.i\0A+", [32 x i8] c"\FD\93\89\84\B4 0\F8\08\D9\A2=\C0\E7u\13\EAv\C9\A4U\A6\85\E1\CF\00~\FDj\89(T", [32 x i8] c"\FF\00\FF\FF\FF\FF\00\00\FF\FF\FF\00\FF\FF\00\FF\FF\00\FF\FF\00\FF\FF\FF\FF\FF\00\00\00\FF\00\00" }, %struct.anon.3 { [32 x i8] c"\D4*h=\161\AE\DC\9C]b7\81\FB\BC\1B^\E5\0Bg\93~?Bp\14[\EB\11\C9\83\E5", [32 x i8] c"\F3\EB\22\09\1C1\E5\B8\9C]\EF\AEC\AB\BC\A1\90\E5\08#SGf\C4[\C1\AFl\112Q}", [32 x i8] c"\00\FF\FF\FF\00\FF\00\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\00\FF\00\FF\FF\FF\FF\00\FF\00\00\00" }, %struct.anon.3 { [32 x i8] c"r\F5\0F\B5b\00&\16\E1F\0Dl/\A5\88\EEE\C7\00,l\D6n\D2[\1C\C3\13\1B2\E9\8D", [32 x i8] c"'\F8B\89bi&\D9\AF\ACF\DE/\CE\CC\96\95\C7\C2\01\A20\D3\FEL\1C\11g\C9\FA\F4\F0", [32 x i8] c"\FF\00\00\FF\FF\00\FF\FF\FF\FF\00\FF\FF\00\00\FF\FF\FF\FF\FF\FF\00\FF\00\FF\FF\00\00\FF\FF\00\00" }, %struct.anon.3 { [32 x i8] c"\80\0CP &\15o\EC\1F\9D\03\F8\97\B1e]\22\D4\C6\C3\16-\B0\EF\A6\05\91\19O#~\CF", [32 x i8] c"0\0CPV&_B\EC\1F\9D\03\93\F7ae\19\22\D4\DCK\16\8C\B0\8B\92\05\A4\E1\EE#\B0\CF", [32 x i8] c"\00\FF\FF\00\FF\00\FF\FF\FF\FF\FF\FF\00\00\FF\FF\FF\FF\00\00\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF" }, %struct.anon.3 { [32 x i8] c"8<68\F2\0F5\EE\E3\C5\E1\19F\ED\83~\D59\9CJ(DP\E3\918\8C\00\D0S`\08", [32 x i8] c"8\96A\82\A5vp\89;\C5\A2\81?%\FF~^\9B_\87(\AFj\E3\E78q\B7I\D1\C0\D9", [32 x i8] c"\FF\FF\00\FF\FF\00\00\FF\00\FF\FF\FF\FF\00\00\FF\00\FF\00\FF\FF\FF\00\FF\00\FF\00\FF\00\FF\FF\FF" }, %struct.anon.3 { [32 x i8] c"\E0!\D7W\ECm\09\0A\A6<g\04o\D9\C0=\AA\04\EB*\B1\0A\92U\9A\B2B\FB\91\08\C5r", [32 x i8] c")\9C\C9W\EC\D3\09\0A\0F\86\B3\04_t\BB\09\AA\A64)\B1\C6~J\9A\C0F\FB\91\0B|\F1", [32 x i8] c"\00\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\00\FF\FF\FF\FF\00\FF\FF\FF\00\FF\FF\00\00\FF\FF\00\00\FF" }], align 16
@.str.81 = private unnamed_addr constant [38 x i8] c"simde_mm256_loadu_epi8(test_vec[i].r)\00", align 1
@test_simde_mm256_cmpge_epi8_mask.test_vec = internal constant [8 x %struct.anon.4] [%struct.anon.4 { [32 x i8] c"T)\ACmO\0C\95\FC\1F;\09\A7\9D\1F\A6\A6i\CF_ywb\02\DF\AC\95\0F\00\A41\FC\F9", [32 x i8] c"T)\ACm\B4\FB\A6\D36\AFz\A7\CE\1F\A67\F0\D9\B1yw\B3\02\E7I\95\E8\ED\A4\E4\E6\F9", i32 -25335105 }, %struct.anon.4 { [32 x i8] c"\B6\99`\FD\CBs{\AD\01\CD^\B0\99FP>\DFW\1F+\A4\E7\C1H\97Ds+\AD\80Kc", [32 x i8] c"\B6\AB`\E4\CB\DC\92 \AA\F0\D0\B06 \82\15\DF\A1@+\88\01d\1FE\D7s\F3W\95Vp", i32 245099901 }, %struct.anon.4 { [32 x i8] c"\AAY\C9>@G|\16\96\FD#\06\01D\ED\A5\A6\F0\D2\0AW\1D\B3\95\B3O*\DDA/H\EB", [32 x i8] c"\88\11\C9\C8X\A5\DF\16\A3\02#\A4F\E2\ED\ED\D2\1B\D2)9\AA\BE\EC\F9\E8\C9:\17\11H\9F", i32 -164336401 }, %struct.anon.4 { [32 x i8] c"\C6\00>\BBG\A8S\90\07\8F H\15\9C[\B6\10\97\90-\91VDs\E5\95l\86\0C\05J\D2", [32 x i8] c"\C6\88\8EM1\E1\DD8\07\FD\81\86\9A\DC[\AAt\CC\D7\05\22\1By\07\B0\E5l\BC\EA\D8\8F\F0", i32 1974000983 }, %struct.anon.4 { [32 x i8] c"h\17\7Ff1I\D6I\94\CB\FB\BB\FDWW\FA\8B\F8\1A\DA\12A\D9\11\F6\95\FB\83\E0\D5pH", [32 x i8] c"h\EF\AFf8\85gI\94c\88M\FD\DFWE\D7\F8\1A\E9\A3\F9\FA\99\F6\F6\1C\83\E0\8CpH", i32 -105482833 }, %struct.anon.4 { [32 x i8] c"\D4\F2H\C0/\C9\FC\D0\D2\85+\BAW\CBy\8A\8B!aD\C4\D0\8C\\\\B\C0t\B0\DC\08\85", [32 x i8] c"\CEPH\C0\1AA\FC\EC\C6\F9\A7\1DW \A8PB!a\06\C4 b5cB\A9\13\FF\B1\98\CE", i32 1855870301 }, %struct.anon.4 { [32 x i8] c"I7;g\D1DLd\F3O\BB\C3\F9c\D5\AD\9F\ED:\FBh\FC\BB\05h\8E\A2\86\F9\0D\A5B", [32 x i8] c"D\E1\AAg\D1Dy\18E5\BB?\98c\D57\9F&:\07h\ED\BB\8Bh\AF\A2\86\BC\0D\B7\01", i32 -1107986753 }, %struct.anon.4 { [32 x i8] c"\BD\98\B7\15(\8C\B3\ED=\8FJ\A0X\DE\A1F\A4\AAWX\BF\F3\88\83\A0,\03\04\88\85\FFF", [32 x i8] c"\1D\B6\B7\15(\0E2\80\9E|J\A0Z\DE<\FE\A4\94WX\87\F3\88\83\0B,\03\046+\FFF", i32 -822104676 }], align 16
@test_simde_mm256_mask_cmpge_epi8_mask.test_vec = internal constant [8 x %struct.anon.5] [%struct.anon.5 { i32 499934921, [32 x i8] c"\84\A0\B5\C8kZ\AA\B1\1F\82R\A7\96\F1\9A?\E7\B9o\BC\85\C7\9C\03K\11\B8\FA_\C0\8A\E3", [32 x i8] c"`?\B5\CBkU\AA\B1\1F\82`\A7\C0\FA\AD\A7\B3\1Cc9\E3\C7\9C.K\11(p\B4\B2S\E3", i32 289669824 }, %struct.anon.5 { i32 -617737269, [32 x i8] c"\C4\10I\F0\B5\E3\DDT*p\A6\8Dg2\D3]\FAGc\B6\E3\DA'2\A4\ADrm\14>\8A\D8", [32 x i8] c"O\D4I\04\B5\E3\DD\E2\16po}0C\DA*\8A=\E1n\17\08\A0\BB\B6\12(\CAQ\B3\A2\D8", i32 -2012867646 }, %struct.anon.5 { i32 2139441104, [32 x i8] c"\0FO\01\09\DF\A44\B2!\8A\0F\DC\C0\DB\AE\FFF;\F4\C4\F1\B3\93Z\14\02J\E0\15y\BB$", [32 x i8] c"\C8O.\A7a\A4Y\83!h\0F\DCC\0D\AC\8AH;\F4:T\E2\94i\14\02I\E0X\04\BB ", i32 1862550912 }, %struct.anon.5 { i32 77490830, [32 x i8] c"g+\1A\EF0c\BBBX\11\9D\EE\B61\D8<Z,\A7b\C8\0C\C2i\90B\CC`\89Q\DF\F0", [32 x i8] c"g\F9\E0\EF\\\9B\F0\B4\AD\8D\A2\EE\BE{\9F\19ZG{bS>\D9\E3\80\A5C\0A\F6Q\FAs", i32 8931982 }, %struct.anon.5 { i32 -2120777474, [32 x i8] c"{\CB'\19\9A\ADu\E5\D3\EB\D6?\DC7\FF\0Bq\A3\BAP\8At&\93(o\B9\B6\D9W\BBT", [32 x i8] c"\22\CBm\BC\90\E2\A1\E5\CD\EB\A2\A9\AF\A2\B4!E\A3qP\8A\97b\0B(\1B\C1\DFr|3T", i32 -2129461030 }, %struct.anon.5 { i32 219410072, [32 x i8] c"s\E9\D1\DD\DE\CB\F7tz2P\97\DF\FA\98#\07\A3m0p\97\CB\BA\F5\FAb\F3{\FAt\EE", [32 x i8] c"\E3E\CB\C1\11\CB6\8B\F52\22\D4\80\BA\F7\88^e\B80\FC\97\88\F1}\EB\E4\F3\E5Xt\EE", i32 202417800 }, %struct.anon.5 { i32 -1679374168, [32 x i8] c"\AEMw\F4\AA\B6\BB\C1\ED\096\88\10y \99E\AA\A0\FC\18\A0\98\DE\86\FDC\1E\EBV+\9A", [32 x i8] c"\A4\A2\8ENYI\0FFS\09\CEc\BE\EF\FC\99\99\9D\00\FC=\A0\8F\C3\96\FD\E1\1E\EB\0C\1B\CD", i32 451067904 }, %struct.anon.5 { i32 -491861574, [32 x i8] c"\F23\E2aO\8B\8EZ1\C0\FEt\F2S\F4\BD87\1E\EF[\00\CF\8B\FE|j\A6DPB6", [32 x i8] c"\83$\97\D3O%-\E1\E5\C0U\D7\7FJ\94\B787\1E\DD\B3u\CF\B1\F1|j5\22PB6", i32 -502347366 }], align 16
@test_simde_x_mm512_cmpge_epi8.test_vec = internal constant [8 x %struct.anon.6] [%struct.anon.6 { [64 x i8] c"\A2\D1\CC\AB\19\8Ay\FB\DA\F7\14l\E8\FF\BA\E4\BC\94\84\0C\DA~=F\A9x\BD\B3\80\AFi\22\805\CD\99\BFF\94\9A>\A9\06&\A8\C0\0BdT\8Fp/\0D\ADu\B7%2j\A6\E1\D3\C8a", [64 x i8] c"\08\96\FA\C8\DC\8Ey\1A7h\14\DF(LD}\BC\B4\AC\E9b~\A0\87\A9\0A-4\DE\F6i\22\8C\8F\AEh\BFF\83Ux\C44\A1\10\C0\1E\EB-\CA\D4\8F\EBtu>\7FDj\A6\E1\D3\C8\C6", [64 x i8] c"\00\FF\00\00\FF\00\FF\00\00\00\FF\FF\00\00\00\00\FF\00\00\FF\00\FF\FF\FF\FF\FF\00\00\00\00\FF\FF\00\FF\FF\00\FF\FF\FF\00\00\00\00\FF\00\FF\00\FF\FF\00\FF\FF\FF\00\FF\00\00\00\FF\FF\FF\FF\FF\FF" }, %struct.anon.6 { [64 x i8] c"_/Y\0B'\A2,\\\07\D3G\A6\EB\14IIR\DB`\19\9A\B1\AB\F8\97D\FCW\A8<\E3\07l<\12\93\DF?\F0\E6\127\8D\FEK\D6G\9D\B2\A7\B6LXbE\F0\A6AGN~*V\EA", [64 x i8] c"ghYF\A7m,\BA\07\D3\B8\EF\90\FFIBRC\8E\19\9A\D3\EF\F8\976\9AWa\F0\E3\C8X<\0E\00h:\F0\0C\F4r\FC\84q\89\C6\17\CCT\16rX\05\BD\F0<WG\9DG*e\A0", [64 x i8] c"\00\00\FF\00\FF\00\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\00\FF\FF\FF\00\00\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\00\00\FF\FF\00\FF\00\00\FF\00\FF\FF\00\00\00\00\00\FF\FF\FF\FF\00\00\FF\FF\FF\FF\00\FF" }, %struct.anon.6 { [64 x i8] c"@\C8D\B6=\B4\F8jJw\D8\CCKS\8D\89N\B78\86\85\94S\C99\FB\CE\8C \DD\01`\A5E\17\E2\FA\0FLD\87$\10\D2x\9E[\C6U\94M\DA(\A0\A3a\9Br\ED\BBO\EF\1C\F5", [64 x i8] c"43\D7\B6B\B4s\C9H\83\9B\C0!\F7\87v\8B\B7Q\B3t\94\14\0Ff\01\CB\B6\F0\E7\AB`\1A\82\17\\\A6\C6&DJ$\AFk\B8\9E\E2C\0A\94\F6\DA(\0A\8E\8E\0CYD\BB@\EF\1CZ", [64 x i8] c"\FF\00\FF\FF\00\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\00\00\00\FF\FF\00\00\00\FF\00\FF\00\FF\FF\00\FF\FF\00\FF\FF\FF\FF\00\FF\FF\00\FF\FF\FF\00\FF\FF\FF\FF\FF\00\FF\FF\00\FF\00\FF\FF\FF\FF\00" }, %struct.anon.6 { [64 x i8] c"2t\03\BC\F3\FE\E4(\EAcK\A9{en$\F5`h\89\0ESz\BC\E2\08X5\8DT\C3\BF\C8\C6|\BB\C4`\E3\AE\C3.W?\93\C5c\88%\CC\114\1F\8B\F0\01\93H7 \9C\FA\E0d", [64 x i8] c"\C0t\1F\84\BC\FE\E4\801\89\BF\C4Nen$\EE^h\0E\EA\97z}\DFF\9E{@~\DF\00\DA\C6\84\BB\C4\B6\162?\D5W\8D\F8C\01\E6\A2\A8\11\8C@\04\09\01\93\A7\9B\8B%\FA\8B\FF", [64 x i8] c"\FF\FF\00\FF\FF\FF\FF\FF\00\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\00\FF\00\FF\00\00\00\00\00\00\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\00\00\FF\00\FF\FF\FF\FF\00\00\00\FF\FF\FF\FF\FF\00\FF\FF\FF" }, %struct.anon.6 { [64 x i8] c"\AC\CE\1D\D9\1F\B4\87\13\DE\B0\EC\9C9N\98\17\C3\10NV%(\AEr1\F1p\F4\1D\9A\81\CAh\9F\A3\88S*\9B1\DA\87\CD\13\D5e*\99vx\EF\9B\A1\9E\0D\D2\8F~\C7\AC\18Hv\80", [64 x i8] c"\E7\CE\08:D\B4k\13+92\00\9E\\\99\17\C3\89\B0v'(H\B6;\0Fb\F4X\9A\D4\CAh\9Fz6\80*U1\1E\87\AB\BD\E3E\D1\B8\CEx\EF\F5\A1w\ABz\86\0D\CE\DE\E6\A2\1E\D9", [64 x i8] c"\00\FF\FF\00\00\FF\00\FF\00\00\00\00\FF\00\00\FF\FF\FF\FF\00\00\FF\00\FF\00\00\FF\FF\00\FF\00\FF\FF\FF\00\00\FF\FF\00\FF\00\FF\FF\FF\00\FF\FF\00\FF\FF\FF\00\FF\00\FF\00\FF\FF\00\00\FF\FF\FF\00" }, %struct.anon.6 { [64 x i8] c"\83\91q\CC\8D\D2\00\DE\8D\04\C9r\8F\1C\03\D0\CC\7F>\84`_Qu\13\1B`v\B9\9E\22</\93\08\BCe\09\9A\F2\0Dcd\9C\7FglK\E6\AA\CFG\09!\BC\1C<\1C\93\F5\BB\B52\EA", [64 x i8] c"H:\A7\CCCA\A0P\A5\04\C9$lX\03R\02?\99\84`V(\9C\13\BB\92v\B9\9E\18\B8\FE\93f\BCe\06\92\A5\0D\7Fdv\D7g\C9\DAyb\E6\DA\B8\0Ev+<\08X\F5\CCp2\CB", [64 x i8] c"\00\00\FF\FF\00\00\FF\00\00\FF\FF\FF\00\00\FF\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\00\FF\00\FF\FF\FF\FF\00\00\00\FF\FF\FF\00\00\FF\FF\00\FF\00\00\FF\FF" }, %struct.anon.6 { [64 x i8] c"B#\EB2\10\C9@\9D\86E\03\ED\19\BC_\A4\A2\95\F3+\BA\D0a&w\0FK\D9\00WQBz<t\8B\05\B5(\8C\FA+y\13\E7\D8\B7\89m\AA\B4'{\15M\F2$\98\CB%\EF\1Cgj", [64 x i8] c"Y\DC\F5^\91\1D\EA\8BHc\03/;V\B8\A8\00l\CF{\82\1Dm\A6\B5\0FK\A5U3\0F\AE\0F<t\8B!\F7+\8C[\C9\98\96\E7P\B7 \BC\0E\9B>+\09\E5\E1B\98\CB\97\E3\95gj", [64 x i8] c"\00\FF\00\00\FF\00\FF\FF\00\00\FF\00\00\00\FF\00\00\00\FF\00\FF\00\00\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\00\00\00\FF\00\FF\FF\FF\FF\00\FF\00\FF\00\FF\00\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\FF" }, %struct.anon.6 { [64 x i8] c"5t\04\F7\9B\D1?}\DB.j_\E4\1Em\FB\D90~~\89\AD\BF\FE!\7F$ \B1\94\FC\E6\08\00\DD\A3\D1\1D \ACK\8A\0C/\A9y+\82\AA\A9\003V\C02x?V\98\F0\EB\94\D7\F3", [64 x i8] c"\94\B4\97e\D1\B7\12\1DB\1EL\EB\97\1EmA 0u~-\A7\EFm\FD\87] \1B4\DC\E6\E9s\14\BA*&\D7\ACK\8AW\DC\A9\C4\1D\BC2\A9339\22\CC7?*\1F\C4\EB\94sG", [64 x i8] c"\FF\FF\FF\00\00\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\00\00\FF\FF\FF\00\FF\00\00\FF\FF\00\FF\00\00\FF\FF\FF\00\00\00\00\00\FF\FF\FF\FF\00\FF\FF\FF\FF\00\00\FF\00\FF\FF\00\FF\FF\FF\FF\00\FF\FF\FF\00\00" }], align 16
@.str.82 = private unnamed_addr constant [38 x i8] c"simde_mm512_loadu_epi8(test_vec[i].r)\00", align 1
@test_simde_mm512_cmpge_epi8_mask.test_vec = internal constant [8 x %struct.anon.7] [%struct.anon.7 { [64 x i8] c"n4\0D\99K\BF\C1\BF@\83U\AC\99>\978\DA:\80\F5\CC\1C\BAm\CE\87\17\0B\A4:Y\12of\AB\BA&lzf\EF\CF\12\89\0D\AA\C1\E7\E4A\DC\B1]\97\1E,\1E57\C2p\90\D4\DF", [64 x i8] c"\F64\99\1C\EC\13\82\DB@\95U\AC\99>\97#g:\D4\C4\CC\F2\BAm\CE\87\17\0B\B7\FFY\AE\7F\10\ABk$MF\06\E2\AB\12!\D0\AAD7\E4\19\DC\B1\0B\EC23\14]\CB\CB\\By\DF", i64 -7701375304052572841 }, %struct.anon.7 { [64 x i8] c"\B0)\EA\D3\AF\B4/\A9\11\93\E2G7\DBo\17]\93\1F\9A\E8d\EF9\B1\B9\C9\80\D2\EA\14\82\13\FEV\C3\B2\85l\C4\18N\0BO*zf\87\0E\85\22\F6\EA\110\9B\CA\F9\1B\9D\E3/\1F\F6", [64 x i8] c".u\B9\E0\FA\B4\A4\12\11\93aG7\DBo\17M\93\1F\9AYd\D2#X\EE\C0;\D2\EA1KU\EB,P\10\D0b\84\80\C4\22\AB\8BH\E3\D8\8F\12\0F\E8q\11\0C\9B\D0\CC\04\ED\AC6\1F\F6", i64 -2959573288890664092 }, %struct.anon.7 { [64 x i8] c"\DA\DB\AF\00\B0\C4\9F^:A,\F5\C0\AA\06+\C0\E0d{L;\A7O\9E\F1\1E\C5Z\DA\154\B6\C55f\89\D4\C4\C4\15\F0\B9\D6\9A\BF\01[\A0f\D6\EC\A1~;?oY\04\C94\1A\FD\EA", [64 x i8] c"\DF2\AFh\B0\15,\1C\05\E5\F2\A0\A5\F3\FBE\C0\D1d\FBOm:\BE\9E?\87\FAY\85\158\B7\C5\A0\BEJ\CD\DA\C4\15\CC\EFW\BF\BF\9C\19\BC\CE\14\EC;N\CA\01\8DQ\FC\E6\D6\1A\FD\8E", i64 -582402863354912876 }, %struct.anon.7 { [64 x i8] c"\B0\9A`\F3\D8\A9'\B4\88\0D\19\99\BE\C3\ABM\BD\F9\09\D2\83\7FSG\97\17$n\AB0\C3[\CA#N\A2\CCvVT\83o\EEA2\99\8E\F0\92\97\C2\16\17\16]\AE-\81\1C\D8\B1\DF3{", [64 x i8] c"\03\82`\CF\D8t'\B4\E4\0D\19\16\ABK\06>\E3\F9T\FA\DF\B1\A8\0C2\C4\E4n\A3\17^\A6\99#v\91\F1\9A\0D\D5\AC\CA\EBA2\F2\95\F8\BB\97\F2\9A\9A\9A\A6\AE-\8A\1C\D8\A1\DF\A8;", i64 -145770040067451170 }, %struct.anon.7 { [64 x i8] c"\A8C.\DD\F9\B1\B6\EB\F0H\0B\80\8C\14Ls\A0\ED\99U0\\\BD\C4\BEz\B8h\C6\96wn\DA\A5K\D3V\02\BFFJ\CA\C7\D6\DF\13J\7F\00\E3\D50@\92\F4\FE\0C\ADf\D2C\DE@\1D", [64 x i8] c"\83\8C.\DD\8E\B0\B6\D8\F0\E7\AFY\FA\F9\D9\FA\A0\AE\99\1C@\1F\1BM\BE\81\1F\0F_`wn\EC\A5Kz\CE\02\BFH\C5\01\A2\D6\FA{\BA\D7\00\E4\D5i\03\0E\B6\CF\90\D6f\EF6\0C\D2\1D", i64 -3038296463492782081 }, %struct.anon.7 { [64 x i8] c"\81\DF\D6\E0\90\1A/#Pi\131d\8A\A2\14\F1\A6\87\FF\0EN\89\B7X\C5\AFx\D6\1E<X\FE\138\8E-h\B1}\D1\C4\AE5OPI@\F7\D0?\05\1F\C8\BCw\8Ek\EFd\8A,\BC\88", [64 x i8] c"\81\DF\16\E0\90\1A\EA.\8B\98c\DA\E9\8A\1B\E0|\A6\87\9B\0EN\13\B1\0D\02\AFx.\D2\1Fm\C7\13\DA$-\C4\B1\87\\\B5bEa}I\DD\D7\D0?\FA\1F\8C\AB\B9\8E\C1P\BD\93o\BC\88", i64 -3747061996995036293 }, %struct.anon.7 { [64 x i8] c"\F3~\ABs\A8\DCx\\wc\16\A2\12\AEg\FD\1Es\B0\13\7F\BBL\DA\D9^\F36\A1o\D6\95\EE\82\08\96^\81\F2\D5\E4\08w\F6\B6\DE\F3\D5R\A4\E8\D1_4\AB8\92\9Eo4\0EE\C9\FC", [64 x i8] c"\C7\D1\92%R\85\FA7\8Dc-DP!\19\A2\C5\01s$5\BB\\\C8\BC\CB\FC\CA\11\C5\C6\D8\96Y\08\E9\DE\F8 kjM\AF\BAn\DE\\3\C9\CF\E8\FF\ED\B4\C7\A9\7F\C3t\90\88Ei\FC", i64 -5137151329433304081 }, %struct.anon.7 { [64 x i8] c"RIR\CF\1F}\C1\81,\968\BB\83\0D\F8\DE\00\D0[\D8\EE{W\C4\CD\05\8E\BA\02\DF\AAT)\FC#Hz\E4\C9\A6z\01a\FD\0EY\DB\0F*7\E7\18\B2>\DC\7FCk9EJ\E4\99s", [64 x i8] c"\E0I\BBZ\A0\84\01\1B\85\96\18\BB\83\0D\A3\E6\00\8A[\DD\EE\DA\\\C4\CD\95Q\90y\EA\03T\A7\FC\B4GC\B5b\C9\18{]\D4o\00\BA\9A\8A\B8wR\92\D3]\D8C\AEh\E2Jk<@", i64 -7227172119816732873 }], align 16
@.str.83 = private unnamed_addr constant [48 x i8] c"%s:%d: assertion failed: %s == %s (%lu == %lu)\0A\00", align 1
@test_simde_mm512_mask_cmpge_epi8_mask.test_vec = internal constant [8 x %struct.anon.8] [%struct.anon.8 { i64 3683588123492366466, [64 x i8] c"W\D9p\1E\EB\03I\90(I\CA\99\B6!\0E\09\E9\19\13~\93>\8F\E4l\B5v\D80us\87O\E3\A5:\E6\EF\CA\0E8\94\A7\EE\B6\B5\F7\9F\CE\0B\1DbI\ACF\B5a\BC\8D\912\00\18\81", [64 x i8] c"\E3\BE\BB\1E\AD\85I\E5\1AI\D3\993\CBo\02\D6\8Cd\1F8\AA\D5\99fbv\D8cB\19\87\00\D4\A5\AD\E6\E7\92tffD\991\B3\9B\07\CE\FF\1Dw\A9\FBF\10^\BC\A8\91|\C2\18}", i64 2528252640803432450 }, %struct.anon.8 { i64 -5489241986032593793, [64 x i8] c"\D9\D2\E0\90\E0'\E1p\80u}\FB\\e\D1?\E9\7F\DF\11\82\D3\F3\04\0B\90\C3\EDK\E2 $\B4\00\B5\94'\96\05\A8\0C\82\A3h\E8t\A7\D1\F3\86\E2uY\D6yef=R\B1\1Fr\D6\D3", [64 x i8] c"r\8Bg\99!lA-\EF\E4\96\D7\\=\A8K\C4\8B\C0\11a:\82\C7\0B\D4x\96FN \B8\D9\D0R\94=\93(,\0C\BE\03h\E8t\1C\C06\DC\DD\97\16\D6y\8D4\D7R\B1%\8C3\FF", i64 2580572662884340738 }, %struct.anon.8 { i64 6384507260715537604, [64 x i8] c"\9AI[f]\AF\8C\ECE\22U|\B7\CD+m\CFw\D1\8E`@\91\E0T\EF\18\D3;\EB\86\D54\E1;\92\90\C7~\D5\E9\D3Q\A0\A0|\0Do\F4\DE\FDT\1E\8E4r~ME\B98\CB\8El", [64 x i8] c"\AD\C9\FE=\90|\13\ECOd\1A\EF\E1'+\D5\06\\)\8E\EA^\97\E0\AB\EF!\E3\A8\EBO\D5x\E1\92\92\CA\A5~\1A\0A\D3\09\EB\C3h\0Do\C4\DE\EE\AEG\8E\17\F2~ME\09\E8\CB^`", i64 1191837647624602756 }, %struct.anon.8 { i64 -3158325826151127721, [64 x i8] c"W\93\F4\A6\A0\1C+\AF\80,E7\9C\C4xP4-n\F5\B5i\F8y}\D2e\03%\00\\|\93P#4lN\E3\EDz)$\16\ED\9Cf!\C9\D5\17~>\0F\F8\BB\E1]\BF\07]\1B\83\F1", [64 x i8] c"k\A6%\A6\F4\1C+\AF\80\E8E\1E\85\EB@N\C0W\CD\FEf\C5\B9G\22xN\80\93\00q\FEx\96\D6mlN\DB\ED\83`$\16K.V\0B\85#\09~\E8\0F3\0B;]\8B\CES\FC\CD\F1", i64 -7770594590070815424 }, %struct.anon.8 { i64 5783730621706696781, [64 x i8] c"5\0F`*\BE\90a@N\C4X\CD\\A\90\B6\C9\E9\CC\BE\A42\C3\FB\17\14\02|s.P\A8=\B0\D2\FB@4;\8E\F8\93\\T\D4\EC\0A\9E\D5\D7\\y\09\1Fu 4w\9C\A7\A5\ECP\E3", [64 x i8] c"\9C\22\DE\DDV\90kN\AD\C7\A3\82\\\AD \B6\84|\02\8D\9Cw\AD\D0\EEI\02|5.w\D2\EAU\AF@o\1A;\8E\E22\9F\95\D4\BF\1Ed; \F1y\09\9F\A7\85\E8\1F\19\1E\E6\90\F0\D0", i64 4629753473158625293 }, %struct.anon.8 { i64 708416538020962542, [64 x i8] c"\B2\D9\16\C2\84\E7B6\9C\C7\8E\DC\D8t\C6\8E\07Az7\1C\81\A2j\F9\02\C9T\F2\0D\A5\A4\E6\BBgj\A2\A9\A0?p.\1BI\A2\E2\D7\AA#Q\E1?\D2\83\A9\CB\85s w\80\C5\1Cf", [64 x i8] c"\B2\D9\16\C2,pa6\9E\C7\E5\DC_\BD\EA\82\0EA\C1\E1Nk\A2\D3\DE\02K^\F2g\A5\A4\EA\BBgj\04\95\B2\A2\12\98\E2I\A2\CD\F3c\98\B5D\E7 \F1\BA\CB\BD\05\\Ol `V", i64 612503870920204430 }, %struct.anon.8 { i64 8380881417213229152, [64 x i8] c"\88.\06\E4\F8\A4\97v\CC\C1\997_\1F\EB\CDVT,\9F\CA0\8E\B8\90N=\A6\1B\11\B0\A3@\B6\888Z\1F\AF&\E0H]?gH\0D\BD\9D9\\gi\EB\1F\F99\\\A0UnP\F8\AE", [64 x i8] c"\06\80\E6`\A0\95\87v\CC\E4\C07_\CD\03\CA\06T1pJ0i\B8\AC\09\D9\1A\1B\D1\C8_R\AF\888DG\AF\22+2hX\FFk\22\BD\CA9v\15\A3\DF\99P\E9rjBC3\F8\95", i64 8091440338081855584 }, %struct.anon.8 { i64 -8495117505294688141, [64 x i8] c"@\08\C7\F1\F3\00E\874\E0\A2\FD\11-\CDCl\E6\A9\FF\DF%J?\DD\F4\00\1B\D3O\90\14WW\05JWK\D1\8B+s\89<\A1V\7F\0D<(\0C\1CMV[*K\\F\1E\AB\D62\02", [64 x i8] c"@\08\C7\84\83\1E\0F\AE\91\98\EA2\EEi?+\91\E6G\FF\A2%\08\ED\FEN\00\A9$>\90QvW\D5\F9\16\E5\A7\8B}s\89l\FA\19\97\8Be(i\08MV\F5\7FK\01(\E5@\D46\B6", i64 -8495400084397031341 }], align 16
@test_simde_x_mm_cmpge_epu8.test_vec = internal constant [8 x %struct.anon.9] [%struct.anon.9 { [16 x i8] c"S9/c<\9Dd)=\F5\F92\94\A8}\8D", [16 x i8] c"\19O\92\DA8\EFd)=0\962DNn\97", [16 x i8] c"\FF\00\00\00\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\00" }, %struct.anon.9 { [16 x i8] c"w\07\81\AF\F6\BE\DF\A6\EFuI3\C3\B7\CAJ", [16 x i8] c"U\C4\81\8F\F6\FA\07v\E0u^3\C3\B7\14P", [16 x i8] c"\FF\00\FF\FF\FF\00\FF\FF\FF\FF\00\FF\FF\FF\FF\00" }, %struct.anon.9 { [16 x i8] c"\04q\\'kd\9DK\16\FC\B9\EF\CF\CD@\AA", [16 x i8] c"cq{'k\F2\9Dt\B3r\8D+\B2\F0\F8\B7", [16 x i8] c"\00\FF\00\FF\FF\00\FF\00\00\FF\FF\FF\FF\00\00\00" }, %struct.anon.9 { [16 x i8] c">l\BA]^\B5\D2\11'_<\DAO4\91\B0", [16 x i8] c"\89l|]\EA\94\10b'\CE\A9\04\CC4\06\B0", [16 x i8] c"\00\FF\FF\FF\00\FF\FF\00\FF\00\00\FF\00\FF\FF\FF" }, %struct.anon.9 { [16 x i8] c"w\14\B1a\A8\C1\C3\0E\8Fl\12[\06\18e\0C", [16 x i8] c"\D8\CDqM\06\E7\C3\9F\99a\86[i\18\F0\E0", [16 x i8] c"\00\00\FF\FF\FF\00\FF\00\00\FF\00\FF\00\FF\00\00" }, %struct.anon.9 { [16 x i8] c"\81\F68\87\DD\22&v\84\AD\F7\ED\CB\E7\CE\FD", [16 x i8] c"\89\10\D7\87\15\C0\E0\87\BA.\00\CD\E2\85\B7c", [16 x i8] c"\00\FF\00\FF\FF\00\00\00\00\FF\FF\FF\00\FF\FF\FF" }, %struct.anon.9 { [16 x i8] c"a^#w\1E\03\FE\D82\FE\A5\14\83]x\FE", [16 x i8] c"LcV^t\03\F43\EAx\BC\97\C9C\CE+", [16 x i8] c"\FF\00\00\FF\00\FF\FF\FF\00\FF\00\00\00\FF\00\FF" }, %struct.anon.9 { [16 x i8] c"\16wE\8B\9C9\BE\87\B1z\1E{\BD\EC\A6^", [16 x i8] c"\DEH\1D\D3\E89\FA\87\F2z\AA{\E9\CBr\FF", [16 x i8] c"\00\FF\FF\00\00\FF\00\FF\00\FF\00\FF\00\FF\FF\00" }], align 16
@.str.84 = private unnamed_addr constant [56 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%u == %u)\0A\00", align 1
@test_simde_mm_cmpge_epu8_mask.test_vec = internal constant [8 x %struct.anon.10] [%struct.anon.10 { [16 x i8] c"\0B\FC\22\F4\B1\1C{\A3Q%/:\F0\A2:3", [16 x i8] c"\0B\C4\12J\0Dx\ED\A3\FC%Pm\CE\A2\BC3", i16 -19809 }, %struct.anon.10 { [16 x i8] c"\85\A4\F6\92\1C\E3b\18\EE\B2\86\BC\E2B\95\0E", [16 x i8] c"!c\EB\1B\AClb\1A\1D\EEy\BC\E2\0B\1B3", i16 32111 }, %struct.anon.10 { [16 x i8] c"\98\B5\E9D\22P^?>\D8\AE\ED\E3\CA \93", [16 x i8] c"\DC\E6^\D1\22P^\E7>T\A3Y\E3\CA&\93", i16 -16524 }, %struct.anon.10 { [16 x i8] c"\92q\AA\9F\B3_\87`\B3*\B9=\98\DF^\BB", [16 x i8] c"\EF\C4\00O\B3\84\ED`\B3y\A3=%\B6\8B\B7", i16 -16996 }, %struct.anon.10 { [16 x i8] c"\A7[\11/\DF\FES\95w\F7H\9C\AD\D4S\D4", [16 x i8] c"\09\AA\AE/\87\E9\E6\95wk/\AFN\D4q\D4", i16 -18503 }, %struct.anon.10 { [16 x i8] c"\92\9F\1E\1A\88\04\A9eo\D9\14\BDc\86\B3I", [16 x i8] c"\08\D9\1E\1ARg\82\C2\0A\17\DF\80\FF\D0\00I", i16 -13475 }, %struct.anon.10 { [16 x i8] c"\DB\E8\89-P\0B\EFZ\22\CE\DA\22\9E\DB\B4\0E", [16 x i8] c"\F9`\89\1C\B5c\AD\E4\D4\FCv\22\FFQ\CC\DA", i16 11342 }, %struct.anon.10 { [16 x i8] c"\B9x\AEo\DB\\S\B0X\C9|W\1AH2S", [16 x i8] c"\9Dx\DD\FE\DB\\\82\F7~'|\17\81\CE\AAS", i16 -29133 }], align 16
@test_simde_mm_mask_cmpge_epu8_mask.test_vec = internal constant [8 x %struct.anon.11] [%struct.anon.11 { i16 25457, [16 x i8] c"\D0\102\02\D0\B4\F9O\DCUf]$\10\97k", [16 x i8] c"iA2\1D\D0`*O\AE\8F\E2E$\10y\F6", i16 24945 }, %struct.anon.11 { i16 -29664, [16 x i8] c"B\AF\C3m\B2r\FC\94\B7!\AA0\17\CF\DB\0F", [16 x i8] c"\C5\AF\01\0AwH\FC\10\B7rA\89\97\CF\EC\D9", i16 1056 }, %struct.anon.11 { i16 -7188, [16 x i8] c"\F1\97\D4\A7\A8\87\19\E9\10\B0\9B\FC\8A\FD\AC\D0", [16 x i8] c"\F1\CE\D4\A7\A8w\0A\E9\F2,\95\FC\13\B5\AC\04", i16 -7444 }, %struct.anon.11 { i16 27958, [16 x i8] c"?\93ZIDMu\D9\CA\88\8E\D4\8D\DA\B19", [16 x i8] c"?\16\FEIDM%\FB\CA\9B\19E\22\DA(a", i16 27954 }, %struct.anon.11 { i16 -28588, [16 x i8] c"\99\C0\E1\BF\BCVZ\D5\9B|\DA\C3\DDrF\88", [16 x i8] c"O\16\A8\04\B1PH\D5\86f?\C3SuF\EC", i16 4180 }, %struct.anon.11 { i16 -12969, [16 x i8] c"g\05\E0\AF%f\15d[h\DA\BCT\10\FF\00", [16 x i8] c"g\98\06\C9\CC\88j\C4\E8}\02\D0\E0V`G", i16 17413 }, %struct.anon.11 { i16 -10091, [16 x i8] c"\9A#V\04\E7>\82\E9\0Fb@o\A9\9C\B0\9F", [16 x i8] c"\1DX\AA\02Z>\C2\19\E4\91@\ACc/y\9F", i16 -12143 }, %struct.anon.11 { i16 -30510, [16 x i8] c"\1F\EF\F5\E1\09\D9r\E1\85\D5\10\FF\D3b\CE\D5", [16 x i8] c"\9C\DCY\E1\F9?#\E1\CE#\C3\FC\D3X\D4\D5", i16 -30526 }], align 16
@test_simde_x_mm256_cmpge_epu8.test_vec = internal constant [8 x %struct.anon.12] [%struct.anon.12 { [32 x i8] c"_\92\B9&\CCOlv\A6B\B5a\92+6\A6'P\1B\82~\0C\A3\AC\E5H\95\04X`\AB\B7", [32 x i8] c"\F2\92\B9\BF\B4JlZ\A6\EB\BB\1E\16\F2\C4\A6B\DF\C0\C1\ECcm\AC\AB\02\95\03X\80\ABU", [32 x i8] c"\00\FF\FF\00\FF\FF\FF\FF\FF\00\00\FF\FF\00\00\FF\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\00\FF\FF" }, %struct.anon.12 { [32 x i8] c"\AF\E0\C3\92*\B7\01^f\8E\A9\08\E02\EC\12|\91/)\A3\1E\81\B8\E1\DD0%\F4\FCO\A4", [32 x i8] c"\DD\E06\07\C97e^\C5\0F7\A6A#\EC\BD\B4\E7\E6X\05h\10\B8E@\0C:=\FC\DE\A4", [32 x i8] c"\00\FF\FF\FF\00\FF\00\FF\00\FF\FF\00\FF\FF\FF\00\00\00\00\00\FF\00\FF\FF\FF\FF\FF\00\FF\FF\00\FF" }, %struct.anon.12 { [32 x i8] c"T\96N\9F\1D\B4\B0\B2Rf\89\13\D5\1E\88+\99V\86|4\C9\A4R\18\07\AE\C2G#\DA\9C", [32 x i8] c"\BA\96;\D7\1D\EB\B0/R\13B'1\CBR\CA!\D8\86U\A1\EA\A7\B9\F1U\AE9yV\D5\9C", [32 x i8] c"\00\FF\FF\00\FF\00\FF\FF\FF\FF\FF\00\FF\00\FF\00\FF\00\FF\FF\00\00\00\00\00\00\FF\FF\00\00\FF\FF" }, %struct.anon.12 { [32 x i8] c"\E2\C3\A9\DEV6,\FD\05\A1\D4\9FhvZ\07]jH/!C\F3.\B9\EF\B4\86\C1m\D3\A3", [32 x i8] c"\E2|\A9\87V6\84\B7\05X\D4\B6\CE\B0\BD\07\1A\06H/INj\02>\EF\89\FF\C1m\A2\A3", [32 x i8] c"\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\00\00\00\00\FF\FF\FF\FF\FF\00\00\FF\FF\FF\FF\FF\00\FF\FF\FF\FF" }, %struct.anon.12 { [32 x i8] c"\C7\B7+\97\7Fn\B5\9F\07\89\8EP\1A\A9\B4\B2 T\92\E5_u\E8\88\E1\EA>\A9\8E\B1JU", [32 x i8] c"hu\EC\97\E3\A1\87\9F\07\15\8ED\BF\EF\F6\DF \89\92\A3\FEu+\88\96\EA>$\1B\D3yU", [32 x i8] c"\FF\FF\00\FF\00\00\FF\FF\FF\FF\FF\FF\00\00\00\00\FF\00\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\00\00\FF" }, %struct.anon.12 { [32 x i8] c"\AE\C9\A5\B4\BB\BC\E4\C3\0EX\8AO\C30\D5\B7\9A\FD\AA\B0Q|\\\0F\D8,\E9\08uF\80#", [32 x i8] c"\AE%\A5\CB\E1\BB\8E\EF\0EX?\D7\C30\8F\E4\119\AAc\B5\F1\\\0F\1D[\96\08\A2\16\B6\B1", [32 x i8] c"\FF\FF\FF\00\00\FF\FF\00\FF\FF\FF\00\FF\FF\FF\00\FF\FF\FF\FF\00\00\FF\FF\FF\00\FF\FF\00\FF\00\00" }, %struct.anon.12 { [32 x i8] c"\CCrF\15}Ss\A1\9F\A8\0F\FFl`qiFE\1B\1D\8C\\\12/2\99s\1F\D7iH\A3", [32 x i8] c"\DC\8F\B9\15\E2,\FB\82\D4\A8\81@j\F2\A9\B18\C4\CE\1D \E0\F3SzgrQ\D7\BB\F5\AC", [32 x i8] c"\00\00\00\FF\00\FF\00\FF\00\FF\00\FF\FF\00\00\00\FF\00\00\FF\FF\00\00\00\00\FF\FF\00\FF\00\00\00" }, %struct.anon.12 { [32 x i8] c"D\FCs\1E\FD!\CC\08Q\BA~tQ\A4\CE\AC\99\ED(o\00\F7\BEy9_\C35\F5\BA|9", [32 x i8] c"D\FCW\B4\10!\BCb\DD:\D6.\DF\A4\DBx\92\03\E7\92\FB\A6\0B49\CF\C3\FB\F5\BA|9", [32 x i8] c"\FF\FF\FF\00\FF\FF\FF\00\00\FF\00\FF\00\FF\00\FF\FF\FF\00\00\00\FF\FF\FF\FF\00\FF\00\FF\FF\FF\FF" }], align 16
@test_simde_mm256_cmpge_epu8_mask.test_vec = internal constant [8 x %struct.anon.13] [%struct.anon.13 { [32 x i8] c"\90|\D1@,\18\CD\165\88\E0\F7\1F\22J\B9K0N\1B!\17\F0\E1I\C0*a\C4\B2NU", [32 x i8] c"\90|\95@8bq\165Qd\09s\22\C2\B9\DF\10N\1B'\C9\E1qI\C0*N\C4 \A3U", i32 -1076973617 }, %struct.anon.13 { [32 x i8] c"\8F\B4\A4)k\8A\AEt\D4<\EF\CD\8C)\A5\ED=}v\1A6o\80\FA;5{(\8C\E9T\1C", [32 x i8] c"\8F\B4\A4\08\83\8A|W\D4l$\BC\95)\A5\D2=\1F\EC|\8Fmv\FA;5\F2.\DAGJw", i32 1675881967 }, %struct.anon.13 { [32 x i8] c"\D5\02\CEX\FF\E8\0Bg&ze-\936z\CB\F3C\92\1D\82#\E9\B2\A7\E3\BDr(@}\FD", [32 x i8] c"BKVA3a\A9Y\DC\0E\86oD\00:7C\CCT\C5\EF=x\B2!5\09Iu@G\B8", i32 -272239939 }, %struct.anon.13 { [32 x i8] c"\0D\C4?\0Cf\9E\E6\17\840\0Dk\B3:\95\03\BB\84Bz\EC\18Z\89\F7\84\9B^\F4f\97\02", [32 x i8] c"*\C4\0E\0Cf\F4\A8\F9$\B5d\D8\EF:\DB\AA}\1D%i5\7F\F2,\03\8E\8A\F8\F4!\FA\1E", i32 899621214 }, %struct.anon.13 { [32 x i8] c"G\EAbC@\C7dL\90]FR1\EB\91\22\B5:H\FF\D6\9BL\FFx\91\1Dv\D0Xl\17", [32 x i8] c"B\EAb\83\95\BFd%\90]wN\01\09\91\22C\B9\B5\19T\01\19\CC\926\1Db\D0\AFl\D1", i32 1593441255 }, %struct.anon.13 { [32 x i8] c"\E9\18\C9|;\01,t\B1)\ADj\97\9Dg\BEC}9\EA\AC\80#\11\0A\BF\04B\D5\C9\F8\BE", [32 x i8] c"\E1\C1\C9\1D\C3g\91t\90>\DF(\DC\9D\E6\1FC \09o\AC,\80\11\EC\BF\ED\C1M\C9\7F/", i32 -222320243 }, %struct.anon.13 { [32 x i8] c"3\02\0FT\DF\ED\06\FB\AB\E0\F2\AE\A1\09u\81(\AA\02t`.\AC\9AF\A5!D\1E\D8\E9Q", [32 x i8] c"3\02\A5\BA\DF\ED\B5\FB\8C\A7?\AE\B0\B4\AF\D9_\B1M\BF`\FA\AC\9A\9Fzj\BDR\D8\E9-", i32 -489680973 }, %struct.anon.13 { [32 x i8] c"4\0F\BD\94\AB\81\80\EF\84\9A\E3;c\B0R\DE\CA'8\DFV\B8\93\FF\A2\04\FA\E1\84#l\B8", [32 x i8] c"2)L\94\AA\CD\CD.g\B0j\CB`\BC\A9\DE\CA\E1\099V\9C\93;\A13\1C%V#l\88", i32 -33712739 }], align 16
@test_simde_mm256_mask_cmpge_epu8_mask.test_vec = internal constant [8 x %struct.anon.14] [%struct.anon.14 { i32 1703903725, [32 x i8] c"O\A8tO\09oi)\BE\F1\92\CDg\B1\A7\0E%\17\8E=^\AB\07\FD\C4\D9\E2\F2R\D8\CA\A1", [32 x i8] c"\80?\F1O\09o\B3lKE:\CDg\E1\C1\0E\F8\17YV\FA`\07\BE96\B1\F2R{\CA\8F", i32 1703313704 }, %struct.anon.14 { i32 -848984085, [32 x i8] c"Md(^s\9Ffc\D6\8AL]\06\8B\DF\E3\1E\1F\FA\E7\10\9C\C0|k(\A3X\A93\BD\F6", [32 x i8] c"\97\E5(\0B\84\BBn[E\BA\B8KE\97/\E3\B6)K\C6\10\0BC0k\E6\88\DC\A9E\D2\B1", i32 -2057010808 }, %struct.anon.14 { i32 519542194, [32 x i8] c"\B1o\F3\962e\C1\8C\06O\9C\D0(s_\0C\8D\1E#\8Ee\16\A8\F1\DBs\A8\C6\FA\0D\93\AB", [32 x i8] c"}\87B\AF2\03;\F3\06\D7\9CzK#_\D8A\A9f\A7\BF\0E\A8\9A\81s`\C6\FA\F4'\CB", i32 518063408 }, %struct.anon.14 { i32 543536449, [32 x i8] c"JQ\DC\D7o\14\AE\B0\D2^39u\\_\9A\1E\1F@!?bqT\AB\8D\E3]\22\DA{m", [32 x i8] c",WD\9Bk\F2\AE\B0\D2\7Fv9u\D5`\9A\F4\A0@4\03bq\AE\AB\8D\0C<\22\DA{r", i32 543461697 }, %struct.anon.14 { i32 1478443571, [32 x i8] c"\0F\EDQ\E7\ECG\9B\C0\9EI\88\95\12\85\8Fh\097\D7\F9\EC\82/(\D6\D7C\17\8D\A87\9C", [32 x i8] c"\96\88\83\82\D0\1FBnh\CA\88{\12\92\E3Y\C97R\B5<\82\DD(Y\D7)\E6\C9`\82_", i32 1966130 }, %struct.anon.14 { i32 -1488113759, [32 x i8] c"eF\E5Rp\EE\8F,\D9%\B1\7F\0E\EC`x\05T<>p\E7@\ED\14\A1SG\E3r\9FH", [32 x i8] c"eF\E5(r*TLO\06\CB]\F2+\D6x\7F\12<\F0pu\DD\0D\161S\F9\A3\F3A\\", i32 100936481 }, %struct.anon.14 { i32 875947688, [32 x i8] c"\08\83\FD\E7\85\B0\B8\B29\81^\D4\80\FBi\F4u\0C~ \03\02n\ED\C8\19PiH\9D\11P", [32 x i8] c" \83\FD\E7\85\B0W\F7q\B6\CB\F1\805\E5&AcF f\B41.\C8\81\97\15\1E\9De?", i32 805675048 }, %struct.anon.14 { i32 409954945, [32 x i8] c"\22\A11\14\D8\1F\B7D\F2\80\F1)\8F\E2\C5R\04\90\E3\A8\F2\8Ak\FC\96l\BD>R\F3st", [32 x i8] c"\94\A41l\C4\1F\B0\B6\BF\80\F1)\83\A5\A1\875\840\A8\0E\9B#\A4\07l\BDZ\D4V\CEt", i32 5138944 }], align 16
@test_simde_x_mm512_cmpge_epu8.test_vec = internal constant [8 x %struct.anon.15] [%struct.anon.15 { [64 x i8] c"\EE\E4n\138\12\BB2X\EA`\22J\B6\FAD/wF\89\D7\A2\B7\8D\CDM>N\B7\ADf\A5\91\D4\B8\C9\E7s\FB?]\\a\A7\12[\ECA\D32\CA\AA\D5\818\A2\CEv\F0\85#W*\B4", [64 x i8] c"+\E2n\128yQ\B2\D5\B2`\E7J\B6\FA\E1xw\8BMs\C3\EFA9M>N7\AD\10b\D2\8Eu'\07\C6\D9?y3\C3\A7y\EBh\F2\DD\F3?P\B7\818\F0\CEvMF#]\A8\19", [64 x i8] c"\FF\FF\FF\FF\FF\00\FF\00\00\FF\FF\00\FF\FF\FF\00\00\FF\00\FF\FF\00\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\00\FF\FF\00\FF\00\FF\00\00\FF\00\00\00\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\00\00\FF" }, %struct.anon.15 { [64 x i8] c"\16\82ta\C0\F7\F9\8F^X\DB\11o\81\04~\D0\ED\B4Y\BD t\C1\08hV\14Micc\EB\D7\C5\AB\CF\BE:-\16\16?\85\97C\03g0\B7\C0\ED\D75\AE\DF\9D\04\F4\EAmWMX", [64 x i8] c".\12t\FD\D1>+\E7Tjm\EB\ADp\04\DD(\ED\B4\FFG \DF\E4|\D3\CE\14*\1Ccc\EB\D7V\FF\84\BE\E7\D8\EB\16\C3\98\97\15u\EC'?\C0o\B7\CBS3\9E\22\1D\C8mW X", [64 x i8] c"\00\FF\FF\00\00\FF\FF\00\FF\00\FF\00\00\FF\FF\00\FF\FF\FF\00\FF\FF\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\00\00\00\FF\00\00\FF\FF\00\00\FF\FF\FF\FF\FF\00\FF\FF\00\00\FF\FF\FF\FF\FF\FF" }, %struct.anon.15 { [64 x i8] c"\D4\ED\D4$U\BA\1A\83\1A|\8Aj6\93\E94\0DMAJ\CA\FBn}*\B5\C7\EF\8DN\BFb;\93\86\90M\A0\13h\1D\9E\D2S1\BB\88>\08\C9\89\D2\C5\F7P\EF\AC\17\DE:e\9E\9C\A0", [64 x i8] c"1\ED1$\C2\BA\E7\DF\1A\B93\14u\93R}\84MPI\D2\A09\7F*\B5\B9\1D\B5N\BDb;\93f93M\19\15\06\9E){1\BB\F9\8B\08I\D5*\C5\0E\A9\EF%\17\BD:e\9E\C2.", [64 x i8] c"\FF\FF\FF\FF\00\FF\00\00\FF\00\FF\FF\00\FF\FF\00\00\FF\00\FF\00\FF\FF\00\FF\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\FF\00\FF\FF\00\00\FF\FF\00\FF\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\00\FF" }, %struct.anon.15 { [64 x i8] c"h\02\A2\19\B5\BF\97C\D3\E8)\D7\98\BE\14|,s\A2\1C\95/\F06\FF_\D3\D4\97\D4\D5\00\D6w\19\8B7\B0\CE\0A\98\F8\E20\B6\F6\AC\E3jN\FF\FF~\F05}O\08Q\E7\DC&\E7\B2", [64 x i8] c"\9E\00=\D5\B1\BF\DFI\D3\C1z\BA\B8&\9D\22u\9D\A2\F3\8DV\F0\DC\FF_\C3\D4\E8\AA\EE\86\AB+[\\7;\A5;\FC\1F\E2\B4F\93\AC\BBjN\AE\BDN\1E5\AD\E0]\E8\C9\08\D6O\B3", [64 x i8] c"\00\FF\FF\00\FF\FF\00\00\FF\FF\00\FF\00\FF\00\FF\00\00\FF\00\FF\00\FF\00\FF\FF\FF\FF\00\FF\00\00\FF\FF\00\FF\FF\FF\FF\00\00\FF\FF\00\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\FF\FF\00\FF\00" }, %struct.anon.15 { [64 x i8] c"\F8m\22Z=0\91w\D5\E1\B0\E8\07\18_\AFm\8A\F9H\14\C5\07\E7\DC\B2\D9\8E\FC\EC\85\F4Z\A7N\97\D8\DF\0E\AD\C1\BF\95\C8\D7\F5wD\7Fq\8C\936\93{\13ET\A1AA&5\9B", [64 x i8] c"\CDm2Zc@S$\FF\E8\EC\D7\DDd\1B\\\D5\A8\F0\0B;k\1E\E7\BF\BF\C2\8E\FC\EC\9B\B3Z\CDX\97\D8\AB\04\0D\94\BF\E4qT\00\CED\A8\BE5\E3)Sd\E8ET\E9A\1F\84\AB\9B", [64 x i8] c"\FF\FF\00\FF\00\00\FF\FF\00\00\00\FF\00\00\FF\FF\00\00\FF\FF\00\FF\00\FF\FF\00\FF\FF\FF\FF\00\FF\FF\00\00\FF\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\00\FF\00\00\FF\00\FF\FF\FF\00\FF\FF\00\FF\FF\00\00\FF" }, %struct.anon.15 { [64 x i8] c"N\D8\19j\B8=\F5\E9\15Dmq\7F\EA\0D\DDE\14\B0\E2m\0B\E8\01\E8vV\F1'\BC*v\95D\E0M\81\D66\96\1A\A3\07\99\8E\15v\D3)&\B6\962\9E\97\1A\15\ED\0B<\AA5\B2?", [64 x i8] c"y\93\8C\FA\B8=\91\83\15\98m\F4\AD\EA\C7\D6E}l\E2\1C\0B\05\01\F1\10V\9BF \DAv\95D\BAM)K\9F\8F\E3\A3\83\91\8EJg\D3)&\B6\E4\D8\F9\15\1A\15\82eO\A25\0FU", [64 x i8] c"\00\FF\00\00\FF\FF\FF\FF\FF\00\FF\00\00\FF\00\FF\FF\00\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\00\FF\00\FF\FF\FF\FF\FF\FF\FF\00\FF\00\FF\00\FF\FF\00\FF\FF\FF\FF\FF\00\00\00\FF\FF\FF\FF\00\00\FF\FF\FF\00" }, %struct.anon.15 { [64 x i8] c"a\8D\A2Jj\EE\FF(\C2\CE\11\86\C0\EE\0E\C8\A32\DFD\BB\0FT\0F\A6um\B5\FE{\03_\08\A6\A9r\94\A8\9AVv\AC\DC7\9A\EA\FF=\1C\DF\81\D7\EE\D5\E7\94KTII\D0M\A8\D8", [64 x i8] c"aQK\87\F9\EE\DDo\C2\CE\A6,\A3\A6i\BF\A3\EB\DFD\C0}\07\0B\D2QT\A2\9E\FC\03\91M\C5\A9F\AB\F5\B6<\AE\\hQ\02\EA\FF\87\BD\A6\81\D7$\02\89\F6S\DD\98\F1\DA\12\82'", [64 x i8] c"\FF\FF\FF\00\00\FF\FF\00\FF\FF\00\FF\FF\FF\00\FF\FF\00\FF\FF\00\00\FF\FF\00\FF\FF\FF\FF\00\FF\00\00\00\FF\FF\00\00\00\FF\00\FF\FF\00\FF\FF\FF\00\00\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\FF\FF\FF" }, %struct.anon.15 { [64 x i8] c"\A5\AF\17\D4\D2J\83\1E\0B\B5cj\F1`\0E3\91\1A{\7F\84\1E\09\E5\0B\07O\C6\A2\9A\E7HI\FF\1C\1CI\9F:UT\9D\BFE\FD\CDx\8E\E7\F4\0El\12\17Q\1D\1E\A1\E3\C1;\CB\09\85", [64 x i8] c"\CA%\17\13\D2\DB\83\18x(]v\F5\D6\04\DD\91\12I\7F)\9A\F9\E5;\DD\09w\A2\9A\E7H7\FF\85\FBx\EE\13\F0\16p\BF\0BFk\E8\10}\F4\EC\A7\CC\E6\EF\07\C3\F8~\C1\0Az\09\85", [64 x i8] c"\00\FF\FF\FF\FF\00\FF\FF\00\FF\FF\00\00\00\FF\00\FF\FF\FF\FF\FF\00\00\FF\00\00\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\FF\00\FF\FF\FF\FF\FF\FF\00\FF\FF\FF\00\00\00\00\00\FF\00\00\FF\FF\FF\FF\FF\FF" }], align 16
@test_simde_mm512_cmpge_epu8_mask.test_vec = internal constant [8 x %struct.anon.16] [%struct.anon.16 { [64 x i8] c"\B1\C3\AF\E4C\BD\D7\A9<\CF`\16\DE\E7|\F0\E3:\EBEX\92\03SP)\A7\02\F6k\0B\A8/\BA\8Crwc\1B\B43{\CA\11bG\02F\81\ED\8B\D9\80\8E-\D0\B7\D4\D3\AE@\DEVo", [64 x i8] c"\B1\E2\E1\10F\BD\C4yw\8E\8A\DA\D5\8C Wz:0\FAX]\CA\F12\9D\9Fr{\F5\E1\14/\C2$\1D\BE\E8\965v{\0F\11\AD/\A3'\DA\D3\8B\14\80\EC\05c\89\A4\D5\05@\DE\19p", i64 8925763434611995369 }, %struct.anon.16 { [64 x i8] c"\BA\82*\B8\18\F7\FB*\AC2\E6\EB\83'\88\10\01\B4\C5y\D2+3\B7H\C8\195\A8p.b\F2X\1A\0AP\164\FCH\1A\E7\CBAo\DBB#\A0\BB\F5\CB\EE\AC\14\B6\C5I_5w\C1'", [64 x i8] c"\CF\DC1\B8\F2\F7\1B:\80\02\05\C2\83\E0\88\94\80\C0\C5K\AE5_e\FA\A8\C4/\1F\85V\EFa\88\0ES\EE*\8DnH\1A0\CBr52B\F5\BC\BB\F5\F1\9D\08\14F\CCIe5rT\B3", i64 8497429951897427816 }, %struct.anon.16 { [64 x i8] c"\99\C1\92c\AB\A3U\1B\0C\E0H\FE\F7%7\D8W\A7 \E6:\16\9F\0D\1F\D3\90\906\BF\CB\CF\80]2+\01\87G\0Dg\8F\0B^\B4B6\0C\E9W\F2$m\911\8Dd\C1\1D\9A\80\E8i\01", [64 x i8] c"E\C1,F#sS\8B\02_\E9\FE\A1 \C3\D8w\B5 \E6G\E0q\AB\A1\8EF\22v\BF#\BC\80O\02o\C3\87\FA\0D\B5\E3|V\03B\E1z\F5\90_$p\D0\E7\12_-4\D5\DDW\91(", i64 2561484581975669631 }, %struct.anon.16 { [64 x i8] c"\8D/X\ED\E3^\C1BY\0E\8D+N\B7d\E0\FEv\95Hq\CB\C3\8BXL\19\CD\0B\C3\BF\99\F2\18\86\D5vG\18\CFV\A5\FA\A4\\^\85Z\D4\1A\A2F\E5e\D1=\B1\EA\0A\BD\AE\CAV\A0", [64 x i8] c"\E2\DCvX#\8E\C1B3!\1E\8F\7F\A3\EA\E0\BDv\9A\A2\F2k\DF\A3X\E9`\03\B3\B6\A4\95\92\18\ED\B6\A8\14/\CF5M\FA\A4\F0T\85\AD\E1\A3OF\0E.vc\18\D7g\BD\8D\0Ba ", i64 -4936948307363387944 }, %struct.anon.16 { [64 x i8] c"E\8D\1C7\04\1A{\8Ee\03~\06|\B7\A16\0AD^\EFQ\0E=1\10\80\ED\C5\DA\AC}\1F9\99V>\B3\D2\CC\18\D5J\1FR\01\C0\88\0C\04\E6\FBV\F48\87\04\B9t\CA\93 G\B2Z", [64 x i8] c"\E0\09\1C\94\DBd\AC\B0e\03\02\06\8C\8A\BC\90\0AD^\EFQmj\A9\E24\ED\02{\EE\\[\F7\F4\EF>X\D2\83\07\D5J\B7\F3\10\C0\88\81\04\E6\E6V\F4P\C3\BA\84\FF\CA\FF\EE\19[\E5", i64 7286652640490893062 }, %struct.anon.16 { [64 x i8] c"9\AD\D4\9E%\BA\C4\C1\E2\BB\F4\D0\03\E9\ED\83\B9\13\8B)\FA\A18`\C3\D4^L\E3\00\88\1C\AE\\\BA\D3\16\7F\95\F9:\89\C9=r\B6\C0,\C9KU\C4\EC\8E$\AFb\82\FCE\83\84a1", [64 x i8] c"\E0\AD\04\9E\9B\99\C4\D5#\B8\12\D0o\D2\ED\83\1D\17\8B\0A\A5!\B9\07\A3\B5M&9\AEW\19\CA\\\10\D3\F5\7F\95\18\B8L\AE=ro_<\86\\F+\EC\FF3 \B5\80\FCE.\9Ea1", i64 -2405627061524893842 }, %struct.anon.16 { [64 x i8] c"\9C\C7\1DF\EFM\D5\CEsi\D2\F0<\83\1E\96\0C|u\A0)\8E\BFl\D1\98\E5D#\8D\01\BFT\1E\05Dk\DA\12\DEC\E4\CE\80h\ED\16ti\8B\15\92\19\D4\FE\EAl\E3/\8Fp0N\C5", [64 x i8] c"\9C\C7\09\B9\EF\1B\97q\FFf\F1gS\83\DC\BC\92|u\AC\C5L\9620\C5\C1\A0\F5\10\01Ccn\FC\91\89\94\03\89\FA\E4\CEMh\CC\09\8E\BDW:\83\19\D1\B5\D3\96vt\8Cp\D9N\EA", i64 6555691711986019063 }, %struct.anon.16 { [64 x i8] c"\CD\BD\C2\BB\FDC\1C\87k\EC)C\B9\A0\22\BFo\AC\CDK\B3{\AB\ADU\14r)rJ\C5?\08\87\FA\05\CB\16\8C6\02\B6z\BBV\9Cz\C6HH\11\FC\C3\BC\A9\18\D1\1BBCe\07\82m", [64 x i8] c"\8E|rY\92\FF\90\94\B5\0AO\0B\A6\A0\D1\EF\12\E3\EB\D5\B3\94\EEp\AF\14r\1475\82\C5\B1\F4\1FC\F3\AF\8C6\B9'\B4_\F1\85N\03H9\D8\FC\CD\C6x|\F6,B-a\13\82\13", i64 -2572704632454170081 }], align 16
@test_simde_mm512_mask_cmpge_epu8_mask.test_vec = internal constant [8 x %struct.anon.17] [%struct.anon.17 { i64 -8791884242113575726, [64 x i8] c"\EC\BE\A5\D7\B4\F1\17\01\16\9D+dl\9A\13\\W\F15\DAz\ECO@\AF\18VqG\C2D3\81\E9\0A5\DA!6\F0\BEaT*\FBg\86SX\BB-\D3\A7}\13V\95i\C7\DC,\0B\0F\AD", [64 x i8] c"\F4\19\E2\CE\B4\18\BF\F8y\13+t{\A8\C7\D3W\F15\0Br\BAb@#)\E3qG\C2\FC3\0B\E9\F8E\DA\B76o\CAaTE\07\AB\19k\A0\BFw\D3y\D9\13\9D\02\FC\EC7,\E9a\F9", i64 96918448385754130 }, %struct.anon.17 { i64 4268896767879416885, [64 x i8] c"\8F\E1\EBd\13\AE1\09\E2q\9D\9F\BF\D1\E2\09\DD\998!\BF\12\F6\91Wm\8B3`\87\B8\EFh\A3S{Q\85\853\F6\22\D2\B5\F4\B4\BF\D1N\F7\F2\0D\09\E8\9E`V)\93\B6\B0K\A6\19", [64 x i8] c"\EE\F9\EB@~\19st<F*0\BF\E9\01\09\E0\F3U!\DB\12J1\1Cm\8B3)\8E\E6\EF\87zW\06\94\CBz\D0\11\22\00\0B\8D\01Tm\F4\F7W\CF\9D\E8\01\B9V\E9\86\A7wl\BF\19", i64 1812182397517564964 }, %struct.anon.17 { i64 -9059481054664786509, [64 x i8] c"\0E\05\C4D\EA\8DuEf?\B7O[\BD1P\00\84\89?F\EF\8F|\FB\D3\A4\FA\FD\E25\0B\E7\FAO\D1\87\C5\17\ED\04\CE<`\8Bn\B0\8C\F29\CB9(Z\B5$.Y\1E+;S7\22", [64 x i8] c"\0E\05\F3\D5\EA\0AuE\D8\FF\B7d[\BD\F0_\99\84\98\C2\15M\E6C\A6\04\A4\E1W\A6\03\A5,\FAzx\87<\C8\DA;x>\A8\8Bn\B0q\F29\CB\FE\EE\19B$\1D\B1v+Wy\1A\83", i64 19774417572869299 }, %struct.anon.17 { i64 -6336877961569816318, [64 x i8] c"\E5\C1\C1E\C1\A2\02z\22\0A\04\83\F1~w.]U:\BA\9F\86)R\83|1}\BDx\FF\A29\C1\E7\FBc\E9u\85\F3y\08\E5\F8\80\13U\D5N\0Ft\D48\C7W\B4\F8\D4rp\D4\14\AA", [64 x i8] c"\E5\C1\C1E\E5\1A}z\93\85\04\8B\05\D1\E0\DA]\EF:\F3(\16J\DC\0E\1FN\7F\BDx)\A29\CE\E7D\E8\E9\1D{\82\DB\07\E5\F8\80bU\D7\B1\0Ft\C7\0A\DB\D6\B4*Ur\8D~\A4\EC", i64 2885858488836231170 }, %struct.anon.17 { i64 -1357533053657858339, [64 x i8] c"Q\7F\DCN\93\86\8A\0A\A3\CE\EE\10\F0j\F7D\99\E4H \C3I#\C6{\C59\8C\A8G4\FA\C6\11HY\97\D2c:\A1RK\91\BCB\D5U&\1Du\E9g\98\AF\E2]\E9n\060\A3\00\F7", [64 x i8] c"\B4HPK\1A\86\85\BB\06\CE\EE\C2\12!\178?\8C\22\A6\C3\D1\88\82\BA\C59\EB\99\88\E2\FA\D0\11\98\EA\97\1E\A6\EC\A1\F2\AE\01\14B9SQ[\F9vg\81\F8\E7w\80\D2\06\08\B4\00\F7", i64 -4023948537085086116 }, %struct.anon.17 { i64 -620409285115950891, [64 x i8] c"Ik'\BEp\E1\CC/\90\A1+,$\DA6(M\B6`\E4\83\B5\94`\F3t\B5\D4\86\DE\C2\CFJ\E9\8D\BA\CAY\E9Z\FB\14\87\1F\EE\BDG<s\A8 \F6]\B4VP(\0C$\AE\EA\E6}4", [64 x i8] c"I\0A'\BEd\D8\CC_\EC|+\DB9\DA\17\ADn7\A3\CB\83\FA\94\14\06t\C2\F0&@%\F6J\13\90\BA\CA\85\0D\D8\01\8C\B3;R\BDG\C0\01\8B\8B\EC\85\A6\00\8B\E5\C3$\AE\03\A1\01M", i64 8386636035849338965 }, %struct.anon.17 { i64 3453141464312438216, [64 x i8] c"\BE\DC\D9\DC\FC\B1\C1Ol\F3{\09\FDdM\\\179\B1\95\1C\AFp\F2\F8\C0\C3\02\9D&\FA[\02\D37\FF\85\F8N\F1\EB\C9\FA\E9.GEE\81\F6\DB\9D\A6K\8F\9E\0BS\A0\A8y\9A\04|", [64 x i8] c"\BE\DC{\F34\C9\E4O\93\DE\08\09&N\06\A7D\E1\B1\EA-\D4\888')\C3\A0\C3&\FA1 \97$Ta\F8t\F4\E7|\B5\0D.\BB\B4\0F\9D\F8\F9\CA\CC\82\02\9E\AB\E3\94\A8y\B0\A0\E9", i64 918739945080773760 }, %struct.anon.17 { i64 -7283487272550056898, [64 x i8] c"H\0E\8F\007\99%a\17\85\0E\0D\12\E9]``\D0!\14O\9B\C9\17yL\DBVQ\C7\86\99\D5\15\99\0C\AE\BFm\C5D{\D2Vd/\B6\C5\FF\D7\D9Ns\A3f\EC\EFABA\08\C8\DA\DE", [64 x i8] c"H\0E\EA\8B3XQw\D3#\CD8S\83]R`\D0\A1\14y\07\C9\17yL\DBP\C5\84.\A2\F8\19\99+q\7F\A2DDo\D2\F5d/H\C5\FF\D7\D9\C9\F0\A328\D2\DCBA\08\B7\DAY", i64 -7429863374361255886 }], align 16
@test_simde_x_mm_cmpge_epi16.test_vec = internal constant [8 x %struct.anon.18] [%struct.anon.18 { [8 x i16] [i16 -20967, i16 23470, i16 5545, i16 17346, i16 -27606, i16 32215, i16 13416, i16 23476], [8 x i16] [i16 -22511, i16 23470, i16 23741, i16 17346, i16 -27606, i16 22885, i16 13416, i16 25268], [8 x i16] [i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0] }, %struct.anon.18 { [8 x i16] [i16 4325, i16 -5585, i16 29400, i16 -27360, i16 -4070, i16 9592, i16 -25925, i16 11841], [8 x i16] [i16 31842, i16 15042, i16 29400, i16 2512, i16 18642, i16 9592, i16 28899, i16 14779], [8 x i16] [i16 0, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 0] }, %struct.anon.18 { [8 x i16] [i16 4513, i16 12907, i16 28210, i16 12216, i16 -13389, i16 18974, i16 -6614, i16 1603], [8 x i16] [i16 4513, i16 -23490, i16 -2328, i16 -25645, i16 -3391, i16 -4891, i16 -6614, i16 18418], [8 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0] }, %struct.anon.18 { [8 x i16] [i16 23086, i16 -27657, i16 -9323, i16 -19043, i16 -17225, i16 -3263, i16 -9749, i16 -27743], [8 x i16] [i16 29107, i16 18612, i16 -9323, i16 1022, i16 -17225, i16 -1802, i16 -26856, i16 -14452], [8 x i16] [i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0] }, %struct.anon.18 { [8 x i16] [i16 -21458, i16 12538, i16 -12037, i16 -12140, i16 -26680, i16 6294, i16 32019, i16 28], [8 x i16] [i16 -14863, i16 -4916, i16 24982, i16 -12140, i16 21496, i16 2934, i16 -27952, i16 -5877], [8 x i16] [i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1] }, %struct.anon.18 { [8 x i16] [i16 -25498, i16 8462, i16 -2425, i16 25478, i16 24761, i16 -15956, i16 -28155, i16 28602], [8 x i16] [i16 31559, i16 -12765, i16 -22159, i16 25478, i16 -8695, i16 3820, i16 -22672, i16 -19075], [8 x i16] [i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1] }, %struct.anon.18 { [8 x i16] [i16 -16168, i16 -27565, i16 4914, i16 8180, i16 24271, i16 14247, i16 12854, i16 -30235], [8 x i16] [i16 -18163, i16 16475, i16 20428, i16 -25761, i16 1709, i16 -7214, i16 -18376, i16 6252], [8 x i16] [i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0] }, %struct.anon.18 { [8 x i16] [i16 764, i16 -3325, i16 -13083, i16 -13309, i16 -20689, i16 -8032, i16 15297, i16 -29538], [8 x i16] [i16 -3410, i16 -27535, i16 30142, i16 -4512, i16 36, i16 -6450, i16 27708, i16 28018], [8 x i16] [i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0] }], align 16
@.str.85 = private unnamed_addr constant [38 x i8] c"simde_x_mm_loadu_epi16(test_vec[i].r)\00", align 1
@test_simde_mm_cmpge_epi16_mask.test_vec = internal constant [8 x %struct.anon.19] [%struct.anon.19 { [8 x i16] [i16 16006, i16 16101, i16 6957, i16 -10991, i16 -6387, i16 1082, i16 -12320, i16 3312], [8 x i16] [i16 -13630, i16 -4309, i16 15590, i16 -10991, i16 -221, i16 1271, i16 -6194, i16 28944], i8 11 }, %struct.anon.19 { [8 x i16] [i16 814, i16 -22504, i16 9826, i16 -13880, i16 6128, i16 15766, i16 20810, i16 18508], [8 x i16] [i16 21861, i16 -14563, i16 -6532, i16 27792, i16 6128, i16 18345, i16 -2696, i16 -20336], i8 -44 }, %struct.anon.19 { [8 x i16] [i16 -2071, i16 -22081, i16 -9052, i16 15675, i16 21848, i16 14109, i16 29357, i16 23162], [8 x i16] [i16 -2071, i16 -23057, i16 11159, i16 -4126, i16 -128, i16 11558, i16 -24207, i16 21895], i8 -5 }, %struct.anon.19 { [8 x i16] [i16 13137, i16 29812, i16 -24744, i16 -21012, i16 -4376, i16 15454, i16 21995, i16 -23664], [8 x i16] [i16 15456, i16 -18261, i16 -24744, i16 -15515, i16 -15483, i16 28927, i16 -28648, i16 21523], i8 86 }, %struct.anon.19 { [8 x i16] [i16 -14708, i16 -15822, i16 -3514, i16 25998, i16 -2755, i16 -19351, i16 -23516, i16 -28788], [8 x i16] [i16 26248, i16 -12716, i16 -7592, i16 -27341, i16 -25385, i16 -1207, i16 -23516, i16 -13686], i8 92 }, %struct.anon.19 { [8 x i16] [i16 12002, i16 7999, i16 3339, i16 25924, i16 -5514, i16 -24123, i16 -18749, i16 596], [8 x i16] [i16 505, i16 1181, i16 3339, i16 -31382, i16 -5514, i16 -28890, i16 31717, i16 596], i8 -65 }, %struct.anon.19 { [8 x i16] [i16 20714, i16 -9772, i16 -29326, i16 -21245, i16 -19788, i16 -22908, i16 -9949, i16 -27247], [8 x i16] [i16 -17040, i16 -9772, i16 -2230, i16 -369, i16 -19788, i16 -13148, i16 14060, i16 -18334], i8 19 }, %struct.anon.19 { [8 x i16] [i16 -8816, i16 9699, i16 -9611, i16 32259, i16 -11612, i16 -28745, i16 2953, i16 -278], [8 x i16] [i16 -22012, i16 9699, i16 1156, i16 10743, i16 -11612, i16 24760, i16 2953, i16 3422], i8 91 }], align 16
@test_simde_mm_mask_cmpge_epi16_mask.test_vec = internal constant [8 x %struct.anon.20] [%struct.anon.20 { i8 -119, [8 x i16] [i16 -30888, i16 20842, i16 -20459, i16 -8172, i16 -1134, i16 -1813, i16 25636, i16 11126], [8 x i16] [i16 -30888, i16 28836, i16 -18091, i16 -6320, i16 15540, i16 -10017, i16 25636, i16 14851], i8 1 }, %struct.anon.20 { i8 -60, [8 x i16] [i16 19144, i16 29912, i16 -30822, i16 21688, i16 -2387, i16 3554, i16 -13433, i16 -17391], [8 x i16] [i16 -22288, i16 29912, i16 -3281, i16 -8994, i16 -16151, i16 3554, i16 -1396, i16 -17391], i8 -128 }, %struct.anon.20 { i8 7, [8 x i16] [i16 3995, i16 -11287, i16 -10516, i16 2376, i16 -17655, i16 3276, i16 32757, i16 27062], [8 x i16] [i16 32139, i16 -11287, i16 -4269, i16 23936, i16 -17655, i16 3276, i16 8140, i16 -30455], i8 2 }, %struct.anon.20 { i8 63, [8 x i16] [i16 -25767, i16 28931, i16 -7820, i16 -13657, i16 5518, i16 -12645, i16 -1961, i16 16268], [8 x i16] [i16 -3047, i16 28931, i16 -26667, i16 25431, i16 -3155, i16 1073, i16 -16917, i16 16268], i8 22 }, %struct.anon.20 { i8 70, [8 x i16] [i16 26887, i16 -25036, i16 -6224, i16 -12190, i16 19588, i16 4719, i16 10164, i16 3220], [8 x i16] [i16 -28506, i16 -25036, i16 20087, i16 -985, i16 -26982, i16 19982, i16 -23619, i16 3220], i8 66 }, %struct.anon.20 { i8 66, [8 x i16] [i16 5395, i16 -8141, i16 23002, i16 -9791, i16 -5732, i16 14870, i16 -1698, i16 -16792], [8 x i16] [i16 -18775, i16 -8141, i16 -10737, i16 -21667, i16 29631, i16 14870, i16 19820, i16 -24613], i8 2 }, %struct.anon.20 { i8 -59, [8 x i16] [i16 4841, i16 -22208, i16 -30085, i16 -26965, i16 -12527, i16 6724, i16 -25561, i16 -27687], [8 x i16] [i16 4841, i16 -22208, i16 26109, i16 3673, i16 -25292, i16 23336, i16 -25561, i16 -20241], i8 65 }, %struct.anon.20 { i8 90, [8 x i16] [i16 -11782, i16 -19358, i16 -3043, i16 -26914, i16 12407, i16 11334, i16 15762, i16 -20908], [8 x i16] [i16 8000, i16 24048, i16 -3043, i16 -29964, i16 12407, i16 11334, i16 15762, i16 28479], i8 88 }], align 16
@test_simde_x_mm256_cmpge_epi16.test_vec = internal constant [8 x %struct.anon.21] [%struct.anon.21 { [16 x i16] [i16 25425, i16 -3630, i16 26785, i16 -26484, i16 -12490, i16 5360, i16 -14520, i16 -29904, i16 22110, i16 -30143, i16 -15019, i16 -14307, i16 19439, i16 -24885, i16 21283, i16 29762], [16 x i16] [i16 25425, i16 22373, i16 -3460, i16 -26484, i16 -7999, i16 2503, i16 -2137, i16 1428, i16 -10675, i16 -23665, i16 -15019, i16 -29845, i16 14071, i16 6697, i16 27529, i16 16270], [16 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1] }, %struct.anon.21 { [16 x i16] [i16 -24293, i16 -18850, i16 -14003, i16 17473, i16 27136, i16 -30370, i16 -4906, i16 22217, i16 24543, i16 -15022, i16 741, i16 19308, i16 7288, i16 -6568, i16 27233, i16 31906], [16 x i16] [i16 11, i16 -18850, i16 -14003, i16 -13668, i16 -1313, i16 -30370, i16 7398, i16 22217, i16 23932, i16 -15022, i16 -2209, i16 -10067, i16 1299, i16 -6568, i16 24688, i16 31729], [16 x i16] [i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.21 { [16 x i16] [i16 -23915, i16 -2750, i16 -4199, i16 -21043, i16 -29707, i16 25890, i16 5100, i16 19936, i16 -19400, i16 -11912, i16 27941, i16 -28599, i16 30389, i16 6881, i16 -1618, i16 17403], [16 x i16] [i16 -23915, i16 13624, i16 -4199, i16 8930, i16 1169, i16 32135, i16 5100, i16 19936, i16 16924, i16 -11912, i16 27055, i16 25809, i16 30389, i16 -29313, i16 31404, i16 17403], [16 x i16] [i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1] }, %struct.anon.21 { [16 x i16] [i16 -5591, i16 -10154, i16 10067, i16 13116, i16 -17446, i16 -31040, i16 -28362, i16 -4402, i16 19099, i16 -21804, i16 -8791, i16 2890, i16 26477, i16 25989, i16 20302, i16 30585], [16 x i16] [i16 -5591, i16 -29617, i16 -29705, i16 -11841, i16 -32697, i16 32088, i16 -28362, i16 -21397, i16 16496, i16 -21804, i16 -24547, i16 2890, i16 -22009, i16 21999, i16 20302, i16 13004], [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.21 { [16 x i16] [i16 4886, i16 13064, i16 11699, i16 -17475, i16 -21288, i16 -12016, i16 -8939, i16 19716, i16 -15368, i16 -24708, i16 31809, i16 16525, i16 -1835, i16 21328, i16 3279, i16 -6846], [16 x i16] [i16 19231, i16 -11495, i16 -10632, i16 -17475, i16 -24957, i16 -26590, i16 -8939, i16 19716, i16 25065, i16 10771, i16 31809, i16 -19862, i16 -1835, i16 26630, i16 18631, i16 -6578], [16 x i16] [i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0] }, %struct.anon.21 { [16 x i16] [i16 -5730, i16 31928, i16 8842, i16 9006, i16 13533, i16 -23412, i16 -9603, i16 4234, i16 17473, i16 32284, i16 31115, i16 28991, i16 -26633, i16 -25389, i16 -22315, i16 29481], [16 x i16] [i16 -5730, i16 7151, i16 7684, i16 9006, i16 -13486, i16 -23412, i16 4005, i16 -6432, i16 -941, i16 -8348, i16 -23691, i16 28991, i16 9019, i16 4105, i16 13004, i16 23939], [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 -1] }, %struct.anon.21 { [16 x i16] [i16 29327, i16 1472, i16 4118, i16 20850, i16 31540, i16 97, i16 -6995, i16 -16035, i16 -10665, i16 -5927, i16 -11634, i16 4556, i16 32592, i16 -8647, i16 18194, i16 -24129], [16 x i16] [i16 32698, i16 -12122, i16 6287, i16 -15583, i16 31540, i16 16835, i16 8550, i16 -16894, i16 -8969, i16 -31066, i16 -11634, i16 4556, i16 -11791, i16 989, i16 -25576, i16 -11611], [16 x i16] [i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0] }, %struct.anon.21 { [16 x i16] [i16 4119, i16 -14896, i16 26499, i16 29892, i16 -24264, i16 20856, i16 7485, i16 22563, i16 -14744, i16 -13309, i16 29065, i16 -12348, i16 -862, i16 -2693, i16 -6857, i16 20031], [16 x i16] [i16 4085, i16 30740, i16 26499, i16 29892, i16 25978, i16 -18688, i16 9090, i16 22563, i16 5097, i16 29623, i16 31620, i16 -12348, i16 -17033, i16 -20709, i16 23202, i16 20031], [16 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1] }], align 16
@.str.86 = private unnamed_addr constant [39 x i8] c"simde_mm256_loadu_epi16(test_vec[i].r)\00", align 1
@test_simde_mm256_cmpge_epi16_mask.test_vec = internal constant [8 x %struct.anon.22] [%struct.anon.22 { [16 x i16] [i16 -2755, i16 10522, i16 12193, i16 -24448, i16 9573, i16 28763, i16 -25115, i16 -26892, i16 -29557, i16 -20772, i16 -25345, i16 7245, i16 -19801, i16 13332, i16 -3995, i16 -23993], [16 x i16] [i16 25062, i16 -30772, i16 12193, i16 -2521, i16 -31887, i16 28763, i16 -25115, i16 -21268, i16 -13850, i16 -6566, i16 -22683, i16 3074, i16 5721, i16 -16832, i16 -30713, i16 -4767], i16 26742 }, %struct.anon.22 { [16 x i16] [i16 17910, i16 23549, i16 236, i16 17767, i16 -22506, i16 7428, i16 25904, i16 6410, i16 32658, i16 2963, i16 795, i16 15093, i16 14042, i16 2937, i16 25956, i16 23074], [16 x i16] [i16 8362, i16 -26698, i16 7456, i16 14044, i16 -22506, i16 -2732, i16 25904, i16 -10481, i16 -23843, i16 2963, i16 -10074, i16 -32718, i16 -21490, i16 29323, i16 25956, i16 23074], i16 -8197 }, %struct.anon.22 { [16 x i16] [i16 3853, i16 -19540, i16 -8217, i16 -2765, i16 -16757, i16 -25496, i16 13675, i16 14679, i16 -21832, i16 22566, i16 19161, i16 -5954, i16 6850, i16 -26307, i16 27268, i16 -28339], [16 x i16] [i16 -1671, i16 24644, i16 30680, i16 25429, i16 -17099, i16 -25496, i16 22514, i16 -21798, i16 1, i16 22566, i16 19161, i16 -5954, i16 219, i16 24742, i16 -3222, i16 -28339], i16 -8527 }, %struct.anon.22 { [16 x i16] [i16 -2466, i16 -22182, i16 7607, i16 -27721, i16 23837, i16 -30733, i16 -7087, i16 15978, i16 -21222, i16 -14333, i16 11333, i16 -25685, i16 12117, i16 -11036, i16 -10355, i16 -5291], [16 x i16] [i16 -20531, i16 -31595, i16 19660, i16 -5865, i16 2729, i16 -30733, i16 -7087, i16 2360, i16 15495, i16 -12847, i16 31848, i16 -17048, i16 19627, i16 14482, i16 -6365, i16 -4060], i16 243 }, %struct.anon.22 { [16 x i16] [i16 24861, i16 -30996, i16 21725, i16 -30397, i16 -10847, i16 -15167, i16 -6724, i16 21429, i16 10910, i16 -23626, i16 694, i16 19794, i16 -1089, i16 22483, i16 25564, i16 -1418], [16 x i16] [i16 25284, i16 -24192, i16 -15434, i16 22314, i16 -4967, i16 21788, i16 -11823, i16 28840, i16 24315, i16 -20205, i16 25953, i16 8447, i16 -11680, i16 15735, i16 -4811, i16 -1737], i16 -1980 }, %struct.anon.22 { [16 x i16] [i16 1648, i16 -11785, i16 -2452, i16 -13071, i16 27080, i16 -503, i16 16470, i16 -22793, i16 -27913, i16 29356, i16 2392, i16 2437, i16 -4477, i16 -12916, i16 32512, i16 28691], [16 x i16] [i16 2694, i16 -3519, i16 12800, i16 -14146, i16 -14181, i16 -503, i16 -16888, i16 152, i16 -27913, i16 -22414, i16 -2227, i16 -12110, i16 -4477, i16 -6498, i16 -20034, i16 28691], i16 -8328 }, %struct.anon.22 { [16 x i16] [i16 14131, i16 -32767, i16 -19666, i16 5201, i16 -4111, i16 -20486, i16 20640, i16 23539, i16 10727, i16 -20202, i16 -26338, i16 -9706, i16 28131, i16 -5217, i16 25692, i16 -28860], [16 x i16] [i16 17819, i16 -13809, i16 -19666, i16 -5666, i16 -4111, i16 -4199, i16 -29655, i16 4426, i16 24758, i16 -20202, i16 -9990, i16 -8786, i16 20037, i16 -24119, i16 3506, i16 20016], i16 29404 }, %struct.anon.22 { [16 x i16] [i16 -13174, i16 -31517, i16 -28252, i16 -5791, i16 10975, i16 -28022, i16 -17865, i16 -30240, i16 -1799, i16 -26157, i16 2030, i16 -16759, i16 26835, i16 11447, i16 -15983, i16 6971], [16 x i16] [i16 7821, i16 12703, i16 -28252, i16 -28902, i16 -23509, i16 25377, i16 -17865, i16 22508, i16 -16135, i16 -5903, i16 31431, i16 -16759, i16 24034, i16 29639, i16 542, i16 -21617], i16 -26276 }], align 16
@test_simde_mm256_mask_cmpge_epi16_mask.test_vec = internal constant [8 x %struct.anon.23] [%struct.anon.23 { i16 17783, [16 x i16] [i16 16490, i16 12645, i16 3002, i16 -25396, i16 -27800, i16 -31216, i16 -24683, i16 -18895, i16 3533, i16 -633, i16 -6141, i16 -25256, i16 5738, i16 -4715, i16 -6976, i16 11114], [16 x i16] [i16 16490, i16 -8356, i16 3002, i16 17020, i16 -27800, i16 -31216, i16 -1749, i16 -2041, i16 3533, i16 2549, i16 -6141, i16 -7770, i16 15203, i16 -4715, i16 -6976, i16 17743], i16 17719 }, %struct.anon.23 { i16 -12929, [16 x i16] [i16 -4361, i16 -24941, i16 -2353, i16 -25127, i16 -1766, i16 27094, i16 -8386, i16 25365, i16 -5694, i16 -6397, i16 12408, i16 22997, i16 -17017, i16 -10431, i16 -18261, i16 -24035], [16 x i16] [i16 -4361, i16 30016, i16 6822, i16 -16110, i16 -1766, i16 27094, i16 -8386, i16 -30027, i16 -18392, i16 -24207, i16 18408, i16 28922, i16 15108, i16 -20665, i16 25843, i16 -26287], i16 -32399 }, %struct.anon.23 { i16 2737, [16 x i16] [i16 26543, i16 -22252, i16 6359, i16 8164, i16 -10297, i16 6275, i16 -26512, i16 32426, i16 22099, i16 -12385, i16 -22506, i16 10101, i16 23418, i16 -10770, i16 28010, i16 6562], [16 x i16] [i16 -18732, i16 -22252, i16 6359, i16 8164, i16 20095, i16 -4178, i16 22758, i16 14702, i16 3503, i16 -12385, i16 32437, i16 10101, i16 23418, i16 -10770, i16 -22713, i16 7261], i16 2721 }, %struct.anon.23 { i16 -1920, [16 x i16] [i16 26172, i16 10632, i16 24982, i16 -25853, i16 19365, i16 578, i16 -24473, i16 12066, i16 -5683, i16 -28734, i16 -23760, i16 26367, i16 -14485, i16 27914, i16 -17601, i16 31607], [16 x i16] [i16 -223, i16 -18524, i16 -22432, i16 1362, i16 -27149, i16 23047, i16 10549, i16 649, i16 19219, i16 17297, i16 -23760, i16 26367, i16 -14485, i16 -26681, i16 15982, i16 -28910], i16 -18304 }, %struct.anon.23 { i16 4657, [16 x i16] [i16 28202, i16 -11384, i16 -7992, i16 -28794, i16 -2953, i16 -30003, i16 2691, i16 -13759, i16 -24408, i16 19300, i16 -27918, i16 -24843, i16 -13834, i16 24019, i16 21424, i16 -9643], [16 x i16] [i16 -8767, i16 -11384, i16 13246, i16 -28794, i16 -6361, i16 -21569, i16 241, i16 -26251, i16 -9824, i16 -27932, i16 -9620, i16 -24843, i16 931, i16 21695, i16 5206, i16 6190], i16 529 }, %struct.anon.23 { i16 17365, [16 x i16] [i16 -25128, i16 2540, i16 -28673, i16 -16628, i16 25571, i16 4819, i16 -14981, i16 7662, i16 -651, i16 23512, i16 31540, i16 5632, i16 -23281, i16 15470, i16 -24597, i16 -15282], [16 x i16] [i16 -25128, i16 15309, i16 -9782, i16 -20998, i16 -12740, i16 -18497, i16 -14981, i16 7662, i16 -21077, i16 -8348, i16 25640, i16 14326, i16 25609, i16 15470, i16 -15869, i16 -15282], i16 977 }, %struct.anon.23 { i16 -4737, [16 x i16] [i16 -661, i16 24999, i16 -20172, i16 -22587, i16 -14170, i16 24425, i16 26119, i16 -32027, i16 17452, i16 -24329, i16 15072, i16 13524, i16 -19184, i16 -4004, i16 12609, i16 -21453], [16 x i16] [i16 -9426, i16 25102, i16 -20172, i16 12809, i16 29596, i16 -23663, i16 30425, i16 1317, i16 17452, i16 -24329, i16 31318, i16 26575, i16 11055, i16 28759, i16 -30116, i16 -30180], i16 -16091 }, %struct.anon.23 { i16 18456, [16 x i16] [i16 -10624, i16 20327, i16 -27075, i16 -27526, i16 -10746, i16 8734, i16 -31648, i16 19533, i16 19317, i16 -26303, i16 -21787, i16 8781, i16 30955, i16 12933, i16 1373, i16 -8929], [16 x i16] [i16 -31013, i16 20327, i16 -23012, i16 -27526, i16 -13700, i16 -9147, i16 -28082, i16 -15320, i16 19317, i16 -15779, i16 -21997, i16 -28, i16 27170, i16 32561, i16 20847, i16 19036], i16 2072 }], align 16
@test_simde_x_mm512_cmpge_epi16.test_vec = internal constant [8 x %struct.anon.24] [%struct.anon.24 { [32 x i16] [i16 11148, i16 29170, i16 5418, i16 23771, i16 19092, i16 -3667, i16 -31596, i16 -2439, i16 -22408, i16 -28924, i16 -9134, i16 -9750, i16 -10237, i16 -4473, i16 -24670, i16 12086, i16 10699, i16 -2656, i16 31550, i16 -11695, i16 -315, i16 22979, i16 15747, i16 -1201, i16 21477, i16 14218, i16 29999, i16 13072, i16 -26547, i16 -4319, i16 22583, i16 542], [32 x i16] [i16 -16767, i16 -16392, i16 18745, i16 23771, i16 21832, i16 -13481, i16 -22894, i16 30662, i16 -22408, i16 -28924, i16 -9134, i16 4956, i16 -10237, i16 -29182, i16 8661, i16 22161, i16 10699, i16 6421, i16 31550, i16 6679, i16 28668, i16 -28955, i16 15747, i16 3845, i16 -19459, i16 14218, i16 -27534, i16 13072, i16 -10223, i16 -6312, i16 -5639, i16 -9923], [32 x i16] [i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1] }, %struct.anon.24 { [32 x i16] [i16 9202, i16 -5008, i16 -12499, i16 -23070, i16 26131, i16 1075, i16 -12049, i16 11249, i16 -23899, i16 3802, i16 21288, i16 -30839, i16 -5597, i16 -8736, i16 4489, i16 31496, i16 30773, i16 25191, i16 18759, i16 23303, i16 15279, i16 -24993, i16 20491, i16 -20022, i16 -23310, i16 7103, i16 18679, i16 7074, i16 -32205, i16 -17160, i16 148, i16 -14024], [32 x i16] [i16 -24711, i16 -16341, i16 13033, i16 -26597, i16 31341, i16 31031, i16 -12049, i16 -17110, i16 -5723, i16 -25128, i16 31538, i16 26040, i16 -20227, i16 -28383, i16 22960, i16 10586, i16 -31239, i16 -7446, i16 1464, i16 9594, i16 -20096, i16 19358, i16 20491, i16 -20022, i16 -7758, i16 -6923, i16 -21156, i16 22857, i16 27229, i16 3563, i16 17860, i16 -14024], [32 x i16] [i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1] }, %struct.anon.24 { [32 x i16] [i16 31034, i16 24591, i16 -18542, i16 23815, i16 -1794, i16 3803, i16 -20238, i16 -12849, i16 30075, i16 -3580, i16 -27293, i16 -17209, i16 -22256, i16 -11815, i16 -19518, i16 -931, i16 27692, i16 -16548, i16 25380, i16 8732, i16 -2212, i16 20016, i16 168, i16 8988, i16 8309, i16 -10219, i16 -9035, i16 -14699, i16 28293, i16 18327, i16 -2782, i16 20035], [32 x i16] [i16 -24479, i16 24591, i16 10755, i16 24488, i16 -10207, i16 -13906, i16 -20238, i16 19948, i16 746, i16 -3580, i16 -17442, i16 25702, i16 -727, i16 19371, i16 -4110, i16 -931, i16 27692, i16 -27943, i16 -32303, i16 -3086, i16 -24486, i16 12988, i16 -22166, i16 21632, i16 8309, i16 -30220, i16 23137, i16 -14699, i16 -26280, i16 19158, i16 28808, i16 6046], [32 x i16] [i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1] }, %struct.anon.24 { [32 x i16] [i16 17666, i16 -1058, i16 -17696, i16 7247, i16 -10926, i16 -27455, i16 -17445, i16 -30848, i16 -2390, i16 -3180, i16 11098, i16 22164, i16 32665, i16 30427, i16 30217, i16 2923, i16 18875, i16 -25593, i16 22019, i16 22200, i16 31019, i16 1770, i16 27189, i16 -8307, i16 8545, i16 -17454, i16 26188, i16 -6895, i16 -4891, i16 -4260, i16 -14493, i16 7930], [32 x i16] [i16 273, i16 5306, i16 -17696, i16 -32150, i16 21740, i16 8584, i16 5567, i16 8192, i16 -11722, i16 -31781, i16 -5064, i16 7528, i16 -15143, i16 15372, i16 1932, i16 -25254, i16 5384, i16 24753, i16 22019, i16 29666, i16 27504, i16 1770, i16 -27520, i16 -8307, i16 10854, i16 -25030, i16 -24041, i16 -6895, i16 -14233, i16 -3284, i16 -14493, i16 7930], [32 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1] }, %struct.anon.24 { [32 x i16] [i16 10437, i16 8943, i16 -31165, i16 -14096, i16 -4431, i16 28878, i16 -29893, i16 -19818, i16 23426, i16 7233, i16 -16421, i16 9244, i16 4202, i16 -25795, i16 11667, i16 22631, i16 22358, i16 -26245, i16 27613, i16 -29087, i16 12377, i16 -27394, i16 -27205, i16 15943, i16 -30480, i16 -13478, i16 30279, i16 -19984, i16 11654, i16 6732, i16 -19366, i16 -20366], [32 x i16] [i16 10437, i16 8943, i16 -31165, i16 -19850, i16 29915, i16 -27065, i16 -29175, i16 -1580, i16 11798, i16 24005, i16 -16421, i16 11023, i16 4202, i16 -25795, i16 -18417, i16 6893, i16 13989, i16 -26245, i16 30945, i16 -17231, i16 -1811, i16 -27394, i16 10118, i16 -25360, i16 -30480, i16 -13478, i16 30279, i16 -19984, i16 27748, i16 29576, i16 29988, i16 -13938], [32 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0] }, %struct.anon.24 { [32 x i16] [i16 23947, i16 -27521, i16 -13866, i16 18314, i16 30310, i16 10814, i16 -11949, i16 -7099, i16 23134, i16 -3104, i16 10134, i16 16108, i16 22775, i16 15626, i16 -24493, i16 -8658, i16 -20995, i16 -11150, i16 -906, i16 -9189, i16 23154, i16 -15097, i16 19499, i16 -30294, i16 -30042, i16 15740, i16 26801, i16 -22149, i16 -31039, i16 5350, i16 5158, i16 9202], [32 x i16] [i16 25794, i16 14583, i16 -13866, i16 -11755, i16 7277, i16 10814, i16 17000, i16 3618, i16 -24884, i16 32075, i16 10134, i16 -14298, i16 22775, i16 29660, i16 -12767, i16 -7274, i16 -29134, i16 -28133, i16 12449, i16 3684, i16 23154, i16 -19290, i16 -14274, i16 2755, i16 3687, i16 28296, i16 -20779, i16 8758, i16 4795, i16 -9067, i16 11488, i16 4799], [32 x i16] [i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1] }, %struct.anon.24 { [32 x i16] [i16 -29771, i16 -16212, i16 5523, i16 -26601, i16 8996, i16 -804, i16 10994, i16 -12229, i16 -6144, i16 -31613, i16 22731, i16 -16188, i16 -8253, i16 23189, i16 31930, i16 28587, i16 22279, i16 -25809, i16 18028, i16 -28365, i16 3946, i16 23693, i16 -14023, i16 14636, i16 -20559, i16 32190, i16 -32248, i16 -13507, i16 -11423, i16 6950, i16 -11953, i16 22410], [32 x i16] [i16 -18135, i16 -27150, i16 9472, i16 27174, i16 -19403, i16 28358, i16 -3203, i16 -12229, i16 -6144, i16 -21845, i16 22731, i16 -16188, i16 -25412, i16 2917, i16 -4243, i16 28587, i16 21673, i16 -22228, i16 18028, i16 -20717, i16 3946, i16 -31971, i16 -14023, i16 14636, i16 23851, i16 4889, i16 -28858, i16 -13507, i16 -15829, i16 6950, i16 28849, i16 22410], [32 x i16] [i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1] }, %struct.anon.24 { [32 x i16] [i16 15908, i16 -11757, i16 341, i16 17798, i16 -16884, i16 -8959, i16 11688, i16 -3878, i16 -5518, i16 18046, i16 3671, i16 -31162, i16 -8275, i16 -17306, i16 -24152, i16 -13168, i16 -23584, i16 13726, i16 9380, i16 -20358, i16 31715, i16 -29810, i16 26792, i16 6779, i16 -1710, i16 -22175, i16 -22776, i16 -19153, i16 -27257, i16 12145, i16 311, i16 6139], [32 x i16] [i16 -26204, i16 18508, i16 -14659, i16 -24328, i16 -16884, i16 -5588, i16 11688, i16 16388, i16 26017, i16 -22039, i16 3671, i16 -27554, i16 -8275, i16 -6717, i16 -16688, i16 29948, i16 18519, i16 5308, i16 9380, i16 20405, i16 31715, i16 -29810, i16 26792, i16 10602, i16 -1710, i16 -20270, i16 12396, i16 6724, i16 2047, i16 -12289, i16 -1083, i16 7235], [32 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 0] }], align 16
@.str.87 = private unnamed_addr constant [39 x i8] c"simde_mm512_loadu_epi16(test_vec[i].r)\00", align 1
@test_simde_mm512_cmpge_epi16_mask.test_vec = internal constant [8 x %struct.anon.25] [%struct.anon.25 { [32 x i16] [i16 -10411, i16 2760, i16 -11574, i16 5542, i16 7856, i16 -8989, i16 -10862, i16 1833, i16 26137, i16 -28206, i16 -27817, i16 -22631, i16 15525, i16 -26625, i16 12948, i16 -5833, i16 10, i16 -11021, i16 -26158, i16 -32022, i16 -12873, i16 18783, i16 -30558, i16 -17584, i16 9198, i16 17996, i16 -6474, i16 23789, i16 -5086, i16 -18701, i16 10783, i16 10655], [32 x i16] [i16 -28118, i16 -515, i16 -6357, i16 5542, i16 -8524, i16 22060, i16 32102, i16 21778, i16 24224, i16 22171, i16 -30652, i16 -22631, i16 -23180, i16 -27876, i16 -17456, i16 -1348, i16 -17843, i16 31223, i16 30625, i16 22108, i16 -12873, i16 -17236, i16 -30558, i16 -17584, i16 9198, i16 17996, i16 -6474, i16 23789, i16 -5086, i16 9276, i16 -1888, i16 -4834], i32 -537821925 }, %struct.anon.25 { [32 x i16] [i16 13389, i16 -9613, i16 7670, i16 16828, i16 23411, i16 -30574, i16 -30710, i16 26298, i16 20090, i16 6901, i16 11689, i16 -5873, i16 10145, i16 3785, i16 -26786, i16 -21715, i16 -24373, i16 -15995, i16 17085, i16 12291, i16 -27235, i16 -22599, i16 29469, i16 -26867, i16 961, i16 27569, i16 -16336, i16 -11692, i16 7912, i16 18144, i16 3509, i16 -32526], [32 x i16] [i16 30637, i16 27201, i16 17593, i16 22170, i16 21465, i16 -2306, i16 3015, i16 -30579, i16 20090, i16 16371, i16 18687, i16 -6383, i16 -3738, i16 6958, i16 -26786, i16 -21605, i16 -9065, i16 20757, i16 17085, i16 -1369, i16 -23293, i16 -22599, i16 32433, i16 -16558, i16 18109, i16 27569, i16 3982, i16 -2908, i16 -11776, i16 -497, i16 -21774, i16 -30039], i32 1915509136 }, %struct.anon.25 { [32 x i16] [i16 23053, i16 31548, i16 -8483, i16 1516, i16 10097, i16 -31778, i16 30389, i16 -30638, i16 -8691, i16 -19222, i16 16142, i16 4443, i16 164, i16 -19961, i16 -31153, i16 23879, i16 -31519, i16 -16680, i16 -15006, i16 -11069, i16 -24084, i16 -24233, i16 -22249, i16 9514, i16 5255, i16 -27175, i16 13395, i16 -2137, i16 -20940, i16 -31574, i16 -3788, i16 5601], [32 x i16] [i16 -18059, i16 31548, i16 -27010, i16 1516, i16 823, i16 20236, i16 13996, i16 -30638, i16 19786, i16 -24888, i16 28545, i16 -19051, i16 16157, i16 21049, i16 6705, i16 -22937, i16 15316, i16 21118, i16 -15006, i16 2493, i16 -24084, i16 -9896, i16 -13312, i16 19212, i16 5255, i16 -25879, i16 32324, i16 -2137, i16 -30274, i16 -4172, i16 7075, i16 30613], i32 420776671 }, %struct.anon.25 { [32 x i16] [i16 -15013, i16 -26341, i16 19533, i16 -25083, i16 19413, i16 10992, i16 -29283, i16 -15208, i16 -24557, i16 6191, i16 -520, i16 -10022, i16 -29570, i16 7004, i16 22739, i16 11791, i16 10781, i16 27335, i16 -12937, i16 19465, i16 -1768, i16 -19081, i16 3975, i16 -25991, i16 -22352, i16 -22350, i16 -29275, i16 9344, i16 -8935, i16 -5057, i16 20021, i16 21018], [32 x i16] [i16 -7815, i16 -3907, i16 -14674, i16 -25083, i16 -19521, i16 18043, i16 -2877, i16 29665, i16 -24557, i16 16923, i16 -25824, i16 14694, i16 -22920, i16 -21211, i16 16372, i16 27904, i16 -17119, i16 -12451, i16 -25981, i16 17046, i16 4429, i16 -19081, i16 3975, i16 -23677, i16 -24835, i16 -22350, i16 19514, i16 -19881, i16 -8935, i16 -6560, i16 24764, i16 -8876], i32 -1150327524 }, %struct.anon.25 { [32 x i16] [i16 3085, i16 22581, i16 5967, i16 -23311, i16 -25725, i16 22782, i16 -824, i16 -27861, i16 7391, i16 3737, i16 20837, i16 10799, i16 13929, i16 -7764, i16 3218, i16 -24714, i16 -21736, i16 26871, i16 -5694, i16 17676, i16 2692, i16 19614, i16 -14074, i16 -6689, i16 30950, i16 19443, i16 8905, i16 12917, i16 8793, i16 -5357, i16 -30418, i16 18058], [32 x i16] [i16 -32460, i16 -2130, i16 -17814, i16 -4548, i16 -9531, i16 -13510, i16 -824, i16 -30031, i16 7391, i16 23765, i16 19143, i16 10799, i16 -23956, i16 -26101, i16 -27349, i16 24801, i16 -28906, i16 -32425, i16 -27830, i16 3951, i16 -21906, i16 19614, i16 -29756, i16 22172, i16 28976, i16 19443, i16 16827, i16 10263, i16 8931, i16 3778, i16 -23625, i16 -12946], i32 -1954578969 }, %struct.anon.25 { [32 x i16] [i16 9627, i16 -2849, i16 27619, i16 19387, i16 -27438, i16 -15241, i16 -1783, i16 -4122, i16 -210, i16 -23407, i16 23087, i16 -32259, i16 26086, i16 5770, i16 24635, i16 -10632, i16 22661, i16 26827, i16 -31037, i16 -27213, i16 10779, i16 9305, i16 16164, i16 21012, i16 -23234, i16 28151, i16 -2817, i16 -6418, i16 30809, i16 -27396, i16 29913, i16 24171], [32 x i16] [i16 9627, i16 -28473, i16 31420, i16 -10459, i16 32677, i16 -13828, i16 4286, i16 -741, i16 4789, i16 -19350, i16 22791, i16 24730, i16 -26927, i16 -21771, i16 24635, i16 -10487, i16 -12138, i16 26827, i16 -29366, i16 -4310, i16 9740, i16 9305, i16 -11210, i16 -5177, i16 13030, i16 -4705, i16 14987, i16 23630, i16 17360, i16 -9465, i16 4259, i16 14771], i32 -755796981 }, %struct.anon.25 { [32 x i16] [i16 29519, i16 -2176, i16 -26072, i16 1194, i16 10349, i16 4885, i16 4718, i16 -6752, i16 7086, i16 -31512, i16 18403, i16 -4310, i16 -21331, i16 9117, i16 -31263, i16 12665, i16 -1544, i16 8232, i16 -11628, i16 292, i16 15099, i16 26900, i16 -19124, i16 -1458, i16 14032, i16 -19586, i16 -22403, i16 10914, i16 16469, i16 13901, i16 -14651, i16 -17049], [32 x i16] [i16 -28736, i16 -2176, i16 610, i16 23893, i16 10349, i16 -30522, i16 5150, i16 -4478, i16 75, i16 -14174, i16 17576, i16 -4310, i16 16516, i16 9117, i16 -25849, i16 -14586, i16 -7125, i16 -29413, i16 -11628, i16 8938, i16 -20263, i16 -1878, i16 11460, i16 4070, i16 14032, i16 -11048, i16 -22403, i16 20946, i16 16469, i16 4763, i16 -24159, i16 -13095], i32 1966583091 }, %struct.anon.25 { [32 x i16] [i16 854, i16 -17423, i16 32327, i16 15097, i16 12214, i16 6642, i16 -17845, i16 -3927, i16 3417, i16 -15262, i16 9795, i16 32570, i16 -15740, i16 -31652, i16 1572, i16 31498, i16 -1270, i16 20790, i16 12153, i16 12171, i16 32350, i16 -22199, i16 -3528, i16 -28262, i16 -769, i16 16981, i16 -28894, i16 -22591, i16 7506, i16 30251, i16 13604, i16 12017], [32 x i16] [i16 854, i16 -17423, i16 2646, i16 15097, i16 8840, i16 -16290, i16 -17845, i16 4946, i16 -22540, i16 -15262, i16 5687, i16 32570, i16 -5836, i16 -31652, i16 -3809, i16 20358, i16 1304, i16 28665, i16 -11505, i16 -26589, i16 -32267, i16 -22199, i16 -21895, i16 28189, i16 29522, i16 16981, i16 17289, i16 -22591, i16 4396, i16 19221, i16 -25854, i16 12017], i32 -92475521 }], align 16
@test_simde_mm512_mask_cmpge_epi16_mask.test_vec = internal constant [8 x %struct.anon.26] [%struct.anon.26 { i32 -400001169, [32 x i16] [i16 -7594, i16 -9043, i16 -30349, i16 -1394, i16 29044, i16 -7776, i16 -29802, i16 21919, i16 -10551, i16 9064, i16 8096, i16 -852, i16 32334, i16 -22370, i16 -23174, i16 -12232, i16 -6520, i16 -1107, i16 15215, i16 -7178, i16 -26964, i16 17093, i16 25633, i16 -5224, i16 58, i16 -9458, i16 -17889, i16 28119, i16 30008, i16 -19946, i16 19995, i16 -23678], [32 x i16] [i16 -7594, i16 -23394, i16 -27541, i16 -1394, i16 19499, i16 19546, i16 -3408, i16 21919, i16 17906, i16 4550, i16 8096, i16 14206, i16 -27629, i16 12009, i16 27875, i16 6097, i16 -6520, i16 -1107, i16 17156, i16 12062, i16 30863, i16 16507, i16 25633, i16 23595, i16 -3592, i16 -9458, i16 -5234, i16 -24273, i16 30008, i16 25551, i16 19995, i16 -23678], i32 -937421301 }, %struct.anon.26 { i32 734765565, [32 x i16] [i16 27580, i16 31216, i16 14634, i16 -25696, i16 9132, i16 4357, i16 26387, i16 -4604, i16 -26375, i16 -23734, i16 2300, i16 467, i16 9025, i16 -20459, i16 16026, i16 22168, i16 -30295, i16 -11313, i16 28610, i16 28271, i16 29842, i16 -23169, i16 -31780, i16 -10861, i16 -8932, i16 6264, i16 19430, i16 10009, i16 12142, i16 2264, i16 28781, i16 5726], [32 x i16] [i16 11769, i16 31216, i16 22940, i16 -25696, i16 -22067, i16 -22061, i16 26413, i16 -4604, i16 -2236, i16 10849, i16 2300, i16 -20142, i16 10922, i16 6073, i16 16026, i16 22168, i16 -30295, i16 -7601, i16 28610, i16 15888, i16 -7133, i16 -23169, i16 26187, i16 -10861, i16 -1443, i16 -24646, i16 3189, i16 10009, i16 2614, i16 -12234, i16 28781, i16 26468], i32 713654457 }, %struct.anon.26 { i32 -1639145135, [32 x i16] [i16 -2565, i16 14715, i16 7174, i16 32450, i16 -9387, i16 -30382, i16 -14675, i16 -29645, i16 -885, i16 22944, i16 -31237, i16 24394, i16 -23857, i16 -13250, i16 2371, i16 16375, i16 29694, i16 1144, i16 15247, i16 -7038, i16 -10986, i16 -15506, i16 -24165, i16 9807, i16 -3939, i16 -26496, i16 -13707, i16 17655, i16 13676, i16 -20719, i16 2110, i16 15598], [32 x i16] [i16 26491, i16 2625, i16 -15454, i16 -18193, i16 23960, i16 13435, i16 -14675, i16 -25766, i16 -885, i16 22944, i16 -31237, i16 4213, i16 -31136, i16 -24640, i16 -20850, i16 2779, i16 7189, i16 -18668, i16 992, i16 30831, i16 -5280, i16 24236, i16 1974, i16 9807, i16 -3939, i16 -31071, i16 5720, i16 -18282, i16 22172, i16 -20719, i16 13061, i16 6709], i32 -1979408064 }, %struct.anon.26 { i32 -506693933, [32 x i16] [i16 -2845, i16 3916, i16 22601, i16 -23310, i16 17757, i16 -28447, i16 -23494, i16 17946, i16 24062, i16 -20754, i16 -15880, i16 -15005, i16 13001, i16 6882, i16 12244, i16 -18503, i16 1315, i16 27846, i16 -18339, i16 -17903, i16 -3330, i16 14410, i16 26007, i16 -27266, i16 27842, i16 -17853, i16 -22995, i16 -2432, i16 25304, i16 -21487, i16 -13679, i16 -19101], [32 x i16] [i16 -2845, i16 11297, i16 13026, i16 -23310, i16 12581, i16 -17383, i16 -26730, i16 22609, i16 -27644, i16 12563, i16 -27846, i16 4648, i16 13001, i16 -30785, i16 8707, i16 -11716, i16 23884, i16 12286, i16 -7024, i16 -17903, i16 10261, i16 14410, i16 -15680, i16 -15356, i16 5974, i16 -28427, i16 7594, i16 -24670, i16 25304, i16 22822, i16 25220, i16 -19101], i32 -2125958063 }, %struct.anon.26 { i32 1936510759, [32 x i16] [i16 -11899, i16 -17403, i16 -11193, i16 32692, i16 28583, i16 -28403, i16 11040, i16 -4315, i16 22764, i16 3604, i16 -27982, i16 28596, i16 10812, i16 4331, i16 -18272, i16 9713, i16 -2423, i16 -11806, i16 -26934, i16 29008, i16 24069, i16 9730, i16 10121, i16 29973, i16 10624, i16 12931, i16 14267, i16 -1887, i16 -29342, i16 520, i16 -1723, i16 -12760], [32 x i16] [i16 2800, i16 -17761, i16 -3936, i16 -23252, i16 11854, i16 -10293, i16 -8106, i16 -10675, i16 22764, i16 -15096, i16 -27982, i16 28596, i16 -15049, i16 4331, i16 -27458, i16 9713, i16 -2423, i16 -11806, i16 -27174, i16 10468, i16 24069, i16 9730, i16 19600, i16 29973, i16 10624, i16 12931, i16 7074, i16 -1887, i16 -1056, i16 -24747, i16 -24688, i16 11853], i32 1663880962 }, %struct.anon.26 { i32 -1888034476, [32 x i16] [i16 -2016, i16 8578, i16 -21885, i16 23217, i16 -9278, i16 -11697, i16 26724, i16 2180, i16 3857, i16 -19060, i16 -20241, i16 28649, i16 19233, i16 18552, i16 -7141, i16 15291, i16 15836, i16 24412, i16 3816, i16 -21830, i16 2537, i16 19837, i16 369, i16 -32171, i16 -7663, i16 55, i16 8338, i16 -19601, i16 -6292, i16 -30725, i16 -18484, i16 -22334], [32 x i16] [i16 8180, i16 8578, i16 -15827, i16 5767, i16 1227, i16 15460, i16 -18171, i16 5823, i16 3857, i16 11543, i16 -31209, i16 28649, i16 19233, i16 14858, i16 -7141, i16 -30750, i16 15836, i16 6244, i16 -5204, i16 -21830, i16 2537, i16 -2892, i16 29516, i16 -6133, i16 8809, i16 -32747, i16 -2392, i16 5635, i16 3538, i16 25936, i16 13274, i16 -22334], i32 -2043223744 }, %struct.anon.26 { i32 271519147, [32 x i16] [i16 -18450, i16 -28998, i16 -9811, i16 5498, i16 20227, i16 20455, i16 14905, i16 6467, i16 20112, i16 -3125, i16 -7510, i16 14385, i16 13541, i16 14820, i16 23061, i16 969, i16 -31982, i16 -16495, i16 2908, i16 24532, i16 -17318, i16 -27730, i16 -3594, i16 -31060, i16 30528, i16 -5511, i16 -21927, i16 16162, i16 2014, i16 -3208, i16 16737, i16 29686], [32 x i16] [i16 -18450, i16 8242, i16 1939, i16 -4737, i16 11715, i16 -18047, i16 11551, i16 24383, i16 -18267, i16 -439, i16 27491, i16 14385, i16 -18830, i16 -11211, i16 11255, i16 -17337, i16 31411, i16 18140, i16 23681, i16 17459, i16 -17318, i16 -22275, i16 15586, i16 -30969, i16 20724, i16 -5511, i16 -15428, i16 11929, i16 -12679, i16 28674, i16 19193, i16 -21460], i32 268962089 }, %struct.anon.26 { i32 -1293305677, [32 x i16] [i16 -18381, i16 3838, i16 -27330, i16 202, i16 3636, i16 9142, i16 -15145, i16 25550, i16 -22677, i16 -8088, i16 -8829, i16 -22193, i16 27263, i16 10899, i16 -15753, i16 -21702, i16 14714, i16 -18247, i16 -31794, i16 696, i16 28561, i16 26661, i16 -3277, i16 -24629, i16 13211, i16 7807, i16 -12783, i16 -28472, i16 23352, i16 -20293, i16 -2786, i16 -26533], [32 x i16] [i16 -18381, i16 -687, i16 2455, i16 10751, i16 9592, i16 -21359, i16 23832, i16 -19637, i16 -13680, i16 -24110, i16 -25959, i16 -22193, i16 -4619, i16 4993, i16 -15753, i16 4524, i16 14714, i16 -30706, i16 3334, i16 32689, i16 16946, i16 26661, i16 30367, i16 12542, i16 13211, i16 -9775, i16 874, i16 24747, i16 11504, i16 -11405, i16 7945, i16 -1564], i32 304167075 }], align 16
@test_simde_x_mm_cmpge_epu16.test_vec = internal constant [8 x %struct.anon.27] [%struct.anon.27 { [8 x i16] [i16 -29717, i16 24804, i16 24920, i16 -25740, i16 -17955, i16 10526, i16 31695, i16 -5921], [8 x i16] [i16 -9629, i16 -17616, i16 24920, i16 6486, i16 30045, i16 11330, i16 31695, i16 29717], [8 x i16] [i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1] }, %struct.anon.27 { [8 x i16] [i16 1150, i16 21987, i16 -23515, i16 29628, i16 26452, i16 -8794, i16 -22264, i16 -31542], [8 x i16] [i16 1150, i16 18836, i16 20517, i16 31165, i16 25528, i16 -16297, i16 8461, i16 -5820], [8 x i16] [i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0] }, %struct.anon.27 { [8 x i16] [i16 29170, i16 32457, i16 -20232, i16 -14039, i16 9952, i16 12123, i16 11457, i16 -8797], [8 x i16] [i16 29170, i16 -8251, i16 -4517, i16 -14039, i16 9952, i16 -10901, i16 3631, i16 -16206], [8 x i16] [i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1] }, %struct.anon.27 { [8 x i16] [i16 -32423, i16 514, i16 572, i16 -9835, i16 17827, i16 -17461, i16 982, i16 5050], [8 x i16] [i16 -14752, i16 -25430, i16 16584, i16 27766, i16 16773, i16 -17461, i16 -7868, i16 18030], [8 x i16] [i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0] }, %struct.anon.27 { [8 x i16] [i16 -2254, i16 -13768, i16 31514, i16 799, i16 32034, i16 -22726, i16 6560, i16 -30323], [8 x i16] [i16 -26248, i16 -27783, i16 -26604, i16 13974, i16 -12267, i16 -22726, i16 27369, i16 -29890], [8 x i16] [i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 0] }, %struct.anon.27 { [8 x i16] [i16 -9002, i16 -22603, i16 30350, i16 -23276, i16 17652, i16 -3272, i16 31700, i16 -406], [8 x i16] [i16 -22879, i16 12267, i16 28, i16 4308, i16 3396, i16 6147, i16 28040, i16 -16874], [8 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.27 { [8 x i16] [i16 25520, i16 -20022, i16 18590, i16 -5198, i16 28581, i16 -14425, i16 -22756, i16 28554], [8 x i16] [i16 27377, i16 -28490, i16 26802, i16 -5198, i16 28581, i16 -3297, i16 -22756, i16 23650], [8 x i16] [i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1] }, %struct.anon.27 { [8 x i16] [i16 -23454, i16 -68, i16 16172, i16 -22148, i16 -14538, i16 -17542, i16 20402, i16 2098], [8 x i16] [i16 10302, i16 27356, i16 16172, i16 -25325, i16 -14538, i16 -17542, i16 20402, i16 -18214], [8 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0] }], align 16
@test_simde_mm_cmpge_epu16_mask.test_vec = internal constant [8 x %struct.anon.28] [%struct.anon.28 { [8 x i16] [i16 -20033, i16 7214, i16 4307, i16 20075, i16 -10814, i16 3396, i16 6059, i16 -21865], [8 x i16] [i16 13944, i16 7214, i16 2631, i16 2457, i16 -8737, i16 -29930, i16 -20748, i16 -17867], i8 15 }, %struct.anon.28 { [8 x i16] [i16 -13755, i16 -24189, i16 31305, i16 -18322, i16 -27122, i16 26858, i16 -24634, i16 11578], [8 x i16] [i16 4403, i16 31808, i16 -20853, i16 -26316, i16 7749, i16 2817, i16 15293, i16 -20168], i8 123 }, %struct.anon.28 { [8 x i16] [i16 17266, i16 5646, i16 19928, i16 -14568, i16 -3148, i16 -31985, i16 -2212, i16 -10619], [8 x i16] [i16 29594, i16 29213, i16 13761, i16 -14568, i16 18728, i16 -31496, i16 32064, i16 24154], i8 -36 }, %struct.anon.28 { [8 x i16] [i16 -20798, i16 29437, i16 -17392, i16 -22211, i16 -110, i16 -16426, i16 2854, i16 -15993], [8 x i16] [i16 -15882, i16 1924, i16 -16002, i16 4272, i16 -31040, i16 -6192, i16 22417, i16 -15993], i8 -102 }, %struct.anon.28 { [8 x i16] [i16 -1819, i16 -26103, i16 18010, i16 -32506, i16 28529, i16 -6664, i16 -32355, i16 -29617], [8 x i16] [i16 12000, i16 15109, i16 2932, i16 -6468, i16 -19334, i16 6091, i16 6709, i16 -29617], i8 -25 }, %struct.anon.28 { [8 x i16] [i16 -26805, i16 24167, i16 -21846, i16 9013, i16 30127, i16 -25310, i16 -29735, i16 27755], [8 x i16] [i16 -26805, i16 5836, i16 -21846, i16 22329, i16 30127, i16 20724, i16 24551, i16 -7748], i8 119 }, %struct.anon.28 { [8 x i16] [i16 9533, i16 -13228, i16 4833, i16 4211, i16 1073, i16 9057, i16 8235, i16 20353], [8 x i16] [i16 26258, i16 29860, i16 6009, i16 -21884, i16 1073, i16 18381, i16 8235, i16 20353], i8 -46 }, %struct.anon.28 { [8 x i16] [i16 -21627, i16 29937, i16 -31541, i16 30392, i16 -14924, i16 20668, i16 -9756, i16 27007], [8 x i16] [i16 18138, i16 -23185, i16 10186, i16 32283, i16 -10260, i16 -12081, i16 -9756, i16 19002], i8 -59 }], align 16
@test_simde_mm_mask_cmpge_epu16_mask.test_vec = internal constant [8 x %struct.anon.29] [%struct.anon.29 { i8 92, [8 x i16] [i16 -10648, i16 6834, i16 -15110, i16 -16045, i16 -10174, i16 -4354, i16 14001, i16 -11915], [8 x i16] [i16 -30011, i16 6834, i16 -28594, i16 -28543, i16 -10174, i16 6783, i16 -2890, i16 -27413], i8 28 }, %struct.anon.29 { i8 100, [8 x i16] [i16 -13739, i16 -219, i16 19020, i16 -23651, i16 -2737, i16 11752, i16 -3216, i16 10388], [8 x i16] [i16 9256, i16 29884, i16 22894, i16 -23651, i16 -178, i16 -16405, i16 32754, i16 -20505], i8 64 }, %struct.anon.29 { i8 9, [8 x i16] [i16 -5589, i16 -18978, i16 18075, i16 23954, i16 -10416, i16 23164, i16 -15144, i16 -27000], [8 x i16] [i16 -31998, i16 -25027, i16 -12087, i16 23954, i16 30631, i16 32628, i16 -965, i16 -17643], i8 9 }, %struct.anon.29 { i8 -119, [8 x i16] [i16 -31204, i16 19933, i16 -6422, i16 -10393, i16 -8912, i16 8157, i16 -6437, i16 5777], [8 x i16] [i16 13344, i16 2581, i16 31770, i16 -10393, i16 -16551, i16 13417, i16 -1115, i16 12618], i8 9 }, %struct.anon.29 { i8 31, [8 x i16] [i16 -24793, i16 -12598, i16 4729, i16 1552, i16 -601, i16 -27603, i16 29873, i16 31670], [8 x i16] [i16 -24793, i16 7997, i16 19892, i16 23589, i16 -601, i16 -1040, i16 -22842, i16 -29834], i8 19 }, %struct.anon.29 { i8 88, [8 x i16] [i16 -7705, i16 21429, i16 31835, i16 10302, i16 29074, i16 -32516, i16 30227, i16 -3567], [8 x i16] [i16 -7705, i16 -12968, i16 -26818, i16 -11787, i16 29074, i16 7249, i16 30227, i16 30734], i8 80 }, %struct.anon.29 { i8 -117, [8 x i16] [i16 -20263, i16 1050, i16 -7704, i16 -7959, i16 -4969, i16 22890, i16 26357, i16 22494], [8 x i16] [i16 2835, i16 1050, i16 4077, i16 -7959, i16 17915, i16 -3619, i16 26357, i16 -9400], i8 11 }, %struct.anon.29 { i8 -49, [8 x i16] [i16 -7184, i16 22899, i16 -13937, i16 -24967, i16 -7753, i16 -26865, i16 -27540, i16 7299], [8 x i16] [i16 -7184, i16 -21301, i16 17663, i16 -18870, i16 23078, i16 -28082, i16 -11794, i16 7299], i8 -123 }], align 16
@test_simde_x_mm256_cmpge_epu16.test_vec = internal constant [8 x %struct.anon.30] [%struct.anon.30 { [16 x i16] [i16 -26667, i16 -22242, i16 -9723, i16 16443, i16 -6732, i16 -2314, i16 1286, i16 27505, i16 -27127, i16 14835, i16 -21007, i16 6932, i16 8031, i16 -23545, i16 21762, i16 -10320], [16 x i16] [i16 -26667, i16 -3455, i16 -17240, i16 16443, i16 10657, i16 -22702, i16 1286, i16 27505, i16 1370, i16 19312, i16 -31566, i16 6932, i16 28324, i16 -22858, i16 21762, i16 -10320], [16 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1] }, %struct.anon.30 { [16 x i16] [i16 -11238, i16 -13069, i16 23129, i16 -546, i16 -27448, i16 -29533, i16 8698, i16 11836, i16 -8416, i16 -9462, i16 17076, i16 -19913, i16 15052, i16 6878, i16 16975, i16 27074], [16 x i16] [i16 -18921, i16 28726, i16 5136, i16 -546, i16 4264, i16 -23963, i16 -24270, i16 21200, i16 -8416, i16 13358, i16 25884, i16 -5914, i16 -14944, i16 -4349, i16 16975, i16 27074], [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1] }, %struct.anon.30 { [16 x i16] [i16 -16745, i16 -19680, i16 1828, i16 -15205, i16 -24884, i16 -11341, i16 3172, i16 -8206, i16 -32613, i16 15979, i16 -12164, i16 -30583, i16 30362, i16 1734, i16 22067, i16 -13582], [16 x i16] [i16 -16745, i16 14717, i16 6425, i16 -6659, i16 -20297, i16 7097, i16 -21571, i16 22779, i16 26155, i16 15979, i16 8247, i16 -30583, i16 -2665, i16 -13609, i16 -14004, i16 24981], [16 x i16] [i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 -1] }, %struct.anon.30 { [16 x i16] [i16 -2976, i16 -26862, i16 16660, i16 -21656, i16 16439, i16 -31882, i16 2825, i16 -6684, i16 32285, i16 18907, i16 -18923, i16 23596, i16 10826, i16 -30367, i16 -16860, i16 -31501], [16 x i16] [i16 1458, i16 -14821, i16 16660, i16 32370, i16 -5949, i16 -13055, i16 2825, i16 4274, i16 -29341, i16 30809, i16 -31421, i16 -29228, i16 13744, i16 -11242, i16 2803, i16 -23208], [16 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0] }, %struct.anon.30 { [16 x i16] [i16 9159, i16 2709, i16 27304, i16 22680, i16 -20833, i16 -27860, i16 -31560, i16 -14280, i16 -23305, i16 -4578, i16 -3198, i16 18600, i16 12232, i16 -31999, i16 -13464, i16 12192], [16 x i16] [i16 9159, i16 -27078, i16 -11616, i16 22680, i16 -20833, i16 14802, i16 -31560, i16 -26879, i16 8111, i16 12933, i16 11538, i16 -9350, i16 31836, i16 -15010, i16 -441, i16 13812], [16 x i16] [i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0] }, %struct.anon.30 { [16 x i16] [i16 -27686, i16 -4653, i16 19904, i16 7624, i16 9929, i16 4322, i16 -10716, i16 22853, i16 4357, i16 1325, i16 16843, i16 -24186, i16 16424, i16 6423, i16 9723, i16 -10566], [16 x i16] [i16 -29256, i16 -4653, i16 -29733, i16 -23403, i16 30641, i16 -10827, i16 -1458, i16 22853, i16 23563, i16 -10408, i16 -8291, i16 -24186, i16 -28641, i16 6423, i16 -26187, i16 28145], [16 x i16] [i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1] }, %struct.anon.30 { [16 x i16] [i16 -5040, i16 -4808, i16 -20021, i16 -5453, i16 -28095, i16 -2555, i16 -2517, i16 21091, i16 18602, i16 -5804, i16 -1085, i16 -18727, i16 -24746, i16 -21258, i16 -30061, i16 -7410], [16 x i16] [i16 18038, i16 16848, i16 -31753, i16 14379, i16 12565, i16 16686, i16 -28377, i16 -11629, i16 -5926, i16 -25157, i16 -1085, i16 14675, i16 18996, i16 -21258, i16 -2860, i16 -7410], [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1] }, %struct.anon.30 { [16 x i16] [i16 -25392, i16 -19550, i16 -2767, i16 26092, i16 -11713, i16 4908, i16 -10554, i16 349, i16 -6063, i16 20275, i16 -25185, i16 -31134, i16 -18634, i16 24981, i16 30367, i16 28517], [16 x i16] [i16 1811, i16 17442, i16 3837, i16 15530, i16 -10527, i16 -22704, i16 -21075, i16 -344, i16 -9322, i16 13645, i16 -20615, i16 -31134, i16 -18634, i16 1296, i16 30407, i16 -9612], [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0] }], align 16
@test_simde_mm256_cmpge_epu16_mask.test_vec = internal constant [8 x %struct.anon.31] [%struct.anon.31 { [16 x i16] [i16 -26703, i16 10879, i16 15175, i16 -21030, i16 -5492, i16 21427, i16 10080, i16 -8658, i16 19902, i16 25432, i16 3862, i16 -18967, i16 5654, i16 -13566, i16 19692, i16 -25067], [16 x i16] [i16 -27164, i16 11208, i16 -23856, i16 23768, i16 -29811, i16 21427, i16 -8781, i16 29131, i16 9258, i16 16596, i16 -17101, i16 19190, i16 5654, i16 -16363, i16 10820, i16 10334], i16 -1095 }, %struct.anon.31 { [16 x i16] [i16 -20685, i16 26339, i16 -9876, i16 16560, i16 -14895, i16 5632, i16 24304, i16 -20674, i16 -28028, i16 19775, i16 10942, i16 30115, i16 -6203, i16 16096, i16 -17418, i16 10721], [16 x i16] [i16 -15253, i16 26339, i16 16542, i16 28439, i16 -14895, i16 -2683, i16 -15243, i16 -1371, i16 -7082, i16 5191, i16 -5362, i16 30115, i16 27090, i16 16096, i16 -3291, i16 10721], i16 -17898 }, %struct.anon.31 { [16 x i16] [i16 19780, i16 21368, i16 568, i16 2599, i16 14699, i16 -28462, i16 -15572, i16 -7392, i16 -30652, i16 1081, i16 -505, i16 -25142, i16 -31160, i16 22441, i16 -20506, i16 11195], [16 x i16] [i16 13565, i16 13694, i16 -23242, i16 -24256, i16 4830, i16 2610, i16 21206, i16 6893, i16 9946, i16 -7906, i16 -5852, i16 28031, i16 10351, i16 21956, i16 32728, i16 -10880], i16 32243 }, %struct.anon.31 { [16 x i16] [i16 27551, i16 -15157, i16 19028, i16 -15567, i16 -2701, i16 19225, i16 -26252, i16 10272, i16 10904, i16 15121, i16 -25483, i16 -11587, i16 18521, i16 26885, i16 21185, i16 24915], [16 x i16] [i16 7869, i16 -15157, i16 22121, i16 -9003, i16 -4533, i16 19225, i16 18312, i16 8423, i16 -1679, i16 -6565, i16 6293, i16 -4168, i16 18521, i16 26885, i16 -21745, i16 -12925], i16 13555 }, %struct.anon.31 { [16 x i16] [i16 -22807, i16 32724, i16 -29249, i16 8302, i16 -14774, i16 23106, i16 -14735, i16 14887, i16 1646, i16 28013, i16 31674, i16 23990, i16 -16463, i16 11656, i16 -11344, i16 -26341], [16 x i16] [i16 -3974, i16 14616, i16 -31107, i16 -14503, i16 -25780, i16 -17119, i16 18529, i16 14887, i16 25934, i16 28013, i16 -3104, i16 -28314, i16 -4173, i16 25535, i16 -9534, i16 15612], i16 -32042 }, %struct.anon.31 { [16 x i16] [i16 -10238, i16 -7216, i16 14284, i16 32628, i16 13094, i16 -5918, i16 -8690, i16 -10203, i16 -25869, i16 -28896, i16 12137, i16 -11401, i16 7263, i16 -10082, i16 15034, i16 -17248], [16 x i16] [i16 28690, i16 -8545, i16 5287, i16 -12963, i16 16199, i16 -5918, i16 -9442, i16 4398, i16 -25869, i16 -28896, i16 6013, i16 -9039, i16 20532, i16 -4427, i16 21898, i16 -25430], i16 -30745 }, %struct.anon.31 { [16 x i16] [i16 -6025, i16 -3041, i16 -11777, i16 13264, i16 -31455, i16 -21727, i16 -13094, i16 -24505, i16 -15850, i16 29709, i16 18331, i16 -19687, i16 5176, i16 1001, i16 12349, i16 -19388], [16 x i16] [i16 25624, i16 6312, i16 31029, i16 22091, i16 -31455, i16 -9983, i16 -13094, i16 20345, i16 -31221, i16 -22845, i16 18331, i16 -19687, i16 17137, i16 11785, i16 19826, i16 -29725], i16 -29225 }, %struct.anon.31 { [16 x i16] [i16 -22821, i16 -22473, i16 -28541, i16 29870, i16 -18478, i16 17570, i16 -31484, i16 -18737, i16 29201, i16 5532, i16 -9887, i16 -17384, i16 -3050, i16 -25519, i16 13385, i16 9261], [16 x i16] [i16 25819, i16 -22473, i16 31732, i16 -14638, i16 29746, i16 13835, i16 -9478, i16 3052, i16 -30387, i16 -20960, i16 -9887, i16 30826, i16 -17619, i16 -25519, i16 13385, i16 9261], i16 -841 }], align 16
@test_simde_mm256_mask_cmpge_epu16_mask.test_vec = internal constant [8 x %struct.anon.32] [%struct.anon.32 { i16 -11196, [16 x i16] [i16 -27199, i16 9026, i16 -21042, i16 -1124, i16 -20120, i16 22642, i16 3827, i16 -26077, i16 19574, i16 23094, i16 -26553, i16 -18577, i16 -17659, i16 19488, i16 -27148, i16 -18975], [16 x i16] [i16 -27199, i16 -1831, i16 30160, i16 -1124, i16 26150, i16 6545, i16 -19084, i16 -5452, i16 -5631, i16 18756, i16 -19326, i16 -30976, i16 -17659, i16 25555, i16 -19275, i16 -8423], i16 4100 }, %struct.anon.32 { i16 23637, [16 x i16] [i16 -14734, i16 29320, i16 -2227, i16 8595, i16 18523, i16 29909, i16 -21208, i16 -154, i16 -12970, i16 14282, i16 -1190, i16 170, i16 -11616, i16 12379, i16 -24580, i16 28164], [16 x i16] [i16 -29594, i16 -19487, i16 -2227, i16 -8492, i16 -21828, i16 29909, i16 -21208, i16 -21020, i16 -20859, i16 -8219, i16 -28758, i16 19168, i16 15202, i16 24186, i16 32474, i16 16588], i16 21573 }, %struct.anon.32 { i16 -10078, [16 x i16] [i16 -36, i16 -17172, i16 20041, i16 -15113, i16 -11604, i16 30786, i16 19730, i16 1574, i16 18395, i16 18383, i16 16677, i16 -6138, i16 32267, i16 -31858, i16 -7301, i16 22495], [16 x i16] [i16 -36, i16 11284, i16 2841, i16 -14864, i16 -11604, i16 -4034, i16 25727, i16 23286, i16 18395, i16 -11870, i16 -22521, i16 4793, i16 18214, i16 -31858, i16 29995, i16 3577], i16 -10238 }, %struct.anon.32 { i16 22523, [16 x i16] [i16 -22210, i16 -2176, i16 -22597, i16 20798, i16 26952, i16 16838, i16 1655, i16 -20402, i16 26464, i16 -32550, i16 13917, i16 17373, i16 -24815, i16 18207, i16 -16116, i16 18975], [16 x i16] [i16 -24470, i16 9793, i16 -22597, i16 20798, i16 15849, i16 24785, i16 8003, i16 -20402, i16 26464, i16 -32550, i16 13917, i16 12838, i16 -24815, i16 18207, i16 -26361, i16 29430], i16 22427 }, %struct.anon.32 { i16 -20009, [16 x i16] [i16 7018, i16 -28583, i16 -1715, i16 -14378, i16 -8538, i16 -25504, i16 -26288, i16 -5932, i16 -29927, i16 10487, i16 17195, i16 11017, i16 2514, i16 1595, i16 13967, i16 -1699], [16 x i16] [i16 -18862, i16 -24694, i16 24752, i16 22118, i16 -14786, i16 -28942, i16 -14753, i16 30838, i16 -29927, i16 31905, i16 -21840, i16 -31833, i16 2514, i16 17033, i16 13967, i16 27452], i16 -28268 }, %struct.anon.32 { i16 -17733, [16 x i16] [i16 -30678, i16 -11941, i16 3595, i16 -27468, i16 -12720, i16 -29574, i16 5945, i16 17490, i16 31076, i16 1974, i16 -4386, i16 -11875, i16 -1659, i16 -27333, i16 5030, i16 -12218], [16 x i16] [i16 -24165, i16 -22878, i16 22191, i16 58, i16 -19420, i16 24204, i16 -8244, i16 12450, i16 22616, i16 13880, i16 -4386, i16 -13305, i16 -1659, i16 29793, i16 -22442, i16 -12218], i16 -18246 }, %struct.anon.32 { i16 25249, [16 x i16] [i16 498, i16 -1393, i16 24013, i16 12093, i16 -27695, i16 5847, i16 8324, i16 7165, i16 15129, i16 4844, i16 29085, i16 23960, i16 -829, i16 17855, i16 31417, i16 -21505], [16 x i16] [i16 -29060, i16 18853, i16 -7445, i16 -17288, i16 20341, i16 -1581, i16 -12176, i16 -30444, i16 11, i16 -22372, i16 29085, i16 13573, i16 -15056, i16 17855, i16 31039, i16 -17515], i16 24576 }, %struct.anon.32 { i16 7286, [16 x i16] [i16 4870, i16 2966, i16 -14520, i16 -15664, i16 4272, i16 17723, i16 17099, i16 -12160, i16 -25292, i16 -7602, i16 6959, i16 -17564, i16 -18856, i16 7772, i16 -749, i16 6529], [16 x i16] [i16 5904, i16 22565, i16 -2594, i16 -15664, i16 21765, i16 -11820, i16 21655, i16 -12160, i16 -25292, i16 8621, i16 4362, i16 25308, i16 -18856, i16 -9343, i16 565, i16 17908], i16 7168 }], align 16
@test_simde_x_mm512_cmpge_epu16.test_vec = internal constant [8 x %struct.anon.33] [%struct.anon.33 { [32 x i16] [i16 28305, i16 17936, i16 27460, i16 -19223, i16 26932, i16 6811, i16 -8565, i16 -8684, i16 -30957, i16 -26593, i16 315, i16 27535, i16 1191, i16 7646, i16 23711, i16 12373, i16 26059, i16 3958, i16 24784, i16 1220, i16 24521, i16 21791, i16 13117, i16 20787, i16 21178, i16 -2327, i16 30803, i16 -1183, i16 16252, i16 6936, i16 28060, i16 26443], [32 x i16] [i16 -15662, i16 -23946, i16 14882, i16 -5209, i16 -14694, i16 6811, i16 29689, i16 -8684, i16 4549, i16 6570, i16 315, i16 1556, i16 11338, i16 7646, i16 28057, i16 27469, i16 -15313, i16 3958, i16 -19202, i16 -26563, i16 24521, i16 29808, i16 -26383, i16 -18904, i16 21178, i16 -2327, i16 30803, i16 10042, i16 16252, i16 -22514, i16 23498, i16 -1773], [32 x i16] [i16 0, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0] }, %struct.anon.33 { [32 x i16] [i16 16972, i16 8809, i16 8394, i16 -12174, i16 13894, i16 1478, i16 29474, i16 -8082, i16 3056, i16 20603, i16 15843, i16 6079, i16 -10482, i16 14869, i16 3075, i16 20357, i16 -4273, i16 6513, i16 -7409, i16 21993, i16 -20455, i16 15195, i16 -14045, i16 4891, i16 -26923, i16 -18333, i16 9172, i16 -7473, i16 -6918, i16 -740, i16 -24080, i16 16205], [32 x i16] [i16 -16752, i16 8809, i16 8394, i16 -17419, i16 20722, i16 5879, i16 4633, i16 -4567, i16 -29271, i16 32166, i16 30128, i16 6079, i16 31577, i16 14869, i16 -2788, i16 -21111, i16 -4273, i16 6513, i16 16677, i16 5905, i16 2193, i16 15195, i16 -14045, i16 -15463, i16 16612, i16 -27584, i16 -24651, i16 3902, i16 -6918, i16 14169, i16 -7461, i16 -28700], [32 x i16] [i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0] }, %struct.anon.33 { [32 x i16] [i16 29217, i16 -27849, i16 14439, i16 26007, i16 17767, i16 -4739, i16 22669, i16 5463, i16 21876, i16 12371, i16 -24686, i16 -19194, i16 4933, i16 -12877, i16 16644, i16 9498, i16 20915, i16 6841, i16 20617, i16 -3713, i16 -875, i16 9182, i16 13909, i16 -14024, i16 -29813, i16 7673, i16 -213, i16 28882, i16 -31214, i16 5693, i16 22471, i16 31292], [32 x i16] [i16 -2648, i16 -27849, i16 5189, i16 -9694, i16 17767, i16 26109, i16 13879, i16 -15825, i16 10433, i16 -4896, i16 -19928, i16 14940, i16 4933, i16 -175, i16 -29200, i16 9498, i16 20915, i16 6841, i16 -5086, i16 12961, i16 -24595, i16 9368, i16 13909, i16 -14024, i16 -29813, i16 6019, i16 -8327, i16 28882, i16 -31214, i16 5693, i16 11056, i16 -19966], [32 x i16] [i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0] }, %struct.anon.33 { [32 x i16] [i16 17208, i16 -4076, i16 -23970, i16 6038, i16 25031, i16 -19290, i16 -13550, i16 -29808, i16 -31885, i16 -1411, i16 8649, i16 -19973, i16 25974, i16 -2102, i16 -27439, i16 2480, i16 -14888, i16 14073, i16 -28569, i16 11853, i16 -3087, i16 994, i16 29374, i16 12686, i16 3062, i16 -16596, i16 10028, i16 -23696, i16 14988, i16 23962, i16 19151, i16 -22682], [32 x i16] [i16 24335, i16 30429, i16 -23970, i16 6038, i16 25031, i16 -19290, i16 29434, i16 -29808, i16 14974, i16 -1411, i16 8033, i16 -4787, i16 25974, i16 10570, i16 -20430, i16 16848, i16 -21233, i16 14073, i16 24023, i16 11853, i16 -3087, i16 -8494, i16 -8138, i16 -19250, i16 32026, i16 31582, i16 -21347, i16 -2200, i16 -19821, i16 23962, i16 -3998, i16 -22682], [32 x i16] [i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 -1] }, %struct.anon.33 { [32 x i16] [i16 3879, i16 17376, i16 19039, i16 29251, i16 8838, i16 -23876, i16 -17968, i16 -1064, i16 -30443, i16 7619, i16 -32094, i16 28089, i16 6753, i16 12442, i16 14722, i16 -22116, i16 31816, i16 -22548, i16 12231, i16 19737, i16 -10926, i16 8944, i16 -14193, i16 -23523, i16 -8110, i16 -2878, i16 31586, i16 -15518, i16 -875, i16 6131, i16 -28875, i16 32192], [32 x i16] [i16 -21493, i16 -11740, i16 16091, i16 11552, i16 4115, i16 -23985, i16 -17968, i16 10823, i16 2380, i16 -20961, i16 -32380, i16 28089, i16 25725, i16 -19664, i16 -3853, i16 -208, i16 21916, i16 30673, i16 -3693, i16 -22875, i16 -3071, i16 -9655, i16 -28575, i16 -21244, i16 9113, i16 7516, i16 -12892, i16 8758, i16 -875, i16 9685, i16 1366, i16 -3548], [32 x i16] [i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 -1, i16 0] }, %struct.anon.33 { [32 x i16] [i16 28845, i16 -27436, i16 26751, i16 -32131, i16 16453, i16 -19738, i16 -2296, i16 -3144, i16 -9371, i16 -24446, i16 13364, i16 -3315, i16 -24646, i16 17928, i16 3926, i16 813, i16 383, i16 -360, i16 5481, i16 -20864, i16 26198, i16 24160, i16 6238, i16 -15535, i16 -11277, i16 10083, i16 28679, i16 -15846, i16 8719, i16 26120, i16 13617, i16 -20375], [32 x i16] [i16 28845, i16 -27436, i16 12055, i16 27981, i16 -21098, i16 -2869, i16 7365, i16 -18249, i16 6895, i16 -2081, i16 13364, i16 -3315, i16 -16101, i16 19711, i16 27127, i16 11773, i16 -21398, i16 -32307, i16 6875, i16 29166, i16 -17976, i16 24160, i16 7381, i16 -15535, i16 9526, i16 10083, i16 29983, i16 -15846, i16 8719, i16 11655, i16 -31550, i16 -20375], [32 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1] }, %struct.anon.33 { [32 x i16] [i16 18185, i16 19363, i16 8420, i16 15190, i16 -4605, i16 615, i16 22732, i16 -12489, i16 11525, i16 10226, i16 20349, i16 10111, i16 1331, i16 -25709, i16 11494, i16 -4301, i16 -10637, i16 22587, i16 -28169, i16 -1389, i16 -1409, i16 19452, i16 13138, i16 22298, i16 3169, i16 -8578, i16 -677, i16 -29179, i16 -26621, i16 -5847, i16 23748, i16 14553], [32 x i16] [i16 18185, i16 10896, i16 8420, i16 15190, i16 8221, i16 615, i16 -30381, i16 -19258, i16 17558, i16 -3693, i16 20349, i16 10111, i16 -22223, i16 -2770, i16 1798, i16 14637, i16 -17125, i16 -16285, i16 -30752, i16 -540, i16 21415, i16 19452, i16 13020, i16 22298, i16 17014, i16 -8578, i16 -6950, i16 -29179, i16 10893, i16 -5847, i16 23748, i16 19660], [32 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0] }, %struct.anon.33 { [32 x i16] [i16 18935, i16 -20969, i16 -7879, i16 32011, i16 25367, i16 -32611, i16 12138, i16 -19616, i16 -2266, i16 215, i16 1675, i16 19048, i16 25654, i16 -27590, i16 30252, i16 9183, i16 -2369, i16 -1583, i16 -8745, i16 -4490, i16 4928, i16 -21649, i16 -12478, i16 26718, i16 13766, i16 21097, i16 -11973, i16 29084, i16 -10699, i16 24838, i16 -6836, i16 3205], [32 x i16] [i16 18935, i16 -19963, i16 31539, i16 29856, i16 3982, i16 -12257, i16 32222, i16 -23239, i16 -23885, i16 -4361, i16 -27789, i16 -22176, i16 26217, i16 -19190, i16 -28853, i16 9921, i16 -14618, i16 6616, i16 30785, i16 -12403, i16 -21368, i16 26272, i16 -9942, i16 -8949, i16 635, i16 -4405, i16 11157, i16 -361, i16 -23919, i16 -9036, i16 30001, i16 5890], [32 x i16] [i16 -1, i16 0, i16 -1, i16 -1, i16 -1, i16 0, i16 0, i16 -1, i16 -1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 -1, i16 0, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0] }], align 16
@test_simde_mm512_cmpge_epu16_mask.test_vec = internal constant [8 x %struct.anon.34] [%struct.anon.34 { [32 x i16] [i16 -7244, i16 1990, i16 5025, i16 3298, i16 8960, i16 -14687, i16 4976, i16 -16377, i16 14161, i16 -17755, i16 -30466, i16 26548, i16 -29920, i16 11521, i16 -19611, i16 6518, i16 15510, i16 14368, i16 592, i16 20548, i16 -6619, i16 -27113, i16 7929, i16 19030, i16 -1195, i16 21252, i16 -18045, i16 -23622, i16 -17340, i16 -22064, i16 18031, i16 1730], [32 x i16] [i16 -7549, i16 -11458, i16 5025, i16 2595, i16 14952, i16 25248, i16 -2471, i16 -20820, i16 -19983, i16 29698, i16 -17302, i16 26548, i16 -6024, i16 -6056, i16 6703, i16 -19730, i16 15510, i16 -7803, i16 -22354, i16 6123, i16 -29725, i16 15481, i16 9601, i16 19030, i16 -1195, i16 21252, i16 -87, i16 8687, i16 18407, i16 5641, i16 18031, i16 24264], i32 2075740845 }, %struct.anon.34 { [32 x i16] [i16 -11099, i16 -25683, i16 -27136, i16 -18572, i16 -30216, i16 32751, i16 -25976, i16 29917, i16 31788, i16 -17143, i16 -16375, i16 -8650, i16 -14976, i16 14100, i16 -22500, i16 -16110, i16 -16515, i16 32092, i16 -12203, i16 19764, i16 9049, i16 -7475, i16 -21826, i16 -5546, i16 24614, i16 12456, i16 -8672, i16 -24562, i16 8867, i16 -16425, i16 -5430, i16 18305], [32 x i16] [i16 -8791, i16 -25683, i16 -27136, i16 -18572, i16 6428, i16 -9495, i16 16580, i16 -5436, i16 31788, i16 -16358, i16 10314, i16 -4768, i16 14154, i16 5549, i16 11809, i16 -13476, i16 8459, i16 -17974, i16 -12203, i16 19764, i16 -21968, i16 -3057, i16 -21826, i16 -5546, i16 -1728, i16 -29878, i16 -21983, i16 27768, i16 9698, i16 897, i16 -8877, i16 24526], i32 1825404254 }, %struct.anon.34 { [32 x i16] [i16 25914, i16 -5715, i16 -1473, i16 -15416, i16 -25769, i16 -30671, i16 10829, i16 -2054, i16 -2450, i16 23747, i16 -1173, i16 1580, i16 -76, i16 19444, i16 16801, i16 -8992, i16 -29274, i16 -6715, i16 -29049, i16 -8280, i16 -9687, i16 30311, i16 24836, i16 29294, i16 12632, i16 -15410, i16 -1491, i16 -7735, i16 -16902, i16 -25812, i16 3326, i16 -23177], [32 x i16] [i16 15769, i16 8586, i16 13259, i16 -3072, i16 26381, i16 4459, i16 10829, i16 8580, i16 21002, i16 14308, i16 -20915, i16 18201, i16 17771, i16 19444, i16 23122, i16 -8992, i16 -26217, i16 25100, i16 3276, i16 -9898, i16 -9687, i16 30311, i16 28570, i16 -23202, i16 12632, i16 3804, i16 -1491, i16 23637, i16 14395, i16 -29242, i16 -10862, i16 10616], i32 -1086408713 }, %struct.anon.34 { [32 x i16] [i16 4730, i16 2932, i16 -30477, i16 -27119, i16 21384, i16 -2348, i16 -18700, i16 -10458, i16 25973, i16 10922, i16 -9479, i16 -15079, i16 -26929, i16 -26077, i16 -21877, i16 1491, i16 18364, i16 -20720, i16 8655, i16 22342, i16 6773, i16 26958, i16 29904, i16 17984, i16 -5415, i16 -11664, i16 -30268, i16 -27497, i16 -17889, i16 -21970, i16 356, i16 8367], [32 x i16] [i16 4730, i16 2932, i16 5857, i16 22127, i16 21384, i16 191, i16 -207, i16 2886, i16 -18710, i16 10922, i16 30016, i16 24386, i16 28719, i16 -27638, i16 -18063, i16 -17996, i16 18364, i16 23505, i16 16538, i16 22342, i16 29181, i16 11979, i16 4464, i16 23097, i16 6088, i16 2057, i16 19340, i16 -17561, i16 29116, i16 11599, i16 1067, i16 -23321], i32 929775295 }, %struct.anon.34 { [32 x i16] [i16 17098, i16 -15686, i16 -22285, i16 5559, i16 -9632, i16 10919, i16 -27593, i16 -21572, i16 22154, i16 -13141, i16 26456, i16 -13367, i16 -2958, i16 -32407, i16 -21754, i16 -12264, i16 -11283, i16 -8046, i16 18811, i16 -9227, i16 -25308, i16 23302, i16 -15823, i16 -17401, i16 -19943, i16 29064, i16 20761, i16 -29892, i16 -23226, i16 19468, i16 9552, i16 15901], [32 x i16] [i16 -20488, i16 29470, i16 5369, i16 7502, i16 21681, i16 -7560, i16 32535, i16 12446, i16 9778, i16 19361, i16 -8840, i16 -16681, i16 -7294, i16 -11766, i16 9992, i16 16, i16 12247, i16 -12173, i16 -15805, i16 -2835, i16 25878, i16 11734, i16 -15823, i16 5981, i16 -357, i16 29064, i16 14811, i16 24017, i16 -9187, i16 9520, i16 9552, i16 15901], i32 -286008362 }, %struct.anon.34 { [32 x i16] [i16 -10345, i16 -3385, i16 28014, i16 27492, i16 1258, i16 -9139, i16 17921, i16 -918, i16 2978, i16 14291, i16 2173, i16 -13079, i16 -16276, i16 4382, i16 19134, i16 21798, i16 -4831, i16 -28601, i16 -21414, i16 17915, i16 18864, i16 -20191, i16 -29809, i16 12717, i16 -32362, i16 5224, i16 20873, i16 -2592, i16 -494, i16 -12281, i16 11592, i16 27173], [32 x i16] [i16 27674, i16 29946, i16 28014, i16 -14151, i16 -9410, i16 -12679, i16 10086, i16 -513, i16 26792, i16 14291, i16 -3655, i16 -13079, i16 11759, i16 4382, i16 -16294, i16 29857, i16 -25811, i16 17897, i16 -23919, i16 -12530, i16 18864, i16 -7011, i16 -25170, i16 12717, i16 -32362, i16 -16761, i16 -20765, i16 -11638, i16 -494, i16 -12281, i16 -21530, i16 5034], i32 -1181271449 }, %struct.anon.34 { [32 x i16] [i16 -22920, i16 -20750, i16 -26356, i16 -1439, i16 -1571, i16 -16489, i16 -30095, i16 -9051, i16 18948, i16 11561, i16 18809, i16 -12751, i16 27506, i16 17928, i16 22095, i16 -14496, i16 21244, i16 2165, i16 -10261, i16 -14077, i16 -25904, i16 16776, i16 11556, i16 10269, i16 18296, i16 -3755, i16 -31088, i16 703, i16 -14095, i16 16712, i16 -22498, i16 6664], [32 x i16] [i16 32507, i16 -6622, i16 -26356, i16 9647, i16 14271, i16 -7322, i16 -30095, i16 -8948, i16 25035, i16 23502, i16 -28952, i16 -9891, i16 -23210, i16 29722, i16 9037, i16 18574, i16 21244, i16 -2513, i16 -8490, i16 -27365, i16 -32490, i16 31609, i16 -31483, i16 10269, i16 9958, i16 -12757, i16 -30540, i16 2728, i16 -15827, i16 31614, i16 3301, i16 -31037], i32 1402585181 }, %struct.anon.34 { [32 x i16] [i16 11777, i16 -11654, i16 -23610, i16 -8263, i16 6980, i16 27645, i16 -4907, i16 -18824, i16 21255, i16 -21941, i16 -5417, i16 7546, i16 -14840, i16 13128, i16 -1323, i16 -10726, i16 -27351, i16 -4183, i16 25144, i16 31950, i16 -13442, i16 21479, i16 24504, i16 -16631, i16 21683, i16 -30103, i16 -7361, i16 18343, i16 -4183, i16 32378, i16 -27158, i16 4949], [32 x i16] [i16 -470, i16 25090, i16 -23610, i16 -8482, i16 -14693, i16 21298, i16 15141, i16 -18824, i16 21255, i16 -12446, i16 -5417, i16 2070, i16 -28167, i16 13128, i16 -9178, i16 20726, i16 -1830, i16 15026, i16 -28472, i16 31950, i16 19286, i16 21479, i16 -13946, i16 5716, i16 -18619, i16 -23323, i16 -832, i16 -18004, i16 -4183, i16 -19556, i16 -27158, i16 -5885], i32 1354431982 }], align 16
@test_simde_mm512_mask_cmpge_epu16_mask.test_vec = internal constant [8 x %struct.anon.35] [%struct.anon.35 { i32 18269749, [32 x i16] [i16 7422, i16 17577, i16 24409, i16 -7712, i16 -1844, i16 1008, i16 5476, i16 -30594, i16 -25057, i16 9836, i16 2410, i16 27065, i16 67, i16 4216, i16 29001, i16 18535, i16 4237, i16 -6260, i16 27760, i16 15560, i16 -18332, i16 -14273, i16 -16691, i16 -4784, i16 -17316, i16 -14829, i16 -13114, i16 2351, i16 -22324, i16 5657, i16 -32743, i16 -22946], [32 x i16] [i16 7422, i16 397, i16 24409, i16 -7712, i16 32014, i16 -9086, i16 -11461, i16 -26679, i16 -9073, i16 9836, i16 -29528, i16 30047, i16 30772, i16 19851, i16 -5639, i16 -29964, i16 -32301, i16 10635, i16 -14121, i16 -6429, i16 25925, i16 -32574, i16 -16691, i16 -4784, i16 29799, i16 3869, i16 31745, i16 13700, i16 4085, i16 -4477, i16 30712, i16 -13448], i32 17957397 }, %struct.anon.35 { i32 2035818840, [32 x i16] [i16 -13155, i16 -9710, i16 -23740, i16 18256, i16 -29364, i16 27313, i16 11240, i16 -16248, i16 -9175, i16 13964, i16 18355, i16 316, i16 3705, i16 -20664, i16 24276, i16 29104, i16 -15829, i16 28492, i16 -25499, i16 -19785, i16 26665, i16 4636, i16 -23405, i16 -17198, i16 24193, i16 13555, i16 12197, i16 7990, i16 32317, i16 4558, i16 32476, i16 1923], [32 x i16] [i16 -12480, i16 -23177, i16 -23740, i16 -27561, i16 29590, i16 10918, i16 30744, i16 -26138, i16 -9769, i16 31949, i16 777, i16 18075, i16 27009, i16 24152, i16 -9241, i16 10085, i16 -9046, i16 5581, i16 9226, i16 -24151, i16 20632, i16 -20277, i16 -20024, i16 -24759, i16 5771, i16 13555, i16 -18662, i16 -25638, i16 12833, i16 2297, i16 32476, i16 -18640], i32 1897406736 }, %struct.anon.35 { i32 1431029746, [32 x i16] [i16 16279, i16 23859, i16 -25359, i16 21995, i16 6479, i16 6211, i16 -14749, i16 26107, i16 31011, i16 -19833, i16 -19727, i16 -14257, i16 -23539, i16 26075, i16 13253, i16 23775, i16 4723, i16 25785, i16 -23378, i16 -583, i16 -578, i16 8469, i16 4291, i16 -6522, i16 3722, i16 31640, i16 -5952, i16 -12732, i16 8076, i16 20787, i16 4690, i16 -14931], [32 x i16] [i16 16279, i16 -11478, i16 -7414, i16 -14128, i16 -6432, i16 -23574, i16 28918, i16 -32631, i16 8830, i16 16380, i16 16394, i16 -27123, i16 -23539, i16 -19993, i16 -27565, i16 23775, i16 -24070, i16 25785, i16 7044, i16 26061, i16 -18687, i16 -2296, i16 -28121, i16 -6522, i16 29876, i16 -16667, i16 -3404, i16 -12732, i16 15154, i16 -31292, i16 15311, i16 -13827], i32 689984 }, %struct.anon.35 { i32 901310607, [32 x i16] [i16 4449, i16 -19528, i16 5088, i16 16428, i16 19430, i16 11605, i16 10063, i16 17704, i16 13902, i16 -20627, i16 6921, i16 6112, i16 -9786, i16 -18175, i16 19872, i16 526, i16 -14754, i16 16053, i16 -7718, i16 -16257, i16 -11220, i16 31726, i16 5883, i16 18880, i16 11597, i16 22265, i16 -9911, i16 3949, i16 28338, i16 21448, i16 -10565, i16 6741], [32 x i16] [i16 2717, i16 30552, i16 -10261, i16 5943, i16 9643, i16 -22638, i16 10063, i16 -30224, i16 -5761, i16 -14113, i16 19650, i16 30168, i16 -24390, i16 30408, i16 7543, i16 5264, i16 -6105, i16 16053, i16 -15680, i16 27433, i16 -17432, i16 9234, i16 781, i16 -29523, i16 -29460, i16 -20651, i16 11736, i16 -28124, i16 -4915, i16 21448, i16 -26615, i16 12376], i32 607674379 }, %struct.anon.35 { i32 691333898, [32 x i16] [i16 25939, i16 31171, i16 29988, i16 -6484, i16 27860, i16 -16492, i16 -3456, i16 -15742, i16 -10125, i16 -7727, i16 9270, i16 11351, i16 -304, i16 24740, i16 23782, i16 14997, i16 22977, i16 -6733, i16 24782, i16 -23605, i16 24780, i16 19554, i16 -6830, i16 -15090, i16 -8259, i16 -3162, i16 -508, i16 -11233, i16 -15364, i16 -7628, i16 -13792, i16 -7908], [32 x i16] [i16 25939, i16 31171, i16 -28112, i16 -876, i16 -2062, i16 17480, i16 22492, i16 -15742, i16 -20426, i16 14988, i16 -21586, i16 -22001, i16 17263, i16 24740, i16 -22259, i16 12400, i16 14201, i16 -6733, i16 24782, i16 -17243, i16 -4435, i16 19554, i16 2885, i16 31522, i16 -20805, i16 27318, i16 -15014, i16 -14060, i16 -24312, i16 5720, i16 -14261, i16 -15290], i32 690266882 }, %struct.anon.35 { i32 -1380096220, [32 x i16] [i16 -17409, i16 246, i16 19522, i16 -10937, i16 2500, i16 -5341, i16 -9343, i16 -16788, i16 -18777, i16 5379, i16 24408, i16 -15410, i16 19457, i16 2861, i16 25143, i16 13877, i16 11037, i16 24375, i16 32375, i16 15156, i16 22407, i16 2087, i16 -27854, i16 -9530, i16 -14006, i16 -23825, i16 -16856, i16 10597, i16 -27894, i16 16693, i16 27381, i16 4728], [32 x i16] [i16 -17409, i16 246, i16 -22995, i16 -19385, i16 28413, i16 12476, i16 -32254, i16 -16788, i16 -18777, i16 5379, i16 21687, i16 -15971, i16 -11545, i16 -9213, i16 31548, i16 -11794, i16 24362, i16 22493, i16 9477, i16 779, i16 22407, i16 -27341, i16 15689, i16 -27423, i16 -12234, i16 -4600, i16 -23004, i16 2991, i16 -19848, i16 16693, i16 27381, i16 22406], i32 748422944 }, %struct.anon.35 { i32 1069575507, [32 x i16] [i16 -1504, i16 -24118, i16 31850, i16 5994, i16 -14321, i16 29690, i16 -13265, i16 15354, i16 -29363, i16 -32576, i16 -1530, i16 21985, i16 -25925, i16 -8232, i16 -27391, i16 8589, i16 22415, i16 -1598, i16 11731, i16 -7664, i16 2805, i16 9301, i16 20694, i16 9056, i16 8413, i16 -7260, i16 -31461, i16 -10696, i16 4127, i16 8373, i16 17061, i16 13378], [32 x i16] [i16 1177, i16 27693, i16 15665, i16 10063, i16 -14321, i16 7755, i16 -13265, i16 -11966, i16 -6452, i16 -6219, i16 -4757, i16 21985, i16 29438, i16 -23637, i16 -4683, i16 20184, i16 22415, i16 9147, i16 2627, i16 -29878, i16 2805, i16 -23639, i16 20694, i16 9056, i16 10705, i16 -7260, i16 -20201, i16 -10696, i16 29476, i16 8373, i16 -28575, i16 21287], i32 717237331 }, %struct.anon.35 { i32 651766040, [32 x i16] [i16 9262, i16 -31270, i16 6193, i16 10782, i16 -15157, i16 -22539, i16 -930, i16 -21862, i16 -23860, i16 3866, i16 25442, i16 -19533, i16 -21804, i16 10138, i16 23063, i16 18022, i16 16766, i16 -20277, i16 -5799, i16 9434, i16 -12371, i16 3275, i16 26060, i16 -26442, i16 -12025, i16 27303, i16 23092, i16 2077, i16 -18428, i16 6959, i16 -27118, i16 -28319], [32 x i16] [i16 11735, i16 12353, i16 6934, i16 -15275, i16 8427, i16 -18480, i16 -31098, i16 -29361, i16 -23860, i16 -29449, i16 5456, i16 21652, i16 -15155, i16 10138, i16 -11942, i16 12656, i16 -19970, i16 -20277, i16 -18739, i16 -18216, i16 -22313, i16 23919, i16 -16849, i16 -30998, i16 -7500, i16 1042, i16 -22537, i16 -15272, i16 -14485, i16 -14941, i16 5272, i16 -26890], i32 43002128 }], align 16
@test_simde_x_mm_cmpge_epi32.test_vec = internal constant [8 x %struct.anon.36] [%struct.anon.36 { [4 x i32] [i32 -1655441224, i32 -600825204, i32 1375078415, i32 -1671647570], [4 x i32] [i32 -939367616, i32 -1760696454, i32 1375078415, i32 -1425737230], [4 x i32] [i32 0, i32 -1, i32 -1, i32 0] }, %struct.anon.36 { [4 x i32] [i32 -1990559622, i32 802836608, i32 1053505278, i32 319278489], [4 x i32] [i32 -1990559622, i32 -176489981, i32 1053505278, i32 1331947733], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 0] }, %struct.anon.36 { [4 x i32] [i32 202420749, i32 -2109023255, i32 1553355176, i32 1754611813], [4 x i32] [i32 777916218, i32 -2109023255, i32 1553355176, i32 1076398899], [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1] }, %struct.anon.36 { [4 x i32] [i32 -1146513645, i32 1310212072, i32 -1162433153, i32 1256723645], [4 x i32] [i32 -1146513645, i32 1310212072, i32 686058219, i32 1256723645], [4 x i32] [i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.36 { [4 x i32] [i32 -1224832713, i32 -193940169, i32 -599893815, i32 -992547757], [4 x i32] [i32 929568844, i32 610225538, i32 -599893815, i32 -992547757], [4 x i32] [i32 0, i32 0, i32 -1, i32 -1] }, %struct.anon.36 { [4 x i32] [i32 1929381034, i32 -1336918179, i32 2004166187, i32 -1062281922], [4 x i32] [i32 1929381034, i32 1659813820, i32 -515840757, i32 -2064788262], [4 x i32] [i32 -1, i32 0, i32 -1, i32 -1] }, %struct.anon.36 { [4 x i32] [i32 1491486509, i32 -1395696786, i32 1668119864, i32 1175147146], [4 x i32] [i32 1491486509, i32 -1174476321, i32 -1791104067, i32 113980633], [4 x i32] [i32 -1, i32 0, i32 -1, i32 -1] }, %struct.anon.36 { [4 x i32] [i32 1150692620, i32 900137898, i32 1736160085, i32 -1937496915], [4 x i32] [i32 -901414387, i32 1197507181, i32 1736160085, i32 -1937496915], [4 x i32] [i32 -1, i32 0, i32 -1, i32 -1] }], align 16
@.str.88 = private unnamed_addr constant [38 x i8] c"simde_x_mm_loadu_epi32(test_vec[i].r)\00", align 1
@test_simde_mm_cmpge_epi32_mask.test_vec = internal constant [8 x %struct.anon.37] [%struct.anon.37 { [4 x i32] [i32 -546249719, i32 1983871877, i32 1227473824, i32 -836561550], [4 x i32] [i32 2018964847, i32 1843215079, i32 1227473824, i32 -442887716], i8 6 }, %struct.anon.37 { [4 x i32] [i32 653329286, i32 946805446, i32 -1626893777, i32 1847025031], [4 x i32] [i32 -1076104040, i32 -372540403, i32 -2083625587, i32 1847025031], i8 15 }, %struct.anon.37 { [4 x i32] [i32 949258761, i32 -1529373924, i32 -1861030151, i32 -279908638], [4 x i32] [i32 -120054934, i32 -277109120, i32 -1861030151, i32 1881800807], i8 5 }, %struct.anon.37 { [4 x i32] [i32 1397456986, i32 1373920878, i32 -1237306292, i32 -810673841], [4 x i32] [i32 -121755201, i32 164012962, i32 796520612, i32 -810673841], i8 11 }, %struct.anon.37 { [4 x i32] [i32 -866041984, i32 -1031626381, i32 2056335802, i32 -59617190], [4 x i32] [i32 -1761265421, i32 -691634648, i32 1105173920, i32 1062288063], i8 5 }, %struct.anon.37 { [4 x i32] [i32 246451540, i32 428360126, i32 -2062157167, i32 1511791410], [4 x i32] [i32 959570841, i32 1065029760, i32 -998323126, i32 -743274113], i8 8 }, %struct.anon.37 { [4 x i32] [i32 904817315, i32 -1749417116, i32 -1192110562, i32 972104377], [4 x i32] [i32 2105044018, i32 -1203636679, i32 -1769213057, i32 -110400427], i8 12 }, %struct.anon.37 { [4 x i32] [i32 2077419612, i32 2016658366, i32 414262502, i32 -896193903], [4 x i32] [i32 -1602037984, i32 540413386, i32 1343857017, i32 1451968506], i8 3 }], align 16
@test_simde_mm_mask_cmpge_epi32_mask.test_vec = internal constant [8 x %struct.anon.38] [%struct.anon.38 { i8 -11, [4 x i32] [i32 696025189, i32 2079121996, i32 -1614249714, i32 95355611], [4 x i32] [i32 1392887934, i32 427697865, i32 529104048, i32 -828970391], i8 0 }, %struct.anon.38 { i8 -124, [4 x i32] [i32 1694708196, i32 -79650055, i32 444155217, i32 1893977418], [4 x i32] [i32 -954139317, i32 1898987654, i32 -371458346, i32 -622947594], i8 4 }, %struct.anon.38 { i8 -85, [4 x i32] [i32 -975783809, i32 -15732686, i32 -800423725, i32 -531164512], [4 x i32] [i32 1102563394, i32 892838051, i32 -800423725, i32 -531164512], i8 8 }, %struct.anon.38 { i8 -9, [4 x i32] [i32 612343716, i32 -54243350, i32 1849599398, i32 -65896612], [4 x i32] [i32 -948222026, i32 -54243350, i32 2103830466, i32 522782075], i8 3 }, %struct.anon.38 { i8 16, [4 x i32] [i32 -1382118648, i32 1225329865, i32 1727989022, i32 1571211137], [4 x i32] [i32 -987783714, i32 121740546, i32 1856790726, i32 1571211137], i8 0 }, %struct.anon.38 { i8 114, [4 x i32] [i32 1731123554, i32 -1612147496, i32 -662813125, i32 47858533], [4 x i32] [i32 -439819900, i32 -913754482, i32 -1617939044, i32 -256958322], i8 0 }, %struct.anon.38 { i8 91, [4 x i32] [i32 -2035453632, i32 854296047, i32 1102573151, i32 -305161034], [4 x i32] [i32 -2035453632, i32 1223174184, i32 -1237198632, i32 1864897327], i8 1 }, %struct.anon.38 { i8 -61, [4 x i32] [i32 -809785887, i32 -125436836, i32 1662874315, i32 613185531], [4 x i32] [i32 939316319, i32 694661654, i32 1662874315, i32 -1391714100], i8 0 }], align 16
@test_simde_x_mm256_cmpge_epi32.test_vec = internal constant [8 x %struct.anon.39] [%struct.anon.39 { [8 x i32] [i32 1128554292, i32 -1766527256, i32 -848889338, i32 1668150183, i32 1060450639, i32 481120356, i32 -1257195853, i32 1934755903], [8 x i32] [i32 1337431655, i32 -1766527256, i32 207113317, i32 1668150183, i32 1523492342, i32 -1451852811, i32 1902020402, i32 1934755903], [8 x i32] [i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 -1] }, %struct.anon.39 { [8 x i32] [i32 -1233539209, i32 1782966644, i32 -2084301938, i32 -1070842994, i32 1362267074, i32 -2092492996, i32 -1169191757, i32 791062200], [8 x i32] [i32 -907632811, i32 372452232, i32 -862259138, i32 -175258061, i32 -1924743343, i32 -1995338282, i32 -1169191757, i32 791062200], [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 -1] }, %struct.anon.39 { [8 x i32] [i32 -2078522799, i32 1517922568, i32 1055375208, i32 1724381260, i32 1614219865, i32 2109487220, i32 823058975, i32 -1920879044], [8 x i32] [i32 17997560, i32 -1336177849, i32 1055375208, i32 -1795312069, i32 888419776, i32 -1917734803, i32 -809582445, i32 1868316790], [8 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0] }, %struct.anon.39 { [8 x i32] [i32 1222427661, i32 987552378, i32 2087702543, i32 336142465, i32 1474545888, i32 -423215352, i32 -1475660114, i32 250470657], [8 x i32] [i32 1222427661, i32 -1302776925, i32 -2060466172, i32 -912705303, i32 136346624, i32 -423215352, i32 487717404, i32 -2144534821], [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.39 { [8 x i32] [i32 -1438691903, i32 -2039228283, i32 277779540, i32 -1753645702, i32 1387563895, i32 1372774537, i32 448622947, i32 718592873], [8 x i32] [i32 -1438691903, i32 1093880044, i32 1448198876, i32 -1225930177, i32 -553082283, i32 -433005950, i32 -1275007669, i32 -253766456], [8 x i32] [i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1] }, %struct.anon.39 { [8 x i32] [i32 -768710765, i32 -2021123279, i32 1080463549, i32 -1255762326, i32 1282025092, i32 -482522630, i32 -122102788, i32 1087360684], [8 x i32] [i32 -768710765, i32 -689071335, i32 -1776921813, i32 1850424554, i32 1282025092, i32 -79628290, i32 2146695378, i32 1087360684], [8 x i32] [i32 -1, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 -1] }, %struct.anon.39 { [8 x i32] [i32 -1943091550, i32 1710913794, i32 767735087, i32 2133328556, i32 -1057088518, i32 -1631863330, i32 -76079986, i32 244524651], [8 x i32] [i32 -275070484, i32 1767150906, i32 767735087, i32 2133328556, i32 -1177390117, i32 -1631863330, i32 364564137, i32 244524651], [8 x i32] [i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.39 { [8 x i32] [i32 1385384250, i32 -479983608, i32 -1399048580, i32 1819014083, i32 -1233050175, i32 -2137545614, i32 -1261869214, i32 -984515701], [8 x i32] [i32 -870849340, i32 -479983608, i32 1947552945, i32 31490112, i32 414671526, i32 1754877446, i32 1075667637, i32 -984515701], [8 x i32] [i32 -1, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1] }], align 16
@.str.89 = private unnamed_addr constant [39 x i8] c"simde_mm256_loadu_epi32(test_vec[i].r)\00", align 1
@test_simde_mm256_cmpge_epi32_mask.test_vec = internal constant [8 x %struct.anon.40] [%struct.anon.40 { [8 x i32] [i32 -583642054, i32 351783869, i32 481759204, i32 1348173171, i32 -475513727, i32 1633215348, i32 292249929, i32 -1639074204], [8 x i32] [i32 -948206838, i32 351783869, i32 -196111487, i32 -1840993775, i32 1534520806, i32 431804112, i32 -1825954001, i32 -416188195], i8 111 }, %struct.anon.40 { [8 x i32] [i32 798280734, i32 1556273270, i32 -1766377275, i32 900690694, i32 2009717402, i32 1298135634, i32 -979956057, i32 -1218112359], [8 x i32] [i32 1458043360, i32 1556273270, i32 -416453919, i32 900690694, i32 150005174, i32 1298135634, i32 -162730659, i32 -491933438], i8 58 }, %struct.anon.40 { [8 x i32] [i32 872759382, i32 -743628260, i32 -405037817, i32 1231958508, i32 557824799, i32 386133100, i32 -1097646975, i32 2145232424], [8 x i32] [i32 45343462, i32 215310340, i32 -369905155, i32 20079330, i32 -1994231523, i32 -543152546, i32 -1952631966, i32 -1089832231], i8 -7 }, %struct.anon.40 { [8 x i32] [i32 721772872, i32 -533973053, i32 124342185, i32 -672789899, i32 392332093, i32 1540779262, i32 1220319274, i32 2019764784], [8 x i32] [i32 721772872, i32 1227804832, i32 -1806657761, i32 -672789899, i32 -1208561991, i32 1540779262, i32 -1783836827, i32 2019764784], i8 -3 }, %struct.anon.40 { [8 x i32] [i32 959754647, i32 -1592221721, i32 -1470624147, i32 1057778650, i32 869579066, i32 1102570185, i32 341477779, i32 548715401], [8 x i32] [i32 1415178349, i32 -168463993, i32 -1470624147, i32 -208033351, i32 723938914, i32 -479339184, i32 -268974234, i32 -284185726], i8 -4 }, %struct.anon.40 { [8 x i32] [i32 1085582471, i32 -1204597418, i32 199514555, i32 -1662103242, i32 -1702107880, i32 596286352, i32 -566309372, i32 -1892135673], [8 x i32] [i32 1355803898, i32 -184024262, i32 -1828590500, i32 1429204797, i32 1710275541, i32 1518959190, i32 1329121096, i32 249458964], i8 4 }, %struct.anon.40 { [8 x i32] [i32 -1851748781, i32 1390858365, i32 -507980149, i32 -1740947120, i32 484995848, i32 1110165220, i32 635013492, i32 1144219376], [8 x i32] [i32 1926616052, i32 1390858365, i32 -502301550, i32 -981775683, i32 -1562221634, i32 -1629221591, i32 635013492, i32 432797220], i8 -14 }, %struct.anon.40 { [8 x i32] [i32 -1982813236, i32 -1269871626, i32 -682217042, i32 -730514626, i32 492517881, i32 -113891793, i32 577225158, i32 -586218735], [8 x i32] [i32 -1536761938, i32 -665275094, i32 -682217042, i32 -470211094, i32 -1912581026, i32 1099380603, i32 157544184, i32 -1595509775], i8 -44 }], align 16
@test_simde_mm256_mask_cmpge_epi32_mask.test_vec = internal constant [8 x %struct.anon.41] [%struct.anon.41 { i8 85, [8 x i32] [i32 906822988, i32 -1994848725, i32 -703129253, i32 1226284880, i32 2136112013, i32 1075788270, i32 -2000854138, i32 1282478848], [8 x i32] [i32 1132625688, i32 -523396219, i32 -703129253, i32 290377347, i32 932225353, i32 1618456538, i32 333985042, i32 1616861768], i8 20 }, %struct.anon.41 { i8 66, [8 x i32] [i32 -1009174283, i32 655157894, i32 687948666, i32 -264543813, i32 -1539813814, i32 -1870817106, i32 -1391600836, i32 268648474], [8 x i32] [i32 -1009174283, i32 1076289734, i32 -563534045, i32 -741432183, i32 -1586034957, i32 -617483105, i32 -360104241, i32 -151352194], i8 0 }, %struct.anon.41 { i8 124, [8 x i32] [i32 2076946391, i32 -2073125250, i32 153292565, i32 2144993088, i32 352174984, i32 -1971522371, i32 70822633, i32 -280622824], [8 x i32] [i32 912921272, i32 -960767568, i32 701488872, i32 1705552093, i32 679060843, i32 -2102135399, i32 -1215894625, i32 -1398354444], i8 104 }, %struct.anon.41 { i8 46, [8 x i32] [i32 -849675483, i32 1228521379, i32 786587961, i32 -3250924, i32 -1192000021, i32 1033347116, i32 556214147, i32 -1583482500], [8 x i32] [i32 -1737492491, i32 1228521379, i32 505332745, i32 337505321, i32 -1192000021, i32 886793393, i32 139788939, i32 -257297669], i8 38 }, %struct.anon.41 { i8 36, [8 x i32] [i32 -1671960401, i32 370043909, i32 -1647858631, i32 -1993737337, i32 1132736848, i32 -215124518, i32 1756614398, i32 244809055], [8 x i32] [i32 1806364261, i32 -1820215206, i32 -349091484, i32 -1993737337, i32 1708718475, i32 1817707886, i32 1756614398, i32 244809055], i8 0 }, %struct.anon.41 { i8 -91, [8 x i32] [i32 -748031111, i32 1633615464, i32 -607140906, i32 682507036, i32 2075254799, i32 198549536, i32 -693138950, i32 1257945041], [8 x i32] [i32 303915946, i32 1633615464, i32 1527923263, i32 -1920745347, i32 -1056426848, i32 -808657451, i32 -693138950, i32 -578641870], i8 -96 }, %struct.anon.41 { i8 -124, [8 x i32] [i32 1864611247, i32 1829810232, i32 -1790783048, i32 435884445, i32 1464546231, i32 1448749238, i32 2071052056, i32 186698844], [8 x i32] [i32 -1166392447, i32 1829810232, i32 -1790783048, i32 435884445, i32 629693807, i32 -1636047994, i32 2071052056, i32 973683129], i8 4 }, %struct.anon.41 { i8 63, [8 x i32] [i32 -1728093348, i32 -771215243, i32 -1671942727, i32 -1774258519, i32 1229929743, i32 -892958394, i32 -1713817986, i32 -1356971182], [8 x i32] [i32 457645478, i32 116215629, i32 -1671942727, i32 -1774258519, i32 1687489310, i32 305093524, i32 -458487663, i32 -241972661], i8 12 }], align 16
@test_simde_x_mm512_cmpge_epi32.test_vec = internal constant [8 x %struct.anon.42] [%struct.anon.42 { [16 x i32] [i32 -1099117091, i32 -1797470071, i32 -1205321379, i32 2018065264, i32 -1312608793, i32 -1684491072, i32 -1178219328, i32 -436638713, i32 -1029475015, i32 -1705607107, i32 827489985, i32 -1599497287, i32 -1991152439, i32 -534451936, i32 -1113986634, i32 -1901948331], [16 x i32] [i32 1146111495, i32 -1797470071, i32 -1205321379, i32 -1786814004, i32 -316747571, i32 1892500410, i32 -2110953940, i32 1102073, i32 -599432938, i32 744694535, i32 537598804, i32 1236634236, i32 339137370, i32 -534451936, i32 1657123433, i32 -1738287742], [16 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0] }, %struct.anon.42 { [16 x i32] [i32 -563155512, i32 1495397360, i32 666691237, i32 -222355524, i32 -1842334777, i32 -55403766, i32 275443984, i32 -1368776218, i32 -24324082, i32 1884794571, i32 1352078228, i32 -113027534, i32 -1819511927, i32 529481230, i32 355465519, i32 683907354], [16 x i32] [i32 1025921137, i32 -1834123522, i32 -991738479, i32 633153179, i32 -1842334777, i32 -1211676537, i32 1556936257, i32 -1368776218, i32 -566383648, i32 1884794571, i32 -880913616, i32 -113027534, i32 -1819511927, i32 529481230, i32 126783608, i32 463648], [16 x i32] [i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1] }, %struct.anon.42 { [16 x i32] [i32 -1225856315, i32 -454512020, i32 1676375875, i32 1214575242, i32 1731150391, i32 885510289, i32 1280373744, i32 -735150321, i32 -712369047, i32 314143439, i32 1937089769, i32 -826549866, i32 -1388975588, i32 -1411252805, i32 -511504, i32 433268400], [16 x i32] [i32 300834114, i32 -454512020, i32 -500393653, i32 1214575242, i32 -1925388846, i32 -768008734, i32 -3067569, i32 -1726372777, i32 -712369047, i32 -91566417, i32 1937089769, i32 1902677150, i32 1425974386, i32 -1411252805, i32 -1089406872, i32 -1638323811], [16 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 -1] }, %struct.anon.42 { [16 x i32] [i32 -485835231, i32 1593061877, i32 -971176919, i32 1600484910, i32 1296028794, i32 2122783182, i32 348953552, i32 952732695, i32 1058788170, i32 782044932, i32 1123334932, i32 -1398712015, i32 -50733010, i32 -897941255, i32 853427739, i32 476817362], [16 x i32] [i32 2136770171, i32 -1431438954, i32 -420699468, i32 697470459, i32 1713736557, i32 640720651, i32 348953552, i32 836092854, i32 -525323958, i32 -544580054, i32 -70945280, i32 -1398712015, i32 -50733010, i32 -804059158, i32 853427739, i32 2046582063], [16 x i32] [i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 0] }, %struct.anon.42 { [16 x i32] [i32 1619239542, i32 -1087334743, i32 814397441, i32 -1532393706, i32 1063060020, i32 1045100005, i32 110776402, i32 -224631172, i32 -1303240951, i32 -1217297739, i32 1357380666, i32 -1208643197, i32 2046186131, i32 -1699266488, i32 211899024, i32 -1040302664], [16 x i32] [i32 1619239542, i32 231335378, i32 1683861985, i32 -1532393706, i32 1063060020, i32 1045100005, i32 284043352, i32 -224631172, i32 282412605, i32 220045099, i32 -1838056880, i32 1919389133, i32 -262162786, i32 349365948, i32 1965342735, i32 -348588371], [16 x i32] [i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 0] }, %struct.anon.42 { [16 x i32] [i32 1744973996, i32 645714967, i32 1117495444, i32 -751971433, i32 -1925502752, i32 -762728384, i32 171055255, i32 -1172569330, i32 1260527156, i32 -2022596878, i32 -708244418, i32 -1079380257, i32 1582097438, i32 741398165, i32 -63544594, i32 -1699327130], [16 x i32] [i32 1744973996, i32 -1259645322, i32 1117495444, i32 -751971433, i32 -1406776041, i32 299390499, i32 520949689, i32 -1172569330, i32 288857755, i32 1455760116, i32 -708244418, i32 -1079380257, i32 1582097438, i32 2115510213, i32 -1868749522, i32 -2090641688], [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1] }, %struct.anon.42 { [16 x i32] [i32 -1873277749, i32 1494118699, i32 2146020246, i32 -184398591, i32 -1512204312, i32 -1707533327, i32 1573277424, i32 1991150763, i32 -1006172519, i32 236852599, i32 -1030944831, i32 1018728276, i32 400725286, i32 -1582163023, i32 352221289, i32 -1635013627], [16 x i32] [i32 711103155, i32 1494118699, i32 -601111160, i32 2065294165, i32 -1512204312, i32 -2134162154, i32 1573277424, i32 694165366, i32 1498661809, i32 236852599, i32 -1030944831, i32 1210237391, i32 -764299844, i32 -1219347206, i32 2088429318, i32 -1197090298], [16 x i32] [i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 0] }, %struct.anon.42 { [16 x i32] [i32 1302612051, i32 -1979320700, i32 -469336099, i32 -140727463, i32 685288868, i32 1056867455, i32 -288523303, i32 1841341209, i32 1891263723, i32 955957082, i32 -1742995138, i32 1351596204, i32 -461805723, i32 -1004308501, i32 213119218, i32 2138665875], [16 x i32] [i32 837759959, i32 829024755, i32 -469336099, i32 -1561896899, i32 -1417191233, i32 -898651432, i32 769008282, i32 1823231893, i32 1891263723, i32 955957082, i32 -905547379, i32 -1989284151, i32 641004622, i32 955360158, i32 1533396934, i32 -1698164201], [16 x i32] [i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1] }], align 16
@.str.90 = private unnamed_addr constant [39 x i8] c"simde_mm512_loadu_epi32(test_vec[i].r)\00", align 1
@test_simde_mm512_cmpge_epi32_mask.test_vec = internal constant [8 x %struct.anon.43] [%struct.anon.43 { [16 x i32] [i32 1354561720, i32 -1285220726, i32 -367136982, i32 1896163411, i32 1218436393, i32 -949536718, i32 -733973257, i32 717881714, i32 -2072279047, i32 -952639331, i32 582046927, i32 -1500203140, i32 -940690540, i32 1670272364, i32 1010290377, i32 -916061745], [16 x i32] [i32 1354561720, i32 -1863482175, i32 1437834968, i32 -352630955, i32 1218436393, i32 122240830, i32 -599556083, i32 178629250, i32 1295053451, i32 1339891062, i32 582046927, i32 1392222167, i32 -969364344, i32 -120749333, i32 -2066476798, i32 1183808187], i16 29851 }, %struct.anon.43 { [16 x i32] [i32 985883471, i32 -399339291, i32 1550583713, i32 -308020351, i32 -1764739398, i32 -1456602457, i32 1300420312, i32 -917852806, i32 -167506672, i32 1071527582, i32 -1097053635, i32 11288390, i32 496467061, i32 1472644479, i32 363153563, i32 98562037], [16 x i32] [i32 -1677990915, i32 1473960217, i32 1779791396, i32 728416693, i32 -1119354562, i32 -1456602457, i32 1266137430, i32 -1504684375, i32 -167506672, i32 1071527582, i32 1202962322, i32 -1083040127, i32 -428033505, i32 508072136, i32 363153563, i32 1335474710], i16 31713 }, %struct.anon.43 { [16 x i32] [i32 -1001600772, i32 -1562143656, i32 1771392083, i32 213462534, i32 -29861112, i32 -1266307672, i32 474043605, i32 -1836937834, i32 -1386820011, i32 -1253033630, i32 -1944066682, i32 479844372, i32 -618999501, i32 1401921662, i32 -1972383500, i32 -1306726051], [16 x i32] [i32 -1001600772, i32 -1562143656, i32 -1447037291, i32 29776078, i32 -29861112, i32 -1266307672, i32 -1694537155, i32 458038363, i32 993832335, i32 -227667107, i32 -677630711, i32 -1361485179, i32 -1017792958, i32 1597525794, i32 -1972383500, i32 -1306726051], i16 -10113 }, %struct.anon.43 { [16 x i32] [i32 306659824, i32 1249017744, i32 174025910, i32 -1477668941, i32 2079853307, i32 1325742998, i32 1552770587, i32 -1864336992, i32 1268918202, i32 1570051238, i32 862450816, i32 2128237443, i32 -184888738, i32 692387598, i32 92655973, i32 93677131], [16 x i32] [i32 877672333, i32 1249017744, i32 1543567577, i32 -1445209525, i32 -1147218515, i32 971301588, i32 -29464141, i32 -1864336992, i32 1452364810, i32 321069626, i32 1701847834, i32 -1441838083, i32 -194663136, i32 1110264207, i32 -2109641805, i32 1222591806], i16 23282 }, %struct.anon.43 { [16 x i32] [i32 1572270798, i32 -274734276, i32 -1938694066, i32 -1076604635, i32 1418884033, i32 436238645, i32 1929188048, i32 20220467, i32 -1201739140, i32 463994573, i32 78059998, i32 734231658, i32 629102063, i32 -1623228209, i32 -971883374, i32 1137133254], [16 x i32] [i32 1572270798, i32 35300132, i32 637977020, i32 760334653, i32 -296562401, i32 -477261487, i32 1929188048, i32 399995366, i32 -1156197481, i32 463994573, i32 777569521, i32 -1403278963, i32 -879055494, i32 -1623228209, i32 -1381934905, i32 1137133254], i16 -1423 }, %struct.anon.43 { [16 x i32] [i32 1899721010, i32 1635707545, i32 202252099, i32 -462564456, i32 -1230600019, i32 -21915039, i32 -601236762, i32 -1874067362, i32 184649585, i32 -1251180686, i32 935426719, i32 -98816435, i32 414302903, i32 1125605981, i32 -1709227972, i32 -1322554560], [16 x i32] [i32 1899721010, i32 1260005548, i32 -259859549, i32 -1041523190, i32 -1230600019, i32 -21915039, i32 1892950320, i32 2133000076, i32 -656089556, i32 -1251180686, i32 -459627046, i32 -1515879100, i32 526614049, i32 -1621531537, i32 303050373, i32 1502687789], i16 12095 }, %struct.anon.43 { [16 x i32] [i32 -987609514, i32 811891882, i32 -683510614, i32 -1221471322, i32 -1093770679, i32 -1324576585, i32 -839958548, i32 1825624598, i32 -1036913896, i32 435328623, i32 -1309658102, i32 1365778696, i32 990852740, i32 -1293148986, i32 1904270171, i32 -975286099], [16 x i32] [i32 -1299771581, i32 811891882, i32 -683510614, i32 -1221471322, i32 -962848769, i32 -1904703437, i32 268499043, i32 -1932140983, i32 -1824563731, i32 -2059203881, i32 -1539529530, i32 1365778696, i32 -1892507045, i32 -1910658262, i32 1904270171, i32 -377916165], i16 32687 }, %struct.anon.43 { [16 x i32] [i32 -6787116, i32 -1114786534, i32 -827708461, i32 1891050399, i32 -1659358245, i32 1428571890, i32 1562727343, i32 1516659334, i32 -346423599, i32 -2035751245, i32 -1319808494, i32 1344408693, i32 854473280, i32 814224512, i32 -292704920, i32 -532090097], [16 x i32] [i32 -1530158351, i32 -1708428152, i32 1011646662, i32 -863211892, i32 -1659358245, i32 1428571890, i32 1562727343, i32 -903598631, i32 1483665615, i32 720542052, i32 -1503248871, i32 1433596844, i32 -58822291, i32 770955256, i32 -292704920, i32 -715090682], i16 -2821 }], align 16
@test_simde_mm512_mask_cmpge_epi32_mask.test_vec = internal constant [8 x %struct.anon.44] [%struct.anon.44 { i16 1302, [16 x i32] [i32 81255947, i32 1915866037, i32 -1459051869, i32 -1115723721, i32 -1633244106, i32 723565260, i32 -1573501131, i32 -310536479, i32 703681908, i32 -1013243360, i32 -76700732, i32 1102638091, i32 1709203352, i32 1318060057, i32 703710791, i32 -803836324], [16 x i32] [i32 81255947, i32 1915866037, i32 -1459051869, i32 -1115723721, i32 436036352, i32 -1419211421, i32 -1573501131, i32 -1954551097, i32 443447537, i32 1124537612, i32 -76700732, i32 -1866331760, i32 -794116244, i32 -1602547123, i32 844124011, i32 717082425], i16 1286 }, %struct.anon.44 { i16 31280, [16 x i32] [i32 -568892573, i32 1395491331, i32 1914922677, i32 -727815280, i32 1461706943, i32 -545957557, i32 -2143904988, i32 -1853535186, i32 -1301307985, i32 -737764321, i32 -1840830206, i32 1399252372, i32 279676357, i32 66068703, i32 -360503621, i32 561711474], [16 x i32] [i32 -975967322, i32 -1969563257, i32 -1776492286, i32 -1930787898, i32 1461706943, i32 -545957557, i32 609906354, i32 491116151, i32 1222842817, i32 -170754574, i32 613150558, i32 2058384754, i32 -1084076790, i32 -1942991399, i32 -360503621, i32 558954080], i16 28720 }, %struct.anon.44 { i16 -6266, [16 x i32] [i32 -238613823, i32 1182565014, i32 104651957, i32 1748585470, i32 1134881357, i32 734384376, i32 -2062566035, i32 -2130755649, i32 -546126263, i32 -31003063, i32 -939236662, i32 -80724306, i32 540988712, i32 306971813, i32 -2137498687, i32 -469723238], [16 x i32] [i32 -1480363426, i32 732293472, i32 -84694452, i32 284501224, i32 1134881357, i32 -122651593, i32 -2062566035, i32 -2130755649, i32 -546126263, i32 1333234179, i32 474573364, i32 -2027143538, i32 -1457169039, i32 -1314793767, i32 -31253986, i32 2117892499], i16 8582 }, %struct.anon.44 { i16 -18244, [16 x i32] [i32 666722438, i32 876731409, i32 397268186, i32 490225491, i32 -1184897835, i32 -1025045563, i32 132862533, i32 -1242598865, i32 -472011566, i32 1662459528, i32 1182450931, i32 -664555005, i32 1553121943, i32 320764365, i32 -82179637, i32 1303382395], [16 x i32] [i32 666722438, i32 -1616820308, i32 266672907, i32 1709656270, i32 -658409205, i32 -1025045563, i32 1689847528, i32 -1242598865, i32 -1559960841, i32 893560105, i32 -1891358783, i32 2062822255, i32 -1756121691, i32 2085961364, i32 1423969860, i32 1863946872], i16 4260 }, %struct.anon.44 { i16 -25890, [16 x i32] [i32 -722055042, i32 -1377682484, i32 -1472243057, i32 -607734839, i32 590317904, i32 540649997, i32 -98075755, i32 -508370078, i32 -4872141, i32 1923913699, i32 -1155798030, i32 -275258978, i32 1997719146, i32 110578545, i32 687914695, i32 -737496415], [16 x i32] [i32 1054064474, i32 -1377682484, i32 168086379, i32 -607734839, i32 590317904, i32 500769878, i32 -2092443166, i32 -447262325, i32 -4872141, i32 380753067, i32 1277212063, i32 -1285416623, i32 1997719146, i32 -141009132, i32 687914695, i32 1118360113], i16 6746 }, %struct.anon.44 { i16 9095, [16 x i32] [i32 821686936, i32 1678782953, i32 -1657388556, i32 761869187, i32 -1719137829, i32 -730294200, i32 247624186, i32 648650894, i32 2086052498, i32 -924817708, i32 711268007, i32 609734217, i32 549314519, i32 1928607352, i32 897627815, i32 -396678826], [16 x i32] [i32 -1604013620, i32 -1083685864, i32 -1544892838, i32 1959215516, i32 -1718319839, i32 -730294200, i32 -1802007746, i32 -2122517835, i32 -1155407453, i32 -924817708, i32 -199006889, i32 -949425242, i32 727776368, i32 -1030919292, i32 -1403640585, i32 -1188179434], i16 9091 }, %struct.anon.44 { i16 -20950, [16 x i32] [i32 -1886450942, i32 598968013, i32 1609943346, i32 -122836605, i32 -605518718, i32 -698925645, i32 -77480136, i32 -1725962090, i32 -1071075597, i32 1726209076, i32 684054949, i32 69235330, i32 -1428223754, i32 2122331717, i32 -1938169099, i32 -1104832310], [16 x i32] [i32 2055097670, i32 598968013, i32 -1107843781, i32 247535639, i32 1723375648, i32 -857458474, i32 -447193830, i32 -1725962090, i32 -1071075597, i32 1726209076, i32 1417394749, i32 -211665710, i32 -1286006052, i32 1837055315, i32 -1873619046, i32 516814164], i16 10786 }, %struct.anon.44 { i16 32151, [16 x i32] [i32 535526816, i32 1039566570, i32 -483243498, i32 2070366569, i32 1028752356, i32 -2012093989, i32 -1718083005, i32 -1337474544, i32 701510463, i32 -815348039, i32 2058590481, i32 -957015326, i32 2030257821, i32 1795233063, i32 1191483703, i32 -1695003813], [16 x i32] [i32 535526816, i32 1039566570, i32 -483243498, i32 1919684564, i32 1028752356, i32 -1125585787, i32 -1718083005, i32 -1233322953, i32 1391280324, i32 -815348039, i32 -2083255378, i32 -957015326, i32 904782000, i32 1391646156, i32 1191483703, i32 -1230065422], i16 31767 }], align 16
@test_simde_x_mm_cmpge_epu32.test_vec = internal constant [8 x %struct.anon.45] [%struct.anon.45 { [4 x i32] [i32 1968333699, i32 -362081354, i32 -1164288756, i32 458656275], [4 x i32] [i32 1830217700, i32 -389473242, i32 -1164288756, i32 927610548], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 0] }, %struct.anon.45 { [4 x i32] [i32 -1137109072, i32 -2022190220, i32 1117965661, i32 -626018124], [4 x i32] [i32 297957588, i32 -1814142497, i32 835332247, i32 1988130501], [4 x i32] [i32 -1, i32 0, i32 -1, i32 -1] }, %struct.anon.45 { [4 x i32] [i32 -343365235, i32 724380279, i32 -1224287005, i32 868796500], [4 x i32] [i32 -1043945942, i32 724380279, i32 -1828031738, i32 -1164690131], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 0] }, %struct.anon.45 { [4 x i32] [i32 713675335, i32 65114030, i32 -2127123881, i32 524549456], [4 x i32] [i32 713675335, i32 65114030, i32 -493830917, i32 524236248], [4 x i32] [i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.45 { [4 x i32] [i32 -1346819241, i32 623964373, i32 2051372013, i32 1359935913], [4 x i32] [i32 -1289275721, i32 623964373, i32 -185936660, i32 -190106723], [4 x i32] [i32 0, i32 -1, i32 0, i32 0] }, %struct.anon.45 { [4 x i32] [i32 1096406100, i32 -256074169, i32 1313000087, i32 -234788608], [4 x i32] [i32 1096406100, i32 134326123, i32 972860634, i32 1701617680], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] }, %struct.anon.45 { [4 x i32] [i32 -89365917, i32 759819821, i32 1998604887, i32 1283710433], [4 x i32] [i32 1582597252, i32 759819821, i32 1688601840, i32 1283710433], [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1] }, %struct.anon.45 { [4 x i32] [i32 285831354, i32 -1668798021, i32 -1964504314, i32 -1058456432], [4 x i32] [i32 2097250444, i32 -1668798021, i32 -1964504314, i32 -2021678387], [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1] }], align 16
@test_simde_mm_cmpge_epu32_mask.test_vec = internal constant [8 x %struct.anon.46] [%struct.anon.46 { [4 x i32] [i32 -370624478, i32 -755744050, i32 -1730460836, i32 -1684595517], [4 x i32] [i32 -370624478, i32 -755744050, i32 -932463334, i32 736937993], i8 11 }, %struct.anon.46 { [4 x i32] [i32 1931544854, i32 252443724, i32 917217816, i32 -1790381887], [4 x i32] [i32 -1340043627, i32 1417186123, i32 -746625965, i32 1310889016], i8 8 }, %struct.anon.46 { [4 x i32] [i32 1492765759, i32 797877358, i32 717608853, i32 -1327831707], [4 x i32] [i32 -1023126928, i32 -292125770, i32 -1254246376, i32 1000341243], i8 8 }, %struct.anon.46 { [4 x i32] [i32 -764862147, i32 1576873720, i32 -2096244973, i32 -532278998], [4 x i32] [i32 -764862147, i32 1576873720, i32 -708115958, i32 -532278998], i8 11 }, %struct.anon.46 { [4 x i32] [i32 -1177114458, i32 -1455627393, i32 -1970633995, i32 -214476450], [4 x i32] [i32 1870960997, i32 -1455627393, i32 772756654, i32 1923529420], i8 15 }, %struct.anon.46 { [4 x i32] [i32 1435199328, i32 1205802473, i32 -751102354, i32 1262665647], [4 x i32] [i32 -1132361970, i32 -1477799717, i32 -1407610550, i32 1262665647], i8 12 }, %struct.anon.46 { [4 x i32] [i32 -1663262418, i32 1735333815, i32 -458051114, i32 346108729], [4 x i32] [i32 247237572, i32 716952860, i32 -458051114, i32 -1873126814], i8 7 }, %struct.anon.46 { [4 x i32] [i32 588946253, i32 -2063086516, i32 -1013274369, i32 1355961908], [4 x i32] [i32 1165659435, i32 -2063086516, i32 1741186412, i32 -400886629], i8 6 }], align 16
@test_simde_mm_mask_cmpge_epu32_mask.test_vec = internal constant [8 x %struct.anon.47] [%struct.anon.47 { i8 -77, [4 x i32] [i32 6361600, i32 -272368709, i32 2084541777, i32 -121456094], [4 x i32] [i32 942722508, i32 -272368709, i32 2075507436, i32 -279461650], i8 2 }, %struct.anon.47 { i8 58, [4 x i32] [i32 1208253618, i32 1986691260, i32 256009026, i32 -1941865837], [4 x i32] [i32 1208253618, i32 -2084375357, i32 56013131, i32 -1941865837], i8 8 }, %struct.anon.47 { i8 -10, [4 x i32] [i32 1753059845, i32 1325108436, i32 -597194802, i32 -190825728], [4 x i32] [i32 -1371593731, i32 1565409913, i32 -597194802, i32 1089263931], i8 4 }, %struct.anon.47 { i8 -6, [4 x i32] [i32 734301603, i32 791388404, i32 1680613184, i32 -1596073378], [4 x i32] [i32 -912770520, i32 -805025033, i32 -1606728650, i32 -1596073378], i8 8 }, %struct.anon.47 { i8 127, [4 x i32] [i32 70986725, i32 845324120, i32 -1218772356, i32 -458349414], [4 x i32] [i32 70986725, i32 845324120, i32 -1218772356, i32 -458349414], i8 15 }, %struct.anon.47 { i8 -10, [4 x i32] [i32 -235082002, i32 1837871945, i32 -527077279, i32 1184563595], [4 x i32] [i32 1100468313, i32 1172521484, i32 -928421145, i32 -448305674], i8 6 }, %struct.anon.47 { i8 61, [4 x i32] [i32 -782759327, i32 -1587791712, i32 -1543789869, i32 2075147321], [4 x i32] [i32 -1989937889, i32 -1587791712, i32 -1235851918, i32 -1666387141], i8 1 }, %struct.anon.47 { i8 -117, [4 x i32] [i32 1829781450, i32 1990636602, i32 1502945892, i32 -1325981819], [4 x i32] [i32 69401247, i32 1145034832, i32 -1992107131, i32 348577865], i8 11 }], align 16
@test_simde_x_mm256_cmpge_epu32.test_vec = internal constant [8 x %struct.anon.48] [%struct.anon.48 { [8 x i32] [i32 1240453159, i32 -2050078618, i32 958692927, i32 2039031969, i32 1123994983, i32 -276002801, i32 621781070, i32 1219520801], [8 x i32] [i32 1240453159, i32 639918311, i32 -2141239073, i32 -671487632, i32 -971310922, i32 -826956160, i32 1744094278, i32 1739564077], [8 x i32] [i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0] }, %struct.anon.48 { [8 x i32] [i32 -469651085, i32 1371273882, i32 1914164722, i32 -1052652421, i32 -1104661103, i32 489019609, i32 -1152832487, i32 -901997737], [8 x i32] [i32 -469651085, i32 1371273882, i32 -1147318465, i32 -1052652421, i32 -328489709, i32 -1777692547, i32 324162492, i32 987664110], [8 x i32] [i32 -1, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 -1] }, %struct.anon.48 { [8 x i32] [i32 -990786648, i32 -1133482583, i32 -1884693742, i32 673624940, i32 -197363706, i32 -768730618, i32 -1646899034, i32 1389561257], [8 x i32] [i32 2048312528, i32 -1133482583, i32 -1884693742, i32 673624940, i32 2022453873, i32 -213206196, i32 -1646899034, i32 -167353562], [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 0] }, %struct.anon.48 { [8 x i32] [i32 433287302, i32 -609105559, i32 1213415164, i32 71015929, i32 -457651266, i32 1440464686, i32 2125351899, i32 2038647538], [8 x i32] [i32 613570234, i32 486490912, i32 2053395073, i32 -1367432977, i32 -1701693589, i32 -772837898, i32 -1420780103, i32 -1574644760], [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0] }, %struct.anon.48 { [8 x i32] [i32 133614103, i32 -692751254, i32 -1586477141, i32 1853054901, i32 -451296259, i32 -1064878442, i32 -301314316, i32 728395795], [8 x i32] [i32 -1523425221, i32 -2139363372, i32 -484316370, i32 1213305931, i32 -299013289, i32 -1649494871, i32 378321154, i32 728395795], [8 x i32] [i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 -1] }, %struct.anon.48 { [8 x i32] [i32 -1133720463, i32 -1207648928, i32 -777637592, i32 -395356955, i32 939457293, i32 1201356785, i32 208774578, i32 -1668015061], [8 x i32] [i32 1213726952, i32 -436183874, i32 -777637592, i32 -395356955, i32 322918434, i32 1201356785, i32 -1420440704, i32 -1668015061], [8 x i32] [i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.48 { [8 x i32] [i32 -1157937217, i32 -1866312338, i32 1168310958, i32 1569717725, i32 -1341528888, i32 -1182838578, i32 -345925648, i32 1869934768], [8 x i32] [i32 -1157937217, i32 1916136388, i32 -893855507, i32 1569717725, i32 -1341528888, i32 1907608961, i32 358421605, i32 1015337221], [8 x i32] [i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1] }, %struct.anon.48 { [8 x i32] [i32 -984600592, i32 -1587316618, i32 731623849, i32 -459518337, i32 1761212771, i32 178552266, i32 -1039170006, i32 -1907849570], [8 x i32] [i32 726899125, i32 -1587316618, i32 -404330392, i32 432767670, i32 1182909564, i32 1800480321, i32 -1039170006, i32 -1680312602], [8 x i32] [i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 0] }], align 16
@test_simde_mm256_cmpge_epu32_mask.test_vec = internal constant [8 x %struct.anon.49] [%struct.anon.49 { [8 x i32] [i32 -970092854, i32 -544886715, i32 2093684796, i32 1650397168, i32 -1601630124, i32 1678164158, i32 1553455685, i32 -416379619], [8 x i32] [i32 1638816540, i32 1212166923, i32 2093684796, i32 1872569114, i32 -233888205, i32 1678164158, i32 243854832, i32 -1745504389], i8 -25 }, %struct.anon.49 { [8 x i32] [i32 1566386755, i32 -2134049971, i32 141745185, i32 -499856910, i32 837860534, i32 -2033654157, i32 1621409929, i32 998378232], [8 x i32] [i32 -2120622284, i32 -67017254, i32 855929921, i32 -216647619, i32 837860534, i32 1995369964, i32 -1495887186, i32 -790472548], i8 48 }, %struct.anon.49 { [8 x i32] [i32 55907014, i32 1056402250, i32 1587944562, i32 -1210805239, i32 -1033983450, i32 982663170, i32 -1689459781, i32 -54699466], [8 x i32] [i32 -1241509012, i32 -252381314, i32 474979091, i32 1456743215, i32 -1033983450, i32 755673970, i32 -1689459781, i32 482444976], i8 -4 }, %struct.anon.49 { [8 x i32] [i32 -1847109790, i32 1223146362, i32 1595474157, i32 965485483, i32 721311098, i32 1950859227, i32 948640128, i32 1107530720], [8 x i32] [i32 1708452586, i32 -1817330778, i32 1727252155, i32 965485483, i32 -1349607724, i32 -584854179, i32 948640128, i32 756160578], i8 -55 }, %struct.anon.49 { [8 x i32] [i32 -255643898, i32 -2091621458, i32 1580392961, i32 -1489283400, i32 1198936069, i32 1802799208, i32 269682286, i32 1282232134], [8 x i32] [i32 -255643898, i32 -1783590764, i32 720691826, i32 -1489283400, i32 -393918336, i32 1062468048, i32 1179608832, i32 1282232134], i8 -83 }, %struct.anon.49 { [8 x i32] [i32 771427060, i32 -1184183239, i32 -442306796, i32 -383453719, i32 321876828, i32 457752879, i32 -308499825, i32 -1329745220], [8 x i32] [i32 -170018628, i32 -1716565883, i32 545149239, i32 -383453719, i32 1152792597, i32 -2006909191, i32 1685453992, i32 1779708846], i8 -50 }, %struct.anon.49 { [8 x i32] [i32 -1500346273, i32 1078565675, i32 -846856236, i32 -1521031683, i32 -1895183391, i32 -352772610, i32 1230657551, i32 -960797593], [8 x i32] [i32 409751021, i32 -1135036952, i32 -846856236, i32 -1554587454, i32 -1439539285, i32 -352772610, i32 -338235772, i32 -960797593], i8 -83 }, %struct.anon.49 { [8 x i32] [i32 1345916302, i32 -1728802579, i32 1816274671, i32 -688269742, i32 415354821, i32 1045983840, i32 1678028944, i32 -286488736], [8 x i32] [i32 -2126568044, i32 -1525009483, i32 -1424925607, i32 -688269742, i32 957367001, i32 1165453493, i32 2024373272, i32 -1738042109], i8 -120 }], align 16
@test_simde_mm256_mask_cmpge_epu32_mask.test_vec = internal constant [8 x %struct.anon.50] [%struct.anon.50 { i8 -121, [8 x i32] [i32 -1008851056, i32 196828977, i32 1464126370, i32 1268562995, i32 1002653240, i32 -1764545829, i32 -1459098160, i32 -1327752160], [8 x i32] [i32 1970518595, i32 -1149227495, i32 739427577, i32 -1200115840, i32 -789300235, i32 912770917, i32 -706777420, i32 -830096502], i8 5 }, %struct.anon.50 { i8 95, [8 x i32] [i32 201870685, i32 114885, i32 2087047604, i32 -1506763976, i32 909182331, i32 -2069037173, i32 95107906, i32 -494089083], [8 x i32] [i32 201870685, i32 165670741, i32 -108706623, i32 1537259232, i32 1183961531, i32 315243984, i32 -32016776, i32 1558225730], i8 9 }, %struct.anon.50 { i8 -15, [8 x i32] [i32 -767592164, i32 -359818727, i32 1773851691, i32 350342302, i32 -2041061405, i32 -1883327552, i32 156060655, i32 -26685982], [8 x i32] [i32 1607509830, i32 1833524545, i32 -791280847, i32 -1293633585, i32 -2041061405, i32 -555288593, i32 619131714, i32 1176653824], i8 -111 }, %struct.anon.50 { i8 5, [8 x i32] [i32 868241788, i32 1909092918, i32 -1570758229, i32 1004813831, i32 1983580454, i32 510493227, i32 376350247, i32 -939004084], [8 x i32] [i32 2013055041, i32 1909092918, i32 -1570758229, i32 -1389728633, i32 -1608292747, i32 510493227, i32 -2077938633, i32 1565273372], i8 4 }, %struct.anon.50 { i8 -8, [8 x i32] [i32 143517340, i32 2004695569, i32 -278978978, i32 153513692, i32 -1054496108, i32 1068925687, i32 307160406, i32 -1760016902], [8 x i32] [i32 1033872684, i32 1035214303, i32 388764475, i32 153513692, i32 -1054496108, i32 489983175, i32 1815118450, i32 -201111352], i8 56 }, %struct.anon.50 { i8 32, [8 x i32] [i32 -1988554186, i32 2022149939, i32 -230655131, i32 845438383, i32 -704982899, i32 2009263828, i32 70749983, i32 -805555559], [8 x i32] [i32 2002351428, i32 1794170884, i32 -230655131, i32 457031821, i32 1693464464, i32 2009263828, i32 70749983, i32 -1985330108], i8 32 }, %struct.anon.50 { i8 63, [8 x i32] [i32 1152273028, i32 -1093351033, i32 1826830777, i32 665724692, i32 -1284798097, i32 929887284, i32 -451204363, i32 -704226734], [8 x i32] [i32 1152273028, i32 921300861, i32 1017367592, i32 1650676211, i32 253087707, i32 -1203338813, i32 -23174740, i32 1607836859], i8 23 }, %struct.anon.50 { i8 -114, [8 x i32] [i32 3294126, i32 1977324710, i32 725215913, i32 -1831341776, i32 860738959, i32 -1702122070, i32 -1418174409, i32 451575660], [8 x i32] [i32 1746542018, i32 1977324710, i32 277223391, i32 -1831341776, i32 -573837518, i32 -730376292, i32 595586999, i32 809396590], i8 14 }], align 16
@test_simde_x_mm512_cmpge_epu32.test_vec = internal constant [8 x %struct.anon.51] [%struct.anon.51 { [16 x i32] [i32 1989557529, i32 -811061537, i32 1366001146, i32 -335003652, i32 676998334, i32 -1028748438, i32 -1693391324, i32 -1842790791, i32 1527299963, i32 -399855122, i32 859411766, i32 -1826668075, i32 -675579539, i32 681208324, i32 -893146544, i32 1683811560], [16 x i32] [i32 1989557529, i32 -811061537, i32 1400879998, i32 1793564412, i32 474063384, i32 -1028748438, i32 1848051846, i32 -1580039179, i32 -29650456, i32 -399855122, i32 1951189624, i32 -2116144279, i32 -493018922, i32 681208324, i32 -893146544, i32 -763247894], [16 x i32] [i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 0] }, %struct.anon.51 { [16 x i32] [i32 1593863780, i32 1004617552, i32 -1877225050, i32 -412967789, i32 -776588456, i32 918715727, i32 -645584751, i32 -789162388, i32 338687684, i32 -598732746, i32 1970039777, i32 1616694792, i32 1362235906, i32 562558096, i32 -1996878564, i32 660140387], [16 x i32] [i32 490440935, i32 2063174552, i32 -1088009, i32 912214836, i32 -293105314, i32 918715727, i32 2133527068, i32 -789162388, i32 -1543446261, i32 1679751533, i32 -1822225057, i32 -1228291496, i32 1362235906, i32 562558096, i32 -1996878564, i32 660140387], [16 x i32] [i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1] }, %struct.anon.51 { [16 x i32] [i32 10926496, i32 729490285, i32 -169576758, i32 -1741914346, i32 -1333328357, i32 77912831, i32 157428624, i32 466974587, i32 -1659143120, i32 1774753695, i32 593472525, i32 1186761515, i32 -1862909039, i32 -1365927394, i32 1085798341, i32 -1638101650], [16 x i32] [i32 -1472497911, i32 454099726, i32 -169576758, i32 -1927152645, i32 1545410622, i32 2014032562, i32 414761642, i32 1488393295, i32 -1711213940, i32 -1514794250, i32 2122380674, i32 772514544, i32 1821059258, i32 -2048616741, i32 -1466065576, i32 1023431857], [16 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1] }, %struct.anon.51 { [16 x i32] [i32 573254727, i32 463933634, i32 1589855405, i32 -526597223, i32 -685935420, i32 -2056388862, i32 1744339042, i32 -433677921, i32 -2012720442, i32 262385506, i32 -1938987277, i32 -294909654, i32 2143717757, i32 -352046199, i32 1381235891, i32 1547205014], [16 x i32] [i32 573254727, i32 463933634, i32 1589855405, i32 -526597223, i32 -685935420, i32 -1277512448, i32 1191587249, i32 1923301030, i32 1855948927, i32 -28189680, i32 957858182, i32 -294909654, i32 2143717757, i32 -2120299568, i32 -1630952200, i32 1645243619], [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0] }, %struct.anon.51 { [16 x i32] [i32 -1592888367, i32 908241982, i32 886434641, i32 1284957528, i32 558982805, i32 1798526088, i32 -1494515858, i32 113864245, i32 547870689, i32 -732509821, i32 218639285, i32 -1504076271, i32 -1916229115, i32 1828322302, i32 -1357716358, i32 884333394], [16 x i32] [i32 911498418, i32 908241982, i32 -404220970, i32 1284957528, i32 558982805, i32 1798526088, i32 -1494515858, i32 -139972539, i32 -1288831859, i32 -732509821, i32 218639285, i32 -1548488265, i32 -1752238266, i32 1432610100, i32 -1815486898, i32 -1685360370], [16 x i32] [i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 0] }, %struct.anon.51 { [16 x i32] [i32 381893602, i32 1869293088, i32 302134532, i32 346983846, i32 908655686, i32 728938713, i32 -1858753876, i32 2008933269, i32 1066237982, i32 -1431373658, i32 -725831635, i32 -2065143234, i32 1085935719, i32 1969958088, i32 1795596758, i32 -1562197116], [16 x i32] [i32 -371101885, i32 -1785491608, i32 2120831040, i32 346983846, i32 711048289, i32 -1080046103, i32 -232020626, i32 2008933269, i32 -443124099, i32 1165633797, i32 -725831635, i32 -1755986635, i32 1807857538, i32 -232103804, i32 1795596758, i32 -1562197116], [16 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 -1] }, %struct.anon.51 { [16 x i32] [i32 414167444, i32 369809937, i32 -1836716497, i32 1433575527, i32 726218577, i32 -1702919305, i32 1123223424, i32 2038948837, i32 -1517144428, i32 1086102544, i32 -221101685, i32 843531745, i32 -211971716, i32 -1802576620, i32 -908688924, i32 -113025691], [16 x i32] [i32 414167444, i32 -52143247, i32 2112796572, i32 1433575527, i32 -613675833, i32 -1702919305, i32 1123223424, i32 937089699, i32 -1517144428, i32 1880998100, i32 -221101685, i32 166435906, i32 -1830529112, i32 -849325231, i32 1001256856, i32 -2123200558], [16 x i32] [i32 -1, i32 0, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1] }, %struct.anon.51 { [16 x i32] [i32 -1945568453, i32 -430348210, i32 824313695, i32 -1884056434, i32 -261925406, i32 -512382955, i32 -1477480999, i32 -1944254895, i32 1326982401, i32 -331976051, i32 119429241, i32 -812199444, i32 1019214374, i32 2065511842, i32 -215872094, i32 360660755], [16 x i32] [i32 -1945568453, i32 -2082563574, i32 824313695, i32 -206691891, i32 -261925406, i32 1161317794, i32 1832409946, i32 -8210278, i32 1525737296, i32 1960693377, i32 -1756141622, i32 -1551171192, i32 291551854, i32 1633065223, i32 -1899000076, i32 360660755], [16 x i32] [i32 -1, i32 -1, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1] }], align 16
@test_simde_mm512_cmpge_epu32_mask.test_vec = internal constant [8 x %struct.anon.52] [%struct.anon.52 { [16 x i32] [i32 397728546, i32 1478408998, i32 -1222079601, i32 476226706, i32 1247373219, i32 -476098775, i32 863216225, i32 607670530, i32 1379658796, i32 933910952, i32 2012140517, i32 445927799, i32 -496702024, i32 -1648032964, i32 -1462749018, i32 -1244919415], [16 x i32] [i32 397728546, i32 1188409953, i32 -54672507, i32 -854175468, i32 2058320702, i32 -476098775, i32 863216225, i32 -420701967, i32 1379658796, i32 709319077, i32 2012140517, i32 -1795277482, i32 -496702024, i32 -832887263, i32 -16439538, i32 -1244919415], i16 -26781 }, %struct.anon.52 { [16 x i32] [i32 -586766661, i32 -609525300, i32 1239068809, i32 -2035695455, i32 -317715926, i32 1590543538, i32 -1218323041, i32 -1484261140, i32 1787072158, i32 2017800431, i32 -2101272352, i32 185101024, i32 653793396, i32 2089141724, i32 -1892424029, i32 2083961822], [16 x i32] [i32 954645321, i32 -877581077, i32 1239068809, i32 1362580957, i32 -317715926, i32 -1731789323, i32 -1218323041, i32 -46309708, i32 1787072158, i32 2017800431, i32 -2101272352, i32 -527892622, i32 653793396, i32 2089141724, i32 -1633557015, i32 1553718851], i16 -18593 }, %struct.anon.52 { [16 x i32] [i32 -855062064, i32 -1565669703, i32 -297775445, i32 776657964, i32 1719642797, i32 645426137, i32 -723140576, i32 1639416977, i32 103792717, i32 833150086, i32 1461709099, i32 1921345989, i32 -321387501, i32 -1877847952, i32 -1570441455, i32 -939320453], [16 x i32] [i32 -855062064, i32 982677263, i32 -297775445, i32 764876570, i32 -1961201637, i32 -786748224, i32 -1619820764, i32 1986557851, i32 -1193789783, i32 233990829, i32 909280284, i32 -1234908517, i32 -321387501, i32 -825467478, i32 -1570441455, i32 1626265270], i16 -10673 }, %struct.anon.52 { [16 x i32] [i32 284697189, i32 1574880384, i32 -1160426492, i32 790283042, i32 -1142344822, i32 -855068610, i32 1861716906, i32 -663955597, i32 2062050810, i32 769115945, i32 921218067, i32 -110820753, i32 1941196341, i32 -1455375106, i32 -1156106424, i32 160662543], [16 x i32] [i32 284697189, i32 1447057987, i32 -1160426492, i32 790283042, i32 1054024511, i32 -855068610, i32 1524891211, i32 1801680514, i32 2062050810, i32 1183628864, i32 280762598, i32 1232087818, i32 780616782, i32 -1554616744, i32 -1156106424, i32 160662543], i16 -513 }, %struct.anon.52 { [16 x i32] [i32 -1707911358, i32 859670982, i32 1931623363, i32 -451576419, i32 -311562922, i32 -831898543, i32 2102720711, i32 948053238, i32 1121105276, i32 24448830, i32 -395012277, i32 1808632341, i32 -916899209, i32 1050133367, i32 -1313018949, i32 -1930871280], [16 x i32] [i32 835632115, i32 372458443, i32 -268523558, i32 -1453601999, i32 2087891973, i32 -831898543, i32 82081780, i32 -1466904907, i32 1121105276, i32 2087324833, i32 -395012277, i32 1808632341, i32 -223018886, i32 -31100919, i32 -1677587993, i32 1631884247], i16 -12933 }, %struct.anon.52 { [16 x i32] [i32 1554885203, i32 39506459, i32 -1281401380, i32 -518724624, i32 745851393, i32 1913291754, i32 1060032254, i32 1962550049, i32 -372201266, i32 1458252666, i32 2013956744, i32 1868111470, i32 -761540888, i32 1329964625, i32 -1785826444, i32 1695123863], [16 x i32] [i32 -1420895695, i32 -1929234171, i32 839191748, i32 329342506, i32 2128952620, i32 1913291754, i32 904748190, i32 379254501, i32 -372201266, i32 1458252666, i32 -99129393, i32 -233981498, i32 -646909194, i32 1329964625, i32 -1785826444, i32 -459961836], i16 25580 }, %struct.anon.52 { [16 x i32] [i32 1617379, i32 -2051323413, i32 2047126374, i32 -1486907083, i32 154802671, i32 -1175211211, i32 -1929128380, i32 -1429389113, i32 -659888659, i32 -1789041362, i32 1158635792, i32 -370381062, i32 -1108138361, i32 511108826, i32 -2085913924, i32 -1490192198], [16 x i32] [i32 -1937778850, i32 -2051323413, i32 932262205, i32 656440735, i32 154802671, i32 -1231267079, i32 -1908848684, i32 506816448, i32 2074784830, i32 -842543984, i32 -1677436419, i32 2059609558, i32 855156536, i32 -689400830, i32 -1671093796, i32 -944072056], i16 6590 }, %struct.anon.52 { [16 x i32] [i32 927050805, i32 470624576, i32 -742886838, i32 1553625613, i32 121363671, i32 1211492581, i32 1887567770, i32 -1048628084, i32 569950432, i32 876414697, i32 -2063075720, i32 1071751528, i32 1648827773, i32 -1616217083, i32 118500219, i32 1086951264], [16 x i32] [i32 962707792, i32 1080926151, i32 -37391211, i32 -1841453291, i32 -906656572, i32 2070519552, i32 1887567770, i32 1483426568, i32 569950432, i32 18153324, i32 -2063075720, i32 1159478145, i32 -1089596993, i32 -1616217083, i32 -106512912, i32 357634568], i16 -22592 }], align 16
@test_simde_mm512_mask_cmpge_epu32_mask.test_vec = internal constant [8 x %struct.anon.53] [%struct.anon.53 { i16 8372, [16 x i32] [i32 -1106924275, i32 356073252, i32 84861180, i32 -786800654, i32 639370307, i32 -612538365, i32 943021490, i32 1736364890, i32 -1524268160, i32 -1078304830, i32 834979903, i32 1778572839, i32 -426762525, i32 952176006, i32 -982387093, i32 1244458954], [16 x i32] [i32 888099442, i32 356073252, i32 -1725843599, i32 2030248854, i32 -950037439, i32 218046625, i32 943021490, i32 -785645985, i32 -1524268160, i32 921827780, i32 1204753073, i32 1992348213, i32 138223462, i32 1444166719, i32 204990125, i32 1244458954], i16 32 }, %struct.anon.53 { i16 23504, [16 x i32] [i32 -1654852472, i32 -2105341622, i32 -186292458, i32 -791125093, i32 519484837, i32 426061380, i32 2125430683, i32 -2002885888, i32 -1574569385, i32 438609924, i32 -1441920753, i32 293267052, i32 -550539109, i32 972658078, i32 347580436, i32 1671255307], [16 x i32] [i32 1409663568, i32 2054039915, i32 -186292458, i32 -38822046, i32 -1361191152, i32 -1998006668, i32 -1986158722, i32 1173109493, i32 1738142204, i32 438609924, i32 -437647485, i32 293267052, i32 -312098951, i32 326454677, i32 -509799700, i32 1227262284], i16 2944 }, %struct.anon.53 { i16 -25605, [16 x i32] [i32 1118332620, i32 374642041, i32 -1650417290, i32 -1705239574, i32 -1842535504, i32 -1688222100, i32 -39009018, i32 1901624485, i32 1555235298, i32 208799894, i32 -1817636183, i32 -567474643, i32 -1787798999, i32 657510177, i32 975494293, i32 1001094489], [16 x i32] [i32 345464702, i32 270535271, i32 1252248092, i32 -114765616, i32 1284413483, i32 -42746008, i32 -197683045, i32 -1825512939, i32 -1465399487, i32 -289880111, i32 -1817636183, i32 1465540652, i32 1621355000, i32 1130174120, i32 975494293, i32 -1202296713], i16 6227 }, %struct.anon.53 { i16 -28770, [16 x i32] [i32 1035052000, i32 533881063, i32 2055686435, i32 1652012545, i32 -1501807433, i32 1271787923, i32 -1973594990, i32 -1272620588, i32 -470690052, i32 1510130486, i32 248809740, i32 -143635648, i32 463400072, i32 1868983261, i32 -1795570752, i32 424156700], [16 x i32] [i32 737950197, i32 159776765, i32 -937993848, i32 767592613, i32 1380474484, i32 1271787923, i32 -1973594990, i32 -827890215, i32 -1661295713, i32 1510130486, i32 248809740, i32 -1179929787, i32 -619973871, i32 308596129, i32 1637909128, i32 -2043656217], i16 3866 }, %struct.anon.53 { i16 2008, [16 x i32] [i32 -1336131764, i32 -231545774, i32 1966742085, i32 -1012980320, i32 1804290482, i32 -870903605, i32 1568110298, i32 871110375, i32 -1478211499, i32 1922700844, i32 -773336016, i32 -1416329223, i32 -1693048880, i32 157756719, i32 -1956192348, i32 1254052853], [16 x i32] [i32 -923622501, i32 -365261639, i32 1505436000, i32 2013548456, i32 -1659626642, i32 -324633784, i32 1333267546, i32 -73779361, i32 -1478211499, i32 1922700844, i32 -942589922, i32 -180365945, i32 965891056, i32 157756719, i32 -1535533755, i32 -1365306412], i16 1864 }, %struct.anon.53 { i16 -7252, [16 x i32] [i32 608217087, i32 1237485008, i32 -916679127, i32 -2027160763, i32 -515470414, i32 1323384329, i32 869447614, i32 2084219517, i32 580942417, i32 694903551, i32 1056098553, i32 1992629699, i32 -1319695448, i32 150944074, i32 1832637168, i32 -823560836], [16 x i32] [i32 608217087, i32 -451388436, i32 -916679127, i32 -799152088, i32 1031976179, i32 -582647315, i32 -800423853, i32 2084219517, i32 -1445622083, i32 227471081, i32 1056098553, i32 1992629699, i32 -204836091, i32 1221595124, i32 -2045240432, i32 191673934], i16 -32124 }, %struct.anon.53 { i16 30981, [16 x i32] [i32 1223860600, i32 23298793, i32 1958195720, i32 1924594621, i32 1672799528, i32 1452386317, i32 1301221684, i32 238042262, i32 -967433251, i32 -1362642267, i32 690126444, i32 -1583622023, i32 -888909634, i32 740398840, i32 1031451047, i32 -901010707], [16 x i32] [i32 1223860600, i32 -954116261, i32 1324434389, i32 -621835236, i32 -727321380, i32 1452386317, i32 1701739384, i32 238042262, i32 -1234780326, i32 -344094954, i32 -432443702, i32 -675272453, i32 -1498651108, i32 -1512592083, i32 1292518696, i32 1497381374], i16 4357 }, %struct.anon.53 { i16 -14832, [16 x i32] [i32 -182046179, i32 -516272425, i32 -602261092, i32 -1585245550, i32 422424608, i32 -2025117528, i32 -333011682, i32 979708700, i32 875531357, i32 1981114842, i32 877866914, i32 1641403969, i32 796525446, i32 1253492011, i32 -2026447766, i32 1690409735], [16 x i32] [i32 -182046179, i32 -59200167, i32 489737180, i32 679347873, i32 878180361, i32 -2025117528, i32 -256985879, i32 979708700, i32 -1183191969, i32 1981114842, i32 1603462589, i32 -192474901, i32 796525446, i32 -722688021, i32 -1396401316, i32 1690409735], i16 -32256 }], align 16
@test_simde_x_mm_cmpge_epi64.test_vec = internal constant [8 x %struct.anon.54] [%struct.anon.54 { [2 x i64] [i64 -5413701711126883235, i64 -7189676535904208844], [2 x i64] [i64 3528541057930929936, i64 -4499001035972542309], [2 x i64] zeroinitializer }, %struct.anon.54 { [2 x i64] [i64 1199024682873251021, i64 -2079181399449670587], [2 x i64] [i64 8712042758086888176, i64 -2603441164525876126], [2 x i64] [i64 0, i64 -1] }, %struct.anon.54 { [2 x i64] [i64 8653246967611995526, i64 5381991225391619584], [2 x i64] [i64 8653246967611995526, i64 3914762432369317123], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.54 { [2 x i64] [i64 -5326326818828680608, i64 -8190367801926248902], [2 x i64] [i64 5985181552393271410, i64 6226675041952251779], [2 x i64] zeroinitializer }, %struct.anon.54 { [2 x i64] [i64 3276595000163636172, i64 -8771438780132075336], [2 x i64] [i64 3276595000163636172, i64 -5302270670658104190], [2 x i64] [i64 -1, i64 0] }, %struct.anon.54 { [2 x i64] [i64 -4942557005705745768, i64 -215290055398174833], [2 x i64] [i64 -3083792146534726399, i64 -215290055398174833], [2 x i64] [i64 0, i64 -1] }, %struct.anon.54 { [2 x i64] [i64 1095600381008478844, i64 -5713042595807950289], [2 x i64] [i64 5702950127994083538, i64 -5713042595807950289], [2 x i64] [i64 0, i64 -1] }, %struct.anon.54 { [2 x i64] [i64 -4898352287826608953, i64 -7453525838769812032], [2 x i64] [i64 2082349459312377287, i64 -924197607614952722], [2 x i64] zeroinitializer }], align 16
@.str.91 = private unnamed_addr constant [38 x i8] c"simde_x_mm_loadu_epi64(test_vec[i].r)\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%ld == %ld)\0A\00", align 1
@test_simde_mm_cmpge_epi64_mask.test_vec = internal constant [8 x %struct.anon.55] [%struct.anon.55 { [2 x i64] [i64 5188667230373125871, i64 -2279717140316963248], [2 x i64] [i64 2156321821549209789, i64 -312218369263396365], i8 1 }, %struct.anon.55 { [2 x i64] [i64 1274778217703325680, i64 -4300761828966660405], [2 x i64] [i64 1274778217703325680, i64 4544013617341617058], i8 1 }, %struct.anon.55 { [2 x i64] [i64 5829736466713369648, i64 2481537901506055818], [2 x i64] [i64 -4973865648332135585, i64 2481537901506055818], i8 3 }, %struct.anon.55 { [2 x i64] [i64 -6102991312497709928, i64 -6322988996551188308], [2 x i64] [i64 -3160537902540141599, i64 -335670577216443611], i8 0 }, %struct.anon.55 { [2 x i64] [i64 2713449874416770427, i64 4775295906199153465], [2 x i64] [i64 2713449874416770427, i64 4775295906199153465], i8 3 }, %struct.anon.55 { [2 x i64] [i64 -2963057984803942003, i64 4369676323020878996], [2 x i64] [i64 -2963057984803942003, i64 5499554575210773050], i8 1 }, %struct.anon.55 { [2 x i64] [i64 979499888025607810, i64 8188310801589931706], [2 x i64] [i64 979499888025607810, i64 5927914480708453311], i8 3 }, %struct.anon.55 { [2 x i64] [i64 -7900671302666403402, i64 876624223417378188], [2 x i64] [i64 -7900671302666403402, i64 5828563478703130637], i8 1 }], align 16
@test_simde_mm_mask_cmpge_epi64_mask.test_vec = internal constant [8 x %struct.anon.56] [%struct.anon.56 { i8 113, [2 x i64] [i64 -6584527251079706722, i64 -40467790019513027], [2 x i64] [i64 5687492607806777134, i64 8616792196076898650], i8 0 }, %struct.anon.56 { i8 -63, [2 x i64] [i64 -3761133081519446497, i64 -2557513290049976441], [2 x i64] [i64 2457651362403158599, i64 -209753976479540947], i8 0 }, %struct.anon.56 { i8 -4, [2 x i64] [i64 -478060564186207401, i64 2122045929627009228], [2 x i64] [i64 -7295178333472897047, i64 2122045929627009228], i8 0 }, %struct.anon.56 { i8 -5, [2 x i64] [i64 -8671229328474107340, i64 -6667646768429486558], [2 x i64] [i64 2594626402425161911, i64 -3652261413389150343], i8 0 }, %struct.anon.56 { i8 -53, [2 x i64] [i64 -6484811385973488256, i64 -3750401750153182231], [2 x i64] [i64 -5326734292916835876, i64 -3750401750153182231], i8 2 }, %struct.anon.56 { i8 117, [2 x i64] [i64 8079617036198410845, i64 -2043986743729650422], [2 x i64] [i64 -8400170419617380689, i64 -2043986743729650422], i8 1 }, %struct.anon.56 { i8 47, [2 x i64] [i64 -6203537153921202156, i64 5284853097796679037], [2 x i64] [i64 7939235697720225811, i64 -6138385859422296856], i8 2 }, %struct.anon.56 { i8 46, [2 x i64] [i64 -2332217547218812498, i64 -1859944557669108688], [2 x i64] [i64 5132829156955063539, i64 -2889484492792705523], i8 2 }], align 16
@test_simde_x_mm256_cmpge_epi64.test_vec = internal constant [8 x %struct.anon.57] [%struct.anon.57 { [4 x i64] [i64 -1809812392385594053, i64 8473630397573938694, i64 -9037984721552467452, i64 -9144184911774117410], [4 x i64] [i64 -1809812392385594053, i64 -1345651694353020950, i64 5164627569191930210, i64 -9144184911774117410], [4 x i64] [i64 -1, i64 -1, i64 0, i64 -1] }, %struct.anon.57 { [4 x i64] [i64 3532922485006123327, i64 -8265233259980432450, i64 1421566123145820016, i64 -3078792439534943464], [4 x i64] [i64 4695291246103432367, i64 -5254665817519142815, i64 7679451357592021156, i64 -8227144279407267993], [4 x i64] [i64 0, i64 0, i64 0, i64 -1] }, %struct.anon.57 { [4 x i64] [i64 4521756924712038105, i64 959863462630380334, i64 -5663133786394074110, i64 -1798410635541857327], [4 x i64] [i64 -2835330793375454863, i64 959863462630380334, i64 5072898666480989153, i64 -2828404155998886710], [4 x i64] [i64 -1, i64 -1, i64 0, i64 -1] }, %struct.anon.57 { [4 x i64] [i64 4460486142045317058, i64 -3789743529673530671, i64 -2787583641678393682, i64 -5550419425314664704], [4 x i64] [i64 -4063919262460796454, i64 7102988824090415985, i64 2880943829427069872, i64 8781111760385912122], [4 x i64] [i64 -1, i64 0, i64 0, i64 0] }, %struct.anon.57 { [4 x i64] [i64 -5239059637249675245, i64 -6352902865755185918, i64 2126996986217287711, i64 8730066684474712162], [4 x i64] [i64 -1325947337826251555, i64 -4229313641416969690, i64 1936727853712219205, i64 -4475862370322516477], [4 x i64] [i64 0, i64 0, i64 -1, i64 -1] }, %struct.anon.57 { [4 x i64] [i64 -7712748689387734232, i64 1751189285661983812, i64 -8680523753921041124, i64 8266614721571482144], [4 x i64] [i64 -240740583109171162, i64 1751189285661983812, i64 6569132531855631616, i64 -8978336670972546390], [4 x i64] [i64 0, i64 -1, i64 0, i64 -1] }, %struct.anon.57 { [4 x i64] [i64 -4812470848165953569, i64 -8493212411705841026, i64 2083398337727646795, i64 6330995068213612609], [4 x i64] [i64 -4812470848165953569, i64 2444835393882475027, i64 -3822429591694749159, i64 4476677852304872272], [4 x i64] [i64 -1, i64 0, i64 -1, i64 -1] }, %struct.anon.57 { [4 x i64] [i64 806672329973525435, i64 8835292745349996204, i64 -1342703651524406972, i64 -8394389955972137700], [4 x i64] [i64 4885713555172210573, i64 -9145783634768561752, i64 3840007085531420472, i64 2687012460777273071], [4 x i64] [i64 0, i64 -1, i64 0, i64 0] }], align 16
@.str.93 = private unnamed_addr constant [39 x i8] c"simde_mm256_loadu_epi64(test_vec[i].r)\00", align 1
@test_simde_mm256_cmpge_epi64_mask.test_vec = internal constant [8 x %struct.anon.58] [%struct.anon.58 { [4 x i64] [i64 -1553801597950053330, i64 -935480046457748880, i64 6675133738829565683, i64 -4798470435622491131], [4 x i64] [i64 7112314052840532252, i64 -7758840547253804922, i64 6376561967254436957, i64 -4798470435622491131], i8 14 }, %struct.anon.58 { [4 x i64] [i64 -4264850420797930518, i64 -881631713714166972, i64 -6159640872690695446, i64 -6351906448927107268], [4 x i64] [i64 -4264850420797930518, i64 9051921424920265483, i64 -5399550449505408732, i64 4624529132544737480], i8 1 }, %struct.anon.58 { [4 x i64] [i64 -6421438094748528596, i64 -2025334045840998310, i64 -877816869365942910, i64 8106226732076695294], [4 x i64] [i64 -6421438094748528596, i64 -2025334045840998310, i64 5489174698692898564, i64 -1933893087299411595], i8 11 }, %struct.anon.58 { [4 x i64] [i64 -6496035860523874982, i64 7980279723324354945, i64 -4013645917726184419, i64 -6847143492814277352], [4 x i64] [i64 -6496035860523874982, i64 -3774446748152822001, i64 2051858038081345892, i64 -3961629225982876129], i8 3 }, %struct.anon.58 { [4 x i64] [i64 -1790084945383902488, i64 2586210916021552847, i64 -5169925097716228676, i64 4059340098397881651], [4 x i64] [i64 -1790084945383902488, i64 -9195733869720194530, i64 -8013983613385465459, i64 -3068690815753958687], i8 15 }, %struct.anon.58 { [4 x i64] [i64 7155786183952887025, i64 -5817737775148715867, i64 5543292697562778842, i64 -2279086465421846900], [4 x i64] [i64 7155786183952887025, i64 -437384496097664787, i64 5543292697562778842, i64 -952752149001541128], i8 5 }, %struct.anon.58 { [4 x i64] [i64 -8637867346661438988, i64 2655494563216559674, i64 -9027642973447675176, i64 2943103680132775554], [4 x i64] [i64 -9188422655512271733, i64 835903936037715257, i64 -9027642973447675176, i64 7740872885056757520], i8 7 }, %struct.anon.58 { [4 x i64] [i64 959519448770141346, i64 -5988393199170098784, i64 998674512700460679, i64 7196991629024643612], [4 x i64] [i64 7754511138334631349, i64 3548919702374299256, i64 2149524349211181209, i64 -2660404556659667473], i8 8 }], align 16
@test_simde_mm256_mask_cmpge_epi64_mask.test_vec = internal constant [8 x %struct.anon.59] [%struct.anon.59 { i8 46, [4 x i64] [i64 7560940960015976673, i64 3424815094089526823, i64 -3555093101321299192, i64 -980355283376554722], [4 x i64] [i64 -2647208707044419300, i64 5243354626461064551, i64 -723696529830833794, i64 -3555109552136282713], i8 8 }, %struct.anon.59 { i8 113, [4 x i64] [i64 -2447377936469909524, i64 8923744750240813550, i64 -3186901342884803466, i64 3001267885120328835], [4 x i64] [i64 -2447377936469909524, i64 -5667169644959188660, i64 -2673015751500792585, i64 -5511005241864992482], i8 1 }, %struct.anon.59 { i8 -43, [4 x i64] [i64 7891885730555686544, i64 -8734316980940294410, i64 -1182756792746859681, i64 895298770426874244], [4 x i64] [i64 -4802285500422083925, i64 -7668792105418834415, i64 -1182756792746859681, i64 895298770426874244], i8 5 }, %struct.anon.59 { i8 -101, [4 x i64] [i64 -266571087638769065, i64 -868300688820870779, i64 -8594651061647528016, i64 2026877965401770063], [4 x i64] [i64 -266571087638769065, i64 3706796210107667807, i64 -8594651061647528016, i64 5326884852233249291], i8 1 }, %struct.anon.59 { i8 65, [4 x i64] [i64 -3486779382465665853, i64 -7307389082824486935, i64 -4833640211480768068, i64 -64583953664166815], [4 x i64] [i64 8458240091017975026, i64 -7307389082824486935, i64 -1001764419734529146, i64 4644490284803146040], i8 0 }, %struct.anon.59 { i8 -128, [4 x i64] [i64 -774442663188062157, i64 1856284677182913302, i64 -5619992990462134798, i64 5190254623747818042], [4 x i64] [i64 -9037658558865748963, i64 -2669940886620401724, i64 4828859396145365803, i64 -1212293127209331248], i8 0 }, %struct.anon.59 { i8 81, [4 x i64] [i64 -786127177861772512, i64 890711613687001359, i64 -4927849853446414219, i64 4045888435747654639], [4 x i64] [i64 -7556338105726834002, i64 2952750244299424367, i64 -8625362396108367898, i64 4045888435747654639], i8 1 }, %struct.anon.59 { i8 -106, [4 x i64] [i64 917237635368410052, i64 7140602162193818280, i64 2340658828892020943, i64 6358557742640001307], [4 x i64] [i64 6183187947989172221, i64 1383709290838409723, i64 8969555693258912140, i64 6358557742640001307], i8 2 }], align 16
@test_simde_x_mm512_cmpge_epi64.test_vec = internal constant [8 x %struct.anon.60] [%struct.anon.60 { [8 x i64] [i64 7570376691530443017, i64 3289684820937220757, i64 3790105143712752584, i64 6006728001215729736, i64 -1964082568733200680, i64 -3862169822944382129, i64 4086318405415258100, i64 -7407758652632821356], [8 x i64] [i64 7570376691530443017, i64 3289684820937220757, i64 3484840098412762932, i64 -176131085664560588, i64 -8440851634034738030, i64 -8890640782157093959, i64 7276696805074111537, i64 -2372579735414174880], [8 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 0] }, %struct.anon.60 { [8 x i64] [i64 5657157878036038830, i64 -7970219937038128177, i64 670957890200583459, i64 -5292382637261439648, i64 4908421623015813810, i64 8296941477544868194, i64 -2084266664137602459, i64 733958476388018800], [8 x i64] [i64 9040966468863910845, i64 -3966486670323172560, i64 8819989853070678271, i64 -5912624946983246704, i64 -820404161041413115, i64 -2144441426221093615, i64 -8663013674008178623, i64 -2176537301655504594], [8 x i64] [i64 0, i64 0, i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1] }, %struct.anon.60 { [8 x i64] [i64 365007916690266699, i64 7877103885504050388, i64 5876729275000537553, i64 8652584957862121217, i64 3696529914487806850, i64 -8658364117993743061, i64 -5006662785045339376, i64 8211981797110368081], [8 x i64] [i64 9151037725803584876, i64 6764055128776965537, i64 2708657704864387619, i64 -7981054581316299812, i64 -7347520565216938698, i64 -8658364117993743061, i64 -5006662785045339376, i64 8211981797110368081], [8 x i64] [i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1] }, %struct.anon.60 { [8 x i64] [i64 -4947749713755829551, i64 -1596724743150500187, i64 4552569379353012936, i64 -5398453775604317018, i64 -3137727804260016160, i64 -519045144660089452, i64 1378107451162260262, i64 -7808159061613748983], [8 x i64] [i64 -4947749713755829551, i64 4670137271345618598, i64 -5360338346698561763, i64 -5398453775604317018, i64 -3137727804260016160, i64 3227320681447318895, i64 5244532106728958310, i64 -3163357956354249806], [8 x i64] [i64 -1, i64 0, i64 -1, i64 -1, i64 -1, i64 0, i64 0, i64 0] }, %struct.anon.60 { [8 x i64] [i64 -3132674179821162933, i64 4673803540222131306, i64 -6511849417263614438, i64 3648487334481559731, i64 5041801614756436661, i64 -6332704776289329329, i64 4451271163736573868, i64 -3805451426412359913], [8 x i64] [i64 2219685069888404652, i64 791534423647168454, i64 -6511849417263614438, i64 -2890802805631690752, i64 9041305793418154123, i64 -1424599226304596782, i64 6226787608523334976, i64 -3805451426412359913], [8 x i64] [i64 0, i64 -1, i64 -1, i64 -1, i64 0, i64 0, i64 0, i64 -1] }, %struct.anon.60 { [8 x i64] [i64 3612906089213076649, i64 -3625567061968946941, i64 -8744401234237187219, i64 4571628156567183835, i64 8572770613229704659, i64 -4154713208179919726, i64 -6446710679661894247, i64 7414425354655491087], [8 x i64] [i64 -8785918190524015831, i64 -3625567061968946941, i64 -137506180152947, i64 4571628156567183835, i64 -3864352698719695643, i64 7298493143538495729, i64 3145128571375076277, i64 7414425354655491087], [8 x i64] [i64 -1, i64 -1, i64 0, i64 -1, i64 -1, i64 0, i64 0, i64 -1] }, %struct.anon.60 { [8 x i64] [i64 -1107940233841359263, i64 -5115743814772499183, i64 -5183142170272455292, i64 -688202378524449797, i64 -2885453011856852791, i64 5260115047814629676, i64 5851216425395523539, i64 8710247208417537110], [8 x i64] [i64 907599435536273915, i64 -5115743814772499183, i64 -5725916420873541663, i64 1677727324396263713, i64 3421451716713301390, i64 5260115047814629676, i64 5851216425395523539, i64 5408927322476003548], [8 x i64] [i64 0, i64 -1, i64 -1, i64 0, i64 0, i64 -1, i64 -1, i64 -1] }, %struct.anon.60 { [8 x i64] [i64 369899257160234498, i64 -414155110797845547, i64 -2816717112864516383, i64 -2786959785664077077, i64 333016987749452080, i64 2058214554877270648, i64 8080481949329294230, i64 4608597555171054917], [8 x i64] [i64 -8843811769947656176, i64 1759408280097800979, i64 875254994404844591, i64 -1069008005885207844, i64 -8169119077475745010, i64 2058214554877270648, i64 1819018006161700458, i64 -7773161807303907507], [8 x i64] [i64 -1, i64 0, i64 0, i64 0, i64 -1, i64 -1, i64 -1, i64 -1] }], align 16
@.str.94 = private unnamed_addr constant [39 x i8] c"simde_mm512_loadu_epi64(test_vec[i].r)\00", align 1
@test_simde_mm512_cmpge_epi64_mask.test_vec = internal constant [8 x %struct.anon.61] [%struct.anon.61 { [8 x i64] [i64 -2070406487669628552, i64 6033198852448188866, i64 -8771555583276337456, i64 -6247784398762580305, i64 5421483137630060159, i64 -6091085634613302848, i64 -6098927215402166741, i64 -5361333910066565601], [8 x i64] [i64 -4700505673719400200, i64 4011118774330795803, i64 -8771555583276337456, i64 -5152602031313986136, i64 5421483137630060159, i64 5377004911177899809, i64 -6098927215402166741, i64 -5361333910066565601], i8 -41 }, %struct.anon.61 { [8 x i64] [i64 -3063590015048229106, i64 -4372310828088001350, i64 2492401349229931920, i64 -8916306517105278411, i64 5745159163347787721, i64 -3246098094953558599, i64 3764134979146192977, i64 2071041554726676674], [8 x i64] [i64 -3063590015048229106, i64 -8120843085131959426, i64 2492401349229931920, i64 -8916306517105278411, i64 5745159163347787721, i64 5216882201505415066, i64 -866871744191073277, i64 2071041554726676674], i8 -33 }, %struct.anon.61 { [8 x i64] [i64 1631201269732211482, i64 -1778412233284305250, i64 2892346289493979719, i64 -1671051179763429497, i64 4626915955823893559, i64 -1449619988363544355, i64 -186057200457070430, i64 -4479664861571625186], [8 x i64] [i64 1631201269732211482, i64 -3196899116407668300, i64 -5003077546601513827, i64 -1671051179763429497, i64 4626915955823893559, i64 -1449619988363544355, i64 -244866230786263450, i64 -4479664861571625186], i8 -1 }, %struct.anon.61 { [8 x i64] [i64 6848597962113556279, i64 5737131772028018935, i64 -3772983710966437864, i64 7018232378220900620, i64 923820387530613988, i64 -5975650444467555632, i64 -649815498661194527, i64 8558449954491867318], [8 x i64] [i64 6848597962113556279, i64 -4499318267031935411, i64 7710141345086656713, i64 7018232378220900620, i64 923820387530613988, i64 -911841306946374473, i64 4750447914218441165, i64 -7640472553337525139], i8 -101 }, %struct.anon.61 { [8 x i64] [i64 -1153370640605693277, i64 1132080221335667828, i64 -1465132411842238730, i64 -5706615493297889979, i64 -6986169154367274087, i64 2697355968751665768, i64 3665890805737483329, i64 7027787086634162021], [8 x i64] [i64 -1153370640605693277, i64 1132080221335667828, i64 108886406931043118, i64 -4220331205228729618, i64 -6986169154367274087, i64 2697355968751665768, i64 3665890805737483329, i64 -5751750833037396153], i8 -13 }, %struct.anon.61 { [8 x i64] [i64 4710425771568093719, i64 -5388253254782416154, i64 5700295880660371918, i64 -6342197767696188539, i64 1631127906549316429, i64 -2532615895400845786, i64 5715459121382704668, i64 7242361527322268809], [8 x i64] [i64 4710425771568093719, i64 -1713807894409840568, i64 -4488895985528111206, i64 -8643925628399479617, i64 5151605598035325941, i64 -2532615895400845786, i64 -4505019085183924778, i64 7242361527322268809], i8 -19 }, %struct.anon.61 { [8 x i64] [i64 -6849446161879530233, i64 2764540273332043607, i64 -1949062962900069623, i64 293241014071293751, i64 7480339412603055661, i64 1080262500340732740, i64 3883464065613460848, i64 -2560484415599595700], [8 x i64] [i64 -3218663528601546274, i64 -5052773796691313656, i64 -1949062962900069623, i64 293241014071293751, i64 5711769694809244895, i64 1080262500340732740, i64 3883464065613460848, i64 -2560484415599595700], i8 -2 }, %struct.anon.61 { [8 x i64] [i64 -8942631822463564757, i64 -4201418977405660276, i64 -5114839028479455467, i64 3271557684383008634, i64 7267829963420562845, i64 -6372503786117725673, i64 3765978758849136146, i64 2489876541376326684], [8 x i64] [i64 -8942631822463564757, i64 -4201418977405660276, i64 -5114839028479455467, i64 -3566541239550304114, i64 7267829963420562845, i64 -6372503786117725673, i64 -4856433806884225568, i64 2489876541376326684], i8 -1 }], align 16
@test_simde_mm512_mask_cmpge_epi64_mask.test_vec = internal constant [8 x %struct.anon.62] [%struct.anon.62 { i8 -47, [8 x i64] [i64 -6575068657072266552, i64 4013434222016497330, i64 -8548118326975907316, i64 8183997823267763076, i64 6273992175176055688, i64 7104768532289929528, i64 -5646205320154303889, i64 266591417202906522], [8 x i64] [i64 -7992059370065123814, i64 4537812918492961089, i64 -9034786100595834434, i64 7174366463707588882, i64 6273992175176055688, i64 5034552175911107281, i64 -5646205320154303889, i64 6387620748358566648], i8 81 }, %struct.anon.62 { i8 111, [8 x i64] [i64 -8726958688954715651, i64 2348064657815265231, i64 4943179416380037331, i64 2029177430987799426, i64 -1270772521671818873, i64 -1428729495098222417, i64 -4846793239176247302, i64 -7029206327740858313], [8 x i64] [i64 -2464363797335908417, i64 8498035739473893610, i64 4943179416380037331, i64 -6530556018687301463, i64 -8018570463250426964, i64 -1428729495098222417, i64 -2781886260586838381, i64 4176516411458961257], i8 44 }, %struct.anon.62 { i8 12, [8 x i64] [i64 -5284835417757542766, i64 3231261734394529964, i64 -7702860583741675688, i64 1892023704047486981, i64 -7760027718238901913, i64 5438336189025367263, i64 2932321791485030656, i64 5250700056402202683], [8 x i64] [i64 -4386735952901435996, i64 -315101360870645406, i64 2883651684860967609, i64 1892023704047486981, i64 8322238771167290327, i64 -3413614066788692311, i64 6608945048697223330, i64 4955112350321845166], i8 8 }, %struct.anon.62 { i8 38, [8 x i64] [i64 6580309514420159303, i64 4323235294646952096, i64 -2854739368375359667, i64 3780750916656655853, i64 3453475380024089583, i64 5686216749242960150, i64 7920446909963276903, i64 6026748019143637122], [8 x i64] [i64 -3194790749406918678, i64 1219185400858356124, i64 3884933792621895421, i64 -270700785302191482, i64 -7899561177117285169, i64 5116681035822653512, i64 7920446909963276903, i64 6592957097143715184], i8 34 }, %struct.anon.62 { i8 -107, [8 x i64] [i64 8256145186417101759, i64 -1901539801125486723, i64 -8075572483040666109, i64 4188905638352513972, i64 -4033070998238227897, i64 1093124613165264038, i64 2223057936730922413, i64 -4790920199373489458], [8 x i64] [i64 8256145186417101759, i64 1233802005419185157, i64 -4144098940266342923, i64 -6926093320673323090, i64 -8047764809552743894, i64 -3899623782060360596, i64 2131230047789923285, i64 6894485686540411453], i8 17 }, %struct.anon.62 { i8 27, [8 x i64] [i64 6387567845343640336, i64 -6395142235670220196, i64 7177395286356741669, i64 -382016612990813437, i64 -6089588735407940599, i64 5588382373049615585, i64 -6369725245391869638, i64 -3273987420436824917], [8 x i64] [i64 6387567845343640336, i64 -6395142235670220196, i64 -6930139377291443064, i64 -7076627204981549522, i64 -1038911804270525921, i64 5588382373049615585, i64 -4297332797590510392, i64 -3273987420436824917], i8 11 }, %struct.anon.62 { i8 -121, [8 x i64] [i64 8723807916393646149, i64 -4873224461424275924, i64 7592657604444409744, i64 -7784228625124827672, i64 -5209558062182147547, i64 2784368709940134588, i64 2892887938482091999, i64 2979973399914555000], [8 x i64] [i64 -2190132446079273384, i64 4365796037345431001, i64 7592657604444409744, i64 -1697569471584300732, i64 -4305045508150471364, i64 -7327978410218353996, i64 -6345983766456089188, i64 -2624929393919682021], i8 -123 }, %struct.anon.62 { i8 -12, [8 x i64] [i64 2269982273795165209, i64 1313407837233383829, i64 -3049344353417698280, i64 -3544870893159460919, i64 -461001704210314078, i64 6720868476083772603, i64 5513396069940524599, i64 -2894300305127432365], [8 x i64] [i64 8325728238115653421, i64 3219207272498897673, i64 6463331796801716962, i64 -3544870893159460919, i64 -3248803111423910979, i64 6720868476083772603, i64 7615716627811896912, i64 374823820463903162], i8 48 }], align 16
@test_simde_x_mm_cmpge_epu64.test_vec = internal constant [8 x %struct.anon.63] [%struct.anon.63 { [2 x i64] [i64 -2352905057383440837, i64 8124269835523436432], [2 x i64] [i64 -2352905057383440837, i64 8124269835523436432], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.63 { [2 x i64] [i64 2314953929543021848, i64 -6466143292976955548], [2 x i64] [i64 -1241134776851393128, i64 -4339331852395046090], [2 x i64] zeroinitializer }, %struct.anon.63 { [2 x i64] [i64 -2822815220341906892, i64 -3723328547528588677], [2 x i64] [i64 3855254737132114719, i64 2576581182599539556], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.63 { [2 x i64] [i64 1445242718108106872, i64 -6237968978658363577], [2 x i64] [i64 1445242718108106872, i64 7227231683006417366], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.63 { [2 x i64] [i64 -2434995262467235664, i64 7521103879243987139], [2 x i64] [i64 119038582845522947, i64 -6402901545993006465], [2 x i64] [i64 -1, i64 0] }, %struct.anon.63 { [2 x i64] [i64 -6047504693973833883, i64 -5888452546317503709], [2 x i64] [i64 -6047504693973833883, i64 2021216518760173793], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.63 { [2 x i64] [i64 -6414444567005955402, i64 -2640646202061056044], [2 x i64] [i64 -6414444567005955402, i64 -2640646202061056044], [2 x i64] [i64 -1, i64 -1] }, %struct.anon.63 { [2 x i64] [i64 3322935814565715595, i64 3422958088326046348], [2 x i64] [i64 3322935814565715595, i64 3422958088326046348], [2 x i64] [i64 -1, i64 -1] }], align 16
@.str.95 = private unnamed_addr constant [58 x i8] c"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%lu == %lu)\0A\00", align 1
@test_simde_mm_cmpge_epu64_mask.test_vec = internal constant [8 x %struct.anon.64] [%struct.anon.64 { [2 x i64] [i64 2918548540063498496, i64 -1094683748773740885], [2 x i64] [i64 2918548540063498496, i64 -1094683748773740885], i8 3 }, %struct.anon.64 { [2 x i64] [i64 -2078964349365532441, i64 -3426995207604202444], [2 x i64] [i64 2215711382947317265, i64 -3426995207604202444], i8 3 }, %struct.anon.64 { [2 x i64] [i64 -875399092786674017, i64 842140894052343544], [2 x i64] [i64 -875399092786674017, i64 -4391949563094373127], i8 1 }, %struct.anon.64 { [2 x i64] [i64 -2503796830458734199, i64 -3511941316437020894], [2 x i64] [i64 -1392456049419168986, i64 -3511941316437020894], i8 2 }, %struct.anon.64 { [2 x i64] [i64 5309968852701588608, i64 -9172280502279886178], [2 x i64] [i64 -3403360969231937979, i64 -624603455652734666], i8 0 }, %struct.anon.64 { [2 x i64] [i64 -3309186447708640328, i64 -8192722762208015030], [2 x i64] [i64 -5860703360467630195, i64 -3364393326359600643], i8 1 }, %struct.anon.64 { [2 x i64] [i64 1070111482701866809, i64 -2837489363667261493], [2 x i64] [i64 5355464566970120071, i64 8441719578711648959], i8 2 }, %struct.anon.64 { [2 x i64] [i64 6521846341947466689, i64 4678984719857153880], [2 x i64] [i64 8144036312604644680, i64 8596349922951053435], i8 0 }], align 16
@test_simde_mm_mask_cmpge_epu64_mask.test_vec = internal constant [8 x %struct.anon.65] [%struct.anon.65 { i8 -80, [2 x i64] [i64 -7094477773627805166, i64 5248942729709574738], [2 x i64] [i64 -7143500482936981608, i64 2080939048733152210], i8 0 }, %struct.anon.65 { i8 -36, [2 x i64] [i64 -3382883302192235333, i64 4624177172606094127], [2 x i64] [i64 5557354177436146824, i64 -8897406654267712582], i8 0 }, %struct.anon.65 { i8 13, [2 x i64] [i64 -264316523644299558, i64 7058693387832571032], [2 x i64] [i64 3976005982177306291, i64 7117235007847742565], i8 1 }, %struct.anon.65 { i8 12, [2 x i64] [i64 1477204026685760603, i64 -5245373362950503342], [2 x i64] [i64 1477204026685760603, i64 -5469741211774057304], i8 0 }, %struct.anon.65 { i8 -102, [2 x i64] [i64 -7740684040464986508, i64 -7213472117088042168], [2 x i64] [i64 -5273393363534478130, i64 1242509283393692797], i8 2 }, %struct.anon.65 { i8 -40, [2 x i64] [i64 -6768223447652934986, i64 7493579088167611331], [2 x i64] [i64 -6768223447652934986, i64 -8150148803143400903], i8 0 }, %struct.anon.65 { i8 -92, [2 x i64] [i64 -6629414905618726441, i64 -5859248259265885936], [2 x i64] [i64 -6629414905618726441, i64 -5859248259265885936], i8 0 }, %struct.anon.65 { i8 110, [2 x i64] [i64 -5634797830890378615, i64 3100074089388216813], [2 x i64] [i64 -5634797830890378615, i64 4807247050912658918], i8 0 }], align 16
@test_simde_x_mm256_cmpge_epu64.test_vec = internal constant [8 x %struct.anon.66] [%struct.anon.66 { [4 x i64] [i64 1097978310966412842, i64 1756550201089517763, i64 -1589138622118235846, i64 -3266806653258843912], [4 x i64] [i64 8431560606216021375, i64 1756550201089517763, i64 321597309435039413, i64 -8305226991322327741], [4 x i64] [i64 0, i64 -1, i64 -1, i64 -1] }, %struct.anon.66 { [4 x i64] [i64 3825624922860126807, i64 -693653393921795299, i64 -549938425361672912, i64 -2418990967982646495], [4 x i64] [i64 3825624922860126807, i64 3898722023448994107, i64 -549938425361672912, i64 -2418990967982646495], [4 x i64] [i64 -1, i64 -1, i64 -1, i64 -1] }, %struct.anon.66 { [4 x i64] [i64 -6047647487349144143, i64 -7987262296975856261, i64 9033764768653175442, i64 3047317884080416558], [4 x i64] [i64 -300006699029819516, i64 -7987262296975856261, i64 -4965525844265456536, i64 2914219991104054735], [4 x i64] [i64 0, i64 -1, i64 0, i64 -1] }, %struct.anon.66 { [4 x i64] [i64 2567126417085835441, i64 -8952168740016305471, i64 -2125603099375642263, i64 3106740997750190522], [4 x i64] [i64 2567126417085835441, i64 7644573401691488157, i64 7347099059777393877, i64 -2181239352660525036], [4 x i64] [i64 -1, i64 -1, i64 -1, i64 0] }, %struct.anon.66 { [4 x i64] [i64 5688131324038467008, i64 374180686669022793, i64 -8853519240743213186, i64 -8617447910329099351], [4 x i64] [i64 5688131324038467008, i64 -6396691292089102885, i64 5275787329447568522, i64 -4285153836883272137], [4 x i64] [i64 -1, i64 0, i64 -1, i64 0] }, %struct.anon.66 { [4 x i64] [i64 -7542228180616175549, i64 -3224725545854005502, i64 6849068026535114709, i64 5099393107290789338], [4 x i64] [i64 -3146403350348221872, i64 -2211371817017175223, i64 904372718620535576, i64 -5703462167127871345], [4 x i64] [i64 0, i64 0, i64 -1, i64 0] }, %struct.anon.66 { [4 x i64] [i64 7187311068649407480, i64 -6099225774294561514, i64 -554172995607140307, i64 6851688514051385449], [4 x i64] [i64 7187311068649407480, i64 -6099225774294561514, i64 -2253697056399734744, i64 6851688514051385449], [4 x i64] [i64 -1, i64 -1, i64 -1, i64 -1] }, %struct.anon.66 { [4 x i64] [i64 -684488952537737937, i64 -3432269197236957068, i64 -963936922866018461, i64 -3546647794552615114], [4 x i64] [i64 -4702064453545814309, i64 8080505619022081018, i64 8159639871606936529, i64 2385332504260280492], [4 x i64] [i64 -1, i64 -1, i64 -1, i64 -1] }], align 16
@test_simde_mm256_cmpge_epu64_mask.test_vec = internal constant [8 x %struct.anon.67] [%struct.anon.67 { [4 x i64] [i64 6080662749559587540, i64 7798098598880735579, i64 5781003121714018010, i64 1651287529084890275], [4 x i64] [i64 6080662749559587540, i64 8504161262981100092, i64 5781003121714018010, i64 5981135193637402536], i8 5 }, %struct.anon.67 { [4 x i64] [i64 -5834117465123266251, i64 -5352133149169676826, i64 -3929914022873477661, i64 -7574900224878151834], [4 x i64] [i64 4553157199874444397, i64 -6839580532172106211, i64 7676565905147289786, i64 -7056206918159588325], i8 7 }, %struct.anon.67 { [4 x i64] [i64 7253165561817288747, i64 -6858362537104720807, i64 3490427149948181207, i64 -3862981691172813875], [4 x i64] [i64 6794167146840824382, i64 -6858362537104720807, i64 562595058634571167, i64 -3987421202628830144], i8 15 }, %struct.anon.67 { [4 x i64] [i64 -4106925218523253129, i64 -6068760540558019446, i64 -4878765976630160085, i64 2872788246063281402], [4 x i64] [i64 -9136652492101799385, i64 -1160114766372776502, i64 -5191341138826782714, i64 2872788246063281402], i8 13 }, %struct.anon.67 { [4 x i64] [i64 -8384905603332803940, i64 -2412568061858314170, i64 -7250032403025659779, i64 -716447985479920716], [4 x i64] [i64 5940246864360978460, i64 -2412568061858314170, i64 -8851622956949496932, i64 6619158130186753163], i8 15 }, %struct.anon.67 { [4 x i64] [i64 6514227723405143863, i64 -2703305424880734638, i64 8580847369726239653, i64 7039709136813224260], [4 x i64] [i64 -4272359750577929535, i64 -2208683309168177803, i64 8580847369726239653, i64 7039709136813224260], i8 12 }, %struct.anon.67 { [4 x i64] [i64 -4738179867296123574, i64 6243028472510257352, i64 -2580179441298823976, i64 -2260100480115747636], [4 x i64] [i64 -4738179867296123574, i64 2458450046782773622, i64 -1971939913153463217, i64 -2409983086903974889], i8 11 }, %struct.anon.67 { [4 x i64] [i64 -699418396694801651, i64 4497453523333048661, i64 -3011915633074697107, i64 -157398456305598069], [4 x i64] [i64 -971708117525957663, i64 3718285289992919861, i64 -3561525679135081204, i64 -605248068619974740], i8 15 }], align 16
@test_simde_mm256_mask_cmpge_epu64_mask.test_vec = internal constant [8 x %struct.anon.68] [%struct.anon.68 { i8 -6, [4 x i64] [i64 -607349373299136640, i64 -8628649855495549036, i64 3489728695404369186, i64 -2463147539997604474], [4 x i64] [i64 -7279526712602606581, i64 -977242842778636484, i64 624509970817647031, i64 -2463147539997604474], i8 8 }, %struct.anon.68 { i8 -96, [4 x i64] [i64 1991469518583896036, i64 -8101328275922250353, i64 3282806900727061238, i64 5231529529396459666], [4 x i64] [i64 1991469518583896036, i64 -8101328275922250353, i64 4207102745734465978, i64 6828709548436031001], i8 0 }, %struct.anon.68 { i8 -91, [4 x i64] [i64 6873941362974503387, i64 8887377615793014757, i64 -2459510295965167440, i64 -6461164856499159851], [4 x i64] [i64 6170782993685170693, i64 -4962304837610586931, i64 -7191596837894965525, i64 -5837043725547514740], i8 5 }, %struct.anon.68 { i8 -14, [4 x i64] [i64 1539416039475034006, i64 -2685740172502362052, i64 5657856660050695816, i64 -4971515331806743875], [4 x i64] [i64 -3879452449860390056, i64 569273790467221890, i64 5657856660050695816, i64 -181791445443411046], i8 2 }, %struct.anon.68 { i8 107, [4 x i64] [i64 2657829311799947321, i64 3729093520857885031, i64 -3255947855179970519, i64 1693514944461131014], [4 x i64] [i64 2657829311799947321, i64 -3078964970766907835, i64 -6531959301429194022, i64 -2768390682581940833], i8 1 }, %struct.anon.68 { i8 -87, [4 x i64] [i64 -2499283883876287906, i64 -596377142271990521, i64 5022661003781234328, i64 -783050638955278936], [4 x i64] [i64 -7102201254442839291, i64 -596377142271990521, i64 9053940410499121871, i64 -783050638955278936], i8 9 }, %struct.anon.68 { i8 22, [4 x i64] [i64 -8777257194900463963, i64 -7660985221527556841, i64 -5219844175101350820, i64 1150003857286378635], [4 x i64] [i64 -5792742272858936320, i64 240158249251828024, i64 8465223493929436770, i64 -58346687768273737], i8 6 }, %struct.anon.68 { i8 104, [4 x i64] [i64 7442495465545705905, i64 -4263627632961499804, i64 -4655704921809860345, i64 3021664080841761486], [4 x i64] [i64 -5738406929914643004, i64 -4942577769409534110, i64 5729285169787954360, i64 -8969455497192627227], i8 0 }], align 16
@test_simde_x_mm512_cmpge_epu64.test_vec = internal constant [8 x %struct.anon.69] [%struct.anon.69 { [8 x i64] [i64 6535126494145565142, i64 1025648140550892758, i64 -3766609404385588393, i64 -8317654048658407977, i64 -6892694586179101678, i64 -7475529803486303321, i64 6674138409978770720, i64 -7868607134323785846], [8 x i64] [i64 4097685846966097779, i64 -1356799764268894382, i64 -7654887864521343262, i64 -3084503530571675105, i64 -304572793082428933, i64 -4619925904786837465, i64 2528748120387855223, i64 -8256236581421846987], [8 x i64] [i64 -1, i64 0, i64 -1, i64 0, i64 0, i64 0, i64 -1, i64 -1] }, %struct.anon.69 { [8 x i64] [i64 1705857797285668623, i64 -921073268354854129, i64 -6575829477525685602, i64 -4290140758301550733, i64 9005331652145119298, i64 -2170235554643340752, i64 -3291058892811703616, i64 -999752180335159898], [8 x i64] [i64 6778987464122224938, i64 -921073268354854129, i64 -6575829477525685602, i64 -3376990916968153728, i64 9005331652145119298, i64 -959189365991133922, i64 -3291058892811703616, i64 -8815646531535918289], [8 x i64] [i64 0, i64 -1, i64 -1, i64 0, i64 -1, i64 0, i64 -1, i64 -1] }, %struct.anon.69 { [8 x i64] [i64 5288599731213248535, i64 3410577313455623530, i64 -4598829146971981448, i64 4031959850975114686, i64 8162507173325776271, i64 1479683837759901274, i64 -459392193602482531, i64 -7605111891496296161], [8 x i64] [i64 5288599731213248535, i64 -1919827256019032918, i64 2317773815016593397, i64 189947939645189636, i64 -4781915625060222990, i64 -2320937195486805347, i64 -605949712292343946, i64 -4877216108131387735], [8 x i64] [i64 -1, i64 0, i64 -1, i64 -1, i64 0, i64 0, i64 -1, i64 0] }, %struct.anon.69 { [8 x i64] [i64 -8734103583492886272, i64 -4705253265074365750, i64 4040394466850092683, i64 7750085185037200403, i64 152030815324601734, i64 4309507993944136442, i64 5457697786597333801, i64 4640355487673345423], [8 x i64] [i64 -8734103583492886272, i64 7924559928136814861, i64 -4895220183822333300, i64 1121426231589756309, i64 7459141144109082326, i64 -6506543567238568189, i64 -1544317588645173593, i64 4116231111262750680], [8 x i64] [i64 -1, i64 -1, i64 0, i64 -1, i64 0, i64 0, i64 0, i64 -1] }, %struct.anon.69 { [8 x i64] [i64 -2696691682065705516, i64 5860098426052541715, i64 -8636918545283707513, i64 5665532150214167742, i64 -2727265168970262248, i64 -7163653514667502132, i64 3748308215751243300, i64 3566290262133184183], [8 x i64] [i64 6124230873383287387, i64 -276638398778097544, i64 1355720220730765349, i64 -8080371199453810030, i64 8383644203278817659, i64 4954851430520451567, i64 5280664864038075355, i64 -4060610463783416862], [8 x i64] [i64 -1, i64 0, i64 -1, i64 0, i64 -1, i64 -1, i64 0, i64 0] }, %struct.anon.69 { [8 x i64] [i64 -6667719130243818477, i64 -1604651426840488005, i64 -6214785516697571411, i64 -4541480358388921604, i64 -1048657880062642681, i64 1923914922713107394, i64 6122313119643710413, i64 4092452857970148958], [8 x i64] [i64 -1428352284503851258, i64 8884874936279535813, i64 -6214785516697571411, i64 -4541480358388921604, i64 3692637707935479079, i64 8907191379900691570, i64 6122313119643710413, i64 487595883070453467], [8 x i64] [i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 0, i64 -1, i64 -1] }, %struct.anon.69 { [8 x i64] [i64 892992531614025354, i64 -1533426130364377617, i64 -7238978546969471836, i64 188068679974904180, i64 392744550145952621, i64 -7449568459205654620, i64 4889965604986672356, i64 -5187955129322429562], [8 x i64] [i64 -2353814451097965767, i64 2370635289414757465, i64 3248851967914606852, i64 1181117203289417825, i64 7939762671713223446, i64 -684930931475299807, i64 9112997687909277603, i64 -2022803642789486073], [8 x i64] [i64 0, i64 -1, i64 -1, i64 0, i64 0, i64 0, i64 0, i64 0] }, %struct.anon.69 { [8 x i64] [i64 -7562107874965433819, i64 -4866041858752391459, i64 4875858194453865210, i64 7419680668846317268, i64 6043419990571186258, i64 1356082769554227040, i64 -4189045905164703127, i64 -7347179376886462622], [8 x i64] [i64 8130333304930010635, i64 5956387543426867838, i64 7672103000129438657, i64 7419680668846317268, i64 6043419990571186258, i64 1356082769554227040, i64 2974036127678091476, i64 527050257205449721], [8 x i64] [i64 -1, i64 -1, i64 0, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1] }], align 16
@test_simde_mm512_cmpge_epu64_mask.test_vec = internal constant [8 x %struct.anon.70] [%struct.anon.70 { [8 x i64] [i64 -5031039863004883592, i64 8915679766151339127, i64 -387192256960250834, i64 -6834560801666869780, i64 -8576469898533476007, i64 -7287999113841766178, i64 5456905207201068303, i64 -5984187333828702168], [8 x i64] [i64 2839772770037663695, i64 7168431348590805366, i64 -6340543255479603625, i64 8461680575373820013, i64 -5375963975863936524, i64 -6559754207843849409, i64 7343501789210745536, i64 -5984187333828702168], i8 -113 }, %struct.anon.70 { [8 x i64] [i64 5494693415509260624, i64 1336012138544470829, i64 3670163513534558554, i64 -6384342480885649003, i64 -4497822156427328837, i64 -924801875404512991, i64 -7090621812872119006, i64 -649395501783057922], [8 x i64] [i64 5494693415509260624, i64 3710730872828240115, i64 -6211531880503010009, i64 -8259889610788813011, i64 7127298726506699834, i64 4189874960785664480, i64 -7090621812872119006, i64 -8055559478406718595], i8 -7 }, %struct.anon.70 { [8 x i64] [i64 -5066282745365511581, i64 -3690757826651743566, i64 -4968412432143527897, i64 8805946945738546529, i64 -6436028744012398011, i64 1069345319554915515, i64 5933096623042939491, i64 5460581589894104117], [8 x i64] [i64 -5066282745365511581, i64 4611956352009292298, i64 6305656451190459199, i64 -682459096764109003, i64 -6436028744012398011, i64 1069345319554915515, i64 5933096623042939491, i64 5460581589894104117], i8 -9 }, %struct.anon.70 { [8 x i64] [i64 1161689926210757789, i64 -8939886317644402889, i64 -2726613077119819395, i64 1771888807819316151, i64 -1869707772063938521, i64 2155902193656298405, i64 1775131156692287982, i64 6676387661704540435], [8 x i64] [i64 1830824799603588819, i64 260483188768491489, i64 -7555229811404440403, i64 -562724391064511841, i64 -3505801697501148981, i64 -881881693192988246, i64 1775131156692287982, i64 6676387661704540435], i8 -42 }, %struct.anon.70 { [8 x i64] [i64 751442674101728308, i64 -7436148226161873353, i64 244847889182833833, i64 -639232128980588423, i64 -1703241705879173327, i64 -253072032049474227, i64 -7781371221440054492, i64 5271088534248954732], [8 x i64] [i64 -4373847950705846093, i64 8294543432171873997, i64 3102266283076598622, i64 -579978894596466543, i64 6076103047943786264, i64 8921507838328895757, i64 5275124428503794251, i64 5271088534248954732], i8 -14 }, %struct.anon.70 { [8 x i64] [i64 -6801825953925249789, i64 2977690312399097681, i64 -6653545985995225488, i64 7982051355938283531, i64 7326275859894896054, i64 -6236991557158938440, i64 6906220912201857031, i64 2165112567259756339], [8 x i64] [i64 8900756372114217483, i64 -4895354841217108946, i64 4710984068910561965, i64 7982051355938283531, i64 -1025879793858318971, i64 -6236991557158938440, i64 -5624212585409106781, i64 4738098777495687529], i8 45 }, %struct.anon.70 { [8 x i64] [i64 2590963414783694546, i64 -8158897287363011424, i64 4725506604544105623, i64 4257251203312590322, i64 -2412597623760925726, i64 -5346978792056137704, i64 -5022467105727420205, i64 530768507082070713], [8 x i64] [i64 -570851180521380362, i64 -8063131373718403770, i64 8713032336953516649, i64 4257251203312590322, i64 861995976319686685, i64 -7656530394120967054, i64 -8870771566690542932, i64 -7672908396358828238], i8 120 }, %struct.anon.70 { [8 x i64] [i64 -6163271756646026315, i64 2362412806295600386, i64 4721184246578852984, i64 6333816588855744737, i64 8887766426282741936, i64 -2306818933748896274, i64 7173201220793761084, i64 -5664274883453991572], [8 x i64] [i64 4339700165265825093, i64 -4726223783053428445, i64 -543082276204234607, i64 -4824082560671480742, i64 5085044617640635399, i64 5759885937455704494, i64 7173201220793761084, i64 7787377300852767708], i8 -15 }], align 16
@test_simde_mm512_mask_cmpge_epu64_mask.test_vec = internal constant [8 x %struct.anon.71] [%struct.anon.71 { i8 77, [8 x i64] [i64 -6698522586174523139, i64 2486152219949362441, i64 -3070459789219216239, i64 8452375209166906647, i64 -8598432171756065065, i64 8435137532179533224, i64 2832991835313178212, i64 -4836075565079197964], [8 x i64] [i64 -773650132300918212, i64 7501011276833973183, i64 5165685206482650233, i64 4384982114457891385, i64 -3392552945949630552, i64 4182308867737374366, i64 6461384673343040784, i64 -4836075565079197964], i8 12 }, %struct.anon.71 { i8 -65, [8 x i64] [i64 5611846191341786694, i64 5703183239366919435, i64 -8537732328686564546, i64 -6971200201883220363, i64 -6605282465538879320, i64 -4046967459630824809, i64 8091803029845056019, i64 -1992378580379309727], [8 x i64] [i64 5611846191341786694, i64 -5668606287093803771, i64 -1470778732041753046, i64 -6971200201883220363, i64 -245349457478699575, i64 935588610127352493, i64 8091803029845056019, i64 8140678158341351618], i8 -87 }, %struct.anon.71 { i8 118, [8 x i64] [i64 -2944882016658559565, i64 -2060160178333730594, i64 -2214650876066608497, i64 5403045868420427599, i64 2821221807420185830, i64 -8046466878890235593, i64 2928995458080497408, i64 6643477360339647568], [8 x i64] [i64 -2944882016658559565, i64 -2060160178333730594, i64 6695963191529319147, i64 -6150660695877463853, i64 2007015679947853702, i64 -8046466878890235593, i64 2928995458080497408, i64 8423202373430966155], i8 118 }, %struct.anon.71 { i8 -115, [8 x i64] [i64 -3150093999678373158, i64 -3768499880741494547, i64 -6273745365607256530, i64 4004147965568915511, i64 3558121076971251033, i64 8447077552037146140, i64 6374788243159577595, i64 4465324411082460516], [8 x i64] [i64 -3150093999678373158, i64 9193374628573312984, i64 -6711835426672447135, i64 -417889932831142638, i64 -40244154161627898, i64 8447077552037146140, i64 -6483829327284285659, i64 4465324411082460516], i8 -123 }, %struct.anon.71 { i8 -41, [8 x i64] [i64 2803792411185108497, i64 -5119923926050649081, i64 1628125786390814716, i64 -8128926414751888454, i64 -1687937396922659050, i64 -6228002548947726967, i64 786736096929385487, i64 -5934093293000501352], [8 x i64] [i64 -4722678188715870036, i64 -5119923926050649081, i64 7606496008126055733, i64 -4229121832558576630, i64 1302040670266092061, i64 634737973261871610, i64 6055683751504877263, i64 -3803776219729196712], i8 18 }, %struct.anon.71 { i8 -99, [8 x i64] [i64 -8400423911964399982, i64 -6939157424841094081, i64 -2156071545094724577, i64 5061054996451285814, i64 -2945267739043567968, i64 4400268754835141978, i64 -6033215506198930167, i64 -8031240915650578799], [8 x i64] [i64 1702718815565344306, i64 -4496957785362607301, i64 -9216781635374794251, i64 -6386297283955840801, i64 -2945267739043567968, i64 -6241718931713811482, i64 -6033215506198930167, i64 8246088391345398356], i8 -107 }, %struct.anon.71 { i8 123, [8 x i64] [i64 6905137371144026543, i64 -1112921760236441586, i64 -6397620802444634439, i64 -9069557148230647037, i64 8802560816833852143, i64 5361890023924069866, i64 2667598975032364184, i64 365015967071903930], [8 x i64] [i64 2028297900396525375, i64 -1112921760236441586, i64 4058050569910240778, i64 564031635814022328, i64 170247930558718222, i64 -540636538334089040, i64 2667598975032364184, i64 365015967071903930], i8 91 }, %struct.anon.71 { i8 96, [8 x i64] [i64 6272495886206060347, i64 7092149452764354181, i64 -2651721984475224433, i64 -2061483521047303073, i64 -5510030800388305558, i64 8665518224813492359, i64 1406033155752232128, i64 -5245460681280640344], [8 x i64] [i64 -8137598770932574161, i64 -7396403888637624327, i64 5115459839065088821, i64 -8362397961093121299, i64 -5510030800388305558, i64 5848630125299985080, i64 2074533450290523109, i64 -8135110420670815949], i8 32 }], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %i = alloca i64, align 8
  %res = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #13
  store i32 0, ptr %retval1, align 4, !tbaa !5
  %0 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str, i64 noundef 72)
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %1, 72
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [72 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %2
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
  %arrayidx4 = getelementptr inbounds [72 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %7
  %name = getelementptr inbounds %struct.anon, ptr %arrayidx4, i32 0, i32 1
  %8 = load ptr, ptr %name, align 8, !tbaa !15
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %add, ptr noundef %8)
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %10 = load i64, ptr %i, align 8, !tbaa !11
  %add6 = add i64 %10, 1
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [72 x %struct.anon], ptr @test_suite_tests, i64 0, i64 %11
  %name8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1
  %12 = load ptr, ptr %name8, align 8, !tbaa !15
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.2, i64 noundef %add6, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %13, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond.cleanup
  %14 = load i32, ptr %retval1, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #13
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm_cmpge_epi8() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_x_mm_cmpge_epi8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.0, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_x_mm_cmpge_epi8.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.0, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call <2 x i64> @simde_x_mm_cmpge_epi8(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.0], ptr @test_simde_x_mm_cmpge_epi8.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.0, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %r8, i64 0, i64 0
  %call10 = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_x86_assert_equal_i8x16_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.75, i32 noundef 97, ptr noundef @.str.76, ptr noundef @.str.77)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_cmpge_epi8_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_mm_cmpge_epi8_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.1, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_mm_cmpge_epi8_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.1, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call zeroext i16 @simde_mm_cmpge_epi8_mask(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store i16 %call6, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i16, ptr %r, align 2, !tbaa !17
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.1], ptr @test_simde_mm_cmpge_epi8_mask.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.1, ptr %arrayidx7, i32 0, i32 2
  %7 = load i16, ptr %r8, align 2, !tbaa !19
  %call9 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %5, i16 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 179, ptr noundef @.str.76, ptr noundef @.str.79)
  %tobool = icmp ne i32 %call9, 0
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_cmpge_epi8_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i16, align 2
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 2, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_mm_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.2, ptr %arrayidx, i32 0, i32 0
  %2 = load i16, ptr %k1, align 4, !tbaa !21
  store i16 %2, ptr %k, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_mm_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.2, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a3, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_mm_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.2, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %b5, i64 0, i64 0
  %call7 = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay6)
  store <2 x i64> %call7, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %5 = load i16, ptr %k, align 2, !tbaa !17
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call8 = call zeroext i16 @simde_mm_mask_cmpge_epi8_mask(i16 noundef zeroext %5, <2 x i64> noundef %6, <2 x i64> noundef %7)
  store i16 %call8, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i16, ptr %r, align 2, !tbaa !17
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds [8 x %struct.anon.2], ptr @test_simde_mm_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %9
  %r10 = getelementptr inbounds %struct.anon.2, ptr %arrayidx9, i32 0, i32 3
  %10 = load i16, ptr %r10, align 2, !tbaa !23
  %call11 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %8, i16 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 271, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr %k) #13
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup15
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm256_cmpge_epi8() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %indirect-arg-temp12 = alloca <4 x i64>, align 32
  %indirect-arg-temp13 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_x_mm256_cmpge_epi8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.3, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_x_mm256_cmpge_epi8.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.3, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x i64> @simde_x_mm256_cmpge_epi8(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store <4 x i64> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.3], ptr @test_simde_x_mm256_cmpge_epi8.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.3, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay10)
  store <4 x i64> %5, ptr %indirect-arg-temp12, align 32, !tbaa !16
  store <4 x i64> %call11, ptr %indirect-arg-temp13, align 32, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_i8x32_(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp12, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 411, ptr noundef @.str.76, ptr noundef @.str.81)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_cmpge_epi8_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i32, align 4
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.4], ptr @test_simde_mm256_cmpge_epi8_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.4, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.4], ptr @test_simde_mm256_cmpge_epi8_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.4, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call i32 @simde_mm256_cmpge_epi8_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store i32 %call7, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i32, ptr %r, align 4, !tbaa !5
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.4], ptr @test_simde_mm256_cmpge_epi8_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.4, ptr %arrayidx8, i32 0, i32 2
  %7 = load i32, ptr %r9, align 4, !tbaa !24
  %call10 = call i32 @simde_assert_equal_u32_(i32 noundef %5, i32 noundef %7, ptr noundef @.str.75, i32 noundef 525, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_cmpge_epi8_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i32, align 4
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.5], ptr @test_simde_mm256_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.5, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %k1, align 8, !tbaa !26
  store i32 %2, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.5], ptr @test_simde_mm256_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.5, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], ptr %a3, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.5], ptr @test_simde_mm256_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.5, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %b5, i64 0, i64 0
  %call7 = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay6)
  store <4 x i64> %call7, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp8, align 32, !tbaa !16
  %call9 = call i32 @simde_mm256_mask_cmpge_epi8_mask(i32 noundef %5, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp8)
  store i32 %call9, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i32, ptr %r, align 4, !tbaa !5
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.5], ptr @test_simde_mm256_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.5, ptr %arrayidx10, i32 0, i32 3
  %10 = load i32, ptr %r11, align 4, !tbaa !28
  %call12 = call i32 @simde_assert_equal_u32_(i32 noundef %8, i32 noundef %10, ptr noundef @.str.75, i32 noundef 649, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm512_cmpge_epi8() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.6], ptr @test_simde_x_mm512_cmpge_epi8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.6, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.6], ptr @test_simde_x_mm512_cmpge_epi8.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.6, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_x_mm512_cmpge_epi8(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.6], ptr @test_simde_x_mm512_cmpge_epi8.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.6, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [64 x i8], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_i8x64_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 885, ptr noundef @.str.76, ptr noundef @.str.82)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_cmpge_epi8_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i64, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.7], ptr @test_simde_mm512_cmpge_epi8_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.7, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.7], ptr @test_simde_mm512_cmpge_epi8_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.7, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call i64 @simde_mm512_cmpge_epi8_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store i64 %call7, ptr %r, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i64, ptr %r, align 8, !tbaa !11
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.7], ptr @test_simde_mm512_cmpge_epi8_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.7, ptr %arrayidx8, i32 0, i32 2
  %7 = load i64, ptr %r9, align 8, !tbaa !29
  %call10 = call i32 @simde_assert_equal_u64_(i64 noundef %5, i64 noundef %7, ptr noundef @.str.75, i32 noundef 1063, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_cmpge_epi8_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i64, align 8
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i64, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.8], ptr @test_simde_mm512_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.8, ptr %arrayidx, i32 0, i32 0
  %2 = load i64, ptr %k1, align 16, !tbaa !31
  store i64 %2, ptr %k, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.8], ptr @test_simde_mm512_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.8, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a3, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.8], ptr @test_simde_mm512_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.8, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [64 x i8], ptr %b5, i64 0, i64 0
  %call7 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #13
  %5 = load i64, ptr %k, align 8, !tbaa !11
  %6 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call i64 @simde_mm512_mask_cmpge_epi8_mask(i64 noundef %5, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8)
  store i64 %call9, ptr %r, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i64, ptr %r, align 8, !tbaa !11
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.8], ptr @test_simde_mm512_mask_cmpge_epi8_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.8, ptr %arrayidx10, i32 0, i32 3
  %10 = load i64, ptr %r11, align 8, !tbaa !33
  %call12 = call i32 @simde_assert_equal_u64_(i64 noundef %8, i64 noundef %10, ptr noundef @.str.75, i32 noundef 1251, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm_cmpge_epu8() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.9], ptr @test_simde_x_mm_cmpge_epu8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.9, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.9], ptr @test_simde_x_mm_cmpge_epu8.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.9, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call <2 x i64> @simde_x_mm_cmpge_epu8(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.9], ptr @test_simde_x_mm_cmpge_epu8.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.9, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [16 x i8], ptr %r8, i64 0, i64 0
  %call10 = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_x86_assert_equal_u8x16_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.75, i32 noundef 1343, ptr noundef @.str.76, ptr noundef @.str.77)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_cmpge_epu8_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.10], ptr @test_simde_mm_cmpge_epu8_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.10, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.10], ptr @test_simde_mm_cmpge_epu8_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.10, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call zeroext i16 @simde_mm_cmpge_epu8_mask(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store i16 %call6, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i16, ptr %r, align 2, !tbaa !17
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.10], ptr @test_simde_mm_cmpge_epu8_mask.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.10, ptr %arrayidx7, i32 0, i32 2
  %7 = load i16, ptr %r8, align 2, !tbaa !19
  %call9 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %5, i16 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 1425, ptr noundef @.str.76, ptr noundef @.str.79)
  %tobool = icmp ne i32 %call9, 0
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_cmpge_epu8_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i16, align 2
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 2, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.11], ptr @test_simde_mm_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.11, ptr %arrayidx, i32 0, i32 0
  %2 = load i16, ptr %k1, align 4, !tbaa !21
  store i16 %2, ptr %k, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.11], ptr @test_simde_mm_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.11, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a3, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.11], ptr @test_simde_mm_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.11, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %b5, i64 0, i64 0
  %call7 = call <2 x i64> @simde_mm_loadu_epi8(ptr noundef %arraydecay6)
  store <2 x i64> %call7, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %5 = load i16, ptr %k, align 2, !tbaa !17
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call8 = call zeroext i16 @simde_mm_mask_cmpge_epu8_mask(i16 noundef zeroext %5, <2 x i64> noundef %6, <2 x i64> noundef %7)
  store i16 %call8, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i16, ptr %r, align 2, !tbaa !17
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds [8 x %struct.anon.11], ptr @test_simde_mm_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %9
  %r10 = getelementptr inbounds %struct.anon.11, ptr %arrayidx9, i32 0, i32 3
  %10 = load i16, ptr %r10, align 2, !tbaa !23
  %call11 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %8, i16 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 1517, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr %k) #13
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup15
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm256_cmpge_epu8() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %indirect-arg-temp12 = alloca <4 x i64>, align 32
  %indirect-arg-temp13 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.12], ptr @test_simde_x_mm256_cmpge_epu8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.12, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.12], ptr @test_simde_x_mm256_cmpge_epu8.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.12, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x i64> @simde_x_mm256_cmpge_epu8(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store <4 x i64> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.12], ptr @test_simde_x_mm256_cmpge_epu8.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.12, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay10)
  store <4 x i64> %5, ptr %indirect-arg-temp12, align 32, !tbaa !16
  store <4 x i64> %call11, ptr %indirect-arg-temp13, align 32, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u8x32_(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp12, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 1657, ptr noundef @.str.76, ptr noundef @.str.81)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_cmpge_epu8_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i32, align 4
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.13], ptr @test_simde_mm256_cmpge_epu8_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i8], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.13], ptr @test_simde_mm256_cmpge_epu8_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.13, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call i32 @simde_mm256_cmpge_epu8_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store i32 %call7, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i32, ptr %r, align 4, !tbaa !5
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.13], ptr @test_simde_mm256_cmpge_epu8_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.13, ptr %arrayidx8, i32 0, i32 2
  %7 = load i32, ptr %r9, align 4, !tbaa !24
  %call10 = call i32 @simde_assert_equal_u32_(i32 noundef %5, i32 noundef %7, ptr noundef @.str.75, i32 noundef 1771, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_cmpge_epu8_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i32, align 4
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.14], ptr @test_simde_mm256_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %k1, align 8, !tbaa !26
  store i32 %2, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.14], ptr @test_simde_mm256_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.14, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], ptr %a3, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.14], ptr @test_simde_mm256_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.14, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %b5, i64 0, i64 0
  %call7 = call <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %arraydecay6)
  store <4 x i64> %call7, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp8, align 32, !tbaa !16
  %call9 = call i32 @simde_mm256_mask_cmpge_epu8_mask(i32 noundef %5, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp8)
  store i32 %call9, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i32, ptr %r, align 4, !tbaa !5
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.14], ptr @test_simde_mm256_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.14, ptr %arrayidx10, i32 0, i32 3
  %10 = load i32, ptr %r11, align 4, !tbaa !28
  %call12 = call i32 @simde_assert_equal_u32_(i32 noundef %8, i32 noundef %10, ptr noundef @.str.75, i32 noundef 1895, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm512_cmpge_epu8() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.15], ptr @test_simde_x_mm512_cmpge_epu8.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.15, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.15], ptr @test_simde_x_mm512_cmpge_epu8.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.15, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_x_mm512_cmpge_epu8(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.15], ptr @test_simde_x_mm512_cmpge_epu8.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.15, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [64 x i8], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u8x64_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 2131, ptr noundef @.str.76, ptr noundef @.str.82)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_cmpge_epu8_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i64, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.16], ptr @test_simde_mm512_cmpge_epu8_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.16, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.16], ptr @test_simde_mm512_cmpge_epu8_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.16, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [64 x i8], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call i64 @simde_mm512_cmpge_epu8_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store i64 %call7, ptr %r, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i64, ptr %r, align 8, !tbaa !11
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.16], ptr @test_simde_mm512_cmpge_epu8_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.16, ptr %arrayidx8, i32 0, i32 2
  %7 = load i64, ptr %r9, align 8, !tbaa !29
  %call10 = call i32 @simde_assert_equal_u64_(i64 noundef %5, i64 noundef %7, ptr noundef @.str.75, i32 noundef 2309, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_cmpge_epu8_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i64, align 8
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i64, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.17], ptr @test_simde_mm512_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.17, ptr %arrayidx, i32 0, i32 0
  %2 = load i64, ptr %k1, align 16, !tbaa !31
  store i64 %2, ptr %k, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.17], ptr @test_simde_mm512_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.17, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a3, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.17], ptr @test_simde_mm512_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.17, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [64 x i8], ptr %b5, i64 0, i64 0
  %call7 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #13
  %5 = load i64, ptr %k, align 8, !tbaa !11
  %6 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call i64 @simde_mm512_mask_cmpge_epu8_mask(i64 noundef %5, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8)
  store i64 %call9, ptr %r, align 8, !tbaa !11
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i64, ptr %r, align 8, !tbaa !11
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.17], ptr @test_simde_mm512_mask_cmpge_epu8_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.17, ptr %arrayidx10, i32 0, i32 3
  %10 = load i64, ptr %r11, align 8, !tbaa !33
  %call12 = call i32 @simde_assert_equal_u64_(i64 noundef %8, i64 noundef %10, ptr noundef @.str.75, i32 noundef 2497, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm_cmpge_epi16() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.18], ptr @test_simde_x_mm_cmpge_epi16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.18, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.18], ptr @test_simde_x_mm_cmpge_epi16.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.18, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call <2 x i64> @simde_x_mm_cmpge_epi16(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.18], ptr @test_simde_x_mm_cmpge_epi16.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.18, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [8 x i16], ptr %r8, i64 0, i64 0
  %call10 = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_x86_assert_equal_i16x8_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.75, i32 noundef 2565, ptr noundef @.str.76, ptr noundef @.str.85)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_cmpge_epi16_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.19], ptr @test_simde_mm_cmpge_epi16_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.19, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.19], ptr @test_simde_mm_cmpge_epi16_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.19, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call zeroext i8 @simde_mm_cmpge_epi16_mask(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store i8 %call6, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.19], ptr @test_simde_mm_cmpge_epi16_mask.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.19, ptr %arrayidx7, i32 0, i32 2
  %7 = load i8, ptr %r8, align 2, !tbaa !34
  %call9 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 2631, ptr noundef @.str.76, ptr noundef @.str.79)
  %tobool = icmp ne i32 %call9, 0
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_cmpge_epi16_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.20], ptr @test_simde_mm_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.20, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 4, !tbaa !36
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.20], ptr @test_simde_mm_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.20, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a3, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.20], ptr @test_simde_mm_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.20, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [8 x i16], ptr %b5, i64 0, i64 0
  %call7 = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay6)
  store <2 x i64> %call7, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call8 = call zeroext i8 @simde_mm_mask_cmpge_epi16_mask(i8 noundef zeroext %5, <2 x i64> noundef %6, <2 x i64> noundef %7)
  store i8 %call8, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds [8 x %struct.anon.20], ptr @test_simde_mm_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %9
  %r10 = getelementptr inbounds %struct.anon.20, ptr %arrayidx9, i32 0, i32 3
  %10 = load i8, ptr %r10, align 2, !tbaa !38
  %call11 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 2707, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup15
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm256_cmpge_epi16() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %indirect-arg-temp12 = alloca <4 x i64>, align 32
  %indirect-arg-temp13 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.21], ptr @test_simde_x_mm256_cmpge_epi16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.21, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.21], ptr @test_simde_x_mm256_cmpge_epi16.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.21, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x i64> @simde_x_mm256_cmpge_epi16(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store <4 x i64> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.21], ptr @test_simde_x_mm256_cmpge_epi16.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.21, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [16 x i16], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay10)
  store <4 x i64> %5, ptr %indirect-arg-temp12, align 32, !tbaa !16
  store <4 x i64> %call11, ptr %indirect-arg-temp13, align 32, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_i16x16_(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp12, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 2799, ptr noundef @.str.76, ptr noundef @.str.86)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_cmpge_epi16_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i16, align 2
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.22], ptr @test_simde_mm256_cmpge_epi16_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.22, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.22], ptr @test_simde_mm256_cmpge_epi16_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.22, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call zeroext i16 @simde_mm256_cmpge_epi16_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store i16 %call7, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i16, ptr %r, align 2, !tbaa !17
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.22], ptr @test_simde_mm256_cmpge_epi16_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.22, ptr %arrayidx8, i32 0, i32 2
  %7 = load i16, ptr %r9, align 2, !tbaa !39
  %call10 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %5, i16 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 2881, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_cmpge_epi16_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i16, align 2
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i16, align 2
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.23], ptr @test_simde_mm256_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.23, ptr %arrayidx, i32 0, i32 0
  %2 = load i16, ptr %k1, align 4, !tbaa !41
  store i16 %2, ptr %k, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.23], ptr @test_simde_mm256_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.23, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i16], ptr %a3, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.23], ptr @test_simde_mm256_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.23, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [16 x i16], ptr %b5, i64 0, i64 0
  %call7 = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay6)
  store <4 x i64> %call7, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %5 = load i16, ptr %k, align 2, !tbaa !17
  %6 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp8, align 32, !tbaa !16
  %call9 = call zeroext i16 @simde_mm256_mask_cmpge_epi16_mask(i16 noundef zeroext %5, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp8)
  store i16 %call9, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i16, ptr %r, align 2, !tbaa !17
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.23], ptr @test_simde_mm256_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.23, ptr %arrayidx10, i32 0, i32 3
  %10 = load i16, ptr %r11, align 2, !tbaa !43
  %call12 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %8, i16 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 2973, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm512_cmpge_epi16() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.24], ptr @test_simde_x_mm512_cmpge_epi16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.24, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.24], ptr @test_simde_x_mm512_cmpge_epi16.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.24, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_x_mm512_cmpge_epi16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.24], ptr @test_simde_x_mm512_cmpge_epi16.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.24, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [32 x i16], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_i16x32_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 3113, ptr noundef @.str.76, ptr noundef @.str.87)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_cmpge_epi16_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i32, align 4
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.25], ptr @test_simde_mm512_cmpge_epi16_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.25, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.25], ptr @test_simde_mm512_cmpge_epi16_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.25, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call i32 @simde_mm512_cmpge_epi16_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store i32 %call7, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i32, ptr %r, align 4, !tbaa !5
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.25], ptr @test_simde_mm512_cmpge_epi16_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.25, ptr %arrayidx8, i32 0, i32 2
  %7 = load i32, ptr %r9, align 4, !tbaa !44
  %call10 = call i32 @simde_assert_equal_u32_(i32 noundef %5, i32 noundef %7, ptr noundef @.str.75, i32 noundef 3227, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_cmpge_epi16_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i32, align 4
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.26], ptr @test_simde_mm512_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.26, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %k1, align 8, !tbaa !46
  store i32 %2, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.26], ptr @test_simde_mm512_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.26, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a3, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.26], ptr @test_simde_mm512_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.26, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [32 x i16], ptr %b5, i64 0, i64 0
  %call7 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call i32 @simde_mm512_mask_cmpge_epi16_mask(i32 noundef %5, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8)
  store i32 %call9, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i32, ptr %r, align 4, !tbaa !5
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.26], ptr @test_simde_mm512_mask_cmpge_epi16_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.26, ptr %arrayidx10, i32 0, i32 3
  %10 = load i32, ptr %r11, align 4, !tbaa !48
  %call12 = call i32 @simde_assert_equal_u32_(i32 noundef %8, i32 noundef %10, ptr noundef @.str.75, i32 noundef 3351, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm_cmpge_epu16() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.27], ptr @test_simde_x_mm_cmpge_epu16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.27, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.27], ptr @test_simde_x_mm_cmpge_epu16.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.27, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call <2 x i64> @simde_x_mm_cmpge_epu16(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.27], ptr @test_simde_x_mm_cmpge_epu16.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.27, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [8 x i16], ptr %r8, i64 0, i64 0
  %call10 = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_x86_assert_equal_u16x8_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.75, i32 noundef 3419, ptr noundef @.str.76, ptr noundef @.str.85)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_cmpge_epu16_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.28], ptr @test_simde_mm_cmpge_epu16_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.28, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.28], ptr @test_simde_mm_cmpge_epu16_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.28, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call zeroext i8 @simde_mm_cmpge_epu16_mask(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store i8 %call6, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.28], ptr @test_simde_mm_cmpge_epu16_mask.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.28, ptr %arrayidx7, i32 0, i32 2
  %7 = load i8, ptr %r8, align 2, !tbaa !34
  %call9 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 3485, ptr noundef @.str.76, ptr noundef @.str.79)
  %tobool = icmp ne i32 %call9, 0
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_cmpge_epu16_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.29], ptr @test_simde_mm_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.29, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 4, !tbaa !36
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.29], ptr @test_simde_mm_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.29, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a3, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.29], ptr @test_simde_mm_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.29, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [8 x i16], ptr %b5, i64 0, i64 0
  %call7 = call <2 x i64> @simde_mm_loadu_epi16(ptr noundef %arraydecay6)
  store <2 x i64> %call7, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call8 = call zeroext i8 @simde_mm_mask_cmpge_epu16_mask(i8 noundef zeroext %5, <2 x i64> noundef %6, <2 x i64> noundef %7)
  store i8 %call8, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds [8 x %struct.anon.29], ptr @test_simde_mm_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %9
  %r10 = getelementptr inbounds %struct.anon.29, ptr %arrayidx9, i32 0, i32 3
  %10 = load i8, ptr %r10, align 2, !tbaa !38
  %call11 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 3561, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup15
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm256_cmpge_epu16() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %indirect-arg-temp12 = alloca <4 x i64>, align 32
  %indirect-arg-temp13 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.30], ptr @test_simde_x_mm256_cmpge_epu16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.30, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.30], ptr @test_simde_x_mm256_cmpge_epu16.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.30, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x i64> @simde_x_mm256_cmpge_epu16(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store <4 x i64> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.30], ptr @test_simde_x_mm256_cmpge_epu16.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.30, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [16 x i16], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay10)
  store <4 x i64> %5, ptr %indirect-arg-temp12, align 32, !tbaa !16
  store <4 x i64> %call11, ptr %indirect-arg-temp13, align 32, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u16x16_(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp12, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 3653, ptr noundef @.str.76, ptr noundef @.str.86)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_cmpge_epu16_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i16, align 2
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.31], ptr @test_simde_mm256_cmpge_epu16_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.31, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i16], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.31], ptr @test_simde_mm256_cmpge_epu16_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.31, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call zeroext i16 @simde_mm256_cmpge_epu16_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store i16 %call7, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i16, ptr %r, align 2, !tbaa !17
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.31], ptr @test_simde_mm256_cmpge_epu16_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.31, ptr %arrayidx8, i32 0, i32 2
  %7 = load i16, ptr %r9, align 2, !tbaa !39
  %call10 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %5, i16 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 3735, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_cmpge_epu16_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i16, align 2
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i16, align 2
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.32], ptr @test_simde_mm256_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.32, ptr %arrayidx, i32 0, i32 0
  %2 = load i16, ptr %k1, align 4, !tbaa !41
  store i16 %2, ptr %k, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.32], ptr @test_simde_mm256_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.32, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i16], ptr %a3, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.32], ptr @test_simde_mm256_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.32, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [16 x i16], ptr %b5, i64 0, i64 0
  %call7 = call <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %arraydecay6)
  store <4 x i64> %call7, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %5 = load i16, ptr %k, align 2, !tbaa !17
  %6 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp8, align 32, !tbaa !16
  %call9 = call zeroext i16 @simde_mm256_mask_cmpge_epu16_mask(i16 noundef zeroext %5, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp8)
  store i16 %call9, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i16, ptr %r, align 2, !tbaa !17
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.32], ptr @test_simde_mm256_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.32, ptr %arrayidx10, i32 0, i32 3
  %10 = load i16, ptr %r11, align 2, !tbaa !43
  %call12 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %8, i16 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 3827, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm512_cmpge_epu16() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.33], ptr @test_simde_x_mm512_cmpge_epu16.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.33, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.33], ptr @test_simde_x_mm512_cmpge_epu16.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.33, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_x_mm512_cmpge_epu16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.33], ptr @test_simde_x_mm512_cmpge_epu16.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.33, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [32 x i16], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u16x32_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 3967, ptr noundef @.str.76, ptr noundef @.str.87)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_cmpge_epu16_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i32, align 4
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.34], ptr @test_simde_mm512_cmpge_epu16_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.34, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.34], ptr @test_simde_mm512_cmpge_epu16_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.34, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [32 x i16], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call i32 @simde_mm512_cmpge_epu16_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store i32 %call7, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i32, ptr %r, align 4, !tbaa !5
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.34], ptr @test_simde_mm512_cmpge_epu16_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.34, ptr %arrayidx8, i32 0, i32 2
  %7 = load i32, ptr %r9, align 4, !tbaa !44
  %call10 = call i32 @simde_assert_equal_u32_(i32 noundef %5, i32 noundef %7, ptr noundef @.str.75, i32 noundef 4081, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_cmpge_epu16_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i32, align 4
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.35], ptr @test_simde_mm512_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.35, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %k1, align 8, !tbaa !46
  store i32 %2, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.35], ptr @test_simde_mm512_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.35, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a3, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.35], ptr @test_simde_mm512_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.35, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [32 x i16], ptr %b5, i64 0, i64 0
  %call7 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call i32 @simde_mm512_mask_cmpge_epu16_mask(i32 noundef %5, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8)
  store i32 %call9, ptr %r, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i32, ptr %r, align 4, !tbaa !5
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.35], ptr @test_simde_mm512_mask_cmpge_epu16_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.35, ptr %arrayidx10, i32 0, i32 3
  %10 = load i32, ptr %r11, align 4, !tbaa !48
  %call12 = call i32 @simde_assert_equal_u32_(i32 noundef %8, i32 noundef %10, ptr noundef @.str.75, i32 noundef 4205, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm_cmpge_epi32() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.36], ptr @test_simde_x_mm_cmpge_epi32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.36, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.36], ptr @test_simde_x_mm_cmpge_epi32.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.36, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call <2 x i64> @simde_x_mm_cmpge_epi32(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.36], ptr @test_simde_x_mm_cmpge_epi32.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.36, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [4 x i32], ptr %r8, i64 0, i64 0
  %call10 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_x86_assert_equal_i32x4_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.75, i32 noundef 4273, ptr noundef @.str.76, ptr noundef @.str.88)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_cmpge_epi32_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.37], ptr @test_simde_mm_cmpge_epi32_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.37, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.37], ptr @test_simde_mm_cmpge_epi32_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.37, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call zeroext i8 @simde_mm_cmpge_epi32_mask(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store i8 %call6, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.37], ptr @test_simde_mm_cmpge_epi32_mask.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.37, ptr %arrayidx7, i32 0, i32 2
  %7 = load i8, ptr %r8, align 4, !tbaa !34
  %call9 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 4339, ptr noundef @.str.76, ptr noundef @.str.79)
  %tobool = icmp ne i32 %call9, 0
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_cmpge_epi32_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.38], ptr @test_simde_mm_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.38, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 8, !tbaa !49
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.38], ptr @test_simde_mm_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.38, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a3, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.38], ptr @test_simde_mm_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.38, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [4 x i32], ptr %b5, i64 0, i64 0
  %call7 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay6)
  store <2 x i64> %call7, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call8 = call zeroext i8 @simde_mm_mask_cmpge_epi32_mask(i8 noundef zeroext %5, <2 x i64> noundef %6, <2 x i64> noundef %7)
  store i8 %call8, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds [8 x %struct.anon.38], ptr @test_simde_mm_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %9
  %r10 = getelementptr inbounds %struct.anon.38, ptr %arrayidx9, i32 0, i32 3
  %10 = load i8, ptr %r10, align 4, !tbaa !51
  %call11 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 4415, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup15
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm256_cmpge_epi32() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %indirect-arg-temp12 = alloca <4 x i64>, align 32
  %indirect-arg-temp13 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.39], ptr @test_simde_x_mm256_cmpge_epi32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.39, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.39], ptr @test_simde_x_mm256_cmpge_epi32.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.39, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x i64> @simde_x_mm256_cmpge_epi32(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store <4 x i64> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.39], ptr @test_simde_x_mm256_cmpge_epi32.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.39, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [8 x i32], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay10)
  store <4 x i64> %5, ptr %indirect-arg-temp12, align 32, !tbaa !16
  store <4 x i64> %call11, ptr %indirect-arg-temp13, align 32, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_i32x8_(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp12, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 4483, ptr noundef @.str.76, ptr noundef @.str.89)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_cmpge_epi32_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.40], ptr @test_simde_mm256_cmpge_epi32_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.40, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.40], ptr @test_simde_mm256_cmpge_epi32_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.40, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call zeroext i8 @simde_mm256_cmpge_epi32_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store i8 %call7, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %conv = zext i8 %5 to i16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.40], ptr @test_simde_mm256_cmpge_epi32_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.40, ptr %arrayidx8, i32 0, i32 2
  %7 = load i8, ptr %r9, align 4, !tbaa !52
  %conv10 = zext i8 %7 to i16
  %call11 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %conv, i16 noundef zeroext %conv10, ptr noundef @.str.75, i32 noundef 4549, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_cmpge_epi32_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.41], ptr @test_simde_mm256_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.41, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 8, !tbaa !54
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.41], ptr @test_simde_mm256_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.41, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a3, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.41], ptr @test_simde_mm256_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.41, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [8 x i32], ptr %b5, i64 0, i64 0
  %call7 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay6)
  store <4 x i64> %call7, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp8, align 32, !tbaa !16
  %call9 = call zeroext i8 @simde_mm256_mask_cmpge_epi32_mask(i8 noundef zeroext %5, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp8)
  store i8 %call9, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.41], ptr @test_simde_mm256_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.41, ptr %arrayidx10, i32 0, i32 3
  %10 = load i8, ptr %r11, align 4, !tbaa !56
  %call12 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 4625, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm512_cmpge_epi32() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.42], ptr @test_simde_x_mm512_cmpge_epi32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.42, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.42], ptr @test_simde_x_mm512_cmpge_epi32.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.42, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_x_mm512_cmpge_epi32(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.42], ptr @test_simde_x_mm512_cmpge_epi32.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.42, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [16 x i32], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_i32x16_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 4717, ptr noundef @.str.76, ptr noundef @.str.90)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_cmpge_epi32_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i16, align 2
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.43], ptr @test_simde_mm512_cmpge_epi32_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.43, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.43], ptr @test_simde_mm512_cmpge_epi32_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.43, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call zeroext i16 @simde_mm512_cmpge_epi32_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store i16 %call7, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i16, ptr %r, align 2, !tbaa !17
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.43], ptr @test_simde_mm512_cmpge_epi32_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.43, ptr %arrayidx8, i32 0, i32 2
  %7 = load i16, ptr %r9, align 4, !tbaa !57
  %call10 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %5, i16 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 4799, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_cmpge_epi32_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i16, align 2
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i16, align 2
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.44], ptr @test_simde_mm512_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.44, ptr %arrayidx, i32 0, i32 0
  %2 = load i16, ptr %k1, align 8, !tbaa !59
  store i16 %2, ptr %k, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.44], ptr @test_simde_mm512_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.44, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a3, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.44], ptr @test_simde_mm512_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.44, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [16 x i32], ptr %b5, i64 0, i64 0
  %call7 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %5 = load i16, ptr %k, align 2, !tbaa !17
  %6 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call zeroext i16 @simde_mm512_mask_cmpge_epi32_mask(i16 noundef zeroext %5, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8)
  store i16 %call9, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i16, ptr %r, align 2, !tbaa !17
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.44], ptr @test_simde_mm512_mask_cmpge_epi32_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.44, ptr %arrayidx10, i32 0, i32 3
  %10 = load i16, ptr %r11, align 4, !tbaa !61
  %call12 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %8, i16 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 4891, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm_cmpge_epu32() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.45], ptr @test_simde_x_mm_cmpge_epu32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.45, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.45], ptr @test_simde_x_mm_cmpge_epu32.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.45, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call <2 x i64> @simde_x_mm_cmpge_epu32(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.45], ptr @test_simde_x_mm_cmpge_epu32.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.45, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [4 x i32], ptr %r8, i64 0, i64 0
  %call10 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_x86_assert_equal_u32x4_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.75, i32 noundef 4959, ptr noundef @.str.76, ptr noundef @.str.88)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_cmpge_epu32_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.46], ptr @test_simde_mm_cmpge_epu32_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.46, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.46], ptr @test_simde_mm_cmpge_epu32_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.46, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call zeroext i8 @simde_mm_cmpge_epu32_mask(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store i8 %call6, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.46], ptr @test_simde_mm_cmpge_epu32_mask.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.46, ptr %arrayidx7, i32 0, i32 2
  %7 = load i8, ptr %r8, align 4, !tbaa !34
  %call9 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 5025, ptr noundef @.str.76, ptr noundef @.str.79)
  %tobool = icmp ne i32 %call9, 0
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_cmpge_epu32_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.47], ptr @test_simde_mm_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.47, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 8, !tbaa !49
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.47], ptr @test_simde_mm_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.47, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a3, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.47], ptr @test_simde_mm_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.47, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [4 x i32], ptr %b5, i64 0, i64 0
  %call7 = call <2 x i64> @simde_mm_loadu_epi32(ptr noundef %arraydecay6)
  store <2 x i64> %call7, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call8 = call zeroext i8 @simde_mm_mask_cmpge_epu32_mask(i8 noundef zeroext %5, <2 x i64> noundef %6, <2 x i64> noundef %7)
  store i8 %call8, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds [8 x %struct.anon.47], ptr @test_simde_mm_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %9
  %r10 = getelementptr inbounds %struct.anon.47, ptr %arrayidx9, i32 0, i32 3
  %10 = load i8, ptr %r10, align 4, !tbaa !51
  %call11 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 5101, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup15
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm256_cmpge_epu32() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %indirect-arg-temp12 = alloca <4 x i64>, align 32
  %indirect-arg-temp13 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.48], ptr @test_simde_x_mm256_cmpge_epu32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.48, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.48], ptr @test_simde_x_mm256_cmpge_epu32.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.48, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x i64> @simde_x_mm256_cmpge_epu32(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store <4 x i64> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.48], ptr @test_simde_x_mm256_cmpge_epu32.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.48, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [8 x i32], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay10)
  store <4 x i64> %5, ptr %indirect-arg-temp12, align 32, !tbaa !16
  store <4 x i64> %call11, ptr %indirect-arg-temp13, align 32, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u32x8_(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp12, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 5169, ptr noundef @.str.76, ptr noundef @.str.89)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_cmpge_epu32_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.49], ptr @test_simde_mm256_cmpge_epu32_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.49, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.49], ptr @test_simde_mm256_cmpge_epu32_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.49, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call zeroext i8 @simde_mm256_cmpge_epu32_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store i8 %call7, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %conv = zext i8 %5 to i16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.49], ptr @test_simde_mm256_cmpge_epu32_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.49, ptr %arrayidx8, i32 0, i32 2
  %7 = load i8, ptr %r9, align 4, !tbaa !52
  %conv10 = zext i8 %7 to i16
  %call11 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %conv, i16 noundef zeroext %conv10, ptr noundef @.str.75, i32 noundef 5235, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_cmpge_epu32_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.50], ptr @test_simde_mm256_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.50, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 8, !tbaa !54
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.50], ptr @test_simde_mm256_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.50, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a3, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.50], ptr @test_simde_mm256_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.50, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [8 x i32], ptr %b5, i64 0, i64 0
  %call7 = call <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %arraydecay6)
  store <4 x i64> %call7, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp8, align 32, !tbaa !16
  %call9 = call zeroext i8 @simde_mm256_mask_cmpge_epu32_mask(i8 noundef zeroext %5, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp8)
  store i8 %call9, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.50], ptr @test_simde_mm256_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.50, ptr %arrayidx10, i32 0, i32 3
  %10 = load i8, ptr %r11, align 4, !tbaa !56
  %call12 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 5311, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm512_cmpge_epu32() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.51], ptr @test_simde_x_mm512_cmpge_epu32.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.51, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.51], ptr @test_simde_x_mm512_cmpge_epu32.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.51, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_x_mm512_cmpge_epu32(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.51], ptr @test_simde_x_mm512_cmpge_epu32.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.51, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [16 x i32], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u32x16_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 5403, ptr noundef @.str.76, ptr noundef @.str.90)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_cmpge_epu32_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i16, align 2
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.52], ptr @test_simde_mm512_cmpge_epu32_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.52, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.52], ptr @test_simde_mm512_cmpge_epu32_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.52, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [16 x i32], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call zeroext i16 @simde_mm512_cmpge_epu32_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store i16 %call7, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i16, ptr %r, align 2, !tbaa !17
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.52], ptr @test_simde_mm512_cmpge_epu32_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.52, ptr %arrayidx8, i32 0, i32 2
  %7 = load i16, ptr %r9, align 4, !tbaa !57
  %call10 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %5, i16 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 5485, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_cmpge_epu32_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i16, align 2
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i16, align 2
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.53], ptr @test_simde_mm512_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.53, ptr %arrayidx, i32 0, i32 0
  %2 = load i16, ptr %k1, align 8, !tbaa !59
  store i16 %2, ptr %k, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.53], ptr @test_simde_mm512_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.53, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a3, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.53], ptr @test_simde_mm512_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.53, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [16 x i32], ptr %b5, i64 0, i64 0
  %call7 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  %5 = load i16, ptr %k, align 2, !tbaa !17
  %6 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call zeroext i16 @simde_mm512_mask_cmpge_epu32_mask(i16 noundef zeroext %5, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8)
  store i16 %call9, ptr %r, align 2, !tbaa !17
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i16, ptr %r, align 2, !tbaa !17
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.53], ptr @test_simde_mm512_mask_cmpge_epu32_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.53, ptr %arrayidx10, i32 0, i32 3
  %10 = load i16, ptr %r11, align 4, !tbaa !61
  %call12 = call i32 @simde_assert_equal_u16_(i16 noundef zeroext %8, i16 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 5577, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm_cmpge_epi64() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.54], ptr @test_simde_x_mm_cmpge_epi64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.54, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.54], ptr @test_simde_x_mm_cmpge_epi64.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.54, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call <2 x i64> @simde_x_mm_cmpge_epi64(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.54], ptr @test_simde_x_mm_cmpge_epi64.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.54, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [2 x i64], ptr %r8, i64 0, i64 0
  %call10 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_x86_assert_equal_i64x2_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.75, i32 noundef 5645, ptr noundef @.str.76, ptr noundef @.str.91)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_cmpge_epi64_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.55], ptr @test_simde_mm_cmpge_epi64_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.55, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.55], ptr @test_simde_mm_cmpge_epi64_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.55, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call zeroext i8 @simde_mm_cmpge_epi64_mask(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store i8 %call6, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.55], ptr @test_simde_mm_cmpge_epi64_mask.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.55, ptr %arrayidx7, i32 0, i32 2
  %7 = load i8, ptr %r8, align 8, !tbaa !34
  %call9 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 5711, ptr noundef @.str.76, ptr noundef @.str.79)
  %tobool = icmp ne i32 %call9, 0
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_cmpge_epi64_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.56], ptr @test_simde_mm_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.56, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 16, !tbaa !62
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.56], ptr @test_simde_mm_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.56, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a3, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.56], ptr @test_simde_mm_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.56, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [2 x i64], ptr %b5, i64 0, i64 0
  %call7 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay6)
  store <2 x i64> %call7, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call8 = call zeroext i8 @simde_mm_mask_cmpge_epi64_mask(i8 noundef zeroext %5, <2 x i64> noundef %6, <2 x i64> noundef %7)
  store i8 %call8, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds [8 x %struct.anon.56], ptr @test_simde_mm_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %9
  %r10 = getelementptr inbounds %struct.anon.56, ptr %arrayidx9, i32 0, i32 3
  %10 = load i8, ptr %r10, align 8, !tbaa !64
  %call11 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 5787, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup15
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm256_cmpge_epi64() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %indirect-arg-temp12 = alloca <4 x i64>, align 32
  %indirect-arg-temp13 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.57], ptr @test_simde_x_mm256_cmpge_epi64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.57, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i64], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.57], ptr @test_simde_x_mm256_cmpge_epi64.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.57, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x i64> @simde_x_mm256_cmpge_epi64(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store <4 x i64> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.57], ptr @test_simde_x_mm256_cmpge_epi64.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.57, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [4 x i64], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay10)
  store <4 x i64> %5, ptr %indirect-arg-temp12, align 32, !tbaa !16
  store <4 x i64> %call11, ptr %indirect-arg-temp13, align 32, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_i64x4_(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp12, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 5855, ptr noundef @.str.76, ptr noundef @.str.93)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_cmpge_epi64_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.58], ptr @test_simde_mm256_cmpge_epi64_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.58, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i64], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.58], ptr @test_simde_mm256_cmpge_epi64_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.58, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call zeroext i8 @simde_mm256_cmpge_epi64_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store i8 %call7, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.58], ptr @test_simde_mm256_cmpge_epi64_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.58, ptr %arrayidx8, i32 0, i32 2
  %7 = load i8, ptr %r9, align 8, !tbaa !52
  %call10 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 5921, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_cmpge_epi64_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.59], ptr @test_simde_mm256_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.59, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 16, !tbaa !65
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.59], ptr @test_simde_mm256_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.59, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i64], ptr %a3, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.59], ptr @test_simde_mm256_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.59, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [4 x i64], ptr %b5, i64 0, i64 0
  %call7 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay6)
  store <4 x i64> %call7, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp8, align 32, !tbaa !16
  %call9 = call zeroext i8 @simde_mm256_mask_cmpge_epi64_mask(i8 noundef zeroext %5, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp8)
  store i8 %call9, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.59], ptr @test_simde_mm256_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.59, ptr %arrayidx10, i32 0, i32 3
  %10 = load i8, ptr %r11, align 8, !tbaa !67
  %call12 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 5997, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm512_cmpge_epi64() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.60], ptr @test_simde_x_mm512_cmpge_epi64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.60, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.60], ptr @test_simde_x_mm512_cmpge_epi64.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.60, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_x_mm512_cmpge_epi64(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.60], ptr @test_simde_x_mm512_cmpge_epi64.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.60, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [8 x i64], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_i64x8_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 6089, ptr noundef @.str.76, ptr noundef @.str.94)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_cmpge_epi64_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.61], ptr @test_simde_mm512_cmpge_epi64_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.61, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.61], ptr @test_simde_mm512_cmpge_epi64_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.61, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call zeroext i8 @simde_mm512_cmpge_epi64_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store i8 %call7, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.61], ptr @test_simde_mm512_cmpge_epi64_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.61, ptr %arrayidx8, i32 0, i32 2
  %7 = load i8, ptr %r9, align 8, !tbaa !68
  %call10 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 6171, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_cmpge_epi64_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.62], ptr @test_simde_mm512_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.62, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 16, !tbaa !70
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.62], ptr @test_simde_mm512_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.62, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a3, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.62], ptr @test_simde_mm512_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.62, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [8 x i64], ptr %b5, i64 0, i64 0
  %call7 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call zeroext i8 @simde_mm512_mask_cmpge_epi64_mask(i8 noundef zeroext %5, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8)
  store i8 %call9, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.62], ptr @test_simde_mm512_mask_cmpge_epi64_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.62, ptr %arrayidx10, i32 0, i32 3
  %10 = load i8, ptr %r11, align 8, !tbaa !72
  %call12 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 6263, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm_cmpge_epu64() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.63], ptr @test_simde_x_mm_cmpge_epu64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.63, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.63], ptr @test_simde_x_mm_cmpge_epu64.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.63, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call <2 x i64> @simde_x_mm_cmpge_epu64(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store <2 x i64> %call6, ptr %r, align 16, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.63], ptr @test_simde_x_mm_cmpge_epu64.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.63, ptr %arrayidx7, i32 0, i32 2
  %arraydecay9 = getelementptr inbounds [2 x i64], ptr %r8, i64 0, i64 0
  %call10 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay9)
  %call11 = call i32 @simde_test_x86_assert_equal_u64x2_(<2 x i64> noundef %5, <2 x i64> noundef %call10, ptr noundef @.str.75, i32 noundef 6331, ptr noundef @.str.76, ptr noundef @.str.91)
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
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup14 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup14:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest15 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest15, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup14
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup14
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_cmpge_epu64_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.64], ptr @test_simde_mm_cmpge_epu64_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.64, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a1, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.64], ptr @test_simde_mm_cmpge_epu64_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.64, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay4)
  store <2 x i64> %call5, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %4 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call6 = call zeroext i8 @simde_mm_cmpge_epu64_mask(<2 x i64> noundef %3, <2 x i64> noundef %4)
  store i8 %call6, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx7 = getelementptr inbounds [8 x %struct.anon.64], ptr @test_simde_mm_cmpge_epu64_mask.test_vec, i64 0, i64 %6
  %r8 = getelementptr inbounds %struct.anon.64, ptr %arrayidx7, i32 0, i32 2
  %7 = load i8, ptr %r8, align 8, !tbaa !34
  %call9 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 6397, ptr noundef @.str.76, ptr noundef @.str.79)
  %tobool = icmp ne i32 %call9, 0
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup12:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest13 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest13, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup12
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm_mask_cmpge_epu64_mask() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <2 x i64>, align 16
  %b = alloca <2 x i64>, align 16
  %r = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.65], ptr @test_simde_mm_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.65, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 16, !tbaa !62
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.65], ptr @test_simde_mm_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.65, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a3, i64 0, i64 0
  %call = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay)
  store <2 x i64> %call, ptr %a, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.65], ptr @test_simde_mm_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.65, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [2 x i64], ptr %b5, i64 0, i64 0
  %call7 = call <2 x i64> @simde_mm_loadu_epi64(ptr noundef %arraydecay6)
  store <2 x i64> %call7, ptr %b, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <2 x i64>, ptr %a, align 16, !tbaa !16
  %7 = load <2 x i64>, ptr %b, align 16, !tbaa !16
  %call8 = call zeroext i8 @simde_mm_mask_cmpge_epu64_mask(i8 noundef zeroext %5, <2 x i64> noundef %6, <2 x i64> noundef %7)
  store i8 %call8, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds [8 x %struct.anon.65], ptr @test_simde_mm_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %9
  %r10 = getelementptr inbounds %struct.anon.65, ptr %arrayidx9, i32 0, i32 3
  %10 = load i8, ptr %r10, align 8, !tbaa !64
  %call11 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 6473, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup15
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm256_cmpge_epu64() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  %indirect-arg-temp12 = alloca <4 x i64>, align 32
  %indirect-arg-temp13 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.66], ptr @test_simde_x_mm256_cmpge_epu64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.66, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i64], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.66], ptr @test_simde_x_mm256_cmpge_epu64.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.66, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call <4 x i64> @simde_x_mm256_cmpge_epu64(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store <4 x i64> %call7, ptr %r, align 32, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.66], ptr @test_simde_x_mm256_cmpge_epu64.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.66, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [4 x i64], ptr %r9, i64 0, i64 0
  %call11 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay10)
  store <4 x i64> %5, ptr %indirect-arg-temp12, align 32, !tbaa !16
  store <4 x i64> %call11, ptr %indirect-arg-temp13, align 32, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u64x4_(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp12, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 6541, ptr noundef @.str.76, ptr noundef @.str.93)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_cmpge_epu64_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp6 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.67], ptr @test_simde_mm256_cmpge_epu64_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.67, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i64], ptr %a1, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.67], ptr @test_simde_mm256_cmpge_epu64_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.67, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [4 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay4)
  store <4 x i64> %call5, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp6, align 32, !tbaa !16
  %call7 = call zeroext i8 @simde_mm256_cmpge_epu64_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp6)
  store i8 %call7, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.67], ptr @test_simde_mm256_cmpge_epu64_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.67, ptr %arrayidx8, i32 0, i32 2
  %7 = load i8, ptr %r9, align 8, !tbaa !52
  %call10 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 6607, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm256_mask_cmpge_epu64_mask() #4 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <4 x i64>, align 32
  %b = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp8 = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.68], ptr @test_simde_mm256_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.68, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 16, !tbaa !65
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.68], ptr @test_simde_mm256_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.68, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [4 x i64], ptr %a3, i64 0, i64 0
  %call = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay)
  store <4 x i64> %call, ptr %a, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.68], ptr @test_simde_mm256_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.68, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [4 x i64], ptr %b5, i64 0, i64 0
  %call7 = call <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %arraydecay6)
  store <4 x i64> %call7, ptr %b, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <4 x i64>, ptr %a, align 32, !tbaa !16
  %7 = load <4 x i64>, ptr %b, align 32, !tbaa !16
  store <4 x i64> %6, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp8, align 32, !tbaa !16
  %call9 = call zeroext i8 @simde_mm256_mask_cmpge_epu64_mask(i8 noundef zeroext %5, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp8)
  store i8 %call9, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.68], ptr @test_simde_mm256_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.68, ptr %arrayidx10, i32 0, i32 3
  %10 = load i8, ptr %r11, align 8, !tbaa !67
  %call12 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 6683, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_x_mm512_cmpge_epu64() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  %indirect-arg-temp12 = alloca <8 x i64>, align 64
  %indirect-arg-temp13 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup17

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.69], ptr @test_simde_x_mm512_cmpge_epu64.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.69, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.69], ptr @test_simde_x_mm512_cmpge_epu64.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.69, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call <8 x i64> @simde_x_mm512_cmpge_epu64(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store <8 x i64> %call7, ptr %r, align 64, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.69], ptr @test_simde_x_mm512_cmpge_epu64.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.69, ptr %arrayidx8, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [8 x i64], ptr %r9, i64 0, i64 0
  %call11 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay10)
  store <8 x i64> %5, ptr %indirect-arg-temp12, align 64, !tbaa !16
  store <8 x i64> %call11, ptr %indirect-arg-temp13, align 64, !tbaa !16
  %call14 = call i32 @simde_test_x86_assert_equal_u64x8_(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp12, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp13, ptr noundef @.str.75, i32 noundef 6775, ptr noundef @.str.76, ptr noundef @.str.94)
  %tobool = icmp ne i32 %call14, 0
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
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup17 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %7 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup17:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup17
  %8 = load i32, ptr %retval, align 4
  ret i32 %8

unreachable:                                      ; preds = %cleanup17
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_cmpge_epu64_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp6 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.70], ptr @test_simde_mm512_cmpge_epu64_mask.test_vec, i64 0, i64 %1
  %a1 = getelementptr inbounds %struct.anon.70, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a1, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %2 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.70], ptr @test_simde_mm512_cmpge_epu64_mask.test_vec, i64 0, i64 %2
  %b3 = getelementptr inbounds %struct.anon.70, ptr %arrayidx2, i32 0, i32 1
  %arraydecay4 = getelementptr inbounds [8 x i64], ptr %b3, i64 0, i64 0
  %call5 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay4)
  store <8 x i64> %call5, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %3 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp6, align 64, !tbaa !16
  %call7 = call zeroext i8 @simde_mm512_cmpge_epu64_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp6)
  store i8 %call7, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %5 = load i8, ptr %r, align 1, !tbaa !16
  %6 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx8 = getelementptr inbounds [8 x %struct.anon.70], ptr @test_simde_mm512_cmpge_epu64_mask.test_vec, i64 0, i64 %6
  %r9 = getelementptr inbounds %struct.anon.70, ptr %arrayidx8, i32 0, i32 2
  %7 = load i8, ptr %r9, align 8, !tbaa !68
  %call10 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %5, i8 noundef zeroext %7, ptr noundef @.str.75, i32 noundef 6857, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup13:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest14 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup13
  %9 = load i32, ptr %retval, align 4
  ret i32 %9

unreachable:                                      ; preds = %cleanup13
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @test_simde_mm512_mask_cmpge_epu64_mask() #5 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i8, align 1
  %a = alloca <8 x i64>, align 64
  %b = alloca <8 x i64>, align 64
  %r = alloca i8, align 1
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp8 = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !tbaa !11
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup16

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %k) #13
  %1 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds [8 x %struct.anon.71], ptr @test_simde_mm512_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %1
  %k1 = getelementptr inbounds %struct.anon.71, ptr %arrayidx, i32 0, i32 0
  %2 = load i8, ptr %k1, align 16, !tbaa !70
  store i8 %2, ptr %k, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a) #13
  %3 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx2 = getelementptr inbounds [8 x %struct.anon.71], ptr @test_simde_mm512_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %3
  %a3 = getelementptr inbounds %struct.anon.71, ptr %arrayidx2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a3, i64 0, i64 0
  %call = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay)
  store <8 x i64> %call, ptr %a, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %b) #13
  %4 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx4 = getelementptr inbounds [8 x %struct.anon.71], ptr @test_simde_mm512_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %4
  %b5 = getelementptr inbounds %struct.anon.71, ptr %arrayidx4, i32 0, i32 2
  %arraydecay6 = getelementptr inbounds [8 x i64], ptr %b5, i64 0, i64 0
  %call7 = call <8 x i64> @simde_mm512_loadu_si512(ptr noundef %arraydecay6)
  store <8 x i64> %call7, ptr %b, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  %5 = load i8, ptr %k, align 1, !tbaa !16
  %6 = load <8 x i64>, ptr %a, align 64, !tbaa !16
  %7 = load <8 x i64>, ptr %b, align 64, !tbaa !16
  store <8 x i64> %6, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp8, align 64, !tbaa !16
  %call9 = call zeroext i8 @simde_mm512_mask_cmpge_epu64_mask(i8 noundef zeroext %5, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp8)
  store i8 %call9, ptr %r, align 1, !tbaa !16
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i8, ptr %r, align 1, !tbaa !16
  %9 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx10 = getelementptr inbounds [8 x %struct.anon.71], ptr @test_simde_mm512_mask_cmpge_epu64_mask.test_vec, i64 0, i64 %9
  %r11 = getelementptr inbounds %struct.anon.71, ptr %arrayidx10, i32 0, i32 3
  %10 = load i8, ptr %r11, align 8, !tbaa !72
  %call12 = call i32 @simde_assert_equal_u8_(i8 noundef zeroext %8, i8 noundef zeroext %10, ptr noundef @.str.75, i32 noundef 6949, ptr noundef @.str.76, ptr noundef @.str.79)
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
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %b) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr %k) #13
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup16 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add i64 %11, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond

cleanup16:                                        ; preds = %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  %cleanup.dest17 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest17, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup16
  %12 = load i32, ptr %retval, align 4
  ret i32 %12

unreachable:                                      ; preds = %cleanup16
  unreachable
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_loadu_epi8(ptr noundef %mem_addr) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde__m128i_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %1 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %call = call <2 x i64> @simde__m128i_from_private(double %2, double %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_x_mm_cmpge_epi8(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %b_ = alloca %union.simde__m128i_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %b_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  %10 = load <16 x i8>, ptr %a_, align 16, !tbaa !16
  %11 = load <16 x i8>, ptr %b_, align 16, !tbaa !16
  %cmp = icmp sge <16 x i8> %10, %11
  %sext = sext <16 x i1> %cmp to <16 x i8>
  store <16 x i8> %sext, ptr %r_, align 16, !tbaa !16
  %12 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %13 = load double, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %call3 = call <2 x i64> @simde__m128i_from_private(double %13, double %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i8x16_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i8], align 16
  %b_ = alloca [16 x i8], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %0 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %0, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %1 = load ptr, ptr %tmp, align 8, !tbaa !9
  %2 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %1, <2 x i64> noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %3 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %3, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %4 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %4, <2 x i64> noundef %5)
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %7 = load i32, ptr %line.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi8_(i64 noundef 16, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde__m128i_from_private(double %v.coerce0, double %v.coerce1) #6 {
entry:
  %v = alloca %union.simde__m128i_private, align 16
  %r = alloca <2 x i64>, align 16
  %0 = getelementptr inbounds { double, double }, ptr %v, i32 0, i32 0
  store double %v.coerce0, ptr %0, align 16
  %1 = getelementptr inbounds { double, double }, ptr %v, i32 0, i32 1
  store double %v.coerce1, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %r) #13
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r, ptr align 16 %v, i64 16, i1 false)
  %2 = load <2 x i64>, ptr %r, align 16, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 16, ptr %r) #13
  ret <2 x i64> %2
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

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm_storeu_si128(ptr noundef %mem_addr, <2 x i64> noundef %a) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <2 x i64>, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 16 %a.addr, i64 16, i1 false)
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.78, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nounwind uwtable
define internal void @simde_test_debug_printf_(ptr noundef %format, ...) #0 {
entry:
  %format.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #13
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
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #13
  ret void
}

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm_cmpge_epi8_mask(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_x_mm_cmpge_epi8(<2 x i64> noundef %0, <2 x i64> noundef %1)
  %call1 = call zeroext i16 @simde_mm_movepi8_mask(<2 x i64> noundef %call)
  ret i16 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_u16_(i16 noundef zeroext %a, i16 noundef zeroext %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  store i16 %a, ptr %a.addr, align 2, !tbaa !17
  store i16 %b, ptr %b.addr, align 2, !tbaa !17
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i16, ptr %a.addr, align 2, !tbaa !17
  %conv = zext i16 %0 to i32
  %1 = load i16, ptr %b.addr, align 2, !tbaa !17
  %conv1 = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, %conv1
  %lnot = xor i1 %cmp, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv4 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %6 = load i16, ptr %a.addr, align 2, !tbaa !17
  %conv5 = zext i16 %6 to i32
  %7 = load i16, ptr %b.addr, align 2, !tbaa !17
  %conv6 = zext i16 %7 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.80, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %conv5, i32 noundef %conv6)
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
define internal zeroext i16 @simde_mm_movepi8_mask(<2 x i64> noundef %a) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %r = alloca i16, align 2
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i16, align 2
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  store i16 0, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr %r1) #13
  store i16 0, ptr %r1, align 2, !tbaa !17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !73
  %cmp = icmp ult i64 %5, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %6 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !73
  %mul = mul i64 %6, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !73
  %7 = load <16 x i8>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !73
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !73
  %vecext = extractelement <16 x i8> %7, i64 %8
  %conv = sext i8 %vecext to i32
  %cmp2 = icmp slt i32 %conv, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !73
  %shl = shl i64 1, %9
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ 0, %cond.false ]
  %10 = load i16, ptr %r1, align 2, !tbaa !17, !llvm.access.group !73
  %conv4 = zext i16 %10 to i64
  %or = or i64 %conv4, %cond
  %conv5 = trunc i64 %or to i16
  store i16 %conv5, ptr %r1, align 2, !tbaa !17, !llvm.access.group !73
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !73
  %add6 = add i64 %11, 1
  store i64 %add6, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !73
  br label %omp.inner.for.cond, !llvm.loop !74

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  %12 = load i16, ptr %r, align 2, !tbaa !17
  %conv7 = zext i16 %12 to i32
  %13 = load i16, ptr %r1, align 2, !tbaa !17
  %conv8 = zext i16 %13 to i32
  %or9 = or i32 %conv7, %conv8
  %conv10 = trunc i32 %or9 to i16
  store i16 %conv10, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 2, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %14 = load i16, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i16 %14
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm_mask_cmpge_epi8_mask(i16 noundef zeroext %k, <2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %k.addr = alloca i16, align 2
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store i16 %k, ptr %k.addr, align 2, !tbaa !17
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load i16, ptr %k.addr, align 2, !tbaa !17
  %conv = zext i16 %0 to i32
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call zeroext i16 @simde_mm_cmpge_epi8_mask(<2 x i64> noundef %1, <2 x i64> noundef %2)
  %conv1 = zext i16 %call to i32
  %and = and i32 %conv, %conv1
  %conv2 = trunc i32 %and to i16
  ret i16 %conv2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_loadu_epi8(ptr noundef %mem_addr) #9 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <4 x i64>, align 32
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 1 %0, i64 32, i1 false)
  %1 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_x_mm256_cmpge_epi8(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %b_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %b_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %4 = load <32 x i8>, ptr %a_, align 32, !tbaa !16
  %5 = load <32 x i8>, ptr %b_, align 32, !tbaa !16
  %cmp = icmp sge <32 x i8> %4, %5
  %sext = sext <32 x i1> %cmp to <32 x i8>
  store <32 x i8> %sext, ptr %r_, align 32, !tbaa !16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #13
  ret <4 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i8x32_(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [32 x i8], align 16
  %b_ = alloca [32 x i8], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [32 x i8], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %6, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [32 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi8_(i64 noundef 32, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m256i_to_private(ptr noalias sret(%union.simde__m256i_private) align 32 %agg.result, ptr noundef byval(<4 x i64>) align 32 %0) #10 {
entry:
  %v.addr = alloca <4 x i64>, align 32
  %v = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store <4 x i64> %v, ptr %v.addr, align 32, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %agg.result, ptr align 32 %v.addr, i64 32, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %v) #9 {
entry:
  %r = alloca <4 x i64>, align 32
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 32 %v, i64 32, i1 false)
  %0 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  ret <4 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm256_storeu_si256(ptr noundef %mem_addr, ptr noundef byval(<4 x i64>) align 32 %0) #10 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  %1 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 32 %a.addr, i64 32, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm256_cmpge_epi8_mask(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp2 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call <4 x i64> @simde_x_mm256_cmpge_epi8(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call3 = call i32 @simde_mm256_movepi8_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp2)
  ret i32 %call3
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.80, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7)
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
define internal i32 @simde_mm256_movepi8_mask(ptr noundef byval(<4 x i64>) align 32 %0) #10 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %r = alloca i32, align 4
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i32, align 4
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %1 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  store i32 0, ptr %r, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %r1) #13
  store i32 0, ptr %r1, align 4, !tbaa !5
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !77
  %cmp = icmp ult i64 %2, 32
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !77
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !77
  %4 = load <32 x i8>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !77
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !77
  %vecext = extractelement <32 x i8> %4, i64 %5
  %conv = sext i8 %vecext to i32
  %cmp2 = icmp slt i32 %conv, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !77
  %shl = shl i64 1, %6
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ 0, %cond.false ]
  %7 = load i32, ptr %r1, align 4, !tbaa !5, !llvm.access.group !77
  %conv4 = zext i32 %7 to i64
  %or = or i64 %conv4, %cond
  %conv5 = trunc i64 %or to i32
  store i32 %conv5, ptr %r1, align 4, !tbaa !5, !llvm.access.group !77
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !77
  %add6 = add i64 %8, 1
  store i64 %add6, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !77
  br label %omp.inner.for.cond, !llvm.loop !78

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 32, ptr %i, align 8, !tbaa !11
  %9 = load i32, ptr %r, align 4, !tbaa !5
  %10 = load i32, ptr %r1, align 4, !tbaa !5
  %or7 = or i32 %9, %10
  store i32 %or7, ptr %r, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %11 = load i32, ptr %r, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm256_mask_cmpge_epi8_mask(i32 noundef %k, ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #10 {
entry:
  %k.addr = alloca i32, align 4
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store i32 %k, ptr %k.addr, align 4, !tbaa !5
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load i32, ptr %k.addr, align 4, !tbaa !5
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call i32 @simde_mm256_cmpge_epi8_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %and = and i32 %2, %call
  ret i32 %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_mm512_loadu_si512(ptr noundef %mem_addr) #11 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <8 x i64>, align 64
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  %v = getelementptr inbounds %struct.simde_mm512_loadu_si512_s, ptr %0, i32 0, i32 0
  %1 = load <8 x i64>, ptr %v, align 1, !tbaa !16
  store <8 x i64> %1, ptr %r, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  ret <8 x i64> %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_x_mm512_cmpge_epi8(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %4 = load <64 x i8>, ptr %a_, align 64, !tbaa !16
  %5 = load <64 x i8>, ptr %b_, align 64, !tbaa !16
  %cmp = icmp sge <64 x i8> %4, %5
  %sext = sext <64 x i1> %cmp to <64 x i8>
  store <64 x i8> %sext, ptr %r_, align 64, !tbaa !16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #13
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i8x64_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [64 x i8], align 16
  %b_ = alloca [64 x i8], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [64 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [64 x i8], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi8_(i64 noundef 64, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde__m512i_to_private(ptr noalias sret(%union.simde__m512i_private) align 64 %agg.result, ptr noundef byval(<8 x i64>) align 64 %0) #10 {
entry:
  %v.addr = alloca <8 x i64>, align 64
  %v = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %v, ptr %v.addr, align 64, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %agg.result, ptr align 64 %v.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %v) #11 {
entry:
  %r = alloca <8 x i64>, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #13
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %r, ptr align 64 %v, i64 64, i1 false)
  %0 = load <8 x i64>, ptr %r, align 64, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #13
  ret <8 x i64> %0
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @simde_mm512_storeu_si512(ptr noundef %mem_addr, ptr noundef byval(<8 x i64>) align 64 %0) #10 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %a.addr = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  %1 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 64 %a.addr, i64 64, i1 false)
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_mm512_cmpge_epi8_mask(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp2 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call <8 x i64> @simde_x_mm512_cmpge_epi8(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call3 = call i64 @simde_mm512_movepi8_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp2)
  ret i64 %call3
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.83, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7)
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
define internal i64 @simde_mm512_movepi8_mask(ptr noundef byval(<8 x i64>) align 64 %0) #10 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %r = alloca i64, align 8
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i64, align 8
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #13
  store i64 0, ptr %r, align 8, !tbaa !11
  store i64 0, ptr %r, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #13
  store i64 0, ptr %r1, align 8, !tbaa !11
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !80
  %cmp = icmp ult i64 %2, 64
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !80
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !80
  %4 = load <64 x i8>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !80
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !80
  %vecext = extractelement <64 x i8> %4, i64 %5
  %conv = sext i8 %vecext to i32
  %cmp2 = icmp slt i32 %conv, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !80
  %shl = shl i64 1, %6
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shl, %cond.true ], [ 0, %cond.false ]
  %7 = load i64, ptr %r1, align 8, !tbaa !11, !llvm.access.group !80
  %or = or i64 %7, %cond
  store i64 %or, ptr %r1, align 8, !tbaa !11, !llvm.access.group !80
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !80
  %add4 = add i64 %8, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !80
  br label %omp.inner.for.cond, !llvm.loop !81

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 64, ptr %i, align 8, !tbaa !11
  %9 = load i64, ptr %r, align 8, !tbaa !11
  %10 = load i64, ptr %r1, align 8, !tbaa !11
  %or5 = or i64 %9, %10
  store i64 %or5, ptr %r, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %11 = load i64, ptr %r, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i64 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_mm512_mask_cmpge_epi8_mask(i64 noundef %k, ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #10 {
entry:
  %k.addr = alloca i64, align 8
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store i64 %k, ptr %k.addr, align 8, !tbaa !11
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load i64, ptr %k.addr, align 8, !tbaa !11
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call i64 @simde_mm512_cmpge_epi8_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %and = and i64 %2, %call
  ret i64 %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_x_mm_cmpge_epu8(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %b_ = alloca %union.simde__m128i_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %b_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  %10 = load <16 x i8>, ptr %a_, align 16, !tbaa !16
  %11 = load <16 x i8>, ptr %b_, align 16, !tbaa !16
  %cmp = icmp uge <16 x i8> %10, %11
  %sext = sext <16 x i1> %cmp to <16 x i8>
  store <16 x i8> %sext, ptr %r_, align 16, !tbaa !16
  %12 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %13 = load double, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %call3 = call <2 x i64> @simde__m128i_from_private(double %13, double %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u8x16_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i8], align 16
  %b_ = alloca [16 x i8], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %0 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %0, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %1 = load ptr, ptr %tmp, align 8, !tbaa !9
  %2 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %1, <2 x i64> noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %3 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %3, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %4 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %4, <2 x i64> noundef %5)
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %a_, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [16 x i8], ptr %b_, i64 0, i64 0
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %7 = load i32, ptr %line.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu8_(i64 noundef 16, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.84, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
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
define internal zeroext i16 @simde_mm_cmpge_epu8_mask(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_x_mm_cmpge_epu8(<2 x i64> noundef %0, <2 x i64> noundef %1)
  %call1 = call zeroext i16 @simde_mm_movepi8_mask(<2 x i64> noundef %call)
  ret i16 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm_mask_cmpge_epu8_mask(i16 noundef zeroext %k, <2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %k.addr = alloca i16, align 2
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store i16 %k, ptr %k.addr, align 2, !tbaa !17
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load i16, ptr %k.addr, align 2, !tbaa !17
  %conv = zext i16 %0 to i32
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call zeroext i16 @simde_mm_cmpge_epu8_mask(<2 x i64> noundef %1, <2 x i64> noundef %2)
  %conv1 = zext i16 %call to i32
  %and = and i32 %conv, %conv1
  %conv2 = trunc i32 %and to i16
  ret i16 %conv2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_x_mm256_cmpge_epu8(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %b_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %b_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %4 = load <32 x i8>, ptr %a_, align 32, !tbaa !16
  %5 = load <32 x i8>, ptr %b_, align 32, !tbaa !16
  %cmp = icmp uge <32 x i8> %4, %5
  %sext = sext <32 x i1> %cmp to <32 x i8>
  store <32 x i8> %sext, ptr %r_, align 32, !tbaa !16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #13
  ret <4 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u8x32_(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [32 x i8], align 16
  %b_ = alloca [32 x i8], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [32 x i8], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %6, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [32 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu8_(i64 noundef 32, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm256_cmpge_epu8_mask(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp2 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call <4 x i64> @simde_x_mm256_cmpge_epu8(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call3 = call i32 @simde_mm256_movepi8_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp2)
  ret i32 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm256_mask_cmpge_epu8_mask(i32 noundef %k, ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #10 {
entry:
  %k.addr = alloca i32, align 4
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store i32 %k, ptr %k.addr, align 4, !tbaa !5
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load i32, ptr %k.addr, align 4, !tbaa !5
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call i32 @simde_mm256_cmpge_epu8_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %and = and i32 %2, %call
  ret i32 %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_x_mm512_cmpge_epu8(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %4 = load <64 x i8>, ptr %a_, align 64, !tbaa !16
  %5 = load <64 x i8>, ptr %b_, align 64, !tbaa !16
  %cmp = icmp uge <64 x i8> %4, %5
  %sext = sext <64 x i1> %cmp to <64 x i8>
  store <64 x i8> %sext, ptr %r_, align 64, !tbaa !16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #13
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u8x64_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [64 x i8], align 16
  %b_ = alloca [64 x i8], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [64 x i8], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [64 x i8], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [64 x i8], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [64 x i8], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu8_(i64 noundef 64, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_mm512_cmpge_epu8_mask(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp2 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call <8 x i64> @simde_x_mm512_cmpge_epu8(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call3 = call i64 @simde_mm512_movepi8_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp2)
  ret i64 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @simde_mm512_mask_cmpge_epu8_mask(i64 noundef %k, ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #10 {
entry:
  %k.addr = alloca i64, align 8
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store i64 %k, ptr %k.addr, align 8, !tbaa !11
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load i64, ptr %k.addr, align 8, !tbaa !11
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call i64 @simde_mm512_cmpge_epu8_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %and = and i64 %2, %call
  ret i64 %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_loadu_epi16(ptr noundef %mem_addr) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde__m128i_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %1 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %call = call <2 x i64> @simde__m128i_from_private(double %2, double %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_x_mm_cmpge_epi16(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %b_ = alloca %union.simde__m128i_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %b_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  %10 = load <8 x i16>, ptr %a_, align 16, !tbaa !16
  %11 = load <8 x i16>, ptr %b_, align 16, !tbaa !16
  %cmp = icmp sge <8 x i16> %10, %11
  %sext = sext <8 x i1> %cmp to <8 x i16>
  store <8 x i16> %sext, ptr %r_, align 16, !tbaa !16
  %12 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %13 = load double, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %call3 = call <2 x i64> @simde__m128i_from_private(double %13, double %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i16x8_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i16], align 16
  %b_ = alloca [8 x i16], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %0 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %0, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %1 = load ptr, ptr %tmp, align 8, !tbaa !9
  %2 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %1, <2 x i64> noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %3 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %3, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %4 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %4, <2 x i64> noundef %5)
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %7 = load i32, ptr %line.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 8, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !17
  %conv = sext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !17
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
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !17
  %conv8 = sext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !17
  %conv10 = sext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.78, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
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
define internal zeroext i8 @simde_mm_cmpge_epi16_mask(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_x_mm_cmpge_epi16(<2 x i64> noundef %0, <2 x i64> noundef %1)
  %call1 = call zeroext i8 @simde_mm_movepi16_mask(<2 x i64> noundef %call)
  ret i8 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_assert_equal_u8_(i8 noundef zeroext %a, i8 noundef zeroext %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  store i8 %a, ptr %a.addr, align 1, !tbaa !16
  store i8 %b, ptr %b.addr, align 1, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  %0 = load i8, ptr %a.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %b.addr, align 1, !tbaa !16
  %conv1 = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, %conv1
  %lnot = xor i1 %cmp, true
  %lnot3 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot3 to i32
  %conv4 = sext i32 %lnot.ext to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %3 = load i32, ptr %line.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %5 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %6 = load i8, ptr %a.addr, align 1, !tbaa !16
  %conv5 = zext i8 %6 to i32
  %7 = load i8, ptr %b.addr, align 1, !tbaa !16
  %conv6 = zext i8 %7 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.80, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %conv5, i32 noundef %conv6)
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
define internal zeroext i8 @simde_mm_movepi16_mask(<2 x i64> noundef %a) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %r = alloca i8, align 1
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i8, align 1
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  store i8 0, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr %r1) #13
  store i8 0, ptr %r1, align 1, !tbaa !16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !83
  %cmp = icmp ult i64 %5, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %6 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !83
  %mul = mul i64 %6, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !83
  %7 = load <8 x i16>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !83
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !83
  %vecext = extractelement <8 x i16> %7, i64 %8
  %conv = sext i16 %vecext to i32
  %cmp2 = icmp slt i32 %conv, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !83
  %sh_prom = trunc i64 %9 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %10 = load i8, ptr %r1, align 1, !tbaa !16, !llvm.access.group !83
  %conv4 = zext i8 %10 to i32
  %or = or i32 %conv4, %cond
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, ptr %r1, align 1, !tbaa !16, !llvm.access.group !83
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !83
  %add6 = add i64 %11, 1
  store i64 %add6, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !83
  br label %omp.inner.for.cond, !llvm.loop !84

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  %12 = load i8, ptr %r, align 1, !tbaa !16
  %conv7 = zext i8 %12 to i32
  %13 = load i8, ptr %r1, align 1, !tbaa !16
  %conv8 = zext i8 %13 to i32
  %or9 = or i32 %conv7, %conv8
  %conv10 = trunc i32 %or9 to i8
  store i8 %conv10, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %14 = load i8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i8 %14
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm_mask_cmpge_epi16_mask(i8 noundef zeroext %k, <2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call zeroext i8 @simde_mm_cmpge_epi16_mask(<2 x i64> noundef %1, <2 x i64> noundef %2)
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv, %conv1
  %conv2 = trunc i32 %and to i8
  ret i8 %conv2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_loadu_epi16(ptr noundef %mem_addr) #9 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <4 x i64>, align 32
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 1 %0, i64 32, i1 false)
  %1 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_x_mm256_cmpge_epi16(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %b_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %b_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %4 = load <16 x i16>, ptr %a_, align 32, !tbaa !16
  %5 = load <16 x i16>, ptr %b_, align 32, !tbaa !16
  %cmp = icmp sge <16 x i16> %4, %5
  %sext = sext <16 x i1> %cmp to <16 x i16>
  store <16 x i16> %sext, ptr %r_, align 32, !tbaa !16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #13
  ret <4 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i16x16_(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i16], align 16
  %b_ = alloca [16 x i16], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [16 x i16], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [16 x i16], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %6, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [16 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [16 x i16], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 16, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm256_cmpge_epi16_mask(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp2 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call <4 x i64> @simde_x_mm256_cmpge_epi16(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call3 = call zeroext i16 @simde_mm256_movepi16_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp2)
  ret i16 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm256_movepi16_mask(ptr noundef byval(<4 x i64>) align 32 %0) #10 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %r = alloca i16, align 2
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i16, align 2
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %1 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  store i16 0, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr %r1) #13
  store i16 0, ptr %r1, align 2, !tbaa !17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !86
  %cmp = icmp ult i64 %2, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !86
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !86
  %4 = load <16 x i16>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !86
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !86
  %vecext = extractelement <16 x i16> %4, i64 %5
  %conv = sext i16 %vecext to i32
  %cmp2 = icmp slt i32 %conv, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !86
  %sh_prom = trunc i64 %6 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %7 = load i16, ptr %r1, align 2, !tbaa !17, !llvm.access.group !86
  %conv4 = zext i16 %7 to i32
  %or = or i32 %conv4, %cond
  %conv5 = trunc i32 %or to i16
  store i16 %conv5, ptr %r1, align 2, !tbaa !17, !llvm.access.group !86
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !86
  %add6 = add i64 %8, 1
  store i64 %add6, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !86
  br label %omp.inner.for.cond, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  %9 = load i16, ptr %r, align 2, !tbaa !17
  %conv7 = zext i16 %9 to i32
  %10 = load i16, ptr %r1, align 2, !tbaa !17
  %conv8 = zext i16 %10 to i32
  %or9 = or i32 %conv7, %conv8
  %conv10 = trunc i32 %or9 to i16
  store i16 %conv10, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 2, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %11 = load i16, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i16 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm256_mask_cmpge_epi16_mask(i16 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #10 {
entry:
  %k.addr = alloca i16, align 2
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store i16 %k, ptr %k.addr, align 2, !tbaa !17
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load i16, ptr %k.addr, align 2, !tbaa !17
  %conv = zext i16 %2 to i32
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call zeroext i16 @simde_mm256_cmpge_epi16_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %conv2 = zext i16 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i16
  ret i16 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_x_mm512_cmpge_epi16(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %4 = load <32 x i16>, ptr %a_, align 64, !tbaa !16
  %5 = load <32 x i16>, ptr %b_, align 64, !tbaa !16
  %cmp = icmp sge <32 x i16> %4, %5
  %sext = sext <32 x i1> %cmp to <32 x i16>
  store <32 x i16> %sext, ptr %r_, align 64, !tbaa !16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #13
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i16x32_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [32 x i16], align 16
  %b_ = alloca [32 x i16], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [32 x i16], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [32 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [32 x i16], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi16_(i64 noundef 32, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm512_cmpge_epi16_mask(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp2 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call <8 x i64> @simde_x_mm512_cmpge_epi16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call3 = call i32 @simde_mm512_movepi16_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp2)
  ret i32 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm512_movepi16_mask(ptr noundef byval(<8 x i64>) align 64 %0) #10 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %r = alloca i32, align 4
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i32, align 4
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #13
  store i32 0, ptr %r, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr %r1) #13
  store i32 0, ptr %r1, align 4, !tbaa !5
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !89
  %cmp = icmp ult i64 %2, 32
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !89
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !89
  %4 = load <32 x i16>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !89
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !89
  %vecext = extractelement <32 x i16> %4, i64 %5
  %conv = sext i16 %vecext to i32
  %cmp2 = icmp slt i32 %conv, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !89
  %sh_prom = trunc i64 %6 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %7 = load i32, ptr %r1, align 4, !tbaa !5, !llvm.access.group !89
  %or = or i32 %7, %cond
  store i32 %or, ptr %r1, align 4, !tbaa !5, !llvm.access.group !89
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !89
  %add4 = add i64 %8, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !89
  br label %omp.inner.for.cond, !llvm.loop !90

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 32, ptr %i, align 8, !tbaa !11
  %9 = load i32, ptr %r, align 4, !tbaa !5
  %10 = load i32, ptr %r1, align 4, !tbaa !5
  %or5 = or i32 %9, %10
  store i32 %or5, ptr %r, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %11 = load i32, ptr %r, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm512_mask_cmpge_epi16_mask(i32 noundef %k, ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #10 {
entry:
  %k.addr = alloca i32, align 4
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store i32 %k, ptr %k.addr, align 4, !tbaa !5
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load i32, ptr %k.addr, align 4, !tbaa !5
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call i32 @simde_mm512_cmpge_epi16_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %and = and i32 %2, %call
  ret i32 %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_x_mm_cmpge_epu16(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %b_ = alloca %union.simde__m128i_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %b_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  %10 = load <8 x i16>, ptr %a_, align 16, !tbaa !16
  %11 = load <8 x i16>, ptr %b_, align 16, !tbaa !16
  %cmp = icmp uge <8 x i16> %10, %11
  %sext = sext <8 x i1> %cmp to <8 x i16>
  store <8 x i16> %sext, ptr %r_, align 16, !tbaa !16
  %12 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %13 = load double, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %call3 = call <2 x i64> @simde__m128i_from_private(double %13, double %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u16x8_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i16], align 16
  %b_ = alloca [8 x i16], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %0 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %0, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %1 = load ptr, ptr %tmp, align 8, !tbaa !9
  %2 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %1, <2 x i64> noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %3 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %3, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %4 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %4, <2 x i64> noundef %5)
  %arraydecay4 = getelementptr inbounds [8 x i16], ptr %a_, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [8 x i16], ptr %b_, i64 0, i64 0
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %7 = load i32, ptr %line.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu16_(i64 noundef 8, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  %6 = load i16, ptr %arrayidx, align 2, !tbaa !17
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %8 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds i16, ptr %7, i64 %8
  %9 = load i16, ptr %arrayidx1, align 2, !tbaa !17
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
  %18 = load i16, ptr %arrayidx7, align 2, !tbaa !17
  %conv8 = zext i16 %18 to i32
  %19 = load ptr, ptr %b.addr, align 8, !tbaa !9
  %20 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx9 = getelementptr inbounds i16, ptr %19, i64 %20
  %21 = load i16, ptr %arrayidx9, align 2, !tbaa !17
  %conv10 = zext i16 %21 to i32
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.84, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %conv8, i32 noundef %conv10)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
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
define internal zeroext i8 @simde_mm_cmpge_epu16_mask(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_x_mm_cmpge_epu16(<2 x i64> noundef %0, <2 x i64> noundef %1)
  %call1 = call zeroext i8 @simde_mm_movepi16_mask(<2 x i64> noundef %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm_mask_cmpge_epu16_mask(i8 noundef zeroext %k, <2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call zeroext i8 @simde_mm_cmpge_epu16_mask(<2 x i64> noundef %1, <2 x i64> noundef %2)
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv, %conv1
  %conv2 = trunc i32 %and to i8
  ret i8 %conv2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_x_mm256_cmpge_epu16(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %b_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %b_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %4 = load <16 x i16>, ptr %a_, align 32, !tbaa !16
  %5 = load <16 x i16>, ptr %b_, align 32, !tbaa !16
  %cmp = icmp uge <16 x i16> %4, %5
  %sext = sext <16 x i1> %cmp to <16 x i16>
  store <16 x i16> %sext, ptr %r_, align 32, !tbaa !16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #13
  ret <4 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u16x16_(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i16], align 16
  %b_ = alloca [16 x i16], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [16 x i16], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [16 x i16], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %6, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [16 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [16 x i16], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu16_(i64 noundef 16, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm256_cmpge_epu16_mask(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp2 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call <4 x i64> @simde_x_mm256_cmpge_epu16(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call3 = call zeroext i16 @simde_mm256_movepi16_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp2)
  ret i16 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm256_mask_cmpge_epu16_mask(i16 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #10 {
entry:
  %k.addr = alloca i16, align 2
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store i16 %k, ptr %k.addr, align 2, !tbaa !17
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load i16, ptr %k.addr, align 2, !tbaa !17
  %conv = zext i16 %2 to i32
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call zeroext i16 @simde_mm256_cmpge_epu16_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %conv2 = zext i16 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i16
  ret i16 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_x_mm512_cmpge_epu16(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %4 = load <32 x i16>, ptr %a_, align 64, !tbaa !16
  %5 = load <32 x i16>, ptr %b_, align 64, !tbaa !16
  %cmp = icmp uge <32 x i16> %4, %5
  %sext = sext <32 x i1> %cmp to <32 x i16>
  store <32 x i16> %sext, ptr %r_, align 64, !tbaa !16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #13
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u16x32_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [32 x i16], align 16
  %b_ = alloca [32 x i16], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [32 x i16], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [32 x i16], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [32 x i16], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [32 x i16], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu16_(i64 noundef 32, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm512_cmpge_epu16_mask(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp2 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call <8 x i64> @simde_x_mm512_cmpge_epu16(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call3 = call i32 @simde_mm512_movepi16_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp2)
  ret i32 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i32 @simde_mm512_mask_cmpge_epu16_mask(i32 noundef %k, ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #10 {
entry:
  %k.addr = alloca i32, align 4
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store i32 %k, ptr %k.addr, align 4, !tbaa !5
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load i32, ptr %k.addr, align 4, !tbaa !5
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call i32 @simde_mm512_cmpge_epu16_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %and = and i32 %2, %call
  ret i32 %and
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_loadu_epi32(ptr noundef %mem_addr) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde__m128i_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %1 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %call = call <2 x i64> @simde__m128i_from_private(double %2, double %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_x_mm_cmpge_epi32(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %b_ = alloca %union.simde__m128i_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %b_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  %10 = load <4 x i32>, ptr %a_, align 16, !tbaa !16
  %11 = load <4 x i32>, ptr %b_, align 16, !tbaa !16
  %cmp = icmp sge <4 x i32> %10, %11
  %sext = sext <4 x i1> %cmp to <4 x i32>
  store <4 x i32> %sext, ptr %r_, align 16, !tbaa !16
  %12 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %13 = load double, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %call3 = call <2 x i64> @simde__m128i_from_private(double %13, double %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i32x4_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i32], align 16
  %b_ = alloca [4 x i32], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %0 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %0, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %1 = load ptr, ptr %tmp, align 8, !tbaa !9
  %2 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %1, <2 x i64> noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %3 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %3, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %4 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %4, <2 x i64> noundef %5)
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %7 = load i32, ptr %line.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 4, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.78, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
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
define internal zeroext i8 @simde_mm_cmpge_epi32_mask(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_x_mm_cmpge_epi32(<2 x i64> noundef %0, <2 x i64> noundef %1)
  %call1 = call zeroext i8 @simde_mm_movepi32_mask(<2 x i64> noundef %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm_movepi32_mask(<2 x i64> noundef %a) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %r = alloca i8, align 1
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i8, align 1
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  store i8 0, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr %r1) #13
  store i8 0, ptr %r1, align 1, !tbaa !16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !92
  %cmp = icmp ult i64 %5, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %6 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !92
  %mul = mul i64 %6, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !92
  %7 = load <4 x i32>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !92
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !92
  %vecext = extractelement <4 x i32> %7, i64 %8
  %cmp2 = icmp slt i32 %vecext, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !92
  %sh_prom = trunc i64 %9 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %10 = load i8, ptr %r1, align 1, !tbaa !16, !llvm.access.group !92
  %conv = zext i8 %10 to i32
  %or = or i32 %conv, %cond
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, ptr %r1, align 1, !tbaa !16, !llvm.access.group !92
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !92
  %add4 = add i64 %11, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !92
  br label %omp.inner.for.cond, !llvm.loop !93

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  %12 = load i8, ptr %r, align 1, !tbaa !16
  %conv5 = zext i8 %12 to i32
  %13 = load i8, ptr %r1, align 1, !tbaa !16
  %conv6 = zext i8 %13 to i32
  %or7 = or i32 %conv5, %conv6
  %conv8 = trunc i32 %or7 to i8
  store i8 %conv8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %14 = load i8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i8 %14
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm_mask_cmpge_epi32_mask(i8 noundef zeroext %k, <2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call zeroext i8 @simde_mm_cmpge_epi32_mask(<2 x i64> noundef %1, <2 x i64> noundef %2)
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv, %conv1
  %conv2 = trunc i32 %and to i8
  ret i8 %conv2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_loadu_epi32(ptr noundef %mem_addr) #9 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <4 x i64>, align 32
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 1 %0, i64 32, i1 false)
  %1 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_x_mm256_cmpge_epi32(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %b_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %b_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %4 = load <8 x i32>, ptr %a_, align 32, !tbaa !16
  %5 = load <8 x i32>, ptr %b_, align 32, !tbaa !16
  %cmp = icmp sge <8 x i32> %4, %5
  %sext = sext <8 x i1> %cmp to <8 x i32>
  store <8 x i32> %sext, ptr %r_, align 32, !tbaa !16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #13
  ret <4 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i32x8_(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i32], align 16
  %b_ = alloca [8 x i32], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [8 x i32], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %6, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [8 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i32], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_cmpge_epi32_mask(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp2 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call <4 x i64> @simde_x_mm256_cmpge_epi32(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call3 = call zeroext i8 @simde_mm256_movepi32_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp2)
  ret i8 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_movepi32_mask(ptr noundef byval(<4 x i64>) align 32 %0) #10 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i8, align 1
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %1 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  store i8 0, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr %r1) #13
  store i8 0, ptr %r1, align 1, !tbaa !16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !95
  %cmp = icmp ult i64 %2, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !95
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !95
  %4 = load <8 x i32>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !95
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !95
  %vecext = extractelement <8 x i32> %4, i64 %5
  %cmp2 = icmp slt i32 %vecext, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !95
  %sh_prom = trunc i64 %6 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %7 = load i8, ptr %r1, align 1, !tbaa !16, !llvm.access.group !95
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, %cond
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, ptr %r1, align 1, !tbaa !16, !llvm.access.group !95
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !95
  %add4 = add i64 %8, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !95
  br label %omp.inner.for.cond, !llvm.loop !96

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  %9 = load i8, ptr %r, align 1, !tbaa !16
  %conv5 = zext i8 %9 to i32
  %10 = load i8, ptr %r1, align 1, !tbaa !16
  %conv6 = zext i8 %10 to i32
  %or7 = or i32 %conv5, %conv6
  %conv8 = trunc i32 %or7 to i8
  store i8 %conv8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %11 = load i8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i8 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_mask_cmpge_epi32_mask(i8 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #10 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %2 to i32
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call zeroext i8 @simde_mm256_cmpge_epi32_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %conv2 = zext i8 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i8
  ret i8 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_x_mm512_cmpge_epi32(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %4 = load <16 x i32>, ptr %a_, align 64, !tbaa !16
  %5 = load <16 x i32>, ptr %b_, align 64, !tbaa !16
  %cmp = icmp sge <16 x i32> %4, %5
  %sext = sext <16 x i1> %cmp to <16 x i32>
  store <16 x i32> %sext, ptr %r_, align 64, !tbaa !16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #13
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i32x16_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i32], align 16
  %b_ = alloca [16 x i32], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [16 x i32], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [16 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [16 x i32], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi32_(i64 noundef 16, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm512_cmpge_epi32_mask(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp2 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call <8 x i64> @simde_x_mm512_cmpge_epi32(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call3 = call zeroext i16 @simde_mm512_movepi32_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp2)
  ret i16 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm512_movepi32_mask(ptr noundef byval(<8 x i64>) align 64 %0) #10 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %r = alloca i16, align 2
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i16, align 2
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 2, ptr %r) #13
  store i16 0, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr %r1) #13
  store i16 0, ptr %r1, align 2, !tbaa !17
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !98
  %cmp = icmp ult i64 %2, 16
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !98
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !98
  %4 = load <16 x i32>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !98
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !98
  %vecext = extractelement <16 x i32> %4, i64 %5
  %cmp2 = icmp slt i32 %vecext, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !98
  %sh_prom = trunc i64 %6 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %7 = load i16, ptr %r1, align 2, !tbaa !17, !llvm.access.group !98
  %conv = zext i16 %7 to i32
  %or = or i32 %conv, %cond
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, ptr %r1, align 2, !tbaa !17, !llvm.access.group !98
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !98
  %add4 = add i64 %8, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !98
  br label %omp.inner.for.cond, !llvm.loop !99

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 16, ptr %i, align 8, !tbaa !11
  %9 = load i16, ptr %r, align 2, !tbaa !17
  %conv5 = zext i16 %9 to i32
  %10 = load i16, ptr %r1, align 2, !tbaa !17
  %conv6 = zext i16 %10 to i32
  %or7 = or i32 %conv5, %conv6
  %conv8 = trunc i32 %or7 to i16
  store i16 %conv8, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 2, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %11 = load i16, ptr %r, align 2, !tbaa !17
  call void @llvm.lifetime.end.p0(i64 2, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i16 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm512_mask_cmpge_epi32_mask(i16 noundef zeroext %k, ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #10 {
entry:
  %k.addr = alloca i16, align 2
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store i16 %k, ptr %k.addr, align 2, !tbaa !17
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load i16, ptr %k.addr, align 2, !tbaa !17
  %conv = zext i16 %2 to i32
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call zeroext i16 @simde_mm512_cmpge_epi32_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %conv2 = zext i16 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i16
  ret i16 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_x_mm_cmpge_epu32(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %b_ = alloca %union.simde__m128i_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %b_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  %10 = load <4 x i32>, ptr %a_, align 16, !tbaa !16
  %11 = load <4 x i32>, ptr %b_, align 16, !tbaa !16
  %cmp = icmp uge <4 x i32> %10, %11
  %sext = sext <4 x i1> %cmp to <4 x i32>
  store <4 x i32> %sext, ptr %r_, align 16, !tbaa !16
  %12 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %13 = load double, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %call3 = call <2 x i64> @simde__m128i_from_private(double %13, double %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u32x4_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i32], align 16
  %b_ = alloca [4 x i32], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %0 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %0, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %1 = load ptr, ptr %tmp, align 8, !tbaa !9
  %2 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %1, <2 x i64> noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %3 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %3, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %4 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %4, <2 x i64> noundef %5)
  %arraydecay4 = getelementptr inbounds [4 x i32], ptr %a_, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [4 x i32], ptr %b_, i64 0, i64 0
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %7 = load i32, ptr %line.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu32_(i64 noundef 4, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.84, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %18, i32 noundef %21)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
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
define internal zeroext i8 @simde_mm_cmpge_epu32_mask(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_x_mm_cmpge_epu32(<2 x i64> noundef %0, <2 x i64> noundef %1)
  %call1 = call zeroext i8 @simde_mm_movepi32_mask(<2 x i64> noundef %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm_mask_cmpge_epu32_mask(i8 noundef zeroext %k, <2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call zeroext i8 @simde_mm_cmpge_epu32_mask(<2 x i64> noundef %1, <2 x i64> noundef %2)
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv, %conv1
  %conv2 = trunc i32 %and to i8
  ret i8 %conv2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_x_mm256_cmpge_epu32(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %b_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %b_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %4 = load <8 x i32>, ptr %a_, align 32, !tbaa !16
  %5 = load <8 x i32>, ptr %b_, align 32, !tbaa !16
  %cmp = icmp uge <8 x i32> %4, %5
  %sext = sext <8 x i1> %cmp to <8 x i32>
  store <8 x i32> %sext, ptr %r_, align 32, !tbaa !16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #13
  ret <4 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u32x8_(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i32], align 16
  %b_ = alloca [8 x i32], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [8 x i32], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [8 x i32], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %6, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [8 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i32], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu32_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_cmpge_epu32_mask(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp2 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call <4 x i64> @simde_x_mm256_cmpge_epu32(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call3 = call zeroext i8 @simde_mm256_movepi32_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp2)
  ret i8 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_mask_cmpge_epu32_mask(i8 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #10 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %2 to i32
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call zeroext i8 @simde_mm256_cmpge_epu32_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %conv2 = zext i8 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i8
  ret i8 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_x_mm512_cmpge_epu32(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %4 = load <16 x i32>, ptr %a_, align 64, !tbaa !16
  %5 = load <16 x i32>, ptr %b_, align 64, !tbaa !16
  %cmp = icmp uge <16 x i32> %4, %5
  %sext = sext <16 x i1> %cmp to <16 x i32>
  store <16 x i32> %sext, ptr %r_, align 64, !tbaa !16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #13
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u32x16_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [16 x i32], align 16
  %b_ = alloca [16 x i32], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [16 x i32], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [16 x i32], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [16 x i32], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [16 x i32], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu32_(i64 noundef 16, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm512_cmpge_epu32_mask(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp2 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call <8 x i64> @simde_x_mm512_cmpge_epu32(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call3 = call zeroext i16 @simde_mm512_movepi32_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp2)
  ret i16 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i16 @simde_mm512_mask_cmpge_epu32_mask(i16 noundef zeroext %k, ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #10 {
entry:
  %k.addr = alloca i16, align 2
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store i16 %k, ptr %k.addr, align 2, !tbaa !17
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load i16, ptr %k.addr, align 2, !tbaa !17
  %conv = zext i16 %2 to i32
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call zeroext i16 @simde_mm512_cmpge_epu32_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %conv2 = zext i16 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i16
  ret i16 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_mm_loadu_epi64(ptr noundef %mem_addr) #6 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r_ = alloca %union.simde__m128i_private, align 16
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %r_, ptr align 1 %0, i64 16, i1 false)
  %1 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %2 = load double, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %4 = load double, ptr %3, align 8
  %call = call <2 x i64> @simde__m128i_from_private(double %2, double %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_x_mm_cmpge_epi64(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %b_ = alloca %union.simde__m128i_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %b_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  %10 = load <2 x i64>, ptr %a_, align 16, !tbaa !16
  %11 = load <2 x i64>, ptr %b_, align 16, !tbaa !16
  %cmp = icmp sge <2 x i64> %10, %11
  %sext = sext <2 x i1> %cmp to <2 x i64>
  store <2 x i64> %sext, ptr %r_, align 16, !tbaa !16
  %12 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %13 = load double, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %call3 = call <2 x i64> @simde__m128i_from_private(double %13, double %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i64x2_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i64], align 16
  %b_ = alloca [2 x i64], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %0 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %0, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %1 = load ptr, ptr %tmp, align 8, !tbaa !9
  %2 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %1, <2 x i64> noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %3 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %3, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %4 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %4, <2 x i64> noundef %5)
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %7 = load i32, ptr %line.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi64_(i64 noundef 2, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.92, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %18, i64 noundef %21)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
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
define internal zeroext i8 @simde_mm_cmpge_epi64_mask(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_x_mm_cmpge_epi64(<2 x i64> noundef %0, <2 x i64> noundef %1)
  %call1 = call zeroext i8 @simde_mm_movepi64_mask(<2 x i64> noundef %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm_movepi64_mask(<2 x i64> noundef %a) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %r = alloca i8, align 1
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i8, align 1
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  store i8 0, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr %r1) #13
  store i8 0, ptr %r1, align 1, !tbaa !16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !101
  %cmp = icmp ult i64 %5, 2
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %6 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !101
  %mul = mul i64 %6, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !101
  %7 = load <2 x i64>, ptr %a_, align 16, !tbaa !16, !llvm.access.group !101
  %8 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !101
  %vecext = extractelement <2 x i64> %7, i64 %8
  %cmp2 = icmp slt i64 %vecext, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %9 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !101
  %sh_prom = trunc i64 %9 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %10 = load i8, ptr %r1, align 1, !tbaa !16, !llvm.access.group !101
  %conv = zext i8 %10 to i32
  %or = or i32 %conv, %cond
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, ptr %r1, align 1, !tbaa !16, !llvm.access.group !101
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %11 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !101
  %add4 = add i64 %11, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !101
  br label %omp.inner.for.cond, !llvm.loop !102

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 2, ptr %i, align 8, !tbaa !11
  %12 = load i8, ptr %r, align 1, !tbaa !16
  %conv5 = zext i8 %12 to i32
  %13 = load i8, ptr %r1, align 1, !tbaa !16
  %conv6 = zext i8 %13 to i32
  %or7 = or i32 %conv5, %conv6
  %conv8 = trunc i32 %or7 to i8
  store i8 %conv8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %14 = load i8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i8 %14
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm_mask_cmpge_epi64_mask(i8 noundef zeroext %k, <2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call zeroext i8 @simde_mm_cmpge_epi64_mask(<2 x i64> noundef %1, <2 x i64> noundef %2)
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv, %conv1
  %conv2 = trunc i32 %and to i8
  ret i8 %conv2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_mm256_loadu_epi64(ptr noundef %mem_addr) #9 {
entry:
  %mem_addr.addr = alloca ptr, align 8
  %r = alloca <4 x i64>, align 32
  store ptr %mem_addr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %r) #13
  %0 = load ptr, ptr %mem_addr.addr, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %r, ptr align 1 %0, i64 32, i1 false)
  %1 = load <4 x i64>, ptr %r, align 32, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 32, ptr %r) #13
  ret <4 x i64> %1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_x_mm256_cmpge_epi64(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %b_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %b_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %4 = load <4 x i64>, ptr %a_, align 32, !tbaa !16
  %5 = load <4 x i64>, ptr %b_, align 32, !tbaa !16
  %cmp = icmp sge <4 x i64> %4, %5
  %sext = sext <4 x i1> %cmp to <4 x i64>
  store <4 x i64> %sext, ptr %r_, align 32, !tbaa !16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #13
  ret <4 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i64x4_(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i64], align 16
  %b_ = alloca [4 x i64], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [4 x i64], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [4 x i64], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %6, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [4 x i64], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i64], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi64_(i64 noundef 4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_cmpge_epi64_mask(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp2 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call <4 x i64> @simde_x_mm256_cmpge_epi64(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call3 = call zeroext i8 @simde_mm256_movepi64_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp2)
  ret i8 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_movepi64_mask(ptr noundef byval(<4 x i64>) align 32 %0) #10 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %r = alloca i8, align 1
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i8, align 1
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %1 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %1, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  store i8 0, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr %r1) #13
  store i8 0, ptr %r1, align 1, !tbaa !16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !104
  %cmp = icmp ult i64 %2, 4
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !104
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !104
  %4 = load <4 x i64>, ptr %a_, align 32, !tbaa !16, !llvm.access.group !104
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !104
  %vecext = extractelement <4 x i64> %4, i64 %5
  %cmp2 = icmp slt i64 %vecext, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !104
  %sh_prom = trunc i64 %6 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %7 = load i8, ptr %r1, align 1, !tbaa !16, !llvm.access.group !104
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, %cond
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, ptr %r1, align 1, !tbaa !16, !llvm.access.group !104
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !104
  %add4 = add i64 %8, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !104
  br label %omp.inner.for.cond, !llvm.loop !105

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 4, ptr %i, align 8, !tbaa !11
  %9 = load i8, ptr %r, align 1, !tbaa !16
  %conv5 = zext i8 %9 to i32
  %10 = load i8, ptr %r1, align 1, !tbaa !16
  %conv6 = zext i8 %10 to i32
  %or7 = or i32 %conv5, %conv6
  %conv8 = trunc i32 %or7 to i8
  store i8 %conv8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %11 = load i8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i8 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_mask_cmpge_epi64_mask(i8 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #10 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %2 to i32
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call zeroext i8 @simde_mm256_cmpge_epi64_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %conv2 = zext i8 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i8
  ret i8 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_x_mm512_cmpge_epi64(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %4 = load <8 x i64>, ptr %a_, align 64, !tbaa !16
  %5 = load <8 x i64>, ptr %b_, align 64, !tbaa !16
  %cmp = icmp sge <8 x i64> %4, %5
  %sext = sext <8 x i1> %cmp to <8 x i64>
  store <8 x i64> %sext, ptr %r_, align 64, !tbaa !16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #13
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_i64x8_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i64], align 16
  %b_ = alloca [8 x i64], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [8 x i64], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [8 x i64], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i64], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vi64_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm512_cmpge_epi64_mask(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp2 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call <8 x i64> @simde_x_mm512_cmpge_epi64(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call3 = call zeroext i8 @simde_mm512_movepi64_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp2)
  ret i8 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm512_movepi64_mask(ptr noundef byval(<8 x i64>) align 64 %0) #10 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %r = alloca i8, align 1
  %tmp = alloca i64, align 8
  %.omp.iv = alloca i64, align 8
  %i = alloca i64, align 8
  %r1 = alloca i8, align 1
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %1 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %1, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 1, ptr %r) #13
  store i8 0, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %.omp.iv) #13
  store i64 0, ptr %.omp.iv, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr %r1) #13
  store i8 0, ptr %r1, align 1, !tbaa !16
  br label %omp.inner.for.cond

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %2 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !107
  %cmp = icmp ult i64 %2, 8
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %3 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !107
  %mul = mul i64 %3, 1
  %add = add i64 0, %mul
  store i64 %add, ptr %i, align 8, !tbaa !11, !llvm.access.group !107
  %4 = load <8 x i64>, ptr %a_, align 64, !tbaa !16, !llvm.access.group !107
  %5 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !107
  %vecext = extractelement <8 x i64> %4, i64 %5
  %cmp2 = icmp slt i64 %vecext, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %omp.inner.for.body
  %6 = load i64, ptr %i, align 8, !tbaa !11, !llvm.access.group !107
  %sh_prom = trunc i64 %6 to i32
  %shl = shl i32 1, %sh_prom
  br label %cond.end

cond.false:                                       ; preds = %omp.inner.for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %shl, %cond.true ], [ 0, %cond.false ]
  %7 = load i8, ptr %r1, align 1, !tbaa !16, !llvm.access.group !107
  %conv = zext i8 %7 to i32
  %or = or i32 %conv, %cond
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, ptr %r1, align 1, !tbaa !16, !llvm.access.group !107
  br label %omp.body.continue

omp.body.continue:                                ; preds = %cond.end
  br label %omp.inner.for.inc

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %8 = load i64, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !107
  %add4 = add i64 %8, 1
  store i64 %add4, ptr %.omp.iv, align 8, !tbaa !11, !llvm.access.group !107
  br label %omp.inner.for.cond, !llvm.loop !108

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  store i64 8, ptr %i, align 8, !tbaa !11
  %9 = load i8, ptr %r, align 1, !tbaa !16
  %conv5 = zext i8 %9 to i32
  %10 = load i8, ptr %r1, align 1, !tbaa !16
  %conv6 = zext i8 %10 to i32
  %or7 = or i32 %conv5, %conv6
  %conv8 = trunc i32 %or7 to i8
  store i8 %conv8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr %.omp.iv) #13
  %11 = load i8, ptr %r, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 1, ptr %r) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i8 %11
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm512_mask_cmpge_epi64_mask(i8 noundef zeroext %k, ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #10 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %2 to i32
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call zeroext i8 @simde_mm512_cmpge_epi64_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %conv2 = zext i8 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i8
  ret i8 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <2 x i64> @simde_x_mm_cmpge_epu64(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %r_ = alloca %union.simde__m128i_private, align 16
  %a_ = alloca %union.simde__m128i_private, align 16
  %b_ = alloca %union.simde__m128i_private, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 16, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %call = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %0)
  %coerce.dive = getelementptr inbounds %union.simde__m128i_private, ptr %a_, i32 0, i32 0
  %1 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 0
  %2 = extractvalue { double, double } %call, 0
  store double %2, ptr %1, align 16
  %3 = getelementptr inbounds { double, double }, ptr %coerce.dive, i32 0, i32 1
  %4 = extractvalue { double, double } %call, 1
  store double %4, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call1 = call { double, double } @simde__m128i_to_private(<2 x i64> noundef %5)
  %coerce.dive2 = getelementptr inbounds %union.simde__m128i_private, ptr %b_, i32 0, i32 0
  %6 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 0
  %7 = extractvalue { double, double } %call1, 0
  store double %7, ptr %6, align 16
  %8 = getelementptr inbounds { double, double }, ptr %coerce.dive2, i32 0, i32 1
  %9 = extractvalue { double, double } %call1, 1
  store double %9, ptr %8, align 8
  %10 = load <2 x i64>, ptr %a_, align 16, !tbaa !16
  %11 = load <2 x i64>, ptr %b_, align 16, !tbaa !16
  %cmp = icmp uge <2 x i64> %10, %11
  %sext = sext <2 x i1> %cmp to <2 x i64>
  store <2 x i64> %sext, ptr %r_, align 16, !tbaa !16
  %12 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 0
  %13 = load double, ptr %12, align 16
  %14 = getelementptr inbounds { double, double }, ptr %r_, i32 0, i32 1
  %15 = load double, ptr %14, align 8
  %call3 = call <2 x i64> @simde__m128i_from_private(double %13, double %15)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %r_) #13
  ret <2 x i64> %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u64x2_(<2 x i64> noundef %a, <2 x i64> noundef %b, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #3 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [2 x i64], align 16
  %b_ = alloca [2 x i64], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 16, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %0 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %0, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %1 = load ptr, ptr %tmp, align 8, !tbaa !9
  %2 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %1, <2 x i64> noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %3 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %3, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %4 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %5 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  call void @simde_mm_storeu_si128(ptr noundef %4, <2 x i64> noundef %5)
  %arraydecay4 = getelementptr inbounds [2 x i64], ptr %a_, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [2 x i64], ptr %b_, i64 0, i64 0
  %6 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %7 = load i32, ptr %line.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %9 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu64_(i64 noundef 2, ptr noundef %arraydecay4, ptr noundef %arraydecay5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr %a_) #13
  ret i32 %call
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13
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
  call void (ptr, ...) @simde_test_debug_printf_(ptr noundef @.str.95, ptr noundef %10, i32 noundef %11, ptr noundef %12, i64 noundef %13, ptr noundef %14, i64 noundef %15, i64 noundef %18, i64 noundef %21)
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
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13
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
define internal zeroext i8 @simde_mm_cmpge_epu64_mask(<2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %1 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call <2 x i64> @simde_x_mm_cmpge_epu64(<2 x i64> noundef %0, <2 x i64> noundef %1)
  %call1 = call zeroext i8 @simde_mm_movepi64_mask(<2 x i64> noundef %call)
  ret i8 %call1
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm_mask_cmpge_epu64_mask(i8 noundef zeroext %k, <2 x i64> noundef %a, <2 x i64> noundef %b) #6 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <2 x i64>, align 16
  %b.addr = alloca <2 x i64>, align 16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <2 x i64> %a, ptr %a.addr, align 16, !tbaa !16
  store <2 x i64> %b, ptr %b.addr, align 16, !tbaa !16
  %0 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %0 to i32
  %1 = load <2 x i64>, ptr %a.addr, align 16, !tbaa !16
  %2 = load <2 x i64>, ptr %b.addr, align 16, !tbaa !16
  %call = call zeroext i8 @simde_mm_cmpge_epu64_mask(<2 x i64> noundef %1, <2 x i64> noundef %2)
  %conv1 = zext i8 %call to i32
  %and = and i32 %conv, %conv1
  %conv2 = trunc i32 %and to i8
  ret i8 %conv2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <4 x i64> @simde_x_mm256_cmpge_epu64(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %r_ = alloca %union.simde__m256i_private, align 32
  %a_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %b_ = alloca %union.simde__m256i_private, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %a_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  call void @simde__m256i_to_private(ptr sret(%union.simde__m256i_private) align 32 %b_, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %4 = load <4 x i64>, ptr %a_, align 32, !tbaa !16
  %5 = load <4 x i64>, ptr %b_, align 32, !tbaa !16
  %cmp = icmp uge <4 x i64> %4, %5
  %sext = sext <4 x i1> %cmp to <4 x i64>
  store <4 x i64> %sext, ptr %r_, align 32, !tbaa !16
  %call = call <4 x i64> @simde__m256i_from_private(ptr noundef byval(%union.simde__m256i_private) align 32 %r_)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %r_) #13
  ret <4 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u64x4_(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [4 x i64], align 16
  %b_ = alloca [4 x i64], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 32, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [4 x i64], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %3, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [4 x i64], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %7, ptr %indirect-arg-temp4, align 32, !tbaa !16
  call void @simde_mm256_storeu_si256(ptr noundef %6, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [4 x i64], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [4 x i64], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu64_(i64 noundef 4, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 32, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_cmpge_epu64_mask(ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #9 {
entry:
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %indirect-arg-temp2 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %3 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %2, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call <4 x i64> @simde_x_mm256_cmpge_epu64(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  store <4 x i64> %call, ptr %indirect-arg-temp2, align 32, !tbaa !16
  %call3 = call zeroext i8 @simde_mm256_movepi64_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp2)
  ret i8 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm256_mask_cmpge_epu64_mask(i8 noundef zeroext %k, ptr noundef byval(<4 x i64>) align 32 %0, ptr noundef byval(<4 x i64>) align 32 %1) #10 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <4 x i64>, align 32
  %b.addr = alloca <4 x i64>, align 32
  %indirect-arg-temp = alloca <4 x i64>, align 32
  %indirect-arg-temp1 = alloca <4 x i64>, align 32
  %a = load <4 x i64>, ptr %0, align 32, !tbaa !16
  %b = load <4 x i64>, ptr %1, align 32, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <4 x i64> %a, ptr %a.addr, align 32, !tbaa !16
  store <4 x i64> %b, ptr %b.addr, align 32, !tbaa !16
  %2 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %2 to i32
  %3 = load <4 x i64>, ptr %a.addr, align 32, !tbaa !16
  %4 = load <4 x i64>, ptr %b.addr, align 32, !tbaa !16
  store <4 x i64> %3, ptr %indirect-arg-temp, align 32, !tbaa !16
  store <4 x i64> %4, ptr %indirect-arg-temp1, align 32, !tbaa !16
  %call = call zeroext i8 @simde_mm256_cmpge_epu64_mask(ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp, ptr noundef byval(<4 x i64>) align 32 %indirect-arg-temp1)
  %conv2 = zext i8 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i8
  ret i8 %conv3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal <8 x i64> @simde_x_mm512_cmpge_epu64(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %r_ = alloca %union.simde__m512i_private, align 64
  %a_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %b_ = alloca %union.simde__m512i_private, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 64, ptr %r_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %a_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  call void @simde__m512i_to_private(ptr sret(%union.simde__m512i_private) align 64 %b_, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %4 = load <8 x i64>, ptr %a_, align 64, !tbaa !16
  %5 = load <8 x i64>, ptr %b_, align 64, !tbaa !16
  %cmp = icmp uge <8 x i64> %4, %5
  %sext = sext <8 x i1> %cmp to <8 x i64>
  store <8 x i64> %sext, ptr %r_, align 64, !tbaa !16
  %call = call <8 x i64> @simde__m512i_from_private(ptr noundef byval(%union.simde__m512i_private) align 64 %r_)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %r_) #13
  ret <8 x i64> %call
}

; Function Attrs: nounwind uwtable
define internal i32 @simde_test_x86_assert_equal_u64x8_(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1, ptr noundef %filename, i32 noundef %line, ptr noundef %astr, ptr noundef %bstr) #0 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %filename.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %astr.addr = alloca ptr, align 8
  %bstr.addr = alloca ptr, align 8
  %a_ = alloca [8 x i64], align 16
  %b_ = alloca [8 x i64], align 16
  %simde_r_ = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %simde_r_1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %indirect-arg-temp4 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  store ptr %filename, ptr %filename.addr, align 8, !tbaa !9
  store i32 %line, ptr %line.addr, align 4, !tbaa !5
  store ptr %astr, ptr %astr.addr, align 8, !tbaa !9
  store ptr %bstr, ptr %bstr.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 64, ptr %a_) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_) #13
  %arraydecay = getelementptr inbounds [8 x i64], ptr %a_, i64 0, i64 0
  store ptr %arraydecay, ptr %simde_r_, align 8, !tbaa !9
  %2 = load ptr, ptr %simde_r_, align 8, !tbaa !9
  store ptr %2, ptr %tmp, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_) #13
  %3 = load ptr, ptr %tmp, align 8, !tbaa !9
  %4 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %3, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %simde_r_1) #13
  %arraydecay2 = getelementptr inbounds [8 x i64], ptr %b_, i64 0, i64 0
  store ptr %arraydecay2, ptr %simde_r_1, align 8, !tbaa !9
  %5 = load ptr, ptr %simde_r_1, align 8, !tbaa !9
  store ptr %5, ptr %tmp3, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %simde_r_1) #13
  %6 = load ptr, ptr %tmp3, align 8, !tbaa !9
  %7 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %7, ptr %indirect-arg-temp4, align 64, !tbaa !16
  call void @simde_mm512_storeu_si512(ptr noundef %6, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp4)
  %arraydecay5 = getelementptr inbounds [8 x i64], ptr %a_, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [8 x i64], ptr %b_, i64 0, i64 0
  %8 = load ptr, ptr %filename.addr, align 8, !tbaa !9
  %9 = load i32, ptr %line.addr, align 4, !tbaa !5
  %10 = load ptr, ptr %astr.addr, align 8, !tbaa !9
  %11 = load ptr, ptr %bstr.addr, align 8, !tbaa !9
  %call = call i32 @simde_assert_equal_vu64_(i64 noundef 8, ptr noundef %arraydecay5, ptr noundef %arraydecay6, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 64, ptr %b_) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr %a_) #13
  ret i32 %call
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm512_cmpge_epu64_mask(ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #11 {
entry:
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %indirect-arg-temp2 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %3 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %2, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call <8 x i64> @simde_x_mm512_cmpge_epu64(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  store <8 x i64> %call, ptr %indirect-arg-temp2, align 64, !tbaa !16
  %call3 = call zeroext i8 @simde_mm512_movepi64_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp2)
  ret i8 %call3
}

; Function Attrs: alwaysinline nounwind uwtable
define internal zeroext i8 @simde_mm512_mask_cmpge_epu64_mask(i8 noundef zeroext %k, ptr noundef byval(<8 x i64>) align 64 %0, ptr noundef byval(<8 x i64>) align 64 %1) #10 {
entry:
  %k.addr = alloca i8, align 1
  %a.addr = alloca <8 x i64>, align 64
  %b.addr = alloca <8 x i64>, align 64
  %indirect-arg-temp = alloca <8 x i64>, align 64
  %indirect-arg-temp1 = alloca <8 x i64>, align 64
  %a = load <8 x i64>, ptr %0, align 64, !tbaa !16
  %b = load <8 x i64>, ptr %1, align 64, !tbaa !16
  store i8 %k, ptr %k.addr, align 1, !tbaa !16
  store <8 x i64> %a, ptr %a.addr, align 64, !tbaa !16
  store <8 x i64> %b, ptr %b.addr, align 64, !tbaa !16
  %2 = load i8, ptr %k.addr, align 1, !tbaa !16
  %conv = zext i8 %2 to i32
  %3 = load <8 x i64>, ptr %a.addr, align 64, !tbaa !16
  %4 = load <8 x i64>, ptr %b.addr, align 64, !tbaa !16
  store <8 x i64> %3, ptr %indirect-arg-temp, align 64, !tbaa !16
  store <8 x i64> %4, ptr %indirect-arg-temp1, align 64, !tbaa !16
  %call = call zeroext i8 @simde_mm512_cmpge_epu64_mask(ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp, ptr noundef byval(<8 x i64>) align 64 %indirect-arg-temp1)
  %conv2 = zext i8 %call to i32
  %and = and i32 %conv, %conv2
  %conv3 = trunc i32 %and to i8
  ret i8 %conv3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { alwaysinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline nounwind uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { alwaysinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }

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
!17 = !{!18, !18, i64 0}
!18 = !{!"short", !7, i64 0}
!19 = !{!20, !18, i64 32}
!20 = !{!"", !7, i64 0, !7, i64 16, !18, i64 32}
!21 = !{!22, !18, i64 0}
!22 = !{!"", !18, i64 0, !7, i64 2, !7, i64 18, !18, i64 34}
!23 = !{!22, !18, i64 34}
!24 = !{!25, !6, i64 64}
!25 = !{!"", !7, i64 0, !7, i64 32, !6, i64 64}
!26 = !{!27, !6, i64 0}
!27 = !{!"", !6, i64 0, !7, i64 4, !7, i64 36, !6, i64 68}
!28 = !{!27, !6, i64 68}
!29 = !{!30, !12, i64 128}
!30 = !{!"", !7, i64 0, !7, i64 64, !12, i64 128}
!31 = !{!32, !12, i64 0}
!32 = !{!"", !12, i64 0, !7, i64 8, !7, i64 72, !12, i64 136}
!33 = !{!32, !12, i64 136}
!34 = !{!35, !7, i64 32}
!35 = !{!"", !7, i64 0, !7, i64 16, !7, i64 32}
!36 = !{!37, !7, i64 0}
!37 = !{!"", !7, i64 0, !7, i64 2, !7, i64 18, !7, i64 34}
!38 = !{!37, !7, i64 34}
!39 = !{!40, !18, i64 64}
!40 = !{!"", !7, i64 0, !7, i64 32, !18, i64 64}
!41 = !{!42, !18, i64 0}
!42 = !{!"", !18, i64 0, !7, i64 2, !7, i64 34, !18, i64 66}
!43 = !{!42, !18, i64 66}
!44 = !{!45, !6, i64 128}
!45 = !{!"", !7, i64 0, !7, i64 64, !6, i64 128}
!46 = !{!47, !6, i64 0}
!47 = !{!"", !6, i64 0, !7, i64 4, !7, i64 68, !6, i64 132}
!48 = !{!47, !6, i64 132}
!49 = !{!50, !7, i64 0}
!50 = !{!"", !7, i64 0, !7, i64 4, !7, i64 20, !7, i64 36}
!51 = !{!50, !7, i64 36}
!52 = !{!53, !7, i64 64}
!53 = !{!"", !7, i64 0, !7, i64 32, !7, i64 64}
!54 = !{!55, !7, i64 0}
!55 = !{!"", !7, i64 0, !7, i64 4, !7, i64 36, !7, i64 68}
!56 = !{!55, !7, i64 68}
!57 = !{!58, !18, i64 128}
!58 = !{!"", !7, i64 0, !7, i64 64, !18, i64 128}
!59 = !{!60, !18, i64 0}
!60 = !{!"", !18, i64 0, !7, i64 4, !7, i64 68, !18, i64 132}
!61 = !{!60, !18, i64 132}
!62 = !{!63, !7, i64 0}
!63 = !{!"", !7, i64 0, !7, i64 8, !7, i64 24, !7, i64 40}
!64 = !{!63, !7, i64 40}
!65 = !{!66, !7, i64 0}
!66 = !{!"", !7, i64 0, !7, i64 8, !7, i64 40, !7, i64 72}
!67 = !{!66, !7, i64 72}
!68 = !{!69, !7, i64 128}
!69 = !{!"", !7, i64 0, !7, i64 64, !7, i64 128}
!70 = !{!71, !7, i64 0}
!71 = !{!"", !7, i64 0, !7, i64 8, !7, i64 72, !7, i64 136}
!72 = !{!71, !7, i64 136}
!73 = distinct !{}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.parallel_accesses", !73}
!76 = !{!"llvm.loop.vectorize.enable", i1 true}
!77 = distinct !{}
!78 = distinct !{!78, !79, !76}
!79 = !{!"llvm.loop.parallel_accesses", !77}
!80 = distinct !{}
!81 = distinct !{!81, !82, !76}
!82 = !{!"llvm.loop.parallel_accesses", !80}
!83 = distinct !{}
!84 = distinct !{!84, !85, !76}
!85 = !{!"llvm.loop.parallel_accesses", !83}
!86 = distinct !{}
!87 = distinct !{!87, !88, !76}
!88 = !{!"llvm.loop.parallel_accesses", !86}
!89 = distinct !{}
!90 = distinct !{!90, !91, !76}
!91 = !{!"llvm.loop.parallel_accesses", !89}
!92 = distinct !{}
!93 = distinct !{!93, !94, !76}
!94 = !{!"llvm.loop.parallel_accesses", !92}
!95 = distinct !{}
!96 = distinct !{!96, !97, !76}
!97 = !{!"llvm.loop.parallel_accesses", !95}
!98 = distinct !{}
!99 = distinct !{!99, !100, !76}
!100 = !{!"llvm.loop.parallel_accesses", !98}
!101 = distinct !{}
!102 = distinct !{!102, !103, !76}
!103 = !{!"llvm.loop.parallel_accesses", !101}
!104 = distinct !{}
!105 = distinct !{!105, !106, !76}
!106 = !{!"llvm.loop.parallel_accesses", !104}
!107 = distinct !{}
!108 = distinct !{!108, !109, !76}
!109 = !{!"llvm.loop.parallel_accesses", !107}
