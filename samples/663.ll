; ModuleID = 'samples/663.bc'
source_filename = "../Source/umf_local_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DoubleComplex = type { [2 x double] }
%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.WorkType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [64 x i32], [64 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SymbolicType = type { double, double, double, double, double, double, double, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.Unit_union = type { double }
%struct.Tuple = type { i32, i32 }
%struct.Element = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@__const.umfzi_local_search.alpha = private unnamed_addr constant [2 x double] [double -1.000000e+00, double 0.000000e+00], align 16
@__const.umfzi_local_search.beta = private unnamed_addr constant [2 x double] [double 1.000000e+00, double 0.000000e+00], align 16

; Function Attrs: uwtable
define i32 @umfzi_local_search(ptr noundef %Numeric, ptr noundef %Work, ptr noundef %Symbolic) #0 {
entry:
  %retval = alloca i32, align 4
  %Numeric.addr = alloca ptr, align 8
  %Work.addr = alloca ptr, align 8
  %Symbolic.addr = alloca ptr, align 8
  %relax1 = alloca double, align 8
  %Flblock = alloca ptr, align 8
  %Fublock = alloca ptr, align 8
  %Fs = alloca ptr, align 8
  %Fcblock = alloca ptr, align 8
  %C = alloca ptr, align 8
  %Wx = alloca ptr, align 8
  %Wy = alloca ptr, align 8
  %Fu = alloca ptr, align 8
  %Flublock = alloca ptr, align 8
  %Flu = alloca ptr, align 8
  %pos = alloca i32, align 4
  %nrows = alloca i32, align 4
  %Cols = alloca ptr, align 8
  %Rows = alloca ptr, align 8
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %status = alloca i32, align 4
  %max_cdeg = alloca i32, align 4
  %fnzeros = alloca i32, align 4
  %nb = alloca i32, align 4
  %j = alloca i32, align 4
  %col = alloca i32, align 4
  %i = alloca i32, align 4
  %row = alloca i32, align 4
  %cdeg_in = alloca i32, align 4
  %rdeg = alloca [2 x [2 x i32]], align 16
  %fnpiv = alloca i32, align 4
  %nothing = alloca [2 x i32], align 4
  %new_LUsize = alloca i32, align 4
  %pivrow = alloca [2 x [2 x i32]], align 16
  %pivcol = alloca [2 x i32], align 4
  %Wp = alloca ptr, align 8
  %Fcpos = alloca ptr, align 8
  %Frpos = alloca ptr, align 8
  %new_fnzeros = alloca i32, align 4
  %cdeg_out = alloca i32, align 4
  %Wm = alloca ptr, align 8
  %Wio = alloca ptr, align 8
  %Woi = alloca ptr, align 8
  %Woo = alloca ptr, align 8
  %Frows = alloca ptr, align 8
  %Fcols = alloca ptr, align 8
  %fnrows = alloca i32, align 4
  %fncols = alloca i32, align 4
  %E = alloca ptr, align 8
  %deg = alloca i32, align 4
  %nr_in = alloca i32, align 4
  %nc = alloca i32, align 4
  %thiscost = alloca i32, align 4
  %bestcost = alloca i32, align 4
  %nr_out = alloca i32, align 4
  %do_update = alloca i32, align 4
  %extra_cols = alloca i32, align 4
  %extra_rows = alloca i32, align 4
  %extra_zeros = alloca i32, align 4
  %relaxed_front = alloca i32, align 4
  %do_extend = alloca i32, align 4
  %fnr_curr = alloca i32, align 4
  %fnc_curr = alloca i32, align 4
  %tpi = alloca i32, align 4
  %Col_tuples = alloca ptr, align 8
  %Col_degree = alloca ptr, align 8
  %Col_tlen = alloca ptr, align 8
  %jj = alloca i32, align 4
  %jcand = alloca [2 x i32], align 4
  %freebie = alloca [2 x i32], align 4
  %did_rowmerge = alloca i32, align 4
  %fnrows_new = alloca [2 x [2 x i32]], align 16
  %fncols_new = alloca [2 x [2 x i32]], align 16
  %search_pivcol_out = alloca i32, align 4
  %Diagonal_map = alloca ptr, align 8
  %Diagonal_imap = alloca ptr, align 8
  %row2 = alloca i32, align 4
  %col2 = alloca i32, align 4
  %Memory = alloca ptr, align 8
  %p = alloca ptr, align 8
  %tp = alloca ptr, align 8
  %tpend = alloca ptr, align 8
  %tp1 = alloca ptr, align 8
  %tp2 = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %blas_ok = alloca i32, align 4
  %N = alloca i32, align 4
  %LDA = alloca i32, align 4
  %INCX = alloca i32, align 4
  %Flub = alloca ptr, align 8
  %Fuj = alloca %struct.DoubleComplex, align 8
  %alpha = alloca [2 x double], align 16
  %beta = alloca [2 x double], align 16
  %M = alloca i32, align 4
  %N201 = alloca i32, align 4
  %LDA202 = alloca i32, align 4
  %INCX203 = alloca i32, align 4
  %INCY = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  store ptr %Symbolic, ptr %Symbolic.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %relax1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Flblock) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fublock) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcblock) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %C) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wx) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wy) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fu) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Flublock) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Flu) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrows) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cols) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rows) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_cdeg) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnzeros) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %col) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %row) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cdeg_in) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %rdeg) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnpiv) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %nothing) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_LUsize) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %pivrow) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivcol) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcpos) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frpos) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_fnzeros) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %cdeg_out) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wm) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wio) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Woi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Woo) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frows) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcols) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnrows) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %fncols) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %E) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %deg) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_in) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nc) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %thiscost) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %bestcost) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_out) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %do_update) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra_cols) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra_rows) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %extra_zeros) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %relaxed_front) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %do_extend) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnr_curr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %fnc_curr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %tpi) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_tuples) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_degree) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_tlen) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %jcand) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %freebie) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %did_rowmerge) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %fnrows_new) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr %fncols_new) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %search_pivcol_out) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Diagonal_map) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Diagonal_imap) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %row2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %col2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %Memory) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tpend) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %ep) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %blas_ok) #6
  store i32 1, ptr %blas_ok, align 4, !tbaa !8
  %0 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory1 = getelementptr inbounds %struct.NumericType, ptr %0, i32 0, i32 13
  %1 = load ptr, ptr %Memory1, align 8, !tbaa !10
  store ptr %1, ptr %Memory, align 8, !tbaa !4
  %2 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %E2 = getelementptr inbounds %struct.WorkType, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %E2, align 8, !tbaa !13
  store ptr %3, ptr %E, align 8, !tbaa !4
  %4 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Cperm = getelementptr inbounds %struct.NumericType, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %Cperm, align 8, !tbaa !15
  store ptr %5, ptr %Col_degree, align 8, !tbaa !4
  %6 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lip = getelementptr inbounds %struct.NumericType, ptr %6, i32 0, i32 22
  %7 = load ptr, ptr %Lip, align 8, !tbaa !16
  store ptr %7, ptr %Col_tuples, align 8, !tbaa !4
  %8 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lilen = getelementptr inbounds %struct.NumericType, ptr %8, i32 0, i32 23
  %9 = load ptr, ptr %Lilen, align 8, !tbaa !17
  store ptr %9, ptr %Col_tlen, align 8, !tbaa !4
  %10 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wx3 = getelementptr inbounds %struct.WorkType, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %Wx3, align 8, !tbaa !18
  store ptr %11, ptr %Wx, align 8, !tbaa !4
  %12 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wy4 = getelementptr inbounds %struct.WorkType, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %Wy4, align 8, !tbaa !19
  store ptr %13, ptr %Wy, align 8, !tbaa !4
  %14 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wp5 = getelementptr inbounds %struct.WorkType, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %Wp5, align 8, !tbaa !20
  store ptr %15, ptr %Wp, align 8, !tbaa !4
  %16 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wm6 = getelementptr inbounds %struct.WorkType, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %Wm6, align 8, !tbaa !21
  store ptr %17, ptr %Wm, align 8, !tbaa !4
  %18 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Woi7 = getelementptr inbounds %struct.WorkType, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %Woi7, align 8, !tbaa !22
  store ptr %19, ptr %Woi, align 8, !tbaa !4
  %20 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wio8 = getelementptr inbounds %struct.WorkType, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %Wio8, align 8, !tbaa !23
  store ptr %21, ptr %Wio, align 8, !tbaa !4
  %22 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Woo9 = getelementptr inbounds %struct.WorkType, ptr %22, i32 0, i32 8
  %23 = load ptr, ptr %Woo9, align 8, !tbaa !24
  store ptr %23, ptr %Woo, align 8, !tbaa !4
  %24 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcpos10 = getelementptr inbounds %struct.WorkType, ptr %24, i32 0, i32 64
  %25 = load ptr, ptr %Fcpos10, align 8, !tbaa !25
  store ptr %25, ptr %Fcpos, align 8, !tbaa !4
  %26 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frpos11 = getelementptr inbounds %struct.WorkType, ptr %26, i32 0, i32 63
  %27 = load ptr, ptr %Frpos11, align 8, !tbaa !26
  store ptr %27, ptr %Frpos, align 8, !tbaa !4
  %28 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frows12 = getelementptr inbounds %struct.WorkType, ptr %28, i32 0, i32 61
  %29 = load ptr, ptr %Frows12, align 8, !tbaa !27
  store ptr %29, ptr %Frows, align 8, !tbaa !4
  %30 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcols13 = getelementptr inbounds %struct.WorkType, ptr %30, i32 0, i32 62
  %31 = load ptr, ptr %Fcols13, align 8, !tbaa !28
  store ptr %31, ptr %Fcols, align 8, !tbaa !4
  %32 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows14 = getelementptr inbounds %struct.WorkType, ptr %32, i32 0, i32 65
  %33 = load i32, ptr %fnrows14, align 8, !tbaa !29
  store i32 %33, ptr %fnrows, align 4, !tbaa !8
  %34 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols15 = getelementptr inbounds %struct.WorkType, ptr %34, i32 0, i32 66
  %35 = load i32, ptr %fncols15, align 4, !tbaa !30
  store i32 %35, ptr %fncols, align 4, !tbaa !8
  %36 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nb16 = getelementptr inbounds %struct.WorkType, ptr %36, i32 0, i32 72
  %37 = load i32, ptr %nb16, align 4, !tbaa !31
  store i32 %37, ptr %nb, align 4, !tbaa !8
  %38 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnr_curr17 = getelementptr inbounds %struct.WorkType, ptr %38, i32 0, i32 67
  %39 = load i32, ptr %fnr_curr17, align 8, !tbaa !32
  store i32 %39, ptr %fnr_curr, align 4, !tbaa !8
  %40 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnc_curr18 = getelementptr inbounds %struct.WorkType, ptr %40, i32 0, i32 68
  %41 = load i32, ptr %fnc_curr18, align 4, !tbaa !33
  store i32 %41, ptr %fnc_curr, align 4, !tbaa !8
  %42 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnpiv19 = getelementptr inbounds %struct.WorkType, ptr %42, i32 0, i32 73
  %43 = load i32, ptr %fnpiv19, align 8, !tbaa !34
  store i32 %43, ptr %fnpiv, align 4, !tbaa !8
  %arrayidx = getelementptr inbounds [2 x i32], ptr %nothing, i64 0, i64 0
  store i32 -1, ptr %arrayidx, align 4, !tbaa !8
  %arrayidx20 = getelementptr inbounds [2 x i32], ptr %nothing, i64 0, i64 1
  store i32 -1, ptr %arrayidx20, align 4, !tbaa !8
  %44 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %prefer_diagonal = getelementptr inbounds %struct.SymbolicType, ptr %44, i32 0, i32 40
  %45 = load i32, ptr %prefer_diagonal, align 8, !tbaa !35
  %tobool = icmp ne i32 %45, 0
  %46 = zext i1 %tobool to i64
  %cond = select i1 %tobool, double 0.000000e+00, double 2.500000e-01
  store double %cond, ptr %relax1, align 8, !tbaa !37
  %47 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros21 = getelementptr inbounds %struct.WorkType, ptr %47, i32 0, i32 74
  %48 = load i32, ptr %fnzeros21, align 4, !tbaa !38
  store i32 %48, ptr %fnzeros, align 4, !tbaa !8
  %49 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %49, ptr %new_fnzeros, align 4, !tbaa !8
  store i32 -1, ptr %jj, align 4, !tbaa !8
  %50 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock22 = getelementptr inbounds %struct.WorkType, ptr %50, i32 0, i32 60
  %51 = load ptr, ptr %Fcblock22, align 8, !tbaa !39
  store ptr %51, ptr %Fcblock, align 8, !tbaa !4
  %52 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock23 = getelementptr inbounds %struct.WorkType, ptr %52, i32 0, i32 58
  %53 = load ptr, ptr %Flblock23, align 8, !tbaa !40
  store ptr %53, ptr %Flblock, align 8, !tbaa !4
  %54 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fublock24 = getelementptr inbounds %struct.WorkType, ptr %54, i32 0, i32 59
  %55 = load ptr, ptr %Fublock24, align 8, !tbaa !41
  store ptr %55, ptr %Fublock, align 8, !tbaa !4
  %56 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flublock25 = getelementptr inbounds %struct.WorkType, ptr %56, i32 0, i32 57
  %57 = load ptr, ptr %Flublock25, align 8, !tbaa !42
  store ptr %57, ptr %Flublock, align 8, !tbaa !4
  %58 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_max = getelementptr inbounds %struct.WorkType, ptr %58, i32 0, i32 70
  %59 = load i32, ptr %fnrows_max, align 4, !tbaa !43
  store i32 %59, ptr %max_cdeg, align 4, !tbaa !8
  %60 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp = icmp eq i32 %60, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %61 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp26 = icmp eq i32 %61, 0
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %62 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ksuper = getelementptr inbounds %struct.WorkType, ptr %62, i32 0, i32 35
  %63 = load i32, ptr %ksuper, align 8, !tbaa !44
  %64 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %firstsuper = getelementptr inbounds %struct.WorkType, ptr %64, i32 0, i32 36
  store i32 %63, ptr %firstsuper, align 4, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %arrayidx27 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  store i32 -1, ptr %arrayidx27, align 4, !tbaa !8
  %arrayidx28 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  store i32 -1, ptr %arrayidx28, align 4, !tbaa !8
  store i32 2147483647, ptr %cdeg_in, align 4, !tbaa !8
  store i32 2147483647, ptr %cdeg_out, align 4, !tbaa !8
  %arrayidx29 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx30 = getelementptr inbounds [2 x i32], ptr %arrayidx29, i64 0, i64 0
  store i32 -1, ptr %arrayidx30, align 16, !tbaa !8
  %arrayidx31 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx32 = getelementptr inbounds [2 x i32], ptr %arrayidx31, i64 0, i64 1
  store i32 -1, ptr %arrayidx32, align 4, !tbaa !8
  %arrayidx33 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx34 = getelementptr inbounds [2 x i32], ptr %arrayidx33, i64 0, i64 0
  store i32 -1, ptr %arrayidx34, align 8, !tbaa !8
  %arrayidx35 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx36 = getelementptr inbounds [2 x i32], ptr %arrayidx35, i64 0, i64 1
  store i32 -1, ptr %arrayidx36, align 4, !tbaa !8
  %arrayidx37 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx38 = getelementptr inbounds [2 x i32], ptr %arrayidx37, i64 0, i64 0
  store i32 2147483647, ptr %arrayidx38, align 16, !tbaa !8
  %arrayidx39 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx40 = getelementptr inbounds [2 x i32], ptr %arrayidx39, i64 0, i64 1
  store i32 2147483647, ptr %arrayidx40, align 4, !tbaa !8
  %arrayidx41 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx42 = getelementptr inbounds [2 x i32], ptr %arrayidx41, i64 0, i64 0
  store i32 2147483647, ptr %arrayidx42, align 8, !tbaa !8
  %arrayidx43 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx44 = getelementptr inbounds [2 x i32], ptr %arrayidx43, i64 0, i64 1
  store i32 2147483647, ptr %arrayidx44, align 4, !tbaa !8
  %arrayidx45 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 0
  store i32 0, ptr %arrayidx45, align 4, !tbaa !8
  %arrayidx46 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 1
  store i32 0, ptr %arrayidx46, align 4, !tbaa !8
  %65 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case = getelementptr inbounds %struct.WorkType, ptr %65, i32 0, i32 51
  store i32 -1, ptr %pivot_case, align 8, !tbaa !46
  store i32 -1, ptr %bestcost, align 4, !tbaa !8
  store i32 -1, ptr %nr_out, align 4, !tbaa !8
  store i32 -1, ptr %nr_in, align 4, !tbaa !8
  %arrayidx47 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 0
  store i32 -1, ptr %arrayidx47, align 4, !tbaa !8
  %arrayidx48 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  store i32 -1, ptr %arrayidx48, align 4, !tbaa !8
  %arrayidx49 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx50 = getelementptr inbounds [2 x i32], ptr %arrayidx49, i64 0, i64 0
  store i32 -1, ptr %arrayidx50, align 16, !tbaa !8
  %arrayidx51 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx52 = getelementptr inbounds [2 x i32], ptr %arrayidx51, i64 0, i64 1
  store i32 -1, ptr %arrayidx52, align 4, !tbaa !8
  %arrayidx53 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx54 = getelementptr inbounds [2 x i32], ptr %arrayidx53, i64 0, i64 0
  store i32 -1, ptr %arrayidx54, align 8, !tbaa !8
  %arrayidx55 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx56 = getelementptr inbounds [2 x i32], ptr %arrayidx55, i64 0, i64 1
  store i32 -1, ptr %arrayidx56, align 4, !tbaa !8
  %arrayidx57 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx58 = getelementptr inbounds [2 x i32], ptr %arrayidx57, i64 0, i64 0
  store i32 -1, ptr %arrayidx58, align 16, !tbaa !8
  %arrayidx59 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx60 = getelementptr inbounds [2 x i32], ptr %arrayidx59, i64 0, i64 1
  store i32 -1, ptr %arrayidx60, align 4, !tbaa !8
  %arrayidx61 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx62 = getelementptr inbounds [2 x i32], ptr %arrayidx61, i64 0, i64 0
  store i32 -1, ptr %arrayidx62, align 8, !tbaa !8
  %arrayidx63 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx64 = getelementptr inbounds [2 x i32], ptr %arrayidx63, i64 0, i64 1
  store i32 -1, ptr %arrayidx64, align 4, !tbaa !8
  %66 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Candidates = getelementptr inbounds %struct.WorkType, ptr %66, i32 0, i32 33
  %arrayidx65 = getelementptr inbounds [128 x i32], ptr %Candidates, i64 0, i64 0
  %67 = load i32, ptr %arrayidx65, align 4, !tbaa !8
  store i32 %67, ptr %col, align 4, !tbaa !8
  %68 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %fixQ = getelementptr inbounds %struct.SymbolicType, ptr %68, i32 0, i32 39
  %69 = load i32, ptr %fixQ, align 4, !tbaa !47
  %tobool66 = icmp ne i32 %69, 0
  br i1 %tobool66, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %70 = load ptr, ptr %Col_degree, align 8, !tbaa !4
  %71 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom = sext i32 %71 to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %70, i64 %idxprom
  %72 = load i32, ptr %arrayidx67, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond68 = phi i32 [ -1, %cond.true ], [ %72, %cond.false ]
  store i32 %cond68, ptr %deg, align 4, !tbaa !8
  %73 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %74 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom69 = sext i32 %74 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %73, i64 %idxprom69
  %75 = load i32, ptr %arrayidx70, align 4, !tbaa !8
  %cmp71 = icmp sge i32 %75, 0
  br i1 %cmp71, label %if.then72, label %if.else

if.then72:                                        ; preds = %cond.end
  %76 = load i32, ptr %col, align 4, !tbaa !8
  %arrayidx73 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  store i32 %76, ptr %arrayidx73, align 4, !tbaa !8
  %77 = load i32, ptr %deg, align 4, !tbaa !8
  store i32 %77, ptr %cdeg_in, align 4, !tbaa !8
  %arrayidx74 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 0
  store i32 0, ptr %arrayidx74, align 4, !tbaa !8
  br label %if.end77

