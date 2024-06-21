; ModuleID = 'samples/518.bc'
source_filename = "../Source/umf_local_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.WorkType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [64 x i32], [64 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SymbolicType = type { double, double, double, double, double, double, double, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.Unit_union = type { double }
%struct.Tuple = type { i32, i32 }
%struct.Element = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1

; Function Attrs: uwtable
define i32 @umfdi_local_search(ptr noundef %Numeric, ptr noundef %Work, ptr noundef %Symbolic) #0 {
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
  %N = alloca i64, align 8
  %LDA = alloca i64, align 8
  %INCX = alloca i64, align 8
  %Flub = alloca ptr, align 8
  %Fuj = alloca double, align 8
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %M = alloca i64, align 8
  %N175 = alloca i64, align 8
  %LDA177 = alloca i64, align 8
  %INCX179 = alloca i64, align 8
  %INCY = alloca i64, align 8
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
  br i1 %cmp110, label %if.then111, label %if.end431

if.then111:                                       ; preds = %for.end
  %112 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %113 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %arrayidx112 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %114 = load i32, ptr %arrayidx112, align 4, !tbaa !8
  %idxprom113 = sext i32 %114 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %113, i64 %idxprom113
  %115 = load i32, ptr %arrayidx114, align 4, !tbaa !8
  %idx.ext = sext i32 %115 to i64
  %add.ptr = getelementptr inbounds double, ptr %112, i64 %idx.ext
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
  %add.ptr119 = getelementptr inbounds double, ptr %116, i64 %idx.ext118
  store ptr %add.ptr119, ptr %Fu, align 8, !tbaa !4
  %121 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %122 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %123 = load i32, ptr %nb, align 4, !tbaa !8
  %mul = mul nsw i32 %122, %123
  %idx.ext120 = sext i32 %mul to i64
  %add.ptr121 = getelementptr inbounds double, ptr %121, i64 %idx.ext120
  store ptr %add.ptr121, ptr %Flu, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc130, %if.then111
  %124 = load i32, ptr %i, align 4, !tbaa !8
  %125 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp123 = icmp slt i32 %124, %125
  br i1 %cmp123, label %for.body124, label %for.end132

for.body124:                                      ; preds = %for.cond122
  %126 = load ptr, ptr %Fu, align 8, !tbaa !4
  %127 = load i32, ptr %i, align 4, !tbaa !8
  %128 = load i32, ptr %fnc_curr, align 4, !tbaa !8
  %mul125 = mul nsw i32 %127, %128
  %idxprom126 = sext i32 %mul125 to i64
  %arrayidx127 = getelementptr inbounds double, ptr %126, i64 %idxprom126
  %129 = load double, ptr %arrayidx127, align 8, !tbaa !37
  %130 = load ptr, ptr %Flu, align 8, !tbaa !4
  %131 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom128 = sext i32 %131 to i64
  %arrayidx129 = getelementptr inbounds double, ptr %130, i64 %idxprom128
  store double %129, ptr %arrayidx129, align 8, !tbaa !37
  br label %for.inc130

for.inc130:                                       ; preds = %for.body124
  %132 = load i32, ptr %i, align 4, !tbaa !8
  %inc131 = add nsw i32 %132, 1
  store i32 %inc131, ptr %i, align 4, !tbaa !8
  br label %for.cond122, !llvm.loop !51

for.end132:                                       ; preds = %for.cond122
  %133 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp133 = icmp sgt i32 %133, 1
  br i1 %cmp133, label %if.then134, label %if.end162

if.then134:                                       ; preds = %for.end132
  call void @llvm.lifetime.start.p0(i64 8, ptr %N) #6
  %134 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %conv = sext i32 %134 to i64
  store i64 %conv, ptr %N, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr %LDA) #6
  %135 = load i32, ptr %nb, align 4, !tbaa !8
  %conv135 = sext i32 %135 to i64
  store i64 %conv135, ptr %LDA, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr %INCX) #6
  store i64 1, ptr %INCX, align 8, !tbaa !52
  %136 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %137 = load ptr, ptr %Flu, align 8, !tbaa !4
  call void @dtrsv_64_(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %N, ptr noundef %136, ptr noundef %LDA, ptr noundef %137, ptr noundef %INCX)
  call void @llvm.lifetime.end.p0(i64 8, ptr %INCX) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %LDA) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %N) #6
  %138 = load i32, ptr %blas_ok, align 4, !tbaa !8
  %tobool136 = icmp ne i32 %138, 0
  br i1 %tobool136, label %if.end161, label %if.then137

if.then137:                                       ; preds = %if.then134
  call void @llvm.lifetime.start.p0(i64 8, ptr %Flub) #6
  %139 = load ptr, ptr %Flublock, align 8, !tbaa !4
  store ptr %139, ptr %Flub, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc158, %if.then137
  %140 = load i32, ptr %j, align 4, !tbaa !8
  %141 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp139 = icmp slt i32 %140, %141
  br i1 %cmp139, label %for.body141, label %for.end160

for.body141:                                      ; preds = %for.cond138
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fuj) #6
  %142 = load ptr, ptr %Flu, align 8, !tbaa !4
  %143 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom142 = sext i32 %143 to i64
  %arrayidx143 = getelementptr inbounds double, ptr %142, i64 %idxprom142
  %144 = load double, ptr %arrayidx143, align 8, !tbaa !37
  store double %144, ptr %Fuj, align 8, !tbaa !37
  %145 = load i32, ptr %j, align 4, !tbaa !8
  %add = add nsw i32 %145, 1
  store i32 %add, ptr %i, align 4, !tbaa !8
  br label %for.cond144

for.cond144:                                      ; preds = %for.inc153, %for.body141
  %146 = load i32, ptr %i, align 4, !tbaa !8
  %147 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp145 = icmp slt i32 %146, %147
  br i1 %cmp145, label %for.body147, label %for.end155

for.body147:                                      ; preds = %for.cond144
  %148 = load ptr, ptr %Flub, align 8, !tbaa !4
  %149 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom148 = sext i32 %149 to i64
  %arrayidx149 = getelementptr inbounds double, ptr %148, i64 %idxprom148
  %150 = load double, ptr %arrayidx149, align 8, !tbaa !37
  %151 = load double, ptr %Fuj, align 8, !tbaa !37
  %152 = load ptr, ptr %Flu, align 8, !tbaa !4
  %153 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom151 = sext i32 %153 to i64
  %arrayidx152 = getelementptr inbounds double, ptr %152, i64 %idxprom151
  %154 = load double, ptr %arrayidx152, align 8, !tbaa !37
  %neg = fneg double %150
  %155 = call double @llvm.fmuladd.f64(double %neg, double %151, double %154)
  store double %155, ptr %arrayidx152, align 8, !tbaa !37
  br label %for.inc153

for.inc153:                                       ; preds = %for.body147
  %156 = load i32, ptr %i, align 4, !tbaa !8
  %inc154 = add nsw i32 %156, 1
  store i32 %inc154, ptr %i, align 4, !tbaa !8
  br label %for.cond144, !llvm.loop !54

for.end155:                                       ; preds = %for.cond144
  %157 = load i32, ptr %nb, align 4, !tbaa !8
  %158 = load ptr, ptr %Flub, align 8, !tbaa !4
  %idx.ext156 = sext i32 %157 to i64
  %add.ptr157 = getelementptr inbounds double, ptr %158, i64 %idx.ext156
  store ptr %add.ptr157, ptr %Flub, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fuj) #6
  br label %for.inc158

for.inc158:                                       ; preds = %for.end155
  %159 = load i32, ptr %j, align 4, !tbaa !8
  %inc159 = add nsw i32 %159, 1
  store i32 %inc159, ptr %j, align 4, !tbaa !8
  br label %for.cond138, !llvm.loop !55

for.end160:                                       ; preds = %for.cond138
  call void @llvm.lifetime.end.p0(i64 8, ptr %Flub) #6
  br label %if.end161

if.end161:                                        ; preds = %for.end160, %if.then134
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %for.end132
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc171, %if.end162
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %161 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp164 = icmp slt i32 %160, %161
  br i1 %cmp164, label %for.body166, label %for.end173

for.body166:                                      ; preds = %for.cond163
  %162 = load ptr, ptr %Fs, align 8, !tbaa !4
  %163 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom167 = sext i32 %163 to i64
  %arrayidx168 = getelementptr inbounds double, ptr %162, i64 %idxprom167
  %164 = load double, ptr %arrayidx168, align 8, !tbaa !37
  %165 = load ptr, ptr %Wy, align 8, !tbaa !4
  %166 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom169 = sext i32 %166 to i64
  %arrayidx170 = getelementptr inbounds double, ptr %165, i64 %idxprom169
  store double %164, ptr %arrayidx170, align 8, !tbaa !37
  br label %for.inc171

for.inc171:                                       ; preds = %for.body166
  %167 = load i32, ptr %i, align 4, !tbaa !8
  %inc172 = add nsw i32 %167, 1
  store i32 %inc172, ptr %i, align 4, !tbaa !8
  br label %for.cond163, !llvm.loop !56

for.end173:                                       ; preds = %for.cond163
  call void @llvm.lifetime.start.p0(i64 8, ptr %alpha) #6
  store double -1.000000e+00, ptr %alpha, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %beta) #6
  store double 1.000000e+00, ptr %beta, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 8, ptr %M) #6
  %168 = load i32, ptr %fnrows, align 4, !tbaa !8
  %conv174 = sext i32 %168 to i64
  store i64 %conv174, ptr %M, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr %N175) #6
  %169 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %conv176 = sext i32 %169 to i64
  store i64 %conv176, ptr %N175, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr %LDA177) #6
  %170 = load i32, ptr %fnr_curr, align 4, !tbaa !8
  %conv178 = sext i32 %170 to i64
  store i64 %conv178, ptr %LDA177, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr %INCX179) #6
  store i64 1, ptr %INCX179, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr %INCY) #6
  store i64 1, ptr %INCY, align 8, !tbaa !52
  %171 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %172 = load ptr, ptr %Flu, align 8, !tbaa !4
  %173 = load ptr, ptr %Wy, align 8, !tbaa !4
  call void @dgemv_64_(ptr noundef @.str.1, ptr noundef %M, ptr noundef %N175, ptr noundef %alpha, ptr noundef %171, ptr noundef %LDA177, ptr noundef %172, ptr noundef %INCX179, ptr noundef %beta, ptr noundef %173, ptr noundef %INCY)
  call void @llvm.lifetime.end.p0(i64 8, ptr %INCY) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %INCX179) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %LDA177) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %N175) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %M) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %beta) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %alpha) #6
  %174 = load i32, ptr %fnrows, align 4, !tbaa !8
  store i32 %174, ptr %cdeg_in, align 4, !tbaa !8
  %175 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %arrayidx180 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %176 = load i32, ptr %arrayidx180, align 4, !tbaa !8
  %idxprom181 = sext i32 %176 to i64
  %arrayidx182 = getelementptr inbounds i32, ptr %175, i64 %idxprom181
  %177 = load i32, ptr %arrayidx182, align 4, !tbaa !8
  store i32 %177, ptr %tpi, align 4, !tbaa !8
  %178 = load i32, ptr %tpi, align 4, !tbaa !8
  %tobool183 = icmp ne i32 %178, 0
  br i1 %tobool183, label %if.then184, label %if.end272

if.then184:                                       ; preds = %for.end173
  %179 = load ptr, ptr %Memory, align 8, !tbaa !4
  %180 = load i32, ptr %tpi, align 4, !tbaa !8
  %idx.ext185 = sext i32 %180 to i64
  %add.ptr186 = getelementptr inbounds %union.Unit_union, ptr %179, i64 %idx.ext185
  store ptr %add.ptr186, ptr %tp, align 8, !tbaa !4
  %181 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %181, ptr %tp1, align 8, !tbaa !4
  %182 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %182, ptr %tp2, align 8, !tbaa !4
  %183 = load ptr, ptr %tp, align 8, !tbaa !4
  %184 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx187 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %185 = load i32, ptr %arrayidx187, align 4, !tbaa !8
  %idxprom188 = sext i32 %185 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %184, i64 %idxprom188
  %186 = load i32, ptr %arrayidx189, align 4, !tbaa !8
  %idx.ext190 = sext i32 %186 to i64
  %add.ptr191 = getelementptr inbounds %struct.Tuple, ptr %183, i64 %idx.ext190
  store ptr %add.ptr191, ptr %tpend, align 8, !tbaa !4
  br label %for.cond192

for.cond192:                                      ; preds = %for.inc265, %if.then184
  %187 = load ptr, ptr %tp, align 8, !tbaa !4
  %188 = load ptr, ptr %tpend, align 8, !tbaa !4
  %cmp193 = icmp ult ptr %187, %188
  br i1 %cmp193, label %for.body195, label %for.end267

for.body195:                                      ; preds = %for.cond192
  %189 = load ptr, ptr %tp, align 8, !tbaa !4
  %e196 = getelementptr inbounds %struct.Tuple, ptr %189, i32 0, i32 0
  %190 = load i32, ptr %e196, align 4, !tbaa !57
  store i32 %190, ptr %e, align 4, !tbaa !8
  %191 = load ptr, ptr %E, align 8, !tbaa !4
  %192 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom197 = sext i32 %192 to i64
  %arrayidx198 = getelementptr inbounds i32, ptr %191, i64 %idxprom197
  %193 = load i32, ptr %arrayidx198, align 4, !tbaa !8
  %tobool199 = icmp ne i32 %193, 0
  br i1 %tobool199, label %if.end201, label %if.then200

if.then200:                                       ; preds = %for.body195
  br label %for.inc265

if.end201:                                        ; preds = %for.body195
  %194 = load ptr, ptr %tp, align 8, !tbaa !4
  %f202 = getelementptr inbounds %struct.Tuple, ptr %194, i32 0, i32 1
  %195 = load i32, ptr %f202, align 4, !tbaa !59
  store i32 %195, ptr %f, align 4, !tbaa !8
  %196 = load ptr, ptr %Memory, align 8, !tbaa !4
  %197 = load ptr, ptr %E, align 8, !tbaa !4
  %198 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom203 = sext i32 %198 to i64
  %arrayidx204 = getelementptr inbounds i32, ptr %197, i64 %idxprom203
  %199 = load i32, ptr %arrayidx204, align 4, !tbaa !8
  %idx.ext205 = sext i32 %199 to i64
  %add.ptr206 = getelementptr inbounds %union.Unit_union, ptr %196, i64 %idx.ext205
  store ptr %add.ptr206, ptr %p, align 8, !tbaa !4
  %200 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %200, ptr %ep, align 8, !tbaa !4
  %201 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr207 = getelementptr inbounds %union.Unit_union, ptr %201, i64 4
  store ptr %add.ptr207, ptr %p, align 8, !tbaa !4
  %202 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %202, ptr %Cols, align 8, !tbaa !4
  %203 = load ptr, ptr %Cols, align 8, !tbaa !4
  %204 = load i32, ptr %f, align 4, !tbaa !8
  %idxprom208 = sext i32 %204 to i64
  %arrayidx209 = getelementptr inbounds i32, ptr %203, i64 %idxprom208
  %205 = load i32, ptr %arrayidx209, align 4, !tbaa !8
  %cmp210 = icmp eq i32 %205, -1
  br i1 %cmp210, label %if.then212, label %if.end213

if.then212:                                       ; preds = %if.end201
  br label %for.inc265

