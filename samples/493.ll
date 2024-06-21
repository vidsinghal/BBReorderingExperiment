; ModuleID = 'samples/493.bc'
source_filename = "../Source/umf_utsolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SuiteSparse_config_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DoubleComplex = type { [2 x double] }
%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i64, i64, ptr, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.Unit_union = type { %struct.anon }
%struct.anon = type { i64, i64 }

@SuiteSparse_config = external global %struct.SuiteSparse_config_struct, align 8

; Function Attrs: uwtable
define double @umfzl_uhsolve(ptr noundef %Numeric, ptr noundef %X, ptr noundef %Pattern) #0 {
entry:
  %retval = alloca double, align 8
  %Numeric.addr = alloca ptr, align 8
  %X.addr = alloca ptr, align 8
  %Pattern.addr = alloca ptr, align 8
  %xk = alloca %struct.DoubleComplex, align 8
  %xp = alloca ptr, align 8
  %D = alloca ptr, align 8
  %Uval = alloca ptr, align 8
  %k = alloca i64, align 8
  %deg = alloca i64, align 8
  %j = alloca i64, align 8
  %ip = alloca ptr, align 8
  %col = alloca i64, align 8
  %Upos = alloca ptr, align 8
  %Uilen = alloca ptr, align 8
  %kstart = alloca i64, align 8
  %kend = alloca i64, align 8
  %up = alloca i64, align 8
  %Uip = alloca ptr, align 8
  %n = alloca i64, align 8
  %uhead = alloca i64, align 8
  %ulen = alloca i64, align 8
  %pos = alloca i64, align 8
  %npiv = alloca i64, align 8
  %n1 = alloca i64, align 8
  %Ui = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %X, ptr %X.addr, align 8, !tbaa !4
  store ptr %Pattern, ptr %Pattern.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 16, ptr %xk) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %xp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %D) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uval) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %deg) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Upos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uilen) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kstart) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kend) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uip) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %uhead) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ulen) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %npiv) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %n1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ui) #4
  %0 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n_row = getelementptr inbounds %struct.NumericType, ptr %0, i32 0, i32 33
  %1 = load i64, ptr %n_row, align 8, !tbaa !8
  %2 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n_col = getelementptr inbounds %struct.NumericType, ptr %2, i32 0, i32 34
  %3 = load i64, ptr %n_col, align 8, !tbaa !12
  %cmp = icmp ne i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n_row1 = getelementptr inbounds %struct.NumericType, ptr %4, i32 0, i32 33
  %5 = load i64, ptr %n_row1, align 8, !tbaa !8
  store i64 %5, ptr %n, align 8, !tbaa !13
  %6 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %npiv2 = getelementptr inbounds %struct.NumericType, ptr %6, i32 0, i32 28
  %7 = load i64, ptr %npiv2, align 8, !tbaa !14
  store i64 %7, ptr %npiv, align 8, !tbaa !13
  %8 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Upos3 = getelementptr inbounds %struct.NumericType, ptr %8, i32 0, i32 20
  %9 = load ptr, ptr %Upos3, align 8, !tbaa !15
  store ptr %9, ptr %Upos, align 8, !tbaa !4
  %10 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uilen4 = getelementptr inbounds %struct.NumericType, ptr %10, i32 0, i32 25
  %11 = load ptr, ptr %Uilen4, align 8, !tbaa !16
  store ptr %11, ptr %Uilen, align 8, !tbaa !4
  %12 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uip5 = getelementptr inbounds %struct.NumericType, ptr %12, i32 0, i32 24
  %13 = load ptr, ptr %Uip5, align 8, !tbaa !17
  store ptr %13, ptr %Uip, align 8, !tbaa !4
  %14 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %D6 = getelementptr inbounds %struct.NumericType, ptr %14, i32 0, i32 30
  %15 = load ptr, ptr %D6, align 8, !tbaa !18
  store ptr %15, ptr %D, align 8, !tbaa !4
  store i64 0, ptr %kend, align 8, !tbaa !13
  %16 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %n17 = getelementptr inbounds %struct.NumericType, ptr %16, i32 0, i32 35
  %17 = load i64, ptr %n17, align 8, !tbaa !19
  store i64 %17, ptr %n1, align 8, !tbaa !13
  store i64 0, ptr %k, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc75, %if.end
  %18 = load i64, ptr %k, align 8, !tbaa !13
  %19 = load i64, ptr %n1, align 8, !tbaa !13
  %cmp8 = icmp slt i64 %18, %19
  br i1 %cmp8, label %for.body, label %for.end77

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 6), align 8, !tbaa !20
  %21 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %22 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds %struct.DoubleComplex, ptr %21, i64 %22
  %component = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x double], ptr %component, i64 0, i64 0
  %23 = load double, ptr %arrayidx9, align 8, !tbaa !22
  %24 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %25 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx10 = getelementptr inbounds %struct.DoubleComplex, ptr %24, i64 %25
  %component11 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx10, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [2 x double], ptr %component11, i64 0, i64 1
  %26 = load double, ptr %arrayidx12, align 8, !tbaa !22
  %27 = load ptr, ptr %D, align 8, !tbaa !4
  %28 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx13 = getelementptr inbounds %struct.DoubleComplex, ptr %27, i64 %28
  %component14 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [2 x double], ptr %component14, i64 0, i64 0
  %29 = load double, ptr %arrayidx15, align 8, !tbaa !22
  %30 = load ptr, ptr %D, align 8, !tbaa !4
  %31 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx16 = getelementptr inbounds %struct.DoubleComplex, ptr %30, i64 %31
  %component17 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x double], ptr %component17, i64 0, i64 1
  %32 = load double, ptr %arrayidx18, align 8, !tbaa !22
  %fneg = fneg double %32
  %component19 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [2 x double], ptr %component19, i64 0, i64 0
  %component21 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x double], ptr %component21, i64 0, i64 1
  %call = call i32 %20(double noundef %23, double noundef %26, double noundef %29, double noundef %fneg, ptr noundef %arrayidx20, ptr noundef %arrayidx22)
  %33 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %34 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx23 = getelementptr inbounds %struct.DoubleComplex, ptr %33, i64 %34
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx23, ptr align 8 %xk, i64 16, i1 false), !tbaa.struct !23
  %35 = load ptr, ptr %Uilen, align 8, !tbaa !4
  %36 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx24 = getelementptr inbounds i64, ptr %35, i64 %36
  %37 = load i64, ptr %arrayidx24, align 8, !tbaa !13
  store i64 %37, ptr %deg, align 8, !tbaa !13
  %38 = load i64, ptr %deg, align 8, !tbaa !13
  %cmp25 = icmp sgt i64 %38, 0
  br i1 %cmp25, label %land.lhs.true, label %if.end74

