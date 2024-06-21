; ModuleID = 'samples/666.bc'
source_filename = "isl_test_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { ptr, ptr, ptr }
%struct.anon.0 = type { ptr, ptr, ptr, ptr }
%struct.__mpz_struct = type { i32, i32, ptr }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"-1\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [12 x i8] c"-2147483647\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [11 x i8] c"2147483648\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [21 x i8] c"-9223372036854775807\00", align 1, !dbg !28
@.str.8 = private unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [21 x i8] c"-9223372036854775808\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [20 x i8] c"9223372036854775808\00", align 1, !dbg !40
@int_unary_tests = dso_local global [13 x %struct.anon] [%struct.anon { ptr @int_test_neg, ptr @.str, ptr @.str }, %struct.anon { ptr @int_test_neg, ptr @.str.1, ptr @.str.2 }, %struct.anon { ptr @int_test_neg, ptr @.str.3, ptr @.str.4 }, %struct.anon { ptr @int_test_neg, ptr @.str.5, ptr @.str.6 }, %struct.anon { ptr @int_test_neg, ptr @.str.7, ptr @.str.8 }, %struct.anon { ptr @int_test_neg, ptr @.str.9, ptr @.str.10 }, %struct.anon { ptr @int_test_abs, ptr @.str, ptr @.str }, %struct.anon { ptr @int_test_abs, ptr @.str.2, ptr @.str.2 }, %struct.anon { ptr @int_test_abs, ptr @.str.2, ptr @.str.1 }, %struct.anon { ptr @int_test_abs, ptr @.str.4, ptr @.str.4 }, %struct.anon { ptr @int_test_abs, ptr @.str.6, ptr @.str.5 }, %struct.anon { ptr @int_test_abs, ptr @.str.8, ptr @.str.8 }, %struct.anon { ptr @int_test_abs, ptr @.str.10, ptr @.str.9 }], align 16, !dbg !42
@.str.11 = private unnamed_addr constant [2 x i8] c"2\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [3 x i8] c"-2\00", align 1, !dbg !50
@.str.13 = private unnamed_addr constant [11 x i8] c"1073741823\00", align 1, !dbg !52
@.str.14 = private unnamed_addr constant [11 x i8] c"1073741824\00", align 1, !dbg !54
@.str.15 = private unnamed_addr constant [12 x i8] c"-1073741824\00", align 1, !dbg !56
@.str.16 = private unnamed_addr constant [2 x i8] c"6\00", align 1, !dbg !58
@.str.17 = private unnamed_addr constant [2 x i8] c"3\00", align 1, !dbg !60
@.str.18 = private unnamed_addr constant [3 x i8] c"-6\00", align 1, !dbg !62
@.str.19 = private unnamed_addr constant [3 x i8] c"-3\00", align 1, !dbg !64
@.str.20 = private unnamed_addr constant [6 x i8] c"65536\00", align 1, !dbg !66
@.str.21 = private unnamed_addr constant [6 x i8] c"32768\00", align 1, !dbg !71
@.str.22 = private unnamed_addr constant [7 x i8] c"-32768\00", align 1, !dbg !73
@.str.23 = private unnamed_addr constant [20 x i8] c"4611686014132420609\00", align 1, !dbg !78
@.str.24 = private unnamed_addr constant [21 x i8] c"-4611686014132420609\00", align 1, !dbg !80
@.str.25 = private unnamed_addr constant [20 x i8] c"4611686016279904256\00", align 1, !dbg !82
@.str.26 = private unnamed_addr constant [21 x i8] c"-4611686016279904256\00", align 1, !dbg !84
@.str.27 = private unnamed_addr constant [39 x i8] c"85070591730234615847396907784232501249\00", align 1, !dbg !86
@.str.28 = private unnamed_addr constant [40 x i8] c"-85070591730234615847396907784232501249\00", align 1, !dbg !91
@.str.29 = private unnamed_addr constant [39 x i8] c"85070591730234615856620279821087277056\00", align 1, !dbg !96
@.str.30 = private unnamed_addr constant [40 x i8] c"-85070591730234615856620279821087277056\00", align 1, !dbg !98
@.str.31 = private unnamed_addr constant [40 x i8] c"340282366920938463426481119284349108225\00", align 1, !dbg !100
@.str.32 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1, !dbg !102
@.str.33 = private unnamed_addr constant [41 x i8] c"-340282366920938463426481119284349108225\00", align 1, !dbg !104
@.str.34 = private unnamed_addr constant [22 x i8] c"-18446744073709551615\00", align 1, !dbg !109
@.str.35 = private unnamed_addr constant [40 x i8] c"340282366920938463444927863358058659840\00", align 1, !dbg !114
@.str.36 = private unnamed_addr constant [21 x i8] c"18446744073709551616\00", align 1, !dbg !116
@.str.37 = private unnamed_addr constant [41 x i8] c"-340282366920938463444927863358058659840\00", align 1, !dbg !118
@.str.38 = private unnamed_addr constant [22 x i8] c"-18446744073709551616\00", align 1, !dbg !120
@.str.39 = private unnamed_addr constant [12 x i8] c"-1073741823\00", align 1, !dbg !122
@.str.40 = private unnamed_addr constant [2 x i8] c"7\00", align 1, !dbg !124
@.str.41 = private unnamed_addr constant [2 x i8] c"9\00", align 1, !dbg !126
@.str.42 = private unnamed_addr constant [3 x i8] c"18\00", align 1, !dbg !128
@.str.43 = private unnamed_addr constant [3 x i8] c"14\00", align 1, !dbg !130
@.str.44 = private unnamed_addr constant [12 x i8] c"15032385529\00", align 1, !dbg !132
@.str.45 = private unnamed_addr constant [11 x i8] c"6442450944\00", align 1, !dbg !134
@.str.46 = private unnamed_addr constant [21 x i8] c"55340232221128654842\00", align 1, !dbg !136
@.str.47 = private unnamed_addr constant [21 x i8] c"27670116110564327424\00", align 1, !dbg !138
@.str.48 = private unnamed_addr constant [2 x i8] c"5\00", align 1, !dbg !140
@.str.49 = private unnamed_addr constant [21 x i8] c"-9223372036854775809\00", align 1, !dbg !142
@int_binary_tests = dso_local global [109 x %struct.anon.0] [%struct.anon.0 { ptr @int_test_sum, ptr @.str, ptr @.str, ptr @.str }, %struct.anon.0 { ptr @int_test_sum, ptr @.str.2, ptr @.str.2, ptr @.str }, %struct.anon.0 { ptr @int_test_sum, ptr @.str.11, ptr @.str.2, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_sum, ptr @.str.1, ptr @.str, ptr @.str.1 }, %struct.anon.0 { ptr @int_test_sum, ptr @.str.12, ptr @.str.1, ptr @.str.1 }, %struct.anon.0 { ptr @int_test_sum, ptr @.str.4, ptr @.str.13, ptr @.str.14 }, %struct.anon.0 { ptr @int_test_sum, ptr @.str.5, ptr @.str.15, ptr @.str.15 }, %struct.anon.0 { ptr @int_test_sum, ptr @.str.6, ptr @.str.4, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_sum, ptr @.str.5, ptr @.str.3, ptr @.str.1 }, %struct.anon.0 { ptr @int_test_product, ptr @.str, ptr @.str, ptr @.str }, %struct.anon.0 { ptr @int_test_product, ptr @.str, ptr @.str, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.2, ptr @.str.2, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.16, ptr @.str.11, ptr @.str.17 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.18, ptr @.str.11, ptr @.str.19 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.18, ptr @.str.12, ptr @.str.17 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.16, ptr @.str.12, ptr @.str.19 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.6, ptr @.str.20, ptr @.str.21 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.5, ptr @.str.20, ptr @.str.22 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.23, ptr @.str.4, ptr @.str.4 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.24, ptr @.str.3, ptr @.str.4 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.25, ptr @.str.4, ptr @.str.6 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.26, ptr @.str.3, ptr @.str.6 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.26, ptr @.str.4, ptr @.str.5 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.25, ptr @.str.3, ptr @.str.5 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.27, ptr @.str.8, ptr @.str.8 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.28, ptr @.str.7, ptr @.str.8 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.29, ptr @.str.8, ptr @.str.10 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.30, ptr @.str.7, ptr @.str.10 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.30, ptr @.str.8, ptr @.str.9 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.29, ptr @.str.7, ptr @.str.9 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.31, ptr @.str.32, ptr @.str.32 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.33, ptr @.str.34, ptr @.str.32 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.35, ptr @.str.32, ptr @.str.36 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.37, ptr @.str.34, ptr @.str.36 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.37, ptr @.str.32, ptr @.str.38 }, %struct.anon.0 { ptr @int_test_product, ptr @.str.35, ptr @.str.34, ptr @.str.38 }, %struct.anon.0 { ptr @int_test_fdiv, ptr @.str, ptr @.str.2, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_fdiv_r, ptr @.str.2, ptr @.str.2, ptr @.str.17 }, %struct.anon.0 { ptr @int_test_fdiv, ptr @.str.1, ptr @.str.1, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_fdiv_r, ptr @.str.11, ptr @.str.1, ptr @.str.17 }, %struct.anon.0 { ptr @int_test_fdiv, ptr @.str.1, ptr @.str.2, ptr @.str.12 }, %struct.anon.0 { ptr @int_test_fdiv_r, ptr @.str.12, ptr @.str.2, ptr @.str.19 }, %struct.anon.0 { ptr @int_test_fdiv, ptr @.str, ptr @.str.1, ptr @.str.12 }, %struct.anon.0 { ptr @int_test_fdiv_r, ptr @.str.1, ptr @.str.1, ptr @.str.19 }, %struct.anon.0 { ptr @int_test_cdiv, ptr @.str.2, ptr @.str.2, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_cdiv, ptr @.str, ptr @.str.1, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_cdiv, ptr @.str, ptr @.str.2, ptr @.str.12 }, %struct.anon.0 { ptr @int_test_cdiv, ptr @.str.2, ptr @.str.1, ptr @.str.12 }, %struct.anon.0 { ptr @int_test_cdiv, ptr @.str.14, ptr @.str.4, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_cdiv, ptr @.str.14, ptr @.str.6, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_cdiv, ptr @.str.15, ptr @.str.5, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_cdiv, ptr @.str.39, ptr @.str.3, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_tdiv, ptr @.str, ptr @.str.2, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_tdiv, ptr @.str, ptr @.str.1, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_tdiv, ptr @.str, ptr @.str.2, ptr @.str.12 }, %struct.anon.0 { ptr @int_test_tdiv, ptr @.str, ptr @.str.1, ptr @.str.12 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str, ptr @.str, ptr @.str }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str, ptr @.str, ptr @.str }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.40, ptr @.str, ptr @.str.40 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str, ptr @.str, ptr @.str.40 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.2, ptr @.str.2, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.2, ptr @.str.2, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.2, ptr @.str.2, ptr @.str.1 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.2, ptr @.str.2, ptr @.str.1 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.2, ptr @.str.1, ptr @.str.1 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.2, ptr @.str.1, ptr @.str.1 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.17, ptr @.str.16, ptr @.str.41 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.42, ptr @.str.16, ptr @.str.41 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.2, ptr @.str.43, ptr @.str.4 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.44, ptr @.str.40, ptr @.str.4 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.11, ptr @.str.16, ptr @.str.5 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.45, ptr @.str.16, ptr @.str.5 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.2, ptr @.str.16, ptr @.str.8 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.46, ptr @.str.16, ptr @.str.8 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.11, ptr @.str.16, ptr @.str.9 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.47, ptr @.str.16, ptr @.str.9 }, %struct.anon.0 { ptr @int_test_gcd, ptr @.str.2, ptr @.str.36, ptr @.str.32 }, %struct.anon.0 { ptr @int_test_lcm, ptr @.str.35, ptr @.str.36, ptr @.str.32 }, %struct.anon.0 { ptr @int_test_cmps, ptr @.str, ptr @.str, ptr @.str }, %struct.anon.0 { ptr @int_test_abs_cmp, ptr @.str, ptr @.str, ptr @.str }, %struct.anon.0 { ptr @int_test_cmps, ptr @.str.2, ptr @.str.2, ptr @.str }, %struct.anon.0 { ptr @int_test_abs_cmp, ptr @.str.2, ptr @.str.2, ptr @.str }, %struct.anon.0 { ptr @int_test_cmps, ptr @.str.1, ptr @.str.1, ptr @.str }, %struct.anon.0 { ptr @int_test_abs_cmp, ptr @.str.2, ptr @.str.1, ptr @.str }, %struct.anon.0 { ptr @int_test_cmps, ptr @.str.1, ptr @.str.1, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_abs_cmp, ptr @.str, ptr @.str.1, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_cmps, ptr @.str.1, ptr @.str.48, ptr @.str.4 }, %struct.anon.0 { ptr @int_test_abs_cmp, ptr @.str.1, ptr @.str.48, ptr @.str.4 }, %struct.anon.0 { ptr @int_test_cmps, ptr @.str.2, ptr @.str.48, ptr @.str.5 }, %struct.anon.0 { ptr @int_test_abs_cmp, ptr @.str.1, ptr @.str.48, ptr @.str.5 }, %struct.anon.0 { ptr @int_test_cmps, ptr @.str.1, ptr @.str.48, ptr @.str.8 }, %struct.anon.0 { ptr @int_test_abs_cmp, ptr @.str.1, ptr @.str.48, ptr @.str.8 }, %struct.anon.0 { ptr @int_test_cmps, ptr @.str.2, ptr @.str.48, ptr @.str.49 }, %struct.anon.0 { ptr @int_test_abs_cmp, ptr @.str.1, ptr @.str.48, ptr @.str.49 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str.2, ptr @.str, ptr @.str }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str, ptr @.str.2, ptr @.str }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str, ptr @.str.11, ptr @.str }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str, ptr @.str.4, ptr @.str }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str, ptr @.str.8, ptr @.str }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str.2, ptr @.str, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str.2, ptr @.str.2, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str.2, ptr @.str.11, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str.2, ptr @.str.4, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str.2, ptr @.str.8, ptr @.str.2 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str.2, ptr @.str, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str, ptr @.str.2, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str.2, ptr @.str.11, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str, ptr @.str.4, ptr @.str.11 }, %struct.anon.0 { ptr @int_test_divisible, ptr @.str, ptr @.str.8, ptr @.str.11 }], align 16, !dbg !144
@.str.50 = private unnamed_addr constant [29 x i8] c"isl_int_eq(result, expected)\00", align 1, !dbg !170
@.str.51 = private unnamed_addr constant [15 x i8] c"isl_test_int.c\00", align 1, !dbg !175
@__PRETTY_FUNCTION__.int_test_neg = private unnamed_addr constant [50 x i8] c"void int_test_neg(__mpz_struct *, __mpz_struct *)\00", align 1, !dbg !180
@.str.52 = private unnamed_addr constant [24 x i8] c"isl_int_eq(result, arg)\00", align 1, !dbg !186
@__PRETTY_FUNCTION__.int_test_abs = private unnamed_addr constant [50 x i8] c"void int_test_abs(__mpz_struct *, __mpz_struct *)\00", align 1, !dbg !191
@.str.53 = private unnamed_addr constant [29 x i8] c"isl_int_eq(expected, result)\00", align 1, !dbg !193
@__PRETTY_FUNCTION__.int_test_sub = private unnamed_addr constant [66 x i8] c"void int_test_sub(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !195
@__PRETTY_FUNCTION__.int_test_add = private unnamed_addr constant [66 x i8] c"void int_test_add(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !200
@__PRETTY_FUNCTION__.int_test_divexact = private unnamed_addr constant [71 x i8] c"void int_test_divexact(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !202
@__PRETTY_FUNCTION__.int_test_mul = private unnamed_addr constant [66 x i8] c"void int_test_mul(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !207
@__PRETTY_FUNCTION__.int_test_fdiv = private unnamed_addr constant [67 x i8] c"void int_test_fdiv(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !209
@__PRETTY_FUNCTION__.int_test_fdiv_r = private unnamed_addr constant [69 x i8] c"void int_test_fdiv_r(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !214
@__PRETTY_FUNCTION__.int_test_cdiv = private unnamed_addr constant [67 x i8] c"void int_test_cdiv(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !219
@__PRETTY_FUNCTION__.int_test_tdiv = private unnamed_addr constant [67 x i8] c"void int_test_tdiv(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !221
@__PRETTY_FUNCTION__.int_test_gcd = private unnamed_addr constant [66 x i8] c"void int_test_gcd(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !223
@__PRETTY_FUNCTION__.int_test_lcm = private unnamed_addr constant [66 x i8] c"void int_test_lcm(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !225
@.str.54 = private unnamed_addr constant [25 x i8] c"exp == isl_int_sgn(diff)\00", align 1, !dbg !227
@__PRETTY_FUNCTION__.int_test_cmps = private unnamed_addr constant [67 x i8] c"void int_test_cmps(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !232
@.str.55 = private unnamed_addr constant [34 x i8] c"exp == sgn(isl_int_cmp(lhs, rhs))\00", align 1, !dbg !234
@__PRETTY_FUNCTION__.int_test_cmp = private unnamed_addr constant [55 x i8] c"void int_test_cmp(int, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !239
@.str.56 = private unnamed_addr constant [41 x i8] c"exp == sgn(isl_int_cmp_si(lhs, rhslong))\00", align 1, !dbg !244
@.str.57 = private unnamed_addr constant [38 x i8] c"exp == sgn(isl_int_abs_cmp(lhs, rhs))\00", align 1, !dbg !246
@__PRETTY_FUNCTION__.int_test_abs_cmp = private unnamed_addr constant [70 x i8] c"void int_test_abs_cmp(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !251
@.str.58 = private unnamed_addr constant [39 x i8] c"-exp == sgn(isl_int_abs_cmp(rhs, lhs))\00", align 1, !dbg !256
@.str.59 = private unnamed_addr constant [41 x i8] c"isl_int_is_divisible_by(lhs, rhs) == exp\00", align 1, !dbg !258
@__PRETTY_FUNCTION__.int_test_divisible = private unnamed_addr constant [72 x i8] c"void int_test_divisible(__mpz_struct *, __mpz_struct *, __mpz_struct *)\00", align 1, !dbg !260

; Function Attrs: nounwind uwtable
define internal void @int_test_neg(ptr noundef %expected, ptr noundef %arg) #0 !dbg !283 {
entry:
  %expected.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !285, metadata !DIExpression()), !dbg !298
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !286, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !300
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !287, metadata !DIExpression()), !dbg !301
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !302
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !302
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !303
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !303, !tbaa !294
  call void @__gmpz_neg(ptr noundef %arraydecay1, ptr noundef %0), !dbg !303
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !304
  %1 = load ptr, ptr %expected.addr, align 8, !dbg !304, !tbaa !294
  %call = call i32 @__gmpz_cmp(ptr noundef %arraydecay2, ptr noundef %1) #10, !dbg !304
  %cmp = icmp eq i32 %call, 0, !dbg !304
  br i1 %cmp, label %if.then, label %if.else, !dbg !307

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !307

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.50, ptr noundef @.str.51, i32 noundef 195, ptr noundef @__PRETTY_FUNCTION__.int_test_neg) #11, !dbg !304
  unreachable, !dbg !304

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !308
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !308, !tbaa !294
  call void @__gmpz_neg(ptr noundef %arraydecay3, ptr noundef %2), !dbg !308
  %arraydecay4 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !309
  %3 = load ptr, ptr %arg.addr, align 8, !dbg !309, !tbaa !294
  %call5 = call i32 @__gmpz_cmp(ptr noundef %arraydecay4, ptr noundef %3) #10, !dbg !309
  %cmp6 = icmp eq i32 %call5, 0, !dbg !309
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !312

