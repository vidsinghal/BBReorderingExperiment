; ModuleID = 'samples/307.bc'
source_filename = "../Source/umf_scale_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WorkType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [128 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, [64 x i64], [64 x i64], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.NumericType = type { double, double, double, double, double, double, double, double, double, double, double, i64, i64, ptr, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: uwtable
define void @umfdl_scale_column(ptr noundef %Numeric, ptr noundef %Work) #0 {
entry:
  %Numeric.addr = alloca ptr, align 8
  %Work.addr = alloca ptr, align 8
  %pivot_value = alloca double, align 8
  %Fcol = alloca ptr, align 8
  %Flublock = alloca ptr, align 8
  %Flblock = alloca ptr, align 8
  %Fublock = alloca ptr, align 8
  %Fcblock = alloca ptr, align 8
  %k = alloca i64, align 8
  %k1 = alloca i64, align 8
  %fnr_curr = alloca i64, align 8
  %fnrows = alloca i64, align 8
  %fncols = alloca i64, align 8
  %Frpos = alloca ptr, align 8
  %Fcpos = alloca ptr, align 8
  %pivrow = alloca i64, align 8
  %pivcol = alloca i64, align 8
  %Frows = alloca ptr, align 8
  %Fcols = alloca ptr, align 8
  %fnc_curr = alloca i64, align 8
  %fnpiv = alloca i64, align 8
  %Row_tuples = alloca ptr, align 8
  %nb = alloca i64, align 8
  %Col_tuples = alloca ptr, align 8
  %Rperm = alloca ptr, align 8
  %Cperm = alloca ptr, align 8
  %fspos = alloca i64, align 8
  %col2 = alloca i64, align 8
  %row2 = alloca i64, align 8
  %fs = alloca i64, align 8
  %i = alloca i64, align 8
  %Fs = alloca ptr, align 8
  %Fe = alloca ptr, align 8
  %i25 = alloca i64, align 8
  %Fs26 = alloca ptr, align 8
  %Fe27 = alloca ptr, align 8
  %j = alloca i64, align 8
  %Fd = alloca ptr, align 8
  %Fs49 = alloca ptr, align 8
  %j63 = alloca i64, align 8
  %Fd64 = alloca ptr, align 8
  %Fs65 = alloca ptr, align 8
  %j78 = alloca i64, align 8
  %Fd79 = alloca ptr, align 8
  %Fs80 = alloca ptr, align 8
  %Fd97 = alloca ptr, align 8
  %Fs98 = alloca ptr, align 8
  %Fe99 = alloca ptr, align 8
  %j107 = alloca i64, align 8
  %Fd108 = alloca ptr, align 8
  %Fs109 = alloca ptr, align 8
  %Fe110 = alloca ptr, align 8
  %j129 = alloca i64, align 8
  %Fd130 = alloca ptr, align 8
  %Fs131 = alloca ptr, align 8
  %Fe132 = alloca ptr, align 8
  store ptr %Numeric, ptr %Numeric.addr, align 8, !tbaa !4
  store ptr %Work, ptr %Work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot_value) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcol) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Flublock) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Flblock) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fublock) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcblock) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %k1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnr_curr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnrows) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fncols) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcpos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivrow) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivcol) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Frows) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fcols) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnc_curr) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fnpiv) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Row_tuples) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %nb) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Col_tuples) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rperm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cperm) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fspos) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %row2) #4
  %0 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows1 = getelementptr inbounds %struct.WorkType, ptr %0, i32 0, i32 65
  %1 = load i64, ptr %fnrows1, align 8, !tbaa !8
  store i64 %1, ptr %fnrows, align 8, !tbaa !11
  %2 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols2 = getelementptr inbounds %struct.WorkType, ptr %2, i32 0, i32 66
  %3 = load i64, ptr %fncols2, align 8, !tbaa !12
  store i64 %3, ptr %fncols, align 8, !tbaa !11
  %4 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnpiv3 = getelementptr inbounds %struct.WorkType, ptr %4, i32 0, i32 73
  %5 = load i64, ptr %fnpiv3, align 8, !tbaa !13
  store i64 %5, ptr %fnpiv, align 8, !tbaa !11
  %6 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Rperm4 = getelementptr inbounds %struct.NumericType, ptr %6, i32 0, i32 18
  %7 = load ptr, ptr %Rperm4, align 8, !tbaa !14
  store ptr %7, ptr %Rperm, align 8, !tbaa !4
  %8 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Cperm5 = getelementptr inbounds %struct.NumericType, ptr %8, i32 0, i32 19
  %9 = load ptr, ptr %Cperm5, align 8, !tbaa !17
  store ptr %9, ptr %Cperm, align 8, !tbaa !4
  %10 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flublock6 = getelementptr inbounds %struct.WorkType, ptr %10, i32 0, i32 57
  %11 = load ptr, ptr %Flublock6, align 8, !tbaa !18
  store ptr %11, ptr %Flublock, align 8, !tbaa !4
  %12 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Flblock7 = getelementptr inbounds %struct.WorkType, ptr %12, i32 0, i32 58
  %13 = load ptr, ptr %Flblock7, align 8, !tbaa !19
  store ptr %13, ptr %Flblock, align 8, !tbaa !4
  %14 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fublock8 = getelementptr inbounds %struct.WorkType, ptr %14, i32 0, i32 59
  %15 = load ptr, ptr %Fublock8, align 8, !tbaa !20
  store ptr %15, ptr %Fublock, align 8, !tbaa !4
  %16 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcblock9 = getelementptr inbounds %struct.WorkType, ptr %16, i32 0, i32 60
  %17 = load ptr, ptr %Fcblock9, align 8, !tbaa !21
  store ptr %17, ptr %Fcblock, align 8, !tbaa !4
  %18 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnr_curr10 = getelementptr inbounds %struct.WorkType, ptr %18, i32 0, i32 67
  %19 = load i64, ptr %fnr_curr10, align 8, !tbaa !22
  store i64 %19, ptr %fnr_curr, align 8, !tbaa !11
  %20 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnc_curr11 = getelementptr inbounds %struct.WorkType, ptr %20, i32 0, i32 68
  %21 = load i64, ptr %fnc_curr11, align 8, !tbaa !23
  store i64 %21, ptr %fnc_curr, align 8, !tbaa !11
  %22 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frpos12 = getelementptr inbounds %struct.WorkType, ptr %22, i32 0, i32 63
  %23 = load ptr, ptr %Frpos12, align 8, !tbaa !24
  store ptr %23, ptr %Frpos, align 8, !tbaa !4
  %24 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcpos13 = getelementptr inbounds %struct.WorkType, ptr %24, i32 0, i32 64
  %25 = load ptr, ptr %Fcpos13, align 8, !tbaa !25
  store ptr %25, ptr %Fcpos, align 8, !tbaa !4
  %26 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Frows14 = getelementptr inbounds %struct.WorkType, ptr %26, i32 0, i32 61
  %27 = load ptr, ptr %Frows14, align 8, !tbaa !26
  store ptr %27, ptr %Frows, align 8, !tbaa !4
  %28 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Fcols15 = getelementptr inbounds %struct.WorkType, ptr %28, i32 0, i32 62
  %29 = load ptr, ptr %Fcols15, align 8, !tbaa !27
  store ptr %29, ptr %Fcols, align 8, !tbaa !4
  %30 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow16 = getelementptr inbounds %struct.WorkType, ptr %30, i32 0, i32 42
  %31 = load i64, ptr %pivrow16, align 8, !tbaa !28
  store i64 %31, ptr %pivrow, align 8, !tbaa !11
  %32 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivcol17 = getelementptr inbounds %struct.WorkType, ptr %32, i32 0, i32 43
  %33 = load i64, ptr %pivcol17, align 8, !tbaa !29
  store i64 %33, ptr %pivcol, align 8, !tbaa !11
  %34 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Uip = getelementptr inbounds %struct.NumericType, ptr %34, i32 0, i32 24
  %35 = load ptr, ptr %Uip, align 8, !tbaa !30
  store ptr %35, ptr %Row_tuples, align 8, !tbaa !4
  %36 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %Lip = getelementptr inbounds %struct.NumericType, ptr %36, i32 0, i32 22
  %37 = load ptr, ptr %Lip, align 8, !tbaa !31
  store ptr %37, ptr %Col_tuples, align 8, !tbaa !4
  %38 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %nb18 = getelementptr inbounds %struct.WorkType, ptr %38, i32 0, i32 72
  %39 = load i64, ptr %nb18, align 8, !tbaa !32
  store i64 %39, ptr %nb, align 8, !tbaa !11
  %40 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %41 = load i64, ptr %pivcol, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds i64, ptr %40, i64 %41
  %42 = load i64, ptr %arrayidx, align 8, !tbaa !11
  store i64 %42, ptr %fspos, align 8, !tbaa !11
  %43 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fncols19 = getelementptr inbounds %struct.WorkType, ptr %43, i32 0, i32 66
  %44 = load i64, ptr %fncols19, align 8, !tbaa !12
  %dec = add nsw i64 %44, -1
  store i64 %dec, ptr %fncols19, align 8, !tbaa !12
  store i64 %dec, ptr %fncols, align 8, !tbaa !11
  %45 = load i64, ptr %fspos, align 8, !tbaa !11
  %46 = load i64, ptr %fncols, align 8, !tbaa !11
  %47 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul = mul nsw i64 %46, %47
  %cmp = icmp ne i64 %45, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fs) #4
  %48 = load i64, ptr %fspos, align 8, !tbaa !11
  %49 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %div = sdiv i64 %48, %49
  store i64 %div, ptr %fs, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fe) #4
  %50 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %51 = load i64, ptr %fspos, align 8, !tbaa !11
  %add.ptr = getelementptr inbounds double, ptr %50, i64 %51
  store ptr %add.ptr, ptr %Fs, align 8, !tbaa !4
  %52 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %53 = load i64, ptr %fncols, align 8, !tbaa !11
  %54 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul20 = mul nsw i64 %53, %54
  %add.ptr21 = getelementptr inbounds double, ptr %52, i64 %mul20
  store ptr %add.ptr21, ptr %Fe, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %55 = load i64, ptr %i, align 8, !tbaa !11
  %56 = load i64, ptr %fnrows, align 8, !tbaa !11
  %cmp22 = icmp slt i64 %55, %56
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load ptr, ptr %Fe, align 8, !tbaa !4
  %58 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx23 = getelementptr inbounds double, ptr %57, i64 %58
  %59 = load double, ptr %arrayidx23, align 8, !tbaa !33
  %60 = load ptr, ptr %Fs, align 8, !tbaa !4
  %61 = load i64, ptr %i, align 8, !tbaa !11
  %arrayidx24 = getelementptr inbounds double, ptr %60, i64 %61
  store double %59, ptr %arrayidx24, align 8, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i64, ptr %i, align 8, !tbaa !11
  %inc = add nsw i64 %62, 1
  store i64 %inc, ptr %i, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fe) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i25) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs26) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fe27) #4
  %63 = load ptr, ptr %Fublock, align 8, !tbaa !4
  %64 = load i64, ptr %fs, align 8, !tbaa !11
  %add.ptr28 = getelementptr inbounds double, ptr %63, i64 %64
  store ptr %add.ptr28, ptr %Fs26, align 8, !tbaa !4
  %65 = load ptr, ptr %Fublock, align 8, !tbaa !4
  %66 = load i64, ptr %fncols, align 8, !tbaa !11
  %add.ptr29 = getelementptr inbounds double, ptr %65, i64 %66
  store ptr %add.ptr29, ptr %Fe27, align 8, !tbaa !4
  store i64 0, ptr %i25, align 8, !tbaa !11
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc37, %for.end
  %67 = load i64, ptr %i25, align 8, !tbaa !11
  %68 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %cmp31 = icmp slt i64 %67, %68
  br i1 %cmp31, label %for.body32, label %for.end39