if.end213:                                        ; preds = %if.end201
  %206 = load ptr, ptr %Cols, align 8, !tbaa !4
  %207 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols = getelementptr inbounds %struct.Element, ptr %207, i32 0, i32 5
  %208 = load i32, ptr %ncols, align 4, !tbaa !60
  %idx.ext214 = sext i32 %208 to i64
  %add.ptr215 = getelementptr inbounds i32, ptr %206, i64 %idx.ext214
  store ptr %add.ptr215, ptr %Rows, align 8, !tbaa !4
  %209 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrows216 = getelementptr inbounds %struct.Element, ptr %209, i32 0, i32 4
  %210 = load i32, ptr %nrows216, align 4, !tbaa !62
  store i32 %210, ptr %nrows, align 4, !tbaa !8
  %211 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols217 = getelementptr inbounds %struct.Element, ptr %211, i32 0, i32 5
  %212 = load i32, ptr %ncols217, align 4, !tbaa !60
  %213 = load i32, ptr %nrows, align 4, !tbaa !8
  %add218 = add nsw i32 %212, %213
  %conv219 = sext i32 %add218 to i64
  %mul220 = mul i64 4, %conv219
  %add221 = add i64 %mul220, 8
  %sub = sub i64 %add221, 1
  %div222 = udiv i64 %sub, 8
  %214 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr223 = getelementptr inbounds %union.Unit_union, ptr %214, i64 %div222
  store ptr %add.ptr223, ptr %p, align 8, !tbaa !4
  %215 = load ptr, ptr %p, align 8, !tbaa !4
  %216 = load i32, ptr %f, align 4, !tbaa !8
  %217 = load i32, ptr %nrows, align 4, !tbaa !8
  %mul224 = mul nsw i32 %216, %217
  %idx.ext225 = sext i32 %mul224 to i64
  %add.ptr226 = getelementptr inbounds double, ptr %215, i64 %idx.ext225
  store ptr %add.ptr226, ptr %C, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc262, %if.end213
  %218 = load i32, ptr %i, align 4, !tbaa !8
  %219 = load i32, ptr %nrows, align 4, !tbaa !8
  %cmp228 = icmp slt i32 %218, %219
  br i1 %cmp228, label %for.body230, label %for.end264

for.body230:                                      ; preds = %for.cond227
  %220 = load ptr, ptr %Rows, align 8, !tbaa !4
  %221 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom231 = sext i32 %221 to i64
  %arrayidx232 = getelementptr inbounds i32, ptr %220, i64 %idxprom231
  %222 = load i32, ptr %arrayidx232, align 4, !tbaa !8
  store i32 %222, ptr %row, align 4, !tbaa !8
  %223 = load i32, ptr %row, align 4, !tbaa !8
  %cmp233 = icmp sge i32 %223, 0
  br i1 %cmp233, label %if.then235, label %if.end261

if.then235:                                       ; preds = %for.body230
  %224 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %225 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom236 = sext i32 %225 to i64
  %arrayidx237 = getelementptr inbounds i32, ptr %224, i64 %idxprom236
  %226 = load i32, ptr %arrayidx237, align 4, !tbaa !8
  store i32 %226, ptr %pos, align 4, !tbaa !8
  %227 = load i32, ptr %pos, align 4, !tbaa !8
  %cmp238 = icmp slt i32 %227, 0
  br i1 %cmp238, label %if.then240, label %if.else254

if.then240:                                       ; preds = %if.then235
  %228 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %229 = load i32, ptr %max_cdeg, align 4, !tbaa !8
  %cmp241 = icmp sge i32 %228, %229
  br i1 %cmp241, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.then240
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end244:                                        ; preds = %if.then240
  %230 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %231 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %232 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom245 = sext i32 %232 to i64
  %arrayidx246 = getelementptr inbounds i32, ptr %231, i64 %idxprom245
  store i32 %230, ptr %arrayidx246, align 4, !tbaa !8
  %233 = load i32, ptr %row, align 4, !tbaa !8
  %234 = load ptr, ptr %Frows, align 8, !tbaa !4
  %235 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %idxprom247 = sext i32 %235 to i64
  %arrayidx248 = getelementptr inbounds i32, ptr %234, i64 %idxprom247
  store i32 %233, ptr %arrayidx248, align 4, !tbaa !8
  %236 = load ptr, ptr %C, align 8, !tbaa !4
  %237 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom249 = sext i32 %237 to i64
  %arrayidx250 = getelementptr inbounds double, ptr %236, i64 %idxprom249
  %238 = load double, ptr %arrayidx250, align 8, !tbaa !37
  %239 = load ptr, ptr %Wy, align 8, !tbaa !4
  %240 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %inc251 = add nsw i32 %240, 1
  store i32 %inc251, ptr %cdeg_in, align 4, !tbaa !8
  %idxprom252 = sext i32 %240 to i64
  %arrayidx253 = getelementptr inbounds double, ptr %239, i64 %idxprom252
  store double %238, ptr %arrayidx253, align 8, !tbaa !37
  br label %if.end260

if.else254:                                       ; preds = %if.then235
  %241 = load ptr, ptr %C, align 8, !tbaa !4
  %242 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom255 = sext i32 %242 to i64
  %arrayidx256 = getelementptr inbounds double, ptr %241, i64 %idxprom255
  %243 = load double, ptr %arrayidx256, align 8, !tbaa !37
  %244 = load ptr, ptr %Wy, align 8, !tbaa !4
  %245 = load i32, ptr %pos, align 4, !tbaa !8
  %idxprom257 = sext i32 %245 to i64
  %arrayidx258 = getelementptr inbounds double, ptr %244, i64 %idxprom257
  %246 = load double, ptr %arrayidx258, align 8, !tbaa !37
  %add259 = fadd double %246, %243
  store double %add259, ptr %arrayidx258, align 8, !tbaa !37
  br label %if.end260

if.end260:                                        ; preds = %if.else254, %if.end244
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %for.body230
  br label %for.inc262

for.inc262:                                       ; preds = %if.end261
  %247 = load i32, ptr %i, align 4, !tbaa !8
  %inc263 = add nsw i32 %247, 1
  store i32 %inc263, ptr %i, align 4, !tbaa !8
  br label %for.cond227, !llvm.loop !63

for.end264:                                       ; preds = %for.cond227
  %248 = load ptr, ptr %tp2, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.Tuple, ptr %248, i32 1
  store ptr %incdec.ptr, ptr %tp2, align 8, !tbaa !4
  %249 = load ptr, ptr %tp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %248, ptr align 4 %249, i64 8, i1 false), !tbaa.struct !64
  br label %for.inc265

for.inc265:                                       ; preds = %for.end264, %if.then212, %if.then200
  %250 = load ptr, ptr %tp, align 8, !tbaa !4
  %incdec.ptr266 = getelementptr inbounds %struct.Tuple, ptr %250, i32 1
  store ptr %incdec.ptr266, ptr %tp, align 8, !tbaa !4
  br label %for.cond192, !llvm.loop !65

for.end267:                                       ; preds = %for.cond192
  %251 = load ptr, ptr %tp2, align 8, !tbaa !4
  %252 = load ptr, ptr %tp1, align 8, !tbaa !4
  %sub.ptr.lhs.cast = ptrtoint ptr %251 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %252 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv268 = trunc i64 %sub.ptr.div to i32
  %253 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx269 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %254 = load i32, ptr %arrayidx269, align 4, !tbaa !8
  %idxprom270 = sext i32 %254 to i64
  %arrayidx271 = getelementptr inbounds i32, ptr %253, i64 %idxprom270
  store i32 %conv268, ptr %arrayidx271, align 4, !tbaa !8
  br label %if.end272

if.end272:                                        ; preds = %for.end267, %for.end173
  %255 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %256 = load i32, ptr %fnrows, align 4, !tbaa !8
  %sub273 = sub nsw i32 %255, %256
  store i32 %sub273, ptr %nr_in, align 4, !tbaa !8
  %257 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %258 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %259 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %260 = load i32, ptr %fnrows, align 4, !tbaa !8
  %261 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %262 = load ptr, ptr %Frows, align 8, !tbaa !4
  %263 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %arrayidx274 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arraydecay = getelementptr inbounds [2 x i32], ptr %arrayidx274, i64 0, i64 0
  %arrayidx275 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arraydecay276 = getelementptr inbounds [2 x i32], ptr %arrayidx275, i64 0, i64 0
  %264 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %265 = load ptr, ptr %Wio, align 8, !tbaa !4
  %arraydecay277 = getelementptr inbounds [2 x i32], ptr %nothing, i64 0, i64 0
  %266 = load ptr, ptr %Wy, align 8, !tbaa !4
  %arrayidx278 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %267 = load i32, ptr %arrayidx278, align 4, !tbaa !8
  %arraydecay279 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 0
  %call = call i32 @umfdi_row_search(ptr noundef %257, ptr noundef %258, ptr noundef %259, i32 noundef %260, i32 noundef %261, ptr noundef %262, ptr noundef %263, ptr noundef %arraydecay, ptr noundef %arraydecay276, ptr noundef %264, ptr noundef %265, ptr noundef %arraydecay277, ptr noundef %266, i32 noundef %267, ptr noundef %arraydecay279)
  store i32 %call, ptr %status, align 4, !tbaa !8
  %268 = load i32, ptr %status, align 4, !tbaa !8
  %cmp280 = icmp eq i32 %268, -11
  br i1 %cmp280, label %if.then282, label %if.end283

if.then282:                                       ; preds = %if.end272
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end283:                                        ; preds = %if.end272
  %arrayidx284 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx285 = getelementptr inbounds [2 x i32], ptr %arrayidx284, i64 0, i64 0
  %269 = load i32, ptr %arrayidx285, align 16, !tbaa !8
  %cmp286 = icmp ne i32 %269, -1
  br i1 %cmp286, label %if.then288, label %if.end324

if.then288:                                       ; preds = %if.end283
  %arrayidx289 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx290 = getelementptr inbounds [2 x i32], ptr %arrayidx289, i64 0, i64 0
  %270 = load i32, ptr %arrayidx290, align 16, !tbaa !8
  %271 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub291 = sub nsw i32 %270, %271
  store i32 %sub291, ptr %nc, align 4, !tbaa !8
  %272 = load i32, ptr %nr_in, align 4, !tbaa !8
  %273 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub292 = sub nsw i32 %273, 1
  %mul293 = mul nsw i32 %272, %sub292
  %274 = load i32, ptr %nc, align 4, !tbaa !8
  %275 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %sub294 = sub nsw i32 %275, 1
  %mul295 = mul nsw i32 %274, %sub294
  %add296 = add nsw i32 %mul293, %mul295
  store i32 %add296, ptr %thiscost, align 4, !tbaa !8
  %276 = load i32, ptr %fnrows, align 4, !tbaa !8
  %sub297 = sub nsw i32 %276, 1
  %277 = load i32, ptr %nr_in, align 4, !tbaa !8
  %add298 = add nsw i32 %sub297, %277
  %arrayidx299 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx300 = getelementptr inbounds [2 x i32], ptr %arrayidx299, i64 0, i64 0
  store i32 %add298, ptr %arrayidx300, align 16, !tbaa !8
  %278 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub301 = sub nsw i32 %278, 1
  %279 = load i32, ptr %nc, align 4, !tbaa !8
  %add302 = add nsw i32 %sub301, %279
  %arrayidx303 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx304 = getelementptr inbounds [2 x i32], ptr %arrayidx303, i64 0, i64 0
  store i32 %add302, ptr %arrayidx304, align 16, !tbaa !8
  store i32 1, ptr %do_extend, align 4, !tbaa !8
  %280 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros305 = getelementptr inbounds %struct.WorkType, ptr %280, i32 0, i32 74
  %281 = load i32, ptr %fnzeros305, align 4, !tbaa !38
  %282 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %283 = load i32, ptr %nr_in, align 4, !tbaa !8
  %284 = load i32, ptr %nc, align 4, !tbaa !8
  %add306 = add nsw i32 %283, %284
  %mul307 = mul nsw i32 %282, %add306
  %add308 = add nsw i32 %281, %mul307
  store i32 %add308, ptr %fnzeros, align 4, !tbaa !8
  %285 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %add309 = add nsw i32 %285, 1
  %286 = load i32, ptr %fnrows, align 4, !tbaa !8
  %287 = load i32, ptr %nr_in, align 4, !tbaa !8
  %add310 = add nsw i32 %286, %287
  %288 = load i32, ptr %fncols, align 4, !tbaa !8
  %add311 = add nsw i32 %add310, %288
  %289 = load i32, ptr %nc, align 4, !tbaa !8
  %add312 = add nsw i32 %add311, %289
  %mul313 = mul nsw i32 %add309, %add312
  store i32 %mul313, ptr %new_LUsize, align 4, !tbaa !8
  %290 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp314 = icmp sgt i32 %290, 0
  br i1 %cmp314, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then288
  %291 = load i32, ptr %fnzeros, align 4, !tbaa !8
  %conv316 = sitofp i32 %291 to double
  %292 = load i32, ptr %new_LUsize, align 4, !tbaa !8
  %conv317 = sitofp i32 %292 to double
  %div318 = fdiv double %conv316, %conv317
  %cmp319 = fcmp ogt double %div318, 1.000000e-01
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then288
  %293 = phi i1 [ false, %if.then288 ], [ %cmp319, %land.rhs ]
  %land.ext = zext i1 %293 to i32
  store i32 %land.ext, ptr %do_update, align 4, !tbaa !8
  %294 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case321 = getelementptr inbounds %struct.WorkType, ptr %294, i32 0, i32 51
  store i32 0, ptr %pivot_case321, align 8, !tbaa !46
  %295 = load i32, ptr %thiscost, align 4, !tbaa !8
  store i32 %295, ptr %bestcost, align 4, !tbaa !8
  %296 = load i32, ptr %do_extend, align 4, !tbaa !8
  %297 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend322 = getelementptr inbounds %struct.WorkType, ptr %297, i32 0, i32 44
  store i32 %296, ptr %do_extend322, align 4, !tbaa !66
  %298 = load i32, ptr %do_update, align 4, !tbaa !8
  %299 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update323 = getelementptr inbounds %struct.WorkType, ptr %299, i32 0, i32 45
  store i32 %298, ptr %do_update323, align 8, !tbaa !67
  %300 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %300, ptr %new_fnzeros, align 4, !tbaa !8
  br label %if.end324

if.end324:                                        ; preds = %land.end, %if.end283
  %arrayidx325 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx326 = getelementptr inbounds [2 x i32], ptr %arrayidx325, i64 0, i64 1
  %301 = load i32, ptr %arrayidx326, align 4, !tbaa !8
  %cmp327 = icmp ne i32 %301, -1
  br i1 %cmp327, label %if.then329, label %if.end430

if.then329:                                       ; preds = %if.end324
  store i32 0, ptr %nc, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc345, %if.then329
  %302 = load i32, ptr %i, align 4, !tbaa !8
  %arrayidx331 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx332 = getelementptr inbounds [2 x i32], ptr %arrayidx331, i64 0, i64 1
  %303 = load i32, ptr %arrayidx332, align 4, !tbaa !8
  %cmp333 = icmp slt i32 %302, %303
  br i1 %cmp333, label %for.body335, label %for.end347

for.body335:                                      ; preds = %for.cond330
  %304 = load ptr, ptr %Wio, align 8, !tbaa !4
  %305 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom336 = sext i32 %305 to i64
  %arrayidx337 = getelementptr inbounds i32, ptr %304, i64 %idxprom336
  %306 = load i32, ptr %arrayidx337, align 4, !tbaa !8
  store i32 %306, ptr %col, align 4, !tbaa !8
  %307 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %308 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom338 = sext i32 %308 to i64
  %arrayidx339 = getelementptr inbounds i32, ptr %307, i64 %idxprom338
  %309 = load i32, ptr %arrayidx339, align 4, !tbaa !8
  %cmp340 = icmp slt i32 %309, 0
  br i1 %cmp340, label %if.then342, label %if.end344