if.then7:                                         ; preds = %if.end
  br label %if.end9, !dbg !312

if.else8:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.52, ptr noundef @.str.51, i32 noundef 198, ptr noundef @__PRETTY_FUNCTION__.int_test_neg) #11, !dbg !309
  unreachable, !dbg !309

if.end9:                                          ; preds = %if.then7
  %arraydecay10 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !313
  call void @__gmpz_clear(ptr noundef %arraydecay10), !dbg !313
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !314
  ret void, !dbg !314
}

; Function Attrs: nounwind uwtable
define internal void @int_test_abs(ptr noundef %expected, ptr noundef %arg) #0 !dbg !315 {
entry:
  %expected.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !317, metadata !DIExpression()), !dbg !320
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !318, metadata !DIExpression()), !dbg !321
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !322
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !319, metadata !DIExpression()), !dbg !323
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !324
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !324
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !325
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !325, !tbaa !294
  call void @__gmpz_abs(ptr noundef %arraydecay1, ptr noundef %0), !dbg !325
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !326
  %1 = load ptr, ptr %expected.addr, align 8, !dbg !326, !tbaa !294
  %call = call i32 @__gmpz_cmp(ptr noundef %arraydecay2, ptr noundef %1) #10, !dbg !326
  %cmp = icmp eq i32 %call, 0, !dbg !326
  br i1 %cmp, label %if.then, label %if.else, !dbg !329

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !329

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.50, ptr noundef @.str.51, i32 noundef 209, ptr noundef @__PRETTY_FUNCTION__.int_test_abs) #11, !dbg !326
  unreachable, !dbg !326

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !330
  call void @__gmpz_clear(ptr noundef %arraydecay3), !dbg !330
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !331
  ret void, !dbg !331
}

; Function Attrs: nounwind uwtable
define internal void @int_test_sum(ptr noundef %sum, ptr noundef %term1, ptr noundef %term2) #0 !dbg !332 {
entry:
  %sum.addr = alloca ptr, align 8
  %term1.addr = alloca ptr, align 8
  %term2.addr = alloca ptr, align 8
  store ptr %sum, ptr %sum.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %sum.addr, metadata !334, metadata !DIExpression()), !dbg !337
  store ptr %term1, ptr %term1.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %term1.addr, metadata !335, metadata !DIExpression()), !dbg !338
  store ptr %term2, ptr %term2.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %term2.addr, metadata !336, metadata !DIExpression()), !dbg !339
  %0 = load ptr, ptr %term1.addr, align 8, !dbg !340, !tbaa !294
  %1 = load ptr, ptr %sum.addr, align 8, !dbg !341, !tbaa !294
  %2 = load ptr, ptr %term2.addr, align 8, !dbg !342, !tbaa !294
  call void @int_test_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !343
  %3 = load ptr, ptr %term2.addr, align 8, !dbg !344, !tbaa !294
  %4 = load ptr, ptr %sum.addr, align 8, !dbg !345, !tbaa !294
  %5 = load ptr, ptr %term1.addr, align 8, !dbg !346, !tbaa !294
  call void @int_test_sub(ptr noundef %3, ptr noundef %4, ptr noundef %5), !dbg !347
  %6 = load ptr, ptr %sum.addr, align 8, !dbg !348, !tbaa !294
  %7 = load ptr, ptr %term1.addr, align 8, !dbg !349, !tbaa !294
  %8 = load ptr, ptr %term2.addr, align 8, !dbg !350, !tbaa !294
  call void @int_test_add(ptr noundef %6, ptr noundef %7, ptr noundef %8), !dbg !351
  %9 = load ptr, ptr %sum.addr, align 8, !dbg !352, !tbaa !294
  %10 = load ptr, ptr %term2.addr, align 8, !dbg !353, !tbaa !294
  %11 = load ptr, ptr %term1.addr, align 8, !dbg !354, !tbaa !294
  call void @int_test_add(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: nounwind uwtable
define internal void @int_test_product(ptr noundef %product, ptr noundef %factor1, ptr noundef %factor2) #0 !dbg !357 {
entry:
  %product.addr = alloca ptr, align 8
  %factor1.addr = alloca ptr, align 8
  %factor2.addr = alloca ptr, align 8
  store ptr %product, ptr %product.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %product.addr, metadata !359, metadata !DIExpression()), !dbg !362
  store ptr %factor1, ptr %factor1.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !360, metadata !DIExpression()), !dbg !363
  store ptr %factor2, ptr %factor2.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !361, metadata !DIExpression()), !dbg !364
  %0 = load ptr, ptr %factor1.addr, align 8, !dbg !365, !tbaa !294
  %1 = load ptr, ptr %product.addr, align 8, !dbg !366, !tbaa !294
  %2 = load ptr, ptr %factor2.addr, align 8, !dbg !367, !tbaa !294
  call void @int_test_divexact(ptr noundef %0, ptr noundef %1, ptr noundef %2), !dbg !368
  %3 = load ptr, ptr %factor2.addr, align 8, !dbg !369, !tbaa !294
  %4 = load ptr, ptr %product.addr, align 8, !dbg !370, !tbaa !294
  %5 = load ptr, ptr %factor1.addr, align 8, !dbg !371, !tbaa !294
  call void @int_test_divexact(ptr noundef %3, ptr noundef %4, ptr noundef %5), !dbg !372
  %6 = load ptr, ptr %product.addr, align 8, !dbg !373, !tbaa !294
  %7 = load ptr, ptr %factor1.addr, align 8, !dbg !374, !tbaa !294
  %8 = load ptr, ptr %factor2.addr, align 8, !dbg !375, !tbaa !294
  call void @int_test_mul(ptr noundef %6, ptr noundef %7, ptr noundef %8), !dbg !376
  %9 = load ptr, ptr %product.addr, align 8, !dbg !377, !tbaa !294
  %10 = load ptr, ptr %factor2.addr, align 8, !dbg !378, !tbaa !294
  %11 = load ptr, ptr %factor1.addr, align 8, !dbg !379, !tbaa !294
  call void @int_test_mul(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: nounwind uwtable
define internal void @int_test_fdiv(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !382 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %rhsulong = alloca i64, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !384, metadata !DIExpression()), !dbg !389
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !385, metadata !DIExpression()), !dbg !390
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !386, metadata !DIExpression()), !dbg !391
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhsulong) #9, !dbg !392
  tail call void @llvm.dbg.declare(metadata ptr %rhsulong, metadata !387, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !394
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !388, metadata !DIExpression()), !dbg !395
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !396
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !396
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !397
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !397, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !397, !tbaa !294
  call void @__gmpz_fdiv_q(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !397
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !398, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !398
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !398
  %cmp = icmp eq i32 %call, 0, !dbg !398
  br i1 %cmp, label %if.then, label %if.else, !dbg !401

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !401

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 350, ptr noundef @__PRETTY_FUNCTION__.int_test_fdiv) #11, !dbg !398
  unreachable, !dbg !398

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %rhs.addr, align 8, !dbg !402, !tbaa !294
  %call3 = call i32 @__gmpz_fits_ulong_p(ptr noundef %3) #10, !dbg !402
  %tobool = icmp ne i32 %call3, 0, !dbg !402
  br i1 %tobool, label %if.then4, label %if.end14, !dbg !404

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %rhs.addr, align 8, !dbg !405, !tbaa !294
  %call5 = call i64 @__gmpz_get_ui(ptr noundef %4) #10, !dbg !405
  store i64 %call5, ptr %rhsulong, align 8, !dbg !407, !tbaa !408
  %arraydecay6 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !410
  %5 = load ptr, ptr %lhs.addr, align 8, !dbg !410, !tbaa !294
  %6 = load i64, ptr %rhsulong, align 8, !dbg !410, !tbaa !408
  %call7 = call i64 @__gmpz_fdiv_q_ui(ptr noundef %arraydecay6, ptr noundef %5, i64 noundef %6), !dbg !410
  %7 = load ptr, ptr %expected.addr, align 8, !dbg !411, !tbaa !294
  %arraydecay8 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !411
  %call9 = call i32 @__gmpz_cmp(ptr noundef %7, ptr noundef %arraydecay8) #10, !dbg !411
  %cmp10 = icmp eq i32 %call9, 0, !dbg !411
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !414

if.then11:                                        ; preds = %if.then4
  br label %if.end13, !dbg !414

if.else12:                                        ; preds = %if.then4
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 356, ptr noundef @__PRETTY_FUNCTION__.int_test_fdiv) #11, !dbg !411
  unreachable, !dbg !411

if.end13:                                         ; preds = %if.then11
  br label %if.end14, !dbg !415

if.end14:                                         ; preds = %if.end13, %if.end
  %arraydecay15 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !416
  call void @__gmpz_clear(ptr noundef %arraydecay15), !dbg !416
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !417
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhsulong) #9, !dbg !417
  ret void, !dbg !417
}

; Function Attrs: nounwind uwtable
define internal void @int_test_fdiv_r(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !418 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !420, metadata !DIExpression()), !dbg !424
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !421, metadata !DIExpression()), !dbg !425
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !422, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !427
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !423, metadata !DIExpression()), !dbg !428
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !429
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !429
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !430
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !430, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !430, !tbaa !294
  call void @__gmpz_fdiv_r(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !430
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !431, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !431
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !431
  %cmp = icmp eq i32 %call, 0, !dbg !431
  br i1 %cmp, label %if.then, label %if.else, !dbg !434

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !434

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 398, ptr noundef @__PRETTY_FUNCTION__.int_test_fdiv_r) #11, !dbg !431
  unreachable, !dbg !431

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !435
  call void @__gmpz_clear(ptr noundef %arraydecay3), !dbg !435
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !436
  ret void, !dbg !436
}

; Function Attrs: nounwind uwtable
define internal void @int_test_cdiv(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !437 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %rhsulong = alloca i64, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !439, metadata !DIExpression()), !dbg !444
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !440, metadata !DIExpression()), !dbg !445
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !441, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhsulong) #9, !dbg !447
  tail call void @llvm.dbg.declare(metadata ptr %rhsulong, metadata !442, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !449
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !443, metadata !DIExpression()), !dbg !450
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !451
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !451
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !452
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !452, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !452, !tbaa !294
  call void @__gmpz_cdiv_q(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !452
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !453, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !453
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !453
  %cmp = icmp eq i32 %call, 0, !dbg !453
  br i1 %cmp, label %if.then, label %if.else, !dbg !456

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !456

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 369, ptr noundef @__PRETTY_FUNCTION__.int_test_cdiv) #11, !dbg !453
  unreachable, !dbg !453

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %rhs.addr, align 8, !dbg !457, !tbaa !294
  %call3 = call i32 @__gmpz_fits_ulong_p(ptr noundef %3) #10, !dbg !457
  %tobool = icmp ne i32 %call3, 0, !dbg !457
  br i1 %tobool, label %if.then4, label %if.end14, !dbg !459

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %rhs.addr, align 8, !dbg !460, !tbaa !294
  %call5 = call i64 @__gmpz_get_ui(ptr noundef %4) #10, !dbg !460
  store i64 %call5, ptr %rhsulong, align 8, !dbg !462, !tbaa !408
  %arraydecay6 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !463
  %5 = load ptr, ptr %lhs.addr, align 8, !dbg !463, !tbaa !294
  %6 = load i64, ptr %rhsulong, align 8, !dbg !463, !tbaa !408
  %call7 = call i64 @__gmpz_cdiv_q_ui(ptr noundef %arraydecay6, ptr noundef %5, i64 noundef %6), !dbg !463
  %7 = load ptr, ptr %expected.addr, align 8, !dbg !464, !tbaa !294
  %arraydecay8 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !464
  %call9 = call i32 @__gmpz_cmp(ptr noundef %7, ptr noundef %arraydecay8) #10, !dbg !464
  %cmp10 = icmp eq i32 %call9, 0, !dbg !464
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !467

if.then11:                                        ; preds = %if.then4
  br label %if.end13, !dbg !467

if.else12:                                        ; preds = %if.then4
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 375, ptr noundef @__PRETTY_FUNCTION__.int_test_cdiv) #11, !dbg !464
  unreachable, !dbg !464

if.end13:                                         ; preds = %if.then11
  br label %if.end14, !dbg !468

if.end14:                                         ; preds = %if.end13, %if.end
  %arraydecay15 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !469
  call void @__gmpz_clear(ptr noundef %arraydecay15), !dbg !469
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !470
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhsulong) #9, !dbg !470
  ret void, !dbg !470
}

; Function Attrs: nounwind uwtable
define internal void @int_test_tdiv(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !471 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !473, metadata !DIExpression()), !dbg !477
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !474, metadata !DIExpression()), !dbg !478
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !475, metadata !DIExpression()), !dbg !479
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !480
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !476, metadata !DIExpression()), !dbg !481
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !482
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !482
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !483
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !483, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !483, !tbaa !294
  call void @__gmpz_tdiv_q(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !483
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !484, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !484
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !484
  %cmp = icmp eq i32 %call, 0, !dbg !484
  br i1 %cmp, label %if.then, label %if.else, !dbg !487

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !487

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 387, ptr noundef @__PRETTY_FUNCTION__.int_test_tdiv) #11, !dbg !484
  unreachable, !dbg !484

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !488
  call void @__gmpz_clear(ptr noundef %arraydecay3), !dbg !488
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !489
  ret void, !dbg !489
}

; Function Attrs: nounwind uwtable
define internal void @int_test_gcd(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !490 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !492, metadata !DIExpression()), !dbg !496
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !493, metadata !DIExpression()), !dbg !497
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !494, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !499
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !495, metadata !DIExpression()), !dbg !500
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !501
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !501
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !502
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !502, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !502, !tbaa !294
  call void @__gmpz_gcd(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !502
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !503, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !503
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !503
  %cmp = icmp eq i32 %call, 0, !dbg !503
  br i1 %cmp, label %if.then, label %if.else, !dbg !506

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !506

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 409, ptr noundef @__PRETTY_FUNCTION__.int_test_gcd) #11, !dbg !503
  unreachable, !dbg !503

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !507
  %3 = load ptr, ptr %rhs.addr, align 8, !dbg !507, !tbaa !294
  %4 = load ptr, ptr %lhs.addr, align 8, !dbg !507, !tbaa !294
  call void @__gmpz_gcd(ptr noundef %arraydecay3, ptr noundef %3, ptr noundef %4), !dbg !507
  %5 = load ptr, ptr %expected.addr, align 8, !dbg !508, !tbaa !294
  %arraydecay4 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !508
  %call5 = call i32 @__gmpz_cmp(ptr noundef %5, ptr noundef %arraydecay4) #10, !dbg !508
  %cmp6 = icmp eq i32 %call5, 0, !dbg !508
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !511

if.then7:                                         ; preds = %if.end
  br label %if.end9, !dbg !511

if.else8:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 412, ptr noundef @__PRETTY_FUNCTION__.int_test_gcd) #11, !dbg !508
  unreachable, !dbg !508

if.end9:                                          ; preds = %if.then7
  %arraydecay10 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !512
  call void @__gmpz_clear(ptr noundef %arraydecay10), !dbg !512
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !513
  ret void, !dbg !513
}

; Function Attrs: nounwind uwtable
define internal void @int_test_lcm(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !514 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !516, metadata !DIExpression()), !dbg !520
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !517, metadata !DIExpression()), !dbg !521
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !518, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !523
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !519, metadata !DIExpression()), !dbg !524
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !525
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !525
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !526
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !526, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !526, !tbaa !294
  call void @__gmpz_lcm(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !526
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !527, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !527
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !527
  %cmp = icmp eq i32 %call, 0, !dbg !527
  br i1 %cmp, label %if.then, label %if.else, !dbg !530

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !530

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 423, ptr noundef @__PRETTY_FUNCTION__.int_test_lcm) #11, !dbg !527
  unreachable, !dbg !527

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !531
  %3 = load ptr, ptr %rhs.addr, align 8, !dbg !531, !tbaa !294
  %4 = load ptr, ptr %lhs.addr, align 8, !dbg !531, !tbaa !294
  call void @__gmpz_lcm(ptr noundef %arraydecay3, ptr noundef %3, ptr noundef %4), !dbg !531
  %5 = load ptr, ptr %expected.addr, align 8, !dbg !532, !tbaa !294
  %arraydecay4 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !532
  %call5 = call i32 @__gmpz_cmp(ptr noundef %5, ptr noundef %arraydecay4) #10, !dbg !532
  %cmp6 = icmp eq i32 %call5, 0, !dbg !532
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !535

if.then7:                                         ; preds = %if.end
  br label %if.end9, !dbg !535

if.else8:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 426, ptr noundef @__PRETTY_FUNCTION__.int_test_lcm) #11, !dbg !532
  unreachable, !dbg !532

if.end9:                                          ; preds = %if.then7
  %arraydecay10 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !536
  call void @__gmpz_clear(ptr noundef %arraydecay10), !dbg !536
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !537
  ret void, !dbg !537
}

; Function Attrs: nounwind uwtable
define internal void @int_test_cmps(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !538 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %exp = alloca i32, align 4
  %diff = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !540, metadata !DIExpression()), !dbg !545
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !541, metadata !DIExpression()), !dbg !546
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !542, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 4, ptr %exp) #9, !dbg !548
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !543, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 16, ptr %diff) #9, !dbg !550
  tail call void @llvm.dbg.declare(metadata ptr %diff, metadata !544, metadata !DIExpression()), !dbg !551
  %0 = load ptr, ptr %expected.addr, align 8, !dbg !552, !tbaa !294
  %call = call i64 @__gmpz_get_si(ptr noundef %0) #10, !dbg !552
  %conv = trunc i64 %call to i32, !dbg !552
  store i32 %conv, ptr %exp, align 4, !dbg !553, !tbaa !554
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %diff, i64 0, i64 0, !dbg !556
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !556
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %diff, i64 0, i64 0, !dbg !557
  %1 = load ptr, ptr %lhs.addr, align 8, !dbg !557, !tbaa !294
  %2 = load ptr, ptr %rhs.addr, align 8, !dbg !557, !tbaa !294
  call void @__gmpz_sub(ptr noundef %arraydecay1, ptr noundef %1, ptr noundef %2), !dbg !557
  %3 = load i32, ptr %exp, align 4, !dbg !558, !tbaa !554
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %diff, i64 0, i64 0, !dbg !558
  %_mp_size = getelementptr inbounds %struct.__mpz_struct, ptr %arraydecay2, i32 0, i32 1, !dbg !558
  %4 = load i32, ptr %_mp_size, align 4, !dbg !558, !tbaa !561
  %cmp = icmp slt i32 %4, 0, !dbg !558
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !558

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !558

cond.false:                                       ; preds = %entry
  %arraydecay4 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %diff, i64 0, i64 0, !dbg !558
  %_mp_size5 = getelementptr inbounds %struct.__mpz_struct, ptr %arraydecay4, i32 0, i32 1, !dbg !558
  %5 = load i32, ptr %_mp_size5, align 4, !dbg !558, !tbaa !561
  %cmp6 = icmp sgt i32 %5, 0, !dbg !558
  %conv7 = zext i1 %cmp6 to i32, !dbg !558
  br label %cond.end, !dbg !558

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv7, %cond.false ], !dbg !558
  %cmp8 = icmp eq i32 %3, %cond, !dbg !558
  br i1 %cmp8, label %if.then, label %if.else, !dbg !563