if.else:                                          ; preds = %cond.end
  %78 = load i32, ptr %col, align 4, !tbaa !8
  %arrayidx75 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  store i32 %78, ptr %arrayidx75, align 4, !tbaa !8
  %79 = load i32, ptr %deg, align 4, !tbaa !8
  store i32 %79, ptr %cdeg_out, align 4, !tbaa !8
  %arrayidx76 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  store i32 0, ptr %arrayidx76, align 4, !tbaa !8
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then72
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end77
  %80 = load i32, ptr %j, align 4, !tbaa !8
  %81 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nCandidates = getelementptr inbounds %struct.WorkType, ptr %81, i32 0, i32 34
  %82 = load i32, ptr %nCandidates, align 4, !tbaa !48
  %cmp78 = icmp slt i32 %80, %82
  br i1 %cmp78, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %83 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Candidates79 = getelementptr inbounds %struct.WorkType, ptr %83, i32 0, i32 33
  %84 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom80 = sext i32 %84 to i64
  %arrayidx81 = getelementptr inbounds [128 x i32], ptr %Candidates79, i64 0, i64 %idxprom80
  %85 = load i32, ptr %arrayidx81, align 4, !tbaa !8
  store i32 %85, ptr %col, align 4, !tbaa !8
  %86 = load ptr, ptr %Col_degree, align 8, !tbaa !4
  %87 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom82 = sext i32 %87 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %86, i64 %idxprom82
  %88 = load i32, ptr %arrayidx83, align 4, !tbaa !8
  store i32 %88, ptr %deg, align 4, !tbaa !8
  %89 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %90 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom84 = sext i32 %90 to i64
  %arrayidx85 = getelementptr inbounds i32, ptr %89, i64 %idxprom84
  %91 = load i32, ptr %arrayidx85, align 4, !tbaa !8
  %cmp86 = icmp sge i32 %91, 0
  br i1 %cmp86, label %if.then87, label %if.else97

if.then87:                                        ; preds = %for.body
  %92 = load i32, ptr %deg, align 4, !tbaa !8
  %93 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %cmp88 = icmp slt i32 %92, %93
  br i1 %cmp88, label %if.then93, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then87
  %94 = load i32, ptr %deg, align 4, !tbaa !8
  %95 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %cmp89 = icmp eq i32 %94, %95
  br i1 %cmp89, label %land.lhs.true90, label %if.end96

land.lhs.true90:                                  ; preds = %lor.lhs.false
  %96 = load i32, ptr %col, align 4, !tbaa !8
  %arrayidx91 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %97 = load i32, ptr %arrayidx91, align 4, !tbaa !8
  %cmp92 = icmp slt i32 %96, %97
  br i1 %cmp92, label %if.then93, label %if.end96

if.then93:                                        ; preds = %land.lhs.true90, %if.then87
  %98 = load i32, ptr %col, align 4, !tbaa !8
  %arrayidx94 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  store i32 %98, ptr %arrayidx94, align 4, !tbaa !8
  %99 = load i32, ptr %deg, align 4, !tbaa !8
  store i32 %99, ptr %cdeg_in, align 4, !tbaa !8
  %100 = load i32, ptr %j, align 4, !tbaa !8
  %arrayidx95 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 0
  store i32 %100, ptr %arrayidx95, align 4, !tbaa !8
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %land.lhs.true90, %lor.lhs.false
  br label %if.end108

if.else97:                                        ; preds = %for.body
  %101 = load i32, ptr %deg, align 4, !tbaa !8
  %102 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp98 = icmp slt i32 %101, %102
  br i1 %cmp98, label %if.then104, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.else97
  %103 = load i32, ptr %deg, align 4, !tbaa !8
  %104 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp100 = icmp eq i32 %103, %104
  br i1 %cmp100, label %land.lhs.true101, label %if.end107

land.lhs.true101:                                 ; preds = %lor.lhs.false99
  %105 = load i32, ptr %col, align 4, !tbaa !8
  %arrayidx102 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %106 = load i32, ptr %arrayidx102, align 4, !tbaa !8
  %cmp103 = icmp slt i32 %105, %106
  br i1 %cmp103, label %if.then104, label %if.end107

if.then104:                                       ; preds = %land.lhs.true101, %if.else97
  %107 = load i32, ptr %col, align 4, !tbaa !8
  %arrayidx105 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  store i32 %107, ptr %arrayidx105, align 4, !tbaa !8
  %108 = load i32, ptr %deg, align 4, !tbaa !8
  store i32 %108, ptr %cdeg_out, align 4, !tbaa !8
  %109 = load i32, ptr %j, align 4, !tbaa !8
  %arrayidx106 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  store i32 %109, ptr %arrayidx106, align 4, !tbaa !8
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %land.lhs.true101, %lor.lhs.false99
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end96
  br label %for.inc

for.inc:                                          ; preds = %if.end108
  %110 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %110, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %cdeg_in, align 4, !tbaa !8
  store i32 -1, ptr %cdeg_out, align 4, !tbaa !8
  %arrayidx109 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %111 = load i32, ptr %arrayidx109, align 4, !tbaa !8
  %cmp110 = icmp ne i32 %111, -1
  br i1 %cmp110, label %if.then111, label %if.end468

if.then111:                                       ; preds = %for.end
  %112 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %113 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %arrayidx112 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %114 = load i32, ptr %arrayidx112, align 4, !tbaa !8
  %idxprom113 = sext i32 %114 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %113, i64 %idxprom113
  %115 = load i32, ptr %arrayidx114, align 4, !tbaa !8
  %idx.ext = sext i32 %115 to i64
  %add.ptr = getelementptr inbounds %struct.DoubleComplex, ptr %112, i64 %idx.ext
  store ptr %add.ptr, ptr %Fs, align 8, !tbaa !4
  %116 = load ptr, ptr %Fublock, align 8, !tbaa !4
  %117 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %arrayidx115 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %118 = load i32, ptr %arrayidx115, align 4, !tbaa !8
  %idxprom116 = sext i32 %118 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %117, i64 %idxprom116
  %119 = load i32, ptr %arrayidx117, align 4, !tbaa !8
  %120 = load i32, ptr %fnr_curr, align 4, !tbaa !8
  %div = sdiv i32 %119, %120
  %idx.ext118 = sext i32 %div to i64
  %add.ptr119 = getelementptr inbounds %struct.DoubleComplex, ptr %116, i64 %idx.ext118
  store ptr %add.ptr119, ptr %Fu, align 8, !tbaa !4
  %121 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %122 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %123 = load i32, ptr %nb, align 4, !tbaa !8
  %mul = mul nsw i32 %122, %123
  %idx.ext120 = sext i32 %mul to i64
  %add.ptr121 = getelementptr inbounds %struct.DoubleComplex, ptr %121, i64 %idx.ext120
  store ptr %add.ptr121, ptr %Flu, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc130, %if.then111
  %124 = load i32, ptr %i, align 4, !tbaa !8
  %125 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp123 = icmp slt i32 %124, %125
  br i1 %cmp123, label %for.body124, label %for.end132

for.body124:                                      ; preds = %for.cond122
  %126 = load ptr, ptr %Flu, align 8, !tbaa !4
  %127 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom125 = sext i32 %127 to i64
  %arrayidx126 = getelementptr inbounds %struct.DoubleComplex, ptr %126, i64 %idxprom125
  %128 = load ptr, ptr %Fu, align 8, !tbaa !4
  %129 = load i32, ptr %i, align 4, !tbaa !8
  %130 = load i32, ptr %fnc_curr, align 4, !tbaa !8
  %mul127 = mul nsw i32 %129, %130
  %idxprom128 = sext i32 %mul127 to i64
  %arrayidx129 = getelementptr inbounds %struct.DoubleComplex, ptr %128, i64 %idxprom128
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx126, ptr align 8 %arrayidx129, i64 16, i1 false), !tbaa.struct !51
  br label %for.inc130

for.inc130:                                       ; preds = %for.body124
  %131 = load i32, ptr %i, align 4, !tbaa !8
  %inc131 = add nsw i32 %131, 1
  store i32 %inc131, ptr %i, align 4, !tbaa !8
  br label %for.cond122, !llvm.loop !53

for.end132:                                       ; preds = %for.cond122
  %132 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp133 = icmp sgt i32 %132, 1
  br i1 %cmp133, label %if.then134, label %if.end190

if.then134:                                       ; preds = %for.end132
  call void @llvm.lifetime.start.p0(i64 4, ptr %N) #6
  %133 = load i32, ptr %fnpiv, align 4, !tbaa !8
  store i32 %133, ptr %N, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %LDA) #6
  %134 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %134, ptr %LDA, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %INCX) #6
  store i32 1, ptr %INCX, align 4, !tbaa !8
  %135 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %136 = load ptr, ptr %Flu, align 8, !tbaa !4
  call void @ztrsv_(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %N, ptr noundef %135, ptr noundef %LDA, ptr noundef %136, ptr noundef %INCX)
  call void @llvm.lifetime.end.p0(i64 4, ptr %INCX) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %LDA) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %N) #6
  %137 = load i32, ptr %blas_ok, align 4, !tbaa !8
  %tobool135 = icmp ne i32 %137, 0
  br i1 %tobool135, label %if.end189, label %if.then136

if.then136:                                       ; preds = %if.then134
  call void @llvm.lifetime.start.p0(i64 8, ptr %Flub) #6
  %138 = load ptr, ptr %Flublock, align 8, !tbaa !4
  store ptr %138, ptr %Flub, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond137

for.cond137:                                      ; preds = %for.inc186, %if.then136
  %139 = load i32, ptr %j, align 4, !tbaa !8
  %140 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp138 = icmp slt i32 %139, %140
  br i1 %cmp138, label %for.body139, label %for.end188

for.body139:                                      ; preds = %for.cond137
  call void @llvm.lifetime.start.p0(i64 16, ptr %Fuj) #6
  %141 = load ptr, ptr %Flu, align 8, !tbaa !4
  %142 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom140 = sext i32 %142 to i64
  %arrayidx141 = getelementptr inbounds %struct.DoubleComplex, ptr %141, i64 %idxprom140
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %Fuj, ptr align 8 %arrayidx141, i64 16, i1 false), !tbaa.struct !51
  %143 = load i32, ptr %j, align 4, !tbaa !8
  %add = add nsw i32 %143, 1
  store i32 %add, ptr %i, align 4, !tbaa !8
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc181, %for.body139
  %144 = load i32, ptr %i, align 4, !tbaa !8
  %145 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp143 = icmp slt i32 %144, %145
  br i1 %cmp143, label %for.body144, label %for.end183

for.body144:                                      ; preds = %for.cond142
  %146 = load ptr, ptr %Flub, align 8, !tbaa !4
  %147 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom145 = sext i32 %147 to i64
  %arrayidx146 = getelementptr inbounds %struct.DoubleComplex, ptr %146, i64 %idxprom145
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx146, i32 0, i32 0
  %arrayidx147 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %148 = load double, ptr %arrayidx147, align 8, !tbaa !37
  %component148 = getelementptr inbounds %struct.DoubleComplex, ptr %Fuj, i32 0, i32 0
  %arrayidx149 = getelementptr inbounds [2 x double], ptr %component148, i64 0, i64 0
  %149 = load double, ptr %arrayidx149, align 8, !tbaa !37
  %150 = load ptr, ptr %Flub, align 8, !tbaa !4
  %151 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom151 = sext i32 %151 to i64
  %arrayidx152 = getelementptr inbounds %struct.DoubleComplex, ptr %150, i64 %idxprom151
  %component153 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [2 x double], ptr %component153, i64 0, i64 1
  %152 = load double, ptr %arrayidx154, align 8, !tbaa !37
  %component155 = getelementptr inbounds %struct.DoubleComplex, ptr %Fuj, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [2 x double], ptr %component155, i64 0, i64 1
  %153 = load double, ptr %arrayidx156, align 8, !tbaa !37
  %mul157 = fmul double %152, %153
  %neg = fneg double %mul157
  %154 = call double @llvm.fmuladd.f64(double %148, double %149, double %neg)
  %155 = load ptr, ptr %Flu, align 8, !tbaa !4
  %156 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom158 = sext i32 %156 to i64
  %arrayidx159 = getelementptr inbounds %struct.DoubleComplex, ptr %155, i64 %idxprom158
  %component160 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [2 x double], ptr %component160, i64 0, i64 0
  %157 = load double, ptr %arrayidx161, align 8, !tbaa !37
  %sub = fsub double %157, %154
  store double %sub, ptr %arrayidx161, align 8, !tbaa !37
  %158 = load ptr, ptr %Flub, align 8, !tbaa !4
  %159 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom162 = sext i32 %159 to i64
  %arrayidx163 = getelementptr inbounds %struct.DoubleComplex, ptr %158, i64 %idxprom162
  %component164 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x double], ptr %component164, i64 0, i64 1
  %160 = load double, ptr %arrayidx165, align 8, !tbaa !37
  %component166 = getelementptr inbounds %struct.DoubleComplex, ptr %Fuj, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [2 x double], ptr %component166, i64 0, i64 0
  %161 = load double, ptr %arrayidx167, align 8, !tbaa !37
  %162 = load ptr, ptr %Flub, align 8, !tbaa !4
  %163 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom169 = sext i32 %163 to i64
  %arrayidx170 = getelementptr inbounds %struct.DoubleComplex, ptr %162, i64 %idxprom169
  %component171 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx170, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [2 x double], ptr %component171, i64 0, i64 0
  %164 = load double, ptr %arrayidx172, align 8, !tbaa !37
  %component173 = getelementptr inbounds %struct.DoubleComplex, ptr %Fuj, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x double], ptr %component173, i64 0, i64 1
  %165 = load double, ptr %arrayidx174, align 8, !tbaa !37
  %mul175 = fmul double %164, %165
  %166 = call double @llvm.fmuladd.f64(double %160, double %161, double %mul175)
  %167 = load ptr, ptr %Flu, align 8, !tbaa !4
  %168 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom176 = sext i32 %168 to i64
  %arrayidx177 = getelementptr inbounds %struct.DoubleComplex, ptr %167, i64 %idxprom176
  %component178 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x double], ptr %component178, i64 0, i64 1
  %169 = load double, ptr %arrayidx179, align 8, !tbaa !37
  %sub180 = fsub double %169, %166
  store double %sub180, ptr %arrayidx179, align 8, !tbaa !37
  br label %for.inc181

for.inc181:                                       ; preds = %for.body144
  %170 = load i32, ptr %i, align 4, !tbaa !8
  %inc182 = add nsw i32 %170, 1
  store i32 %inc182, ptr %i, align 4, !tbaa !8
  br label %for.cond142, !llvm.loop !54

for.end183:                                       ; preds = %for.cond142
  %171 = load i32, ptr %nb, align 4, !tbaa !8
  %172 = load ptr, ptr %Flub, align 8, !tbaa !4
  %idx.ext184 = sext i32 %171 to i64
  %add.ptr185 = getelementptr inbounds %struct.DoubleComplex, ptr %172, i64 %idx.ext184
  store ptr %add.ptr185, ptr %Flub, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 16, ptr %Fuj) #6
  br label %for.inc186

for.inc186:                                       ; preds = %for.end183
  %173 = load i32, ptr %j, align 4, !tbaa !8
  %inc187 = add nsw i32 %173, 1
  store i32 %inc187, ptr %j, align 4, !tbaa !8
  br label %for.cond137, !llvm.loop !55

for.end188:                                       ; preds = %for.cond137
  call void @llvm.lifetime.end.p0(i64 8, ptr %Flub) #6
  br label %if.end189

if.end189:                                        ; preds = %for.end188, %if.then134
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %for.end132
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc198, %if.end190
  %174 = load i32, ptr %i, align 4, !tbaa !8
  %175 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp192 = icmp slt i32 %174, %175
  br i1 %cmp192, label %for.body193, label %for.end200

for.body193:                                      ; preds = %for.cond191
  %176 = load ptr, ptr %Wy, align 8, !tbaa !4
  %177 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom194 = sext i32 %177 to i64
  %arrayidx195 = getelementptr inbounds %struct.DoubleComplex, ptr %176, i64 %idxprom194
  %178 = load ptr, ptr %Fs, align 8, !tbaa !4
  %179 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom196 = sext i32 %179 to i64
  %arrayidx197 = getelementptr inbounds %struct.DoubleComplex, ptr %178, i64 %idxprom196
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx195, ptr align 8 %arrayidx197, i64 16, i1 false), !tbaa.struct !51
  br label %for.inc198

for.inc198:                                       ; preds = %for.body193
  %180 = load i32, ptr %i, align 4, !tbaa !8
  %inc199 = add nsw i32 %180, 1
  store i32 %inc199, ptr %i, align 4, !tbaa !8
  br label %for.cond191, !llvm.loop !56

for.end200:                                       ; preds = %for.cond191
  call void @llvm.lifetime.start.p0(i64 16, ptr %alpha) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %alpha, ptr align 16 @__const.umfzi_local_search.alpha, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %beta) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %beta, ptr align 16 @__const.umfzi_local_search.beta, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %M) #6
  %181 = load i32, ptr %fnrows, align 4, !tbaa !8
  store i32 %181, ptr %M, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %N201) #6
  %182 = load i32, ptr %fnpiv, align 4, !tbaa !8
  store i32 %182, ptr %N201, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %LDA202) #6
  %183 = load i32, ptr %fnr_curr, align 4, !tbaa !8
  store i32 %183, ptr %LDA202, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %INCX203) #6
  store i32 1, ptr %INCX203, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %INCY) #6
  store i32 1, ptr %INCY, align 4, !tbaa !8
  %arraydecay = getelementptr inbounds [2 x double], ptr %alpha, i64 0, i64 0
  %184 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %185 = load ptr, ptr %Flu, align 8, !tbaa !4
  %arraydecay204 = getelementptr inbounds [2 x double], ptr %beta, i64 0, i64 0
  %186 = load ptr, ptr %Wy, align 8, !tbaa !4
  call void @zgemv_(ptr noundef @.str.1, ptr noundef %M, ptr noundef %N201, ptr noundef %arraydecay, ptr noundef %184, ptr noundef %LDA202, ptr noundef %185, ptr noundef %INCX203, ptr noundef %arraydecay204, ptr noundef %186, ptr noundef %INCY)
  call void @llvm.lifetime.end.p0(i64 4, ptr %INCY) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %INCX203) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %LDA202) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %N201) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %M) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %beta) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %alpha) #6
  %187 = load i32, ptr %fnrows, align 4, !tbaa !8
  store i32 %187, ptr %cdeg_in, align 4, !tbaa !8
  %188 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %arrayidx205 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %189 = load i32, ptr %arrayidx205, align 4, !tbaa !8
  %idxprom206 = sext i32 %189 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %188, i64 %idxprom206
  %190 = load i32, ptr %arrayidx207, align 4, !tbaa !8
  store i32 %190, ptr %tpi, align 4, !tbaa !8
  %191 = load i32, ptr %tpi, align 4, !tbaa !8
  %tobool208 = icmp ne i32 %191, 0
  br i1 %tobool208, label %if.then209, label %if.end308

if.then209:                                       ; preds = %for.end200
  %192 = load ptr, ptr %Memory, align 8, !tbaa !4
  %193 = load i32, ptr %tpi, align 4, !tbaa !8
  %idx.ext210 = sext i32 %193 to i64
  %add.ptr211 = getelementptr inbounds %union.Unit_union, ptr %192, i64 %idx.ext210
  store ptr %add.ptr211, ptr %tp, align 8, !tbaa !4
  %194 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %194, ptr %tp1, align 8, !tbaa !4
  %195 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %195, ptr %tp2, align 8, !tbaa !4
  %196 = load ptr, ptr %tp, align 8, !tbaa !4
  %197 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx212 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %198 = load i32, ptr %arrayidx212, align 4, !tbaa !8
  %idxprom213 = sext i32 %198 to i64
  %arrayidx214 = getelementptr inbounds i32, ptr %197, i64 %idxprom213
  %199 = load i32, ptr %arrayidx214, align 4, !tbaa !8
  %idx.ext215 = sext i32 %199 to i64
  %add.ptr216 = getelementptr inbounds %struct.Tuple, ptr %196, i64 %idx.ext215
  store ptr %add.ptr216, ptr %tpend, align 8, !tbaa !4
  br label %for.cond217

for.cond217:                                      ; preds = %for.inc301, %if.then209
  %200 = load ptr, ptr %tp, align 8, !tbaa !4
  %201 = load ptr, ptr %tpend, align 8, !tbaa !4
  %cmp218 = icmp ult ptr %200, %201
  br i1 %cmp218, label %for.body219, label %for.end303

for.body219:                                      ; preds = %for.cond217
  %202 = load ptr, ptr %tp, align 8, !tbaa !4
  %e220 = getelementptr inbounds %struct.Tuple, ptr %202, i32 0, i32 0
  %203 = load i32, ptr %e220, align 4, !tbaa !57
  store i32 %203, ptr %e, align 4, !tbaa !8
  %204 = load ptr, ptr %E, align 8, !tbaa !4
  %205 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom221 = sext i32 %205 to i64
  %arrayidx222 = getelementptr inbounds i32, ptr %204, i64 %idxprom221
  %206 = load i32, ptr %arrayidx222, align 4, !tbaa !8
  %tobool223 = icmp ne i32 %206, 0
  br i1 %tobool223, label %if.end225, label %if.then224