for.body32:                                       ; preds = %for.cond30
  %69 = load ptr, ptr %Fe27, align 8, !tbaa !4
  %70 = load i64, ptr %i25, align 8, !tbaa !11
  %71 = load i64, ptr %fnc_curr, align 8, !tbaa !11
  %mul33 = mul nsw i64 %70, %71
  %arrayidx34 = getelementptr inbounds double, ptr %69, i64 %mul33
  %72 = load double, ptr %arrayidx34, align 8, !tbaa !33
  %73 = load ptr, ptr %Fs26, align 8, !tbaa !4
  %74 = load i64, ptr %i25, align 8, !tbaa !11
  %75 = load i64, ptr %fnc_curr, align 8, !tbaa !11
  %mul35 = mul nsw i64 %74, %75
  %arrayidx36 = getelementptr inbounds double, ptr %73, i64 %mul35
  store double %72, ptr %arrayidx36, align 8, !tbaa !33
  br label %for.inc37

for.inc37:                                        ; preds = %for.body32
  %76 = load i64, ptr %i25, align 8, !tbaa !11
  %inc38 = add nsw i64 %76, 1
  store i64 %inc38, ptr %i25, align 8, !tbaa !11
  br label %for.cond30, !llvm.loop !36

for.end39:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fe27) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs26) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %i25) #4
  %77 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %78 = load i64, ptr %fncols, align 8, !tbaa !11
  %arrayidx40 = getelementptr inbounds i64, ptr %77, i64 %78
  %79 = load i64, ptr %arrayidx40, align 8, !tbaa !11
  store i64 %79, ptr %col2, align 8, !tbaa !11
  %80 = load i64, ptr %col2, align 8, !tbaa !11
  %81 = load ptr, ptr %Fcols, align 8, !tbaa !4
  %82 = load i64, ptr %fs, align 8, !tbaa !11
  %arrayidx41 = getelementptr inbounds i64, ptr %81, i64 %82
  store i64 %80, ptr %arrayidx41, align 8, !tbaa !11
  %83 = load i64, ptr %fspos, align 8, !tbaa !11
  %84 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %85 = load i64, ptr %col2, align 8, !tbaa !11
  %arrayidx42 = getelementptr inbounds i64, ptr %84, i64 %85
  store i64 %83, ptr %arrayidx42, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %fs) #4
  br label %if.end