land.lhs.true:                                    ; preds = %for.body
  %component26 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x double], ptr %component26, i64 0, i64 0
  %39 = load double, ptr %arrayidx27, align 8, !tbaa !22
  %cmp28 = fcmp une double %39, 0.000000e+00
  br i1 %cmp28, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %component29 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [2 x double], ptr %component29, i64 0, i64 1
  %40 = load double, ptr %arrayidx30, align 8, !tbaa !22
  %cmp31 = fcmp une double %40, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.end74

if.then32:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %41 = load ptr, ptr %Uip, align 8, !tbaa !4
  %42 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx33 = getelementptr inbounds i64, ptr %41, i64 %42
  %43 = load i64, ptr %arrayidx33, align 8, !tbaa !13
  store i64 %43, ptr %up, align 8, !tbaa !13
  %44 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory = getelementptr inbounds %struct.NumericType, ptr %44, i32 0, i32 13
  %45 = load ptr, ptr %Memory, align 8, !tbaa !25
  %46 = load i64, ptr %up, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds %union.Unit_union, ptr %45, i64 %46
  store ptr %add.ptr, ptr %Ui, align 8, !tbaa !4
  %47 = load i64, ptr %deg, align 8, !tbaa !13
  %mul = mul i64 8, %47
  %add = add i64 %mul, 16
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 16
  %48 = load i64, ptr %up, align 8, !tbaa !13
  %add34 = add i64 %48, %div
  store i64 %add34, ptr %up, align 8, !tbaa !13
  %49 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory35 = getelementptr inbounds %struct.NumericType, ptr %49, i32 0, i32 13
  %50 = load ptr, ptr %Memory35, align 8, !tbaa !25
  %51 = load i64, ptr %up, align 8, !tbaa !13
  %add.ptr36 = getelementptr inbounds %union.Unit_union, ptr %50, i64 %51
  store ptr %add.ptr36, ptr %Uval, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !13
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc, %if.then32
  %52 = load i64, ptr %j, align 8, !tbaa !13
  %53 = load i64, ptr %deg, align 8, !tbaa !13
  %cmp38 = icmp slt i64 %52, %53
  br i1 %cmp38, label %for.body39, label %for.end