if.then342:                                       ; preds = %for.body335
  %310 = load i32, ptr %nc, align 4, !tbaa !8
  %inc343 = add nsw i32 %310, 1
  store i32 %inc343, ptr %nc, align 4, !tbaa !8
  br label %if.end344

if.end344:                                        ; preds = %if.then342, %for.body335
  br label %for.inc345

for.inc345:                                       ; preds = %if.end344
  %311 = load i32, ptr %i, align 4, !tbaa !8
  %inc346 = add nsw i32 %311, 1
  store i32 %inc346, ptr %i, align 4, !tbaa !8
  br label %for.cond330, !llvm.loop !68

for.end347:                                       ; preds = %for.cond330
  %312 = load i32, ptr %nc, align 4, !tbaa !8
  %313 = load i32, ptr %fnrows, align 4, !tbaa !8
  %mul348 = mul nsw i32 %312, %313
  %314 = load i32, ptr %nr_in, align 4, !tbaa !8
  %sub349 = sub nsw i32 %314, 1
  %arrayidx350 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx351 = getelementptr inbounds [2 x i32], ptr %arrayidx350, i64 0, i64 1
  %315 = load i32, ptr %arrayidx351, align 4, !tbaa !8
  %sub352 = sub nsw i32 %315, 1
  %mul353 = mul nsw i32 %sub349, %sub352
  %add354 = add nsw i32 %mul348, %mul353
  store i32 %add354, ptr %thiscost, align 4, !tbaa !8
  %316 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub355 = sub nsw i32 %316, 1
  %317 = load i32, ptr %nc, align 4, !tbaa !8
  %add356 = add nsw i32 %sub355, %317
  %arrayidx357 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx358 = getelementptr inbounds [2 x i32], ptr %arrayidx357, i64 0, i64 1
  %318 = load i32, ptr %arrayidx358, align 4, !tbaa !8
  %sub359 = sub nsw i32 %318, 1
  %sub360 = sub nsw i32 %add356, %sub359
  store i32 %sub360, ptr %extra_cols, align 4, !tbaa !8
  %319 = load i32, ptr %nr_in, align 4, !tbaa !8
  %sub361 = sub nsw i32 %319, 1
  %320 = load i32, ptr %extra_cols, align 4, !tbaa !8
  %mul362 = mul nsw i32 %sub361, %320
  store i32 %mul362, ptr %extra_zeros, align 4, !tbaa !8
  %321 = load i32, ptr %fnrows, align 4, !tbaa !8
  %322 = load i32, ptr %nr_in, align 4, !tbaa !8
  %sub363 = sub nsw i32 %322, 1
  %add364 = add nsw i32 %321, %sub363
  %arrayidx365 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx366 = getelementptr inbounds [2 x i32], ptr %arrayidx365, i64 0, i64 1
  store i32 %add364, ptr %arrayidx366, align 4, !tbaa !8
  %323 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub367 = sub nsw i32 %323, 1
  %324 = load i32, ptr %nc, align 4, !tbaa !8
  %add368 = add nsw i32 %sub367, %324
  %arrayidx369 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx370 = getelementptr inbounds [2 x i32], ptr %arrayidx369, i64 0, i64 1
  store i32 %add368, ptr %arrayidx370, align 4, !tbaa !8
  %arrayidx371 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx372 = getelementptr inbounds [2 x i32], ptr %arrayidx371, i64 0, i64 1
  %325 = load i32, ptr %arrayidx372, align 4, !tbaa !8
  %arrayidx373 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx374 = getelementptr inbounds [2 x i32], ptr %arrayidx373, i64 0, i64 1
  %326 = load i32, ptr %arrayidx374, align 4, !tbaa !8
  %mul375 = mul nsw i32 %325, %326
  store i32 %mul375, ptr %relaxed_front, align 4, !tbaa !8
  %327 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %cmp376 = icmp eq i32 %327, 0
  br i1 %cmp376, label %if.then378, label %if.else379

if.then378:                                       ; preds = %for.end347
  store i32 1, ptr %do_extend, align 4, !tbaa !8
  br label %if.end385

if.else379:                                       ; preds = %for.end347
  %328 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %conv380 = sitofp i32 %328 to double
  %329 = load double, ptr %relax1, align 8, !tbaa !37
  %330 = load i32, ptr %relaxed_front, align 4, !tbaa !8
  %conv381 = sitofp i32 %330 to double
  %mul382 = fmul double %329, %conv381
  %cmp383 = fcmp olt double %conv380, %mul382
  %conv384 = zext i1 %cmp383 to i32
  store i32 %conv384, ptr %do_extend, align 4, !tbaa !8
  br label %if.end385

if.end385:                                        ; preds = %if.else379, %if.then378
  %331 = load i32, ptr %do_extend, align 4, !tbaa !8
  %tobool386 = icmp ne i32 %331, 0
  br i1 %tobool386, label %if.then387, label %if.else408

if.then387:                                       ; preds = %if.end385
  %332 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %333 = load i32, ptr %thiscost, align 4, !tbaa !8
  %add388 = add nsw i32 %333, %332
  store i32 %add388, ptr %thiscost, align 4, !tbaa !8
  %334 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros389 = getelementptr inbounds %struct.WorkType, ptr %334, i32 0, i32 74
  %335 = load i32, ptr %fnzeros389, align 4, !tbaa !38
  %336 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %337 = load i32, ptr %nr_in, align 4, !tbaa !8
  %338 = load i32, ptr %nc, align 4, !tbaa !8
  %add390 = add nsw i32 %337, %338
  %mul391 = mul nsw i32 %336, %add390
  %add392 = add nsw i32 %335, %mul391
  store i32 %add392, ptr %fnzeros, align 4, !tbaa !8
  %339 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %add393 = add nsw i32 %339, 1
  %340 = load i32, ptr %fnrows, align 4, !tbaa !8
  %341 = load i32, ptr %nr_in, align 4, !tbaa !8
  %add394 = add nsw i32 %340, %341
  %342 = load i32, ptr %fncols, align 4, !tbaa !8
  %add395 = add nsw i32 %add394, %342
  %343 = load i32, ptr %nc, align 4, !tbaa !8
  %add396 = add nsw i32 %add395, %343
  %mul397 = mul nsw i32 %add393, %add396
  store i32 %mul397, ptr %new_LUsize, align 4, !tbaa !8
  %344 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp398 = icmp sgt i32 %344, 0
  br i1 %cmp398, label %land.rhs400, label %land.end406

land.rhs400:                                      ; preds = %if.then387
  %345 = load i32, ptr %fnzeros, align 4, !tbaa !8
  %conv401 = sitofp i32 %345 to double
  %346 = load i32, ptr %new_LUsize, align 4, !tbaa !8
  %conv402 = sitofp i32 %346 to double
  %div403 = fdiv double %conv401, %conv402
  %cmp404 = fcmp ogt double %div403, 1.250000e-01
  br label %land.end406

land.end406:                                      ; preds = %land.rhs400, %if.then387
  %347 = phi i1 [ false, %if.then387 ], [ %cmp404, %land.rhs400 ]
  %land.ext407 = zext i1 %347 to i32
  store i32 %land.ext407, ptr %do_update, align 4, !tbaa !8
  br label %if.end419

if.else408:                                       ; preds = %if.end385
  %348 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp409 = icmp sgt i32 %348, 0
  %conv410 = zext i1 %cmp409 to i32
  store i32 %conv410, ptr %do_update, align 4, !tbaa !8
  store i32 0, ptr %fnzeros, align 4, !tbaa !8
  %349 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %sub411 = sub nsw i32 %349, 1
  %arrayidx412 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx413 = getelementptr inbounds [2 x i32], ptr %arrayidx412, i64 0, i64 1
  store i32 %sub411, ptr %arrayidx413, align 4, !tbaa !8
  %arrayidx414 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx415 = getelementptr inbounds [2 x i32], ptr %arrayidx414, i64 0, i64 1
  %350 = load i32, ptr %arrayidx415, align 4, !tbaa !8
  %sub416 = sub nsw i32 %350, 1
  %arrayidx417 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx418 = getelementptr inbounds [2 x i32], ptr %arrayidx417, i64 0, i64 1
  store i32 %sub416, ptr %arrayidx418, align 4, !tbaa !8
  br label %if.end419

if.end419:                                        ; preds = %if.else408, %land.end406
  %351 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp420 = icmp eq i32 %351, -1
  br i1 %cmp420, label %if.then425, label %lor.lhs.false422

lor.lhs.false422:                                 ; preds = %if.end419
  %352 = load i32, ptr %thiscost, align 4, !tbaa !8
  %353 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp423 = icmp slt i32 %352, %353
  br i1 %cmp423, label %if.then425, label %if.end429

if.then425:                                       ; preds = %lor.lhs.false422, %if.end419
  %354 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case426 = getelementptr inbounds %struct.WorkType, ptr %354, i32 0, i32 51
  store i32 1, ptr %pivot_case426, align 8, !tbaa !46
  %355 = load i32, ptr %thiscost, align 4, !tbaa !8
  store i32 %355, ptr %bestcost, align 4, !tbaa !8
  %356 = load i32, ptr %do_extend, align 4, !tbaa !8
  %357 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend427 = getelementptr inbounds %struct.WorkType, ptr %357, i32 0, i32 44
  store i32 %356, ptr %do_extend427, align 4, !tbaa !66
  %358 = load i32, ptr %do_update, align 4, !tbaa !8
  %359 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update428 = getelementptr inbounds %struct.WorkType, ptr %359, i32 0, i32 45
  store i32 %358, ptr %do_update428, align 8, !tbaa !67
  %360 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %360, ptr %new_fnzeros, align 4, !tbaa !8
  br label %if.end429

if.end429:                                        ; preds = %if.then425, %lor.lhs.false422
  br label %if.end430

if.end430:                                        ; preds = %if.end429, %if.end324
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %for.end
  %361 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp432 = icmp ne i32 %361, 0
  br i1 %cmp432, label %land.rhs434, label %land.end438

land.rhs434:                                      ; preds = %if.end431
  %arrayidx435 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %362 = load i32, ptr %arrayidx435, align 4, !tbaa !8
  %cmp436 = icmp ne i32 %362, -1
  br label %land.end438

land.end438:                                      ; preds = %land.rhs434, %if.end431
  %363 = phi i1 [ false, %if.end431 ], [ %cmp436, %land.rhs434 ]
  %land.ext439 = zext i1 %363 to i32
  store i32 %land.ext439, ptr %search_pivcol_out, align 4, !tbaa !8
  %364 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %prefer_diagonal440 = getelementptr inbounds %struct.SymbolicType, ptr %364, i32 0, i32 40
  %365 = load i32, ptr %prefer_diagonal440, align 8, !tbaa !35
  %tobool441 = icmp ne i32 %365, 0
  br i1 %tobool441, label %if.then442, label %if.end451

if.then442:                                       ; preds = %land.end438
  %366 = load i32, ptr %search_pivcol_out, align 4, !tbaa !8
  %tobool443 = icmp ne i32 %366, 0
  br i1 %tobool443, label %land.rhs444, label %land.end449

land.rhs444:                                      ; preds = %if.then442
  %arrayidx445 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx446 = getelementptr inbounds [2 x i32], ptr %arrayidx445, i64 0, i64 0
  %367 = load i32, ptr %arrayidx446, align 16, !tbaa !8
  %cmp447 = icmp eq i32 %367, -1
  br label %land.end449

land.end449:                                      ; preds = %land.rhs444, %if.then442
  %368 = phi i1 [ false, %if.then442 ], [ %cmp447, %land.rhs444 ]
  %land.ext450 = zext i1 %368 to i32
  store i32 %land.ext450, ptr %search_pivcol_out, align 4, !tbaa !8
  br label %if.end451

if.end451:                                        ; preds = %land.end449, %land.end438
  %369 = load i32, ptr %search_pivcol_out, align 4, !tbaa !8
  %tobool452 = icmp ne i32 %369, 0
  br i1 %tobool452, label %if.then453, label %if.end905

if.then453:                                       ; preds = %if.end451
  store i32 0, ptr %cdeg_out, align 4, !tbaa !8
  %370 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %arrayidx454 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %371 = load i32, ptr %arrayidx454, align 4, !tbaa !8
  %idxprom455 = sext i32 %371 to i64
  %arrayidx456 = getelementptr inbounds i32, ptr %370, i64 %idxprom455
  %372 = load i32, ptr %arrayidx456, align 4, !tbaa !8
  store i32 %372, ptr %tpi, align 4, !tbaa !8
  %373 = load i32, ptr %tpi, align 4, !tbaa !8
  %tobool457 = icmp ne i32 %373, 0
  br i1 %tobool457, label %if.then458, label %if.end553

if.then458:                                       ; preds = %if.then453
  %374 = load ptr, ptr %Memory, align 8, !tbaa !4
  %375 = load i32, ptr %tpi, align 4, !tbaa !8
  %idx.ext459 = sext i32 %375 to i64
  %add.ptr460 = getelementptr inbounds %union.Unit_union, ptr %374, i64 %idx.ext459
  store ptr %add.ptr460, ptr %tp, align 8, !tbaa !4
  %376 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %376, ptr %tp1, align 8, !tbaa !4
  %377 = load ptr, ptr %tp, align 8, !tbaa !4
  store ptr %377, ptr %tp2, align 8, !tbaa !4
  %378 = load ptr, ptr %tp, align 8, !tbaa !4
  %379 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx461 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %380 = load i32, ptr %arrayidx461, align 4, !tbaa !8
  %idxprom462 = sext i32 %380 to i64
  %arrayidx463 = getelementptr inbounds i32, ptr %379, i64 %idxprom462
  %381 = load i32, ptr %arrayidx463, align 4, !tbaa !8
  %idx.ext464 = sext i32 %381 to i64
  %add.ptr465 = getelementptr inbounds %struct.Tuple, ptr %378, i64 %idx.ext464
  store ptr %add.ptr465, ptr %tpend, align 8, !tbaa !4
  br label %for.cond466

for.cond466:                                      ; preds = %for.inc542, %if.then458
  %382 = load ptr, ptr %tp, align 8, !tbaa !4
  %383 = load ptr, ptr %tpend, align 8, !tbaa !4
  %cmp467 = icmp ult ptr %382, %383
  br i1 %cmp467, label %for.body469, label %for.end544

for.body469:                                      ; preds = %for.cond466
  %384 = load ptr, ptr %tp, align 8, !tbaa !4
  %e470 = getelementptr inbounds %struct.Tuple, ptr %384, i32 0, i32 0
  %385 = load i32, ptr %e470, align 4, !tbaa !57
  store i32 %385, ptr %e, align 4, !tbaa !8
  %386 = load ptr, ptr %E, align 8, !tbaa !4
  %387 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom471 = sext i32 %387 to i64
  %arrayidx472 = getelementptr inbounds i32, ptr %386, i64 %idxprom471
  %388 = load i32, ptr %arrayidx472, align 4, !tbaa !8
  %tobool473 = icmp ne i32 %388, 0
  br i1 %tobool473, label %if.end475, label %if.then474

if.then474:                                       ; preds = %for.body469
  br label %for.inc542