if.end:                                           ; preds = %for.end39, %entry
  %86 = load ptr, ptr %Fcpos, align 8, !tbaa !4
  %87 = load i64, ptr %pivcol, align 8, !tbaa !11
  %arrayidx43 = getelementptr inbounds i64, ptr %86, i64 %87
  store i64 -1, ptr %arrayidx43, align 8, !tbaa !11
  %88 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %89 = load i64, ptr %pivrow, align 8, !tbaa !11
  %arrayidx44 = getelementptr inbounds i64, ptr %88, i64 %89
  %90 = load i64, ptr %arrayidx44, align 8, !tbaa !11
  store i64 %90, ptr %fspos, align 8, !tbaa !11
  %91 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnrows45 = getelementptr inbounds %struct.WorkType, ptr %91, i32 0, i32 65
  %92 = load i64, ptr %fnrows45, align 8, !tbaa !8
  %dec46 = add nsw i64 %92, -1
  store i64 %dec46, ptr %fnrows45, align 8, !tbaa !8
  store i64 %dec46, ptr %fnrows, align 8, !tbaa !11
  %93 = load i64, ptr %fspos, align 8, !tbaa !11
  %94 = load i64, ptr %fnrows, align 8, !tbaa !11
  %cmp47 = icmp eq i64 %93, %94
  br i1 %cmp47, label %if.then48, label %if.else96

if.then48:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fd) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs49) #4
  %95 = load ptr, ptr %Fublock, align 8, !tbaa !4
  %96 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %97 = load i64, ptr %fnc_curr, align 8, !tbaa !11
  %mul50 = mul nsw i64 %96, %97
  %add.ptr51 = getelementptr inbounds double, ptr %95, i64 %mul50
  store ptr %add.ptr51, ptr %Fd, align 8, !tbaa !4
  %98 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %99 = load i64, ptr %fspos, align 8, !tbaa !11
  %add.ptr52 = getelementptr inbounds double, ptr %98, i64 %99
  store ptr %add.ptr52, ptr %Fs49, align 8, !tbaa !4
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc59, %if.then48
  %100 = load i64, ptr %j, align 8, !tbaa !11
  %101 = load i64, ptr %fncols, align 8, !tbaa !11
  %cmp54 = icmp slt i64 %100, %101
  br i1 %cmp54, label %for.body55, label %for.end61