for.body39:                                       ; preds = %for.cond37
  %component40 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [2 x double], ptr %component40, i64 0, i64 0
  %54 = load double, ptr %arrayidx41, align 8, !tbaa !22
  %55 = load ptr, ptr %Uval, align 8, !tbaa !4
  %56 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx42 = getelementptr inbounds %struct.DoubleComplex, ptr %55, i64 %56
  %component43 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx42, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [2 x double], ptr %component43, i64 0, i64 0
  %57 = load double, ptr %arrayidx44, align 8, !tbaa !22
  %component46 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x double], ptr %component46, i64 0, i64 1
  %58 = load double, ptr %arrayidx47, align 8, !tbaa !22
  %59 = load ptr, ptr %Uval, align 8, !tbaa !4
  %60 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx48 = getelementptr inbounds %struct.DoubleComplex, ptr %59, i64 %60
  %component49 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [2 x double], ptr %component49, i64 0, i64 1
  %61 = load double, ptr %arrayidx50, align 8, !tbaa !22
  %mul51 = fmul double %58, %61
  %62 = call double @llvm.fmuladd.f64(double %54, double %57, double %mul51)
  %63 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %64 = load ptr, ptr %Ui, align 8, !tbaa !4
  %65 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx52 = getelementptr inbounds i64, ptr %64, i64 %65
  %66 = load i64, ptr %arrayidx52, align 8, !tbaa !13
  %arrayidx53 = getelementptr inbounds %struct.DoubleComplex, ptr %63, i64 %66
  %component54 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx53, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [2 x double], ptr %component54, i64 0, i64 0
  %67 = load double, ptr %arrayidx55, align 8, !tbaa !22
  %sub56 = fsub double %67, %62
  store double %sub56, ptr %arrayidx55, align 8, !tbaa !22
  %component57 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx58 = getelementptr inbounds [2 x double], ptr %component57, i64 0, i64 1
  %68 = load double, ptr %arrayidx58, align 8, !tbaa !22
  %69 = load ptr, ptr %Uval, align 8, !tbaa !4
  %70 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx59 = getelementptr inbounds %struct.DoubleComplex, ptr %69, i64 %70
  %component60 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [2 x double], ptr %component60, i64 0, i64 0
  %71 = load double, ptr %arrayidx61, align 8, !tbaa !22
  %component63 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx64 = getelementptr inbounds [2 x double], ptr %component63, i64 0, i64 0
  %72 = load double, ptr %arrayidx64, align 8, !tbaa !22
  %73 = load ptr, ptr %Uval, align 8, !tbaa !4
  %74 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx65 = getelementptr inbounds %struct.DoubleComplex, ptr %73, i64 %74
  %component66 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx65, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [2 x double], ptr %component66, i64 0, i64 1
  %75 = load double, ptr %arrayidx67, align 8, !tbaa !22
  %mul68 = fmul double %72, %75
  %neg = fneg double %mul68
  %76 = call double @llvm.fmuladd.f64(double %68, double %71, double %neg)
  %77 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %78 = load ptr, ptr %Ui, align 8, !tbaa !4
  %79 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx69 = getelementptr inbounds i64, ptr %78, i64 %79
  %80 = load i64, ptr %arrayidx69, align 8, !tbaa !13
  %arrayidx70 = getelementptr inbounds %struct.DoubleComplex, ptr %77, i64 %80
  %component71 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx70, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [2 x double], ptr %component71, i64 0, i64 1
  %81 = load double, ptr %arrayidx72, align 8, !tbaa !22
  %sub73 = fsub double %81, %76
  store double %sub73, ptr %arrayidx72, align 8, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body39
  %82 = load i64, ptr %j, align 8, !tbaa !13
  %inc = add nsw i64 %82, 1
  store i64 %inc, ptr %j, align 8, !tbaa !13
  br label %for.cond37, !llvm.loop !26

for.end:                                          ; preds = %for.cond37
  br label %if.end74

if.end74:                                         ; preds = %for.end, %lor.lhs.false, %for.body
  br label %for.inc75

for.inc75:                                        ; preds = %if.end74
  %83 = load i64, ptr %k, align 8, !tbaa !13
  %inc76 = add nsw i64 %83, 1
  store i64 %inc76, ptr %k, align 8, !tbaa !13
  br label %for.cond, !llvm.loop !28

for.end77:                                        ; preds = %for.cond
  %84 = load i64, ptr %n1, align 8, !tbaa !13
  store i64 %84, ptr %kstart, align 8, !tbaa !13
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc246, %for.end77
  %85 = load i64, ptr %kstart, align 8, !tbaa !13
  %86 = load i64, ptr %npiv, align 8, !tbaa !13
  %cmp79 = icmp slt i64 %85, %86
  br i1 %cmp79, label %for.body80, label %for.end248

for.body80:                                       ; preds = %for.cond78
  %87 = load i64, ptr %kstart, align 8, !tbaa !13
  store i64 %87, ptr %kend, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body80
  %88 = load i64, ptr %kend, align 8, !tbaa !13
  %89 = load i64, ptr %npiv, align 8, !tbaa !13
  %cmp81 = icmp slt i64 %88, %89
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %90 = load ptr, ptr %Uip, align 8, !tbaa !4
  %91 = load i64, ptr %kend, align 8, !tbaa !13
  %add82 = add nsw i64 %91, 1
  %arrayidx83 = getelementptr inbounds i64, ptr %90, i64 %add82
  %92 = load i64, ptr %arrayidx83, align 8, !tbaa !13
  %cmp84 = icmp sgt i64 %92, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %93 = phi i1 [ false, %while.cond ], [ %cmp84, %land.rhs ]
  br i1 %93, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %94 = load i64, ptr %kend, align 8, !tbaa !13
  %inc85 = add nsw i64 %94, 1
  store i64 %inc85, ptr %kend, align 8, !tbaa !13
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %land.end
  %95 = load i64, ptr %kend, align 8, !tbaa !13
  %add86 = add nsw i64 %95, 1
  store i64 %add86, ptr %k, align 8, !tbaa !13
  %96 = load i64, ptr %k, align 8, !tbaa !13
  %97 = load i64, ptr %npiv, align 8, !tbaa !13
  %cmp87 = icmp eq i64 %96, %97
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %while.end
  %98 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %ulen89 = getelementptr inbounds %struct.NumericType, ptr %98, i32 0, i32 27
  %99 = load i64, ptr %ulen89, align 8, !tbaa !30
  store i64 %99, ptr %deg, align 8, !tbaa !13
  %100 = load i64, ptr %deg, align 8, !tbaa !13
  %cmp90 = icmp sgt i64 %100, 0
  br i1 %cmp90, label %if.then91, label %if.end100

if.then91:                                        ; preds = %if.then88
  store i64 0, ptr %j, align 8, !tbaa !13
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc97, %if.then91
  %101 = load i64, ptr %j, align 8, !tbaa !13
  %102 = load i64, ptr %deg, align 8, !tbaa !13
  %cmp93 = icmp slt i64 %101, %102
  br i1 %cmp93, label %for.body94, label %for.end99