if.end475:                                        ; preds = %for.body469
  %389 = load ptr, ptr %tp, align 8, !tbaa !4
  %f476 = getelementptr inbounds %struct.Tuple, ptr %389, i32 0, i32 1
  %390 = load i32, ptr %f476, align 4, !tbaa !59
  store i32 %390, ptr %f, align 4, !tbaa !8
  %391 = load ptr, ptr %Memory, align 8, !tbaa !4
  %392 = load ptr, ptr %E, align 8, !tbaa !4
  %393 = load i32, ptr %e, align 4, !tbaa !8
  %idxprom477 = sext i32 %393 to i64
  %arrayidx478 = getelementptr inbounds i32, ptr %392, i64 %idxprom477
  %394 = load i32, ptr %arrayidx478, align 4, !tbaa !8
  %idx.ext479 = sext i32 %394 to i64
  %add.ptr480 = getelementptr inbounds %union.Unit_union, ptr %391, i64 %idx.ext479
  store ptr %add.ptr480, ptr %p, align 8, !tbaa !4
  %395 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %395, ptr %ep, align 8, !tbaa !4
  %396 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr481 = getelementptr inbounds %union.Unit_union, ptr %396, i64 4
  store ptr %add.ptr481, ptr %p, align 8, !tbaa !4
  %397 = load ptr, ptr %p, align 8, !tbaa !4
  store ptr %397, ptr %Cols, align 8, !tbaa !4
  %398 = load ptr, ptr %Cols, align 8, !tbaa !4
  %399 = load i32, ptr %f, align 4, !tbaa !8
  %idxprom482 = sext i32 %399 to i64
  %arrayidx483 = getelementptr inbounds i32, ptr %398, i64 %idxprom482
  %400 = load i32, ptr %arrayidx483, align 4, !tbaa !8
  %cmp484 = icmp eq i32 %400, -1
  br i1 %cmp484, label %if.then486, label %if.end487

if.then486:                                       ; preds = %if.end475
  br label %for.inc542

if.end487:                                        ; preds = %if.end475
  %401 = load ptr, ptr %Cols, align 8, !tbaa !4
  %402 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols488 = getelementptr inbounds %struct.Element, ptr %402, i32 0, i32 5
  %403 = load i32, ptr %ncols488, align 4, !tbaa !60
  %idx.ext489 = sext i32 %403 to i64
  %add.ptr490 = getelementptr inbounds i32, ptr %401, i64 %idx.ext489
  store ptr %add.ptr490, ptr %Rows, align 8, !tbaa !4
  %404 = load ptr, ptr %ep, align 8, !tbaa !4
  %nrows491 = getelementptr inbounds %struct.Element, ptr %404, i32 0, i32 4
  %405 = load i32, ptr %nrows491, align 4, !tbaa !62
  store i32 %405, ptr %nrows, align 4, !tbaa !8
  %406 = load ptr, ptr %ep, align 8, !tbaa !4
  %ncols492 = getelementptr inbounds %struct.Element, ptr %406, i32 0, i32 5
  %407 = load i32, ptr %ncols492, align 4, !tbaa !60
  %408 = load i32, ptr %nrows, align 4, !tbaa !8
  %add493 = add nsw i32 %407, %408
  %conv494 = sext i32 %add493 to i64
  %mul495 = mul i64 4, %conv494
  %add496 = add i64 %mul495, 8
  %sub497 = sub i64 %add496, 1
  %div498 = udiv i64 %sub497, 8
  %409 = load ptr, ptr %p, align 8, !tbaa !4
  %add.ptr499 = getelementptr inbounds %union.Unit_union, ptr %409, i64 %div498
  store ptr %add.ptr499, ptr %p, align 8, !tbaa !4
  %410 = load ptr, ptr %p, align 8, !tbaa !4
  %411 = load i32, ptr %f, align 4, !tbaa !8
  %412 = load i32, ptr %nrows, align 4, !tbaa !8
  %mul500 = mul nsw i32 %411, %412
  %idx.ext501 = sext i32 %mul500 to i64
  %add.ptr502 = getelementptr inbounds double, ptr %410, i64 %idx.ext501
  store ptr %add.ptr502, ptr %C, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond503

for.cond503:                                      ; preds = %for.inc538, %if.end487
  %413 = load i32, ptr %i, align 4, !tbaa !8
  %414 = load i32, ptr %nrows, align 4, !tbaa !8
  %cmp504 = icmp slt i32 %413, %414
  br i1 %cmp504, label %for.body506, label %for.end540

for.body506:                                      ; preds = %for.cond503
  %415 = load ptr, ptr %Rows, align 8, !tbaa !4
  %416 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom507 = sext i32 %416 to i64
  %arrayidx508 = getelementptr inbounds i32, ptr %415, i64 %idxprom507
  %417 = load i32, ptr %arrayidx508, align 4, !tbaa !8
  store i32 %417, ptr %row, align 4, !tbaa !8
  %418 = load i32, ptr %row, align 4, !tbaa !8
  %cmp509 = icmp sge i32 %418, 0
  br i1 %cmp509, label %if.then511, label %if.end537

if.then511:                                       ; preds = %for.body506
  %419 = load ptr, ptr %Wp, align 8, !tbaa !4
  %420 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom512 = sext i32 %420 to i64
  %arrayidx513 = getelementptr inbounds i32, ptr %419, i64 %idxprom512
  %421 = load i32, ptr %arrayidx513, align 4, !tbaa !8
  store i32 %421, ptr %pos, align 4, !tbaa !8
  %422 = load i32, ptr %pos, align 4, !tbaa !8
  %cmp514 = icmp slt i32 %422, 0
  br i1 %cmp514, label %if.then516, label %if.else530

if.then516:                                       ; preds = %if.then511
  %423 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %424 = load i32, ptr %max_cdeg, align 4, !tbaa !8
  %cmp517 = icmp sge i32 %423, %424
  br i1 %cmp517, label %if.then519, label %if.end520

if.then519:                                       ; preds = %if.then516
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end520:                                        ; preds = %if.then516
  %425 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %426 = load ptr, ptr %Wp, align 8, !tbaa !4
  %427 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom521 = sext i32 %427 to i64
  %arrayidx522 = getelementptr inbounds i32, ptr %426, i64 %idxprom521
  store i32 %425, ptr %arrayidx522, align 4, !tbaa !8
  %428 = load i32, ptr %row, align 4, !tbaa !8
  %429 = load ptr, ptr %Wm, align 8, !tbaa !4
  %430 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %idxprom523 = sext i32 %430 to i64
  %arrayidx524 = getelementptr inbounds i32, ptr %429, i64 %idxprom523
  store i32 %428, ptr %arrayidx524, align 4, !tbaa !8
  %431 = load ptr, ptr %C, align 8, !tbaa !4
  %432 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom525 = sext i32 %432 to i64
  %arrayidx526 = getelementptr inbounds double, ptr %431, i64 %idxprom525
  %433 = load double, ptr %arrayidx526, align 8, !tbaa !37
  %434 = load ptr, ptr %Wx, align 8, !tbaa !4
  %435 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %inc527 = add nsw i32 %435, 1
  store i32 %inc527, ptr %cdeg_out, align 4, !tbaa !8
  %idxprom528 = sext i32 %435 to i64
  %arrayidx529 = getelementptr inbounds double, ptr %434, i64 %idxprom528
  store double %433, ptr %arrayidx529, align 8, !tbaa !37
  br label %if.end536

if.else530:                                       ; preds = %if.then511
  %436 = load ptr, ptr %C, align 8, !tbaa !4
  %437 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom531 = sext i32 %437 to i64
  %arrayidx532 = getelementptr inbounds double, ptr %436, i64 %idxprom531
  %438 = load double, ptr %arrayidx532, align 8, !tbaa !37
  %439 = load ptr, ptr %Wx, align 8, !tbaa !4
  %440 = load i32, ptr %pos, align 4, !tbaa !8
  %idxprom533 = sext i32 %440 to i64
  %arrayidx534 = getelementptr inbounds double, ptr %439, i64 %idxprom533
  %441 = load double, ptr %arrayidx534, align 8, !tbaa !37
  %add535 = fadd double %441, %438
  store double %add535, ptr %arrayidx534, align 8, !tbaa !37
  br label %if.end536

if.end536:                                        ; preds = %if.else530, %if.end520
  br label %if.end537

if.end537:                                        ; preds = %if.end536, %for.body506
  br label %for.inc538

for.inc538:                                       ; preds = %if.end537
  %442 = load i32, ptr %i, align 4, !tbaa !8
  %inc539 = add nsw i32 %442, 1
  store i32 %inc539, ptr %i, align 4, !tbaa !8
  br label %for.cond503, !llvm.loop !69

for.end540:                                       ; preds = %for.cond503
  %443 = load ptr, ptr %tp2, align 8, !tbaa !4
  %incdec.ptr541 = getelementptr inbounds %struct.Tuple, ptr %443, i32 1
  store ptr %incdec.ptr541, ptr %tp2, align 8, !tbaa !4
  %444 = load ptr, ptr %tp, align 8, !tbaa !4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %443, ptr align 4 %444, i64 8, i1 false), !tbaa.struct !64
  br label %for.inc542

for.inc542:                                       ; preds = %for.end540, %if.then486, %if.then474
  %445 = load ptr, ptr %tp, align 8, !tbaa !4
  %incdec.ptr543 = getelementptr inbounds %struct.Tuple, ptr %445, i32 1
  store ptr %incdec.ptr543, ptr %tp, align 8, !tbaa !4
  br label %for.cond466, !llvm.loop !70

for.end544:                                       ; preds = %for.cond466
  %446 = load ptr, ptr %tp2, align 8, !tbaa !4
  %447 = load ptr, ptr %tp1, align 8, !tbaa !4
  %sub.ptr.lhs.cast545 = ptrtoint ptr %446 to i64
  %sub.ptr.rhs.cast546 = ptrtoint ptr %447 to i64
  %sub.ptr.sub547 = sub i64 %sub.ptr.lhs.cast545, %sub.ptr.rhs.cast546
  %sub.ptr.div548 = sdiv exact i64 %sub.ptr.sub547, 8
  %conv549 = trunc i64 %sub.ptr.div548 to i32
  %448 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx550 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %449 = load i32, ptr %arrayidx550, align 4, !tbaa !8
  %idxprom551 = sext i32 %449 to i64
  %arrayidx552 = getelementptr inbounds i32, ptr %448, i64 %idxprom551
  store i32 %conv549, ptr %arrayidx552, align 4, !tbaa !8
  br label %if.end553

if.end553:                                        ; preds = %for.end544, %if.then453
  %450 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %451 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %452 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %453 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %454 = load ptr, ptr %Wm, align 8, !tbaa !4
  %455 = load ptr, ptr %Wp, align 8, !tbaa !4
  %arrayidx554 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arraydecay555 = getelementptr inbounds [2 x i32], ptr %arrayidx554, i64 0, i64 0
  %arrayidx556 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arraydecay557 = getelementptr inbounds [2 x i32], ptr %arrayidx556, i64 0, i64 0
  %456 = load ptr, ptr %Woi, align 8, !tbaa !4
  %457 = load ptr, ptr %Woo, align 8, !tbaa !4
  %arrayidx558 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arraydecay559 = getelementptr inbounds [2 x i32], ptr %arrayidx558, i64 0, i64 0
  %458 = load ptr, ptr %Wx, align 8, !tbaa !4
  %arrayidx560 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %459 = load i32, ptr %arrayidx560, align 4, !tbaa !8
  %arraydecay561 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 0
  %call562 = call i32 @umfdi_row_search(ptr noundef %450, ptr noundef %451, ptr noundef %452, i32 noundef 0, i32 noundef %453, ptr noundef %454, ptr noundef %455, ptr noundef %arraydecay555, ptr noundef %arraydecay557, ptr noundef %456, ptr noundef %457, ptr noundef %arraydecay559, ptr noundef %458, i32 noundef %459, ptr noundef %arraydecay561)
  store i32 %call562, ptr %status, align 4, !tbaa !8
  %460 = load i32, ptr %status, align 4, !tbaa !8
  %cmp563 = icmp eq i32 %460, -11
  br i1 %cmp563, label %if.then565, label %if.end566

if.then565:                                       ; preds = %if.end553
  store i32 -11, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end566:                                        ; preds = %if.end553
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond567

for.cond567:                                      ; preds = %for.inc575, %if.end566
  %461 = load i32, ptr %i, align 4, !tbaa !8
  %462 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp568 = icmp slt i32 %461, %462
  br i1 %cmp568, label %for.body570, label %for.end577

for.body570:                                      ; preds = %for.cond567
  %463 = load ptr, ptr %Wp, align 8, !tbaa !4
  %464 = load ptr, ptr %Wm, align 8, !tbaa !4
  %465 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom571 = sext i32 %465 to i64
  %arrayidx572 = getelementptr inbounds i32, ptr %464, i64 %idxprom571
  %466 = load i32, ptr %arrayidx572, align 4, !tbaa !8
  %idxprom573 = sext i32 %466 to i64
  %arrayidx574 = getelementptr inbounds i32, ptr %463, i64 %idxprom573
  store i32 -1, ptr %arrayidx574, align 4, !tbaa !8
  br label %for.inc575

for.inc575:                                       ; preds = %for.body570
  %467 = load i32, ptr %i, align 4, !tbaa !8
  %inc576 = add nsw i32 %467, 1
  store i32 %inc576, ptr %i, align 4, !tbaa !8
  br label %for.cond567, !llvm.loop !71

for.end577:                                       ; preds = %for.cond567
  %468 = load i32, ptr %status, align 4, !tbaa !8
  %cmp578 = icmp eq i32 %468, 1
  br i1 %cmp578, label %if.then580, label %if.end592

if.then580:                                       ; preds = %for.end577
  %arrayidx581 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  %469 = load i32, ptr %arrayidx581, align 4, !tbaa !8
  %470 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %471 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  call void @remove_candidate(i32 noundef %469, ptr noundef %470, ptr noundef %471)
  %472 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ndiscard = getelementptr inbounds %struct.WorkType, ptr %472, i32 0, i32 24
  %473 = load i32, ptr %ndiscard, align 8, !tbaa !72
  %inc582 = add nsw i32 %473, 1
  store i32 %inc582, ptr %ndiscard, align 8, !tbaa !72
  %474 = load ptr, ptr %Col_tlen, align 8, !tbaa !4
  %arrayidx583 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %475 = load i32, ptr %arrayidx583, align 4, !tbaa !8
  %idxprom584 = sext i32 %475 to i64
  %arrayidx585 = getelementptr inbounds i32, ptr %474, i64 %idxprom584
  store i32 0, ptr %arrayidx585, align 4, !tbaa !8
  %476 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %477 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %arrayidx586 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %478 = load i32, ptr %arrayidx586, align 4, !tbaa !8
  %idxprom587 = sext i32 %478 to i64
  %arrayidx588 = getelementptr inbounds i32, ptr %477, i64 %idxprom587
  %479 = load i32, ptr %arrayidx588, align 4, !tbaa !8
  call void @umfdi_mem_free_tail_block(ptr noundef %476, i32 noundef %479)
  %480 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %arrayidx589 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %481 = load i32, ptr %arrayidx589, align 4, !tbaa !8
  %idxprom590 = sext i32 %481 to i64
  %arrayidx591 = getelementptr inbounds i32, ptr %480, i64 %idxprom590
  store i32 0, ptr %arrayidx591, align 4, !tbaa !8
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end592:                                        ; preds = %for.end577
  %arrayidx593 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 0
  %482 = load i32, ptr %arrayidx593, align 4, !tbaa !8
  %tobool594 = icmp ne i32 %482, 0
  br i1 %tobool594, label %if.then595, label %if.end600

if.then595:                                       ; preds = %if.end592
  %483 = load ptr, ptr %Fcols, align 8, !tbaa !4
  store ptr %483, ptr %Woi, align 8, !tbaa !4
  %arrayidx596 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx597 = getelementptr inbounds [2 x i32], ptr %arrayidx596, i64 0, i64 0
  %484 = load i32, ptr %arrayidx597, align 16, !tbaa !8
  %arrayidx598 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx599 = getelementptr inbounds [2 x i32], ptr %arrayidx598, i64 0, i64 0
  store i32 %484, ptr %arrayidx599, align 8, !tbaa !8
  br label %if.end600