if.then224:                                       ; preds = %for.body219
  br label %for.inc301

if.end225:                                        ; preds = %for.body219
  %207 = load ptr, ptr %tp, align 8, !tbaa !4
  %f226 = getelementptr inbounds %struct.Tuple, ptr %207, i32 0, i32 1
  %208 = load i32, ptr %f226, align 4, !tbaa !59
  store i32 %208, ptr %f, align 4, !tbaa !8
  %209 = load ptr, ptr %Memory, align 8, !tbaa !4
  %210 = load ptr, ptr %E, align 8, !tbaa !4
  %211 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom227 = sext i32 %211 to i64
  %arrayidx228 = getelementptr inbounds i32, ptr %210, i64 %idxprom227
  %212 = load i32, ptr %arrayidx228, align 4, !tbaa !8
  %idx.ext229 = sext i32 %212 to i64
  %add.ptr230 = getelementptr inbounds %union.Unit_union, ptr %209, i64 %idx.ext229
  store ptr %add.ptr230, ptr %p, align 8, !tbaa !4
  %213 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %213, ptr %ep, align 8, !tbaa !4
  %214 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr231 = getelementptr inbounds %union.Unit_union, ptr %214, i64 4
  store ptr %add.ptr231, ptr %p, align 8, !tbaa !4
  %215 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %215, ptr %Cols, align 8, !tbaa !4
  %216 = load ptr, ptr %Cols, align 8, !tbaa !4
  %217 = load i32, ptr %f, align 4, !tbaa !8
  %idxprom232 = sext i32 %217 to i64
  %arrayidx233 = getelementptr inbounds i32, ptr %216, i64 %idxprom232
  %218 = load i32, ptr %arrayidx233, align 4, !tbaa !8
  %cmp234 = icmp eq i32 %218, -1
  br i1 %cmp234, label %if.then235, label %if.end236

if.then235:                                       ; preds = %if.end225
  br label %for.inc301

if.end236:                                        ; preds = %if.end225
  %219 = load ptr, ptr %Cols, align 8, !tbaa !4
  %220 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols = getelementptr inbounds %struct.Element, ptr %220, i32 0, i32 5
  %221 = load i32, ptr %ncols, align 4, !tbaa !60
  %idx.ext237 = sext i32 %221 to i64
  %add.ptr238 = getelementptr inbounds i32, ptr %219, i64 %idx.ext237
  store ptr %add.ptr238, ptr %Rows, align 8, !tbaa !4
  %222 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrows239 = getelementptr inbounds %struct.Element, ptr %222, i32 0, i32 4
  %223 = load i32, ptr %nrows239, align 4, !tbaa !62
  store i32 %223, ptr %nrows, align 4, !tbaa !8
  %224 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols240 = getelementptr inbounds %struct.Element, ptr %224, i32 0, i32 5
  %225 = load i32, ptr %ncols240, align 4, !tbaa !60
  %226 = load i32, ptr %nrows, align 4, !tbaa !8
  %add241 = add nsw i32 %225, %226
  %conv = sext i32 %add241 to i64
  %mul242 = mul i64 4, %conv
  %add243 = add i64 %mul242, 8
  %sub244 = sub i64 %add243, 1
  %div245 = udiv i64 %sub244, 8
  %227 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr246 = getelementptr inbounds %union.Unit_union, ptr %227, i64 %div245
  store ptr %add.ptr246, ptr %p, align 8, !tbaa !4
  %228 = load ptr, ptr %p, align 8, !tbaa !4
  %229 = load i32, ptr %f, align 4, !tbaa !8
  %230 = load i32, ptr %nrows, align 4, !tbaa !8
  %mul247 = mul nsw i32 %229, %230
  %idx.ext248 = sext i32 %mul247 to i64
  %add.ptr249 = getelementptr inbounds %struct.DoubleComplex, ptr %228, i64 %idx.ext248
  store ptr %add.ptr249, ptr %C, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond250

for.cond250:                                      ; preds = %for.inc298, %if.end236
  %231 = load i32, ptr %i, align 4, !tbaa !8
  %232 = load i32, ptr %nrows, align 4, !tbaa !8
  %cmp251 = icmp slt i32 %231, %232
  br i1 %cmp251, label %for.body253, label %for.end300

for.body253:                                      ; preds = %for.cond250
  %233 = load ptr, ptr %Rows, align 8, !tbaa !4
  %234 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom254 = sext i32 %234 to i64
  %arrayidx255 = getelementptr inbounds i32, ptr %233, i64 %idxprom254
  %235 = load i32, ptr %arrayidx255, align 4, !tbaa !8
  store i32 %235, ptr %row, align 4, !tbaa !8
  %236 = load i32, ptr %row, align 4, !tbaa !8
  %cmp256 = icmp sge i32 %236, 0
  br i1 %cmp256, label %if.then258, label %if.end297

if.then258:                                       ; preds = %for.body253
  %237 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %238 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom259 = sext i32 %238 to i64
  %arrayidx260 = getelementptr inbounds i32, ptr %237, i64 %idxprom259
  %239 = load i32, ptr %arrayidx260, align 4, !tbaa !8
  store i32 %239, ptr %pos, align 4, !tbaa !8
  %240 = load i32, ptr %pos, align 4, !tbaa !8
  %cmp261 = icmp slt i32 %240, 0
  br i1 %cmp261, label %if.then263, label %if.else277

if.then263:                                       ; preds = %if.then258
  %241 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %242 = load i32, ptr %max_cdeg, align 4, !tbaa !8
  %cmp264 = icmp sge i32 %241, %242
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %if.then263
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end267:                                        ; preds = %if.then263
  %243 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %244 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %245 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom268 = sext i32 %245 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %244, i64 %idxprom268
  store i32 %243, ptr %arrayidx269, align 4, !tbaa !8
  %246 = load i32, ptr %row, align 4, !tbaa !8
  %247 = load ptr, ptr %Frows, align 8, !tbaa !4
  %248 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %idxprom270 = sext i32 %248 to i64
  %arrayidx271 = getelementptr inbounds i32, ptr %247, i64 %idxprom270
  store i32 %246, ptr %arrayidx271, align 4, !tbaa !8
  %249 = load ptr, ptr %Wy, align 8, !tbaa !4
  %250 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %inc272 = add nsw i32 %250, 1
  store i32 %inc272, ptr %cdeg_in, align 4, !tbaa !8
  %idxprom273 = sext i32 %250 to i64
  %arrayidx274 = getelementptr inbounds %struct.DoubleComplex, ptr %249, i64 %idxprom273
  %251 = load ptr, ptr %C, align 8, !tbaa !4
  %252 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom275 = sext i32 %252 to i64
  %arrayidx276 = getelementptr inbounds %struct.DoubleComplex, ptr %251, i64 %idxprom275
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx274, ptr align 8 %arrayidx276, i64 16, i1 false), !tbaa.struct !51
  br label %if.end296

if.else277:                                       ; preds = %if.then258
  %253 = load ptr, ptr %C, align 8, !tbaa !4
  %254 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom278 = sext i32 %254 to i64
  %arrayidx279 = getelementptr inbounds %struct.DoubleComplex, ptr %253, i64 %idxprom278
  %component280 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx279, i32 0, i32 0
  %arrayidx281 = getelementptr inbounds [2 x double], ptr %component280, i64 0, i64 0
  %255 = load double, ptr %arrayidx281, align 8, !tbaa !37
  %256 = load ptr, ptr %Wy, align 8, !tbaa !4
  %257 = load i32, ptr %pos, align 4, !tbaa !8
  %idxprom282 = sext i32 %257 to i64
  %arrayidx283 = getelementptr inbounds %struct.DoubleComplex, ptr %256, i64 %idxprom282
  %component284 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx283, i32 0, i32 0
  %arrayidx285 = getelementptr inbounds [2 x double], ptr %component284, i64 0, i64 0
  %258 = load double, ptr %arrayidx285, align 8, !tbaa !37
  %add286 = fadd double %258, %255
  store double %add286, ptr %arrayidx285, align 8, !tbaa !37
  %259 = load ptr, ptr %C, align 8, !tbaa !4
  %260 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom287 = sext i32 %260 to i64
  %arrayidx288 = getelementptr inbounds %struct.DoubleComplex, ptr %259, i64 %idxprom287
  %component289 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx288, i32 0, i32 0
  %arrayidx290 = getelementptr inbounds [2 x double], ptr %component289, i64 0, i64 1
  %261 = load double, ptr %arrayidx290, align 8, !tbaa !37
  %262 = load ptr, ptr %Wy, align 8, !tbaa !4
  %263 = load i32, ptr %pos, align 4, !tbaa !8
  %idxprom291 = sext i32 %263 to i64
  %arrayidx292 = getelementptr inbounds %struct.DoubleComplex, ptr %262, i64 %idxprom291
  %component293 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx292, i32 0, i32 0
  %arrayidx294 = getelementptr inbounds [2 x double], ptr %component293, i64 0, i64 1
  %264 = load double, ptr %arrayidx294, align 8, !tbaa !37
  %add295 = fadd double %264, %261
  store double %add295, ptr %arrayidx294, align 8, !tbaa !37
  br label %if.end296

if.end296:                                        ; preds = %if.else277, %if.end267
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %for.body253
  br label %for.inc298

for.inc298:                                       ; preds = %if.end297
  %265 = load i32, ptr %i, align 4, !tbaa !8
  %inc299 = add nsw i32 %265, 1
  store i32 %inc299, ptr %i, align 4, !tbaa !8
  br label %for.cond250, !llvm.loop !63

for.end300:                                       ; preds = %for.cond250
  %266 = load ptr, ptr %tp2, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.Tuple, ptr %266, i32 1
  store ptr %incdec.ptr, ptr %tp2, align 8, !tbaa !4
  %267 = load ptr, ptr %tp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %266, ptr align 4 %267, i64 8, i1 false), !tbaa.struct !64
  br label %for.inc301

for.inc301:                                       ; preds = %for.end300, %if.then235, %if.then224
  %268 = load ptr, ptr %tp, align 8, !tbaa !4
  %incdec.ptr302 = getelementptr inbounds %struct.Tuple, ptr %268, i32 1
  store ptr %incdec.ptr302, ptr %tp, align 8, !tbaa !4
  br label %for.cond217, !llvm.loop !65

for.end303:                                       ; preds = %for.cond217
  %269 = load ptr, ptr %tp2, align 8, !tbaa !4
  %270 = load ptr, ptr %tp1, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %269 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %270 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv304 = trunc i64 %sub.ptr.div to i32
  %271 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx305 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %272 = load i32, ptr %arrayidx305, align 4, !tbaa !8
  %idxprom306 = sext i32 %272 to i64
  %arrayidx307 = getelementptr inbounds i32, ptr %271, i64 %idxprom306
  store i32 %conv304, ptr %arrayidx307, align 4, !tbaa !8
  br label %if.end308

if.end308:                                        ; preds = %for.end303, %for.end200
  %273 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %274 = load i32, ptr %fnrows, align 4, !tbaa !8
  %sub309 = sub nsw i32 %273, %274
  store i32 %sub309, ptr %nr_in, align 4, !tbaa !8
  %275 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %276 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %277 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %278 = load i32, ptr %fnrows, align 4, !tbaa !8
  %279 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %280 = load ptr, ptr %Frows, align 8, !tbaa !4
  %281 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %arrayidx310 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arraydecay311 = getelementptr inbounds [2 x i32], ptr %arrayidx310, i64 0, i64 0
  %arrayidx312 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arraydecay313 = getelementptr inbounds [2 x i32], ptr %arrayidx312, i64 0, i64 0
  %282 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %283 = load ptr, ptr %Wio, align 8, !tbaa !4
  %arraydecay314 = getelementptr inbounds [2 x i32], ptr %nothing, i64 0, i64 0
  %284 = load ptr, ptr %Wy, align 8, !tbaa !4
  %arrayidx315 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %285 = load i32, ptr %arrayidx315, align 4, !tbaa !8
  %arraydecay316 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 0
  %call = call i32 @umfzi_row_search(ptr noundef %275, ptr noundef %276, ptr noundef %277, i32 noundef %278, i32 noundef %279, ptr noundef %280, ptr noundef %281, ptr noundef %arraydecay311, ptr noundef %arraydecay313, ptr noundef %282, ptr noundef %283, ptr noundef %arraydecay314, ptr noundef %284, i32 noundef %285, ptr noundef %arraydecay316)
  store i32 %call, ptr %status, align 4, !tbaa !8
  %286 = load i32, ptr %status, align 4, !tbaa !8
  %cmp317 = icmp eq i32 %286, -11
  br i1 %cmp317, label %if.then319, label %if.end320

if.then319:                                       ; preds = %if.end308
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end320:                                        ; preds = %if.end308
  %arrayidx321 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx322 = getelementptr inbounds [2 x i32], ptr %arrayidx321, i64 0, i64 0
  %287 = load i32, ptr %arrayidx322, align 16, !tbaa !8
  %cmp323 = icmp ne i32 %287, -1
  br i1 %cmp323, label %if.then325, label %if.end361

if.then325:                                       ; preds = %if.end320
  %arrayidx326 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx327 = getelementptr inbounds [2 x i32], ptr %arrayidx326, i64 0, i64 0
  %288 = load i32, ptr %arrayidx327, align 16, !tbaa !8
  %289 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub328 = sub nsw i32 %288, %289
  store i32 %sub328, ptr %nc, align 4, !tbaa !8
  %290 = load i32, ptr %nr_in, align 4, !tbaa !8
  %291 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub329 = sub nsw i32 %291, 1
  %mul330 = mul nsw i32 %290, %sub329
  %292 = load i32, ptr %nc, align 4, !tbaa !8
  %293 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %sub331 = sub nsw i32 %293, 1
  %mul332 = mul nsw i32 %292, %sub331
  %add333 = add nsw i32 %mul330, %mul332
  store i32 %add333, ptr %thiscost, align 4, !tbaa !8
  %294 = load i32, ptr %fnrows, align 4, !tbaa !8
  %sub334 = sub nsw i32 %294, 1
  %295 = load i32, ptr %nr_in, align 4, !tbaa !8
  %add335 = add nsw i32 %sub334, %295
  %arrayidx336 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx337 = getelementptr inbounds [2 x i32], ptr %arrayidx336, i64 0, i64 0
  store i32 %add335, ptr %arrayidx337, align 16, !tbaa !8
  %296 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub338 = sub nsw i32 %296, 1
  %297 = load i32, ptr %nc, align 4, !tbaa !8
  %add339 = add nsw i32 %sub338, %297
  %arrayidx340 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx341 = getelementptr inbounds [2 x i32], ptr %arrayidx340, i64 0, i64 0
  store i32 %add339, ptr %arrayidx341, align 16, !tbaa !8
  store i32 1, ptr %do_extend, align 4, !tbaa !8
  %298 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros342 = getelementptr inbounds %struct.WorkType, ptr %298, i32 0, i32 74
  %299 = load i32, ptr %fnzeros342, align 4, !tbaa !38
  %300 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %301 = load i32, ptr %nr_in, align 4, !tbaa !8
  %302 = load i32, ptr %nc, align 4, !tbaa !8
  %add343 = add nsw i32 %301, %302
  %mul344 = mul nsw i32 %300, %add343
  %add345 = add nsw i32 %299, %mul344
  store i32 %add345, ptr %fnzeros, align 4, !tbaa !8
  %303 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %add346 = add nsw i32 %303, 1
  %304 = load i32, ptr %fnrows, align 4, !tbaa !8
  %305 = load i32, ptr %nr_in, align 4, !tbaa !8
  %add347 = add nsw i32 %304, %305
  %306 = load i32, ptr %fncols, align 4, !tbaa !8
  %add348 = add nsw i32 %add347, %306
  %307 = load i32, ptr %nc, align 4, !tbaa !8
  %add349 = add nsw i32 %add348, %307
  %mul350 = mul nsw i32 %add346, %add349
  store i32 %mul350, ptr %new_LUsize, align 4, !tbaa !8
  %308 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp351 = icmp sgt i32 %308, 0
  br i1 %cmp351, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then325
  %309 = load i32, ptr %fnzeros, align 4, !tbaa !8
  %conv353 = sitofp i32 %309 to double
  %310 = load i32, ptr %new_LUsize, align 4, !tbaa !8
  %conv354 = sitofp i32 %310 to double
  %div355 = fdiv double %conv353, %conv354
  %cmp356 = fcmp ogt double %div355, 1.000000e-01
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then325
  %311 = phi i1 [ false, %if.then325 ], [ %cmp356, %land.rhs ]
  %land.ext = zext i1 %311 to i32
  store i32 %land.ext, ptr %do_update, align 4, !tbaa !8
  %312 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case358 = getelementptr inbounds %struct.WorkType, ptr %312, i32 0, i32 51
  store i32 0, ptr %pivot_case358, align 8, !tbaa !46
  %313 = load i32, ptr %thiscost, align 4, !tbaa !8
  store i32 %313, ptr %bestcost, align 4, !tbaa !8
  %314 = load i32, ptr %do_extend, align 4, !tbaa !8
  %315 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend359 = getelementptr inbounds %struct.WorkType, ptr %315, i32 0, i32 44
  store i32 %314, ptr %do_extend359, align 4, !tbaa !66
  %316 = load i32, ptr %do_update, align 4, !tbaa !8
  %317 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update360 = getelementptr inbounds %struct.WorkType, ptr %317, i32 0, i32 45
  store i32 %316, ptr %do_update360, align 8, !tbaa !67
  %318 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %318, ptr %new_fnzeros, align 4, !tbaa !8
  br label %if.end361

if.end361:                                        ; preds = %land.end, %if.end320
  %arrayidx362 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx363 = getelementptr inbounds [2 x i32], ptr %arrayidx362, i64 0, i64 1
  %319 = load i32, ptr %arrayidx363, align 4, !tbaa !8
  %cmp364 = icmp ne i32 %319, -1
  br i1 %cmp364, label %if.then366, label %if.end467

if.then366:                                       ; preds = %if.end361
  store i32 0, ptr %nc, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc382, %if.then366
  %320 = load i32, ptr %i, align 4, !tbaa !8
  %arrayidx368 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx369 = getelementptr inbounds [2 x i32], ptr %arrayidx368, i64 0, i64 1
  %321 = load i32, ptr %arrayidx369, align 4, !tbaa !8
  %cmp370 = icmp slt i32 %320, %321
  br i1 %cmp370, label %for.body372, label %for.end384

for.body372:                                      ; preds = %for.cond367
  %322 = load ptr, ptr %Wio, align 8, !tbaa !4
  %323 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom373 = sext i32 %323 to i64
  %arrayidx374 = getelementptr inbounds i32, ptr %322, i64 %idxprom373
  %324 = load i32, ptr %arrayidx374, align 4, !tbaa !8
  store i32 %324, ptr %col, align 4, !tbaa !8
  %325 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %326 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom375 = sext i32 %326 to i64
  %arrayidx376 = getelementptr inbounds i32, ptr %325, i64 %idxprom375
  %327 = load i32, ptr %arrayidx376, align 4, !tbaa !8
  %cmp377 = icmp slt i32 %327, 0
  br i1 %cmp377, label %if.then379, label %if.end381

if.then379:                                       ; preds = %for.body372
  %328 = load i32, ptr %nc, align 4, !tbaa !8
  %inc380 = add nsw i32 %328, 1
  store i32 %inc380, ptr %nc, align 4, !tbaa !8
  br label %if.end381

if.end381:                                        ; preds = %if.then379, %for.body372
  br label %for.inc382

for.inc382:                                       ; preds = %if.end381
  %329 = load i32, ptr %i, align 4, !tbaa !8
  %inc383 = add nsw i32 %329, 1
  store i32 %inc383, ptr %i, align 4, !tbaa !8
  br label %for.cond367, !llvm.loop !68