for.body55:                                       ; preds = %for.cond53
  %102 = load ptr, ptr %Fs49, align 8, !tbaa !4
  %103 = load i64, ptr %j, align 8, !tbaa !11
  %104 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul56 = mul nsw i64 %103, %104
  %arrayidx57 = getelementptr inbounds double, ptr %102, i64 %mul56
  %105 = load double, ptr %arrayidx57, align 8, !tbaa !33
  %106 = load ptr, ptr %Fd, align 8, !tbaa !4
  %107 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx58 = getelementptr inbounds double, ptr %106, i64 %107
  store double %105, ptr %arrayidx58, align 8, !tbaa !33
  br label %for.inc59

for.inc59:                                        ; preds = %for.body55
  %108 = load i64, ptr %j, align 8, !tbaa !11
  %inc60 = add nsw i64 %108, 1
  store i64 %inc60, ptr %j, align 8, !tbaa !11
  br label %for.cond53, !llvm.loop !37

for.end61:                                        ; preds = %for.cond53
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs49) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fd) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  %109 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front = getelementptr inbounds %struct.WorkType, ptr %109, i32 0, i32 79
  %110 = load i64, ptr %pivrow_in_front, align 8, !tbaa !38
  %tobool = icmp ne i64 %110, 0
  br i1 %tobool, label %if.then62, label %if.else

if.then62:                                        ; preds = %for.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %j63) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fd64) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs65) #4
  %111 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %112 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %add.ptr66 = getelementptr inbounds double, ptr %111, i64 %112
  store ptr %add.ptr66, ptr %Fd64, align 8, !tbaa !4
  %113 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %114 = load i64, ptr %fspos, align 8, !tbaa !11
  %add.ptr67 = getelementptr inbounds double, ptr %113, i64 %114
  store ptr %add.ptr67, ptr %Fs65, align 8, !tbaa !4
  store i64 0, ptr %j63, align 8, !tbaa !11
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc75, %if.then62
  %115 = load i64, ptr %j63, align 8, !tbaa !11
  %116 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %cmp69 = icmp sle i64 %115, %116
  br i1 %cmp69, label %for.body70, label %for.end77

for.body70:                                       ; preds = %for.cond68
  %117 = load ptr, ptr %Fs65, align 8, !tbaa !4
  %118 = load i64, ptr %j63, align 8, !tbaa !11
  %119 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul71 = mul nsw i64 %118, %119
  %arrayidx72 = getelementptr inbounds double, ptr %117, i64 %mul71
  %120 = load double, ptr %arrayidx72, align 8, !tbaa !33
  %121 = load ptr, ptr %Fd64, align 8, !tbaa !4
  %122 = load i64, ptr %j63, align 8, !tbaa !11
  %123 = load i64, ptr %nb, align 8, !tbaa !11
  %mul73 = mul nsw i64 %122, %123
  %arrayidx74 = getelementptr inbounds double, ptr %121, i64 %mul73
  store double %120, ptr %arrayidx74, align 8, !tbaa !33
  br label %for.inc75

for.inc75:                                        ; preds = %for.body70
  %124 = load i64, ptr %j63, align 8, !tbaa !11
  %inc76 = add nsw i64 %124, 1
  store i64 %inc76, ptr %j63, align 8, !tbaa !11
  br label %for.cond68, !llvm.loop !39

for.end77:                                        ; preds = %for.cond68
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs65) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fd64) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j63) #4
  br label %if.end95

if.else:                                          ; preds = %for.end61
  call void @llvm.lifetime.start.p0(i64 8, ptr %j78) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fd79) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs80) #4
  %125 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %126 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %add.ptr81 = getelementptr inbounds double, ptr %125, i64 %126
  store ptr %add.ptr81, ptr %Fd79, align 8, !tbaa !4
  %127 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %128 = load i64, ptr %fspos, align 8, !tbaa !11
  %add.ptr82 = getelementptr inbounds double, ptr %127, i64 %128
  store ptr %add.ptr82, ptr %Fs80, align 8, !tbaa !4
  store i64 0, ptr %j78, align 8, !tbaa !11
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc88, %if.else
  %129 = load i64, ptr %j78, align 8, !tbaa !11
  %130 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %cmp84 = icmp slt i64 %129, %130
  br i1 %cmp84, label %for.body85, label %for.end90

for.body85:                                       ; preds = %for.cond83
  %131 = load ptr, ptr %Fd79, align 8, !tbaa !4
  %132 = load i64, ptr %j78, align 8, !tbaa !11
  %133 = load i64, ptr %nb, align 8, !tbaa !11
  %mul86 = mul nsw i64 %132, %133
  %arrayidx87 = getelementptr inbounds double, ptr %131, i64 %mul86
  store double 0.000000e+00, ptr %arrayidx87, align 8, !tbaa !33
  br label %for.inc88

for.inc88:                                        ; preds = %for.body85
  %134 = load i64, ptr %j78, align 8, !tbaa !11
  %inc89 = add nsw i64 %134, 1
  store i64 %inc89, ptr %j78, align 8, !tbaa !11
  br label %for.cond83, !llvm.loop !40