for.body94:                                       ; preds = %for.cond92
  %103 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Upattern = getelementptr inbounds %struct.NumericType, ptr %103, i32 0, i32 26
  %104 = load ptr, ptr %Upattern, align 8, !tbaa !31
  %105 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx95 = getelementptr inbounds i64, ptr %104, i64 %105
  %106 = load i64, ptr %arrayidx95, align 8, !tbaa !13
  %107 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %108 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx96 = getelementptr inbounds i64, ptr %107, i64 %108
  store i64 %106, ptr %arrayidx96, align 8, !tbaa !13
  br label %for.inc97

for.inc97:                                        ; preds = %for.body94
  %109 = load i64, ptr %j, align 8, !tbaa !13
  %inc98 = add nsw i64 %109, 1
  store i64 %inc98, ptr %j, align 8, !tbaa !13
  br label %for.cond92, !llvm.loop !32

for.end99:                                        ; preds = %for.cond92
  br label %if.end100

if.end100:                                        ; preds = %for.end99, %if.then88
  br label %if.end113

if.else:                                          ; preds = %while.end
  %110 = load ptr, ptr %Uip, align 8, !tbaa !4
  %111 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx101 = getelementptr inbounds i64, ptr %110, i64 %111
  %112 = load i64, ptr %arrayidx101, align 8, !tbaa !13
  %sub102 = sub nsw i64 0, %112
  store i64 %sub102, ptr %up, align 8, !tbaa !13
  %113 = load ptr, ptr %Uilen, align 8, !tbaa !4
  %114 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx103 = getelementptr inbounds i64, ptr %113, i64 %114
  %115 = load i64, ptr %arrayidx103, align 8, !tbaa !13
  store i64 %115, ptr %deg, align 8, !tbaa !13
  %116 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory104 = getelementptr inbounds %struct.NumericType, ptr %116, i32 0, i32 13
  %117 = load ptr, ptr %Memory104, align 8, !tbaa !25
  %118 = load i64, ptr %up, align 8, !tbaa !13
  %add.ptr105 = getelementptr inbounds %union.Unit_union, ptr %117, i64 %118
  store ptr %add.ptr105, ptr %ip, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !13
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc110, %if.else
  %119 = load i64, ptr %j, align 8, !tbaa !13
  %120 = load i64, ptr %deg, align 8, !tbaa !13
  %cmp107 = icmp slt i64 %119, %120
  br i1 %cmp107, label %for.body108, label %for.end112

for.body108:                                      ; preds = %for.cond106
  %121 = load ptr, ptr %ip, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i64, ptr %121, i32 1
  store ptr %incdec.ptr, ptr %ip, align 8, !tbaa !4
  %122 = load i64, ptr %121, align 8, !tbaa !13
  store i64 %122, ptr %col, align 8, !tbaa !13
  %123 = load i64, ptr %col, align 8, !tbaa !13
  %124 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %125 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx109 = getelementptr inbounds i64, ptr %124, i64 %125
  store i64 %123, ptr %arrayidx109, align 8, !tbaa !13
  br label %for.inc110

for.inc110:                                       ; preds = %for.body108
  %126 = load i64, ptr %j, align 8, !tbaa !13
  %inc111 = add nsw i64 %126, 1
  store i64 %inc111, ptr %j, align 8, !tbaa !13
  br label %for.cond106, !llvm.loop !33

for.end112:                                       ; preds = %for.cond106
  br label %if.end113

if.end113:                                        ; preds = %for.end112, %if.end100
  %127 = load i64, ptr %n, align 8, !tbaa !13
  store i64 %127, ptr %uhead, align 8, !tbaa !13
  %128 = load i64, ptr %kend, align 8, !tbaa !13
  store i64 %128, ptr %k, align 8, !tbaa !13
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc135, %if.end113
  %129 = load i64, ptr %k, align 8, !tbaa !13
  %130 = load i64, ptr %kstart, align 8, !tbaa !13
  %cmp115 = icmp sgt i64 %129, %130
  br i1 %cmp115, label %for.body116, label %for.end137

for.body116:                                      ; preds = %for.cond114
  %131 = load ptr, ptr %Uilen, align 8, !tbaa !4
  %132 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx117 = getelementptr inbounds i64, ptr %131, i64 %132
  %133 = load i64, ptr %arrayidx117, align 8, !tbaa !13
  store i64 %133, ptr %ulen, align 8, !tbaa !13
  store i64 0, ptr %j, align 8, !tbaa !13
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc124, %for.body116
  %134 = load i64, ptr %j, align 8, !tbaa !13
  %135 = load i64, ptr %ulen, align 8, !tbaa !13
  %cmp119 = icmp slt i64 %134, %135
  br i1 %cmp119, label %for.body120, label %for.end126

for.body120:                                      ; preds = %for.cond118
  %136 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %137 = load i64, ptr %deg, align 8, !tbaa !13
  %dec = add nsw i64 %137, -1
  store i64 %dec, ptr %deg, align 8, !tbaa !13
  %arrayidx121 = getelementptr inbounds i64, ptr %136, i64 %dec
  %138 = load i64, ptr %arrayidx121, align 8, !tbaa !13
  %139 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %140 = load i64, ptr %uhead, align 8, !tbaa !13
  %dec122 = add nsw i64 %140, -1
  store i64 %dec122, ptr %uhead, align 8, !tbaa !13
  %arrayidx123 = getelementptr inbounds i64, ptr %139, i64 %dec122
  store i64 %138, ptr %arrayidx123, align 8, !tbaa !13
  br label %for.inc124