for.end384:                                       ; preds = %for.cond367
  %330 = load i32, ptr %nc, align 4, !tbaa !8
  %331 = load i32, ptr %fnrows, align 4, !tbaa !8
  %mul385 = mul nsw i32 %330, %331
  %332 = load i32, ptr %nr_in, align 4, !tbaa !8
  %sub386 = sub nsw i32 %332, 1
  %arrayidx387 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx388 = getelementptr inbounds [2 x i32], ptr %arrayidx387, i64 0, i64 1
  %333 = load i32, ptr %arrayidx388, align 4, !tbaa !8
  %sub389 = sub nsw i32 %333, 1
  %mul390 = mul nsw i32 %sub386, %sub389
  %add391 = add nsw i32 %mul385, %mul390
  store i32 %add391, ptr %thiscost, align 4, !tbaa !8
  %334 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub392 = sub nsw i32 %334, 1
  %335 = load i32, ptr %nc, align 4, !tbaa !8
  %add393 = add nsw i32 %sub392, %335
  %arrayidx394 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx395 = getelementptr inbounds [2 x i32], ptr %arrayidx394, i64 0, i64 1
  %336 = load i32, ptr %arrayidx395, align 4, !tbaa !8
  %sub396 = sub nsw i32 %336, 1
  %sub397 = sub nsw i32 %add393, %sub396
  store i32 %sub397, ptr %extra_cols, align 4, !tbaa !8
  %337 = load i32, ptr %nr_in, align 4, !tbaa !8
  %sub398 = sub nsw i32 %337, 1
  %338 = load i32, ptr %extra_cols, align 4, !tbaa !8
  %mul399 = mul nsw i32 %sub398, %338
  store i32 %mul399, ptr %extra_zeros, align 4, !tbaa !8
  %339 = load i32, ptr %fnrows, align 4, !tbaa !8
  %340 = load i32, ptr %nr_in, align 4, !tbaa !8
  %sub400 = sub nsw i32 %340, 1
  %add401 = add nsw i32 %339, %sub400
  %arrayidx402 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx403 = getelementptr inbounds [2 x i32], ptr %arrayidx402, i64 0, i64 1
  store i32 %add401, ptr %arrayidx403, align 4, !tbaa !8
  %341 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub404 = sub nsw i32 %341, 1
  %342 = load i32, ptr %nc, align 4, !tbaa !8
  %add405 = add nsw i32 %sub404, %342
  %arrayidx406 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx407 = getelementptr inbounds [2 x i32], ptr %arrayidx406, i64 0, i64 1
  store i32 %add405, ptr %arrayidx407, align 4, !tbaa !8
  %arrayidx408 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx409 = getelementptr inbounds [2 x i32], ptr %arrayidx408, i64 0, i64 1
  %343 = load i32, ptr %arrayidx409, align 4, !tbaa !8
  %arrayidx410 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx411 = getelementptr inbounds [2 x i32], ptr %arrayidx410, i64 0, i64 1
  %344 = load i32, ptr %arrayidx411, align 4, !tbaa !8
  %mul412 = mul nsw i32 %343, %344
  store i32 %mul412, ptr %relaxed_front, align 4, !tbaa !8
  %345 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %cmp413 = icmp eq i32 %345, 0
  br i1 %cmp413, label %if.then415, label %if.else416

if.then415:                                       ; preds = %for.end384
  store i32 1, ptr %do_extend, align 4, !tbaa !8
  br label %if.end422

if.else416:                                       ; preds = %for.end384
  %346 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %conv417 = sitofp i32 %346 to double
  %347 = load double, ptr %relax1, align 8, !tbaa !37
  %348 = load i32, ptr %relaxed_front, align 4, !tbaa !8
  %conv418 = sitofp i32 %348 to double
  %mul419 = fmul double %347, %conv418
  %cmp420 = fcmp olt double %conv417, %mul419
  %conv421 = zext i1 %cmp420 to i32
  store i32 %conv421, ptr %do_extend, align 4, !tbaa !8
  br label %if.end422

if.end422:                                        ; preds = %if.else416, %if.then415
  %349 = load i32, ptr %do_extend, align 4, !tbaa !8
  %tobool423 = icmp ne i32 %349, 0
  br i1 %tobool423, label %if.then424, label %if.else445

if.then424:                                       ; preds = %if.end422
  %350 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %351 = load i32, ptr %thiscost, align 4, !tbaa !8
  %add425 = add nsw i32 %351, %350
  store i32 %add425, ptr %thiscost, align 4, !tbaa !8
  %352 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros426 = getelementptr inbounds %struct.WorkType, ptr %352, i32 0, i32 74
  %353 = load i32, ptr %fnzeros426, align 4, !tbaa !38
  %354 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %355 = load i32, ptr %nr_in, align 4, !tbaa !8
  %356 = load i32, ptr %nc, align 4, !tbaa !8
  %add427 = add nsw i32 %355, %356
  %mul428 = mul nsw i32 %354, %add427
  %add429 = add nsw i32 %353, %mul428
  store i32 %add429, ptr %fnzeros, align 4, !tbaa !8
  %357 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %add430 = add nsw i32 %357, 1
  %358 = load i32, ptr %fnrows, align 4, !tbaa !8
  %359 = load i32, ptr %nr_in, align 4, !tbaa !8
  %add431 = add nsw i32 %358, %359
  %360 = load i32, ptr %fncols, align 4, !tbaa !8
  %add432 = add nsw i32 %add431, %360
  %361 = load i32, ptr %nc, align 4, !tbaa !8
  %add433 = add nsw i32 %add432, %361
  %mul434 = mul nsw i32 %add430, %add433
  store i32 %mul434, ptr %new_LUsize, align 4, !tbaa !8
  %362 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp435 = icmp sgt i32 %362, 0
  br i1 %cmp435, label %land.rhs437, label %land.end443

land.rhs437:                                      ; preds = %if.then424
  %363 = load i32, ptr %fnzeros, align 4, !tbaa !8
  %conv438 = sitofp i32 %363 to double
  %364 = load i32, ptr %new_LUsize, align 4, !tbaa !8
  %conv439 = sitofp i32 %364 to double
  %div440 = fdiv double %conv438, %conv439
  %cmp441 = fcmp ogt double %div440, 1.250000e-01
  br label %land.end443

land.end443:                                      ; preds = %land.rhs437, %if.then424
  %365 = phi i1 [ false, %if.then424 ], [ %cmp441, %land.rhs437 ]
  %land.ext444 = zext i1 %365 to i32
  store i32 %land.ext444, ptr %do_update, align 4, !tbaa !8
  br label %if.end456

if.else445:                                       ; preds = %if.end422
  %366 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp446 = icmp sgt i32 %366, 0
  %conv447 = zext i1 %cmp446 to i32
  store i32 %conv447, ptr %do_update, align 4, !tbaa !8
  store i32 0, ptr %fnzeros, align 4, !tbaa !8
  %367 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %sub448 = sub nsw i32 %367, 1
  %arrayidx449 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx450 = getelementptr inbounds [2 x i32], ptr %arrayidx449, i64 0, i64 1
  store i32 %sub448, ptr %arrayidx450, align 4, !tbaa !8
  %arrayidx451 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx452 = getelementptr inbounds [2 x i32], ptr %arrayidx451, i64 0, i64 1
  %368 = load i32, ptr %arrayidx452, align 4, !tbaa !8
  %sub453 = sub nsw i32 %368, 1
  %arrayidx454 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx455 = getelementptr inbounds [2 x i32], ptr %arrayidx454, i64 0, i64 1
  store i32 %sub453, ptr %arrayidx455, align 4, !tbaa !8
  br label %if.end456

if.end456:                                        ; preds = %if.else445, %land.end443
  %369 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp457 = icmp eq i32 %369, -1
  br i1 %cmp457, label %if.then462, label %lor.lhs.false459

lor.lhs.false459:                                 ; preds = %if.end456
  %370 = load i32, ptr %thiscost, align 4, !tbaa !8
  %371 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp460 = icmp slt i32 %370, %371
  br i1 %cmp460, label %if.then462, label %if.end466

if.then462:                                       ; preds = %lor.lhs.false459, %if.end456
  %372 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case463 = getelementptr inbounds %struct.WorkType, ptr %372, i32 0, i32 51
  store i32 1, ptr %pivot_case463, align 8, !tbaa !46
  %373 = load i32, ptr %thiscost, align 4, !tbaa !8
  store i32 %373, ptr %bestcost, align 4, !tbaa !8
  %374 = load i32, ptr %do_extend, align 4, !tbaa !8
  %375 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend464 = getelementptr inbounds %struct.WorkType, ptr %375, i32 0, i32 44
  store i32 %374, ptr %do_extend464, align 4, !tbaa !66
  %376 = load i32, ptr %do_update, align 4, !tbaa !8
  %377 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update465 = getelementptr inbounds %struct.WorkType, ptr %377, i32 0, i32 45
  store i32 %376, ptr %do_update465, align 8, !tbaa !67
  %378 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %378, ptr %new_fnzeros, align 4, !tbaa !8
  br label %if.end466

if.end466:                                        ; preds = %if.then462, %lor.lhs.false459
  br label %if.end467

if.end467:                                        ; preds = %if.end466, %if.end361
  br label %if.end468

if.end468:                                        ; preds = %if.end467, %for.end
  %379 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp469 = icmp ne i32 %379, 0
  br i1 %cmp469, label %land.rhs471, label %land.end475

land.rhs471:                                      ; preds = %if.end468
  %arrayidx472 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %380 = load i32, ptr %arrayidx472, align 4, !tbaa !8
  %cmp473 = icmp ne i32 %380, -1
  br label %land.end475

land.end475:                                      ; preds = %land.rhs471, %if.end468
  %381 = phi i1 [ false, %if.end468 ], [ %cmp473, %land.rhs471 ]
  %land.ext476 = zext i1 %381 to i32
  store i32 %land.ext476, ptr %search_pivcol_out, align 4, !tbaa !8
  %382 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %prefer_diagonal477 = getelementptr inbounds %struct.SymbolicType, ptr %382, i32 0, i32 40
  %383 = load i32, ptr %prefer_diagonal477, align 8, !tbaa !35
  %tobool478 = icmp ne i32 %383, 0
  br i1 %tobool478, label %if.then479, label %if.end488

if.then479:                                       ; preds = %land.end475
  %384 = load i32, ptr %search_pivcol_out, align 4, !tbaa !8
  %tobool480 = icmp ne i32 %384, 0
  br i1 %tobool480, label %land.rhs481, label %land.end486

land.rhs481:                                      ; preds = %if.then479
  %arrayidx482 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx483 = getelementptr inbounds [2 x i32], ptr %arrayidx482, i64 0, i64 0
  %385 = load i32, ptr %arrayidx483, align 16, !tbaa !8
  %cmp484 = icmp eq i32 %385, -1
  br label %land.end486

land.end486:                                      ; preds = %land.rhs481, %if.then479
  %386 = phi i1 [ false, %if.then479 ], [ %cmp484, %land.rhs481 ]
  %land.ext487 = zext i1 %386 to i32
  store i32 %land.ext487, ptr %search_pivcol_out, align 4, !tbaa !8
  br label %if.end488

if.end488:                                        ; preds = %land.end486, %land.end475
  %387 = load i32, ptr %search_pivcol_out, align 4, !tbaa !8
  %tobool489 = icmp ne i32 %387, 0
  br i1 %tobool489, label %if.then490, label %if.end965

if.then490:                                       ; preds = %if.end488
  store i32 0, ptr %cdeg_out, align 4, !tbaa !8
  %388 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %arrayidx491 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %389 = load i32, ptr %arrayidx491, align 4, !tbaa !8
  %idxprom492 = sext i32 %389 to i64
  %arrayidx493 = getelementptr inbounds i32, ptr %388, i64 %idxprom492
  %390 = load i32, ptr %arrayidx493, align 4, !tbaa !8
  store i32 %390, ptr %tpi, align 4, !tbaa !8
  %391 = load i32, ptr %tpi, align 4, !tbaa !8
  %tobool494 = icmp ne i32 %391, 0
  br i1 %tobool494, label %if.then495, label %if.end603

if.then495:                                       ; preds = %if.then490
  %392 = load ptr, ptr %Memory, align 8, !tbaa !4
  %393 = load i32, ptr %tpi, align 4, !tbaa !8
  %idx.ext496 = sext i32 %393 to i64
  %add.ptr497 = getelementptr inbounds %union.Unit_union, ptr %392, i64 %idx.ext496
  store ptr %add.ptr497, ptr %tp, align 8, !tbaa !4
  %394 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %394, ptr %tp1, align 8, !tbaa !4
  %395 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %395, ptr %tp2, align 8, !tbaa !4
  %396 = load ptr, ptr %tp, align 8, !tbaa !4
  %397 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx498 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %398 = load i32, ptr %arrayidx498, align 4, !tbaa !8
  %idxprom499 = sext i32 %398 to i64
  %arrayidx500 = getelementptr inbounds i32, ptr %397, i64 %idxprom499
  %399 = load i32, ptr %arrayidx500, align 4, !tbaa !8
  %idx.ext501 = sext i32 %399 to i64
  %add.ptr502 = getelementptr inbounds %struct.Tuple, ptr %396, i64 %idx.ext501
  store ptr %add.ptr502, ptr %tpend, align 8, !tbaa !4
  br label %for.cond503

for.cond503:                                      ; preds = %for.inc592, %if.then495
  %400 = load ptr, ptr %tp, align 8, !tbaa !4
  %401 = load ptr, ptr %tpend, align 8, !tbaa !4
  %cmp504 = icmp ult ptr %400, %401
  br i1 %cmp504, label %for.body506, label %for.end594

for.body506:                                      ; preds = %for.cond503
  %402 = load ptr, ptr %tp, align 8, !tbaa !4
  %e507 = getelementptr inbounds %struct.Tuple, ptr %402, i32 0, i32 0
  %403 = load i32, ptr %e507, align 4, !tbaa !57
  store i32 %403, ptr %e, align 4, !tbaa !8
  %404 = load ptr, ptr %E, align 8, !tbaa !4
  %405 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom508 = sext i32 %405 to i64
  %arrayidx509 = getelementptr inbounds i32, ptr %404, i64 %idxprom508
  %406 = load i32, ptr %arrayidx509, align 4, !tbaa !8
  %tobool510 = icmp ne i32 %406, 0
  br i1 %tobool510, label %if.end512, label %if.then511

if.then511:                                       ; preds = %for.body506
  br label %for.inc592

if.end512:                                        ; preds = %for.body506
  %407 = load ptr, ptr %tp, align 8, !tbaa !4
  %f513 = getelementptr inbounds %struct.Tuple, ptr %407, i32 0, i32 1
  %408 = load i32, ptr %f513, align 4, !tbaa !59
  store i32 %408, ptr %f, align 4, !tbaa !8
  %409 = load ptr, ptr %Memory, align 8, !tbaa !4
  %410 = load ptr, ptr %E, align 8, !tbaa !4
  %411 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom514 = sext i32 %411 to i64
  %arrayidx515 = getelementptr inbounds i32, ptr %410, i64 %idxprom514
  %412 = load i32, ptr %arrayidx515, align 4, !tbaa !8
  %idx.ext516 = sext i32 %412 to i64
  %add.ptr517 = getelementptr inbounds %union.Unit_union, ptr %409, i64 %idx.ext516
  store ptr %add.ptr517, ptr %p, align 8, !tbaa !4
  %413 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %413, ptr %ep, align 8, !tbaa !4
  %414 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr518 = getelementptr inbounds %union.Unit_union, ptr %414, i64 4
  store ptr %add.ptr518, ptr %p, align 8, !tbaa !4
  %415 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %415, ptr %Cols, align 8, !tbaa !4
  %416 = load ptr, ptr %Cols, align 8, !tbaa !4
  %417 = load i32, ptr %f, align 4, !tbaa !8
  %idxprom519 = sext i32 %417 to i64
  %arrayidx520 = getelementptr inbounds i32, ptr %416, i64 %idxprom519
  %418 = load i32, ptr %arrayidx520, align 4, !tbaa !8
  %cmp521 = icmp eq i32 %418, -1
  br i1 %cmp521, label %if.then523, label %if.end524

if.then523:                                       ; preds = %if.end512
  br label %for.inc592

if.end524:                                        ; preds = %if.end512
  %419 = load ptr, ptr %Cols, align 8, !tbaa !4
  %420 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols525 = getelementptr inbounds %struct.Element, ptr %420, i32 0, i32 5
  %421 = load i32, ptr %ncols525, align 4, !tbaa !60
  %idx.ext526 = sext i32 %421 to i64
  %add.ptr527 = getelementptr inbounds i32, ptr %419, i64 %idx.ext526
  store ptr %add.ptr527, ptr %Rows, align 8, !tbaa !4
  %422 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrows528 = getelementptr inbounds %struct.Element, ptr %422, i32 0, i32 4
  %423 = load i32, ptr %nrows528, align 4, !tbaa !62
  store i32 %423, ptr %nrows, align 4, !tbaa !8
  %424 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols529 = getelementptr inbounds %struct.Element, ptr %424, i32 0, i32 5
  %425 = load i32, ptr %ncols529, align 4, !tbaa !60
  %426 = load i32, ptr %nrows, align 4, !tbaa !8
  %add530 = add nsw i32 %425, %426
  %conv531 = sext i32 %add530 to i64
  %mul532 = mul i64 4, %conv531
  %add533 = add i64 %mul532, 8
  %sub534 = sub i64 %add533, 1
  %div535 = udiv i64 %sub534, 8
  %427 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr536 = getelementptr inbounds %union.Unit_union, ptr %427, i64 %div535
  store ptr %add.ptr536, ptr %p, align 8, !tbaa !4
  %428 = load ptr, ptr %p, align 8, !tbaa !4
  %429 = load i32, ptr %f, align 4, !tbaa !8
  %430 = load i32, ptr %nrows, align 4, !tbaa !8
  %mul537 = mul nsw i32 %429, %430
  %idx.ext538 = sext i32 %mul537 to i64
  %add.ptr539 = getelementptr inbounds %struct.DoubleComplex, ptr %428, i64 %idx.ext538
  store ptr %add.ptr539, ptr %C, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond540

for.cond540:                                      ; preds = %for.inc588, %if.end524
  %431 = load i32, ptr %i, align 4, !tbaa !8
  %432 = load i32, ptr %nrows, align 4, !tbaa !8
  %cmp541 = icmp slt i32 %431, %432
  br i1 %cmp541, label %for.body543, label %for.end590

for.body543:                                      ; preds = %for.cond540
  %433 = load ptr, ptr %Rows, align 8, !tbaa !4
  %434 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom544 = sext i32 %434 to i64
  %arrayidx545 = getelementptr inbounds i32, ptr %433, i64 %idxprom544
  %435 = load i32, ptr %arrayidx545, align 4, !tbaa !8
  store i32 %435, ptr %row, align 4, !tbaa !8
  %436 = load i32, ptr %row, align 4, !tbaa !8
  %cmp546 = icmp sge i32 %436, 0
  br i1 %cmp546, label %if.then548, label %if.end587

if.then548:                                       ; preds = %for.body543
  %437 = load ptr, ptr %Wp, align 8, !tbaa !4
  %438 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom549 = sext i32 %438 to i64
  %arrayidx550 = getelementptr inbounds i32, ptr %437, i64 %idxprom549
  %439 = load i32, ptr %arrayidx550, align 4, !tbaa !8
  store i32 %439, ptr %pos, align 4, !tbaa !8
  %440 = load i32, ptr %pos, align 4, !tbaa !8
  %cmp551 = icmp slt i32 %440, 0
  br i1 %cmp551, label %if.then553, label %if.else567

if.then553:                                       ; preds = %if.then548
  %441 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %442 = load i32, ptr %max_cdeg, align 4, !tbaa !8
  %cmp554 = icmp sge i32 %441, %442
  br i1 %cmp554, label %if.then556, label %if.end557

if.then556:                                       ; preds = %if.then553
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end557:                                        ; preds = %if.then553
  %443 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %444 = load ptr, ptr %Wp, align 8, !tbaa !4
  %445 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom558 = sext i32 %445 to i64
  %arrayidx559 = getelementptr inbounds i32, ptr %444, i64 %idxprom558
  store i32 %443, ptr %arrayidx559, align 4, !tbaa !8
  %446 = load i32, ptr %row, align 4, !tbaa !8
  %447 = load ptr, ptr %Wm, align 8, !tbaa !4
  %448 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %idxprom560 = sext i32 %448 to i64
  %arrayidx561 = getelementptr inbounds i32, ptr %447, i64 %idxprom560
  store i32 %446, ptr %arrayidx561, align 4, !tbaa !8
  %449 = load ptr, ptr %Wx, align 8, !tbaa !4
  %450 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %inc562 = add nsw i32 %450, 1
  store i32 %inc562, ptr %cdeg_out, align 4, !tbaa !8
  %idxprom563 = sext i32 %450 to i64
  %arrayidx564 = getelementptr inbounds %struct.DoubleComplex, ptr %449, i64 %idxprom563
  %451 = load ptr, ptr %C, align 8, !tbaa !4
  %452 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom565 = sext i32 %452 to i64
  %arrayidx566 = getelementptr inbounds %struct.DoubleComplex, ptr %451, i64 %idxprom565
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx564, ptr align 8 %arrayidx566, i64 16, i1 false), !tbaa.struct !51
  br label %if.end586