for.end90:                                        ; preds = %for.cond83
  %135 = load ptr, ptr %Fs80, align 8, !tbaa !4
  %136 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %137 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul91 = mul nsw i64 %136, %137
  %arrayidx92 = getelementptr inbounds double, ptr %135, i64 %mul91
  %138 = load double, ptr %arrayidx92, align 8, !tbaa !33
  %139 = load ptr, ptr %Fd79, align 8, !tbaa !4
  %140 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %141 = load i64, ptr %nb, align 8, !tbaa !11
  %mul93 = mul nsw i64 %140, %141
  %arrayidx94 = getelementptr inbounds double, ptr %139, i64 %mul93
  store double %138, ptr %arrayidx94, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs80) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fd79) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j78) #4
  br label %if.end95

if.end95:                                         ; preds = %for.end90, %for.end77
  br label %if.end160

if.else96:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fd97) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs98) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fe99) #4
  %142 = load ptr, ptr %Fublock, align 8, !tbaa !4
  %143 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %144 = load i64, ptr %fnc_curr, align 8, !tbaa !11
  %mul100 = mul nsw i64 %143, %144
  %add.ptr101 = getelementptr inbounds double, ptr %142, i64 %mul100
  store ptr %add.ptr101, ptr %Fd97, align 8, !tbaa !4
  %145 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %146 = load i64, ptr %fspos, align 8, !tbaa !11
  %add.ptr102 = getelementptr inbounds double, ptr %145, i64 %146
  store ptr %add.ptr102, ptr %Fs98, align 8, !tbaa !4
  %147 = load ptr, ptr %Fcblock, align 8, !tbaa !4
  %148 = load i64, ptr %fnrows, align 8, !tbaa !11
  %add.ptr103 = getelementptr inbounds double, ptr %147, i64 %148
  store ptr %add.ptr103, ptr %Fe99, align 8, !tbaa !4
  %149 = load ptr, ptr %Fd97, align 8, !tbaa !4
  %150 = load ptr, ptr %Fs98, align 8, !tbaa !4
  %151 = load ptr, ptr %Fe99, align 8, !tbaa !4
  %152 = load i64, ptr %fncols, align 8, !tbaa !11
  %153 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  call void @shift_pivot_row(ptr noundef %149, ptr noundef %150, ptr noundef %151, i64 noundef %152, i64 noundef %153)
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fe99) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs98) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fd97) #4
  %154 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %pivrow_in_front104 = getelementptr inbounds %struct.WorkType, ptr %154, i32 0, i32 79
  %155 = load i64, ptr %pivrow_in_front104, align 8, !tbaa !38
  %tobool105 = icmp ne i64 %155, 0
  br i1 %tobool105, label %if.then106, label %if.else128

if.then106:                                       ; preds = %if.else96
  call void @llvm.lifetime.start.p0(i64 8, ptr %j107) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fd108) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs109) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fe110) #4
  %156 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %157 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %add.ptr111 = getelementptr inbounds double, ptr %156, i64 %157
  store ptr %add.ptr111, ptr %Fd108, align 8, !tbaa !4
  %158 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %159 = load i64, ptr %fspos, align 8, !tbaa !11
  %add.ptr112 = getelementptr inbounds double, ptr %158, i64 %159
  store ptr %add.ptr112, ptr %Fs109, align 8, !tbaa !4
  %160 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %161 = load i64, ptr %fnrows, align 8, !tbaa !11
  %add.ptr113 = getelementptr inbounds double, ptr %160, i64 %161
  store ptr %add.ptr113, ptr %Fe110, align 8, !tbaa !4
  store i64 0, ptr %j107, align 8, !tbaa !11
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc125, %if.then106
  %162 = load i64, ptr %j107, align 8, !tbaa !11
  %163 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %cmp115 = icmp sle i64 %162, %163
  br i1 %cmp115, label %for.body116, label %for.end127

for.body116:                                      ; preds = %for.cond114
  %164 = load ptr, ptr %Fs109, align 8, !tbaa !4
  %165 = load i64, ptr %j107, align 8, !tbaa !11
  %166 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul117 = mul nsw i64 %165, %166
  %arrayidx118 = getelementptr inbounds double, ptr %164, i64 %mul117
  %167 = load double, ptr %arrayidx118, align 8, !tbaa !33
  %168 = load ptr, ptr %Fd108, align 8, !tbaa !4
  %169 = load i64, ptr %j107, align 8, !tbaa !11
  %170 = load i64, ptr %nb, align 8, !tbaa !11
  %mul119 = mul nsw i64 %169, %170
  %arrayidx120 = getelementptr inbounds double, ptr %168, i64 %mul119
  store double %167, ptr %arrayidx120, align 8, !tbaa !33
  %171 = load ptr, ptr %Fe110, align 8, !tbaa !4
  %172 = load i64, ptr %j107, align 8, !tbaa !11
  %173 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul121 = mul nsw i64 %172, %173
  %arrayidx122 = getelementptr inbounds double, ptr %171, i64 %mul121
  %174 = load double, ptr %arrayidx122, align 8, !tbaa !33
  %175 = load ptr, ptr %Fs109, align 8, !tbaa !4
  %176 = load i64, ptr %j107, align 8, !tbaa !11
  %177 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul123 = mul nsw i64 %176, %177
  %arrayidx124 = getelementptr inbounds double, ptr %175, i64 %mul123
  store double %174, ptr %arrayidx124, align 8, !tbaa !33
  br label %for.inc125

for.inc125:                                       ; preds = %for.body116
  %178 = load i64, ptr %j107, align 8, !tbaa !11
  %inc126 = add nsw i64 %178, 1
  store i64 %inc126, ptr %j107, align 8, !tbaa !11
  br label %for.cond114, !llvm.loop !41

for.end127:                                       ; preds = %for.cond114
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fe110) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs109) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fd108) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j107) #4
  br label %if.end156