for.inc124:                                       ; preds = %for.body120
  %141 = load i64, ptr %j, align 8, !tbaa !13
  %inc125 = add nsw i64 %141, 1
  store i64 %inc125, ptr %j, align 8, !tbaa !13
  br label %for.cond118, !llvm.loop !34

for.end126:                                       ; preds = %for.cond118
  %142 = load ptr, ptr %Upos, align 8, !tbaa !4
  %143 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx127 = getelementptr inbounds i64, ptr %142, i64 %143
  %144 = load i64, ptr %arrayidx127, align 8, !tbaa !13
  store i64 %144, ptr %pos, align 8, !tbaa !13
  %145 = load i64, ptr %pos, align 8, !tbaa !13
  %cmp128 = icmp ne i64 %145, -1
  br i1 %cmp128, label %if.then129, label %if.end134

if.then129:                                       ; preds = %for.end126
  %146 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %147 = load i64, ptr %pos, align 8, !tbaa !13
  %arrayidx130 = getelementptr inbounds i64, ptr %146, i64 %147
  %148 = load i64, ptr %arrayidx130, align 8, !tbaa !13
  %149 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %150 = load i64, ptr %deg, align 8, !tbaa !13
  %inc131 = add nsw i64 %150, 1
  store i64 %inc131, ptr %deg, align 8, !tbaa !13
  %arrayidx132 = getelementptr inbounds i64, ptr %149, i64 %150
  store i64 %148, ptr %arrayidx132, align 8, !tbaa !13
  %151 = load i64, ptr %k, align 8, !tbaa !13
  %152 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %153 = load i64, ptr %pos, align 8, !tbaa !13
  %arrayidx133 = getelementptr inbounds i64, ptr %152, i64 %153
  store i64 %151, ptr %arrayidx133, align 8, !tbaa !13
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %for.end126
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %154 = load i64, ptr %k, align 8, !tbaa !13
  %dec136 = add nsw i64 %154, -1
  store i64 %dec136, ptr %k, align 8, !tbaa !13
  br label %for.cond114, !llvm.loop !35

for.end137:                                       ; preds = %for.cond114
  %155 = load i64, ptr %kstart, align 8, !tbaa !13
  store i64 %155, ptr %k, align 8, !tbaa !13
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc243, %for.end137
  %156 = load i64, ptr %k, align 8, !tbaa !13
  %157 = load i64, ptr %kend, align 8, !tbaa !13
  %cmp139 = icmp sle i64 %156, %157
  br i1 %cmp139, label %for.body140, label %for.end245

for.body140:                                      ; preds = %for.cond138
  %158 = load ptr, ptr %Upos, align 8, !tbaa !4
  %159 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx141 = getelementptr inbounds i64, ptr %158, i64 %159
  %160 = load i64, ptr %arrayidx141, align 8, !tbaa !13
  store i64 %160, ptr %pos, align 8, !tbaa !13
  %161 = load i64, ptr %pos, align 8, !tbaa !13
  %cmp142 = icmp ne i64 %161, -1
  br i1 %cmp142, label %if.then143, label %if.end147

if.then143:                                       ; preds = %for.body140
  %162 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %163 = load i64, ptr %deg, align 8, !tbaa !13
  %dec144 = add nsw i64 %163, -1
  store i64 %dec144, ptr %deg, align 8, !tbaa !13
  %arrayidx145 = getelementptr inbounds i64, ptr %162, i64 %dec144
  %164 = load i64, ptr %arrayidx145, align 8, !tbaa !13
  %165 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %166 = load i64, ptr %pos, align 8, !tbaa !13
  %arrayidx146 = getelementptr inbounds i64, ptr %165, i64 %166
  store i64 %164, ptr %arrayidx146, align 8, !tbaa !13
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %for.body140
  %167 = load ptr, ptr %Uip, align 8, !tbaa !4
  %168 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx148 = getelementptr inbounds i64, ptr %167, i64 %168
  %169 = load i64, ptr %arrayidx148, align 8, !tbaa !13
  store i64 %169, ptr %up, align 8, !tbaa !13
  %170 = load ptr, ptr %Uilen, align 8, !tbaa !4
  %171 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx149 = getelementptr inbounds i64, ptr %170, i64 %171
  %172 = load i64, ptr %arrayidx149, align 8, !tbaa !13
  store i64 %172, ptr %ulen, align 8, !tbaa !13
  %173 = load i64, ptr %k, align 8, !tbaa !13
  %174 = load i64, ptr %kstart, align 8, !tbaa !13
  %cmp150 = icmp sgt i64 %173, %174
  br i1 %cmp150, label %if.then151, label %if.end162

if.then151:                                       ; preds = %if.end147
  store i64 0, ptr %j, align 8, !tbaa !13
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc159, %if.then151
  %175 = load i64, ptr %j, align 8, !tbaa !13
  %176 = load i64, ptr %ulen, align 8, !tbaa !13
  %cmp153 = icmp slt i64 %175, %176
  br i1 %cmp153, label %for.body154, label %for.end161

for.body154:                                      ; preds = %for.cond152
  %177 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %178 = load i64, ptr %uhead, align 8, !tbaa !13
  %inc155 = add nsw i64 %178, 1
  store i64 %inc155, ptr %uhead, align 8, !tbaa !13
  %arrayidx156 = getelementptr inbounds i64, ptr %177, i64 %178
  %179 = load i64, ptr %arrayidx156, align 8, !tbaa !13
  %180 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %181 = load i64, ptr %deg, align 8, !tbaa !13
  %inc157 = add nsw i64 %181, 1
  store i64 %inc157, ptr %deg, align 8, !tbaa !13
  %arrayidx158 = getelementptr inbounds i64, ptr %180, i64 %181
  store i64 %179, ptr %arrayidx158, align 8, !tbaa !13
  br label %for.inc159