if.then:                                          ; preds = %cond.end
  br label %if.end, !dbg !563

if.else:                                          ; preds = %cond.end
  call void @__assert_fail(ptr noundef @.str.54, ptr noundef @.str.51, i32 noundef 464, ptr noundef @__PRETTY_FUNCTION__.int_test_cmps) #11, !dbg !558
  unreachable, !dbg !558

if.end:                                           ; preds = %if.then
  %arraydecay10 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %diff, i64 0, i64 0, !dbg !564
  call void @__gmpz_clear(ptr noundef %arraydecay10), !dbg !564
  %6 = load i32, ptr %exp, align 4, !dbg !565, !tbaa !554
  %7 = load ptr, ptr %lhs.addr, align 8, !dbg !566, !tbaa !294
  %8 = load ptr, ptr %rhs.addr, align 8, !dbg !567, !tbaa !294
  call void @int_test_cmp(i32 noundef %6, ptr noundef %7, ptr noundef %8), !dbg !568
  %9 = load i32, ptr %exp, align 4, !dbg !569, !tbaa !554
  %sub = sub nsw i32 0, %9, !dbg !570
  %10 = load ptr, ptr %rhs.addr, align 8, !dbg !571, !tbaa !294
  %11 = load ptr, ptr %lhs.addr, align 8, !dbg !572, !tbaa !294
  call void @int_test_cmp(i32 noundef %sub, ptr noundef %10, ptr noundef %11), !dbg !573
  call void @llvm.lifetime.end.p0(i64 16, ptr %diff) #9, !dbg !574
  call void @llvm.lifetime.end.p0(i64 4, ptr %exp) #9, !dbg !574
  ret void, !dbg !574
}

; Function Attrs: nounwind uwtable
define internal void @int_test_abs_cmp(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !575 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %exp = alloca i32, align 4
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !577, metadata !DIExpression()), !dbg !581
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !578, metadata !DIExpression()), !dbg !582
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !579, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 4, ptr %exp) #9, !dbg !584
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !580, metadata !DIExpression()), !dbg !585
  %0 = load ptr, ptr %expected.addr, align 8, !dbg !586, !tbaa !294
  %call = call i64 @__gmpz_get_si(ptr noundef %0) #10, !dbg !586
  %conv = trunc i64 %call to i32, !dbg !586
  store i32 %conv, ptr %exp, align 4, !dbg !587, !tbaa !554
  %1 = load i32, ptr %exp, align 4, !dbg !588, !tbaa !554
  %2 = load ptr, ptr %lhs.addr, align 8, !dbg !588, !tbaa !294
  %3 = load ptr, ptr %rhs.addr, align 8, !dbg !588, !tbaa !294
  %call1 = call i32 @__gmpz_cmpabs(ptr noundef %2, ptr noundef %3) #10, !dbg !588
  %call2 = call i32 @sgn(i32 noundef %call1), !dbg !588
  %cmp = icmp eq i32 %1, %call2, !dbg !588
  br i1 %cmp, label %if.then, label %if.else, !dbg !591

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !591

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.57, ptr noundef @.str.51, i32 noundef 476, ptr noundef @__PRETTY_FUNCTION__.int_test_abs_cmp) #11, !dbg !588
  unreachable, !dbg !588

if.end:                                           ; preds = %if.then
  %4 = load i32, ptr %exp, align 4, !dbg !592, !tbaa !554
  %sub = sub nsw i32 0, %4, !dbg !592
  %5 = load ptr, ptr %rhs.addr, align 8, !dbg !592, !tbaa !294
  %6 = load ptr, ptr %lhs.addr, align 8, !dbg !592, !tbaa !294
  %call4 = call i32 @__gmpz_cmpabs(ptr noundef %5, ptr noundef %6) #10, !dbg !592
  %call5 = call i32 @sgn(i32 noundef %call4), !dbg !592
  %cmp6 = icmp eq i32 %sub, %call5, !dbg !592
  br i1 %cmp6, label %if.then8, label %if.else9, !dbg !595

if.then8:                                         ; preds = %if.end
  br label %if.end10, !dbg !595

if.else9:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.58, ptr noundef @.str.51, i32 noundef 477, ptr noundef @__PRETTY_FUNCTION__.int_test_abs_cmp) #11, !dbg !592
  unreachable, !dbg !592

if.end10:                                         ; preds = %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %exp) #9, !dbg !596
  ret void, !dbg !596
}

; Function Attrs: nounwind uwtable
define internal void @int_test_divisible(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !597 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %exp = alloca i32, align 4
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !599, metadata !DIExpression()), !dbg !603
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !600, metadata !DIExpression()), !dbg !604
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !601, metadata !DIExpression()), !dbg !605
  call void @llvm.lifetime.start.p0(i64 4, ptr %exp) #9, !dbg !606
  tail call void @llvm.dbg.declare(metadata ptr %exp, metadata !602, metadata !DIExpression()), !dbg !607
  %0 = load ptr, ptr %expected.addr, align 8, !dbg !608, !tbaa !294
  %call = call i64 @__gmpz_get_si(ptr noundef %0) #10, !dbg !608
  %conv = trunc i64 %call to i32, !dbg !608
  store i32 %conv, ptr %exp, align 4, !dbg !609, !tbaa !554
  %1 = load ptr, ptr %lhs.addr, align 8, !dbg !610, !tbaa !294
  %2 = load ptr, ptr %rhs.addr, align 8, !dbg !610, !tbaa !294
  %call1 = call i32 @__gmpz_divisible_p(ptr noundef %1, ptr noundef %2) #10, !dbg !610
  %3 = load i32, ptr %exp, align 4, !dbg !610, !tbaa !554
  %cmp = icmp eq i32 %call1, %3, !dbg !610
  br i1 %cmp, label %if.then, label %if.else, !dbg !613

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !613

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.59, ptr noundef @.str.51, i32 noundef 488, ptr noundef @__PRETTY_FUNCTION__.int_test_divisible) #11, !dbg !610
  unreachable, !dbg !610

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %exp) #9, !dbg !614
  ret void, !dbg !614
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !615 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !620
  tail call void @llvm.dbg.declare(metadata ptr %i, metadata !619, metadata !DIExpression()), !dbg !621
  call void @int_test_single_value(), !dbg !622
  store i32 0, ptr %i, align 4, !dbg !623, !tbaa !554
  br label %for.cond, !dbg !625

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !626, !tbaa !554
  %conv = sext i32 %0 to i64, !dbg !626
  %cmp = icmp ult i64 %conv, 13, !dbg !628
  br i1 %cmp, label %for.body, label %for.end, !dbg !629

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !630, !tbaa !554
  %idxprom = sext i32 %1 to i64, !dbg !632
  %arrayidx = getelementptr inbounds [13 x %struct.anon], ptr @int_unary_tests, i64 0, i64 %idxprom, !dbg !632
  %expected = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1, !dbg !633
  %2 = load ptr, ptr %expected, align 8, !dbg !633, !tbaa !634
  %3 = load i32, ptr %i, align 4, !dbg !636, !tbaa !554
  %idxprom2 = sext i32 %3 to i64, !dbg !637
  %arrayidx3 = getelementptr inbounds [13 x %struct.anon], ptr @int_unary_tests, i64 0, i64 %idxprom2, !dbg !637
  %arg = getelementptr inbounds %struct.anon, ptr %arrayidx3, i32 0, i32 2, !dbg !638
  %4 = load ptr, ptr %arg, align 8, !dbg !638, !tbaa !639
  %5 = load i32, ptr %i, align 4, !dbg !640, !tbaa !554
  %idxprom4 = sext i32 %5 to i64, !dbg !641
  %arrayidx5 = getelementptr inbounds [13 x %struct.anon], ptr @int_unary_tests, i64 0, i64 %idxprom4, !dbg !641
  %fn = getelementptr inbounds %struct.anon, ptr %arrayidx5, i32 0, i32 0, !dbg !642
  %6 = load ptr, ptr %fn, align 8, !dbg !642, !tbaa !643
  call void @invoke_alternate_representations_2args(ptr noundef %2, ptr noundef %4, ptr noundef %6), !dbg !644
  br label %for.inc, !dbg !645

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !646, !tbaa !554
  %add = add nsw i32 %7, 1, !dbg !646
  store i32 %add, ptr %i, align 4, !dbg !646, !tbaa !554
  br label %for.cond, !dbg !647, !llvm.loop !648

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !651, !tbaa !554
  br label %for.cond6, !dbg !653

for.cond6:                                        ; preds = %for.inc21, %for.end
  %8 = load i32, ptr %i, align 4, !dbg !654, !tbaa !554
  %conv7 = sext i32 %8 to i64, !dbg !654
  %cmp8 = icmp ult i64 %conv7, 109, !dbg !656
  br i1 %cmp8, label %for.body10, label %for.end23, !dbg !657

for.body10:                                       ; preds = %for.cond6
  %9 = load i32, ptr %i, align 4, !dbg !658, !tbaa !554
  %idxprom11 = sext i32 %9 to i64, !dbg !660
  %arrayidx12 = getelementptr inbounds [109 x %struct.anon.0], ptr @int_binary_tests, i64 0, i64 %idxprom11, !dbg !660
  %expected13 = getelementptr inbounds %struct.anon.0, ptr %arrayidx12, i32 0, i32 1, !dbg !661
  %10 = load ptr, ptr %expected13, align 8, !dbg !661, !tbaa !662
  %11 = load i32, ptr %i, align 4, !dbg !664, !tbaa !554
  %idxprom14 = sext i32 %11 to i64, !dbg !665
  %arrayidx15 = getelementptr inbounds [109 x %struct.anon.0], ptr @int_binary_tests, i64 0, i64 %idxprom14, !dbg !665
  %lhs = getelementptr inbounds %struct.anon.0, ptr %arrayidx15, i32 0, i32 2, !dbg !666
  %12 = load ptr, ptr %lhs, align 16, !dbg !666, !tbaa !667
  %13 = load i32, ptr %i, align 4, !dbg !668, !tbaa !554
  %idxprom16 = sext i32 %13 to i64, !dbg !669
  %arrayidx17 = getelementptr inbounds [109 x %struct.anon.0], ptr @int_binary_tests, i64 0, i64 %idxprom16, !dbg !669
  %rhs = getelementptr inbounds %struct.anon.0, ptr %arrayidx17, i32 0, i32 3, !dbg !670
  %14 = load ptr, ptr %rhs, align 8, !dbg !670, !tbaa !671
  %15 = load i32, ptr %i, align 4, !dbg !672, !tbaa !554
  %idxprom18 = sext i32 %15 to i64, !dbg !673
  %arrayidx19 = getelementptr inbounds [109 x %struct.anon.0], ptr @int_binary_tests, i64 0, i64 %idxprom18, !dbg !673
  %fn20 = getelementptr inbounds %struct.anon.0, ptr %arrayidx19, i32 0, i32 0, !dbg !674
  %16 = load ptr, ptr %fn20, align 16, !dbg !674, !tbaa !675
  call void @invoke_alternate_representations_3args(ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %16), !dbg !676
  br label %for.inc21, !dbg !677

for.inc21:                                        ; preds = %for.body10
  %17 = load i32, ptr %i, align 4, !dbg !678, !tbaa !554
  %add22 = add nsw i32 %17, 1, !dbg !678
  store i32 %add22, ptr %i, align 4, !dbg !678, !tbaa !554
  br label %for.cond6, !dbg !679, !llvm.loop !680

for.end23:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !682
  ret i32 0, !dbg !683
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @invoke_alternate_representations_2args(ptr noundef %arg1, ptr noundef %arg2, ptr noundef %fn) #0 !dbg !684 {
entry:
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %int1 = alloca [1 x %struct.__mpz_struct], align 16
  %int2 = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %arg1, ptr %arg1.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %arg1.addr, metadata !688, metadata !DIExpression()), !dbg !693
  store ptr %arg2, ptr %arg2.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %arg2.addr, metadata !689, metadata !DIExpression()), !dbg !694
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !690, metadata !DIExpression()), !dbg !695
  call void @llvm.lifetime.start.p0(i64 16, ptr %int1) #9, !dbg !696
  tail call void @llvm.dbg.declare(metadata ptr %int1, metadata !691, metadata !DIExpression()), !dbg !697
  call void @llvm.lifetime.start.p0(i64 16, ptr %int2) #9, !dbg !696
  tail call void @llvm.dbg.declare(metadata ptr %int2, metadata !692, metadata !DIExpression()), !dbg !698
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int1, i64 0, i64 0, !dbg !699
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !699
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int2, i64 0, i64 0, !dbg !700
  call void @__gmpz_init(ptr noundef %arraydecay1), !dbg !700
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int1, i64 0, i64 0, !dbg !701
  %0 = load ptr, ptr %arg1.addr, align 8, !dbg !701, !tbaa !294
  %call = call i32 @__gmpz_set_str(ptr noundef %arraydecay2, ptr noundef %0, i32 noundef 10), !dbg !701
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int2, i64 0, i64 0, !dbg !702
  %1 = load ptr, ptr %arg2.addr, align 8, !dbg !702, !tbaa !294
  %call4 = call i32 @__gmpz_set_str(ptr noundef %arraydecay3, ptr noundef %1, i32 noundef 10), !dbg !702
  %2 = load ptr, ptr %fn.addr, align 8, !dbg !703, !tbaa !294
  %arraydecay5 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int1, i64 0, i64 0, !dbg !704
  %arraydecay6 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int2, i64 0, i64 0, !dbg !705
  call void %2(ptr noundef %arraydecay5, ptr noundef %arraydecay6), !dbg !706
  %arraydecay7 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int1, i64 0, i64 0, !dbg !707
  call void @__gmpz_clear(ptr noundef %arraydecay7), !dbg !707
  %arraydecay8 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int2, i64 0, i64 0, !dbg !708
  call void @__gmpz_clear(ptr noundef %arraydecay8), !dbg !708
  call void @llvm.lifetime.end.p0(i64 16, ptr %int2) #9, !dbg !709
  call void @llvm.lifetime.end.p0(i64 16, ptr %int1) #9, !dbg !709
  ret void, !dbg !709
}

; Function Attrs: nounwind uwtable
define internal void @invoke_alternate_representations_3args(ptr noundef %arg1, ptr noundef %arg2, ptr noundef %arg3, ptr noundef %fn) #0 !dbg !710 {
entry:
  %arg1.addr = alloca ptr, align 8
  %arg2.addr = alloca ptr, align 8
  %arg3.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %int1 = alloca [1 x %struct.__mpz_struct], align 16
  %int2 = alloca [1 x %struct.__mpz_struct], align 16
  %int3 = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %arg1, ptr %arg1.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %arg1.addr, metadata !714, metadata !DIExpression()), !dbg !721
  store ptr %arg2, ptr %arg2.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %arg2.addr, metadata !715, metadata !DIExpression()), !dbg !722
  store ptr %arg3, ptr %arg3.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %arg3.addr, metadata !716, metadata !DIExpression()), !dbg !723
  store ptr %fn, ptr %fn.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !717, metadata !DIExpression()), !dbg !724
  call void @llvm.lifetime.start.p0(i64 16, ptr %int1) #9, !dbg !725
  tail call void @llvm.dbg.declare(metadata ptr %int1, metadata !718, metadata !DIExpression()), !dbg !726
  call void @llvm.lifetime.start.p0(i64 16, ptr %int2) #9, !dbg !725
  tail call void @llvm.dbg.declare(metadata ptr %int2, metadata !719, metadata !DIExpression()), !dbg !727
  call void @llvm.lifetime.start.p0(i64 16, ptr %int3) #9, !dbg !725
  tail call void @llvm.dbg.declare(metadata ptr %int3, metadata !720, metadata !DIExpression()), !dbg !728
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int1, i64 0, i64 0, !dbg !729
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !729
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int2, i64 0, i64 0, !dbg !730
  call void @__gmpz_init(ptr noundef %arraydecay1), !dbg !730
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int3, i64 0, i64 0, !dbg !731
  call void @__gmpz_init(ptr noundef %arraydecay2), !dbg !731
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int1, i64 0, i64 0, !dbg !732
  %0 = load ptr, ptr %arg1.addr, align 8, !dbg !732, !tbaa !294
  %call = call i32 @__gmpz_set_str(ptr noundef %arraydecay3, ptr noundef %0, i32 noundef 10), !dbg !732
  %arraydecay4 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int2, i64 0, i64 0, !dbg !733
  %1 = load ptr, ptr %arg2.addr, align 8, !dbg !733, !tbaa !294
  %call5 = call i32 @__gmpz_set_str(ptr noundef %arraydecay4, ptr noundef %1, i32 noundef 10), !dbg !733
  %arraydecay6 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int3, i64 0, i64 0, !dbg !734
  %2 = load ptr, ptr %arg3.addr, align 8, !dbg !734, !tbaa !294
  %call7 = call i32 @__gmpz_set_str(ptr noundef %arraydecay6, ptr noundef %2, i32 noundef 10), !dbg !734
  %3 = load ptr, ptr %fn.addr, align 8, !dbg !735, !tbaa !294
  %arraydecay8 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int1, i64 0, i64 0, !dbg !736
  %arraydecay9 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int2, i64 0, i64 0, !dbg !737
  %arraydecay10 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int3, i64 0, i64 0, !dbg !738
  call void %3(ptr noundef %arraydecay8, ptr noundef %arraydecay9, ptr noundef %arraydecay10), !dbg !739
  %arraydecay11 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int1, i64 0, i64 0, !dbg !740
  call void @__gmpz_clear(ptr noundef %arraydecay11), !dbg !740
  %arraydecay12 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int2, i64 0, i64 0, !dbg !741
  call void @__gmpz_clear(ptr noundef %arraydecay12), !dbg !741
  %arraydecay13 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %int3, i64 0, i64 0, !dbg !742
  call void @__gmpz_clear(ptr noundef %arraydecay13), !dbg !742
  call void @llvm.lifetime.end.p0(i64 16, ptr %int3) #9, !dbg !743
  call void @llvm.lifetime.end.p0(i64 16, ptr %int2) #9, !dbg !743
  call void @llvm.lifetime.end.p0(i64 16, ptr %int1) #9, !dbg !743
  ret void, !dbg !743
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !744 void @__gmpz_init(ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally void @__gmpz_neg(ptr noundef %__gmp_w, ptr noundef %__gmp_u) #3 !dbg !748 {
entry:
  %__gmp_w.addr = alloca ptr, align 8
  %__gmp_u.addr = alloca ptr, align 8
  store ptr %__gmp_w, ptr %__gmp_w.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_w.addr, metadata !755, metadata !DIExpression()), !dbg !757
  store ptr %__gmp_u, ptr %__gmp_u.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_u.addr, metadata !756, metadata !DIExpression()), !dbg !758
  %0 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !759, !tbaa !294
  %1 = load ptr, ptr %__gmp_u.addr, align 8, !dbg !761, !tbaa !294
  %cmp = icmp ne ptr %0, %1, !dbg !762
  br i1 %cmp, label %if.then, label %if.end, !dbg !763

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !764, !tbaa !294
  %3 = load ptr, ptr %__gmp_u.addr, align 8, !dbg !765, !tbaa !294
  call void @__gmpz_set(ptr noundef %2, ptr noundef %3), !dbg !766
  br label %if.end, !dbg !766

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !767, !tbaa !294
  %_mp_size = getelementptr inbounds %struct.__mpz_struct, ptr %4, i32 0, i32 1, !dbg !768
  %5 = load i32, ptr %_mp_size, align 4, !dbg !768, !tbaa !561
  %sub = sub nsw i32 0, %5, !dbg !769
  %6 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !770, !tbaa !294
  %_mp_size1 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i32 0, i32 1, !dbg !771
  store i32 %sub, ptr %_mp_size1, align 4, !dbg !772, !tbaa !561
  ret void, !dbg !773
}

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !774 i32 @__gmpz_cmp(ptr noundef, ptr noundef) #4