if.else567:                                       ; preds = %if.then548
  %453 = load ptr, ptr %C, align 8, !tbaa !4
  %454 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom568 = sext i32 %454 to i64
  %arrayidx569 = getelementptr inbounds %struct.DoubleComplex, ptr %453, i64 %idxprom568
  %component570 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx569, i32 0, i32 0
  %arrayidx571 = getelementptr inbounds [2 x double], ptr %component570, i64 0, i64 0
  %455 = load double, ptr %arrayidx571, align 8, !tbaa !37
  %456 = load ptr, ptr %Wx, align 8, !tbaa !4
  %457 = load i32, ptr %pos, align 4, !tbaa !8
  %idxprom572 = sext i32 %457 to i64
  %arrayidx573 = getelementptr inbounds %struct.DoubleComplex, ptr %456, i64 %idxprom572
  %component574 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx573, i32 0, i32 0
  %arrayidx575 = getelementptr inbounds [2 x double], ptr %component574, i64 0, i64 0
  %458 = load double, ptr %arrayidx575, align 8, !tbaa !37
  %add576 = fadd double %458, %455
  store double %add576, ptr %arrayidx575, align 8, !tbaa !37
  %459 = load ptr, ptr %C, align 8, !tbaa !4
  %460 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom577 = sext i32 %460 to i64
  %arrayidx578 = getelementptr inbounds %struct.DoubleComplex, ptr %459, i64 %idxprom577
  %component579 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx578, i32 0, i32 0
  %arrayidx580 = getelementptr inbounds [2 x double], ptr %component579, i64 0, i64 1
  %461 = load double, ptr %arrayidx580, align 8, !tbaa !37
  %462 = load ptr, ptr %Wx, align 8, !tbaa !4
  %463 = load i32, ptr %pos, align 4, !tbaa !8
  %idxprom581 = sext i32 %463 to i64
  %arrayidx582 = getelementptr inbounds %struct.DoubleComplex, ptr %462, i64 %idxprom581
  %component583 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx582, i32 0, i32 0
  %arrayidx584 = getelementptr inbounds [2 x double], ptr %component583, i64 0, i64 1
  %464 = load double, ptr %arrayidx584, align 8, !tbaa !37
  %add585 = fadd double %464, %461
  store double %add585, ptr %arrayidx584, align 8, !tbaa !37
  br label %if.end586

if.end586:                                        ; preds = %if.else567, %if.end557
  br label %if.end587

if.end587:                                        ; preds = %if.end586, %for.body543
  br label %for.inc588

for.inc588:                                       ; preds = %if.end587
  %465 = load i32, ptr %i, align 4, !tbaa !8
  %inc589 = add nsw i32 %465, 1
  store i32 %inc589, ptr %i, align 4, !tbaa !8
  br label %for.cond540, !llvm.loop !69

for.end590:                                       ; preds = %for.cond540
  %466 = load ptr, ptr %tp2, align 8, !tbaa !4
  %incdec.ptr591 = getelementptr inbounds %struct.Tuple, ptr %466, i32 1
  store ptr %incdec.ptr591, ptr %tp2, align 8, !tbaa !4
  %467 = load ptr, ptr %tp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %466, ptr align 4 %467, i64 8, i1 false), !tbaa.struct !64
  br label %for.inc592

for.inc592:                                       ; preds = %for.end590, %if.then523, %if.then511
  %468 = load ptr, ptr %tp, align 8, !tbaa !4
  %incdec.ptr593 = getelementptr inbounds %struct.Tuple, ptr %468, i32 1
  store ptr %incdec.ptr593, ptr %tp, align 8, !tbaa !4
  br label %for.cond503, !llvm.loop !70

for.end594:                                       ; preds = %for.cond503
  %469 = load ptr, ptr %tp2, align 8, !tbaa !4
  %470 = load ptr, ptr %tp1, align 8, !tbaa !4
  %sub.ptr.lhs.cast595 = ptrtoint ptr %469 to i64
  %sub.ptr.rhs.cast596 = ptrtoint ptr %470 to i64
  %sub.ptr.sub597 = sub i64 %sub.ptr.lhs.cast595, %sub.ptr.rhs.cast596
  %sub.ptr.div598 = sdiv exact i64 %sub.ptr.sub597, 8
  %conv599 = trunc i64 %sub.ptr.div598 to i32
  %471 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx600 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %472 = load i32, ptr %arrayidx600, align 4, !tbaa !8
  %idxprom601 = sext i32 %472 to i64
  %arrayidx602 = getelementptr inbounds i32, ptr %471, i64 %idxprom601
  store i32 %conv599, ptr %arrayidx602, align 4, !tbaa !8
  br label %if.end603

if.end603:                                        ; preds = %for.end594, %if.then490
  %473 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %474 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %475 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %476 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %477 = load ptr, ptr %Wm, align 8, !tbaa !4
  %478 = load ptr, ptr %Wp, align 8, !tbaa !4
  %arrayidx604 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arraydecay605 = getelementptr inbounds [2 x i32], ptr %arrayidx604, i64 0, i64 0
  %arrayidx606 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arraydecay607 = getelementptr inbounds [2 x i32], ptr %arrayidx606, i64 0, i64 0
  %479 = load ptr, ptr %Woi, align 8, !tbaa !4
  %480 = load ptr, ptr %Woo, align 8, !tbaa !4
  %arrayidx608 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arraydecay609 = getelementptr inbounds [2 x i32], ptr %arrayidx608, i64 0, i64 0
  %481 = load ptr, ptr %Wx, align 8, !tbaa !4
  %arrayidx610 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %482 = load i32, ptr %arrayidx610, align 4, !tbaa !8
  %arraydecay611 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 0
  %call612 = call i32 @umfzi_row_search(ptr noundef %473, ptr noundef %474, ptr noundef %475, i32 noundef 0, i32 noundef %476, ptr noundef %477, ptr noundef %478, ptr noundef %arraydecay605, ptr noundef %arraydecay607, ptr noundef %479, ptr noundef %480, ptr noundef %arraydecay609, ptr noundef %481, i32 noundef %482, ptr noundef %arraydecay611)
  store i32 %call612, ptr %status, align 4, !tbaa !8
  %483 = load i32, ptr %status, align 4, !tbaa !8
  %cmp613 = icmp eq i32 %483, -11
  br i1 %cmp613, label %if.then615, label %if.end616

if.then615:                                       ; preds = %if.end603
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end616:                                        ; preds = %if.end603
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond617

for.cond617:                                      ; preds = %for.inc625, %if.end616
  %484 = load i32, ptr %i, align 4, !tbaa !8
  %485 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp618 = icmp slt i32 %484, %485
  br i1 %cmp618, label %for.body620, label %for.end627

for.body620:                                      ; preds = %for.cond617
  %486 = load ptr, ptr %Wp, align 8, !tbaa !4
  %487 = load ptr, ptr %Wm, align 8, !tbaa !4
  %488 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom621 = sext i32 %488 to i64
  %arrayidx622 = getelementptr inbounds i32, ptr %487, i64 %idxprom621
  %489 = load i32, ptr %arrayidx622, align 4, !tbaa !8
  %idxprom623 = sext i32 %489 to i64
  %arrayidx624 = getelementptr inbounds i32, ptr %486, i64 %idxprom623
  store i32 -1, ptr %arrayidx624, align 4, !tbaa !8
  br label %for.inc625

for.inc625:                                       ; preds = %for.body620
  %490 = load i32, ptr %i, align 4, !tbaa !8
  %inc626 = add nsw i32 %490, 1
  store i32 %inc626, ptr %i, align 4, !tbaa !8
  br label %for.cond617, !llvm.loop !71

for.end627:                                       ; preds = %for.cond617
  %491 = load i32, ptr %status, align 4, !tbaa !8
  %cmp628 = icmp eq i32 %491, 1
  br i1 %cmp628, label %if.then630, label %if.end642

if.then630:                                       ; preds = %for.end627
  %arrayidx631 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  %492 = load i32, ptr %arrayidx631, align 4, !tbaa !8
  %493 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %494 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  call void @remove_candidate(i32 noundef %492, ptr noundef %493, ptr noundef %494)
  %495 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ndiscard = getelementptr inbounds %struct.WorkType, ptr %495, i32 0, i32 24
  %496 = load i32, ptr %ndiscard, align 8, !tbaa !72
  %inc632 = add nsw i32 %496, 1
  store i32 %inc632, ptr %ndiscard, align 8, !tbaa !72
  %497 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx633 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %498 = load i32, ptr %arrayidx633, align 4, !tbaa !8
  %idxprom634 = sext i32 %498 to i64
  %arrayidx635 = getelementptr inbounds i32, ptr %497, i64 %idxprom634
  store i32 0, ptr %arrayidx635, align 4, !tbaa !8
  %499 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %500 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %arrayidx636 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %501 = load i32, ptr %arrayidx636, align 4, !tbaa !8
  %idxprom637 = sext i32 %501 to i64
  %arrayidx638 = getelementptr inbounds i32, ptr %500, i64 %idxprom637
  %502 = load i32, ptr %arrayidx638, align 4, !tbaa !8
  call void @umfzi_mem_free_tail_block(ptr noundef %499, i32 noundef %502)
  %503 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %arrayidx639 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %504 = load i32, ptr %arrayidx639, align 4, !tbaa !8
  %idxprom640 = sext i32 %504 to i64
  %arrayidx641 = getelementptr inbounds i32, ptr %503, i64 %idxprom640
  store i32 0, ptr %arrayidx641, align 4, !tbaa !8
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end642:                                        ; preds = %for.end627
  %arrayidx643 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 0
  %505 = load i32, ptr %arrayidx643, align 4, !tbaa !8
  %tobool644 = icmp ne i32 %505, 0
  br i1 %tobool644, label %if.then645, label %if.end650

if.then645:                                       ; preds = %if.end642
  %506 = load ptr, ptr %Fcols, align 8, !tbaa !4
  store ptr %506, ptr %Woi, align 8, !tbaa !4
  %arrayidx646 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx647 = getelementptr inbounds [2 x i32], ptr %arrayidx646, i64 0, i64 0
  %507 = load i32, ptr %arrayidx647, align 16, !tbaa !8
  %arrayidx648 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx649 = getelementptr inbounds [2 x i32], ptr %arrayidx648, i64 0, i64 0
  store i32 %507, ptr %arrayidx649, align 8, !tbaa !8
  br label %if.end650

if.end650:                                        ; preds = %if.then645, %if.end642
  %arrayidx651 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 1
  %508 = load i32, ptr %arrayidx651, align 4, !tbaa !8
  %tobool652 = icmp ne i32 %508, 0
  br i1 %tobool652, label %if.then653, label %if.end658

if.then653:                                       ; preds = %if.end650
  %509 = load ptr, ptr %Wio, align 8, !tbaa !4
  store ptr %509, ptr %Woo, align 8, !tbaa !4
  %arrayidx654 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx655 = getelementptr inbounds [2 x i32], ptr %arrayidx654, i64 0, i64 1
  %510 = load i32, ptr %arrayidx655, align 4, !tbaa !8
  %arrayidx656 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx657 = getelementptr inbounds [2 x i32], ptr %arrayidx656, i64 0, i64 1
  store i32 %510, ptr %arrayidx657, align 4, !tbaa !8
  br label %if.end658

if.end658:                                        ; preds = %if.then653, %if.end650
  %arrayidx659 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx660 = getelementptr inbounds [2 x i32], ptr %arrayidx659, i64 0, i64 0
  %511 = load i32, ptr %arrayidx660, align 8, !tbaa !8
  %cmp661 = icmp ne i32 %511, -1
  br i1 %cmp661, label %if.then663, label %if.end784

if.then663:                                       ; preds = %if.end658
  %512 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp664 = icmp eq i32 %512, 0
  %conv665 = zext i1 %cmp664 to i32
  store i32 %conv665, ptr %did_rowmerge, align 4, !tbaa !8
  %513 = load i32, ptr %did_rowmerge, align 4, !tbaa !8
  %tobool666 = icmp ne i32 %513, 0
  br i1 %tobool666, label %if.then667, label %if.end677

if.then667:                                       ; preds = %if.then663
  %arrayidx668 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx669 = getelementptr inbounds [2 x i32], ptr %arrayidx668, i64 0, i64 0
  %514 = load i32, ptr %arrayidx669, align 8, !tbaa !8
  %515 = load ptr, ptr %Wm, align 8, !tbaa !4
  %arrayidx670 = getelementptr inbounds i32, ptr %515, i64 0
  store i32 %514, ptr %arrayidx670, align 4, !tbaa !8
  %516 = load ptr, ptr %Wx, align 8, !tbaa !4
  %arrayidx671 = getelementptr inbounds %struct.DoubleComplex, ptr %516, i64 0
  %component672 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx671, i32 0, i32 0
  %arrayidx673 = getelementptr inbounds [2 x double], ptr %component672, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx673, align 8, !tbaa !37
  %517 = load ptr, ptr %Wx, align 8, !tbaa !4
  %arrayidx674 = getelementptr inbounds %struct.DoubleComplex, ptr %517, i64 0
  %component675 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx674, i32 0, i32 0
  %arrayidx676 = getelementptr inbounds [2 x double], ptr %component675, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx676, align 8, !tbaa !37
  store i32 1, ptr %cdeg_out, align 4, !tbaa !8
  br label %if.end677

if.end677:                                        ; preds = %if.then667, %if.then663
  %arrayidx678 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx679 = getelementptr inbounds [2 x i32], ptr %arrayidx678, i64 0, i64 0
  %518 = load i32, ptr %arrayidx679, align 8, !tbaa !8
  %519 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub680 = sub nsw i32 %518, %519
  store i32 %sub680, ptr %nc, align 4, !tbaa !8
  store i32 0, ptr %nr_out, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond681

for.cond681:                                      ; preds = %for.inc699, %if.end677
  %520 = load i32, ptr %i, align 4, !tbaa !8
  %521 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp682 = icmp slt i32 %520, %521
  br i1 %cmp682, label %for.body684, label %for.end701

for.body684:                                      ; preds = %for.cond681
  %522 = load ptr, ptr %Wm, align 8, !tbaa !4
  %523 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom685 = sext i32 %523 to i64
  %arrayidx686 = getelementptr inbounds i32, ptr %522, i64 %idxprom685
  %524 = load i32, ptr %arrayidx686, align 4, !tbaa !8
  store i32 %524, ptr %row, align 4, !tbaa !8
  %525 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %526 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom687 = sext i32 %526 to i64
  %arrayidx688 = getelementptr inbounds i32, ptr %525, i64 %idxprom687
  %527 = load i32, ptr %arrayidx688, align 4, !tbaa !8
  %cmp689 = icmp slt i32 %527, 0
  br i1 %cmp689, label %if.then696, label %lor.lhs.false691

lor.lhs.false691:                                 ; preds = %for.body684
  %528 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %529 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom692 = sext i32 %529 to i64
  %arrayidx693 = getelementptr inbounds i32, ptr %528, i64 %idxprom692
  %530 = load i32, ptr %arrayidx693, align 4, !tbaa !8
  %531 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp694 = icmp sge i32 %530, %531
  br i1 %cmp694, label %if.then696, label %if.end698

if.then696:                                       ; preds = %lor.lhs.false691, %for.body684
  %532 = load i32, ptr %nr_out, align 4, !tbaa !8
  %inc697 = add nsw i32 %532, 1
  store i32 %inc697, ptr %nr_out, align 4, !tbaa !8
  br label %if.end698

if.end698:                                        ; preds = %if.then696, %lor.lhs.false691
  br label %for.inc699

for.inc699:                                       ; preds = %if.end698
  %533 = load i32, ptr %i, align 4, !tbaa !8
  %inc700 = add nsw i32 %533, 1
  store i32 %inc700, ptr %i, align 4, !tbaa !8
  br label %for.cond681, !llvm.loop !73

for.end701:                                       ; preds = %for.cond681
  %534 = load i32, ptr %nr_out, align 4, !tbaa !8
  %535 = load i32, ptr %fncols, align 4, !tbaa !8
  %mul702 = mul nsw i32 %534, %535
  %536 = load i32, ptr %nc, align 4, !tbaa !8
  %sub703 = sub nsw i32 %536, 1
  %537 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub704 = sub nsw i32 %537, 1
  %mul705 = mul nsw i32 %sub703, %sub704
  %add706 = add nsw i32 %mul702, %mul705
  store i32 %add706, ptr %thiscost, align 4, !tbaa !8
  %538 = load i32, ptr %fnrows, align 4, !tbaa !8
  %sub707 = sub nsw i32 %538, 1
  %539 = load i32, ptr %nr_out, align 4, !tbaa !8
  %add708 = add nsw i32 %sub707, %539
  %540 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub709 = sub nsw i32 %540, 1
  %sub710 = sub nsw i32 %add708, %sub709
  store i32 %sub710, ptr %extra_rows, align 4, !tbaa !8
  %541 = load i32, ptr %nc, align 4, !tbaa !8
  %sub711 = sub nsw i32 %541, 1
  %542 = load i32, ptr %extra_rows, align 4, !tbaa !8
  %mul712 = mul nsw i32 %sub711, %542
  store i32 %mul712, ptr %extra_zeros, align 4, !tbaa !8
  %543 = load i32, ptr %fnrows, align 4, !tbaa !8
  %sub713 = sub nsw i32 %543, 1
  %544 = load i32, ptr %nr_out, align 4, !tbaa !8
  %add714 = add nsw i32 %sub713, %544
  %arrayidx715 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx716 = getelementptr inbounds [2 x i32], ptr %arrayidx715, i64 0, i64 0
  store i32 %add714, ptr %arrayidx716, align 8, !tbaa !8
  %545 = load i32, ptr %fncols, align 4, !tbaa !8
  %546 = load i32, ptr %nc, align 4, !tbaa !8
  %sub717 = sub nsw i32 %546, 1
  %add718 = add nsw i32 %545, %sub717
  %arrayidx719 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx720 = getelementptr inbounds [2 x i32], ptr %arrayidx719, i64 0, i64 0
  store i32 %add718, ptr %arrayidx720, align 8, !tbaa !8
  %arrayidx721 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx722 = getelementptr inbounds [2 x i32], ptr %arrayidx721, i64 0, i64 0
  %547 = load i32, ptr %arrayidx722, align 8, !tbaa !8
  %arrayidx723 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx724 = getelementptr inbounds [2 x i32], ptr %arrayidx723, i64 0, i64 0
  %548 = load i32, ptr %arrayidx724, align 8, !tbaa !8
  %mul725 = mul nsw i32 %547, %548
  store i32 %mul725, ptr %relaxed_front, align 4, !tbaa !8
  %549 = load i32, ptr %did_rowmerge, align 4, !tbaa !8
  %tobool726 = icmp ne i32 %549, 0
  br i1 %tobool726, label %if.then727, label %if.else728

if.then727:                                       ; preds = %for.end701
  store i32 0, ptr %do_extend, align 4, !tbaa !8
  br label %if.end739

if.else728:                                       ; preds = %for.end701
  %550 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %cmp729 = icmp eq i32 %550, 0
  br i1 %cmp729, label %if.then731, label %if.else732

if.then731:                                       ; preds = %if.else728
  store i32 1, ptr %do_extend, align 4, !tbaa !8
  br label %if.end738

if.else732:                                       ; preds = %if.else728
  %551 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %conv733 = sitofp i32 %551 to double
  %552 = load double, ptr %relax1, align 8, !tbaa !37
  %553 = load i32, ptr %relaxed_front, align 4, !tbaa !8
  %conv734 = sitofp i32 %553 to double
  %mul735 = fmul double %552, %conv734
  %cmp736 = fcmp olt double %conv733, %mul735
  %conv737 = zext i1 %cmp736 to i32
  store i32 %conv737, ptr %do_extend, align 4, !tbaa !8
  br label %if.end738

if.end738:                                        ; preds = %if.else732, %if.then731
  br label %if.end739

if.end739:                                        ; preds = %if.end738, %if.then727
  %554 = load i32, ptr %do_extend, align 4, !tbaa !8
  %tobool740 = icmp ne i32 %554, 0
  br i1 %tobool740, label %if.then741, label %if.else762