for.inc159:                                       ; preds = %for.body154
  %182 = load i64, ptr %j, align 8, !tbaa !13
  %inc160 = add nsw i64 %182, 1
  store i64 %inc160, ptr %j, align 8, !tbaa !13
  br label %for.cond152, !llvm.loop !36

for.end161:                                       ; preds = %for.cond152
  br label %if.end162

if.end162:                                        ; preds = %for.end161, %if.end147
  %183 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 6), align 8, !tbaa !20
  %184 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %185 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx163 = getelementptr inbounds %struct.DoubleComplex, ptr %184, i64 %185
  %component164 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx163, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [2 x double], ptr %component164, i64 0, i64 0
  %186 = load double, ptr %arrayidx165, align 8, !tbaa !22
  %187 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %188 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx166 = getelementptr inbounds %struct.DoubleComplex, ptr %187, i64 %188
  %component167 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx166, i32 0, i32 0
  %arrayidx168 = getelementptr inbounds [2 x double], ptr %component167, i64 0, i64 1
  %189 = load double, ptr %arrayidx168, align 8, !tbaa !22
  %190 = load ptr, ptr %D, align 8, !tbaa !4
  %191 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx169 = getelementptr inbounds %struct.DoubleComplex, ptr %190, i64 %191
  %component170 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [2 x double], ptr %component170, i64 0, i64 0
  %192 = load double, ptr %arrayidx171, align 8, !tbaa !22
  %193 = load ptr, ptr %D, align 8, !tbaa !4
  %194 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx172 = getelementptr inbounds %struct.DoubleComplex, ptr %193, i64 %194
  %component173 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [2 x double], ptr %component173, i64 0, i64 1
  %195 = load double, ptr %arrayidx174, align 8, !tbaa !22
  %fneg175 = fneg double %195
  %component176 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [2 x double], ptr %component176, i64 0, i64 0
  %component178 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [2 x double], ptr %component178, i64 0, i64 1
  %call180 = call i32 %183(double noundef %186, double noundef %189, double noundef %192, double noundef %fneg175, ptr noundef %arrayidx177, ptr noundef %arrayidx179)
  %196 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %197 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx181 = getelementptr inbounds %struct.DoubleComplex, ptr %196, i64 %197
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx181, ptr align 8 %xk, i64 16, i1 false), !tbaa.struct !23
  %component182 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [2 x double], ptr %component182, i64 0, i64 0
  %198 = load double, ptr %arrayidx183, align 8, !tbaa !22
  %cmp184 = fcmp une double %198, 0.000000e+00
  br i1 %cmp184, label %if.then189, label %lor.lhs.false185

lor.lhs.false185:                                 ; preds = %if.end162
  %component186 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [2 x double], ptr %component186, i64 0, i64 1
  %199 = load double, ptr %arrayidx187, align 8, !tbaa !22
  %cmp188 = fcmp une double %199, 0.000000e+00
  br i1 %cmp188, label %if.then189, label %if.end242

if.then189:                                       ; preds = %lor.lhs.false185, %if.end162
  %200 = load i64, ptr %k, align 8, !tbaa !13
  %201 = load i64, ptr %kstart, align 8, !tbaa !13
  %cmp190 = icmp eq i64 %200, %201
  br i1 %cmp190, label %if.then191, label %if.else200

if.then191:                                       ; preds = %if.then189
  %202 = load i64, ptr %up, align 8, !tbaa !13
  %sub192 = sub nsw i64 0, %202
  store i64 %sub192, ptr %up, align 8, !tbaa !13
  %203 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory193 = getelementptr inbounds %struct.NumericType, ptr %203, i32 0, i32 13
  %204 = load ptr, ptr %Memory193, align 8, !tbaa !25
  %205 = load i64, ptr %up, align 8, !tbaa !13
  %add.ptr194 = getelementptr inbounds %union.Unit_union, ptr %204, i64 %205
  %206 = load i64, ptr %ulen, align 8, !tbaa !13
  %mul195 = mul i64 8, %206
  %add196 = add i64 %mul195, 16
  %sub197 = sub i64 %add196, 1
  %div198 = udiv i64 %sub197, 16
  %add.ptr199 = getelementptr inbounds %union.Unit_union, ptr %add.ptr194, i64 %div198
  store ptr %add.ptr199, ptr %xp, align 8, !tbaa !4
  br label %if.end203

if.else200:                                       ; preds = %if.then189
  %207 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Memory201 = getelementptr inbounds %struct.NumericType, ptr %207, i32 0, i32 13
  %208 = load ptr, ptr %Memory201, align 8, !tbaa !25
  %209 = load i64, ptr %up, align 8, !tbaa !13
  %add.ptr202 = getelementptr inbounds %union.Unit_union, ptr %208, i64 %209
  store ptr %add.ptr202, ptr %xp, align 8, !tbaa !4
  br label %if.end203

if.end203:                                        ; preds = %if.else200, %if.then191
  store i64 0, ptr %j, align 8, !tbaa !13
  br label %for.cond204