; Function Attrs: noreturn nounwind
declare !dbg !777 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

declare !dbg !783 void @__gmpz_clear(ptr noundef) #2

declare !dbg !784 void @__gmpz_set(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally void @__gmpz_abs(ptr noundef %__gmp_w, ptr noundef %__gmp_u) #3 !dbg !785 {
entry:
  %__gmp_w.addr = alloca ptr, align 8
  %__gmp_u.addr = alloca ptr, align 8
  store ptr %__gmp_w, ptr %__gmp_w.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_w.addr, metadata !787, metadata !DIExpression()), !dbg !789
  store ptr %__gmp_u, ptr %__gmp_u.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_u.addr, metadata !788, metadata !DIExpression()), !dbg !790
  %0 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !791, !tbaa !294
  %1 = load ptr, ptr %__gmp_u.addr, align 8, !dbg !793, !tbaa !294
  %cmp = icmp ne ptr %0, %1, !dbg !794
  br i1 %cmp, label %if.then, label %if.end, !dbg !795

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !796, !tbaa !294
  %3 = load ptr, ptr %__gmp_u.addr, align 8, !dbg !797, !tbaa !294
  call void @__gmpz_set(ptr noundef %2, ptr noundef %3), !dbg !798
  br label %if.end, !dbg !798

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !799, !tbaa !294
  %_mp_size = getelementptr inbounds %struct.__mpz_struct, ptr %4, i32 0, i32 1, !dbg !799
  %5 = load i32, ptr %_mp_size, align 4, !dbg !799, !tbaa !561
  %cmp1 = icmp sge i32 %5, 0, !dbg !799
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !799

cond.true:                                        ; preds = %if.end
  %6 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !799, !tbaa !294
  %_mp_size2 = getelementptr inbounds %struct.__mpz_struct, ptr %6, i32 0, i32 1, !dbg !799
  %7 = load i32, ptr %_mp_size2, align 4, !dbg !799, !tbaa !561
  br label %cond.end, !dbg !799

cond.false:                                       ; preds = %if.end
  %8 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !799, !tbaa !294
  %_mp_size3 = getelementptr inbounds %struct.__mpz_struct, ptr %8, i32 0, i32 1, !dbg !799
  %9 = load i32, ptr %_mp_size3, align 4, !dbg !799, !tbaa !561
  %sub = sub nsw i32 0, %9, !dbg !799
  br label %cond.end, !dbg !799

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %sub, %cond.false ], !dbg !799
  %10 = load ptr, ptr %__gmp_w.addr, align 8, !dbg !800, !tbaa !294
  %_mp_size4 = getelementptr inbounds %struct.__mpz_struct, ptr %10, i32 0, i32 1, !dbg !801
  store i32 %cond, ptr %_mp_size4, align 4, !dbg !802, !tbaa !561
  ret void, !dbg !803
}

; Function Attrs: nounwind uwtable
define internal void @int_test_sub(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !804 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !806, metadata !DIExpression()), !dbg !810
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !807, metadata !DIExpression()), !dbg !811
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !808, metadata !DIExpression()), !dbg !812
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !813
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !809, metadata !DIExpression()), !dbg !814
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !815
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !815
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !816
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !816, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !816, !tbaa !294
  call void @__gmpz_sub(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !816
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !817, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !817
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !817
  %cmp = icmp eq i32 %call, 0, !dbg !817
  br i1 %cmp, label %if.then, label %if.else, !dbg !820

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !820

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 326, ptr noundef @__PRETTY_FUNCTION__.int_test_sub) #11, !dbg !817
  unreachable, !dbg !817

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !821
  call void @__gmpz_clear(ptr noundef %arraydecay3), !dbg !821
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !822
  ret void, !dbg !822
}

; Function Attrs: nounwind uwtable
define internal void @int_test_add(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !823 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !825, metadata !DIExpression()), !dbg !829
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !826, metadata !DIExpression()), !dbg !830
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !827, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !832
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !828, metadata !DIExpression()), !dbg !833
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !834
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !834
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !835
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !835, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !835, !tbaa !294
  call void @__gmpz_add(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !835
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !836, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !836
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !836
  %cmp = icmp eq i32 %call, 0, !dbg !836
  br i1 %cmp, label %if.then, label %if.else, !dbg !839

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !839

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 315, ptr noundef @__PRETTY_FUNCTION__.int_test_add) #11, !dbg !836
  unreachable, !dbg !836

if.end:                                           ; preds = %if.then
  %arraydecay3 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !840
  call void @__gmpz_clear(ptr noundef %arraydecay3), !dbg !840
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !841
  ret void, !dbg !841
}

declare !dbg !842 void @__gmpz_sub(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !845 void @__gmpz_add(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @int_test_divexact(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !846 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  %rhsulong = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !848, metadata !DIExpression()), !dbg !853
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !849, metadata !DIExpression()), !dbg !854
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !850, metadata !DIExpression()), !dbg !855
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !856
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !851, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhsulong) #9, !dbg !858
  tail call void @llvm.dbg.declare(metadata ptr %rhsulong, metadata !852, metadata !DIExpression()), !dbg !859
  %0 = load ptr, ptr %rhs.addr, align 8, !dbg !860, !tbaa !294
  %_mp_size = getelementptr inbounds %struct.__mpz_struct, ptr %0, i32 0, i32 1, !dbg !860
  %1 = load i32, ptr %_mp_size, align 4, !dbg !860, !tbaa !561
  %cmp = icmp slt i32 %1, 0, !dbg !860
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !860

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !860

cond.false:                                       ; preds = %entry
  %2 = load ptr, ptr %rhs.addr, align 8, !dbg !860, !tbaa !294
  %_mp_size1 = getelementptr inbounds %struct.__mpz_struct, ptr %2, i32 0, i32 1, !dbg !860
  %3 = load i32, ptr %_mp_size1, align 4, !dbg !860, !tbaa !561
  %cmp2 = icmp sgt i32 %3, 0, !dbg !860
  %conv = zext i1 %cmp2 to i32, !dbg !860
  br label %cond.end, !dbg !860

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %conv, %cond.false ], !dbg !860
  %cmp3 = icmp eq i32 %cond, 0, !dbg !862
  br i1 %cmp3, label %if.then, label %if.end, !dbg !863

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !864

if.end:                                           ; preds = %cond.end
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !865
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !865
  %arraydecay5 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !866
  %4 = load ptr, ptr %lhs.addr, align 8, !dbg !866, !tbaa !294
  %5 = load ptr, ptr %rhs.addr, align 8, !dbg !866, !tbaa !294
  call void @__gmpz_divexact(ptr noundef %arraydecay5, ptr noundef %4, ptr noundef %5), !dbg !866
  %6 = load ptr, ptr %expected.addr, align 8, !dbg !867, !tbaa !294
  %arraydecay6 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !867
  %call = call i32 @__gmpz_cmp(ptr noundef %6, ptr noundef %arraydecay6) #10, !dbg !867
  %cmp7 = icmp eq i32 %call, 0, !dbg !867
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !870

if.then9:                                         ; preds = %if.end
  br label %if.end10, !dbg !870

if.else:                                          ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 245, ptr noundef @__PRETTY_FUNCTION__.int_test_divexact) #11, !dbg !867
  unreachable, !dbg !867

if.end10:                                         ; preds = %if.then9
  %arraydecay11 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !871
  %7 = load ptr, ptr %lhs.addr, align 8, !dbg !871, !tbaa !294
  %8 = load ptr, ptr %rhs.addr, align 8, !dbg !871, !tbaa !294
  call void @__gmpz_tdiv_q(ptr noundef %arraydecay11, ptr noundef %7, ptr noundef %8), !dbg !871
  %9 = load ptr, ptr %expected.addr, align 8, !dbg !872, !tbaa !294
  %arraydecay12 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !872
  %call13 = call i32 @__gmpz_cmp(ptr noundef %9, ptr noundef %arraydecay12) #10, !dbg !872
  %cmp14 = icmp eq i32 %call13, 0, !dbg !872
  br i1 %cmp14, label %if.then16, label %if.else17, !dbg !875

if.then16:                                        ; preds = %if.end10
  br label %if.end18, !dbg !875

if.else17:                                        ; preds = %if.end10
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 248, ptr noundef @__PRETTY_FUNCTION__.int_test_divexact) #11, !dbg !872
  unreachable, !dbg !872

if.end18:                                         ; preds = %if.then16
  %arraydecay19 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !876
  %10 = load ptr, ptr %lhs.addr, align 8, !dbg !876, !tbaa !294
  %11 = load ptr, ptr %rhs.addr, align 8, !dbg !876, !tbaa !294
  call void @__gmpz_fdiv_q(ptr noundef %arraydecay19, ptr noundef %10, ptr noundef %11), !dbg !876
  %12 = load ptr, ptr %expected.addr, align 8, !dbg !877, !tbaa !294
  %arraydecay20 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !877
  %call21 = call i32 @__gmpz_cmp(ptr noundef %12, ptr noundef %arraydecay20) #10, !dbg !877
  %cmp22 = icmp eq i32 %call21, 0, !dbg !877
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !880

if.then24:                                        ; preds = %if.end18
  br label %if.end26, !dbg !880

if.else25:                                        ; preds = %if.end18
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 251, ptr noundef @__PRETTY_FUNCTION__.int_test_divexact) #11, !dbg !877
  unreachable, !dbg !877

if.end26:                                         ; preds = %if.then24
  %arraydecay27 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !881
  %13 = load ptr, ptr %lhs.addr, align 8, !dbg !881, !tbaa !294
  %14 = load ptr, ptr %rhs.addr, align 8, !dbg !881, !tbaa !294
  call void @__gmpz_cdiv_q(ptr noundef %arraydecay27, ptr noundef %13, ptr noundef %14), !dbg !881
  %15 = load ptr, ptr %expected.addr, align 8, !dbg !882, !tbaa !294
  %arraydecay28 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !882
  %call29 = call i32 @__gmpz_cmp(ptr noundef %15, ptr noundef %arraydecay28) #10, !dbg !882
  %cmp30 = icmp eq i32 %call29, 0, !dbg !882
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !885

if.then32:                                        ; preds = %if.end26
  br label %if.end34, !dbg !885

if.else33:                                        ; preds = %if.end26
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 254, ptr noundef @__PRETTY_FUNCTION__.int_test_divexact) #11, !dbg !882
  unreachable, !dbg !882

if.end34:                                         ; preds = %if.then32
  %16 = load ptr, ptr %rhs.addr, align 8, !dbg !886, !tbaa !294
  %call35 = call i32 @__gmpz_fits_ulong_p(ptr noundef %16) #10, !dbg !886
  %tobool = icmp ne i32 %call35, 0, !dbg !886
  br i1 %tobool, label %if.then36, label %if.end64, !dbg !888

if.then36:                                        ; preds = %if.end34
  %17 = load ptr, ptr %rhs.addr, align 8, !dbg !889, !tbaa !294
  %call37 = call i64 @__gmpz_get_ui(ptr noundef %17) #10, !dbg !889
  store i64 %call37, ptr %rhsulong, align 8, !dbg !891, !tbaa !408
  %arraydecay38 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !892
  %18 = load ptr, ptr %lhs.addr, align 8, !dbg !892, !tbaa !294
  %19 = load i64, ptr %rhsulong, align 8, !dbg !892, !tbaa !408
  call void @__gmpz_divexact_ui(ptr noundef %arraydecay38, ptr noundef %18, i64 noundef %19), !dbg !892
  %20 = load ptr, ptr %expected.addr, align 8, !dbg !893, !tbaa !294
  %arraydecay39 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !893
  %call40 = call i32 @__gmpz_cmp(ptr noundef %20, ptr noundef %arraydecay39) #10, !dbg !893
  %cmp41 = icmp eq i32 %call40, 0, !dbg !893
  br i1 %cmp41, label %if.then43, label %if.else44, !dbg !896

if.then43:                                        ; preds = %if.then36
  br label %if.end45, !dbg !896

if.else44:                                        ; preds = %if.then36
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 260, ptr noundef @__PRETTY_FUNCTION__.int_test_divexact) #11, !dbg !893
  unreachable, !dbg !893

if.end45:                                         ; preds = %if.then43
  %arraydecay46 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !897
  %21 = load ptr, ptr %lhs.addr, align 8, !dbg !897, !tbaa !294
  %22 = load i64, ptr %rhsulong, align 8, !dbg !897, !tbaa !408
  %call47 = call i64 @__gmpz_fdiv_q_ui(ptr noundef %arraydecay46, ptr noundef %21, i64 noundef %22), !dbg !897
  %23 = load ptr, ptr %expected.addr, align 8, !dbg !898, !tbaa !294
  %arraydecay48 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !898
  %call49 = call i32 @__gmpz_cmp(ptr noundef %23, ptr noundef %arraydecay48) #10, !dbg !898
  %cmp50 = icmp eq i32 %call49, 0, !dbg !898
  br i1 %cmp50, label %if.then52, label %if.else53, !dbg !901

if.then52:                                        ; preds = %if.end45
  br label %if.end54, !dbg !901

if.else53:                                        ; preds = %if.end45
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 263, ptr noundef @__PRETTY_FUNCTION__.int_test_divexact) #11, !dbg !898
  unreachable, !dbg !898

if.end54:                                         ; preds = %if.then52
  %arraydecay55 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !902
  %24 = load ptr, ptr %lhs.addr, align 8, !dbg !902, !tbaa !294
  %25 = load i64, ptr %rhsulong, align 8, !dbg !902, !tbaa !408
  %call56 = call i64 @__gmpz_cdiv_q_ui(ptr noundef %arraydecay55, ptr noundef %24, i64 noundef %25), !dbg !902
  %26 = load ptr, ptr %expected.addr, align 8, !dbg !903, !tbaa !294
  %arraydecay57 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !903
  %call58 = call i32 @__gmpz_cmp(ptr noundef %26, ptr noundef %arraydecay57) #10, !dbg !903
  %cmp59 = icmp eq i32 %call58, 0, !dbg !903
  br i1 %cmp59, label %if.then61, label %if.else62, !dbg !906

if.then61:                                        ; preds = %if.end54
  br label %if.end63, !dbg !906

if.else62:                                        ; preds = %if.end54
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 266, ptr noundef @__PRETTY_FUNCTION__.int_test_divexact) #11, !dbg !903
  unreachable, !dbg !903

if.end63:                                         ; preds = %if.then61
  br label %if.end64, !dbg !907

if.end64:                                         ; preds = %if.end63, %if.end34
  %arraydecay65 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !908
  call void @__gmpz_clear(ptr noundef %arraydecay65), !dbg !908
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !909
  br label %cleanup, !dbg !909

cleanup:                                          ; preds = %if.end64, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhsulong) #9, !dbg !909
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !909
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !909

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @int_test_mul(ptr noundef %expected, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !910 {
entry:
  %expected.addr = alloca ptr, align 8
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %result = alloca [1 x %struct.__mpz_struct], align 16
  %rhsulong = alloca i64, align 8
  %rhsslong = alloca i64, align 8
  store ptr %expected, ptr %expected.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %expected.addr, metadata !912, metadata !DIExpression()), !dbg !922
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !913, metadata !DIExpression()), !dbg !923
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !914, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.start.p0(i64 16, ptr %result) #9, !dbg !925
  tail call void @llvm.dbg.declare(metadata ptr %result, metadata !915, metadata !DIExpression()), !dbg !926
  %arraydecay = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !927
  call void @__gmpz_init(ptr noundef %arraydecay), !dbg !927
  %arraydecay1 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !928
  %0 = load ptr, ptr %lhs.addr, align 8, !dbg !928, !tbaa !294
  %1 = load ptr, ptr %rhs.addr, align 8, !dbg !928, !tbaa !294
  call void @__gmpz_mul(ptr noundef %arraydecay1, ptr noundef %0, ptr noundef %1), !dbg !928
  %2 = load ptr, ptr %expected.addr, align 8, !dbg !929, !tbaa !294
  %arraydecay2 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !929
  %call = call i32 @__gmpz_cmp(ptr noundef %2, ptr noundef %arraydecay2) #10, !dbg !929
  %cmp = icmp eq i32 %call, 0, !dbg !929
  br i1 %cmp, label %if.then, label %if.else, !dbg !932

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !932

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 278, ptr noundef @__PRETTY_FUNCTION__.int_test_mul) #11, !dbg !929
  unreachable, !dbg !929

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %rhs.addr, align 8, !dbg !933, !tbaa !294
  %call3 = call i32 @__gmpz_fits_ulong_p(ptr noundef %3) #10, !dbg !933
  %tobool = icmp ne i32 %call3, 0, !dbg !933
  br i1 %tobool, label %if.then4, label %if.end13, !dbg !934

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhsulong) #9, !dbg !935
  tail call void @llvm.dbg.declare(metadata ptr %rhsulong, metadata !916, metadata !DIExpression()), !dbg !936
  %4 = load ptr, ptr %rhs.addr, align 8, !dbg !937, !tbaa !294
  %call5 = call i64 @__gmpz_get_ui(ptr noundef %4) #10, !dbg !937
  store i64 %call5, ptr %rhsulong, align 8, !dbg !936, !tbaa !408
  %arraydecay6 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !938
  %5 = load ptr, ptr %lhs.addr, align 8, !dbg !938, !tbaa !294
  %6 = load i64, ptr %rhsulong, align 8, !dbg !938, !tbaa !408
  call void @__gmpz_mul_ui(ptr noundef %arraydecay6, ptr noundef %5, i64 noundef %6), !dbg !938
  %7 = load ptr, ptr %expected.addr, align 8, !dbg !939, !tbaa !294
  %arraydecay7 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !939
  %call8 = call i32 @__gmpz_cmp(ptr noundef %7, ptr noundef %arraydecay7) #10, !dbg !939
  %cmp9 = icmp eq i32 %call8, 0, !dbg !939
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !942

if.then10:                                        ; preds = %if.then4
  br label %if.end12, !dbg !942

if.else11:                                        ; preds = %if.then4
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 284, ptr noundef @__PRETTY_FUNCTION__.int_test_mul) #11, !dbg !939
  unreachable, !dbg !939

if.end12:                                         ; preds = %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhsulong) #9, !dbg !943
  br label %if.end13, !dbg !944