if.then741:                                       ; preds = %if.end739
  %555 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %556 = load i32, ptr %thiscost, align 4, !tbaa !8
  %add742 = add nsw i32 %556, %555
  store i32 %add742, ptr %thiscost, align 4, !tbaa !8
  %557 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros743 = getelementptr inbounds %struct.WorkType, ptr %557, i32 0, i32 74
  %558 = load i32, ptr %fnzeros743, align 4, !tbaa !38
  %559 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %560 = load i32, ptr %nr_out, align 4, !tbaa !8
  %561 = load i32, ptr %nc, align 4, !tbaa !8
  %add744 = add nsw i32 %560, %561
  %mul745 = mul nsw i32 %559, %add744
  %add746 = add nsw i32 %558, %mul745
  store i32 %add746, ptr %fnzeros, align 4, !tbaa !8
  %562 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %add747 = add nsw i32 %562, 1
  %563 = load i32, ptr %fnrows, align 4, !tbaa !8
  %564 = load i32, ptr %nr_out, align 4, !tbaa !8
  %add748 = add nsw i32 %563, %564
  %565 = load i32, ptr %fncols, align 4, !tbaa !8
  %add749 = add nsw i32 %add748, %565
  %566 = load i32, ptr %nc, align 4, !tbaa !8
  %add750 = add nsw i32 %add749, %566
  %mul751 = mul nsw i32 %add747, %add750
  store i32 %mul751, ptr %new_LUsize, align 4, !tbaa !8
  %567 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp752 = icmp sgt i32 %567, 0
  br i1 %cmp752, label %land.rhs754, label %land.end760

land.rhs754:                                      ; preds = %if.then741
  %568 = load i32, ptr %fnzeros, align 4, !tbaa !8
  %conv755 = sitofp i32 %568 to double
  %569 = load i32, ptr %new_LUsize, align 4, !tbaa !8
  %conv756 = sitofp i32 %569 to double
  %div757 = fdiv double %conv755, %conv756
  %cmp758 = fcmp ogt double %div757, 1.250000e-01
  br label %land.end760

land.end760:                                      ; preds = %land.rhs754, %if.then741
  %570 = phi i1 [ false, %if.then741 ], [ %cmp758, %land.rhs754 ]
  %land.ext761 = zext i1 %570 to i32
  store i32 %land.ext761, ptr %do_update, align 4, !tbaa !8
  br label %if.end773

if.else762:                                       ; preds = %if.end739
  %571 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp763 = icmp sgt i32 %571, 0
  %conv764 = zext i1 %cmp763 to i32
  store i32 %conv764, ptr %do_update, align 4, !tbaa !8
  store i32 0, ptr %fnzeros, align 4, !tbaa !8
  %572 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub765 = sub nsw i32 %572, 1
  %arrayidx766 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx767 = getelementptr inbounds [2 x i32], ptr %arrayidx766, i64 0, i64 0
  store i32 %sub765, ptr %arrayidx767, align 8, !tbaa !8
  %arrayidx768 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx769 = getelementptr inbounds [2 x i32], ptr %arrayidx768, i64 0, i64 0
  %573 = load i32, ptr %arrayidx769, align 8, !tbaa !8
  %sub770 = sub nsw i32 %573, 1
  %arrayidx771 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx772 = getelementptr inbounds [2 x i32], ptr %arrayidx771, i64 0, i64 0
  store i32 %sub770, ptr %arrayidx772, align 8, !tbaa !8
  br label %if.end773

if.end773:                                        ; preds = %if.else762, %land.end760
  %574 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp774 = icmp eq i32 %574, -1
  br i1 %cmp774, label %if.then779, label %lor.lhs.false776

lor.lhs.false776:                                 ; preds = %if.end773
  %575 = load i32, ptr %thiscost, align 4, !tbaa !8
  %576 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp777 = icmp slt i32 %575, %576
  br i1 %cmp777, label %if.then779, label %if.end783

if.then779:                                       ; preds = %lor.lhs.false776, %if.end773
  %577 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case780 = getelementptr inbounds %struct.WorkType, ptr %577, i32 0, i32 51
  store i32 2, ptr %pivot_case780, align 8, !tbaa !46
  %578 = load i32, ptr %thiscost, align 4, !tbaa !8
  store i32 %578, ptr %bestcost, align 4, !tbaa !8
  %579 = load i32, ptr %do_extend, align 4, !tbaa !8
  %580 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend781 = getelementptr inbounds %struct.WorkType, ptr %580, i32 0, i32 44
  store i32 %579, ptr %do_extend781, align 4, !tbaa !66
  %581 = load i32, ptr %do_update, align 4, !tbaa !8
  %582 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update782 = getelementptr inbounds %struct.WorkType, ptr %582, i32 0, i32 45
  store i32 %581, ptr %do_update782, align 8, !tbaa !67
  %583 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %583, ptr %new_fnzeros, align 4, !tbaa !8
  br label %if.end783

if.end783:                                        ; preds = %if.then779, %lor.lhs.false776
  br label %if.end784

if.end784:                                        ; preds = %if.end783, %if.end658
  %arrayidx785 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx786 = getelementptr inbounds [2 x i32], ptr %arrayidx785, i64 0, i64 1
  %584 = load i32, ptr %arrayidx786, align 4, !tbaa !8
  %cmp787 = icmp ne i32 %584, -1
  br i1 %cmp787, label %if.then789, label %if.end964

if.then789:                                       ; preds = %if.end784
  %585 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp790 = icmp eq i32 %585, 0
  %conv791 = zext i1 %cmp790 to i32
  store i32 %conv791, ptr %did_rowmerge, align 4, !tbaa !8
  %586 = load i32, ptr %did_rowmerge, align 4, !tbaa !8
  %tobool792 = icmp ne i32 %586, 0
  br i1 %tobool792, label %if.then793, label %if.end803

if.then793:                                       ; preds = %if.then789
  %arrayidx794 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx795 = getelementptr inbounds [2 x i32], ptr %arrayidx794, i64 0, i64 1
  %587 = load i32, ptr %arrayidx795, align 4, !tbaa !8
  %588 = load ptr, ptr %Wm, align 8, !tbaa !4
  %arrayidx796 = getelementptr inbounds i32, ptr %588, i64 0
  store i32 %587, ptr %arrayidx796, align 4, !tbaa !8
  %589 = load ptr, ptr %Wx, align 8, !tbaa !4
  %arrayidx797 = getelementptr inbounds %struct.DoubleComplex, ptr %589, i64 0
  %component798 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx797, i32 0, i32 0
  %arrayidx799 = getelementptr inbounds [2 x double], ptr %component798, i64 0, i64 0
  store double 0.000000e+00, ptr %arrayidx799, align 8, !tbaa !37
  %590 = load ptr, ptr %Wx, align 8, !tbaa !4
  %arrayidx800 = getelementptr inbounds %struct.DoubleComplex, ptr %590, i64 0
  %component801 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx800, i32 0, i32 0
  %arrayidx802 = getelementptr inbounds [2 x double], ptr %component801, i64 0, i64 1
  store double 0.000000e+00, ptr %arrayidx802, align 8, !tbaa !37
  store i32 1, ptr %cdeg_out, align 4, !tbaa !8
  store i32 1, ptr %nr_out, align 4, !tbaa !8
  br label %if.end803

if.end803:                                        ; preds = %if.then793, %if.then789
  %591 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp804 = icmp eq i32 %591, 0
  br i1 %cmp804, label %land.lhs.true806, label %if.else826

land.lhs.true806:                                 ; preds = %if.end803
  %592 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp807 = icmp eq i32 %592, 0
  br i1 %cmp807, label %if.then809, label %if.else826

if.then809:                                       ; preds = %land.lhs.true806
  %arrayidx810 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx811 = getelementptr inbounds [2 x i32], ptr %arrayidx810, i64 0, i64 1
  %593 = load i32, ptr %arrayidx811, align 4, !tbaa !8
  store i32 %593, ptr %nc, align 4, !tbaa !8
  store i32 0, ptr %extra_cols, align 4, !tbaa !8
  %594 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  store i32 %594, ptr %nr_out, align 4, !tbaa !8
  store i32 0, ptr %extra_rows, align 4, !tbaa !8
  store i32 0, ptr %extra_zeros, align 4, !tbaa !8
  %595 = load i32, ptr %nc, align 4, !tbaa !8
  %sub812 = sub nsw i32 %595, 1
  %596 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub813 = sub nsw i32 %596, 1
  %mul814 = mul nsw i32 %sub812, %sub813
  store i32 %mul814, ptr %thiscost, align 4, !tbaa !8
  %597 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub815 = sub nsw i32 %597, 1
  %arrayidx816 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx817 = getelementptr inbounds [2 x i32], ptr %arrayidx816, i64 0, i64 1
  store i32 %sub815, ptr %arrayidx817, align 4, !tbaa !8
  %598 = load i32, ptr %nc, align 4, !tbaa !8
  %sub818 = sub nsw i32 %598, 1
  %arrayidx819 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx820 = getelementptr inbounds [2 x i32], ptr %arrayidx819, i64 0, i64 1
  store i32 %sub818, ptr %arrayidx820, align 4, !tbaa !8
  %arrayidx821 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx822 = getelementptr inbounds [2 x i32], ptr %arrayidx821, i64 0, i64 1
  %599 = load i32, ptr %arrayidx822, align 4, !tbaa !8
  %arrayidx823 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx824 = getelementptr inbounds [2 x i32], ptr %arrayidx823, i64 0, i64 1
  %600 = load i32, ptr %arrayidx824, align 4, !tbaa !8
  %mul825 = mul nsw i32 %599, %600
  store i32 %mul825, ptr %relaxed_front, align 4, !tbaa !8
  br label %if.end905

if.else826:                                       ; preds = %land.lhs.true806, %if.end803
  %601 = load i32, ptr %nr_out, align 4, !tbaa !8
  %cmp827 = icmp eq i32 %601, -1
  br i1 %cmp827, label %if.then829, label %if.end851

if.then829:                                       ; preds = %if.else826
  store i32 0, ptr %nr_out, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond830

for.cond830:                                      ; preds = %for.inc848, %if.then829
  %602 = load i32, ptr %i, align 4, !tbaa !8
  %603 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp831 = icmp slt i32 %602, %603
  br i1 %cmp831, label %for.body833, label %for.end850

for.body833:                                      ; preds = %for.cond830
  %604 = load ptr, ptr %Wm, align 8, !tbaa !4
  %605 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom834 = sext i32 %605 to i64
  %arrayidx835 = getelementptr inbounds i32, ptr %604, i64 %idxprom834
  %606 = load i32, ptr %arrayidx835, align 4, !tbaa !8
  store i32 %606, ptr %row, align 4, !tbaa !8
  %607 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %608 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom836 = sext i32 %608 to i64
  %arrayidx837 = getelementptr inbounds i32, ptr %607, i64 %idxprom836
  %609 = load i32, ptr %arrayidx837, align 4, !tbaa !8
  %cmp838 = icmp slt i32 %609, 0
  br i1 %cmp838, label %if.then845, label %lor.lhs.false840

lor.lhs.false840:                                 ; preds = %for.body833
  %610 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %611 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom841 = sext i32 %611 to i64
  %arrayidx842 = getelementptr inbounds i32, ptr %610, i64 %idxprom841
  %612 = load i32, ptr %arrayidx842, align 4, !tbaa !8
  %613 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp843 = icmp sge i32 %612, %613
  br i1 %cmp843, label %if.then845, label %if.end847

if.then845:                                       ; preds = %lor.lhs.false840, %for.body833
  %614 = load i32, ptr %nr_out, align 4, !tbaa !8
  %inc846 = add nsw i32 %614, 1
  store i32 %inc846, ptr %nr_out, align 4, !tbaa !8
  br label %if.end847

if.end847:                                        ; preds = %if.then845, %lor.lhs.false840
  br label %for.inc848

for.inc848:                                       ; preds = %if.end847
  %615 = load i32, ptr %i, align 4, !tbaa !8
  %inc849 = add nsw i32 %615, 1
  store i32 %inc849, ptr %i, align 4, !tbaa !8
  br label %for.cond830, !llvm.loop !74

for.end850:                                       ; preds = %for.cond830
  br label %if.end851

if.end851:                                        ; preds = %for.end850, %if.else826
  store i32 0, ptr %nc, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond852

for.cond852:                                      ; preds = %for.inc867, %if.end851
  %616 = load i32, ptr %i, align 4, !tbaa !8
  %arrayidx853 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx854 = getelementptr inbounds [2 x i32], ptr %arrayidx853, i64 0, i64 1
  %617 = load i32, ptr %arrayidx854, align 4, !tbaa !8
  %cmp855 = icmp slt i32 %616, %617
  br i1 %cmp855, label %for.body857, label %for.end869

for.body857:                                      ; preds = %for.cond852
  %618 = load ptr, ptr %Woo, align 8, !tbaa !4
  %619 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom858 = sext i32 %619 to i64
  %arrayidx859 = getelementptr inbounds i32, ptr %618, i64 %idxprom858
  %620 = load i32, ptr %arrayidx859, align 4, !tbaa !8
  store i32 %620, ptr %col, align 4, !tbaa !8
  %621 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %622 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom860 = sext i32 %622 to i64
  %arrayidx861 = getelementptr inbounds i32, ptr %621, i64 %idxprom860
  %623 = load i32, ptr %arrayidx861, align 4, !tbaa !8
  %cmp862 = icmp slt i32 %623, 0
  br i1 %cmp862, label %if.then864, label %if.end866

if.then864:                                       ; preds = %for.body857
  %624 = load i32, ptr %nc, align 4, !tbaa !8
  %inc865 = add nsw i32 %624, 1
  store i32 %inc865, ptr %nc, align 4, !tbaa !8
  br label %if.end866

if.end866:                                        ; preds = %if.then864, %for.body857
  br label %for.inc867

for.inc867:                                       ; preds = %if.end866
  %625 = load i32, ptr %i, align 4, !tbaa !8
  %inc868 = add nsw i32 %625, 1
  store i32 %inc868, ptr %i, align 4, !tbaa !8
  br label %for.cond852, !llvm.loop !75

for.end869:                                       ; preds = %for.cond852
  %626 = load i32, ptr %fncols, align 4, !tbaa !8
  %627 = load i32, ptr %nc, align 4, !tbaa !8
  %sub870 = sub nsw i32 %627, 1
  %add871 = add nsw i32 %626, %sub870
  %arrayidx872 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx873 = getelementptr inbounds [2 x i32], ptr %arrayidx872, i64 0, i64 1
  %628 = load i32, ptr %arrayidx873, align 4, !tbaa !8
  %sub874 = sub nsw i32 %628, 1
  %sub875 = sub nsw i32 %add871, %sub874
  store i32 %sub875, ptr %extra_cols, align 4, !tbaa !8
  %629 = load i32, ptr %fnrows, align 4, !tbaa !8
  %630 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub876 = sub nsw i32 %630, 1
  %add877 = add nsw i32 %629, %sub876
  %631 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub878 = sub nsw i32 %631, 1
  %sub879 = sub nsw i32 %add877, %sub878
  store i32 %sub879, ptr %extra_rows, align 4, !tbaa !8
  %632 = load i32, ptr %nc, align 4, !tbaa !8
  %sub880 = sub nsw i32 %632, 1
  %633 = load i32, ptr %extra_rows, align 4, !tbaa !8
  %mul881 = mul nsw i32 %sub880, %633
  %634 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub882 = sub nsw i32 %634, 1
  %635 = load i32, ptr %extra_cols, align 4, !tbaa !8
  %mul883 = mul nsw i32 %sub882, %635
  %add884 = add nsw i32 %mul881, %mul883
  store i32 %add884, ptr %extra_zeros, align 4, !tbaa !8
  %636 = load i32, ptr %nc, align 4, !tbaa !8
  %sub885 = sub nsw i32 %636, 1
  %637 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub886 = sub nsw i32 %637, 1
  %mul887 = mul nsw i32 %sub885, %sub886
  %638 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub888 = sub nsw i32 %638, 1
  %639 = load i32, ptr %fncols, align 4, !tbaa !8
  %640 = load i32, ptr %extra_cols, align 4, !tbaa !8
  %sub889 = sub nsw i32 %639, %640
  %mul890 = mul nsw i32 %sub888, %sub889
  %add891 = add nsw i32 %mul887, %mul890
  store i32 %add891, ptr %thiscost, align 4, !tbaa !8
  %641 = load i32, ptr %fnrows, align 4, !tbaa !8
  %642 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub892 = sub nsw i32 %642, 1
  %add893 = add nsw i32 %641, %sub892
  %arrayidx894 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx895 = getelementptr inbounds [2 x i32], ptr %arrayidx894, i64 0, i64 1
  store i32 %add893, ptr %arrayidx895, align 4, !tbaa !8
  %643 = load i32, ptr %fncols, align 4, !tbaa !8
  %644 = load i32, ptr %nc, align 4, !tbaa !8
  %sub896 = sub nsw i32 %644, 1
  %add897 = add nsw i32 %643, %sub896
  %arrayidx898 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx899 = getelementptr inbounds [2 x i32], ptr %arrayidx898, i64 0, i64 1
  store i32 %add897, ptr %arrayidx899, align 4, !tbaa !8
  %arrayidx900 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx901 = getelementptr inbounds [2 x i32], ptr %arrayidx900, i64 0, i64 1
  %645 = load i32, ptr %arrayidx901, align 4, !tbaa !8
  %arrayidx902 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx903 = getelementptr inbounds [2 x i32], ptr %arrayidx902, i64 0, i64 1
  %646 = load i32, ptr %arrayidx903, align 4, !tbaa !8
  %mul904 = mul nsw i32 %645, %646
  store i32 %mul904, ptr %relaxed_front, align 4, !tbaa !8
  br label %if.end905

if.end905:                                        ; preds = %for.end869, %if.then809
  %647 = load i32, ptr %did_rowmerge, align 4, !tbaa !8
  %tobool906 = icmp ne i32 %647, 0
  br i1 %tobool906, label %if.then907, label %if.else908

if.then907:                                       ; preds = %if.end905
  store i32 0, ptr %do_extend, align 4, !tbaa !8
  br label %if.end919

if.else908:                                       ; preds = %if.end905
  %648 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %cmp909 = icmp eq i32 %648, 0
  br i1 %cmp909, label %if.then911, label %if.else912

if.then911:                                       ; preds = %if.else908
  store i32 1, ptr %do_extend, align 4, !tbaa !8
  br label %if.end918

if.else912:                                       ; preds = %if.else908
  %649 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %conv913 = sitofp i32 %649 to double
  %650 = load double, ptr %relax1, align 8, !tbaa !37
  %651 = load i32, ptr %relaxed_front, align 4, !tbaa !8
  %conv914 = sitofp i32 %651 to double
  %mul915 = fmul double %650, %conv914
  %cmp916 = fcmp olt double %conv913, %mul915
  %conv917 = zext i1 %cmp916 to i32
  store i32 %conv917, ptr %do_extend, align 4, !tbaa !8
  br label %if.end918

if.end918:                                        ; preds = %if.else912, %if.then911
  br label %if.end919

if.end919:                                        ; preds = %if.end918, %if.then907
  %652 = load i32, ptr %do_extend, align 4, !tbaa !8
  %tobool920 = icmp ne i32 %652, 0
  br i1 %tobool920, label %if.then921, label %if.else942

if.then921:                                       ; preds = %if.end919
  %653 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %654 = load i32, ptr %thiscost, align 4, !tbaa !8
  %add922 = add nsw i32 %654, %653
  store i32 %add922, ptr %thiscost, align 4, !tbaa !8
  %655 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros923 = getelementptr inbounds %struct.WorkType, ptr %655, i32 0, i32 74
  %656 = load i32, ptr %fnzeros923, align 4, !tbaa !38
  %657 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %658 = load i32, ptr %nr_out, align 4, !tbaa !8
  %659 = load i32, ptr %nc, align 4, !tbaa !8
  %add924 = add nsw i32 %658, %659
  %mul925 = mul nsw i32 %657, %add924
  %add926 = add nsw i32 %656, %mul925
  store i32 %add926, ptr %fnzeros, align 4, !tbaa !8
  %660 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %add927 = add nsw i32 %660, 1
  %661 = load i32, ptr %fnrows, align 4, !tbaa !8
  %662 = load i32, ptr %nr_out, align 4, !tbaa !8
  %add928 = add nsw i32 %661, %662
  %663 = load i32, ptr %fncols, align 4, !tbaa !8
  %add929 = add nsw i32 %add928, %663
  %664 = load i32, ptr %nc, align 4, !tbaa !8
  %add930 = add nsw i32 %add929, %664
  %mul931 = mul nsw i32 %add927, %add930
  store i32 %mul931, ptr %new_LUsize, align 4, !tbaa !8
  %665 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp932 = icmp sgt i32 %665, 0
  br i1 %cmp932, label %land.rhs934, label %land.end940