if.end600:                                        ; preds = %if.then595, %if.end592
  %arrayidx601 = getelementptr inbounds [2 x i32], ptr %freebie, i64 0, i64 1
  %485 = load i32, ptr %arrayidx601, align 4, !tbaa !8
  %tobool602 = icmp ne i32 %485, 0
  br i1 %tobool602, label %if.then603, label %if.end608

if.then603:                                       ; preds = %if.end600
  %486 = load ptr, ptr %Wio, align 8, !tbaa !4
  store ptr %486, ptr %Woo, align 8, !tbaa !4
  %arrayidx604 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx605 = getelementptr inbounds [2 x i32], ptr %arrayidx604, i64 0, i64 1
  %487 = load i32, ptr %arrayidx605, align 4, !tbaa !8
  %arrayidx606 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx607 = getelementptr inbounds [2 x i32], ptr %arrayidx606, i64 0, i64 1
  store i32 %487, ptr %arrayidx607, align 4, !tbaa !8
  br label %if.end608

if.end608:                                        ; preds = %if.then603, %if.end600
  %arrayidx609 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx610 = getelementptr inbounds [2 x i32], ptr %arrayidx609, i64 0, i64 0
  %488 = load i32, ptr %arrayidx610, align 8, !tbaa !8
  %cmp611 = icmp ne i32 %488, -1
  br i1 %cmp611, label %if.then613, label %if.end729

if.then613:                                       ; preds = %if.end608
  %489 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp614 = icmp eq i32 %489, 0
  %conv615 = zext i1 %cmp614 to i32
  store i32 %conv615, ptr %did_rowmerge, align 4, !tbaa !8
  %490 = load i32, ptr %did_rowmerge, align 4, !tbaa !8
  %tobool616 = icmp ne i32 %490, 0
  br i1 %tobool616, label %if.then617, label %if.end622

if.then617:                                       ; preds = %if.then613
  %arrayidx618 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx619 = getelementptr inbounds [2 x i32], ptr %arrayidx618, i64 0, i64 0
  %491 = load i32, ptr %arrayidx619, align 8, !tbaa !8
  %492 = load ptr, ptr %Wm, align 8, !tbaa !4
  %arrayidx620 = getelementptr inbounds i32, ptr %492, i64 0
  store i32 %491, ptr %arrayidx620, align 4, !tbaa !8
  %493 = load ptr, ptr %Wx, align 8, !tbaa !4
  %arrayidx621 = getelementptr inbounds double, ptr %493, i64 0
  store double 0.000000e+00, ptr %arrayidx621, align 8, !tbaa !37
  store i32 1, ptr %cdeg_out, align 4, !tbaa !8
  br label %if.end622

if.end622:                                        ; preds = %if.then617, %if.then613
  %arrayidx623 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx624 = getelementptr inbounds [2 x i32], ptr %arrayidx623, i64 0, i64 0
  %494 = load i32, ptr %arrayidx624, align 8, !tbaa !8
  %495 = load i32, ptr %fncols, align 4, !tbaa !8
  %sub625 = sub nsw i32 %494, %495
  store i32 %sub625, ptr %nc, align 4, !tbaa !8
  store i32 0, ptr %nr_out, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond626

for.cond626:                                      ; preds = %for.inc644, %if.end622
  %496 = load i32, ptr %i, align 4, !tbaa !8
  %497 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp627 = icmp slt i32 %496, %497
  br i1 %cmp627, label %for.body629, label %for.end646

for.body629:                                      ; preds = %for.cond626
  %498 = load ptr, ptr %Wm, align 8, !tbaa !4
  %499 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom630 = sext i32 %499 to i64
  %arrayidx631 = getelementptr inbounds i32, ptr %498, i64 %idxprom630
  %500 = load i32, ptr %arrayidx631, align 4, !tbaa !8
  store i32 %500, ptr %row, align 4, !tbaa !8
  %501 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %502 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom632 = sext i32 %502 to i64
  %arrayidx633 = getelementptr inbounds i32, ptr %501, i64 %idxprom632
  %503 = load i32, ptr %arrayidx633, align 4, !tbaa !8
  %cmp634 = icmp slt i32 %503, 0
  br i1 %cmp634, label %if.then641, label %lor.lhs.false636

lor.lhs.false636:                                 ; preds = %for.body629
  %504 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %505 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom637 = sext i32 %505 to i64
  %arrayidx638 = getelementptr inbounds i32, ptr %504, i64 %idxprom637
  %506 = load i32, ptr %arrayidx638, align 4, !tbaa !8
  %507 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp639 = icmp sge i32 %506, %507
  br i1 %cmp639, label %if.then641, label %if.end643

if.then641:                                       ; preds = %lor.lhs.false636, %for.body629
  %508 = load i32, ptr %nr_out, align 4, !tbaa !8
  %inc642 = add nsw i32 %508, 1
  store i32 %inc642, ptr %nr_out, align 4, !tbaa !8
  br label %if.end643

if.end643:                                        ; preds = %if.then641, %lor.lhs.false636
  br label %for.inc644

for.inc644:                                       ; preds = %if.end643
  %509 = load i32, ptr %i, align 4, !tbaa !8
  %inc645 = add nsw i32 %509, 1
  store i32 %inc645, ptr %i, align 4, !tbaa !8
  br label %for.cond626, !llvm.loop !73

for.end646:                                       ; preds = %for.cond626
  %510 = load i32, ptr %nr_out, align 4, !tbaa !8
  %511 = load i32, ptr %fncols, align 4, !tbaa !8
  %mul647 = mul nsw i32 %510, %511
  %512 = load i32, ptr %nc, align 4, !tbaa !8
  %sub648 = sub nsw i32 %512, 1
  %513 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub649 = sub nsw i32 %513, 1
  %mul650 = mul nsw i32 %sub648, %sub649
  %add651 = add nsw i32 %mul647, %mul650
  store i32 %add651, ptr %thiscost, align 4, !tbaa !8
  %514 = load i32, ptr %fnrows, align 4, !tbaa !8
  %sub652 = sub nsw i32 %514, 1
  %515 = load i32, ptr %nr_out, align 4, !tbaa !8
  %add653 = add nsw i32 %sub652, %515
  %516 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub654 = sub nsw i32 %516, 1
  %sub655 = sub nsw i32 %add653, %sub654
  store i32 %sub655, ptr %extra_rows, align 4, !tbaa !8
  %517 = load i32, ptr %nc, align 4, !tbaa !8
  %sub656 = sub nsw i32 %517, 1
  %518 = load i32, ptr %extra_rows, align 4, !tbaa !8
  %mul657 = mul nsw i32 %sub656, %518
  store i32 %mul657, ptr %extra_zeros, align 4, !tbaa !8
  %519 = load i32, ptr %fnrows, align 4, !tbaa !8
  %sub658 = sub nsw i32 %519, 1
  %520 = load i32, ptr %nr_out, align 4, !tbaa !8
  %add659 = add nsw i32 %sub658, %520
  %arrayidx660 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx661 = getelementptr inbounds [2 x i32], ptr %arrayidx660, i64 0, i64 0
  store i32 %add659, ptr %arrayidx661, align 8, !tbaa !8
  %521 = load i32, ptr %fncols, align 4, !tbaa !8
  %522 = load i32, ptr %nc, align 4, !tbaa !8
  %sub662 = sub nsw i32 %522, 1
  %add663 = add nsw i32 %521, %sub662
  %arrayidx664 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx665 = getelementptr inbounds [2 x i32], ptr %arrayidx664, i64 0, i64 0
  store i32 %add663, ptr %arrayidx665, align 8, !tbaa !8
  %arrayidx666 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx667 = getelementptr inbounds [2 x i32], ptr %arrayidx666, i64 0, i64 0
  %523 = load i32, ptr %arrayidx667, align 8, !tbaa !8
  %arrayidx668 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx669 = getelementptr inbounds [2 x i32], ptr %arrayidx668, i64 0, i64 0
  %524 = load i32, ptr %arrayidx669, align 8, !tbaa !8
  %mul670 = mul nsw i32 %523, %524
  store i32 %mul670, ptr %relaxed_front, align 4, !tbaa !8
  %525 = load i32, ptr %did_rowmerge, align 4, !tbaa !8
  %tobool671 = icmp ne i32 %525, 0
  br i1 %tobool671, label %if.then672, label %if.else673

if.then672:                                       ; preds = %for.end646
  store i32 0, ptr %do_extend, align 4, !tbaa !8
  br label %if.end684

if.else673:                                       ; preds = %for.end646
  %526 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %cmp674 = icmp eq i32 %526, 0
  br i1 %cmp674, label %if.then676, label %if.else677

if.then676:                                       ; preds = %if.else673
  store i32 1, ptr %do_extend, align 4, !tbaa !8
  br label %if.end683

if.else677:                                       ; preds = %if.else673
  %527 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %conv678 = sitofp i32 %527 to double
  %528 = load double, ptr %relax1, align 8, !tbaa !37
  %529 = load i32, ptr %relaxed_front, align 4, !tbaa !8
  %conv679 = sitofp i32 %529 to double
  %mul680 = fmul double %528, %conv679
  %cmp681 = fcmp olt double %conv678, %mul680
  %conv682 = zext i1 %cmp681 to i32
  store i32 %conv682, ptr %do_extend, align 4, !tbaa !8
  br label %if.end683

if.end683:                                        ; preds = %if.else677, %if.then676
  br label %if.end684

if.end684:                                        ; preds = %if.end683, %if.then672
  %530 = load i32, ptr %do_extend, align 4, !tbaa !8
  %tobool685 = icmp ne i32 %530, 0
  br i1 %tobool685, label %if.then686, label %if.else707

if.then686:                                       ; preds = %if.end684
  %531 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %532 = load i32, ptr %thiscost, align 4, !tbaa !8
  %add687 = add nsw i32 %532, %531
  store i32 %add687, ptr %thiscost, align 4, !tbaa !8
  %533 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros688 = getelementptr inbounds %struct.WorkType, ptr %533, i32 0, i32 74
  %534 = load i32, ptr %fnzeros688, align 4, !tbaa !38
  %535 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %536 = load i32, ptr %nr_out, align 4, !tbaa !8
  %537 = load i32, ptr %nc, align 4, !tbaa !8
  %add689 = add nsw i32 %536, %537
  %mul690 = mul nsw i32 %535, %add689
  %add691 = add nsw i32 %534, %mul690
  store i32 %add691, ptr %fnzeros, align 4, !tbaa !8
  %538 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %add692 = add nsw i32 %538, 1
  %539 = load i32, ptr %fnrows, align 4, !tbaa !8
  %540 = load i32, ptr %nr_out, align 4, !tbaa !8
  %add693 = add nsw i32 %539, %540
  %541 = load i32, ptr %fncols, align 4, !tbaa !8
  %add694 = add nsw i32 %add693, %541
  %542 = load i32, ptr %nc, align 4, !tbaa !8
  %add695 = add nsw i32 %add694, %542
  %mul696 = mul nsw i32 %add692, %add695
  store i32 %mul696, ptr %new_LUsize, align 4, !tbaa !8
  %543 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp697 = icmp sgt i32 %543, 0
  br i1 %cmp697, label %land.rhs699, label %land.end705

land.rhs699:                                      ; preds = %if.then686
  %544 = load i32, ptr %fnzeros, align 4, !tbaa !8
  %conv700 = sitofp i32 %544 to double
  %545 = load i32, ptr %new_LUsize, align 4, !tbaa !8
  %conv701 = sitofp i32 %545 to double
  %div702 = fdiv double %conv700, %conv701
  %cmp703 = fcmp ogt double %div702, 1.250000e-01
  br label %land.end705

land.end705:                                      ; preds = %land.rhs699, %if.then686
  %546 = phi i1 [ false, %if.then686 ], [ %cmp703, %land.rhs699 ]
  %land.ext706 = zext i1 %546 to i32
  store i32 %land.ext706, ptr %do_update, align 4, !tbaa !8
  br label %if.end718

if.else707:                                       ; preds = %if.end684
  %547 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp708 = icmp sgt i32 %547, 0
  %conv709 = zext i1 %cmp708 to i32
  store i32 %conv709, ptr %do_update, align 4, !tbaa !8
  store i32 0, ptr %fnzeros, align 4, !tbaa !8
  %548 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub710 = sub nsw i32 %548, 1
  %arrayidx711 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx712 = getelementptr inbounds [2 x i32], ptr %arrayidx711, i64 0, i64 0
  store i32 %sub710, ptr %arrayidx712, align 8, !tbaa !8
  %arrayidx713 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx714 = getelementptr inbounds [2 x i32], ptr %arrayidx713, i64 0, i64 0
  %549 = load i32, ptr %arrayidx714, align 8, !tbaa !8
  %sub715 = sub nsw i32 %549, 1
  %arrayidx716 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx717 = getelementptr inbounds [2 x i32], ptr %arrayidx716, i64 0, i64 0
  store i32 %sub715, ptr %arrayidx717, align 8, !tbaa !8
  br label %if.end718

if.end718:                                        ; preds = %if.else707, %land.end705
  %550 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp719 = icmp eq i32 %550, -1
  br i1 %cmp719, label %if.then724, label %lor.lhs.false721

lor.lhs.false721:                                 ; preds = %if.end718
  %551 = load i32, ptr %thiscost, align 4, !tbaa !8
  %552 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp722 = icmp slt i32 %551, %552
  br i1 %cmp722, label %if.then724, label %if.end728

if.then724:                                       ; preds = %lor.lhs.false721, %if.end718
  %553 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case725 = getelementptr inbounds %struct.WorkType, ptr %553, i32 0, i32 51
  store i32 2, ptr %pivot_case725, align 8, !tbaa !46
  %554 = load i32, ptr %thiscost, align 4, !tbaa !8
  store i32 %554, ptr %bestcost, align 4, !tbaa !8
  %555 = load i32, ptr %do_extend, align 4, !tbaa !8
  %556 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend726 = getelementptr inbounds %struct.WorkType, ptr %556, i32 0, i32 44
  store i32 %555, ptr %do_extend726, align 4, !tbaa !66
  %557 = load i32, ptr %do_update, align 4, !tbaa !8
  %558 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update727 = getelementptr inbounds %struct.WorkType, ptr %558, i32 0, i32 45
  store i32 %557, ptr %do_update727, align 8, !tbaa !67
  %559 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %559, ptr %new_fnzeros, align 4, !tbaa !8
  br label %if.end728

if.end728:                                        ; preds = %if.then724, %lor.lhs.false721
  br label %if.end729

if.end729:                                        ; preds = %if.end728, %if.end608
  %arrayidx730 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx731 = getelementptr inbounds [2 x i32], ptr %arrayidx730, i64 0, i64 1
  %560 = load i32, ptr %arrayidx731, align 4, !tbaa !8
  %cmp732 = icmp ne i32 %560, -1
  br i1 %cmp732, label %if.then734, label %if.end904

if.then734:                                       ; preds = %if.end729
  %561 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp735 = icmp eq i32 %561, 0
  %conv736 = zext i1 %cmp735 to i32
  store i32 %conv736, ptr %did_rowmerge, align 4, !tbaa !8
  %562 = load i32, ptr %did_rowmerge, align 4, !tbaa !8
  %tobool737 = icmp ne i32 %562, 0
  br i1 %tobool737, label %if.then738, label %if.end743