if.else128:                                       ; preds = %if.else96
  call void @llvm.lifetime.start.p0(i64 8, ptr %j129) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fd130) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fs131) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Fe132) #4
  %179 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %180 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %add.ptr133 = getelementptr inbounds double, ptr %179, i64 %180
  store ptr %add.ptr133, ptr %Fd130, align 8, !tbaa !4
  %181 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %182 = load i64, ptr %fspos, align 8, !tbaa !11
  %add.ptr134 = getelementptr inbounds double, ptr %181, i64 %182
  store ptr %add.ptr134, ptr %Fs131, align 8, !tbaa !4
  %183 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %184 = load i64, ptr %fnrows, align 8, !tbaa !11
  %add.ptr135 = getelementptr inbounds double, ptr %183, i64 %184
  store ptr %add.ptr135, ptr %Fe132, align 8, !tbaa !4
  store i64 0, ptr %j129, align 8, !tbaa !11
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc145, %if.else128
  %185 = load i64, ptr %j129, align 8, !tbaa !11
  %186 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %cmp137 = icmp slt i64 %185, %186
  br i1 %cmp137, label %for.body138, label %for.end147

for.body138:                                      ; preds = %for.cond136
  %187 = load ptr, ptr %Fd130, align 8, !tbaa !4
  %188 = load i64, ptr %j129, align 8, !tbaa !11
  %189 = load i64, ptr %nb, align 8, !tbaa !11
  %mul139 = mul nsw i64 %188, %189
  %arrayidx140 = getelementptr inbounds double, ptr %187, i64 %mul139
  store double 0.000000e+00, ptr %arrayidx140, align 8, !tbaa !33
  %190 = load ptr, ptr %Fe132, align 8, !tbaa !4
  %191 = load i64, ptr %j129, align 8, !tbaa !11
  %192 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul141 = mul nsw i64 %191, %192
  %arrayidx142 = getelementptr inbounds double, ptr %190, i64 %mul141
  %193 = load double, ptr %arrayidx142, align 8, !tbaa !33
  %194 = load ptr, ptr %Fs131, align 8, !tbaa !4
  %195 = load i64, ptr %j129, align 8, !tbaa !11
  %196 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul143 = mul nsw i64 %195, %196
  %arrayidx144 = getelementptr inbounds double, ptr %194, i64 %mul143
  store double %193, ptr %arrayidx144, align 8, !tbaa !33
  br label %for.inc145

for.inc145:                                       ; preds = %for.body138
  %197 = load i64, ptr %j129, align 8, !tbaa !11
  %inc146 = add nsw i64 %197, 1
  store i64 %inc146, ptr %j129, align 8, !tbaa !11
  br label %for.cond136, !llvm.loop !42

for.end147:                                       ; preds = %for.cond136
  %198 = load ptr, ptr %Fs131, align 8, !tbaa !4
  %199 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %200 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul148 = mul nsw i64 %199, %200
  %arrayidx149 = getelementptr inbounds double, ptr %198, i64 %mul148
  %201 = load double, ptr %arrayidx149, align 8, !tbaa !33
  %202 = load ptr, ptr %Fd130, align 8, !tbaa !4
  %203 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %204 = load i64, ptr %nb, align 8, !tbaa !11
  %mul150 = mul nsw i64 %203, %204
  %arrayidx151 = getelementptr inbounds double, ptr %202, i64 %mul150
  store double %201, ptr %arrayidx151, align 8, !tbaa !33
  %205 = load ptr, ptr %Fe132, align 8, !tbaa !4
  %206 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %207 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul152 = mul nsw i64 %206, %207
  %arrayidx153 = getelementptr inbounds double, ptr %205, i64 %mul152
  %208 = load double, ptr %arrayidx153, align 8, !tbaa !33
  %209 = load ptr, ptr %Fs131, align 8, !tbaa !4
  %210 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %211 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul154 = mul nsw i64 %210, %211
  %arrayidx155 = getelementptr inbounds double, ptr %209, i64 %mul154
  store double %208, ptr %arrayidx155, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fe132) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fs131) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fd130) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %j129) #4
  br label %if.end156

if.end156:                                        ; preds = %for.end147, %for.end127
  %212 = load ptr, ptr %Frows, align 8, !tbaa !4
  %213 = load i64, ptr %fnrows, align 8, !tbaa !11
  %arrayidx157 = getelementptr inbounds i64, ptr %212, i64 %213
  %214 = load i64, ptr %arrayidx157, align 8, !tbaa !11
  store i64 %214, ptr %row2, align 8, !tbaa !11
  %215 = load i64, ptr %row2, align 8, !tbaa !11
  %216 = load ptr, ptr %Frows, align 8, !tbaa !4
  %217 = load i64, ptr %fspos, align 8, !tbaa !11
  %arrayidx158 = getelementptr inbounds i64, ptr %216, i64 %217
  store i64 %215, ptr %arrayidx158, align 8, !tbaa !11
  %218 = load i64, ptr %fspos, align 8, !tbaa !11
  %219 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %220 = load i64, ptr %row2, align 8, !tbaa !11
  %arrayidx159 = getelementptr inbounds i64, ptr %219, i64 %220
  store i64 %218, ptr %arrayidx159, align 8, !tbaa !11
  br label %if.end160