for.cond204:                                      ; preds = %for.inc239, %if.end203
  %210 = load i64, ptr %j, align 8, !tbaa !13
  %211 = load i64, ptr %deg, align 8, !tbaa !13
  %cmp205 = icmp slt i64 %210, %211
  br i1 %cmp205, label %for.body206, label %for.end241

for.body206:                                      ; preds = %for.cond204
  %component207 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [2 x double], ptr %component207, i64 0, i64 0
  %212 = load double, ptr %arrayidx208, align 8, !tbaa !22
  %213 = load ptr, ptr %xp, align 8, !tbaa !4
  %component209 = getelementptr inbounds %struct.DoubleComplex, ptr %213, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [2 x double], ptr %component209, i64 0, i64 0
  %214 = load double, ptr %arrayidx210, align 8, !tbaa !22
  %component212 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx213 = getelementptr inbounds [2 x double], ptr %component212, i64 0, i64 1
  %215 = load double, ptr %arrayidx213, align 8, !tbaa !22
  %216 = load ptr, ptr %xp, align 8, !tbaa !4
  %component214 = getelementptr inbounds %struct.DoubleComplex, ptr %216, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [2 x double], ptr %component214, i64 0, i64 1
  %217 = load double, ptr %arrayidx215, align 8, !tbaa !22
  %mul216 = fmul double %215, %217
  %218 = call double @llvm.fmuladd.f64(double %212, double %214, double %mul216)
  %219 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %220 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %221 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx217 = getelementptr inbounds i64, ptr %220, i64 %221
  %222 = load i64, ptr %arrayidx217, align 8, !tbaa !13
  %arrayidx218 = getelementptr inbounds %struct.DoubleComplex, ptr %219, i64 %222
  %component219 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [2 x double], ptr %component219, i64 0, i64 0
  %223 = load double, ptr %arrayidx220, align 8, !tbaa !22
  %sub221 = fsub double %223, %218
  store double %sub221, ptr %arrayidx220, align 8, !tbaa !22
  %component222 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx223 = getelementptr inbounds [2 x double], ptr %component222, i64 0, i64 1
  %224 = load double, ptr %arrayidx223, align 8, !tbaa !22
  %225 = load ptr, ptr %xp, align 8, !tbaa !4
  %component224 = getelementptr inbounds %struct.DoubleComplex, ptr %225, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [2 x double], ptr %component224, i64 0, i64 0
  %226 = load double, ptr %arrayidx225, align 8, !tbaa !22
  %component227 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx228 = getelementptr inbounds [2 x double], ptr %component227, i64 0, i64 0
  %227 = load double, ptr %arrayidx228, align 8, !tbaa !22
  %228 = load ptr, ptr %xp, align 8, !tbaa !4
  %component229 = getelementptr inbounds %struct.DoubleComplex, ptr %228, i32 0, i32 0
  %arrayidx230 = getelementptr inbounds [2 x double], ptr %component229, i64 0, i64 1
  %229 = load double, ptr %arrayidx230, align 8, !tbaa !22
  %mul231 = fmul double %227, %229
  %neg232 = fneg double %mul231
  %230 = call double @llvm.fmuladd.f64(double %224, double %226, double %neg232)
  %231 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %232 = load ptr, ptr %Pattern.addr, align 8, !tbaa !4
  %233 = load i64, ptr %j, align 8, !tbaa !13
  %arrayidx233 = getelementptr inbounds i64, ptr %232, i64 %233
  %234 = load i64, ptr %arrayidx233, align 8, !tbaa !13
  %arrayidx234 = getelementptr inbounds %struct.DoubleComplex, ptr %231, i64 %234
  %component235 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx234, i32 0, i32 0
  %arrayidx236 = getelementptr inbounds [2 x double], ptr %component235, i64 0, i64 1
  %235 = load double, ptr %arrayidx236, align 8, !tbaa !22
  %sub237 = fsub double %235, %230
  store double %sub237, ptr %arrayidx236, align 8, !tbaa !22
  %236 = load ptr, ptr %xp, align 8, !tbaa !4
  %incdec.ptr238 = getelementptr inbounds %struct.DoubleComplex, ptr %236, i32 1
  store ptr %incdec.ptr238, ptr %xp, align 8, !tbaa !4
  br label %for.inc239

for.inc239:                                       ; preds = %for.body206
  %237 = load i64, ptr %j, align 8, !tbaa !13
  %inc240 = add nsw i64 %237, 1
  store i64 %inc240, ptr %j, align 8, !tbaa !13
  br label %for.cond204, !llvm.loop !37

for.end241:                                       ; preds = %for.cond204
  br label %if.end242

if.end242:                                        ; preds = %for.end241, %lor.lhs.false185
  br label %for.inc243

for.inc243:                                       ; preds = %if.end242
  %238 = load i64, ptr %k, align 8, !tbaa !13
  %inc244 = add nsw i64 %238, 1
  store i64 %inc244, ptr %k, align 8, !tbaa !13
  br label %for.cond138, !llvm.loop !38

for.end245:                                       ; preds = %for.cond138
  br label %for.inc246

for.inc246:                                       ; preds = %for.end245
  %239 = load i64, ptr %kend, align 8, !tbaa !13
  %add247 = add nsw i64 %239, 1
  store i64 %add247, ptr %kstart, align 8, !tbaa !13
  br label %for.cond78, !llvm.loop !39