if.then738:                                       ; preds = %if.then734
  %arrayidx739 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx740 = getelementptr inbounds [2 x i32], ptr %arrayidx739, i64 0, i64 1
  %563 = load i32, ptr %arrayidx740, align 4, !tbaa !8
  %564 = load ptr, ptr %Wm, align 8, !tbaa !4
  %arrayidx741 = getelementptr inbounds i32, ptr %564, i64 0
  store i32 %563, ptr %arrayidx741, align 4, !tbaa !8
  %565 = load ptr, ptr %Wx, align 8, !tbaa !4
  %arrayidx742 = getelementptr inbounds double, ptr %565, i64 0
  store double 0.000000e+00, ptr %arrayidx742, align 8, !tbaa !37
  store i32 1, ptr %cdeg_out, align 4, !tbaa !8
  store i32 1, ptr %nr_out, align 4, !tbaa !8
  br label %if.end743

if.end743:                                        ; preds = %if.then738, %if.then734
  %566 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp744 = icmp eq i32 %566, 0
  br i1 %cmp744, label %land.lhs.true746, label %if.else766

land.lhs.true746:                                 ; preds = %if.end743
  %567 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp747 = icmp eq i32 %567, 0
  br i1 %cmp747, label %if.then749, label %if.else766

if.then749:                                       ; preds = %land.lhs.true746
  %arrayidx750 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx751 = getelementptr inbounds [2 x i32], ptr %arrayidx750, i64 0, i64 1
  %568 = load i32, ptr %arrayidx751, align 4, !tbaa !8
  store i32 %568, ptr %nc, align 4, !tbaa !8
  store i32 0, ptr %extra_cols, align 4, !tbaa !8
  %569 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  store i32 %569, ptr %nr_out, align 4, !tbaa !8
  store i32 0, ptr %extra_rows, align 4, !tbaa !8
  store i32 0, ptr %extra_zeros, align 4, !tbaa !8
  %570 = load i32, ptr %nc, align 4, !tbaa !8
  %sub752 = sub nsw i32 %570, 1
  %571 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub753 = sub nsw i32 %571, 1
  %mul754 = mul nsw i32 %sub752, %sub753
  store i32 %mul754, ptr %thiscost, align 4, !tbaa !8
  %572 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub755 = sub nsw i32 %572, 1
  %arrayidx756 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx757 = getelementptr inbounds [2 x i32], ptr %arrayidx756, i64 0, i64 1
  store i32 %sub755, ptr %arrayidx757, align 4, !tbaa !8
  %573 = load i32, ptr %nc, align 4, !tbaa !8
  %sub758 = sub nsw i32 %573, 1
  %arrayidx759 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx760 = getelementptr inbounds [2 x i32], ptr %arrayidx759, i64 0, i64 1
  store i32 %sub758, ptr %arrayidx760, align 4, !tbaa !8
  %arrayidx761 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx762 = getelementptr inbounds [2 x i32], ptr %arrayidx761, i64 0, i64 1
  %574 = load i32, ptr %arrayidx762, align 4, !tbaa !8
  %arrayidx763 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx764 = getelementptr inbounds [2 x i32], ptr %arrayidx763, i64 0, i64 1
  %575 = load i32, ptr %arrayidx764, align 4, !tbaa !8
  %mul765 = mul nsw i32 %574, %575
  store i32 %mul765, ptr %relaxed_front, align 4, !tbaa !8
  br label %if.end845

if.else766:                                       ; preds = %land.lhs.true746, %if.end743
  %576 = load i32, ptr %nr_out, align 4, !tbaa !8
  %cmp767 = icmp eq i32 %576, -1
  br i1 %cmp767, label %if.then769, label %if.end791

if.then769:                                       ; preds = %if.else766
  store i32 0, ptr %nr_out, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond770

for.cond770:                                      ; preds = %for.inc788, %if.then769
  %577 = load i32, ptr %i, align 4, !tbaa !8
  %578 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %cmp771 = icmp slt i32 %577, %578
  br i1 %cmp771, label %for.body773, label %for.end790

for.body773:                                      ; preds = %for.cond770
  %579 = load ptr, ptr %Wm, align 8, !tbaa !4
  %580 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom774 = sext i32 %580 to i64
  %arrayidx775 = getelementptr inbounds i32, ptr %579, i64 %idxprom774
  %581 = load i32, ptr %arrayidx775, align 4, !tbaa !8
  store i32 %581, ptr %row, align 4, !tbaa !8
  %582 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %583 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom776 = sext i32 %583 to i64
  %arrayidx777 = getelementptr inbounds i32, ptr %582, i64 %idxprom776
  %584 = load i32, ptr %arrayidx777, align 4, !tbaa !8
  %cmp778 = icmp slt i32 %584, 0
  br i1 %cmp778, label %if.then785, label %lor.lhs.false780

lor.lhs.false780:                                 ; preds = %for.body773
  %585 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %586 = load i32, ptr %row, align 4, !tbaa !8
  %idxprom781 = sext i32 %586 to i64
  %arrayidx782 = getelementptr inbounds i32, ptr %585, i64 %idxprom781
  %587 = load i32, ptr %arrayidx782, align 4, !tbaa !8
  %588 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp783 = icmp sge i32 %587, %588
  br i1 %cmp783, label %if.then785, label %if.end787

if.then785:                                       ; preds = %lor.lhs.false780, %for.body773
  %589 = load i32, ptr %nr_out, align 4, !tbaa !8
  %inc786 = add nsw i32 %589, 1
  store i32 %inc786, ptr %nr_out, align 4, !tbaa !8
  br label %if.end787

if.end787:                                        ; preds = %if.then785, %lor.lhs.false780
  br label %for.inc788

for.inc788:                                       ; preds = %if.end787
  %590 = load i32, ptr %i, align 4, !tbaa !8
  %inc789 = add nsw i32 %590, 1
  store i32 %inc789, ptr %i, align 4, !tbaa !8
  br label %for.cond770, !llvm.loop !74

for.end790:                                       ; preds = %for.cond770
  br label %if.end791

if.end791:                                        ; preds = %for.end790, %if.else766
  store i32 0, ptr %nc, align 4, !tbaa !8
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond792

for.cond792:                                      ; preds = %for.inc807, %if.end791
  %591 = load i32, ptr %i, align 4, !tbaa !8
  %arrayidx793 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx794 = getelementptr inbounds [2 x i32], ptr %arrayidx793, i64 0, i64 1
  %592 = load i32, ptr %arrayidx794, align 4, !tbaa !8
  %cmp795 = icmp slt i32 %591, %592
  br i1 %cmp795, label %for.body797, label %for.end809

for.body797:                                      ; preds = %for.cond792
  %593 = load ptr, ptr %Woo, align 8, !tbaa !4
  %594 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom798 = sext i32 %594 to i64
  %arrayidx799 = getelementptr inbounds i32, ptr %593, i64 %idxprom798
  %595 = load i32, ptr %arrayidx799, align 4, !tbaa !8
  store i32 %595, ptr %col, align 4, !tbaa !8
  %596 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %597 = load i32, ptr %col, align 4, !tbaa !8
  %idxprom800 = sext i32 %597 to i64
  %arrayidx801 = getelementptr inbounds i32, ptr %596, i64 %idxprom800
  %598 = load i32, ptr %arrayidx801, align 4, !tbaa !8
  %cmp802 = icmp slt i32 %598, 0
  br i1 %cmp802, label %if.then804, label %if.end806

if.then804:                                       ; preds = %for.body797
  %599 = load i32, ptr %nc, align 4, !tbaa !8
  %inc805 = add nsw i32 %599, 1
  store i32 %inc805, ptr %nc, align 4, !tbaa !8
  br label %if.end806

if.end806:                                        ; preds = %if.then804, %for.body797
  br label %for.inc807

for.inc807:                                       ; preds = %if.end806
  %600 = load i32, ptr %i, align 4, !tbaa !8
  %inc808 = add nsw i32 %600, 1
  store i32 %inc808, ptr %i, align 4, !tbaa !8
  br label %for.cond792, !llvm.loop !75

for.end809:                                       ; preds = %for.cond792
  %601 = load i32, ptr %fncols, align 4, !tbaa !8
  %602 = load i32, ptr %nc, align 4, !tbaa !8
  %sub810 = sub nsw i32 %602, 1
  %add811 = add nsw i32 %601, %sub810
  %arrayidx812 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx813 = getelementptr inbounds [2 x i32], ptr %arrayidx812, i64 0, i64 1
  %603 = load i32, ptr %arrayidx813, align 4, !tbaa !8
  %sub814 = sub nsw i32 %603, 1
  %sub815 = sub nsw i32 %add811, %sub814
  store i32 %sub815, ptr %extra_cols, align 4, !tbaa !8
  %604 = load i32, ptr %fnrows, align 4, !tbaa !8
  %605 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub816 = sub nsw i32 %605, 1
  %add817 = add nsw i32 %604, %sub816
  %606 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub818 = sub nsw i32 %606, 1
  %sub819 = sub nsw i32 %add817, %sub818
  store i32 %sub819, ptr %extra_rows, align 4, !tbaa !8
  %607 = load i32, ptr %nc, align 4, !tbaa !8
  %sub820 = sub nsw i32 %607, 1
  %608 = load i32, ptr %extra_rows, align 4, !tbaa !8
  %mul821 = mul nsw i32 %sub820, %608
  %609 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub822 = sub nsw i32 %609, 1
  %610 = load i32, ptr %extra_cols, align 4, !tbaa !8
  %mul823 = mul nsw i32 %sub822, %610
  %add824 = add nsw i32 %mul821, %mul823
  store i32 %add824, ptr %extra_zeros, align 4, !tbaa !8
  %611 = load i32, ptr %nc, align 4, !tbaa !8
  %sub825 = sub nsw i32 %611, 1
  %612 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub826 = sub nsw i32 %612, 1
  %mul827 = mul nsw i32 %sub825, %sub826
  %613 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub828 = sub nsw i32 %613, 1
  %614 = load i32, ptr %fncols, align 4, !tbaa !8
  %615 = load i32, ptr %extra_cols, align 4, !tbaa !8
  %sub829 = sub nsw i32 %614, %615
  %mul830 = mul nsw i32 %sub828, %sub829
  %add831 = add nsw i32 %mul827, %mul830
  store i32 %add831, ptr %thiscost, align 4, !tbaa !8
  %616 = load i32, ptr %fnrows, align 4, !tbaa !8
  %617 = load i32, ptr %nr_out, align 4, !tbaa !8
  %sub832 = sub nsw i32 %617, 1
  %add833 = add nsw i32 %616, %sub832
  %arrayidx834 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx835 = getelementptr inbounds [2 x i32], ptr %arrayidx834, i64 0, i64 1
  store i32 %add833, ptr %arrayidx835, align 4, !tbaa !8
  %618 = load i32, ptr %fncols, align 4, !tbaa !8
  %619 = load i32, ptr %nc, align 4, !tbaa !8
  %sub836 = sub nsw i32 %619, 1
  %add837 = add nsw i32 %618, %sub836
  %arrayidx838 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx839 = getelementptr inbounds [2 x i32], ptr %arrayidx838, i64 0, i64 1
  store i32 %add837, ptr %arrayidx839, align 4, !tbaa !8
  %arrayidx840 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx841 = getelementptr inbounds [2 x i32], ptr %arrayidx840, i64 0, i64 1
  %620 = load i32, ptr %arrayidx841, align 4, !tbaa !8
  %arrayidx842 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx843 = getelementptr inbounds [2 x i32], ptr %arrayidx842, i64 0, i64 1
  %621 = load i32, ptr %arrayidx843, align 4, !tbaa !8
  %mul844 = mul nsw i32 %620, %621
  store i32 %mul844, ptr %relaxed_front, align 4, !tbaa !8
  br label %if.end845

if.end845:                                        ; preds = %for.end809, %if.then749
  %622 = load i32, ptr %did_rowmerge, align 4, !tbaa !8
  %tobool846 = icmp ne i32 %622, 0
  br i1 %tobool846, label %if.then847, label %if.else848

if.then847:                                       ; preds = %if.end845
  store i32 0, ptr %do_extend, align 4, !tbaa !8
  br label %if.end859

if.else848:                                       ; preds = %if.end845
  %623 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %cmp849 = icmp eq i32 %623, 0
  br i1 %cmp849, label %if.then851, label %if.else852

if.then851:                                       ; preds = %if.else848
  store i32 1, ptr %do_extend, align 4, !tbaa !8
  br label %if.end858

if.else852:                                       ; preds = %if.else848
  %624 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %conv853 = sitofp i32 %624 to double
  %625 = load double, ptr %relax1, align 8, !tbaa !37
  %626 = load i32, ptr %relaxed_front, align 4, !tbaa !8
  %conv854 = sitofp i32 %626 to double
  %mul855 = fmul double %625, %conv854
  %cmp856 = fcmp olt double %conv853, %mul855
  %conv857 = zext i1 %cmp856 to i32
  store i32 %conv857, ptr %do_extend, align 4, !tbaa !8
  br label %if.end858

if.end858:                                        ; preds = %if.else852, %if.then851
  br label %if.end859

if.end859:                                        ; preds = %if.end858, %if.then847
  %627 = load i32, ptr %do_extend, align 4, !tbaa !8
  %tobool860 = icmp ne i32 %627, 0
  br i1 %tobool860, label %if.then861, label %if.else882

if.then861:                                       ; preds = %if.end859
  %628 = load i32, ptr %extra_zeros, align 4, !tbaa !8
  %629 = load i32, ptr %thiscost, align 4, !tbaa !8
  %add862 = add nsw i32 %629, %628
  store i32 %add862, ptr %thiscost, align 4, !tbaa !8
  %630 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros863 = getelementptr inbounds %struct.WorkType, ptr %630, i32 0, i32 74
  %631 = load i32, ptr %fnzeros863, align 4, !tbaa !38
  %632 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %633 = load i32, ptr %nr_out, align 4, !tbaa !8
  %634 = load i32, ptr %nc, align 4, !tbaa !8
  %add864 = add nsw i32 %633, %634
  %mul865 = mul nsw i32 %632, %add864
  %add866 = add nsw i32 %631, %mul865
  store i32 %add866, ptr %fnzeros, align 4, !tbaa !8
  %635 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %add867 = add nsw i32 %635, 1
  %636 = load i32, ptr %fnrows, align 4, !tbaa !8
  %637 = load i32, ptr %nr_out, align 4, !tbaa !8
  %add868 = add nsw i32 %636, %637
  %638 = load i32, ptr %fncols, align 4, !tbaa !8
  %add869 = add nsw i32 %add868, %638
  %639 = load i32, ptr %nc, align 4, !tbaa !8
  %add870 = add nsw i32 %add869, %639
  %mul871 = mul nsw i32 %add867, %add870
  store i32 %mul871, ptr %new_LUsize, align 4, !tbaa !8
  %640 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp872 = icmp sgt i32 %640, 0
  br i1 %cmp872, label %land.rhs874, label %land.end880

land.rhs874:                                      ; preds = %if.then861
  %641 = load i32, ptr %fnzeros, align 4, !tbaa !8
  %conv875 = sitofp i32 %641 to double
  %642 = load i32, ptr %new_LUsize, align 4, !tbaa !8
  %conv876 = sitofp i32 %642 to double
  %div877 = fdiv double %conv875, %conv876
  %cmp878 = fcmp ogt double %div877, 1.250000e-01
  br label %land.end880

land.end880:                                      ; preds = %land.rhs874, %if.then861
  %643 = phi i1 [ false, %if.then861 ], [ %cmp878, %land.rhs874 ]
  %land.ext881 = zext i1 %643 to i32
  store i32 %land.ext881, ptr %do_update, align 4, !tbaa !8
  br label %if.end893