if.end160:                                        ; preds = %if.end156, %if.end95
  %221 = load ptr, ptr %Frpos, align 8, !tbaa !4
  %222 = load i64, ptr %pivrow, align 8, !tbaa !11
  %arrayidx161 = getelementptr inbounds i64, ptr %221, i64 %222
  store i64 -1, ptr %arrayidx161, align 8, !tbaa !11
  %223 = load ptr, ptr %Flblock, align 8, !tbaa !4
  %224 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %225 = load i64, ptr %fnr_curr, align 8, !tbaa !11
  %mul162 = mul nsw i64 %224, %225
  %add.ptr163 = getelementptr inbounds double, ptr %223, i64 %mul162
  store ptr %add.ptr163, ptr %Fcol, align 8, !tbaa !4
  %226 = load ptr, ptr %Flublock, align 8, !tbaa !4
  %227 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %228 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %229 = load i64, ptr %nb, align 8, !tbaa !11
  %mul164 = mul nsw i64 %228, %229
  %add = add nsw i64 %227, %mul164
  %arrayidx165 = getelementptr inbounds double, ptr %226, i64 %add
  %230 = load double, ptr %arrayidx165, align 8, !tbaa !33
  store double %230, ptr %pivot_value, align 8, !tbaa !33
  %231 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %npiv = getelementptr inbounds %struct.WorkType, ptr %231, i32 0, i32 23
  %232 = load i64, ptr %npiv, align 8, !tbaa !43
  %233 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %add166 = add nsw i64 %232, %233
  store i64 %add166, ptr %k, align 8, !tbaa !11
  %234 = load i64, ptr %fnrows, align 8, !tbaa !11
  %235 = load double, ptr %pivot_value, align 8, !tbaa !33
  %236 = load ptr, ptr %Fcol, align 8, !tbaa !4
  call void @umfdl_scale(i64 noundef %234, double noundef %235, ptr noundef %236)
  %237 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %238 = load ptr, ptr %Row_tuples, align 8, !tbaa !4
  %239 = load i64, ptr %pivrow, align 8, !tbaa !11
  %arrayidx167 = getelementptr inbounds i64, ptr %238, i64 %239
  %240 = load i64, ptr %arrayidx167, align 8, !tbaa !11
  call void @umfdl_mem_free_tail_block(ptr noundef %237, i64 noundef %240)
  %241 = load ptr, ptr %Numeric.addr, align 8, !tbaa !4
  %242 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %243 = load i64, ptr %pivcol, align 8, !tbaa !11
  %arrayidx168 = getelementptr inbounds i64, ptr %242, i64 %243
  %244 = load i64, ptr %arrayidx168, align 8, !tbaa !11
  call void @umfdl_mem_free_tail_block(ptr noundef %241, i64 noundef %244)
  %245 = load ptr, ptr %Row_tuples, align 8, !tbaa !4
  %246 = load i64, ptr %pivrow, align 8, !tbaa !11
  %arrayidx169 = getelementptr inbounds i64, ptr %245, i64 %246
  store i64 0, ptr %arrayidx169, align 8, !tbaa !11
  %247 = load ptr, ptr %Col_tuples, align 8, !tbaa !4
  %248 = load i64, ptr %pivcol, align 8, !tbaa !11
  %arrayidx170 = getelementptr inbounds i64, ptr %247, i64 %248
  store i64 0, ptr %arrayidx170, align 8, !tbaa !11
  %249 = load i64, ptr %k, align 8, !tbaa !11
  %sub = sub nsw i64 0, %249
  %sub171 = sub nsw i64 %sub, 1
  store i64 %sub171, ptr %k1, align 8, !tbaa !11
  %250 = load i64, ptr %k1, align 8, !tbaa !11
  %251 = load ptr, ptr %Rperm, align 8, !tbaa !4
  %252 = load i64, ptr %pivrow, align 8, !tbaa !11
  %arrayidx172 = getelementptr inbounds i64, ptr %251, i64 %252
  store i64 %250, ptr %arrayidx172, align 8, !tbaa !11
  %253 = load i64, ptr %k1, align 8, !tbaa !11
  %254 = load ptr, ptr %Cperm, align 8, !tbaa !4
  %255 = load i64, ptr %pivcol, align 8, !tbaa !11
  %arrayidx173 = getelementptr inbounds i64, ptr %254, i64 %255
  store i64 %253, ptr %arrayidx173, align 8, !tbaa !11
  %256 = load i64, ptr %pivrow, align 8, !tbaa !11
  %257 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Pivrow = getelementptr inbounds %struct.WorkType, ptr %257, i32 0, i32 55
  %258 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %arrayidx174 = getelementptr inbounds [64 x i64], ptr %Pivrow, i64 0, i64 %258
  store i64 %256, ptr %arrayidx174, align 8, !tbaa !11
  %259 = load i64, ptr %pivcol, align 8, !tbaa !11
  %260 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %Pivcol = getelementptr inbounds %struct.WorkType, ptr %260, i32 0, i32 56
  %261 = load i64, ptr %fnpiv, align 8, !tbaa !11
  %arrayidx175 = getelementptr inbounds [64 x i64], ptr %Pivcol, i64 0, i64 %261
  store i64 %259, ptr %arrayidx175, align 8, !tbaa !11
  %262 = load ptr, ptr %Work.addr, align 8, !tbaa !4
  %fnpiv176 = getelementptr inbounds %struct.WorkType, ptr %262, i32 0, i32 73
  %263 = load i64, ptr %fnpiv176, align 8, !tbaa !13
  %inc177 = add nsw i64 %263, 1
  store i64 %inc177, ptr %fnpiv176, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8, ptr %row2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %col2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fspos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cperm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rperm) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Col_tuples) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %nb) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Row_tuples) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnpiv) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnc_curr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcols) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frows) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivcol) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivrow) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Frpos) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fncols) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnrows) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %fnr_curr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcblock) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fublock) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Flblock) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Flublock) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Fcol) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot_value) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @shift_pivot_row(ptr noundef %Fd, ptr noundef %Fs, ptr noundef %Fe, i64 noundef %len, i64 noundef %d) #2 {