land.rhs934:                                      ; preds = %if.then921
  %666 = load i32, ptr %fnzeros, align 4, !tbaa !8
  %conv935 = sitofp i32 %666 to double
  %667 = load i32, ptr %new_LUsize, align 4, !tbaa !8
  %conv936 = sitofp i32 %667 to double
  %div937 = fdiv double %conv935, %conv936
  %cmp938 = fcmp ogt double %div937, 1.250000e-01
  br label %land.end940

land.end940:                                      ; preds = %land.rhs934, %if.then921
  %668 = phi i1 [ false, %if.then921 ], [ %cmp938, %land.rhs934 ]
  %land.ext941 = zext i1 %668 to i32
  store i32 %land.ext941, ptr %do_update, align 4, !tbaa !8
  br label %if.end953

if.else942:                                       ; preds = %if.end919
  %669 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp943 = icmp sgt i32 %669, 0
  %conv944 = zext i1 %cmp943 to i32
  store i32 %conv944, ptr %do_update, align 4, !tbaa !8
  store i32 0, ptr %fnzeros, align 4, !tbaa !8
  %670 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub945 = sub nsw i32 %670, 1
  %arrayidx946 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx947 = getelementptr inbounds [2 x i32], ptr %arrayidx946, i64 0, i64 1
  store i32 %sub945, ptr %arrayidx947, align 4, !tbaa !8
  %arrayidx948 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx949 = getelementptr inbounds [2 x i32], ptr %arrayidx948, i64 0, i64 1
  %671 = load i32, ptr %arrayidx949, align 4, !tbaa !8
  %sub950 = sub nsw i32 %671, 1
  %arrayidx951 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx952 = getelementptr inbounds [2 x i32], ptr %arrayidx951, i64 0, i64 1
  store i32 %sub950, ptr %arrayidx952, align 4, !tbaa !8
  br label %if.end953

if.end953:                                        ; preds = %if.else942, %land.end940
  %672 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp954 = icmp eq i32 %672, -1
  br i1 %cmp954, label %if.then959, label %lor.lhs.false956

lor.lhs.false956:                                 ; preds = %if.end953
  %673 = load i32, ptr %thiscost, align 4, !tbaa !8
  %674 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp957 = icmp slt i32 %673, %674
  br i1 %cmp957, label %if.then959, label %if.end963

if.then959:                                       ; preds = %lor.lhs.false956, %if.end953
  %675 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case960 = getelementptr inbounds %struct.WorkType, ptr %675, i32 0, i32 51
  store i32 3, ptr %pivot_case960, align 8, !tbaa !46
  %676 = load i32, ptr %thiscost, align 4, !tbaa !8
  store i32 %676, ptr %bestcost, align 4, !tbaa !8
  %677 = load i32, ptr %do_extend, align 4, !tbaa !8
  %678 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend961 = getelementptr inbounds %struct.WorkType, ptr %678, i32 0, i32 44
  store i32 %677, ptr %do_extend961, align 4, !tbaa !66
  %679 = load i32, ptr %do_update, align 4, !tbaa !8
  %680 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update962 = getelementptr inbounds %struct.WorkType, ptr %680, i32 0, i32 45
  store i32 %679, ptr %do_update962, align 8, !tbaa !67
  %681 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %681, ptr %new_fnzeros, align 4, !tbaa !8
  br label %if.end963

if.end963:                                        ; preds = %if.then959, %lor.lhs.false956
  br label %if.end964

if.end964:                                        ; preds = %if.end963, %if.end784
  br label %if.end965

if.end965:                                        ; preds = %if.end964, %if.end488
  %682 = load i32, ptr %new_fnzeros, align 4, !tbaa !8
  %683 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros966 = getelementptr inbounds %struct.WorkType, ptr %683, i32 0, i32 74
  store i32 %682, ptr %fnzeros966, align 4, !tbaa !38
  %684 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case967 = getelementptr inbounds %struct.WorkType, ptr %684, i32 0, i32 51
  %685 = load i32, ptr %pivot_case967, align 8, !tbaa !46
  switch i32 %685, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb982
    i32 2, label %sw.bb1002
    i32 3, label %sw.bb1022
  ]

sw.bb:                                            ; preds = %if.end965
  %686 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front = getelementptr inbounds %struct.WorkType, ptr %686, i32 0, i32 80
  store i32 1, ptr %pivcol_in_front, align 4, !tbaa !76
  %687 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front = getelementptr inbounds %struct.WorkType, ptr %687, i32 0, i32 79
  store i32 1, ptr %pivrow_in_front, align 8, !tbaa !77
  %arrayidx968 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %688 = load i32, ptr %arrayidx968, align 4, !tbaa !8
  %689 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol969 = getelementptr inbounds %struct.WorkType, ptr %689, i32 0, i32 43
  store i32 %688, ptr %pivcol969, align 8, !tbaa !78
  %arrayidx970 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx971 = getelementptr inbounds [2 x i32], ptr %arrayidx970, i64 0, i64 0
  %690 = load i32, ptr %arrayidx971, align 16, !tbaa !8
  %691 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow972 = getelementptr inbounds %struct.WorkType, ptr %691, i32 0, i32 42
  store i32 %690, ptr %pivrow972, align 4, !tbaa !79
  %692 = load i32, ptr %nr_in, align 4, !tbaa !8
  %693 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg = getelementptr inbounds %struct.WorkType, ptr %693, i32 0, i32 32
  store i32 %692, ptr %ccdeg, align 8, !tbaa !80
  %694 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %695 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow = getelementptr inbounds %struct.WorkType, ptr %695, i32 0, i32 9
  store ptr %694, ptr %Wrow, align 8, !tbaa !81
  %arrayidx973 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx974 = getelementptr inbounds [2 x i32], ptr %arrayidx973, i64 0, i64 0
  %696 = load i32, ptr %arrayidx974, align 16, !tbaa !8
  %697 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg = getelementptr inbounds %struct.WorkType, ptr %697, i32 0, i32 31
  store i32 %696, ptr %rrdeg, align 4, !tbaa !82
  %arrayidx975 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 0
  %698 = load i32, ptr %arrayidx975, align 4, !tbaa !8
  store i32 %698, ptr %jj, align 4, !tbaa !8
  %arrayidx976 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx977 = getelementptr inbounds [2 x i32], ptr %arrayidx976, i64 0, i64 0
  %699 = load i32, ptr %arrayidx977, align 16, !tbaa !8
  %700 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new978 = getelementptr inbounds %struct.WorkType, ptr %700, i32 0, i32 77
  store i32 %699, ptr %fnrows_new978, align 8, !tbaa !83
  %arrayidx979 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx980 = getelementptr inbounds [2 x i32], ptr %arrayidx979, i64 0, i64 0
  %701 = load i32, ptr %arrayidx980, align 16, !tbaa !8
  %702 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new981 = getelementptr inbounds %struct.WorkType, ptr %702, i32 0, i32 78
  store i32 %701, ptr %fncols_new981, align 4, !tbaa !84
  br label %sw.epilog

sw.bb982:                                         ; preds = %if.end965
  %703 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front983 = getelementptr inbounds %struct.WorkType, ptr %703, i32 0, i32 80
  store i32 1, ptr %pivcol_in_front983, align 4, !tbaa !76
  %704 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front984 = getelementptr inbounds %struct.WorkType, ptr %704, i32 0, i32 79
  store i32 0, ptr %pivrow_in_front984, align 8, !tbaa !77
  %arrayidx985 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %705 = load i32, ptr %arrayidx985, align 4, !tbaa !8
  %706 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol986 = getelementptr inbounds %struct.WorkType, ptr %706, i32 0, i32 43
  store i32 %705, ptr %pivcol986, align 8, !tbaa !78
  %arrayidx987 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx988 = getelementptr inbounds [2 x i32], ptr %arrayidx987, i64 0, i64 1
  %707 = load i32, ptr %arrayidx988, align 4, !tbaa !8
  %708 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow989 = getelementptr inbounds %struct.WorkType, ptr %708, i32 0, i32 42
  store i32 %707, ptr %pivrow989, align 4, !tbaa !79
  %709 = load i32, ptr %nr_in, align 4, !tbaa !8
  %710 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg990 = getelementptr inbounds %struct.WorkType, ptr %710, i32 0, i32 32
  store i32 %709, ptr %ccdeg990, align 8, !tbaa !80
  %711 = load ptr, ptr %Wio, align 8, !tbaa !4
  %712 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow991 = getelementptr inbounds %struct.WorkType, ptr %712, i32 0, i32 9
  store ptr %711, ptr %Wrow991, align 8, !tbaa !81
  %arrayidx992 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx993 = getelementptr inbounds [2 x i32], ptr %arrayidx992, i64 0, i64 1
  %713 = load i32, ptr %arrayidx993, align 4, !tbaa !8
  %714 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg994 = getelementptr inbounds %struct.WorkType, ptr %714, i32 0, i32 31
  store i32 %713, ptr %rrdeg994, align 4, !tbaa !82
  %arrayidx995 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 0
  %715 = load i32, ptr %arrayidx995, align 4, !tbaa !8
  store i32 %715, ptr %jj, align 4, !tbaa !8
  %arrayidx996 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx997 = getelementptr inbounds [2 x i32], ptr %arrayidx996, i64 0, i64 1
  %716 = load i32, ptr %arrayidx997, align 4, !tbaa !8
  %717 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new998 = getelementptr inbounds %struct.WorkType, ptr %717, i32 0, i32 77
  store i32 %716, ptr %fnrows_new998, align 8, !tbaa !83
  %arrayidx999 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx1000 = getelementptr inbounds [2 x i32], ptr %arrayidx999, i64 0, i64 1
  %718 = load i32, ptr %arrayidx1000, align 4, !tbaa !8
  %719 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new1001 = getelementptr inbounds %struct.WorkType, ptr %719, i32 0, i32 78
  store i32 %718, ptr %fncols_new1001, align 4, !tbaa !84
  br label %sw.epilog

sw.bb1002:                                        ; preds = %if.end965
  %720 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front1003 = getelementptr inbounds %struct.WorkType, ptr %720, i32 0, i32 80
  store i32 0, ptr %pivcol_in_front1003, align 4, !tbaa !76
  %721 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front1004 = getelementptr inbounds %struct.WorkType, ptr %721, i32 0, i32 79
  store i32 1, ptr %pivrow_in_front1004, align 8, !tbaa !77
  %arrayidx1005 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %722 = load i32, ptr %arrayidx1005, align 4, !tbaa !8
  %723 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol1006 = getelementptr inbounds %struct.WorkType, ptr %723, i32 0, i32 43
  store i32 %722, ptr %pivcol1006, align 8, !tbaa !78
  %arrayidx1007 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx1008 = getelementptr inbounds [2 x i32], ptr %arrayidx1007, i64 0, i64 0
  %724 = load i32, ptr %arrayidx1008, align 8, !tbaa !8
  %725 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1009 = getelementptr inbounds %struct.WorkType, ptr %725, i32 0, i32 42
  store i32 %724, ptr %pivrow1009, align 4, !tbaa !79
  %726 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %727 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg1010 = getelementptr inbounds %struct.WorkType, ptr %727, i32 0, i32 32
  store i32 %726, ptr %ccdeg1010, align 8, !tbaa !80
  %728 = load ptr, ptr %Woi, align 8, !tbaa !4
  %729 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow1011 = getelementptr inbounds %struct.WorkType, ptr %729, i32 0, i32 9
  store ptr %728, ptr %Wrow1011, align 8, !tbaa !81
  %arrayidx1012 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx1013 = getelementptr inbounds [2 x i32], ptr %arrayidx1012, i64 0, i64 0
  %730 = load i32, ptr %arrayidx1013, align 8, !tbaa !8
  %731 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg1014 = getelementptr inbounds %struct.WorkType, ptr %731, i32 0, i32 31
  store i32 %730, ptr %rrdeg1014, align 4, !tbaa !82
  %arrayidx1015 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  %732 = load i32, ptr %arrayidx1015, align 4, !tbaa !8
  store i32 %732, ptr %jj, align 4, !tbaa !8
  %arrayidx1016 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx1017 = getelementptr inbounds [2 x i32], ptr %arrayidx1016, i64 0, i64 0
  %733 = load i32, ptr %arrayidx1017, align 8, !tbaa !8
  %734 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new1018 = getelementptr inbounds %struct.WorkType, ptr %734, i32 0, i32 77
  store i32 %733, ptr %fnrows_new1018, align 8, !tbaa !83
  %arrayidx1019 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx1020 = getelementptr inbounds [2 x i32], ptr %arrayidx1019, i64 0, i64 0
  %735 = load i32, ptr %arrayidx1020, align 8, !tbaa !8
  %736 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new1021 = getelementptr inbounds %struct.WorkType, ptr %736, i32 0, i32 78
  store i32 %735, ptr %fncols_new1021, align 4, !tbaa !84
  br label %sw.epilog

sw.bb1022:                                        ; preds = %if.end965
  %737 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front1023 = getelementptr inbounds %struct.WorkType, ptr %737, i32 0, i32 80
  store i32 0, ptr %pivcol_in_front1023, align 4, !tbaa !76
  %738 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front1024 = getelementptr inbounds %struct.WorkType, ptr %738, i32 0, i32 79
  store i32 0, ptr %pivrow_in_front1024, align 8, !tbaa !77
  %arrayidx1025 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %739 = load i32, ptr %arrayidx1025, align 4, !tbaa !8
  %740 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol1026 = getelementptr inbounds %struct.WorkType, ptr %740, i32 0, i32 43
  store i32 %739, ptr %pivcol1026, align 8, !tbaa !78
  %arrayidx1027 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx1028 = getelementptr inbounds [2 x i32], ptr %arrayidx1027, i64 0, i64 1
  %741 = load i32, ptr %arrayidx1028, align 4, !tbaa !8
  %742 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1029 = getelementptr inbounds %struct.WorkType, ptr %742, i32 0, i32 42
  store i32 %741, ptr %pivrow1029, align 4, !tbaa !79
  %743 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %744 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg1030 = getelementptr inbounds %struct.WorkType, ptr %744, i32 0, i32 32
  store i32 %743, ptr %ccdeg1030, align 8, !tbaa !80
  %745 = load ptr, ptr %Woo, align 8, !tbaa !4
  %746 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow1031 = getelementptr inbounds %struct.WorkType, ptr %746, i32 0, i32 9
  store ptr %745, ptr %Wrow1031, align 8, !tbaa !81
  %arrayidx1032 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx1033 = getelementptr inbounds [2 x i32], ptr %arrayidx1032, i64 0, i64 1
  %747 = load i32, ptr %arrayidx1033, align 4, !tbaa !8
  %748 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg1034 = getelementptr inbounds %struct.WorkType, ptr %748, i32 0, i32 31
  store i32 %747, ptr %rrdeg1034, align 4, !tbaa !82
  %arrayidx1035 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  %749 = load i32, ptr %arrayidx1035, align 4, !tbaa !8
  store i32 %749, ptr %jj, align 4, !tbaa !8
  %arrayidx1036 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx1037 = getelementptr inbounds [2 x i32], ptr %arrayidx1036, i64 0, i64 1
  %750 = load i32, ptr %arrayidx1037, align 4, !tbaa !8
  %751 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new1038 = getelementptr inbounds %struct.WorkType, ptr %751, i32 0, i32 77
  store i32 %750, ptr %fnrows_new1038, align 8, !tbaa !83
  %arrayidx1039 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx1040 = getelementptr inbounds [2 x i32], ptr %arrayidx1039, i64 0, i64 1
  %752 = load i32, ptr %arrayidx1040, align 4, !tbaa !8
  %753 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new1041 = getelementptr inbounds %struct.WorkType, ptr %753, i32 0, i32 78
  store i32 %752, ptr %fncols_new1041, align 4, !tbaa !84
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end965, %sw.bb1022, %sw.bb1002, %sw.bb982, %sw.bb
  %754 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front1042 = getelementptr inbounds %struct.WorkType, ptr %754, i32 0, i32 80
  %755 = load i32, ptr %pivcol_in_front1042, align 4, !tbaa !76
  %tobool1043 = icmp ne i32 %755, 0
  br i1 %tobool1043, label %if.end1060, label %land.lhs.true1044

land.lhs.true1044:                                ; preds = %sw.epilog
  %arrayidx1045 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %756 = load i32, ptr %arrayidx1045, align 4, !tbaa !8
  %cmp1046 = icmp ne i32 %756, -1
  br i1 %cmp1046, label %if.then1048, label %if.end1060

if.then1048:                                      ; preds = %land.lhs.true1044
  %757 = load i32, ptr %fnrows, align 4, !tbaa !8
  store i32 %757, ptr %i, align 4, !tbaa !8
  br label %for.cond1049

for.cond1049:                                     ; preds = %for.inc1057, %if.then1048
  %758 = load i32, ptr %i, align 4, !tbaa !8
  %759 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %cmp1050 = icmp slt i32 %758, %759
  br i1 %cmp1050, label %for.body1052, label %for.end1059

for.body1052:                                     ; preds = %for.cond1049
  %760 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %761 = load ptr, ptr %Frows, align 8, !tbaa !4
  %762 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom1053 = sext i32 %762 to i64
  %arrayidx1054 = getelementptr inbounds i32, ptr %761, i64 %idxprom1053
  %763 = load i32, ptr %arrayidx1054, align 4, !tbaa !8
  %idxprom1055 = sext i32 %763 to i64
  %arrayidx1056 = getelementptr inbounds i32, ptr %760, i64 %idxprom1055
  store i32 -1, ptr %arrayidx1056, align 4, !tbaa !8
  br label %for.inc1057

for.inc1057:                                      ; preds = %for.body1052
  %764 = load i32, ptr %i, align 4, !tbaa !8
  %inc1058 = add nsw i32 %764, 1
  store i32 %inc1058, ptr %i, align 4, !tbaa !8
  br label %for.cond1049, !llvm.loop !85

for.end1059:                                      ; preds = %for.cond1049
  br label %if.end1060

if.end1060:                                       ; preds = %for.end1059, %land.lhs.true1044, %sw.epilog
  %765 = load i32, ptr %jj, align 4, !tbaa !8
  %766 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %767 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  call void @remove_candidate(i32 noundef %765, ptr noundef %766, ptr noundef %767)
  %768 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new1061 = getelementptr inbounds %struct.WorkType, ptr %768, i32 0, i32 77
  %769 = load i32, ptr %fnrows_new1061, align 8, !tbaa !83
  %add1062 = add nsw i32 %769, 1
  %770 = load i32, ptr %fnr_curr, align 4, !tbaa !8
  %cmp1063 = icmp sgt i32 %add1062, %770
  br i1 %cmp1063, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end1060
  %771 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new1065 = getelementptr inbounds %struct.WorkType, ptr %771, i32 0, i32 78
  %772 = load i32, ptr %fncols_new1065, align 4, !tbaa !84
  %add1066 = add nsw i32 %772, 1
  %773 = load i32, ptr %fnc_curr, align 4, !tbaa !8
  %cmp1067 = icmp sgt i32 %add1066, %773
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end1060
  %774 = phi i1 [ true, %if.end1060 ], [ %cmp1067, %lor.rhs ]
  %lor.ext = zext i1 %774 to i32
  %775 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_grow = getelementptr inbounds %struct.WorkType, ptr %775, i32 0, i32 50
  store i32 %lor.ext, ptr %do_grow, align 4, !tbaa !86
  %776 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_grow1069 = getelementptr inbounds %struct.WorkType, ptr %776, i32 0, i32 50
  %777 = load i32, ptr %do_grow1069, align 4, !tbaa !86
  %tobool1070 = icmp ne i32 %777, 0
  br i1 %tobool1070, label %if.then1071, label %if.end1081

if.then1071:                                      ; preds = %lor.end
  %778 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update1072 = getelementptr inbounds %struct.WorkType, ptr %778, i32 0, i32 45
  %779 = load i32, ptr %do_update1072, align 8, !tbaa !67
  %tobool1073 = icmp ne i32 %779, 0
  br i1 %tobool1073, label %if.end1080, label %land.lhs.true1074

land.lhs.true1074:                                ; preds = %if.then1071
  %780 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp1075 = icmp sgt i32 %780, 0
  br i1 %cmp1075, label %if.then1077, label %if.end1080