if.end13:                                         ; preds = %if.end12, %if.end
  %8 = load ptr, ptr %rhs.addr, align 8, !dbg !945, !tbaa !294
  %call14 = call i32 @__gmpz_fits_slong_p(ptr noundef %8) #10, !dbg !945
  %tobool15 = icmp ne i32 %call14, 0, !dbg !945
  br i1 %tobool15, label %if.then16, label %if.end25, !dbg !946

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhsslong) #9, !dbg !947
  tail call void @llvm.dbg.declare(metadata ptr %rhsslong, metadata !919, metadata !DIExpression()), !dbg !948
  %9 = load ptr, ptr %rhs.addr, align 8, !dbg !949, !tbaa !294
  %call17 = call i64 @__gmpz_get_si(ptr noundef %9) #10, !dbg !949
  store i64 %call17, ptr %rhsslong, align 8, !dbg !948, !tbaa !408
  %arraydecay18 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !950
  %10 = load ptr, ptr %lhs.addr, align 8, !dbg !950, !tbaa !294
  %11 = load i64, ptr %rhsslong, align 8, !dbg !950, !tbaa !408
  call void @__gmpz_mul_si(ptr noundef %arraydecay18, ptr noundef %10, i64 noundef %11), !dbg !950
  %12 = load ptr, ptr %expected.addr, align 8, !dbg !951, !tbaa !294
  %arraydecay19 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !951
  %call20 = call i32 @__gmpz_cmp(ptr noundef %12, ptr noundef %arraydecay19) #10, !dbg !951
  %cmp21 = icmp eq i32 %call20, 0, !dbg !951
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !954

if.then22:                                        ; preds = %if.then16
  br label %if.end24, !dbg !954

if.else23:                                        ; preds = %if.then16
  call void @__assert_fail(ptr noundef @.str.53, ptr noundef @.str.51, i32 noundef 291, ptr noundef @__PRETTY_FUNCTION__.int_test_mul) #11, !dbg !951
  unreachable, !dbg !951

if.end24:                                         ; preds = %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhsslong) #9, !dbg !955
  br label %if.end25, !dbg !956

if.end25:                                         ; preds = %if.end24, %if.end13
  %arraydecay26 = getelementptr inbounds [1 x %struct.__mpz_struct], ptr %result, i64 0, i64 0, !dbg !957
  call void @__gmpz_clear(ptr noundef %arraydecay26), !dbg !957
  call void @llvm.lifetime.end.p0(i64 16, ptr %result) #9, !dbg !958
  ret void, !dbg !958
}

declare !dbg !959 void @__gmpz_divexact(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !960 void @__gmpz_tdiv_q(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !961 void @__gmpz_fdiv_q(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !962 void @__gmpz_cdiv_q(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i32 @__gmpz_fits_ulong_p(ptr noundef %__gmp_z) #6 !dbg !963 {
entry:
  %__gmp_z.addr = alloca ptr, align 8
  %__gmp_n = alloca i64, align 8
  %__gmp_p = alloca ptr, align 8
  store ptr %__gmp_z, ptr %__gmp_z.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_z.addr, metadata !967, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gmp_n) #9, !dbg !974
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_n, metadata !968, metadata !DIExpression()), !dbg !974
  %0 = load ptr, ptr %__gmp_z.addr, align 8, !dbg !974, !tbaa !294
  %_mp_size = getelementptr inbounds %struct.__mpz_struct, ptr %0, i32 0, i32 1, !dbg !974
  %1 = load i32, ptr %_mp_size, align 4, !dbg !974, !tbaa !561
  %conv = sext i32 %1 to i64, !dbg !974
  store i64 %conv, ptr %__gmp_n, align 8, !dbg !974, !tbaa !408
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gmp_p) #9, !dbg !974
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_p, metadata !971, metadata !DIExpression()), !dbg !974
  %2 = load ptr, ptr %__gmp_z.addr, align 8, !dbg !974, !tbaa !294
  %_mp_d = getelementptr inbounds %struct.__mpz_struct, ptr %2, i32 0, i32 2, !dbg !974
  %3 = load ptr, ptr %_mp_d, align 8, !dbg !974, !tbaa !975
  store ptr %3, ptr %__gmp_p, align 8, !dbg !974, !tbaa !294
  %4 = load i64, ptr %__gmp_n, align 8, !dbg !974, !tbaa !408
  %cmp = icmp eq i64 %4, 0, !dbg !974
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !974

lor.rhs:                                          ; preds = %entry
  %5 = load i64, ptr %__gmp_n, align 8, !dbg !974, !tbaa !408
  %cmp2 = icmp eq i64 %5, 1, !dbg !974
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !974

land.rhs:                                         ; preds = %lor.rhs
  %6 = load ptr, ptr %__gmp_p, align 8, !dbg !974, !tbaa !294
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 0, !dbg !974
  %7 = load i64, ptr %arrayidx, align 8, !dbg !974, !tbaa !408
  %cmp4 = icmp ule i64 %7, -1, !dbg !974
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %8 = phi i1 [ false, %lor.rhs ], [ %cmp4, %land.rhs ], !dbg !976
  br label %lor.end, !dbg !974

lor.end:                                          ; preds = %land.end, %entry
  %9 = phi i1 [ true, %entry ], [ %8, %land.end ]
  %lor.ext = zext i1 %9 to i32, !dbg !974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gmp_p) #9, !dbg !977
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gmp_n) #9, !dbg !977
  ret i32 %lor.ext, !dbg !974
}

; Function Attrs: inlinehint nounwind willreturn memory(read) uwtable
define available_externally i64 @__gmpz_get_ui(ptr noundef %__gmp_z) #6 !dbg !978 {
entry:
  %__gmp_z.addr = alloca ptr, align 8
  %__gmp_p = alloca ptr, align 8
  %__gmp_n = alloca i64, align 8
  %__gmp_l = alloca i64, align 8
  store ptr %__gmp_z, ptr %__gmp_z.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_z.addr, metadata !982, metadata !DIExpression()), !dbg !986
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gmp_p) #9, !dbg !987
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_p, metadata !983, metadata !DIExpression()), !dbg !988
  %0 = load ptr, ptr %__gmp_z.addr, align 8, !dbg !989, !tbaa !294
  %_mp_d = getelementptr inbounds %struct.__mpz_struct, ptr %0, i32 0, i32 2, !dbg !990
  %1 = load ptr, ptr %_mp_d, align 8, !dbg !990, !tbaa !975
  store ptr %1, ptr %__gmp_p, align 8, !dbg !988, !tbaa !294
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gmp_n) #9, !dbg !991
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_n, metadata !984, metadata !DIExpression()), !dbg !992
  %2 = load ptr, ptr %__gmp_z.addr, align 8, !dbg !993, !tbaa !294
  %_mp_size = getelementptr inbounds %struct.__mpz_struct, ptr %2, i32 0, i32 1, !dbg !994
  %3 = load i32, ptr %_mp_size, align 4, !dbg !994, !tbaa !561
  %conv = sext i32 %3 to i64, !dbg !993
  store i64 %conv, ptr %__gmp_n, align 8, !dbg !992, !tbaa !408
  call void @llvm.lifetime.start.p0(i64 8, ptr %__gmp_l) #9, !dbg !995
  tail call void @llvm.dbg.declare(metadata ptr %__gmp_l, metadata !985, metadata !DIExpression()), !dbg !996
  %4 = load ptr, ptr %__gmp_p, align 8, !dbg !997, !tbaa !294
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 0, !dbg !997
  %5 = load i64, ptr %arrayidx, align 8, !dbg !997, !tbaa !408
  store i64 %5, ptr %__gmp_l, align 8, !dbg !996, !tbaa !408
  %6 = load i64, ptr %__gmp_n, align 8, !dbg !998, !tbaa !408
  %cmp = icmp ne i64 %6, 0, !dbg !999
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !998

cond.true:                                        ; preds = %entry
  %7 = load i64, ptr %__gmp_l, align 8, !dbg !1000, !tbaa !408
  br label %cond.end, !dbg !998

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !998

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ 0, %cond.false ], !dbg !998
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gmp_l) #9, !dbg !1001
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gmp_n) #9, !dbg !1001
  call void @llvm.lifetime.end.p0(i64 8, ptr %__gmp_p) #9, !dbg !1001
  ret i64 %cond, !dbg !1002
}

declare !dbg !1003 void @__gmpz_divexact_ui(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1006 i64 @__gmpz_fdiv_q_ui(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1009 i64 @__gmpz_cdiv_q_ui(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1010 void @__gmpz_mul(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1011 void @__gmpz_mul_ui(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1012 i32 @__gmpz_fits_slong_p(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1013 i64 @__gmpz_get_si(ptr noundef) #4

declare !dbg !1016 void @__gmpz_mul_si(ptr noundef, ptr noundef, i64 noundef) #2

declare !dbg !1019 void @__gmpz_fdiv_r(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1020 void @__gmpz_gcd(ptr noundef, ptr noundef, ptr noundef) #2

declare !dbg !1021 void @__gmpz_lcm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal void @int_test_cmp(i32 noundef %exp, ptr noundef %lhs, ptr noundef %rhs) #0 !dbg !1022 {
entry:
  %exp.addr = alloca i32, align 4
  %lhs.addr = alloca ptr, align 8
  %rhs.addr = alloca ptr, align 8
  %rhslong = alloca i64, align 8
  store i32 %exp, ptr %exp.addr, align 4, !tbaa !554
  tail call void @llvm.dbg.declare(metadata ptr %exp.addr, metadata !1026, metadata !DIExpression()), !dbg !1030
  store ptr %lhs, ptr %lhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %lhs.addr, metadata !1027, metadata !DIExpression()), !dbg !1031
  store ptr %rhs, ptr %rhs.addr, align 8, !tbaa !294
  tail call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !1028, metadata !DIExpression()), !dbg !1032
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhslong) #9, !dbg !1033
  tail call void @llvm.dbg.declare(metadata ptr %rhslong, metadata !1029, metadata !DIExpression()), !dbg !1034
  %0 = load i32, ptr %exp.addr, align 4, !dbg !1035, !tbaa !554
  %1 = load ptr, ptr %lhs.addr, align 8, !dbg !1035, !tbaa !294
  %2 = load ptr, ptr %rhs.addr, align 8, !dbg !1035, !tbaa !294
  %call = call i32 @__gmpz_cmp(ptr noundef %1, ptr noundef %2) #10, !dbg !1035
  %call1 = call i32 @sgn(i32 noundef %call), !dbg !1035
  %cmp = icmp eq i32 %0, %call1, !dbg !1035
  br i1 %cmp, label %if.then, label %if.else, !dbg !1038

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1038

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.55, ptr noundef @.str.51, i32 noundef 444, ptr noundef @__PRETTY_FUNCTION__.int_test_cmp) #11, !dbg !1035
  unreachable, !dbg !1035

if.end:                                           ; preds = %if.then
  %3 = load ptr, ptr %rhs.addr, align 8, !dbg !1039, !tbaa !294
  %call2 = call i32 @__gmpz_fits_slong_p(ptr noundef %3) #10, !dbg !1039
  %tobool = icmp ne i32 %call2, 0, !dbg !1039
  br i1 %tobool, label %if.then3, label %if.end32, !dbg !1041

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %rhs.addr, align 8, !dbg !1042, !tbaa !294
  %call4 = call i64 @__gmpz_get_si(ptr noundef %4) #10, !dbg !1042
  store i64 %call4, ptr %rhslong, align 8, !dbg !1044, !tbaa !408
  %5 = load i32, ptr %exp.addr, align 4, !dbg !1045, !tbaa !554
  %6 = load i64, ptr %rhslong, align 8, !dbg !1045, !tbaa !408
  %cmp5 = icmp sge i64 %6, 0, !dbg !1045
  %conv = zext i1 %cmp5 to i32, !dbg !1045
  %7 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1045
  br i1 %7, label %land.lhs.true, label %cond.false22, !dbg !1045

land.lhs.true:                                    ; preds = %if.then3
  %8 = load i64, ptr %rhslong, align 8, !dbg !1045, !tbaa !408
  %cmp6 = icmp sge i64 %8, 0, !dbg !1045
  br i1 %cmp6, label %cond.true, label %cond.false22, !dbg !1045

cond.true:                                        ; preds = %land.lhs.true
  %9 = load i64, ptr %rhslong, align 8, !dbg !1045, !tbaa !408
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !1045
  br i1 %10, label %land.lhs.true8, label %cond.false18, !dbg !1045

land.lhs.true8:                                   ; preds = %cond.true
  %11 = load i64, ptr %rhslong, align 8, !dbg !1045, !tbaa !408
  %cmp9 = icmp eq i64 %11, 0, !dbg !1045
  br i1 %cmp9, label %cond.true11, label %cond.false18, !dbg !1045

cond.true11:                                      ; preds = %land.lhs.true8
  %12 = load ptr, ptr %lhs.addr, align 8, !dbg !1045, !tbaa !294
  %_mp_size = getelementptr inbounds %struct.__mpz_struct, ptr %12, i32 0, i32 1, !dbg !1045
  %13 = load i32, ptr %_mp_size, align 4, !dbg !1045, !tbaa !561
  %cmp12 = icmp slt i32 %13, 0, !dbg !1045
  br i1 %cmp12, label %cond.true14, label %cond.false, !dbg !1045

cond.true14:                                      ; preds = %cond.true11
  br label %cond.end, !dbg !1045

cond.false:                                       ; preds = %cond.true11
  %14 = load ptr, ptr %lhs.addr, align 8, !dbg !1045, !tbaa !294
  %_mp_size15 = getelementptr inbounds %struct.__mpz_struct, ptr %14, i32 0, i32 1, !dbg !1045
  %15 = load i32, ptr %_mp_size15, align 4, !dbg !1045, !tbaa !561
  %cmp16 = icmp sgt i32 %15, 0, !dbg !1045
  %conv17 = zext i1 %cmp16 to i32, !dbg !1045
  br label %cond.end, !dbg !1045

cond.end:                                         ; preds = %cond.false, %cond.true14
  %cond = phi i32 [ -1, %cond.true14 ], [ %conv17, %cond.false ], !dbg !1045
  br label %cond.end20, !dbg !1045

cond.false18:                                     ; preds = %land.lhs.true8, %cond.true
  %16 = load ptr, ptr %lhs.addr, align 8, !dbg !1045, !tbaa !294
  %17 = load i64, ptr %rhslong, align 8, !dbg !1045, !tbaa !408
  %call19 = call i32 @__gmpz_cmp_ui(ptr noundef %16, i64 noundef %17) #10, !dbg !1045
  br label %cond.end20, !dbg !1045

cond.end20:                                       ; preds = %cond.false18, %cond.end
  %cond21 = phi i32 [ %cond, %cond.end ], [ %call19, %cond.false18 ], !dbg !1045
  br label %cond.end24, !dbg !1045

cond.false22:                                     ; preds = %land.lhs.true, %if.then3
  %18 = load ptr, ptr %lhs.addr, align 8, !dbg !1045, !tbaa !294
  %19 = load i64, ptr %rhslong, align 8, !dbg !1045, !tbaa !408
  %call23 = call i32 @__gmpz_cmp_si(ptr noundef %18, i64 noundef %19) #10, !dbg !1045
  br label %cond.end24, !dbg !1045

cond.end24:                                       ; preds = %cond.false22, %cond.end20
  %cond25 = phi i32 [ %cond21, %cond.end20 ], [ %call23, %cond.false22 ], !dbg !1045
  %call26 = call i32 @sgn(i32 noundef %cond25), !dbg !1045
  %cmp27 = icmp eq i32 %5, %call26, !dbg !1045
  br i1 %cmp27, label %if.then29, label %if.else30, !dbg !1048

if.then29:                                        ; preds = %cond.end24
  br label %if.end31, !dbg !1048

if.else30:                                        ; preds = %cond.end24
  call void @__assert_fail(ptr noundef @.str.56, ptr noundef @.str.51, i32 noundef 448, ptr noundef @__PRETTY_FUNCTION__.int_test_cmp) #11, !dbg !1045
  unreachable, !dbg !1045

if.end31:                                         ; preds = %if.then29
  br label %if.end32, !dbg !1049

if.end32:                                         ; preds = %if.end31, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhslong) #9, !dbg !1050
  ret void, !dbg !1050
}

; Function Attrs: nounwind uwtable
define internal i32 @sgn(i32 noundef %val) #0 !dbg !1051 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4, !tbaa !554
  tail call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1055, metadata !DIExpression()), !dbg !1056
  %0 = load i32, ptr %val.addr, align 4, !dbg !1057, !tbaa !554
  %cmp = icmp sgt i32 %0, 0, !dbg !1059
  br i1 %cmp, label %if.then, label %if.end, !dbg !1060

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1061
  br label %return, !dbg !1061

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %val.addr, align 4, !dbg !1062, !tbaa !554
  %cmp1 = icmp slt i32 %1, 0, !dbg !1064
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1065