entry:
  %Fd.addr = alloca ptr, align 8
  %Fs.addr = alloca ptr, align 8
  %Fe.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  %j = alloca i64, align 8
  store ptr %Fd, ptr %Fd.addr, align 8, !tbaa !4
  store ptr %Fs, ptr %Fs.addr, align 8, !tbaa !4
  store ptr %Fe, ptr %Fe.addr, align 8, !tbaa !4
  store i64 %len, ptr %len.addr, align 8, !tbaa !11
  store i64 %d, ptr %d.addr, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #4
  store i64 0, ptr %j, align 8, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %j, align 8, !tbaa !11
  %1 = load i64, ptr %len.addr, align 8, !tbaa !11
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %Fs.addr, align 8, !tbaa !4
  %3 = load i64, ptr %j, align 8, !tbaa !11
  %4 = load i64, ptr %d.addr, align 8, !tbaa !11
  %mul = mul nsw i64 %3, %4
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %mul
  %5 = load double, ptr %arrayidx, align 8, !tbaa !33
  %6 = load ptr, ptr %Fd.addr, align 8, !tbaa !4
  %7 = load i64, ptr %j, align 8, !tbaa !11
  %arrayidx1 = getelementptr inbounds double, ptr %6, i64 %7
  store double %5, ptr %arrayidx1, align 8, !tbaa !33
  %8 = load ptr, ptr %Fe.addr, align 8, !tbaa !4
  %9 = load i64, ptr %j, align 8, !tbaa !11
  %10 = load i64, ptr %d.addr, align 8, !tbaa !11
  %mul2 = mul nsw i64 %9, %10
  %arrayidx3 = getelementptr inbounds double, ptr %8, i64 %mul2
  %11 = load double, ptr %arrayidx3, align 8, !tbaa !33
  %12 = load ptr, ptr %Fs.addr, align 8, !tbaa !4
  %13 = load i64, ptr %j, align 8, !tbaa !11
  %14 = load i64, ptr %d.addr, align 8, !tbaa !11
  %mul4 = mul nsw i64 %13, %14
  %arrayidx5 = getelementptr inbounds double, ptr %12, i64 %mul4
  store double %11, ptr %arrayidx5, align 8, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i64, ptr %j, align 8, !tbaa !11
  %inc = add nsw i64 %15, 1
  store i64 %inc, ptr %j, align 8, !tbaa !11
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #4
  ret void
}

declare void @umfdl_scale(i64 noundef, double noundef, ptr noundef) #3

declare void @umfdl_mem_free_tail_block(ptr noundef, i64 noundef) #3

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !10, i64 2544}
!9 = !{!"", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !10, i64 112, !10, i64 120, !5, i64 128, !5, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !6, i64 264, !10, i64 1288, !10, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !10, i64 1336, !10, i64 1344, !10, i64 1352, !10, i64 1360, !10, i64 1368, !10, i64 1376, !10, i64 1384, !10, i64 1392, !10, i64 1400, !10, i64 1408, !10, i64 1416, !10, i64 1424, !10, i64 1432, !10, i64 1440, !5, i64 1448, !6, i64 1456, !6, i64 1968, !5, i64 2480, !5, i64 2488, !5, i64 2496, !5, i64 2504, !5, i64 2512, !5, i64 2520, !5, i64 2528, !5, i64 2536, !10, i64 2544, !10, i64 2552, !10, i64 2560, !10, i64 2568, !10, i64 2576, !10, i64 2584, !10, i64 2592, !10, i64 2600, !10, i64 2608, !10, i64 2616, !10, i64 2624, !10, i64 2632, !10, i64 2640, !10, i64 2648, !10, i64 2656, !10, i64 2664}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!9, !10, i64 2552}
!13 = !{!9, !10, i64 2608}
!14 = !{!15, !5, i64 144}
!15 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !5, i64 144, !5, i64 152, !5, i64 160, !5, i64 168, !5, i64 176, !5, i64 184, !5, i64 192, !5, i64 200, !5, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !5, i64 240, !10, i64 248, !5, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !10, i64 376, !10, i64 384, !10, i64 392, !10, i64 400, !10, i64 408}
!16 = !{!"double", !6, i64 0}
!17 = !{!15, !5, i64 152}
!18 = !{!9, !5, i64 2480}
!19 = !{!9, !5, i64 2488}
!20 = !{!9, !5, i64 2496}
!21 = !{!9, !5, i64 2504}
!22 = !{!9, !10, i64 2560}
!23 = !{!9, !10, i64 2568}
!24 = !{!9, !5, i64 2528}
!25 = !{!9, !5, i64 2536}
!26 = !{!9, !5, i64 2512}
!27 = !{!9, !5, i64 2520}
!28 = !{!9, !10, i64 1352}
!29 = !{!9, !10, i64 1360}
!30 = !{!15, !5, i64 192}
!31 = !{!15, !5, i64 176}
!32 = !{!9, !10, i64 2600}
!33 = !{!16, !16, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = !{!9, !10, i64 2656}
!39 = distinct !{!39, !35}
!40 = distinct !{!40, !35}
!41 = distinct !{!41, !35}
!42 = distinct !{!42, !35}
!43 = !{!9, !10, i64 184}
!44 = distinct !{!44, !35}