if.else882:                                       ; preds = %if.end859
  %644 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp883 = icmp sgt i32 %644, 0
  %conv884 = zext i1 %cmp883 to i32
  store i32 %conv884, ptr %do_update, align 4, !tbaa !8
  store i32 0, ptr %fnzeros, align 4, !tbaa !8
  %645 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %sub885 = sub nsw i32 %645, 1
  %arrayidx886 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx887 = getelementptr inbounds [2 x i32], ptr %arrayidx886, i64 0, i64 1
  store i32 %sub885, ptr %arrayidx887, align 4, !tbaa !8
  %arrayidx888 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx889 = getelementptr inbounds [2 x i32], ptr %arrayidx888, i64 0, i64 1
  %646 = load i32, ptr %arrayidx889, align 4, !tbaa !8
  %sub890 = sub nsw i32 %646, 1
  %arrayidx891 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx892 = getelementptr inbounds [2 x i32], ptr %arrayidx891, i64 0, i64 1
  store i32 %sub890, ptr %arrayidx892, align 4, !tbaa !8
  br label %if.end893

if.end893:                                        ; preds = %if.else882, %land.end880
  %647 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp894 = icmp eq i32 %647, -1
  br i1 %cmp894, label %if.then899, label %lor.lhs.false896

lor.lhs.false896:                                 ; preds = %if.end893
  %648 = load i32, ptr %thiscost, align 4, !tbaa !8
  %649 = load i32, ptr %bestcost, align 4, !tbaa !8
  %cmp897 = icmp slt i32 %648, %649
  br i1 %cmp897, label %if.then899, label %if.end903

if.then899:                                       ; preds = %lor.lhs.false896, %if.end893
  %650 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case900 = getelementptr inbounds %struct.WorkType, ptr %650, i32 0, i32 51
  store i32 3, ptr %pivot_case900, align 8, !tbaa !46
  %651 = load i32, ptr %thiscost, align 4, !tbaa !8
  store i32 %651, ptr %bestcost, align 4, !tbaa !8
  %652 = load i32, ptr %do_extend, align 4, !tbaa !8
  %653 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend901 = getelementptr inbounds %struct.WorkType, ptr %653, i32 0, i32 44
  store i32 %652, ptr %do_extend901, align 4, !tbaa !66
  %654 = load i32, ptr %do_update, align 4, !tbaa !8
  %655 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update902 = getelementptr inbounds %struct.WorkType, ptr %655, i32 0, i32 45
  store i32 %654, ptr %do_update902, align 8, !tbaa !67
  %656 = load i32, ptr %fnzeros, align 4, !tbaa !8
  store i32 %656, ptr %new_fnzeros, align 4, !tbaa !8
  br label %if.end903

if.end903:                                        ; preds = %if.then899, %lor.lhs.false896
  br label %if.end904

if.end904:                                        ; preds = %if.end903, %if.end729
  br label %if.end905

if.end905:                                        ; preds = %if.end904, %if.end451
  %657 = load i32, ptr %new_fnzeros, align 4, !tbaa !8
  %658 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnzeros906 = getelementptr inbounds %struct.WorkType, ptr %658, i32 0, i32 74
  store i32 %657, ptr %fnzeros906, align 4, !tbaa !38
  %659 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivot_case907 = getelementptr inbounds %struct.WorkType, ptr %659, i32 0, i32 51
  %660 = load i32, ptr %pivot_case907, align 8, !tbaa !46
  switch i32 %660, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb922
    i32 2, label %sw.bb942
    i32 3, label %sw.bb962
  ]

sw.bb:                                            ; preds = %if.end905
  %661 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front = getelementptr inbounds %struct.WorkType, ptr %661, i32 0, i32 80
  store i32 1, ptr %pivcol_in_front, align 4, !tbaa !76
  %662 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front = getelementptr inbounds %struct.WorkType, ptr %662, i32 0, i32 79
  store i32 1, ptr %pivrow_in_front, align 8, !tbaa !77
  %arrayidx908 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %663 = load i32, ptr %arrayidx908, align 4, !tbaa !8
  %664 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol909 = getelementptr inbounds %struct.WorkType, ptr %664, i32 0, i32 43
  store i32 %663, ptr %pivcol909, align 8, !tbaa !78
  %arrayidx910 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx911 = getelementptr inbounds [2 x i32], ptr %arrayidx910, i64 0, i64 0
  %665 = load i32, ptr %arrayidx911, align 16, !tbaa !8
  %666 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow912 = getelementptr inbounds %struct.WorkType, ptr %666, i32 0, i32 42
  store i32 %665, ptr %pivrow912, align 4, !tbaa !79
  %667 = load i32, ptr %nr_in, align 4, !tbaa !8
  %668 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg = getelementptr inbounds %struct.WorkType, ptr %668, i32 0, i32 32
  store i32 %667, ptr %ccdeg, align 8, !tbaa !80
  %669 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %670 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow = getelementptr inbounds %struct.WorkType, ptr %670, i32 0, i32 9
  store ptr %669, ptr %Wrow, align 8, !tbaa !81
  %arrayidx913 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx914 = getelementptr inbounds [2 x i32], ptr %arrayidx913, i64 0, i64 0
  %671 = load i32, ptr %arrayidx914, align 16, !tbaa !8
  %672 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg = getelementptr inbounds %struct.WorkType, ptr %672, i32 0, i32 31
  store i32 %671, ptr %rrdeg, align 4, !tbaa !82
  %arrayidx915 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 0
  %673 = load i32, ptr %arrayidx915, align 4, !tbaa !8
  store i32 %673, ptr %jj, align 4, !tbaa !8
  %arrayidx916 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx917 = getelementptr inbounds [2 x i32], ptr %arrayidx916, i64 0, i64 0
  %674 = load i32, ptr %arrayidx917, align 16, !tbaa !8
  %675 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new918 = getelementptr inbounds %struct.WorkType, ptr %675, i32 0, i32 77
  store i32 %674, ptr %fnrows_new918, align 8, !tbaa !83
  %arrayidx919 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx920 = getelementptr inbounds [2 x i32], ptr %arrayidx919, i64 0, i64 0
  %676 = load i32, ptr %arrayidx920, align 16, !tbaa !8
  %677 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new921 = getelementptr inbounds %struct.WorkType, ptr %677, i32 0, i32 78
  store i32 %676, ptr %fncols_new921, align 4, !tbaa !84
  br label %sw.epilog

sw.bb922:                                         ; preds = %if.end905
  %678 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front923 = getelementptr inbounds %struct.WorkType, ptr %678, i32 0, i32 80
  store i32 1, ptr %pivcol_in_front923, align 4, !tbaa !76
  %679 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front924 = getelementptr inbounds %struct.WorkType, ptr %679, i32 0, i32 79
  store i32 0, ptr %pivrow_in_front924, align 8, !tbaa !77
  %arrayidx925 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %680 = load i32, ptr %arrayidx925, align 4, !tbaa !8
  %681 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol926 = getelementptr inbounds %struct.WorkType, ptr %681, i32 0, i32 43
  store i32 %680, ptr %pivcol926, align 8, !tbaa !78
  %arrayidx927 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 0
  %arrayidx928 = getelementptr inbounds [2 x i32], ptr %arrayidx927, i64 0, i64 1
  %682 = load i32, ptr %arrayidx928, align 4, !tbaa !8
  %683 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow929 = getelementptr inbounds %struct.WorkType, ptr %683, i32 0, i32 42
  store i32 %682, ptr %pivrow929, align 4, !tbaa !79
  %684 = load i32, ptr %nr_in, align 4, !tbaa !8
  %685 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg930 = getelementptr inbounds %struct.WorkType, ptr %685, i32 0, i32 32
  store i32 %684, ptr %ccdeg930, align 8, !tbaa !80
  %686 = load ptr, ptr %Wio, align 8, !tbaa !4
  %687 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow931 = getelementptr inbounds %struct.WorkType, ptr %687, i32 0, i32 9
  store ptr %686, ptr %Wrow931, align 8, !tbaa !81
  %arrayidx932 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 0
  %arrayidx933 = getelementptr inbounds [2 x i32], ptr %arrayidx932, i64 0, i64 1
  %688 = load i32, ptr %arrayidx933, align 4, !tbaa !8
  %689 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg934 = getelementptr inbounds %struct.WorkType, ptr %689, i32 0, i32 31
  store i32 %688, ptr %rrdeg934, align 4, !tbaa !82
  %arrayidx935 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 0
  %690 = load i32, ptr %arrayidx935, align 4, !tbaa !8
  store i32 %690, ptr %jj, align 4, !tbaa !8
  %arrayidx936 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 0
  %arrayidx937 = getelementptr inbounds [2 x i32], ptr %arrayidx936, i64 0, i64 1
  %691 = load i32, ptr %arrayidx937, align 4, !tbaa !8
  %692 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new938 = getelementptr inbounds %struct.WorkType, ptr %692, i32 0, i32 77
  store i32 %691, ptr %fnrows_new938, align 8, !tbaa !83
  %arrayidx939 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 0
  %arrayidx940 = getelementptr inbounds [2 x i32], ptr %arrayidx939, i64 0, i64 1
  %693 = load i32, ptr %arrayidx940, align 4, !tbaa !8
  %694 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new941 = getelementptr inbounds %struct.WorkType, ptr %694, i32 0, i32 78
  store i32 %693, ptr %fncols_new941, align 4, !tbaa !84
  br label %sw.epilog

sw.bb942:                                         ; preds = %if.end905
  %695 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front943 = getelementptr inbounds %struct.WorkType, ptr %695, i32 0, i32 80
  store i32 0, ptr %pivcol_in_front943, align 4, !tbaa !76
  %696 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front944 = getelementptr inbounds %struct.WorkType, ptr %696, i32 0, i32 79
  store i32 1, ptr %pivrow_in_front944, align 8, !tbaa !77
  %arrayidx945 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %697 = load i32, ptr %arrayidx945, align 4, !tbaa !8
  %698 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol946 = getelementptr inbounds %struct.WorkType, ptr %698, i32 0, i32 43
  store i32 %697, ptr %pivcol946, align 8, !tbaa !78
  %arrayidx947 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx948 = getelementptr inbounds [2 x i32], ptr %arrayidx947, i64 0, i64 0
  %699 = load i32, ptr %arrayidx948, align 8, !tbaa !8
  %700 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow949 = getelementptr inbounds %struct.WorkType, ptr %700, i32 0, i32 42
  store i32 %699, ptr %pivrow949, align 4, !tbaa !79
  %701 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %702 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg950 = getelementptr inbounds %struct.WorkType, ptr %702, i32 0, i32 32
  store i32 %701, ptr %ccdeg950, align 8, !tbaa !80
  %703 = load ptr, ptr %Woi, align 8, !tbaa !4
  %704 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow951 = getelementptr inbounds %struct.WorkType, ptr %704, i32 0, i32 9
  store ptr %703, ptr %Wrow951, align 8, !tbaa !81
  %arrayidx952 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx953 = getelementptr inbounds [2 x i32], ptr %arrayidx952, i64 0, i64 0
  %705 = load i32, ptr %arrayidx953, align 8, !tbaa !8
  %706 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg954 = getelementptr inbounds %struct.WorkType, ptr %706, i32 0, i32 31
  store i32 %705, ptr %rrdeg954, align 4, !tbaa !82
  %arrayidx955 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  %707 = load i32, ptr %arrayidx955, align 4, !tbaa !8
  store i32 %707, ptr %jj, align 4, !tbaa !8
  %arrayidx956 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx957 = getelementptr inbounds [2 x i32], ptr %arrayidx956, i64 0, i64 0
  %708 = load i32, ptr %arrayidx957, align 8, !tbaa !8
  %709 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new958 = getelementptr inbounds %struct.WorkType, ptr %709, i32 0, i32 77
  store i32 %708, ptr %fnrows_new958, align 8, !tbaa !83
  %arrayidx959 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx960 = getelementptr inbounds [2 x i32], ptr %arrayidx959, i64 0, i64 0
  %710 = load i32, ptr %arrayidx960, align 8, !tbaa !8
  %711 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new961 = getelementptr inbounds %struct.WorkType, ptr %711, i32 0, i32 78
  store i32 %710, ptr %fncols_new961, align 4, !tbaa !84
  br label %sw.epilog

sw.bb962:                                         ; preds = %if.end905
  %712 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front963 = getelementptr inbounds %struct.WorkType, ptr %712, i32 0, i32 80
  store i32 0, ptr %pivcol_in_front963, align 4, !tbaa !76
  %713 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front964 = getelementptr inbounds %struct.WorkType, ptr %713, i32 0, i32 79
  store i32 0, ptr %pivrow_in_front964, align 8, !tbaa !77
  %arrayidx965 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 1
  %714 = load i32, ptr %arrayidx965, align 4, !tbaa !8
  %715 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol966 = getelementptr inbounds %struct.WorkType, ptr %715, i32 0, i32 43
  store i32 %714, ptr %pivcol966, align 8, !tbaa !78
  %arrayidx967 = getelementptr inbounds [2 x [2 x i32]], ptr %pivrow, i64 0, i64 1
  %arrayidx968 = getelementptr inbounds [2 x i32], ptr %arrayidx967, i64 0, i64 1
  %716 = load i32, ptr %arrayidx968, align 4, !tbaa !8
  %717 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow969 = getelementptr inbounds %struct.WorkType, ptr %717, i32 0, i32 42
  store i32 %716, ptr %pivrow969, align 4, !tbaa !79
  %718 = load i32, ptr %cdeg_out, align 4, !tbaa !8
  %719 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %ccdeg970 = getelementptr inbounds %struct.WorkType, ptr %719, i32 0, i32 32
  store i32 %718, ptr %ccdeg970, align 8, !tbaa !80
  %720 = load ptr, ptr %Woo, align 8, !tbaa !4
  %721 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Wrow971 = getelementptr inbounds %struct.WorkType, ptr %721, i32 0, i32 9
  store ptr %720, ptr %Wrow971, align 8, !tbaa !81
  %arrayidx972 = getelementptr inbounds [2 x [2 x i32]], ptr %rdeg, i64 0, i64 1
  %arrayidx973 = getelementptr inbounds [2 x i32], ptr %arrayidx972, i64 0, i64 1
  %722 = load i32, ptr %arrayidx973, align 4, !tbaa !8
  %723 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %rrdeg974 = getelementptr inbounds %struct.WorkType, ptr %723, i32 0, i32 31
  store i32 %722, ptr %rrdeg974, align 4, !tbaa !82
  %arrayidx975 = getelementptr inbounds [2 x i32], ptr %jcand, i64 0, i64 1
  %724 = load i32, ptr %arrayidx975, align 4, !tbaa !8
  store i32 %724, ptr %jj, align 4, !tbaa !8
  %arrayidx976 = getelementptr inbounds [2 x [2 x i32]], ptr %fnrows_new, i64 0, i64 1
  %arrayidx977 = getelementptr inbounds [2 x i32], ptr %arrayidx976, i64 0, i64 1
  %725 = load i32, ptr %arrayidx977, align 4, !tbaa !8
  %726 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new978 = getelementptr inbounds %struct.WorkType, ptr %726, i32 0, i32 77
  store i32 %725, ptr %fnrows_new978, align 8, !tbaa !83
  %arrayidx979 = getelementptr inbounds [2 x [2 x i32]], ptr %fncols_new, i64 0, i64 1
  %arrayidx980 = getelementptr inbounds [2 x i32], ptr %arrayidx979, i64 0, i64 1
  %727 = load i32, ptr %arrayidx980, align 4, !tbaa !8
  %728 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new981 = getelementptr inbounds %struct.WorkType, ptr %728, i32 0, i32 78
  store i32 %727, ptr %fncols_new981, align 4, !tbaa !84
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end905, %sw.bb962, %sw.bb942, %sw.bb922, %sw.bb
  %729 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front982 = getelementptr inbounds %struct.WorkType, ptr %729, i32 0, i32 80
  %730 = load i32, ptr %pivcol_in_front982, align 4, !tbaa !76
  %tobool983 = icmp ne i32 %730, 0
  br i1 %tobool983, label %if.end1000, label %land.lhs.true984