for.end248:                                       ; preds = %for.cond78
  %240 = load i64, ptr %npiv, align 8, !tbaa !13
  store i64 %240, ptr %k, align 8, !tbaa !13
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc270, %for.end248
  %241 = load i64, ptr %k, align 8, !tbaa !13
  %242 = load i64, ptr %n, align 8, !tbaa !13
  %cmp250 = icmp slt i64 %241, %242
  br i1 %cmp250, label %for.body251, label %for.end272

for.body251:                                      ; preds = %for.cond249
  %243 = load ptr, ptr getelementptr inbounds (%struct.SuiteSparse_config_struct, ptr @SuiteSparse_config, i32 0, i32 6), align 8, !tbaa !20
  %244 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %245 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx252 = getelementptr inbounds %struct.DoubleComplex, ptr %244, i64 %245
  %component253 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx252, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [2 x double], ptr %component253, i64 0, i64 0
  %246 = load double, ptr %arrayidx254, align 8, !tbaa !22
  %247 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %248 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx255 = getelementptr inbounds %struct.DoubleComplex, ptr %247, i64 %248
  %component256 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx255, i32 0, i32 0
  %arrayidx257 = getelementptr inbounds [2 x double], ptr %component256, i64 0, i64 1
  %249 = load double, ptr %arrayidx257, align 8, !tbaa !22
  %250 = load ptr, ptr %D, align 8, !tbaa !4
  %251 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx258 = getelementptr inbounds %struct.DoubleComplex, ptr %250, i64 %251
  %component259 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [2 x double], ptr %component259, i64 0, i64 0
  %252 = load double, ptr %arrayidx260, align 8, !tbaa !22
  %253 = load ptr, ptr %D, align 8, !tbaa !4
  %254 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx261 = getelementptr inbounds %struct.DoubleComplex, ptr %253, i64 %254
  %component262 = getelementptr inbounds %struct.DoubleComplex, ptr %arrayidx261, i32 0, i32 0
  %arrayidx263 = getelementptr inbounds [2 x double], ptr %component262, i64 0, i64 1
  %255 = load double, ptr %arrayidx263, align 8, !tbaa !22
  %component264 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx265 = getelementptr inbounds [2 x double], ptr %component264, i64 0, i64 0
  %component266 = getelementptr inbounds %struct.DoubleComplex, ptr %xk, i32 0, i32 0
  %arrayidx267 = getelementptr inbounds [2 x double], ptr %component266, i64 0, i64 1
  %call268 = call i32 %243(double noundef %246, double noundef %249, double noundef %252, double noundef %255, ptr noundef %arrayidx265, ptr noundef %arrayidx267)
  %256 = load ptr, ptr %X.addr, align 8, !tbaa !4
  %257 = load i64, ptr %k, align 8, !tbaa !13
  %arrayidx269 = getelementptr inbounds %struct.DoubleComplex, ptr %256, i64 %257
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx269, ptr align 8 %xk, i64 16, i1 false), !tbaa.struct !23
  br label %for.inc270

for.inc270:                                       ; preds = %for.body251
  %258 = load i64, ptr %k, align 8, !tbaa !13
  %inc271 = add nsw i64 %258, 1
  store i64 %inc271, ptr %k, align 8, !tbaa !13
  br label %for.cond249, !llvm.loop !40

for.end272:                                       ; preds = %for.cond249
  %259 = load i64, ptr %n, align 8, !tbaa !13
  %conv = sitofp i64 %259 to double
  %260 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %unz = getelementptr inbounds %struct.NumericType, ptr %260, i32 0, i32 47
  %261 = load i64, ptr %unz, align 8, !tbaa !41
  %conv274 = sitofp i64 %261 to double
  %mul275 = fmul double 8.000000e+00, %conv274
  %262 = call double @llvm.fmuladd.f64(double 9.000000e+00, double %conv, double %mul275)
  store double %262, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end272, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ui) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %npiv) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ulen) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %uhead) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uip) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kend) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %kstart) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uilen) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Upos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %col) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %deg) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uval) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %D) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %xp) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr %xk) #4
  %263 = load double, ptr %retval, align 8
  ret double %263
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = !{!9, !11, i64 264}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !11, i64 96, !5, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !5, i64 240, !11, i64 248, !5, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408}
!10 = !{!"double", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !11, i64 272}
!13 = !{!11, !11, i64 0}
!14 = !{!9, !11, i64 224}
!15 = !{!9, !5, i64 160}
!16 = !{!9, !5, i64 200}
!17 = !{!9, !5, i64 192}
!18 = !{!9, !5, i64 240}
!19 = !{!9, !11, i64 280}
!20 = !{!21, !5, i64 48}
!21 = !{!"SuiteSparse_config_struct", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48}
!22 = !{!10, !10, i64 0}
!23 = !{i64 0, i64 16, !24}
!24 = !{!6, !6, i64 0}
!25 = !{!9, !5, i64 104}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = distinct !{!28, !27}
!29 = distinct !{!29, !27}
!30 = !{!9, !11, i64 216}
!31 = !{!9, !5, i64 208}
!32 = distinct !{!32, !27}
!33 = distinct !{!33, !27}
!34 = distinct !{!34, !27}
!35 = distinct !{!35, !27}
!36 = distinct !{!36, !27}
!37 = distinct !{!37, !27}
!38 = distinct !{!38, !27}
!39 = distinct !{!39, !27}
!40 = distinct !{!40, !27}
!41 = !{!9, !11, i64 376}