if.then1077:                                      ; preds = %land.lhs.true1074
  %781 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nforced = getelementptr inbounds %struct.WorkType, ptr %781, i32 0, i32 46
  %782 = load i32, ptr %nforced, align 4, !tbaa !87
  %inc1078 = add nsw i32 %782, 1
  store i32 %inc1078, ptr %nforced, align 4, !tbaa !87
  %783 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update1079 = getelementptr inbounds %struct.WorkType, ptr %783, i32 0, i32 45
  store i32 1, ptr %do_update1079, align 8, !tbaa !67
  br label %if.end1080

if.end1080:                                       ; preds = %if.then1077, %land.lhs.true1074, %if.then1071
  br label %if.end1081

if.end1081:                                       ; preds = %if.end1080, %lor.end
  %784 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend1082 = getelementptr inbounds %struct.WorkType, ptr %784, i32 0, i32 44
  %785 = load i32, ptr %do_extend1082, align 4, !tbaa !66
  %tobool1083 = icmp ne i32 %785, 0
  br i1 %tobool1083, label %if.then1084, label %if.else1089

if.then1084:                                      ; preds = %if.end1081
  %786 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp1085 = icmp sgt i32 %786, 0
  %conv1086 = zext i1 %cmp1085 to i32
  %787 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2row = getelementptr inbounds %struct.WorkType, ptr %787, i32 0, i32 48
  store i32 %conv1086, ptr %do_scan2row, align 4, !tbaa !88
  %788 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp1087 = icmp sgt i32 %788, 0
  %conv1088 = zext i1 %cmp1087 to i32
  %789 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2col = getelementptr inbounds %struct.WorkType, ptr %789, i32 0, i32 49
  store i32 %conv1088, ptr %do_scan2col, align 8, !tbaa !89
  br label %if.end1106

if.else1089:                                      ; preds = %if.end1081
  %790 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp1090 = icmp sgt i32 %790, 0
  br i1 %cmp1090, label %land.rhs1092, label %land.end1095

land.rhs1092:                                     ; preds = %if.else1089
  %791 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front1093 = getelementptr inbounds %struct.WorkType, ptr %791, i32 0, i32 79
  %792 = load i32, ptr %pivrow_in_front1093, align 8, !tbaa !77
  %tobool1094 = icmp ne i32 %792, 0
  br label %land.end1095

land.end1095:                                     ; preds = %land.rhs1092, %if.else1089
  %793 = phi i1 [ false, %if.else1089 ], [ %tobool1094, %land.rhs1092 ]
  %land.ext1096 = zext i1 %793 to i32
  %794 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2row1097 = getelementptr inbounds %struct.WorkType, ptr %794, i32 0, i32 48
  store i32 %land.ext1096, ptr %do_scan2row1097, align 4, !tbaa !88
  %795 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp1098 = icmp sgt i32 %795, 0
  br i1 %cmp1098, label %land.rhs1100, label %land.end1103

land.rhs1100:                                     ; preds = %land.end1095
  %796 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front1101 = getelementptr inbounds %struct.WorkType, ptr %796, i32 0, i32 80
  %797 = load i32, ptr %pivcol_in_front1101, align 4, !tbaa !76
  %tobool1102 = icmp ne i32 %797, 0
  br label %land.end1103

land.end1103:                                     ; preds = %land.rhs1100, %land.end1095
  %798 = phi i1 [ false, %land.end1095 ], [ %tobool1102, %land.rhs1100 ]
  %land.ext1104 = zext i1 %798 to i32
  %799 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2col1105 = getelementptr inbounds %struct.WorkType, ptr %799, i32 0, i32 49
  store i32 %land.ext1104, ptr %do_scan2col1105, align 8, !tbaa !89
  br label %if.end1106

if.end1106:                                       ; preds = %land.end1103, %if.then1084
  %800 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %prefer_diagonal1107 = getelementptr inbounds %struct.SymbolicType, ptr %800, i32 0, i32 40
  %801 = load i32, ptr %prefer_diagonal1107, align 8, !tbaa !35
  %tobool1108 = icmp ne i32 %801, 0
  br i1 %tobool1108, label %if.then1109, label %if.end1152

if.then1109:                                      ; preds = %if.end1106
  %802 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Diagonal_map1110 = getelementptr inbounds %struct.WorkType, ptr %802, i32 0, i32 16
  %803 = load ptr, ptr %Diagonal_map1110, align 8, !tbaa !90
  store ptr %803, ptr %Diagonal_map, align 8, !tbaa !4
  %804 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Diagonal_imap1111 = getelementptr inbounds %struct.WorkType, ptr %804, i32 0, i32 17
  %805 = load ptr, ptr %Diagonal_imap1111, align 8, !tbaa !91
  store ptr %805, ptr %Diagonal_imap, align 8, !tbaa !4
  %806 = load ptr, ptr %Diagonal_map, align 8, !tbaa !4
  %807 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol1112 = getelementptr inbounds %struct.WorkType, ptr %807, i32 0, i32 43
  %808 = load i32, ptr %pivcol1112, align 8, !tbaa !78
  %idxprom1113 = sext i32 %808 to i64
  %arrayidx1114 = getelementptr inbounds i32, ptr %806, i64 %idxprom1113
  %809 = load i32, ptr %arrayidx1114, align 4, !tbaa !8
  store i32 %809, ptr %row2, align 4, !tbaa !8
  %810 = load ptr, ptr %Diagonal_imap, align 8, !tbaa !4
  %811 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1115 = getelementptr inbounds %struct.WorkType, ptr %811, i32 0, i32 42
  %812 = load i32, ptr %pivrow1115, align 4, !tbaa !79
  %idxprom1116 = sext i32 %812 to i64
  %arrayidx1117 = getelementptr inbounds i32, ptr %810, i64 %idxprom1116
  %813 = load i32, ptr %arrayidx1117, align 4, !tbaa !8
  store i32 %813, ptr %col2, align 4, !tbaa !8
  %814 = load i32, ptr %row2, align 4, !tbaa !8
  %cmp1118 = icmp slt i32 %814, 0
  br i1 %cmp1118, label %if.then1120, label %if.end1130

if.then1120:                                      ; preds = %if.then1109
  %815 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %noff_diagonal = getelementptr inbounds %struct.WorkType, ptr %815, i32 0, i32 27
  %816 = load i32, ptr %noff_diagonal, align 4, !tbaa !92
  %inc1121 = add nsw i32 %816, 1
  store i32 %inc1121, ptr %noff_diagonal, align 4, !tbaa !92
  %817 = load i32, ptr %row2, align 4, !tbaa !8
  %cmp1122 = icmp slt i32 %817, -1
  br i1 %cmp1122, label %cond.true1124, label %cond.false1127

cond.true1124:                                    ; preds = %if.then1120
  %818 = load i32, ptr %row2, align 4, !tbaa !8
  %sub1125 = sub nsw i32 0, %818
  %sub1126 = sub nsw i32 %sub1125, 2
  br label %cond.end1128

cond.false1127:                                   ; preds = %if.then1120
  %819 = load i32, ptr %row2, align 4, !tbaa !8
  br label %cond.end1128

cond.end1128:                                     ; preds = %cond.false1127, %cond.true1124
  %cond1129 = phi i32 [ %sub1126, %cond.true1124 ], [ %819, %cond.false1127 ]
  store i32 %cond1129, ptr %row2, align 4, !tbaa !8
  br label %if.end1130

if.end1130:                                       ; preds = %cond.end1128, %if.then1109
  %820 = load i32, ptr %row2, align 4, !tbaa !8
  %821 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1131 = getelementptr inbounds %struct.WorkType, ptr %821, i32 0, i32 42
  %822 = load i32, ptr %pivrow1131, align 4, !tbaa !79
  %cmp1132 = icmp ne i32 %820, %822
  br i1 %cmp1132, label %if.then1134, label %if.end1151

if.then1134:                                      ; preds = %if.end1130
  %823 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1135 = getelementptr inbounds %struct.WorkType, ptr %823, i32 0, i32 42
  %824 = load i32, ptr %pivrow1135, align 4, !tbaa !79
  %sub1136 = sub nsw i32 0, %824
  %sub1137 = sub nsw i32 %sub1136, 2
  %825 = load ptr, ptr %Diagonal_map, align 8, !tbaa !4
  %826 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol1138 = getelementptr inbounds %struct.WorkType, ptr %826, i32 0, i32 43
  %827 = load i32, ptr %pivcol1138, align 8, !tbaa !78
  %idxprom1139 = sext i32 %827 to i64
  %arrayidx1140 = getelementptr inbounds i32, ptr %825, i64 %idxprom1139
  store i32 %sub1137, ptr %arrayidx1140, align 4, !tbaa !8
  %828 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol1141 = getelementptr inbounds %struct.WorkType, ptr %828, i32 0, i32 43
  %829 = load i32, ptr %pivcol1141, align 8, !tbaa !78
  %830 = load ptr, ptr %Diagonal_imap, align 8, !tbaa !4
  %831 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1142 = getelementptr inbounds %struct.WorkType, ptr %831, i32 0, i32 42
  %832 = load i32, ptr %pivrow1142, align 4, !tbaa !79
  %idxprom1143 = sext i32 %832 to i64
  %arrayidx1144 = getelementptr inbounds i32, ptr %830, i64 %idxprom1143
  store i32 %829, ptr %arrayidx1144, align 4, !tbaa !8
  %833 = load i32, ptr %row2, align 4, !tbaa !8
  %sub1145 = sub nsw i32 0, %833
  %sub1146 = sub nsw i32 %sub1145, 2
  %834 = load ptr, ptr %Diagonal_map, align 8, !tbaa !4
  %835 = load i32, ptr %col2, align 4, !tbaa !8
  %idxprom1147 = sext i32 %835 to i64
  %arrayidx1148 = getelementptr inbounds i32, ptr %834, i64 %idxprom1147
  store i32 %sub1146, ptr %arrayidx1148, align 4, !tbaa !8
  %836 = load i32, ptr %col2, align 4, !tbaa !8
  %837 = load ptr, ptr %Diagonal_imap, align 8, !tbaa !4
  %838 = load i32, ptr %row2, align 4, !tbaa !8
  %idxprom1149 = sext i32 %838 to i64
  %arrayidx1150 = getelementptr inbounds i32, ptr %837, i64 %idxprom1149
  store i32 %836, ptr %arrayidx1150, align 4, !tbaa !8
  br label %if.end1151

if.end1151:                                       ; preds = %if.then1134, %if.end1130
  br label %if.end1152

if.end1152:                                       ; preds = %if.end1151, %if.end1106
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1152, %if.then630, %if.then615, %if.then556, %if.then319, %if.then266
  call void @llvm.lifetime.end.p0(i64 4, ptr %blas_ok) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %ep) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tpend) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Memory) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %col2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %row2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Diagonal_imap) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Diagonal_map) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %search_pivcol_out) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %fncols_new) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %fnrows_new) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %did_rowmerge) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %freebie) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %jcand) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_tlen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_degree) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_tuples) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %tpi) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnc_curr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnr_curr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %do_extend) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %relaxed_front) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra_zeros) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra_rows) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %extra_cols) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %do_update) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_out) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %bestcost) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %thiscost) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_in) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %deg) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %E) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %fncols) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnrows) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcols) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frows) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Woo) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Woi) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wio) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wm) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cdeg_out) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_fnzeros) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frpos) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcpos) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wp) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivcol) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %pivrow) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_LUsize) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %nothing) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnpiv) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %rdeg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cdeg_in) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %row) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %col) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %fnzeros) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_cdeg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rows) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cols) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrows) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Flu) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Flublock) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fu) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wy) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wx) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %C) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcblock) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fublock) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %Flblock) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %relax1) #6
  %839 = load i32, ptr %retval, align 4
  ret i32 %839
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @ztrsv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @zgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @umfzi_row_search(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal void @remove_candidate(i32 noundef %jj, ptr noundef %Work, ptr noundef %Symbolic) #5 {
entry:
  %jj.addr = alloca i32, align 4
  %Work.addr = alloca ptr, align 8
  %Symbolic.addr = alloca ptr, align 8
  store i32 %jj, ptr %jj.addr, align 4, !tbaa !8
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  store ptr %Symbolic, ptr %Symbolic.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %fixQ = getelementptr inbounds %struct.SymbolicType, ptr %0, i32 0, i32 39
  %1 = load i32, ptr %fixQ, align 4, !tbaa !47
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand = getelementptr inbounds %struct.WorkType, ptr %2, i32 0, i32 38
  %3 = load i32, ptr %ncand, align 4, !tbaa !93
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nextcand = getelementptr inbounds %struct.WorkType, ptr %4, i32 0, i32 39
  %5 = load i32, ptr %nextcand, align 8, !tbaa !94
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %nextcand, align 8, !tbaa !94
  %6 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Candidates = getelementptr inbounds %struct.WorkType, ptr %6, i32 0, i32 33
  %arrayidx = getelementptr inbounds [128 x i32], ptr %Candidates, i64 0, i64 0
  store i32 %5, ptr %arrayidx, align 4, !tbaa !8
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nCandidates = getelementptr inbounds %struct.WorkType, ptr %7, i32 0, i32 34
  store i32 0, ptr %nCandidates, align 4, !tbaa !48
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end25

if.else2:                                         ; preds = %entry
  %8 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand3 = getelementptr inbounds %struct.WorkType, ptr %8, i32 0, i32 38
  %9 = load i32, ptr %ncand3, align 4, !tbaa !93
  %cmp4 = icmp sgt i32 %9, 128
  br i1 %cmp4, label %if.then5, label %if.else10

if.then5:                                         ; preds = %if.else2
  %10 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nextcand6 = getelementptr inbounds %struct.WorkType, ptr %10, i32 0, i32 39
  %11 = load i32, ptr %nextcand6, align 8, !tbaa !94
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, ptr %nextcand6, align 8, !tbaa !94
  %12 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Candidates8 = getelementptr inbounds %struct.WorkType, ptr %12, i32 0, i32 33
  %13 = load i32, ptr %jj.addr, align 4, !tbaa !8
  %idxprom = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [128 x i32], ptr %Candidates8, i64 0, i64 %idxprom
  store i32 %11, ptr %arrayidx9, align 4, !tbaa !8
  br label %if.end24

if.else10:                                        ; preds = %if.else2
  %14 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Candidates11 = getelementptr inbounds %struct.WorkType, ptr %14, i32 0, i32 33
  %15 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand12 = getelementptr inbounds %struct.WorkType, ptr %15, i32 0, i32 38
  %16 = load i32, ptr %ncand12, align 4, !tbaa !93
  %sub = sub nsw i32 %16, 1
  %idxprom13 = sext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds [128 x i32], ptr %Candidates11, i64 0, i64 %idxprom13
  %17 = load i32, ptr %arrayidx14, align 4, !tbaa !8
  %18 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Candidates15 = getelementptr inbounds %struct.WorkType, ptr %18, i32 0, i32 33
  %19 = load i32, ptr %jj.addr, align 4, !tbaa !8
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [128 x i32], ptr %Candidates15, i64 0, i64 %idxprom16
  store i32 %17, ptr %arrayidx17, align 4, !tbaa !8
  %20 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Candidates18 = getelementptr inbounds %struct.WorkType, ptr %20, i32 0, i32 33
  %21 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand19 = getelementptr inbounds %struct.WorkType, ptr %21, i32 0, i32 38
  %22 = load i32, ptr %ncand19, align 4, !tbaa !93
  %sub20 = sub nsw i32 %22, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds [128 x i32], ptr %Candidates18, i64 0, i64 %idxprom21
  store i32 -1, ptr %arrayidx22, align 4, !tbaa !8
  %23 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nCandidates23 = getelementptr inbounds %struct.WorkType, ptr %23, i32 0, i32 34
  %24 = load i32, ptr %nCandidates23, align 4, !tbaa !48
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %nCandidates23, align 4, !tbaa !48
  br label %if.end24

if.end24:                                         ; preds = %if.else10, %if.then5
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  %25 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ncand26 = getelementptr inbounds %struct.WorkType, ptr %25, i32 0, i32 38
  %26 = load i32, ptr %ncand26, align 4, !tbaa !93
  %dec27 = add nsw i32 %26, -1
  store i32 %dec27, ptr %ncand26, align 4, !tbaa !93
  ret void
}

declare void @umfzi_mem_free_tail_block(ptr noundef, i32 noundef) #3

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !5, i64 96}
!11 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !9, i64 88, !9, i64 92, !5, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !9, i64 192, !9, i64 196, !9, i64 200, !5, i64 208, !9, i64 216, !5, i64 224, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304}
!12 = !{!"double", !6, i64 0}
!13 = !{!14, !5, i64 0}
!14 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !9, i64 112, !9, i64 116, !5, i64 120, !5, i64 128, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !6, i64 196, !9, i64 708, !9, i64 712, !9, i64 716, !9, i64 720, !9, i64 724, !9, i64 728, !9, i64 732, !9, i64 736, !9, i64 740, !9, i64 744, !9, i64 748, !9, i64 752, !9, i64 756, !9, i64 760, !9, i64 764, !9, i64 768, !9, i64 772, !9, i64 776, !9, i64 780, !9, i64 784, !5, i64 792, !6, i64 800, !6, i64 1056, !5, i64 1312, !5, i64 1320, !5, i64 1328, !5, i64 1336, !5, i64 1344, !5, i64 1352, !5, i64 1360, !5, i64 1368, !9, i64 1376, !9, i64 1380, !9, i64 1384, !9, i64 1388, !9, i64 1392, !9, i64 1396, !9, i64 1400, !9, i64 1404, !9, i64 1408, !9, i64 1412, !9, i64 1416, !9, i64 1420, !9, i64 1424, !9, i64 1428, !9, i64 1432, !9, i64 1436}
!15 = !{!11, !5, i64 128}
!16 = !{!11, !5, i64 152}
!17 = !{!11, !5, i64 160}
!18 = !{!14, !5, i64 8}
!19 = !{!14, !5, i64 16}
!20 = !{!14, !5, i64 24}
!21 = !{!14, !5, i64 40}
!22 = !{!14, !5, i64 56}
!23 = !{!14, !5, i64 48}
!24 = !{!14, !5, i64 64}
!25 = !{!14, !5, i64 1368}
!26 = !{!14, !5, i64 1360}
!27 = !{!14, !5, i64 1344}
!28 = !{!14, !5, i64 1352}
!29 = !{!14, !9, i64 1376}
!30 = !{!14, !9, i64 1380}
!31 = !{!14, !9, i64 1404}
!32 = !{!14, !9, i64 1384}
!33 = !{!14, !9, i64 1388}
!34 = !{!14, !9, i64 1408}
!35 = !{!36, !9, i64 248}
!36 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !9, i64 96, !9, i64 100, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !5, i64 192, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260}
!37 = !{!12, !12, i64 0}
!38 = !{!14, !9, i64 1412}
!39 = !{!14, !5, i64 1336}
!40 = !{!14, !5, i64 1320}
!41 = !{!14, !5, i64 1328}
!42 = !{!14, !5, i64 1312}
!43 = !{!14, !9, i64 1396}
!44 = !{!14, !9, i64 712}
!45 = !{!14, !9, i64 716}
!46 = !{!14, !9, i64 776}
!47 = !{!36, !9, i64 244}
!48 = !{!14, !9, i64 708}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{i64 0, i64 16, !52}
!52 = !{!6, !6, i64 0}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !50}
!57 = !{!58, !9, i64 0}
!58 = !{!"", !9, i64 0, !9, i64 4}
!59 = !{!58, !9, i64 4}
!60 = !{!61, !9, i64 20}
!61 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!62 = !{!61, !9, i64 16}
!63 = distinct !{!63, !50}
!64 = !{i64 0, i64 4, !8, i64 4, i64 4, !8}
!65 = distinct !{!65, !50}
!66 = !{!14, !9, i64 748}
!67 = !{!14, !9, i64 752}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
!71 = distinct !{!71, !50}
!72 = !{!14, !9, i64 160}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = !{!14, !9, i64 1436}
!77 = !{!14, !9, i64 1432}
!78 = !{!14, !9, i64 744}
!79 = !{!14, !9, i64 740}
!80 = !{!14, !9, i64 192}
!81 = !{!14, !5, i64 72}
!82 = !{!14, !9, i64 188}
!83 = !{!14, !9, i64 1424}
!84 = !{!14, !9, i64 1428}
!85 = distinct !{!85, !50}
!86 = !{!14, !9, i64 772}
!87 = !{!14, !9, i64 756}
!88 = !{!14, !9, i64 764}
!89 = !{!14, !9, i64 768}
!90 = !{!14, !5, i64 120}
!91 = !{!14, !5, i64 128}
!92 = !{!14, !9, i64 172}
!93 = !{!14, !9, i64 724}
!94 = !{!14, !9, i64 728}