if.then2:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1066
  br label %return, !dbg !1066

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1067
  br label %return, !dbg !1067

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1068
  ret i32 %2, !dbg !1068
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1069 i32 @__gmpz_cmp_ui(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1072 i32 @__gmpz_cmp_si(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1075 i32 @__gmpz_cmpabs(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare !dbg !1076 i32 @__gmpz_divisible_p(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @int_test_single_value() #0 !dbg !1077 {
entry:
  ret void, !dbg !1080
}

declare !dbg !1081 i32 @__gmpz_set_str(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!44}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281}
!llvm.ident = !{!282}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "isl_test_int.c", directory: "/local-ssd/isl-uiyn6db4abuow3u22saacck3ctctgnke-build/aidengro/spack-stage-isl-0.25-uiyn6db4abuow3u22saacck3ctctgnke/spack-src", checksumkind: CSK_MD5, checksum: "d81aec4d9b40bd4d0243b2aa836e1f8f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 2)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 3)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 12)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 220, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 11)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 221, type: !16, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 221, type: !21, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 21)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 20)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !30, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !35, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "int_unary_tests", scope: !44, file: !2, line: 217, type: !265, isLocal: false, isDefinition: true)
!44 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !45, globals: !47, splitDebugInlining: false, nameTableKind: None)
!45 = !{!46}
!46 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!47 = !{!0, !7, !12, !14, !19, !24, !26, !28, !33, !38, !40, !42, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !71, !73, !78, !80, !82, !84, !86, !91, !96, !98, !100, !102, !104, !109, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !170, !175, !180, !186, !191, !193, !195, !200, !202, !207, !209, !214, !219, !221, !223, !225, !227, !232, !234, !239, !244, !246, !251, !256, !258, !260}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !3, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !9, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !21, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !21, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 502, type: !16, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !3, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 511, type: !3, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 512, type: !9, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 512, type: !9, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 6)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !68, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 517, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 7)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 520, type: !35, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 522, type: !30, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 525, type: !35, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 527, type: !30, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 533, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 39)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !2, line: 535, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 40)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 538, type: !88, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !93, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 547, type: !93, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 548, type: !30, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 41)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 550, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 22)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 552, type: !93, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 553, type: !30, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 554, type: !106, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 557, type: !111, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 578, type: !16, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 587, type: !3, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 595, type: !3, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 596, type: !9, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 597, type: !9, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !16, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 600, type: !21, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 602, type: !30, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 604, type: !30, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 618, type: !3, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !2, line: 624, type: !30, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "int_binary_tests", scope: !44, file: !2, line: 494, type: !146, isLocal: false, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 27904, elements: !168)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 491, size: 256, elements: !148)
!148 = !{!149, !164, !166, !167}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !147, file: !2, line: 492, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153, !153, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mpz_struct", file: !155, line: 158, baseType: !156)
!155 = !DIFile(filename: "spack-installs/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_path_placeholder__/__spack_pat/linux-ubuntu22.04-zen2/clang-18.0.0/gmp-6.2.1-bkulrv5mk56ec3nvzk4dfdg5lsha4xnf/include/gmp.h", directory: "/local-ssd/isl-uiyn6db4abuow3u22saacck3ctctgnke-build", checksumkind: CSK_MD5, checksum: "3c34d5a11f22e57f3c838223aee5b7bc")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 150, size: 128, elements: !157)
!157 = !{!158, !160, !161}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_alloc", scope: !156, file: !155, line: 152, baseType: !159, size: 32)
!159 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_size", scope: !156, file: !155, line: 154, baseType: !159, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_mp_d", scope: !156, file: !155, line: 157, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_limb_t", file: !155, line: 141, baseType: !46)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "expected", scope: !147, file: !2, line: 493, baseType: !165, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !147, file: !2, line: 493, baseType: !165, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !147, file: !2, line: 493, baseType: !165, size: 64, offset: 192)
!168 = !{!169}
!169 = !DISubrange(count: 109)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 29)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 15)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 400, elements: !184)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!184 = !{!185}
!185 = !DISubrange(count: 50)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 24)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !182, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !172, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 326, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 528, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 66)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !197, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 568, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 71)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !197, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 350, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 536, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 67)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 552, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 69)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !211, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 387, type: !211, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !197, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 423, type: !197, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 25)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !211, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 444, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 34)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 444, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 440, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 55)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 448, type: !106, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 476, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 38)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 476, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 560, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 70)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !88, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !106, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 576, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 72)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2496, elements: !274)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 214, size: 192, elements: !267)
!267 = !{!268, !272, !273}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !266, file: !2, line: 215, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !153, !153}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "expected", scope: !266, file: !2, line: 216, baseType: !165, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !266, file: !2, line: 216, baseType: !165, size: 64, offset: 128)
!274 = !{!275}
!275 = !DISubrange(count: 13)
!276 = !{i32 7, !"Dwarf Version", i32 5}
!277 = !{i32 2, !"Debug Info Version", i32 3}
!278 = !{i32 1, !"wchar_size", i32 4}
!279 = !{i32 8, !"PIC Level", i32 2}
!280 = !{i32 7, !"PIE Level", i32 2}
!281 = !{i32 7, !"uwtable", i32 2}
!282 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!283 = distinct !DISubprogram(name: "int_test_neg", scope: !2, file: !2, line: 189, type: !270, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !284)
!284 = !{!285, !286, !287}
!285 = !DILocalVariable(name: "expected", arg: 1, scope: !283, file: !2, line: 189, type: !153)
!286 = !DILocalVariable(name: "arg", arg: 2, scope: !283, file: !2, line: 189, type: !153)
!287 = !DILocalVariable(name: "result", scope: !283, file: !2, line: 191, type: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "isl_int", file: !289, line: 9, baseType: !290)
!289 = !DIFile(filename: "./isl_int_gmp.h", directory: "/local-ssd/isl-uiyn6db4abuow3u22saacck3ctctgnke-build/aidengro/spack-stage-isl-0.25-uiyn6db4abuow3u22saacck3ctctgnke/spack-src", checksumkind: CSK_MD5, checksum: "d856b9a4c7a6cc27fc0d294f207b810d")
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_t", file: !155, line: 164, baseType: !291)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 1)
!294 = !{!295, !295, i64 0}
!295 = !{!"any pointer", !296, i64 0}
!296 = !{!"omnipotent char", !297, i64 0}
!297 = !{!"Simple C/C++ TBAA"}
!298 = !DILocation(line: 189, column: 34, scope: !283)
!299 = !DILocation(line: 189, column: 52, scope: !283)
!300 = !DILocation(line: 191, column: 2, scope: !283)
!301 = !DILocation(line: 191, column: 10, scope: !283)
!302 = !DILocation(line: 192, column: 2, scope: !283)
!303 = !DILocation(line: 194, column: 2, scope: !283)
!304 = !DILocation(line: 195, column: 2, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 195, column: 2)
!306 = distinct !DILexicalBlock(scope: !283, file: !2, line: 195, column: 2)
!307 = !DILocation(line: 195, column: 2, scope: !306)
!308 = !DILocation(line: 197, column: 2, scope: !283)
!309 = !DILocation(line: 198, column: 2, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 198, column: 2)
!311 = distinct !DILexicalBlock(scope: !283, file: !2, line: 198, column: 2)
!312 = !DILocation(line: 198, column: 2, scope: !311)
!313 = !DILocation(line: 200, column: 2, scope: !283)
!314 = !DILocation(line: 201, column: 1, scope: !283)
!315 = distinct !DISubprogram(name: "int_test_abs", scope: !2, file: !2, line: 203, type: !270, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !316)
!316 = !{!317, !318, !319}
!317 = !DILocalVariable(name: "expected", arg: 1, scope: !315, file: !2, line: 203, type: !153)
!318 = !DILocalVariable(name: "arg", arg: 2, scope: !315, file: !2, line: 203, type: !153)
!319 = !DILocalVariable(name: "result", scope: !315, file: !2, line: 205, type: !288)
!320 = !DILocation(line: 203, column: 34, scope: !315)
!321 = !DILocation(line: 203, column: 52, scope: !315)
!322 = !DILocation(line: 205, column: 2, scope: !315)
!323 = !DILocation(line: 205, column: 10, scope: !315)
!324 = !DILocation(line: 206, column: 2, scope: !315)
!325 = !DILocation(line: 208, column: 2, scope: !315)
!326 = !DILocation(line: 209, column: 2, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 209, column: 2)
!328 = distinct !DILexicalBlock(scope: !315, file: !2, line: 209, column: 2)
!329 = !DILocation(line: 209, column: 2, scope: !328)
!330 = !DILocation(line: 211, column: 2, scope: !315)
!331 = !DILocation(line: 212, column: 1, scope: !315)
!332 = distinct !DISubprogram(name: "int_test_sum", scope: !2, file: !2, line: 334, type: !151, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !333)
!333 = !{!334, !335, !336}
!334 = !DILocalVariable(name: "sum", arg: 1, scope: !332, file: !2, line: 334, type: !153)
!335 = !DILocalVariable(name: "term1", arg: 2, scope: !332, file: !2, line: 334, type: !153)
!336 = !DILocalVariable(name: "term2", arg: 3, scope: !332, file: !2, line: 334, type: !153)
!337 = !DILocation(line: 334, column: 34, scope: !332)
!338 = !DILocation(line: 334, column: 47, scope: !332)
!339 = !DILocation(line: 334, column: 62, scope: !332)
!340 = !DILocation(line: 336, column: 15, scope: !332)
!341 = !DILocation(line: 336, column: 22, scope: !332)
!342 = !DILocation(line: 336, column: 27, scope: !332)
!343 = !DILocation(line: 336, column: 2, scope: !332)
!344 = !DILocation(line: 337, column: 15, scope: !332)
!345 = !DILocation(line: 337, column: 22, scope: !332)
!346 = !DILocation(line: 337, column: 27, scope: !332)
!347 = !DILocation(line: 337, column: 2, scope: !332)
!348 = !DILocation(line: 339, column: 15, scope: !332)
!349 = !DILocation(line: 339, column: 20, scope: !332)
!350 = !DILocation(line: 339, column: 27, scope: !332)
!351 = !DILocation(line: 339, column: 2, scope: !332)
!352 = !DILocation(line: 340, column: 15, scope: !332)
!353 = !DILocation(line: 340, column: 20, scope: !332)
!354 = !DILocation(line: 340, column: 27, scope: !332)
!355 = !DILocation(line: 340, column: 2, scope: !332)
!356 = !DILocation(line: 341, column: 1, scope: !332)
!357 = distinct !DISubprogram(name: "int_test_product", scope: !2, file: !2, line: 300, type: !151, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !358)
!358 = !{!359, !360, !361}
!359 = !DILocalVariable(name: "product", arg: 1, scope: !357, file: !2, line: 300, type: !153)
!360 = !DILocalVariable(name: "factor1", arg: 2, scope: !357, file: !2, line: 300, type: !153)
!361 = !DILocalVariable(name: "factor2", arg: 3, scope: !357, file: !2, line: 300, type: !153)
!362 = !DILocation(line: 300, column: 38, scope: !357)
!363 = !DILocation(line: 300, column: 55, scope: !357)
!364 = !DILocation(line: 300, column: 72, scope: !357)
!365 = !DILocation(line: 302, column: 20, scope: !357)
!366 = !DILocation(line: 302, column: 29, scope: !357)
!367 = !DILocation(line: 302, column: 38, scope: !357)
!368 = !DILocation(line: 302, column: 2, scope: !357)
!369 = !DILocation(line: 303, column: 20, scope: !357)
!370 = !DILocation(line: 303, column: 29, scope: !357)
!371 = !DILocation(line: 303, column: 38, scope: !357)
!372 = !DILocation(line: 303, column: 2, scope: !357)
!373 = !DILocation(line: 305, column: 15, scope: !357)
!374 = !DILocation(line: 305, column: 24, scope: !357)
!375 = !DILocation(line: 305, column: 33, scope: !357)
!376 = !DILocation(line: 305, column: 2, scope: !357)
!377 = !DILocation(line: 306, column: 15, scope: !357)
!378 = !DILocation(line: 306, column: 24, scope: !357)
!379 = !DILocation(line: 306, column: 33, scope: !357)
!380 = !DILocation(line: 306, column: 2, scope: !357)
!381 = !DILocation(line: 307, column: 1, scope: !357)
!382 = distinct !DISubprogram(name: "int_test_fdiv", scope: !2, file: !2, line: 343, type: !151, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !383)
!383 = !{!384, !385, !386, !387, !388}
!384 = !DILocalVariable(name: "expected", arg: 1, scope: !382, file: !2, line: 343, type: !153)
!385 = !DILocalVariable(name: "lhs", arg: 2, scope: !382, file: !2, line: 343, type: !153)
!386 = !DILocalVariable(name: "rhs", arg: 3, scope: !382, file: !2, line: 343, type: !153)
!387 = !DILocalVariable(name: "rhsulong", scope: !382, file: !2, line: 345, type: !46)
!388 = !DILocalVariable(name: "result", scope: !382, file: !2, line: 346, type: !288)
!389 = !DILocation(line: 343, column: 35, scope: !382)
!390 = !DILocation(line: 343, column: 53, scope: !382)
!391 = !DILocation(line: 343, column: 66, scope: !382)
!392 = !DILocation(line: 345, column: 2, scope: !382)
!393 = !DILocation(line: 345, column: 16, scope: !382)
!394 = !DILocation(line: 346, column: 2, scope: !382)
!395 = !DILocation(line: 346, column: 10, scope: !382)
!396 = !DILocation(line: 347, column: 2, scope: !382)
!397 = !DILocation(line: 349, column: 2, scope: !382)
!398 = !DILocation(line: 350, column: 2, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 350, column: 2)
!400 = distinct !DILexicalBlock(scope: !382, file: !2, line: 350, column: 2)
!401 = !DILocation(line: 350, column: 2, scope: !400)
!402 = !DILocation(line: 352, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !382, file: !2, line: 352, column: 6)
!404 = !DILocation(line: 352, column: 6, scope: !382)
!405 = !DILocation(line: 353, column: 14, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !2, line: 352, column: 31)
!407 = !DILocation(line: 353, column: 12, scope: !406)
!408 = !{!409, !409, i64 0}
!409 = !{!"long", !296, i64 0}
!410 = !DILocation(line: 355, column: 3, scope: !406)
!411 = !DILocation(line: 356, column: 3, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 356, column: 3)
!413 = distinct !DILexicalBlock(scope: !406, file: !2, line: 356, column: 3)
!414 = !DILocation(line: 356, column: 3, scope: !413)
!415 = !DILocation(line: 357, column: 2, scope: !406)
!416 = !DILocation(line: 359, column: 2, scope: !382)
!417 = !DILocation(line: 360, column: 1, scope: !382)
!418 = distinct !DISubprogram(name: "int_test_fdiv_r", scope: !2, file: !2, line: 392, type: !151, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !419)
!419 = !{!420, !421, !422, !423}
!420 = !DILocalVariable(name: "expected", arg: 1, scope: !418, file: !2, line: 392, type: !153)
!421 = !DILocalVariable(name: "lhs", arg: 2, scope: !418, file: !2, line: 392, type: !153)
!422 = !DILocalVariable(name: "rhs", arg: 3, scope: !418, file: !2, line: 392, type: !153)
!423 = !DILocalVariable(name: "result", scope: !418, file: !2, line: 394, type: !288)
!424 = !DILocation(line: 392, column: 37, scope: !418)
!425 = !DILocation(line: 392, column: 55, scope: !418)
!426 = !DILocation(line: 392, column: 68, scope: !418)
!427 = !DILocation(line: 394, column: 2, scope: !418)
!428 = !DILocation(line: 394, column: 10, scope: !418)
!429 = !DILocation(line: 395, column: 2, scope: !418)
!430 = !DILocation(line: 397, column: 2, scope: !418)
!431 = !DILocation(line: 398, column: 2, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 398, column: 2)
!433 = distinct !DILexicalBlock(scope: !418, file: !2, line: 398, column: 2)
!434 = !DILocation(line: 398, column: 2, scope: !433)
!435 = !DILocation(line: 400, column: 2, scope: !418)
!436 = !DILocation(line: 401, column: 1, scope: !418)
!437 = distinct !DISubprogram(name: "int_test_cdiv", scope: !2, file: !2, line: 362, type: !151, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !438)
!438 = !{!439, !440, !441, !442, !443}
!439 = !DILocalVariable(name: "expected", arg: 1, scope: !437, file: !2, line: 362, type: !153)
!440 = !DILocalVariable(name: "lhs", arg: 2, scope: !437, file: !2, line: 362, type: !153)
!441 = !DILocalVariable(name: "rhs", arg: 3, scope: !437, file: !2, line: 362, type: !153)
!442 = !DILocalVariable(name: "rhsulong", scope: !437, file: !2, line: 364, type: !46)
!443 = !DILocalVariable(name: "result", scope: !437, file: !2, line: 365, type: !288)
!444 = !DILocation(line: 362, column: 35, scope: !437)
!445 = !DILocation(line: 362, column: 53, scope: !437)
!446 = !DILocation(line: 362, column: 66, scope: !437)
!447 = !DILocation(line: 364, column: 2, scope: !437)
!448 = !DILocation(line: 364, column: 16, scope: !437)
!449 = !DILocation(line: 365, column: 2, scope: !437)
!450 = !DILocation(line: 365, column: 10, scope: !437)
!451 = !DILocation(line: 366, column: 2, scope: !437)
!452 = !DILocation(line: 368, column: 2, scope: !437)
!453 = !DILocation(line: 369, column: 2, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 369, column: 2)
!455 = distinct !DILexicalBlock(scope: !437, file: !2, line: 369, column: 2)
!456 = !DILocation(line: 369, column: 2, scope: !455)
!457 = !DILocation(line: 371, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !437, file: !2, line: 371, column: 6)
!459 = !DILocation(line: 371, column: 6, scope: !437)
!460 = !DILocation(line: 372, column: 14, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !2, line: 371, column: 31)
!462 = !DILocation(line: 372, column: 12, scope: !461)
!463 = !DILocation(line: 374, column: 3, scope: !461)
!464 = !DILocation(line: 375, column: 3, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 375, column: 3)
!466 = distinct !DILexicalBlock(scope: !461, file: !2, line: 375, column: 3)
!467 = !DILocation(line: 375, column: 3, scope: !466)
!468 = !DILocation(line: 376, column: 2, scope: !461)
!469 = !DILocation(line: 378, column: 2, scope: !437)
!470 = !DILocation(line: 379, column: 1, scope: !437)
!471 = distinct !DISubprogram(name: "int_test_tdiv", scope: !2, file: !2, line: 381, type: !151, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !472)
!472 = !{!473, !474, !475, !476}
!473 = !DILocalVariable(name: "expected", arg: 1, scope: !471, file: !2, line: 381, type: !153)
!474 = !DILocalVariable(name: "lhs", arg: 2, scope: !471, file: !2, line: 381, type: !153)
!475 = !DILocalVariable(name: "rhs", arg: 3, scope: !471, file: !2, line: 381, type: !153)
!476 = !DILocalVariable(name: "result", scope: !471, file: !2, line: 383, type: !288)
!477 = !DILocation(line: 381, column: 35, scope: !471)
!478 = !DILocation(line: 381, column: 53, scope: !471)
!479 = !DILocation(line: 381, column: 66, scope: !471)
!480 = !DILocation(line: 383, column: 2, scope: !471)
!481 = !DILocation(line: 383, column: 10, scope: !471)
!482 = !DILocation(line: 384, column: 2, scope: !471)
!483 = !DILocation(line: 386, column: 2, scope: !471)
!484 = !DILocation(line: 387, column: 2, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !2, line: 387, column: 2)
!486 = distinct !DILexicalBlock(scope: !471, file: !2, line: 387, column: 2)
!487 = !DILocation(line: 387, column: 2, scope: !486)
!488 = !DILocation(line: 389, column: 2, scope: !471)
!489 = !DILocation(line: 390, column: 1, scope: !471)
!490 = distinct !DISubprogram(name: "int_test_gcd", scope: !2, file: !2, line: 403, type: !151, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !491)
!491 = !{!492, !493, !494, !495}
!492 = !DILocalVariable(name: "expected", arg: 1, scope: !490, file: !2, line: 403, type: !153)
!493 = !DILocalVariable(name: "lhs", arg: 2, scope: !490, file: !2, line: 403, type: !153)
!494 = !DILocalVariable(name: "rhs", arg: 3, scope: !490, file: !2, line: 403, type: !153)
!495 = !DILocalVariable(name: "result", scope: !490, file: !2, line: 405, type: !288)
!496 = !DILocation(line: 403, column: 34, scope: !490)
!497 = !DILocation(line: 403, column: 52, scope: !490)
!498 = !DILocation(line: 403, column: 65, scope: !490)
!499 = !DILocation(line: 405, column: 2, scope: !490)
!500 = !DILocation(line: 405, column: 10, scope: !490)
!501 = !DILocation(line: 406, column: 2, scope: !490)
!502 = !DILocation(line: 408, column: 2, scope: !490)
!503 = !DILocation(line: 409, column: 2, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !2, line: 409, column: 2)
!505 = distinct !DILexicalBlock(scope: !490, file: !2, line: 409, column: 2)
!506 = !DILocation(line: 409, column: 2, scope: !505)
!507 = !DILocation(line: 411, column: 2, scope: !490)
!508 = !DILocation(line: 412, column: 2, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !2, line: 412, column: 2)
!510 = distinct !DILexicalBlock(scope: !490, file: !2, line: 412, column: 2)
!511 = !DILocation(line: 412, column: 2, scope: !510)
!512 = !DILocation(line: 414, column: 2, scope: !490)
!513 = !DILocation(line: 415, column: 1, scope: !490)
!514 = distinct !DISubprogram(name: "int_test_lcm", scope: !2, file: !2, line: 417, type: !151, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !515)
!515 = !{!516, !517, !518, !519}
!516 = !DILocalVariable(name: "expected", arg: 1, scope: !514, file: !2, line: 417, type: !153)
!517 = !DILocalVariable(name: "lhs", arg: 2, scope: !514, file: !2, line: 417, type: !153)
!518 = !DILocalVariable(name: "rhs", arg: 3, scope: !514, file: !2, line: 417, type: !153)
!519 = !DILocalVariable(name: "result", scope: !514, file: !2, line: 419, type: !288)
!520 = !DILocation(line: 417, column: 34, scope: !514)
!521 = !DILocation(line: 417, column: 52, scope: !514)
!522 = !DILocation(line: 417, column: 65, scope: !514)
!523 = !DILocation(line: 419, column: 2, scope: !514)
!524 = !DILocation(line: 419, column: 10, scope: !514)
!525 = !DILocation(line: 420, column: 2, scope: !514)
!526 = !DILocation(line: 422, column: 2, scope: !514)
!527 = !DILocation(line: 423, column: 2, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !2, line: 423, column: 2)
!529 = distinct !DILexicalBlock(scope: !514, file: !2, line: 423, column: 2)
!530 = !DILocation(line: 423, column: 2, scope: !529)
!531 = !DILocation(line: 425, column: 2, scope: !514)
!532 = !DILocation(line: 426, column: 2, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 426, column: 2)
!534 = distinct !DILexicalBlock(scope: !514, file: !2, line: 426, column: 2)
!535 = !DILocation(line: 426, column: 2, scope: !534)
!536 = !DILocation(line: 428, column: 2, scope: !514)
!537 = !DILocation(line: 429, column: 1, scope: !514)
!538 = distinct !DISubprogram(name: "int_test_cmps", scope: !2, file: !2, line: 455, type: !151, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !539)
!539 = !{!540, !541, !542, !543, !544}
!540 = !DILocalVariable(name: "expected", arg: 1, scope: !538, file: !2, line: 455, type: !153)
!541 = !DILocalVariable(name: "lhs", arg: 2, scope: !538, file: !2, line: 455, type: !153)
!542 = !DILocalVariable(name: "rhs", arg: 3, scope: !538, file: !2, line: 455, type: !153)
!543 = !DILocalVariable(name: "exp", scope: !538, file: !2, line: 457, type: !159)
!544 = !DILocalVariable(name: "diff", scope: !538, file: !2, line: 458, type: !288)
!545 = !DILocation(line: 455, column: 35, scope: !538)
!546 = !DILocation(line: 455, column: 53, scope: !538)
!547 = !DILocation(line: 455, column: 66, scope: !538)
!548 = !DILocation(line: 457, column: 2, scope: !538)
!549 = !DILocation(line: 457, column: 6, scope: !538)
!550 = !DILocation(line: 458, column: 2, scope: !538)
!551 = !DILocation(line: 458, column: 10, scope: !538)
!552 = !DILocation(line: 460, column: 8, scope: !538)
!553 = !DILocation(line: 460, column: 6, scope: !538)
!554 = !{!555, !555, i64 0}
!555 = !{!"int", !296, i64 0}
!556 = !DILocation(line: 462, column: 2, scope: !538)
!557 = !DILocation(line: 463, column: 2, scope: !538)
!558 = !DILocation(line: 464, column: 2, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !2, line: 464, column: 2)
!560 = distinct !DILexicalBlock(scope: !538, file: !2, line: 464, column: 2)
!561 = !{!562, !555, i64 4}
!562 = !{!"", !555, i64 0, !555, i64 4, !295, i64 8}
!563 = !DILocation(line: 464, column: 2, scope: !560)
!564 = !DILocation(line: 465, column: 2, scope: !538)
!565 = !DILocation(line: 467, column: 15, scope: !538)
!566 = !DILocation(line: 467, column: 20, scope: !538)
!567 = !DILocation(line: 467, column: 25, scope: !538)
!568 = !DILocation(line: 467, column: 2, scope: !538)
!569 = !DILocation(line: 468, column: 16, scope: !538)
!570 = !DILocation(line: 468, column: 15, scope: !538)
!571 = !DILocation(line: 468, column: 21, scope: !538)
!572 = !DILocation(line: 468, column: 26, scope: !538)
!573 = !DILocation(line: 468, column: 2, scope: !538)
!574 = !DILocation(line: 469, column: 1, scope: !538)
!575 = distinct !DISubprogram(name: "int_test_abs_cmp", scope: !2, file: !2, line: 471, type: !151, scopeLine: 472, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !576)
!576 = !{!577, !578, !579, !580}
!577 = !DILocalVariable(name: "expected", arg: 1, scope: !575, file: !2, line: 471, type: !153)
!578 = !DILocalVariable(name: "lhs", arg: 2, scope: !575, file: !2, line: 471, type: !153)
!579 = !DILocalVariable(name: "rhs", arg: 3, scope: !575, file: !2, line: 471, type: !153)
!580 = !DILocalVariable(name: "exp", scope: !575, file: !2, line: 473, type: !159)
!581 = !DILocation(line: 471, column: 38, scope: !575)
!582 = !DILocation(line: 471, column: 56, scope: !575)
!583 = !DILocation(line: 471, column: 69, scope: !575)
!584 = !DILocation(line: 473, column: 2, scope: !575)
!585 = !DILocation(line: 473, column: 6, scope: !575)
!586 = !DILocation(line: 475, column: 8, scope: !575)
!587 = !DILocation(line: 475, column: 6, scope: !575)
!588 = !DILocation(line: 476, column: 2, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !2, line: 476, column: 2)
!590 = distinct !DILexicalBlock(scope: !575, file: !2, line: 476, column: 2)
!591 = !DILocation(line: 476, column: 2, scope: !590)
!592 = !DILocation(line: 477, column: 2, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !2, line: 477, column: 2)
!594 = distinct !DILexicalBlock(scope: !575, file: !2, line: 477, column: 2)
!595 = !DILocation(line: 477, column: 2, scope: !594)
!596 = !DILocation(line: 478, column: 1, scope: !575)
!597 = distinct !DISubprogram(name: "int_test_divisible", scope: !2, file: !2, line: 483, type: !151, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !598)
!598 = !{!599, !600, !601, !602}
!599 = !DILocalVariable(name: "expected", arg: 1, scope: !597, file: !2, line: 483, type: !153)
!600 = !DILocalVariable(name: "lhs", arg: 2, scope: !597, file: !2, line: 483, type: !153)
!601 = !DILocalVariable(name: "rhs", arg: 3, scope: !597, file: !2, line: 483, type: !153)
!602 = !DILocalVariable(name: "exp", scope: !597, file: !2, line: 485, type: !159)
!603 = !DILocation(line: 483, column: 40, scope: !597)
!604 = !DILocation(line: 483, column: 58, scope: !597)
!605 = !DILocation(line: 483, column: 71, scope: !597)
!606 = !DILocation(line: 485, column: 2, scope: !597)
!607 = !DILocation(line: 485, column: 6, scope: !597)
!608 = !DILocation(line: 487, column: 8, scope: !597)
!609 = !DILocation(line: 487, column: 6, scope: !597)
!610 = !DILocation(line: 488, column: 2, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 488, column: 2)
!612 = distinct !DILexicalBlock(scope: !597, file: !2, line: 488, column: 2)
!613 = !DILocation(line: 488, column: 2, scope: !612)
!614 = !DILocation(line: 489, column: 1, scope: !597)
!615 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 650, type: !616, scopeLine: 651, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!159}
!618 = !{!619}
!619 = !DILocalVariable(name: "i", scope: !615, file: !2, line: 652, type: !159)
!620 = !DILocation(line: 652, column: 2, scope: !615)
!621 = !DILocation(line: 652, column: 6, scope: !615)
!622 = !DILocation(line: 654, column: 2, scope: !615)
!623 = !DILocation(line: 656, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !615, file: !2, line: 656, column: 2)
!625 = !DILocation(line: 656, column: 7, scope: !624)
!626 = !DILocation(line: 656, column: 14, scope: !627)
!627 = distinct !DILexicalBlock(scope: !624, file: !2, line: 656, column: 2)
!628 = !DILocation(line: 656, column: 16, scope: !627)
!629 = !DILocation(line: 656, column: 2, scope: !624)
!630 = !DILocation(line: 658, column: 23, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !2, line: 656, column: 55)
!632 = !DILocation(line: 658, column: 7, scope: !631)
!633 = !DILocation(line: 658, column: 26, scope: !631)
!634 = !{!635, !295, i64 8}
!635 = !{!"", !295, i64 0, !295, i64 8, !295, i64 16}
!636 = !DILocation(line: 658, column: 52, scope: !631)
!637 = !DILocation(line: 658, column: 36, scope: !631)
!638 = !DILocation(line: 658, column: 55, scope: !631)
!639 = !{!635, !295, i64 16}
!640 = !DILocation(line: 659, column: 23, scope: !631)
!641 = !DILocation(line: 659, column: 7, scope: !631)
!642 = !DILocation(line: 659, column: 26, scope: !631)
!643 = !{!635, !295, i64 0}
!644 = !DILocation(line: 657, column: 3, scope: !631)
!645 = !DILocation(line: 660, column: 2, scope: !631)
!646 = !DILocation(line: 656, column: 49, scope: !627)
!647 = !DILocation(line: 656, column: 2, scope: !627)
!648 = distinct !{!648, !629, !649, !650}
!649 = !DILocation(line: 660, column: 2, scope: !624)
!650 = !{!"llvm.loop.mustprogress"}
!651 = !DILocation(line: 662, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !615, file: !2, line: 662, column: 2)
!653 = !DILocation(line: 662, column: 7, scope: !652)
!654 = !DILocation(line: 662, column: 14, scope: !655)
!655 = distinct !DILexicalBlock(scope: !652, file: !2, line: 662, column: 2)
!656 = !DILocation(line: 662, column: 16, scope: !655)
!657 = !DILocation(line: 662, column: 2, scope: !652)
!658 = !DILocation(line: 664, column: 24, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !2, line: 662, column: 56)
!660 = !DILocation(line: 664, column: 7, scope: !659)
!661 = !DILocation(line: 664, column: 27, scope: !659)
!662 = !{!663, !295, i64 8}
!663 = !{!"", !295, i64 0, !295, i64 8, !295, i64 16, !295, i64 24}
!664 = !DILocation(line: 664, column: 54, scope: !659)
!665 = !DILocation(line: 664, column: 37, scope: !659)
!666 = !DILocation(line: 664, column: 57, scope: !659)
!667 = !{!663, !295, i64 16}
!668 = !DILocation(line: 665, column: 24, scope: !659)
!669 = !DILocation(line: 665, column: 7, scope: !659)
!670 = !DILocation(line: 665, column: 27, scope: !659)
!671 = !{!663, !295, i64 24}
!672 = !DILocation(line: 665, column: 49, scope: !659)
!673 = !DILocation(line: 665, column: 32, scope: !659)
!674 = !DILocation(line: 665, column: 52, scope: !659)
!675 = !{!663, !295, i64 0}
!676 = !DILocation(line: 663, column: 3, scope: !659)
!677 = !DILocation(line: 666, column: 2, scope: !659)
!678 = !DILocation(line: 662, column: 50, scope: !655)
!679 = !DILocation(line: 662, column: 2, scope: !655)
!680 = distinct !{!680, !657, !681, !650}
!681 = !DILocation(line: 666, column: 2, scope: !652)
!682 = !DILocation(line: 669, column: 1, scope: !615)
!683 = !DILocation(line: 668, column: 2, scope: !615)
!684 = distinct !DISubprogram(name: "invoke_alternate_representations_2args", scope: !2, file: !2, line: 151, type: !685, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !165, !165, !269}
!687 = !{!688, !689, !690, !691, !692}
!688 = !DILocalVariable(name: "arg1", arg: 1, scope: !684, file: !2, line: 151, type: !165)
!689 = !DILocalVariable(name: "arg2", arg: 2, scope: !684, file: !2, line: 151, type: !165)
!690 = !DILocalVariable(name: "fn", arg: 3, scope: !684, file: !2, line: 152, type: !269)
!691 = !DILocalVariable(name: "int1", scope: !684, file: !2, line: 154, type: !288)
!692 = !DILocalVariable(name: "int2", scope: !684, file: !2, line: 154, type: !288)
!693 = !DILocation(line: 151, column: 58, scope: !684)
!694 = !DILocation(line: 151, column: 70, scope: !684)
!695 = !DILocation(line: 152, column: 9, scope: !684)
!696 = !DILocation(line: 154, column: 2, scope: !684)
!697 = !DILocation(line: 154, column: 10, scope: !684)
!698 = !DILocation(line: 154, column: 16, scope: !684)
!699 = !DILocation(line: 156, column: 2, scope: !684)
!700 = !DILocation(line: 157, column: 2, scope: !684)
!701 = !DILocation(line: 159, column: 2, scope: !684)
!702 = !DILocation(line: 160, column: 2, scope: !684)
!703 = !DILocation(line: 162, column: 4, scope: !684)
!704 = !DILocation(line: 162, column: 8, scope: !684)
!705 = !DILocation(line: 162, column: 14, scope: !684)
!706 = !DILocation(line: 162, column: 2, scope: !684)
!707 = !DILocation(line: 164, column: 2, scope: !684)
!708 = !DILocation(line: 165, column: 2, scope: !684)
!709 = !DILocation(line: 166, column: 1, scope: !684)
!710 = distinct !DISubprogram(name: "invoke_alternate_representations_3args", scope: !2, file: !2, line: 168, type: !711, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !165, !165, !165, !150}
!713 = !{!714, !715, !716, !717, !718, !719, !720}
!714 = !DILocalVariable(name: "arg1", arg: 1, scope: !710, file: !2, line: 168, type: !165)
!715 = !DILocalVariable(name: "arg2", arg: 2, scope: !710, file: !2, line: 168, type: !165)
!716 = !DILocalVariable(name: "arg3", arg: 3, scope: !710, file: !2, line: 169, type: !165)
!717 = !DILocalVariable(name: "fn", arg: 4, scope: !710, file: !2, line: 169, type: !150)
!718 = !DILocalVariable(name: "int1", scope: !710, file: !2, line: 171, type: !288)
!719 = !DILocalVariable(name: "int2", scope: !710, file: !2, line: 171, type: !288)
!720 = !DILocalVariable(name: "int3", scope: !710, file: !2, line: 171, type: !288)
!721 = !DILocation(line: 168, column: 58, scope: !710)
!722 = !DILocation(line: 168, column: 70, scope: !710)
!723 = !DILocation(line: 169, column: 8, scope: !710)
!724 = !DILocation(line: 169, column: 21, scope: !710)
!725 = !DILocation(line: 171, column: 2, scope: !710)
!726 = !DILocation(line: 171, column: 10, scope: !710)
!727 = !DILocation(line: 171, column: 16, scope: !710)
!728 = !DILocation(line: 171, column: 22, scope: !710)
!729 = !DILocation(line: 173, column: 2, scope: !710)
!730 = !DILocation(line: 174, column: 2, scope: !710)
!731 = !DILocation(line: 175, column: 2, scope: !710)
!732 = !DILocation(line: 177, column: 2, scope: !710)
!733 = !DILocation(line: 178, column: 2, scope: !710)
!734 = !DILocation(line: 179, column: 2, scope: !710)
!735 = !DILocation(line: 181, column: 4, scope: !710)
!736 = !DILocation(line: 181, column: 8, scope: !710)
!737 = !DILocation(line: 181, column: 14, scope: !710)
!738 = !DILocation(line: 181, column: 20, scope: !710)
!739 = !DILocation(line: 181, column: 2, scope: !710)
!740 = !DILocation(line: 183, column: 2, scope: !710)
!741 = !DILocation(line: 184, column: 2, scope: !710)
!742 = !DILocation(line: 185, column: 2, scope: !710)
!743 = !DILocation(line: 186, column: 1, scope: !710)
!744 = !DISubprogram(name: "__gmpz_init", scope: !155, file: !155, line: 852, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!745 = !DISubroutineType(types: !746)
!746 = !{null, !747}
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_ptr", file: !155, line: 225, baseType: !153)
!748 = distinct !DISubprogram(name: "__gmpz_neg", scope: !155, file: !155, line: 1813, type: !749, scopeLine: 1814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !754)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !747, !751}
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpz_srcptr", file: !155, line: 224, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!754 = !{!755, !756}
!755 = !DILocalVariable(name: "__gmp_w", arg: 1, scope: !748, file: !155, line: 1813, type: !747)
!756 = !DILocalVariable(name: "__gmp_u", arg: 2, scope: !748, file: !155, line: 1813, type: !751)
!757 = !DILocation(line: 1813, column: 18, scope: !748)
!758 = !DILocation(line: 1813, column: 38, scope: !748)
!759 = !DILocation(line: 1815, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !748, file: !155, line: 1815, column: 7)
!761 = !DILocation(line: 1815, column: 18, scope: !760)
!762 = !DILocation(line: 1815, column: 15, scope: !760)
!763 = !DILocation(line: 1815, column: 7, scope: !748)
!764 = !DILocation(line: 1816, column: 14, scope: !760)
!765 = !DILocation(line: 1816, column: 23, scope: !760)
!766 = !DILocation(line: 1816, column: 5, scope: !760)
!767 = !DILocation(line: 1817, column: 25, scope: !748)
!768 = !DILocation(line: 1817, column: 34, scope: !748)
!769 = !DILocation(line: 1817, column: 23, scope: !748)
!770 = !DILocation(line: 1817, column: 3, scope: !748)
!771 = !DILocation(line: 1817, column: 12, scope: !748)
!772 = !DILocation(line: 1817, column: 21, scope: !748)
!773 = !DILocation(line: 1818, column: 1, scope: !748)
!774 = !DISubprogram(name: "__gmpz_cmp", scope: !155, file: !155, line: 689, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!775 = !DISubroutineType(types: !776)
!776 = !{!159, !751, !751}
!777 = !DISubprogram(name: "__assert_fail", scope: !778, file: !778, line: 69, type: !779, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!778 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!779 = !DISubroutineType(types: !780)
!780 = !{null, !781, !781, !782, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!782 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!783 = !DISubprogram(name: "__gmpz_clear", scope: !155, file: !155, line: 680, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!784 = !DISubprogram(name: "__gmpz_set", scope: !155, file: !155, line: 1016, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!785 = distinct !DISubprogram(name: "__gmpz_abs", scope: !155, file: !155, line: 1715, type: !749, scopeLine: 1716, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !786)
!786 = !{!787, !788}
!787 = !DILocalVariable(name: "__gmp_w", arg: 1, scope: !785, file: !155, line: 1715, type: !747)
!788 = !DILocalVariable(name: "__gmp_u", arg: 2, scope: !785, file: !155, line: 1715, type: !751)
!789 = !DILocation(line: 1715, column: 18, scope: !785)
!790 = !DILocation(line: 1715, column: 38, scope: !785)
!791 = !DILocation(line: 1717, column: 7, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !155, line: 1717, column: 7)
!793 = !DILocation(line: 1717, column: 18, scope: !792)
!794 = !DILocation(line: 1717, column: 15, scope: !792)
!795 = !DILocation(line: 1717, column: 7, scope: !785)
!796 = !DILocation(line: 1718, column: 14, scope: !792)
!797 = !DILocation(line: 1718, column: 23, scope: !792)
!798 = !DILocation(line: 1718, column: 5, scope: !792)
!799 = !DILocation(line: 1719, column: 23, scope: !785)
!800 = !DILocation(line: 1719, column: 3, scope: !785)
!801 = !DILocation(line: 1719, column: 12, scope: !785)
!802 = !DILocation(line: 1719, column: 21, scope: !785)
!803 = !DILocation(line: 1720, column: 1, scope: !785)
!804 = distinct !DISubprogram(name: "int_test_sub", scope: !2, file: !2, line: 320, type: !151, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !805)
!805 = !{!806, !807, !808, !809}
!806 = !DILocalVariable(name: "expected", arg: 1, scope: !804, file: !2, line: 320, type: !153)
!807 = !DILocalVariable(name: "lhs", arg: 2, scope: !804, file: !2, line: 320, type: !153)
!808 = !DILocalVariable(name: "rhs", arg: 3, scope: !804, file: !2, line: 320, type: !153)
!809 = !DILocalVariable(name: "result", scope: !804, file: !2, line: 322, type: !288)
!810 = !DILocation(line: 320, column: 34, scope: !804)
!811 = !DILocation(line: 320, column: 52, scope: !804)
!812 = !DILocation(line: 320, column: 65, scope: !804)
!813 = !DILocation(line: 322, column: 2, scope: !804)
!814 = !DILocation(line: 322, column: 10, scope: !804)
!815 = !DILocation(line: 323, column: 2, scope: !804)
!816 = !DILocation(line: 325, column: 2, scope: !804)
!817 = !DILocation(line: 326, column: 2, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !2, line: 326, column: 2)
!819 = distinct !DILexicalBlock(scope: !804, file: !2, line: 326, column: 2)
!820 = !DILocation(line: 326, column: 2, scope: !819)
!821 = !DILocation(line: 328, column: 2, scope: !804)
!822 = !DILocation(line: 329, column: 1, scope: !804)
!823 = distinct !DISubprogram(name: "int_test_add", scope: !2, file: !2, line: 309, type: !151, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !824)
!824 = !{!825, !826, !827, !828}
!825 = !DILocalVariable(name: "expected", arg: 1, scope: !823, file: !2, line: 309, type: !153)
!826 = !DILocalVariable(name: "lhs", arg: 2, scope: !823, file: !2, line: 309, type: !153)
!827 = !DILocalVariable(name: "rhs", arg: 3, scope: !823, file: !2, line: 309, type: !153)
!828 = !DILocalVariable(name: "result", scope: !823, file: !2, line: 311, type: !288)
!829 = !DILocation(line: 309, column: 34, scope: !823)
!830 = !DILocation(line: 309, column: 52, scope: !823)
!831 = !DILocation(line: 309, column: 65, scope: !823)
!832 = !DILocation(line: 311, column: 2, scope: !823)
!833 = !DILocation(line: 311, column: 10, scope: !823)
!834 = !DILocation(line: 312, column: 2, scope: !823)
!835 = !DILocation(line: 314, column: 2, scope: !823)
!836 = !DILocation(line: 315, column: 2, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !2, line: 315, column: 2)
!838 = distinct !DILexicalBlock(scope: !823, file: !2, line: 315, column: 2)
!839 = !DILocation(line: 315, column: 2, scope: !838)
!840 = !DILocation(line: 317, column: 2, scope: !823)
!841 = !DILocation(line: 318, column: 1, scope: !823)
!842 = !DISubprogram(name: "__gmpz_sub", scope: !155, file: !155, line: 1056, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !747, !751, !751}
!845 = !DISubprogram(name: "__gmpz_add", scope: !155, file: !155, line: 629, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!846 = distinct !DISubprogram(name: "int_test_divexact", scope: !2, file: !2, line: 234, type: !151, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !847)
!847 = !{!848, !849, !850, !851, !852}
!848 = !DILocalVariable(name: "expected", arg: 1, scope: !846, file: !2, line: 234, type: !153)
!849 = !DILocalVariable(name: "lhs", arg: 2, scope: !846, file: !2, line: 234, type: !153)
!850 = !DILocalVariable(name: "rhs", arg: 3, scope: !846, file: !2, line: 234, type: !153)
!851 = !DILocalVariable(name: "result", scope: !846, file: !2, line: 236, type: !288)
!852 = !DILocalVariable(name: "rhsulong", scope: !846, file: !2, line: 237, type: !46)
!853 = !DILocation(line: 234, column: 39, scope: !846)
!854 = !DILocation(line: 234, column: 57, scope: !846)
!855 = !DILocation(line: 234, column: 70, scope: !846)
!856 = !DILocation(line: 236, column: 2, scope: !846)
!857 = !DILocation(line: 236, column: 10, scope: !846)
!858 = !DILocation(line: 237, column: 2, scope: !846)
!859 = !DILocation(line: 237, column: 16, scope: !846)
!860 = !DILocation(line: 239, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !846, file: !2, line: 239, column: 6)
!862 = !DILocation(line: 239, column: 23, scope: !861)
!863 = !DILocation(line: 239, column: 6, scope: !846)
!864 = !DILocation(line: 240, column: 3, scope: !861)
!865 = !DILocation(line: 242, column: 2, scope: !846)
!866 = !DILocation(line: 244, column: 2, scope: !846)
!867 = !DILocation(line: 245, column: 2, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !2, line: 245, column: 2)
!869 = distinct !DILexicalBlock(scope: !846, file: !2, line: 245, column: 2)
!870 = !DILocation(line: 245, column: 2, scope: !869)
!871 = !DILocation(line: 247, column: 2, scope: !846)
!872 = !DILocation(line: 248, column: 2, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 248, column: 2)
!874 = distinct !DILexicalBlock(scope: !846, file: !2, line: 248, column: 2)
!875 = !DILocation(line: 248, column: 2, scope: !874)
!876 = !DILocation(line: 250, column: 2, scope: !846)
!877 = !DILocation(line: 251, column: 2, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 251, column: 2)
!879 = distinct !DILexicalBlock(scope: !846, file: !2, line: 251, column: 2)
!880 = !DILocation(line: 251, column: 2, scope: !879)
!881 = !DILocation(line: 253, column: 2, scope: !846)
!882 = !DILocation(line: 254, column: 2, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !2, line: 254, column: 2)
!884 = distinct !DILexicalBlock(scope: !846, file: !2, line: 254, column: 2)
!885 = !DILocation(line: 254, column: 2, scope: !884)
!886 = !DILocation(line: 256, column: 6, scope: !887)
!887 = distinct !DILexicalBlock(scope: !846, file: !2, line: 256, column: 6)
!888 = !DILocation(line: 256, column: 6, scope: !846)
!889 = !DILocation(line: 257, column: 14, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !2, line: 256, column: 31)
!891 = !DILocation(line: 257, column: 12, scope: !890)
!892 = !DILocation(line: 259, column: 3, scope: !890)
!893 = !DILocation(line: 260, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !2, line: 260, column: 3)
!895 = distinct !DILexicalBlock(scope: !890, file: !2, line: 260, column: 3)
!896 = !DILocation(line: 260, column: 3, scope: !895)
!897 = !DILocation(line: 262, column: 3, scope: !890)
!898 = !DILocation(line: 263, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !2, line: 263, column: 3)
!900 = distinct !DILexicalBlock(scope: !890, file: !2, line: 263, column: 3)
!901 = !DILocation(line: 263, column: 3, scope: !900)
!902 = !DILocation(line: 265, column: 3, scope: !890)
!903 = !DILocation(line: 266, column: 3, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !2, line: 266, column: 3)
!905 = distinct !DILexicalBlock(scope: !890, file: !2, line: 266, column: 3)
!906 = !DILocation(line: 266, column: 3, scope: !905)
!907 = !DILocation(line: 267, column: 2, scope: !890)
!908 = !DILocation(line: 269, column: 2, scope: !846)
!909 = !DILocation(line: 270, column: 1, scope: !846)
!910 = distinct !DISubprogram(name: "int_test_mul", scope: !2, file: !2, line: 272, type: !151, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !911)
!911 = !{!912, !913, !914, !915, !916, !919}
!912 = !DILocalVariable(name: "expected", arg: 1, scope: !910, file: !2, line: 272, type: !153)
!913 = !DILocalVariable(name: "lhs", arg: 2, scope: !910, file: !2, line: 272, type: !153)
!914 = !DILocalVariable(name: "rhs", arg: 3, scope: !910, file: !2, line: 272, type: !153)
!915 = !DILocalVariable(name: "result", scope: !910, file: !2, line: 274, type: !288)
!916 = !DILocalVariable(name: "rhsulong", scope: !917, file: !2, line: 281, type: !46)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 280, column: 31)
!918 = distinct !DILexicalBlock(scope: !910, file: !2, line: 280, column: 6)
!919 = !DILocalVariable(name: "rhsslong", scope: !920, file: !2, line: 288, type: !46)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 287, column: 31)
!921 = distinct !DILexicalBlock(scope: !910, file: !2, line: 287, column: 6)
!922 = !DILocation(line: 272, column: 34, scope: !910)
!923 = !DILocation(line: 272, column: 52, scope: !910)
!924 = !DILocation(line: 272, column: 65, scope: !910)
!925 = !DILocation(line: 274, column: 2, scope: !910)
!926 = !DILocation(line: 274, column: 10, scope: !910)
!927 = !DILocation(line: 275, column: 2, scope: !910)
!928 = !DILocation(line: 277, column: 2, scope: !910)
!929 = !DILocation(line: 278, column: 2, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 278, column: 2)
!931 = distinct !DILexicalBlock(scope: !910, file: !2, line: 278, column: 2)
!932 = !DILocation(line: 278, column: 2, scope: !931)
!933 = !DILocation(line: 280, column: 6, scope: !918)
!934 = !DILocation(line: 280, column: 6, scope: !910)
!935 = !DILocation(line: 281, column: 3, scope: !917)
!936 = !DILocation(line: 281, column: 17, scope: !917)
!937 = !DILocation(line: 281, column: 28, scope: !917)
!938 = !DILocation(line: 283, column: 3, scope: !917)
!939 = !DILocation(line: 284, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 284, column: 3)
!941 = distinct !DILexicalBlock(scope: !917, file: !2, line: 284, column: 3)
!942 = !DILocation(line: 284, column: 3, scope: !941)
!943 = !DILocation(line: 285, column: 2, scope: !918)
!944 = !DILocation(line: 285, column: 2, scope: !917)
!945 = !DILocation(line: 287, column: 6, scope: !921)
!946 = !DILocation(line: 287, column: 6, scope: !910)
!947 = !DILocation(line: 288, column: 3, scope: !920)
!948 = !DILocation(line: 288, column: 17, scope: !920)
!949 = !DILocation(line: 288, column: 28, scope: !920)
!950 = !DILocation(line: 290, column: 3, scope: !920)
!951 = !DILocation(line: 291, column: 3, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !2, line: 291, column: 3)
!953 = distinct !DILexicalBlock(scope: !920, file: !2, line: 291, column: 3)
!954 = !DILocation(line: 291, column: 3, scope: !953)
!955 = !DILocation(line: 292, column: 2, scope: !921)
!956 = !DILocation(line: 292, column: 2, scope: !920)
!957 = !DILocation(line: 294, column: 2, scope: !910)
!958 = !DILocation(line: 295, column: 1, scope: !910)
!959 = !DISubprogram(name: "__gmpz_divexact", scope: !155, file: !155, line: 725, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DISubprogram(name: "__gmpz_tdiv_q", scope: !155, file: !155, line: 1077, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubprogram(name: "__gmpz_fdiv_q", scope: !155, file: !155, line: 758, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubprogram(name: "__gmpz_cdiv_q", scope: !155, file: !155, line: 653, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = distinct !DISubprogram(name: "__gmpz_fits_ulong_p", scope: !155, file: !155, line: 1752, type: !964, scopeLine: 1753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !966)
!964 = !DISubroutineType(types: !965)
!965 = !{!159, !751}
!966 = !{!967, !968, !971}
!967 = !DILocalVariable(name: "__gmp_z", arg: 1, scope: !963, file: !155, line: 1752, type: !751)
!968 = !DILocalVariable(name: "__gmp_n", scope: !963, file: !155, line: 1754, type: !969)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_size_t", file: !155, line: 175, baseType: !970)
!970 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!971 = !DILocalVariable(name: "__gmp_p", scope: !963, file: !155, line: 1754, type: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp_ptr", file: !155, line: 166, baseType: !162)
!973 = !DILocation(line: 1752, column: 30, scope: !963)
!974 = !DILocation(line: 1754, column: 3, scope: !963)
!975 = !{!562, !295, i64 8}
!976 = !DILocation(line: 0, scope: !963)
!977 = !DILocation(line: 1755, column: 1, scope: !963)
!978 = distinct !DISubprogram(name: "__gmpz_get_ui", scope: !155, file: !155, line: 1774, type: !979, scopeLine: 1775, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{!46, !751}
!981 = !{!982, !983, !984, !985}
!982 = !DILocalVariable(name: "__gmp_z", arg: 1, scope: !978, file: !155, line: 1774, type: !751)
!983 = !DILocalVariable(name: "__gmp_p", scope: !978, file: !155, line: 1776, type: !972)
!984 = !DILocalVariable(name: "__gmp_n", scope: !978, file: !155, line: 1777, type: !969)
!985 = !DILocalVariable(name: "__gmp_l", scope: !978, file: !155, line: 1778, type: !163)
!986 = !DILocation(line: 1774, column: 24, scope: !978)
!987 = !DILocation(line: 1776, column: 3, scope: !978)
!988 = !DILocation(line: 1776, column: 10, scope: !978)
!989 = !DILocation(line: 1776, column: 20, scope: !978)
!990 = !DILocation(line: 1776, column: 29, scope: !978)
!991 = !DILocation(line: 1777, column: 3, scope: !978)
!992 = !DILocation(line: 1777, column: 13, scope: !978)
!993 = !DILocation(line: 1777, column: 23, scope: !978)
!994 = !DILocation(line: 1777, column: 32, scope: !978)
!995 = !DILocation(line: 1778, column: 3, scope: !978)
!996 = !DILocation(line: 1778, column: 13, scope: !978)
!997 = !DILocation(line: 1778, column: 23, scope: !978)
!998 = !DILocation(line: 1785, column: 11, scope: !978)
!999 = !DILocation(line: 1785, column: 19, scope: !978)
!1000 = !DILocation(line: 1785, column: 26, scope: !978)
!1001 = !DILocation(line: 1794, column: 1, scope: !978)
!1002 = !DILocation(line: 1785, column: 3, scope: !978)
!1003 = !DISubprogram(name: "__gmpz_divexact_ui", scope: !155, file: !155, line: 728, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !747, !751, !46}
!1006 = !DISubprogram(name: "__gmpz_fdiv_q_ui", scope: !155, file: !155, line: 764, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!46, !747, !751, !46}
!1009 = !DISubprogram(name: "__gmpz_cdiv_q_ui", scope: !155, file: !155, line: 659, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DISubprogram(name: "__gmpz_mul", scope: !155, file: !155, line: 931, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DISubprogram(name: "__gmpz_mul_ui", scope: !155, file: !155, line: 940, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1012 = !DISubprogram(name: "__gmpz_fits_slong_p", scope: !155, file: !155, line: 794, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DISubprogram(name: "__gmpz_get_si", scope: !155, file: !155, line: 830, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!970, !751}
!1016 = !DISubprogram(name: "__gmpz_mul_si", scope: !155, file: !155, line: 937, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !747, !751, !970}
!1019 = !DISubprogram(name: "__gmpz_fdiv_r", scope: !155, file: !155, line: 773, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DISubprogram(name: "__gmpz_gcd", scope: !155, file: !155, line: 815, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DISubprogram(name: "__gmpz_lcm", scope: !155, file: !155, line: 909, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = distinct !DISubprogram(name: "int_test_cmp", scope: !2, file: !2, line: 440, type: !1023, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !1025)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !159, !153, !153}
!1025 = !{!1026, !1027, !1028, !1029}
!1026 = !DILocalVariable(name: "exp", arg: 1, scope: !1022, file: !2, line: 440, type: !159)
!1027 = !DILocalVariable(name: "lhs", arg: 2, scope: !1022, file: !2, line: 440, type: !153)
!1028 = !DILocalVariable(name: "rhs", arg: 3, scope: !1022, file: !2, line: 440, type: !153)
!1029 = !DILocalVariable(name: "rhslong", scope: !1022, file: !2, line: 442, type: !970)
!1030 = !DILocation(line: 440, column: 30, scope: !1022)
!1031 = !DILocation(line: 440, column: 43, scope: !1022)
!1032 = !DILocation(line: 440, column: 56, scope: !1022)
!1033 = !DILocation(line: 442, column: 2, scope: !1022)
!1034 = !DILocation(line: 442, column: 7, scope: !1022)
!1035 = !DILocation(line: 444, column: 2, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 444, column: 2)
!1037 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 444, column: 2)
!1038 = !DILocation(line: 444, column: 2, scope: !1037)
!1039 = !DILocation(line: 446, column: 6, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 446, column: 6)
!1041 = !DILocation(line: 446, column: 6, scope: !1022)
!1042 = !DILocation(line: 447, column: 13, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 446, column: 31)
!1044 = !DILocation(line: 447, column: 11, scope: !1043)
!1045 = !DILocation(line: 448, column: 3, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 448, column: 3)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 448, column: 3)
!1048 = !DILocation(line: 448, column: 3, scope: !1047)
!1049 = !DILocation(line: 449, column: 2, scope: !1043)
!1050 = !DILocation(line: 450, column: 1, scope: !1022)
!1051 = distinct !DISubprogram(name: "sgn", scope: !2, file: !2, line: 431, type: !1052, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!159, !159}
!1054 = !{!1055}
!1055 = !DILocalVariable(name: "val", arg: 1, scope: !1051, file: !2, line: 431, type: !159)
!1056 = !DILocation(line: 431, column: 20, scope: !1051)
!1057 = !DILocation(line: 433, column: 6, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 433, column: 6)
!1059 = !DILocation(line: 433, column: 10, scope: !1058)
!1060 = !DILocation(line: 433, column: 6, scope: !1051)
!1061 = !DILocation(line: 434, column: 3, scope: !1058)
!1062 = !DILocation(line: 435, column: 6, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 435, column: 6)
!1064 = !DILocation(line: 435, column: 10, scope: !1063)
!1065 = !DILocation(line: 435, column: 6, scope: !1051)
!1066 = !DILocation(line: 436, column: 3, scope: !1063)
!1067 = !DILocation(line: 437, column: 2, scope: !1051)
!1068 = !DILocation(line: 438, column: 1, scope: !1051)
!1069 = !DISubprogram(name: "__gmpz_cmp_ui", scope: !155, file: !155, line: 698, type: !1070, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!159, !751, !46}
!1072 = !DISubprogram(name: "__gmpz_cmp_si", scope: !155, file: !155, line: 695, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!159, !751, !970}
!1075 = !DISubprogram(name: "__gmpz_cmpabs", scope: !155, file: !155, line: 701, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1076 = !DISubprogram(name: "__gmpz_divisible_p", scope: !155, file: !155, line: 731, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1077 = distinct !DISubprogram(name: "int_test_single_value", scope: !2, file: !2, line: 147, type: !1078, scopeLine: 148, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null}
!1080 = !DILocation(line: 149, column: 1, scope: !1077)
!1081 = !DISubprogram(name: "__gmpz_set_str", scope: !155, file: !155, line: 1033, type: !1082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!159, !747, !781, !159}