land.lhs.true984:                                 ; preds = %sw.epilog
  %arrayidx985 = getelementptr inbounds [2 x i32], ptr %pivcol, i64 0, i64 0
  %731 = load i32, ptr %arrayidx985, align 4, !tbaa !8
  %cmp986 = icmp ne i32 %731, -1
  br i1 %cmp986, label %if.then988, label %if.end1000

if.then988:                                       ; preds = %land.lhs.true984
  %732 = load i32, ptr %fnrows, align 4, !tbaa !8
  store i32 %732, ptr %i, align 4, !tbaa !8
  br label %for.cond989

for.cond989:                                      ; preds = %for.inc997, %if.then988
  %733 = load i32, ptr %i, align 4, !tbaa !8
  %734 = load i32, ptr %cdeg_in, align 4, !tbaa !8
  %cmp990 = icmp slt i32 %733, %734
  br i1 %cmp990, label %for.body992, label %for.end999

for.body992:                                      ; preds = %for.cond989
  %735 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %736 = load ptr, ptr %Frows, align 8, !tbaa !4
  %737 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom993 = sext i32 %737 to i64
  %arrayidx994 = getelementptr inbounds i32, ptr %736, i64 %idxprom993
  %738 = load i32, ptr %arrayidx994, align 4, !tbaa !8
  %idxprom995 = sext i32 %738 to i64
  %arrayidx996 = getelementptr inbounds i32, ptr %735, i64 %idxprom995
  store i32 -1, ptr %arrayidx996, align 4, !tbaa !8
  br label %for.inc997

for.inc997:                                       ; preds = %for.body992
  %739 = load i32, ptr %i, align 4, !tbaa !8
  %inc998 = add nsw i32 %739, 1
  store i32 %inc998, ptr %i, align 4, !tbaa !8
  br label %for.cond989, !llvm.loop !85

for.end999:                                       ; preds = %for.cond989
  br label %if.end1000

if.end1000:                                       ; preds = %for.end999, %land.lhs.true984, %sw.epilog
  %740 = load i32, ptr %jj, align 4, !tbaa !8
  %741 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %742 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  call void @remove_candidate(i32 noundef %740, ptr noundef %741, ptr noundef %742)
  %743 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows_new1001 = getelementptr inbounds %struct.WorkType, ptr %743, i32 0, i32 77
  %744 = load i32, ptr %fnrows_new1001, align 8, !tbaa !83
  %add1002 = add nsw i32 %744, 1
  %745 = load i32, ptr %fnr_curr, align 4, !tbaa !8
  %cmp1003 = icmp sgt i32 %add1002, %745
  br i1 %cmp1003, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end1000
  %746 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols_new1005 = getelementptr inbounds %struct.WorkType, ptr %746, i32 0, i32 78
  %747 = load i32, ptr %fncols_new1005, align 4, !tbaa !84
  %add1006 = add nsw i32 %747, 1
  %748 = load i32, ptr %fnc_curr, align 4, !tbaa !8
  %cmp1007 = icmp sgt i32 %add1006, %748
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end1000
  %749 = phi i1 [ true, %if.end1000 ], [ %cmp1007, %lor.rhs ]
  %lor.ext = zext i1 %749 to i32
  %750 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_grow = getelementptr inbounds %struct.WorkType, ptr %750, i32 0, i32 50
  store i32 %lor.ext, ptr %do_grow, align 4, !tbaa !86
  %751 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_grow1009 = getelementptr inbounds %struct.WorkType, ptr %751, i32 0, i32 50
  %752 = load i32, ptr %do_grow1009, align 4, !tbaa !86
  %tobool1010 = icmp ne i32 %752, 0
  br i1 %tobool1010, label %if.then1011, label %if.end1021

if.then1011:                                      ; preds = %lor.end
  %753 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update1012 = getelementptr inbounds %struct.WorkType, ptr %753, i32 0, i32 45
  %754 = load i32, ptr %do_update1012, align 8, !tbaa !67
  %tobool1013 = icmp ne i32 %754, 0
  br i1 %tobool1013, label %if.end1020, label %land.lhs.true1014

land.lhs.true1014:                                ; preds = %if.then1011
  %755 = load i32, ptr %fnpiv, align 4, !tbaa !8
  %cmp1015 = icmp sgt i32 %755, 0
  br i1 %cmp1015, label %if.then1017, label %if.end1020

if.then1017:                                      ; preds = %land.lhs.true1014
  %756 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nforced = getelementptr inbounds %struct.WorkType, ptr %756, i32 0, i32 46
  %757 = load i32, ptr %nforced, align 4, !tbaa !87
  %inc1018 = add nsw i32 %757, 1
  store i32 %inc1018, ptr %nforced, align 4, !tbaa !87
  %758 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_update1019 = getelementptr inbounds %struct.WorkType, ptr %758, i32 0, i32 45
  store i32 1, ptr %do_update1019, align 8, !tbaa !67
  br label %if.end1020

if.end1020:                                       ; preds = %if.then1017, %land.lhs.true1014, %if.then1011
  br label %if.end1021

if.end1021:                                       ; preds = %if.end1020, %lor.end
  %759 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_extend1022 = getelementptr inbounds %struct.WorkType, ptr %759, i32 0, i32 44
  %760 = load i32, ptr %do_extend1022, align 4, !tbaa !66
  %tobool1023 = icmp ne i32 %760, 0
  br i1 %tobool1023, label %if.then1024, label %if.else1029

if.then1024:                                      ; preds = %if.end1021
  %761 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp1025 = icmp sgt i32 %761, 0
  %conv1026 = zext i1 %cmp1025 to i32
  %762 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2row = getelementptr inbounds %struct.WorkType, ptr %762, i32 0, i32 48
  store i32 %conv1026, ptr %do_scan2row, align 4, !tbaa !88
  %763 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp1027 = icmp sgt i32 %763, 0
  %conv1028 = zext i1 %cmp1027 to i32
  %764 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2col = getelementptr inbounds %struct.WorkType, ptr %764, i32 0, i32 49
  store i32 %conv1028, ptr %do_scan2col, align 8, !tbaa !89
  br label %if.end1046

if.else1029:                                      ; preds = %if.end1021
  %765 = load i32, ptr %fncols, align 4, !tbaa !8
  %cmp1030 = icmp sgt i32 %765, 0
  br i1 %cmp1030, label %land.rhs1032, label %land.end1035

land.rhs1032:                                     ; preds = %if.else1029
  %766 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front1033 = getelementptr inbounds %struct.WorkType, ptr %766, i32 0, i32 79
  %767 = load i32, ptr %pivrow_in_front1033, align 8, !tbaa !77
  %tobool1034 = icmp ne i32 %767, 0
  br label %land.end1035

land.end1035:                                     ; preds = %land.rhs1032, %if.else1029
  %768 = phi i1 [ false, %if.else1029 ], [ %tobool1034, %land.rhs1032 ]
  %land.ext1036 = zext i1 %768 to i32
  %769 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2row1037 = getelementptr inbounds %struct.WorkType, ptr %769, i32 0, i32 48
  store i32 %land.ext1036, ptr %do_scan2row1037, align 4, !tbaa !88
  %770 = load i32, ptr %fnrows, align 4, !tbaa !8
  %cmp1038 = icmp sgt i32 %770, 0
  br i1 %cmp1038, label %land.rhs1040, label %land.end1043

land.rhs1040:                                     ; preds = %land.end1035
  %771 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol_in_front1041 = getelementptr inbounds %struct.WorkType, ptr %771, i32 0, i32 80
  %772 = load i32, ptr %pivcol_in_front1041, align 4, !tbaa !76
  %tobool1042 = icmp ne i32 %772, 0
  br label %land.end1043

land.end1043:                                     ; preds = %land.rhs1040, %land.end1035
  %773 = phi i1 [ false, %land.end1035 ], [ %tobool1042, %land.rhs1040 ]
  %land.ext1044 = zext i1 %773 to i32
  %774 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %do_scan2col1045 = getelementptr inbounds %struct.WorkType, ptr %774, i32 0, i32 49
  store i32 %land.ext1044, ptr %do_scan2col1045, align 8, !tbaa !89
  br label %if.end1046

if.end1046:                                       ; preds = %land.end1043, %if.then1024
  %775 = load ptr, ptr %Symbolic.addr, align 8, !tbaa !4
  %prefer_diagonal1047 = getelementptr inbounds %struct.SymbolicType, ptr %775, i32 0, i32 40
  %776 = load i32, ptr %prefer_diagonal1047, align 8, !tbaa !35
  %tobool1048 = icmp ne i32 %776, 0
  br i1 %tobool1048, label %if.then1049, label %if.end1092

if.then1049:                                      ; preds = %if.end1046
  %777 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Diagonal_map1050 = getelementptr inbounds %struct.WorkType, ptr %777, i32 0, i32 16
  %778 = load ptr, ptr %Diagonal_map1050, align 8, !tbaa !90
  store ptr %778, ptr %Diagonal_map, align 8, !tbaa !4
  %779 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Diagonal_imap1051 = getelementptr inbounds %struct.WorkType, ptr %779, i32 0, i32 17
  %780 = load ptr, ptr %Diagonal_imap1051, align 8, !tbaa !91
  store ptr %780, ptr %Diagonal_imap, align 8, !tbaa !4
  %781 = load ptr, ptr %Diagonal_map, align 8, !tbaa !4
  %782 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol1052 = getelementptr inbounds %struct.WorkType, ptr %782, i32 0, i32 43
  %783 = load i32, ptr %pivcol1052, align 8, !tbaa !78
  %idxprom1053 = sext i32 %783 to i64
  %arrayidx1054 = getelementptr inbounds i32, ptr %781, i64 %idxprom1053
  %784 = load i32, ptr %arrayidx1054, align 4, !tbaa !8
  store i32 %784, ptr %row2, align 4, !tbaa !8
  %785 = load ptr, ptr %Diagonal_imap, align 8, !tbaa !4
  %786 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1055 = getelementptr inbounds %struct.WorkType, ptr %786, i32 0, i32 42
  %787 = load i32, ptr %pivrow1055, align 4, !tbaa !79
  %idxprom1056 = sext i32 %787 to i64
  %arrayidx1057 = getelementptr inbounds i32, ptr %785, i64 %idxprom1056
  %788 = load i32, ptr %arrayidx1057, align 4, !tbaa !8
  store i32 %788, ptr %col2, align 4, !tbaa !8
  %789 = load i32, ptr %row2, align 4, !tbaa !8
  %cmp1058 = icmp slt i32 %789, 0
  br i1 %cmp1058, label %if.then1060, label %if.end1070

if.then1060:                                      ; preds = %if.then1049
  %790 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %noff_diagonal = getelementptr inbounds %struct.WorkType, ptr %790, i32 0, i32 27
  %791 = load i32, ptr %noff_diagonal, align 4, !tbaa !92
  %inc1061 = add nsw i32 %791, 1
  store i32 %inc1061, ptr %noff_diagonal, align 4, !tbaa !92
  %792 = load i32, ptr %row2, align 4, !tbaa !8
  %cmp1062 = icmp slt i32 %792, -1
  br i1 %cmp1062, label %cond.true1064, label %cond.false1067

cond.true1064:                                    ; preds = %if.then1060
  %793 = load i32, ptr %row2, align 4, !tbaa !8
  %sub1065 = sub nsw i32 0, %793
  %sub1066 = sub nsw i32 %sub1065, 2
  br label %cond.end1068

cond.false1067:                                   ; preds = %if.then1060
  %794 = load i32, ptr %row2, align 4, !tbaa !8
  br label %cond.end1068

cond.end1068:                                     ; preds = %cond.false1067, %cond.true1064
  %cond1069 = phi i32 [ %sub1066, %cond.true1064 ], [ %794, %cond.false1067 ]
  store i32 %cond1069, ptr %row2, align 4, !tbaa !8
  br label %if.end1070

if.end1070:                                       ; preds = %cond.end1068, %if.then1049
  %795 = load i32, ptr %row2, align 4, !tbaa !8
  %796 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1071 = getelementptr inbounds %struct.WorkType, ptr %796, i32 0, i32 42
  %797 = load i32, ptr %pivrow1071, align 4, !tbaa !79
  %cmp1072 = icmp ne i32 %795, %797
  br i1 %cmp1072, label %if.then1074, label %if.end1091

if.then1074:                                      ; preds = %if.end1070
  %798 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1075 = getelementptr inbounds %struct.WorkType, ptr %798, i32 0, i32 42
  %799 = load i32, ptr %pivrow1075, align 4, !tbaa !79
  %sub1076 = sub nsw i32 0, %799
  %sub1077 = sub nsw i32 %sub1076, 2
  %800 = load ptr, ptr %Diagonal_map, align 8, !tbaa !4
  %801 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol1078 = getelementptr inbounds %struct.WorkType, ptr %801, i32 0, i32 43
  %802 = load i32, ptr %pivcol1078, align 8, !tbaa !78
  %idxprom1079 = sext i32 %802 to i64
  %arrayidx1080 = getelementptr inbounds i32, ptr %800, i64 %idxprom1079
  store i32 %sub1077, ptr %arrayidx1080, align 4, !tbaa !8
  %803 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol1081 = getelementptr inbounds %struct.WorkType, ptr %803, i32 0, i32 43
  %804 = load i32, ptr %pivcol1081, align 8, !tbaa !78
  %805 = load ptr, ptr %Diagonal_imap, align 8, !tbaa !4
  %806 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow1082 = getelementptr inbounds %struct.WorkType, ptr %806, i32 0, i32 42
  %807 = load i32, ptr %pivrow1082, align 4, !tbaa !79
  %idxprom1083 = sext i32 %807 to i64
  %arrayidx1084 = getelementptr inbounds i32, ptr %805, i64 %idxprom1083
  store i32 %804, ptr %arrayidx1084, align 4, !tbaa !8
  %808 = load i32, ptr %row2, align 4, !tbaa !8
  %sub1085 = sub nsw i32 0, %808
  %sub1086 = sub nsw i32 %sub1085, 2
  %809 = load ptr, ptr %Diagonal_map, align 8, !tbaa !4
  %810 = load i32, ptr %col2, align 4, !tbaa !8
  %idxprom1087 = sext i32 %810 to i64
  %arrayidx1088 = getelementptr inbounds i32, ptr %809, i64 %idxprom1087
  store i32 %sub1086, ptr %arrayidx1088, align 4, !tbaa !8
  %811 = load i32, ptr %col2, align 4, !tbaa !8
  %812 = load ptr, ptr %Diagonal_imap, align 8, !tbaa !4
  %813 = load i32, ptr %row2, align 4, !tbaa !8
  %idxprom1089 = sext i32 %813 to i64
  %arrayidx1090 = getelementptr inbounds i32, ptr %812, i64 %idxprom1089
  store i32 %811, ptr %arrayidx1090, align 4, !tbaa !8
  br label %if.end1091

if.end1091:                                       ; preds = %if.then1074, %if.end1070
  br label %if.end1092

if.end1092:                                       ; preds = %if.end1091, %if.end1046
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1092, %if.then580, %if.then565, %if.then519, %if.then282, %if.then243
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
  %814 = load i32, ptr %retval, align 4
  ret i32 %814
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @dtrsv_64_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dgemv_64_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @umfdi_row_search(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

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

declare void @umfdi_mem_free_tail_block(ptr noundef, i32 noundef) #2

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!51 = distinct !{!51, !50}
!52 = !{!53, !53, i64 0}
!53 = !{!"long", !6, i64 0}
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
