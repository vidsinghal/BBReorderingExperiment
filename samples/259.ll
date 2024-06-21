; ModuleID = 'samples/259.bc'
source_filename = "../scipy/_lib/highs/src/ipm/basiclu/src/lu_build_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lu = type { i32, i32, i32, double, double, double, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, double, double, i32, i32, i32, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define i32 @lu_build_factors(ptr noundef %this) #0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %rank = alloca i32, align 4
  %Lmem = alloca i32, align 4
  %Umem = alloca i32, align 4
  %Wmem = alloca i32, align 4
  %pad = alloca i32, align 4
  %stretch = alloca double, align 8
  %pinv = alloca ptr, align 8
  %qinv = alloca ptr, align 8
  %pmap = alloca ptr, align 8
  %qmap = alloca ptr, align 8
  %pivotcol = alloca ptr, align 8
  %pivotrow = alloca ptr, align 8
  %Lbegin = alloca ptr, align 8
  %Lbegin_p = alloca ptr, align 8
  %Ltbegin = alloca ptr, align 8
  %Ltbegin_p = alloca ptr, align 8
  %Ubegin = alloca ptr, align 8
  %Rbegin = alloca ptr, align 8
  %Wbegin = alloca ptr, align 8
  %Wend = alloca ptr, align 8
  %Wflink = alloca ptr, align 8
  %Wblink = alloca ptr, align 8
  %col_pivot = alloca ptr, align 8
  %row_pivot = alloca ptr, align 8
  %Lindex = alloca ptr, align 8
  %Lvalue = alloca ptr, align 8
  %Uindex = alloca ptr, align 8
  %Uvalue = alloca ptr, align 8
  %Windex = alloca ptr, align 8
  %Wvalue = alloca ptr, align 8
  %iwork1 = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ipivot = alloca i32, align 4
  %jpivot = alloca i32, align 4
  %k = alloca i32, align 4
  %lrank = alloca i32, align 4
  %nz = alloca i32, align 4
  %Lnz = alloca i32, align 4
  %Unz = alloca i32, align 4
  %need = alloca i32, align 4
  %get = alloca i32, align 4
  %put = alloca i32, align 4
  %pos = alloca i32, align 4
  %pivot = alloca double, align 8
  %min_pivot = alloca double, align 8
  %max_pivot = alloca double, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  %0 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %m1 = getelementptr inbounds %struct.lu, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %m1, align 4, !tbaa !8
  store i32 %1, ptr %m, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %rank) #7
  %2 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %rank2 = getelementptr inbounds %struct.lu, ptr %2, i32 0, i32 50
  %3 = load i32, ptr %rank2, align 4, !tbaa !13
  store i32 %3, ptr %rank, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %Lmem) #7
  %4 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lmem3 = getelementptr inbounds %struct.lu, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %Lmem3, align 8, !tbaa !14
  store i32 %5, ptr %Lmem, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %Umem) #7
  %6 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Umem4 = getelementptr inbounds %struct.lu, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %Umem4, align 4, !tbaa !15
  store i32 %7, ptr %Umem, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %Wmem) #7
  %8 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wmem5 = getelementptr inbounds %struct.lu, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %Wmem5, align 8, !tbaa !16
  store i32 %9, ptr %Wmem, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %pad) #7
  %10 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pad6 = getelementptr inbounds %struct.lu, ptr %10, i32 0, i32 8
  %11 = load i32, ptr %pad6, align 8, !tbaa !17
  store i32 %11, ptr %pad, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %stretch) #7
  %12 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %stretch7 = getelementptr inbounds %struct.lu, ptr %12, i32 0, i32 9
  %13 = load double, ptr %stretch7, align 8, !tbaa !18
  store double %13, ptr %stretch, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 8, ptr %pinv) #7
  %14 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pinv8 = getelementptr inbounds %struct.lu, ptr %14, i32 0, i32 94
  %15 = load ptr, ptr %pinv8, align 8, !tbaa !20
  store ptr %15, ptr %pinv, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %qinv) #7
  %16 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %qinv9 = getelementptr inbounds %struct.lu, ptr %16, i32 0, i32 96
  %17 = load ptr, ptr %qinv9, align 8, !tbaa !21
  store ptr %17, ptr %qinv, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pmap) #7
  %18 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pmap10 = getelementptr inbounds %struct.lu, ptr %18, i32 0, i32 95
  %19 = load ptr, ptr %pmap10, align 8, !tbaa !22
  store ptr %19, ptr %pmap, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %qmap) #7
  %20 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %qmap11 = getelementptr inbounds %struct.lu, ptr %20, i32 0, i32 97
  %21 = load ptr, ptr %qmap11, align 8, !tbaa !23
  store ptr %21, ptr %qmap, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivotcol) #7
  %22 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivotcol12 = getelementptr inbounds %struct.lu, ptr %22, i32 0, i32 78
  %23 = load ptr, ptr %pivotcol12, align 8, !tbaa !24
  store ptr %23, ptr %pivotcol, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivotrow) #7
  %24 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivotrow13 = getelementptr inbounds %struct.lu, ptr %24, i32 0, i32 80
  %25 = load ptr, ptr %pivotrow13, align 8, !tbaa !25
  store ptr %25, ptr %pivotrow, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lbegin) #7
  %26 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lbegin14 = getelementptr inbounds %struct.lu, ptr %26, i32 0, i32 87
  %27 = load ptr, ptr %Lbegin14, align 8, !tbaa !26
  store ptr %27, ptr %Lbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lbegin_p) #7
  %28 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lbegin_p15 = getelementptr inbounds %struct.lu, ptr %28, i32 0, i32 98
  %29 = load ptr, ptr %Lbegin_p15, align 8, !tbaa !27
  store ptr %29, ptr %Lbegin_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ltbegin) #7
  %30 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ltbegin16 = getelementptr inbounds %struct.lu, ptr %30, i32 0, i32 89
  %31 = load ptr, ptr %Ltbegin16, align 8, !tbaa !28
  store ptr %31, ptr %Ltbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ltbegin_p) #7
  %32 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ltbegin_p17 = getelementptr inbounds %struct.lu, ptr %32, i32 0, i32 91
  %33 = load ptr, ptr %Ltbegin_p17, align 8, !tbaa !29
  store ptr %33, ptr %Ltbegin_p, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ubegin) #7
  %34 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Ubegin18 = getelementptr inbounds %struct.lu, ptr %34, i32 0, i32 99
  %35 = load ptr, ptr %Ubegin18, align 8, !tbaa !30
  store ptr %35, ptr %Ubegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rbegin) #7
  %36 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Rbegin19 = getelementptr inbounds %struct.lu, ptr %36, i32 0, i32 82
  %37 = load ptr, ptr %Rbegin19, align 8, !tbaa !31
  store ptr %37, ptr %Rbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wbegin) #7
  %38 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wbegin20 = getelementptr inbounds %struct.lu, ptr %38, i32 0, i32 86
  %39 = load ptr, ptr %Wbegin20, align 8, !tbaa !32
  store ptr %39, ptr %Wbegin, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wend) #7
  %40 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wend21 = getelementptr inbounds %struct.lu, ptr %40, i32 0, i32 88
  %41 = load ptr, ptr %Wend21, align 8, !tbaa !33
  store ptr %41, ptr %Wend, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wflink) #7
  %42 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wflink22 = getelementptr inbounds %struct.lu, ptr %42, i32 0, i32 90
  %43 = load ptr, ptr %Wflink22, align 8, !tbaa !34
  store ptr %43, ptr %Wflink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wblink) #7
  %44 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wblink23 = getelementptr inbounds %struct.lu, ptr %44, i32 0, i32 92
  %45 = load ptr, ptr %Wblink23, align 8, !tbaa !35
  store ptr %45, ptr %Wblink, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %col_pivot) #7
  %46 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %col_pivot24 = getelementptr inbounds %struct.lu, ptr %46, i32 0, i32 104
  %47 = load ptr, ptr %col_pivot24, align 8, !tbaa !36
  store ptr %47, ptr %col_pivot, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %row_pivot) #7
  %48 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %row_pivot25 = getelementptr inbounds %struct.lu, ptr %48, i32 0, i32 105
  %49 = load ptr, ptr %row_pivot25, align 8, !tbaa !37
  store ptr %49, ptr %row_pivot, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lindex) #7
  %50 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lindex26 = getelementptr inbounds %struct.lu, ptr %50, i32 0, i32 71
  %51 = load ptr, ptr %Lindex26, align 8, !tbaa !38
  store ptr %51, ptr %Lindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Lvalue) #7
  %52 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lvalue27 = getelementptr inbounds %struct.lu, ptr %52, i32 0, i32 74
  %53 = load ptr, ptr %Lvalue27, align 8, !tbaa !39
  store ptr %53, ptr %Lvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uindex) #7
  %54 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uindex28 = getelementptr inbounds %struct.lu, ptr %54, i32 0, i32 72
  %55 = load ptr, ptr %Uindex28, align 8, !tbaa !40
  store ptr %55, ptr %Uindex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Uvalue) #7
  %56 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Uvalue29 = getelementptr inbounds %struct.lu, ptr %56, i32 0, i32 75
  %57 = load ptr, ptr %Uvalue29, align 8, !tbaa !41
  store ptr %57, ptr %Uvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Windex) #7
  %58 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Windex30 = getelementptr inbounds %struct.lu, ptr %58, i32 0, i32 73
  %59 = load ptr, ptr %Windex30, align 8, !tbaa !42
  store ptr %59, ptr %Windex, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Wvalue) #7
  %60 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Wvalue31 = getelementptr inbounds %struct.lu, ptr %60, i32 0, i32 76
  %61 = load ptr, ptr %Wvalue31, align 8, !tbaa !43
  store ptr %61, ptr %Wvalue, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %iwork1) #7
  %62 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %iwork132 = getelementptr inbounds %struct.lu, ptr %62, i32 0, i32 85
  %63 = load ptr, ptr %iwork132, align 8, !tbaa !44
  store ptr %63, ptr %iwork1, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %ipivot) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %jpivot) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %lrank) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %nz) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %Lnz) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %Unz) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %need) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %get) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %put) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %pivot) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_pivot) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_pivot) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7
  store i32 0, ptr %status, align 4, !tbaa !12
  %64 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %65 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom = sext i32 %65 to i64
  %arrayidx = getelementptr inbounds i32, ptr %64, i64 %idxprom
  %66 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %66, ptr %Lnz, align 4, !tbaa !12
  %67 = load i32, ptr %rank, align 4, !tbaa !12
  %68 = load i32, ptr %Lnz, align 4, !tbaa !12
  %sub = sub nsw i32 %68, %67
  store i32 %sub, ptr %Lnz, align 4, !tbaa !12
  %69 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %70 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom33 = sext i32 %70 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %69, i64 %idxprom33
  %71 = load i32, ptr %arrayidx34, align 4, !tbaa !12
  store i32 %71, ptr %Unz, align 4, !tbaa !12
  %72 = load i32, ptr %Lnz, align 4, !tbaa !12
  %73 = load i32, ptr %m, align 4, !tbaa !12
  %add = add nsw i32 %72, %73
  %mul = mul nsw i32 2, %add
  store i32 %mul, ptr %need, align 4, !tbaa !12
  %74 = load i32, ptr %Lmem, align 4, !tbaa !12
  %75 = load i32, ptr %need, align 4, !tbaa !12
  %cmp = icmp slt i32 %74, %75
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %76 = load i32, ptr %need, align 4, !tbaa !12
  %77 = load i32, ptr %Lmem, align 4, !tbaa !12
  %sub35 = sub nsw i32 %76, %77
  %78 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %addmemL = getelementptr inbounds %struct.lu, ptr %78, i32 0, i32 14
  store i32 %sub35, ptr %addmemL, align 8, !tbaa !45
  store i32 1, ptr %status, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %79 = load i32, ptr %Unz, align 4, !tbaa !12
  %80 = load i32, ptr %m, align 4, !tbaa !12
  %add36 = add nsw i32 %79, %80
  %add37 = add nsw i32 %add36, 1
  store i32 %add37, ptr %need, align 4, !tbaa !12
  %81 = load i32, ptr %Umem, align 4, !tbaa !12
  %82 = load i32, ptr %need, align 4, !tbaa !12
  %cmp38 = icmp slt i32 %81, %82
  br i1 %cmp38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end
  %83 = load i32, ptr %need, align 4, !tbaa !12
  %84 = load i32, ptr %Umem, align 4, !tbaa !12
  %sub40 = sub nsw i32 %83, %84
  %85 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %addmemU = getelementptr inbounds %struct.lu, ptr %85, i32 0, i32 15
  store i32 %sub40, ptr %addmemU, align 4, !tbaa !46
  store i32 1, ptr %status, align 4, !tbaa !12
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end
  %86 = load i32, ptr %Unz, align 4, !tbaa !12
  %conv = sitofp i32 %86 to double
  %87 = load double, ptr %stretch, align 8, !tbaa !19
  %88 = load i32, ptr %Unz, align 4, !tbaa !12
  %conv42 = sitofp i32 %88 to double
  %89 = call double @llvm.fmuladd.f64(double %87, double %conv42, double %conv)
  %90 = load i32, ptr %m, align 4, !tbaa !12
  %91 = load i32, ptr %pad, align 4, !tbaa !12
  %mul44 = mul nsw i32 %90, %91
  %conv45 = sitofp i32 %mul44 to double
  %add46 = fadd double %89, %conv45
  %conv47 = fptosi double %add46 to i32
  store i32 %conv47, ptr %need, align 4, !tbaa !12
  %92 = load i32, ptr %Wmem, align 4, !tbaa !12
  %93 = load i32, ptr %need, align 4, !tbaa !12
  %cmp48 = icmp slt i32 %92, %93
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end41
  %94 = load i32, ptr %need, align 4, !tbaa !12
  %95 = load i32, ptr %Wmem, align 4, !tbaa !12
  %sub51 = sub nsw i32 %94, %95
  %96 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %addmemW = getelementptr inbounds %struct.lu, ptr %96, i32 0, i32 16
  store i32 %sub51, ptr %addmemW, align 8, !tbaa !47
  store i32 1, ptr %status, align 4, !tbaa !12
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end41
  %97 = load i32, ptr %status, align 4, !tbaa !12
  %cmp53 = icmp ne i32 %97, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  %98 = load i32, ptr %status, align 4, !tbaa !12
  store i32 %98, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %99 = load i32, ptr %rank, align 4, !tbaa !12
  store i32 %99, ptr %lrank, align 4, !tbaa !12
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end56
  %100 = load i32, ptr %i, align 4, !tbaa !12
  %101 = load i32, ptr %m, align 4, !tbaa !12
  %cmp57 = icmp slt i32 %100, %101
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %102 = load ptr, ptr %pinv, align 8, !tbaa !4
  %103 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom59 = sext i32 %103 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %102, i64 %idxprom59
  %104 = load i32, ptr %arrayidx60, align 4, !tbaa !12
  %cmp61 = icmp slt i32 %104, 0
  br i1 %cmp61, label %if.then63, label %if.end66

if.then63:                                        ; preds = %for.body
  %105 = load i32, ptr %lrank, align 4, !tbaa !12
  %inc = add nsw i32 %105, 1
  store i32 %inc, ptr %lrank, align 4, !tbaa !12
  %106 = load ptr, ptr %pinv, align 8, !tbaa !4
  %107 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom64 = sext i32 %107 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %106, i64 %idxprom64
  store i32 %105, ptr %arrayidx65, align 4, !tbaa !12
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %for.body
  %108 = load i32, ptr %i, align 4, !tbaa !12
  %109 = load ptr, ptr %pivotrow, align 8, !tbaa !4
  %110 = load ptr, ptr %pinv, align 8, !tbaa !4
  %111 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom67 = sext i32 %111 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %110, i64 %idxprom67
  %112 = load i32, ptr %arrayidx68, align 4, !tbaa !12
  %idxprom69 = sext i32 %112 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %109, i64 %idxprom69
  store i32 %108, ptr %arrayidx70, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %113 = load i32, ptr %i, align 4, !tbaa !12
  %inc71 = add nsw i32 %113, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %114 = load i32, ptr %rank, align 4, !tbaa !12
  store i32 %114, ptr %lrank, align 4, !tbaa !12
  store i32 0, ptr %j, align 4, !tbaa !12
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc89, %for.end
  %115 = load i32, ptr %j, align 4, !tbaa !12
  %116 = load i32, ptr %m, align 4, !tbaa !12
  %cmp73 = icmp slt i32 %115, %116
  br i1 %cmp73, label %for.body75, label %for.end91

for.body75:                                       ; preds = %for.cond72
  %117 = load ptr, ptr %qinv, align 8, !tbaa !4
  %118 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom76 = sext i32 %118 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %117, i64 %idxprom76
  %119 = load i32, ptr %arrayidx77, align 4, !tbaa !12
  %cmp78 = icmp slt i32 %119, 0
  br i1 %cmp78, label %if.then80, label %if.end84

if.then80:                                        ; preds = %for.body75
  %120 = load i32, ptr %lrank, align 4, !tbaa !12
  %inc81 = add nsw i32 %120, 1
  store i32 %inc81, ptr %lrank, align 4, !tbaa !12
  %121 = load ptr, ptr %qinv, align 8, !tbaa !4
  %122 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom82 = sext i32 %122 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %121, i64 %idxprom82
  store i32 %120, ptr %arrayidx83, align 4, !tbaa !12
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %for.body75
  %123 = load i32, ptr %j, align 4, !tbaa !12
  %124 = load ptr, ptr %pivotcol, align 8, !tbaa !4
  %125 = load ptr, ptr %qinv, align 8, !tbaa !4
  %126 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom85 = sext i32 %126 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %125, i64 %idxprom85
  %127 = load i32, ptr %arrayidx86, align 4, !tbaa !12
  %idxprom87 = sext i32 %127 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %124, i64 %idxprom87
  store i32 %123, ptr %arrayidx88, align 4, !tbaa !12
  br label %for.inc89

for.inc89:                                        ; preds = %if.end84
  %128 = load i32, ptr %j, align 4, !tbaa !12
  %inc90 = add nsw i32 %128, 1
  store i32 %inc90, ptr %j, align 4, !tbaa !12
  br label %for.cond72

for.end91:                                        ; preds = %for.cond72
  %129 = load i32, ptr %rank, align 4, !tbaa !12
  store i32 %129, ptr %k, align 4, !tbaa !12
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc100, %for.end91
  %130 = load i32, ptr %k, align 4, !tbaa !12
  %131 = load i32, ptr %m, align 4, !tbaa !12
  %cmp93 = icmp slt i32 %130, %131
  br i1 %cmp93, label %for.body95, label %for.end102

for.body95:                                       ; preds = %for.cond92
  %132 = load ptr, ptr %col_pivot, align 8, !tbaa !4
  %133 = load ptr, ptr %pivotcol, align 8, !tbaa !4
  %134 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom96 = sext i32 %134 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %133, i64 %idxprom96
  %135 = load i32, ptr %arrayidx97, align 4, !tbaa !12
  %idxprom98 = sext i32 %135 to i64
  %arrayidx99 = getelementptr inbounds double, ptr %132, i64 %idxprom98
  store double 1.000000e+00, ptr %arrayidx99, align 8, !tbaa !19
  br label %for.inc100

for.inc100:                                       ; preds = %for.body95
  %136 = load i32, ptr %k, align 4, !tbaa !12
  %inc101 = add nsw i32 %136, 1
  store i32 %inc101, ptr %k, align 4, !tbaa !12
  br label %for.cond92

for.end102:                                       ; preds = %for.cond92
  %137 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %138 = load i32, ptr %rank, align 4, !tbaa !12
  %idxprom103 = sext i32 %138 to i64
  %arrayidx104 = getelementptr inbounds i32, ptr %137, i64 %idxprom103
  %139 = load i32, ptr %arrayidx104, align 4, !tbaa !12
  store i32 %139, ptr %put, align 4, !tbaa !12
  %140 = load i32, ptr %rank, align 4, !tbaa !12
  store i32 %140, ptr %k, align 4, !tbaa !12
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc115, %for.end102
  %141 = load i32, ptr %k, align 4, !tbaa !12
  %142 = load i32, ptr %m, align 4, !tbaa !12
  %cmp106 = icmp slt i32 %141, %142
  br i1 %cmp106, label %for.body108, label %for.end117

for.body108:                                      ; preds = %for.cond105
  %143 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %144 = load i32, ptr %put, align 4, !tbaa !12
  %inc109 = add nsw i32 %144, 1
  store i32 %inc109, ptr %put, align 4, !tbaa !12
  %idxprom110 = sext i32 %144 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %143, i64 %idxprom110
  store i32 -1, ptr %arrayidx111, align 4, !tbaa !12
  %145 = load i32, ptr %put, align 4, !tbaa !12
  %146 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %147 = load i32, ptr %k, align 4, !tbaa !12
  %add112 = add nsw i32 %147, 1
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds i32, ptr %146, i64 %idxprom113
  store i32 %145, ptr %arrayidx114, align 4, !tbaa !12
  br label %for.inc115

for.inc115:                                       ; preds = %for.body108
  %148 = load i32, ptr %k, align 4, !tbaa !12
  %inc116 = add nsw i32 %148, 1
  store i32 %inc116, ptr %k, align 4, !tbaa !12
  br label %for.cond105

for.end117:                                       ; preds = %for.cond105
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond118

for.cond118:                                      ; preds = %for.inc128, %for.end117
  %149 = load i32, ptr %i, align 4, !tbaa !12
  %150 = load i32, ptr %m, align 4, !tbaa !12
  %cmp119 = icmp slt i32 %149, %150
  br i1 %cmp119, label %for.body121, label %for.end130

for.body121:                                      ; preds = %for.cond118
  %151 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %152 = load ptr, ptr %pinv, align 8, !tbaa !4
  %153 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom122 = sext i32 %153 to i64
  %arrayidx123 = getelementptr inbounds i32, ptr %152, i64 %idxprom122
  %154 = load i32, ptr %arrayidx123, align 4, !tbaa !12
  %idxprom124 = sext i32 %154 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %151, i64 %idxprom124
  %155 = load i32, ptr %arrayidx125, align 4, !tbaa !12
  %156 = load ptr, ptr %Lbegin, align 8, !tbaa !4
  %157 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom126 = sext i32 %157 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %156, i64 %idxprom126
  store i32 %155, ptr %arrayidx127, align 4, !tbaa !12
  br label %for.inc128

for.inc128:                                       ; preds = %for.body121
  %158 = load i32, ptr %i, align 4, !tbaa !12
  %inc129 = add nsw i32 %158, 1
  store i32 %inc129, ptr %i, align 4, !tbaa !12
  br label %for.cond118

for.end130:                                       ; preds = %for.cond118
  %159 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %160 = load i32, ptr %m, align 4, !tbaa !12
  %conv131 = sext i32 %160 to i64
  %mul132 = mul i64 %conv131, 4
  call void @llvm.memset.p0.i64(ptr align 4 %159, i8 0, i64 %mul132, i1 false)
  store i32 0, ptr %get, align 4, !tbaa !12
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc147, %for.end130
  %161 = load i32, ptr %get, align 4, !tbaa !12
  %162 = load i32, ptr %Lnz, align 4, !tbaa !12
  %163 = load i32, ptr %m, align 4, !tbaa !12
  %add134 = add nsw i32 %162, %163
  %cmp135 = icmp slt i32 %161, %add134
  br i1 %cmp135, label %for.body137, label %for.end149

for.body137:                                      ; preds = %for.cond133
  %164 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %165 = load i32, ptr %get, align 4, !tbaa !12
  %idxprom138 = sext i32 %165 to i64
  %arrayidx139 = getelementptr inbounds i32, ptr %164, i64 %idxprom138
  %166 = load i32, ptr %arrayidx139, align 4, !tbaa !12
  store i32 %166, ptr %i, align 4, !tbaa !12
  %cmp140 = icmp sge i32 %166, 0
  br i1 %cmp140, label %if.then142, label %if.end146

if.then142:                                       ; preds = %for.body137
  %167 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %168 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom143 = sext i32 %168 to i64
  %arrayidx144 = getelementptr inbounds i32, ptr %167, i64 %idxprom143
  %169 = load i32, ptr %arrayidx144, align 4, !tbaa !12
  %inc145 = add nsw i32 %169, 1
  store i32 %inc145, ptr %arrayidx144, align 4, !tbaa !12
  br label %if.end146

if.end146:                                        ; preds = %if.then142, %for.body137
  br label %for.inc147

for.inc147:                                       ; preds = %if.end146
  %170 = load i32, ptr %get, align 4, !tbaa !12
  %inc148 = add nsw i32 %170, 1
  store i32 %inc148, ptr %get, align 4, !tbaa !12
  br label %for.cond133

for.end149:                                       ; preds = %for.cond133
  %171 = load i32, ptr %Lnz, align 4, !tbaa !12
  %172 = load i32, ptr %m, align 4, !tbaa !12
  %add150 = add nsw i32 %171, %172
  store i32 %add150, ptr %put, align 4, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc171, %for.end149
  %173 = load i32, ptr %k, align 4, !tbaa !12
  %174 = load i32, ptr %m, align 4, !tbaa !12
  %cmp152 = icmp slt i32 %173, %174
  br i1 %cmp152, label %for.body154, label %for.end173

for.body154:                                      ; preds = %for.cond151
  %175 = load ptr, ptr %pivotrow, align 8, !tbaa !4
  %176 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom155 = sext i32 %176 to i64
  %arrayidx156 = getelementptr inbounds i32, ptr %175, i64 %idxprom155
  %177 = load i32, ptr %arrayidx156, align 4, !tbaa !12
  store i32 %177, ptr %i, align 4, !tbaa !12
  %178 = load i32, ptr %put, align 4, !tbaa !12
  %179 = load ptr, ptr %Ltbegin_p, align 8, !tbaa !4
  %180 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom157 = sext i32 %180 to i64
  %arrayidx158 = getelementptr inbounds i32, ptr %179, i64 %idxprom157
  store i32 %178, ptr %arrayidx158, align 4, !tbaa !12
  %181 = load i32, ptr %put, align 4, !tbaa !12
  %182 = load ptr, ptr %Ltbegin, align 8, !tbaa !4
  %183 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom159 = sext i32 %183 to i64
  %arrayidx160 = getelementptr inbounds i32, ptr %182, i64 %idxprom159
  store i32 %181, ptr %arrayidx160, align 4, !tbaa !12
  %184 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %185 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom161 = sext i32 %185 to i64
  %arrayidx162 = getelementptr inbounds i32, ptr %184, i64 %idxprom161
  %186 = load i32, ptr %arrayidx162, align 4, !tbaa !12
  %187 = load i32, ptr %put, align 4, !tbaa !12
  %add163 = add nsw i32 %187, %186
  store i32 %add163, ptr %put, align 4, !tbaa !12
  %188 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %189 = load i32, ptr %put, align 4, !tbaa !12
  %inc164 = add nsw i32 %189, 1
  store i32 %inc164, ptr %put, align 4, !tbaa !12
  %idxprom165 = sext i32 %189 to i64
  %arrayidx166 = getelementptr inbounds i32, ptr %188, i64 %idxprom165
  store i32 -1, ptr %arrayidx166, align 4, !tbaa !12
  %190 = load ptr, ptr %Ltbegin_p, align 8, !tbaa !4
  %191 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom167 = sext i32 %191 to i64
  %arrayidx168 = getelementptr inbounds i32, ptr %190, i64 %idxprom167
  %192 = load i32, ptr %arrayidx168, align 4, !tbaa !12
  %193 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %194 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom169 = sext i32 %194 to i64
  %arrayidx170 = getelementptr inbounds i32, ptr %193, i64 %idxprom169
  store i32 %192, ptr %arrayidx170, align 4, !tbaa !12
  br label %for.inc171

for.inc171:                                       ; preds = %for.body154
  %195 = load i32, ptr %k, align 4, !tbaa !12
  %inc172 = add nsw i32 %195, 1
  store i32 %inc172, ptr %k, align 4, !tbaa !12
  br label %for.cond151

for.end173:                                       ; preds = %for.cond151
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc200, %for.end173
  %196 = load i32, ptr %k, align 4, !tbaa !12
  %197 = load i32, ptr %m, align 4, !tbaa !12
  %cmp175 = icmp slt i32 %196, %197
  br i1 %cmp175, label %for.body177, label %for.end202

for.body177:                                      ; preds = %for.cond174
  %198 = load ptr, ptr %pivotrow, align 8, !tbaa !4
  %199 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom178 = sext i32 %199 to i64
  %arrayidx179 = getelementptr inbounds i32, ptr %198, i64 %idxprom178
  %200 = load i32, ptr %arrayidx179, align 4, !tbaa !12
  store i32 %200, ptr %ipivot, align 4, !tbaa !12
  %201 = load ptr, ptr %Lbegin_p, align 8, !tbaa !4
  %202 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom180 = sext i32 %202 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %201, i64 %idxprom180
  %203 = load i32, ptr %arrayidx181, align 4, !tbaa !12
  store i32 %203, ptr %get, align 4, !tbaa !12
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc197, %for.body177
  %204 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %205 = load i32, ptr %get, align 4, !tbaa !12
  %idxprom183 = sext i32 %205 to i64
  %arrayidx184 = getelementptr inbounds i32, ptr %204, i64 %idxprom183
  %206 = load i32, ptr %arrayidx184, align 4, !tbaa !12
  store i32 %206, ptr %i, align 4, !tbaa !12
  %cmp185 = icmp sge i32 %206, 0
  br i1 %cmp185, label %for.body187, label %for.end199

for.body187:                                      ; preds = %for.cond182
  %207 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %208 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom188 = sext i32 %208 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %207, i64 %idxprom188
  %209 = load i32, ptr %arrayidx189, align 4, !tbaa !12
  %inc190 = add nsw i32 %209, 1
  store i32 %inc190, ptr %arrayidx189, align 4, !tbaa !12
  store i32 %209, ptr %put, align 4, !tbaa !12
  %210 = load i32, ptr %ipivot, align 4, !tbaa !12
  %211 = load ptr, ptr %Lindex, align 8, !tbaa !4
  %212 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom191 = sext i32 %212 to i64
  %arrayidx192 = getelementptr inbounds i32, ptr %211, i64 %idxprom191
  store i32 %210, ptr %arrayidx192, align 4, !tbaa !12
  %213 = load ptr, ptr %Lvalue, align 8, !tbaa !4
  %214 = load i32, ptr %get, align 4, !tbaa !12
  %idxprom193 = sext i32 %214 to i64
  %arrayidx194 = getelementptr inbounds double, ptr %213, i64 %idxprom193
  %215 = load double, ptr %arrayidx194, align 8, !tbaa !19
  %216 = load ptr, ptr %Lvalue, align 8, !tbaa !4
  %217 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom195 = sext i32 %217 to i64
  %arrayidx196 = getelementptr inbounds double, ptr %216, i64 %idxprom195
  store double %215, ptr %arrayidx196, align 8, !tbaa !19
  br label %for.inc197

for.inc197:                                       ; preds = %for.body187
  %218 = load i32, ptr %get, align 4, !tbaa !12
  %inc198 = add nsw i32 %218, 1
  store i32 %inc198, ptr %get, align 4, !tbaa !12
  br label %for.cond182

for.end199:                                       ; preds = %for.cond182
  br label %for.inc200

for.inc200:                                       ; preds = %for.end199
  %219 = load i32, ptr %k, align 4, !tbaa !12
  %inc201 = add nsw i32 %219, 1
  store i32 %inc201, ptr %k, align 4, !tbaa !12
  br label %for.cond174

for.end202:                                       ; preds = %for.cond174
  %220 = load i32, ptr %Lnz, align 4, !tbaa !12
  %221 = load i32, ptr %m, align 4, !tbaa !12
  %add203 = add nsw i32 %220, %221
  %mul204 = mul nsw i32 2, %add203
  %222 = load ptr, ptr %Rbegin, align 8, !tbaa !4
  %arrayidx205 = getelementptr inbounds i32, ptr %222, i64 0
  store i32 %mul204, ptr %arrayidx205, align 4, !tbaa !12
  %223 = load i32, ptr %m, align 4, !tbaa !12
  %224 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %225 = load ptr, ptr %Wend, align 8, !tbaa !4
  %226 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %227 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %228 = load i32, ptr %Wmem, align 4, !tbaa !12
  call void @lu_file_empty(i32 noundef %223, ptr noundef %224, ptr noundef %225, ptr noundef %226, ptr noundef %227, i32 noundef %228)
  %229 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %230 = load i32, ptr %m, align 4, !tbaa !12
  %conv206 = sext i32 %230 to i64
  %mul207 = mul i64 %conv206, 4
  call void @llvm.memset.p0.i64(ptr align 4 %229, i8 0, i64 %mul207, i1 false)
  store i32 0, ptr %put, align 4, !tbaa !12
  %231 = load i32, ptr %rank, align 4, !tbaa !12
  %232 = load i32, ptr %m, align 4, !tbaa !12
  %cmp208 = icmp eq i32 %231, %232
  br i1 %cmp208, label %if.then210, label %if.else

if.then210:                                       ; preds = %for.end202
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc252, %if.then210
  %233 = load i32, ptr %k, align 4, !tbaa !12
  %234 = load i32, ptr %m, align 4, !tbaa !12
  %cmp212 = icmp slt i32 %233, %234
  br i1 %cmp212, label %for.body214, label %for.end254

for.body214:                                      ; preds = %for.cond211
  %235 = load ptr, ptr %pivotcol, align 8, !tbaa !4
  %236 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom215 = sext i32 %236 to i64
  %arrayidx216 = getelementptr inbounds i32, ptr %235, i64 %idxprom215
  %237 = load i32, ptr %arrayidx216, align 4, !tbaa !12
  store i32 %237, ptr %jpivot, align 4, !tbaa !12
  %238 = load i32, ptr %put, align 4, !tbaa !12
  %239 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %240 = load i32, ptr %jpivot, align 4, !tbaa !12
  %idxprom217 = sext i32 %240 to i64
  %arrayidx218 = getelementptr inbounds i32, ptr %239, i64 %idxprom217
  store i32 %238, ptr %arrayidx218, align 4, !tbaa !12
  store i32 0, ptr %nz, align 4, !tbaa !12
  %241 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %242 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom219 = sext i32 %242 to i64
  %arrayidx220 = getelementptr inbounds i32, ptr %241, i64 %idxprom219
  %243 = load i32, ptr %arrayidx220, align 4, !tbaa !12
  store i32 %243, ptr %pos, align 4, !tbaa !12
  br label %for.cond221

for.cond221:                                      ; preds = %for.inc241, %for.body214
  %244 = load i32, ptr %pos, align 4, !tbaa !12
  %245 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %246 = load i32, ptr %k, align 4, !tbaa !12
  %add222 = add nsw i32 %246, 1
  %idxprom223 = sext i32 %add222 to i64
  %arrayidx224 = getelementptr inbounds i32, ptr %245, i64 %idxprom223
  %247 = load i32, ptr %arrayidx224, align 4, !tbaa !12
  %cmp225 = icmp slt i32 %244, %247
  br i1 %cmp225, label %for.body227, label %for.end243

for.body227:                                      ; preds = %for.cond221
  %248 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %249 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom228 = sext i32 %249 to i64
  %arrayidx229 = getelementptr inbounds i32, ptr %248, i64 %idxprom228
  %250 = load i32, ptr %arrayidx229, align 4, !tbaa !12
  store i32 %250, ptr %j, align 4, !tbaa !12
  %251 = load i32, ptr %j, align 4, !tbaa !12
  %252 = load ptr, ptr %Windex, align 8, !tbaa !4
  %253 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom230 = sext i32 %253 to i64
  %arrayidx231 = getelementptr inbounds i32, ptr %252, i64 %idxprom230
  store i32 %251, ptr %arrayidx231, align 4, !tbaa !12
  %254 = load ptr, ptr %Uvalue, align 8, !tbaa !4
  %255 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom232 = sext i32 %255 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %254, i64 %idxprom232
  %256 = load double, ptr %arrayidx233, align 8, !tbaa !19
  %257 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %258 = load i32, ptr %put, align 4, !tbaa !12
  %inc234 = add nsw i32 %258, 1
  store i32 %inc234, ptr %put, align 4, !tbaa !12
  %idxprom235 = sext i32 %258 to i64
  %arrayidx236 = getelementptr inbounds double, ptr %257, i64 %idxprom235
  store double %256, ptr %arrayidx236, align 8, !tbaa !19
  %259 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %260 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom237 = sext i32 %260 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %259, i64 %idxprom237
  %261 = load i32, ptr %arrayidx238, align 4, !tbaa !12
  %inc239 = add nsw i32 %261, 1
  store i32 %inc239, ptr %arrayidx238, align 4, !tbaa !12
  %262 = load i32, ptr %nz, align 4, !tbaa !12
  %inc240 = add nsw i32 %262, 1
  store i32 %inc240, ptr %nz, align 4, !tbaa !12
  br label %for.inc241

for.inc241:                                       ; preds = %for.body227
  %263 = load i32, ptr %pos, align 4, !tbaa !12
  %inc242 = add nsw i32 %263, 1
  store i32 %inc242, ptr %pos, align 4, !tbaa !12
  br label %for.cond221

for.end243:                                       ; preds = %for.cond221
  %264 = load i32, ptr %put, align 4, !tbaa !12
  %265 = load ptr, ptr %Wend, align 8, !tbaa !4
  %266 = load i32, ptr %jpivot, align 4, !tbaa !12
  %idxprom244 = sext i32 %266 to i64
  %arrayidx245 = getelementptr inbounds i32, ptr %265, i64 %idxprom244
  store i32 %264, ptr %arrayidx245, align 4, !tbaa !12
  %267 = load double, ptr %stretch, align 8, !tbaa !19
  %268 = load i32, ptr %nz, align 4, !tbaa !12
  %conv246 = sitofp i32 %268 to double
  %269 = load i32, ptr %pad, align 4, !tbaa !12
  %conv248 = sitofp i32 %269 to double
  %270 = call double @llvm.fmuladd.f64(double %267, double %conv246, double %conv248)
  %271 = load i32, ptr %put, align 4, !tbaa !12
  %conv249 = sitofp i32 %271 to double
  %add250 = fadd double %conv249, %270
  %conv251 = fptosi double %add250 to i32
  store i32 %conv251, ptr %put, align 4, !tbaa !12
  %272 = load i32, ptr %jpivot, align 4, !tbaa !12
  %273 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %274 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %275 = load i32, ptr %m, align 4, !tbaa !12
  call void @lu_list_move(i32 noundef %272, i32 noundef 0, ptr noundef %273, ptr noundef %274, i32 noundef %275, ptr noundef null)
  br label %for.inc252

for.inc252:                                       ; preds = %for.end243
  %276 = load i32, ptr %k, align 4, !tbaa !12
  %inc253 = add nsw i32 %276, 1
  store i32 %inc253, ptr %k, align 4, !tbaa !12
  br label %for.cond211

for.end254:                                       ; preds = %for.cond211
  br label %if.end320

if.else:                                          ; preds = %for.end202
  store i32 0, ptr %Unz, align 4, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond255

for.cond255:                                      ; preds = %for.inc303, %if.else
  %277 = load i32, ptr %k, align 4, !tbaa !12
  %278 = load i32, ptr %rank, align 4, !tbaa !12
  %cmp256 = icmp slt i32 %277, %278
  br i1 %cmp256, label %for.body258, label %for.end305

for.body258:                                      ; preds = %for.cond255
  %279 = load ptr, ptr %pivotcol, align 8, !tbaa !4
  %280 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom259 = sext i32 %280 to i64
  %arrayidx260 = getelementptr inbounds i32, ptr %279, i64 %idxprom259
  %281 = load i32, ptr %arrayidx260, align 4, !tbaa !12
  store i32 %281, ptr %jpivot, align 4, !tbaa !12
  %282 = load i32, ptr %put, align 4, !tbaa !12
  %283 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %284 = load i32, ptr %jpivot, align 4, !tbaa !12
  %idxprom261 = sext i32 %284 to i64
  %arrayidx262 = getelementptr inbounds i32, ptr %283, i64 %idxprom261
  store i32 %282, ptr %arrayidx262, align 4, !tbaa !12
  store i32 0, ptr %nz, align 4, !tbaa !12
  %285 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %286 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom263 = sext i32 %286 to i64
  %arrayidx264 = getelementptr inbounds i32, ptr %285, i64 %idxprom263
  %287 = load i32, ptr %arrayidx264, align 4, !tbaa !12
  store i32 %287, ptr %pos, align 4, !tbaa !12
  br label %for.cond265

for.cond265:                                      ; preds = %for.inc291, %for.body258
  %288 = load i32, ptr %pos, align 4, !tbaa !12
  %289 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %290 = load i32, ptr %k, align 4, !tbaa !12
  %add266 = add nsw i32 %290, 1
  %idxprom267 = sext i32 %add266 to i64
  %arrayidx268 = getelementptr inbounds i32, ptr %289, i64 %idxprom267
  %291 = load i32, ptr %arrayidx268, align 4, !tbaa !12
  %cmp269 = icmp slt i32 %288, %291
  br i1 %cmp269, label %for.body271, label %for.end293

for.body271:                                      ; preds = %for.cond265
  %292 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %293 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom272 = sext i32 %293 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %292, i64 %idxprom272
  %294 = load i32, ptr %arrayidx273, align 4, !tbaa !12
  store i32 %294, ptr %j, align 4, !tbaa !12
  %295 = load ptr, ptr %qinv, align 8, !tbaa !4
  %296 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom274 = sext i32 %296 to i64
  %arrayidx275 = getelementptr inbounds i32, ptr %295, i64 %idxprom274
  %297 = load i32, ptr %arrayidx275, align 4, !tbaa !12
  %298 = load i32, ptr %rank, align 4, !tbaa !12
  %cmp276 = icmp slt i32 %297, %298
  br i1 %cmp276, label %if.then278, label %if.end290

if.then278:                                       ; preds = %for.body271
  %299 = load i32, ptr %j, align 4, !tbaa !12
  %300 = load ptr, ptr %Windex, align 8, !tbaa !4
  %301 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom279 = sext i32 %301 to i64
  %arrayidx280 = getelementptr inbounds i32, ptr %300, i64 %idxprom279
  store i32 %299, ptr %arrayidx280, align 4, !tbaa !12
  %302 = load ptr, ptr %Uvalue, align 8, !tbaa !4
  %303 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom281 = sext i32 %303 to i64
  %arrayidx282 = getelementptr inbounds double, ptr %302, i64 %idxprom281
  %304 = load double, ptr %arrayidx282, align 8, !tbaa !19
  %305 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %306 = load i32, ptr %put, align 4, !tbaa !12
  %inc283 = add nsw i32 %306, 1
  store i32 %inc283, ptr %put, align 4, !tbaa !12
  %idxprom284 = sext i32 %306 to i64
  %arrayidx285 = getelementptr inbounds double, ptr %305, i64 %idxprom284
  store double %304, ptr %arrayidx285, align 8, !tbaa !19
  %307 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %308 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom286 = sext i32 %308 to i64
  %arrayidx287 = getelementptr inbounds i32, ptr %307, i64 %idxprom286
  %309 = load i32, ptr %arrayidx287, align 4, !tbaa !12
  %inc288 = add nsw i32 %309, 1
  store i32 %inc288, ptr %arrayidx287, align 4, !tbaa !12
  %310 = load i32, ptr %nz, align 4, !tbaa !12
  %inc289 = add nsw i32 %310, 1
  store i32 %inc289, ptr %nz, align 4, !tbaa !12
  br label %if.end290

if.end290:                                        ; preds = %if.then278, %for.body271
  br label %for.inc291

for.inc291:                                       ; preds = %if.end290
  %311 = load i32, ptr %pos, align 4, !tbaa !12
  %inc292 = add nsw i32 %311, 1
  store i32 %inc292, ptr %pos, align 4, !tbaa !12
  br label %for.cond265

for.end293:                                       ; preds = %for.cond265
  %312 = load i32, ptr %put, align 4, !tbaa !12
  %313 = load ptr, ptr %Wend, align 8, !tbaa !4
  %314 = load i32, ptr %jpivot, align 4, !tbaa !12
  %idxprom294 = sext i32 %314 to i64
  %arrayidx295 = getelementptr inbounds i32, ptr %313, i64 %idxprom294
  store i32 %312, ptr %arrayidx295, align 4, !tbaa !12
  %315 = load double, ptr %stretch, align 8, !tbaa !19
  %316 = load i32, ptr %nz, align 4, !tbaa !12
  %conv296 = sitofp i32 %316 to double
  %317 = load i32, ptr %pad, align 4, !tbaa !12
  %conv298 = sitofp i32 %317 to double
  %318 = call double @llvm.fmuladd.f64(double %315, double %conv296, double %conv298)
  %319 = load i32, ptr %put, align 4, !tbaa !12
  %conv299 = sitofp i32 %319 to double
  %add300 = fadd double %conv299, %318
  %conv301 = fptosi double %add300 to i32
  store i32 %conv301, ptr %put, align 4, !tbaa !12
  %320 = load i32, ptr %jpivot, align 4, !tbaa !12
  %321 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %322 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %323 = load i32, ptr %m, align 4, !tbaa !12
  call void @lu_list_move(i32 noundef %320, i32 noundef 0, ptr noundef %321, ptr noundef %322, i32 noundef %323, ptr noundef null)
  %324 = load i32, ptr %nz, align 4, !tbaa !12
  %325 = load i32, ptr %Unz, align 4, !tbaa !12
  %add302 = add nsw i32 %325, %324
  store i32 %add302, ptr %Unz, align 4, !tbaa !12
  br label %for.inc303

for.inc303:                                       ; preds = %for.end293
  %326 = load i32, ptr %k, align 4, !tbaa !12
  %inc304 = add nsw i32 %326, 1
  store i32 %inc304, ptr %k, align 4, !tbaa !12
  br label %for.cond255

for.end305:                                       ; preds = %for.cond255
  %327 = load i32, ptr %rank, align 4, !tbaa !12
  store i32 %327, ptr %k, align 4, !tbaa !12
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc317, %for.end305
  %328 = load i32, ptr %k, align 4, !tbaa !12
  %329 = load i32, ptr %m, align 4, !tbaa !12
  %cmp307 = icmp slt i32 %328, %329
  br i1 %cmp307, label %for.body309, label %for.end319

for.body309:                                      ; preds = %for.cond306
  %330 = load ptr, ptr %pivotcol, align 8, !tbaa !4
  %331 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom310 = sext i32 %331 to i64
  %arrayidx311 = getelementptr inbounds i32, ptr %330, i64 %idxprom310
  %332 = load i32, ptr %arrayidx311, align 4, !tbaa !12
  store i32 %332, ptr %jpivot, align 4, !tbaa !12
  %333 = load i32, ptr %put, align 4, !tbaa !12
  %334 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %335 = load i32, ptr %jpivot, align 4, !tbaa !12
  %idxprom312 = sext i32 %335 to i64
  %arrayidx313 = getelementptr inbounds i32, ptr %334, i64 %idxprom312
  store i32 %333, ptr %arrayidx313, align 4, !tbaa !12
  %336 = load i32, ptr %put, align 4, !tbaa !12
  %337 = load ptr, ptr %Wend, align 8, !tbaa !4
  %338 = load i32, ptr %jpivot, align 4, !tbaa !12
  %idxprom314 = sext i32 %338 to i64
  %arrayidx315 = getelementptr inbounds i32, ptr %337, i64 %idxprom314
  store i32 %336, ptr %arrayidx315, align 4, !tbaa !12
  %339 = load i32, ptr %pad, align 4, !tbaa !12
  %340 = load i32, ptr %put, align 4, !tbaa !12
  %add316 = add nsw i32 %340, %339
  store i32 %add316, ptr %put, align 4, !tbaa !12
  %341 = load i32, ptr %jpivot, align 4, !tbaa !12
  %342 = load ptr, ptr %Wflink, align 8, !tbaa !4
  %343 = load ptr, ptr %Wblink, align 8, !tbaa !4
  %344 = load i32, ptr %m, align 4, !tbaa !12
  call void @lu_list_move(i32 noundef %341, i32 noundef 0, ptr noundef %342, ptr noundef %343, i32 noundef %344, ptr noundef null)
  br label %for.inc317

for.inc317:                                       ; preds = %for.body309
  %345 = load i32, ptr %k, align 4, !tbaa !12
  %inc318 = add nsw i32 %345, 1
  store i32 %inc318, ptr %k, align 4, !tbaa !12
  br label %for.cond306

for.end319:                                       ; preds = %for.cond306
  br label %if.end320

if.end320:                                        ; preds = %for.end319, %for.end254
  %346 = load i32, ptr %put, align 4, !tbaa !12
  %347 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %348 = load i32, ptr %m, align 4, !tbaa !12
  %idxprom321 = sext i32 %348 to i64
  %arrayidx322 = getelementptr inbounds i32, ptr %347, i64 %idxprom321
  store i32 %346, ptr %arrayidx322, align 4, !tbaa !12
  %349 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %arrayidx323 = getelementptr inbounds i32, ptr %349, i64 0
  store i32 -1, ptr %arrayidx323, align 4, !tbaa !12
  store i32 1, ptr %put, align 4, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond324

for.cond324:                                      ; preds = %for.inc351, %if.end320
  %350 = load i32, ptr %k, align 4, !tbaa !12
  %351 = load i32, ptr %m, align 4, !tbaa !12
  %cmp325 = icmp slt i32 %350, %351
  br i1 %cmp325, label %for.body327, label %for.end353

for.body327:                                      ; preds = %for.cond324
  %352 = load ptr, ptr %pivotcol, align 8, !tbaa !4
  %353 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom328 = sext i32 %353 to i64
  %arrayidx329 = getelementptr inbounds i32, ptr %352, i64 %idxprom328
  %354 = load i32, ptr %arrayidx329, align 4, !tbaa !12
  store i32 %354, ptr %j, align 4, !tbaa !12
  %355 = load ptr, ptr %pivotrow, align 8, !tbaa !4
  %356 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom330 = sext i32 %356 to i64
  %arrayidx331 = getelementptr inbounds i32, ptr %355, i64 %idxprom330
  %357 = load i32, ptr %arrayidx331, align 4, !tbaa !12
  store i32 %357, ptr %i, align 4, !tbaa !12
  %358 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %359 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom332 = sext i32 %359 to i64
  %arrayidx333 = getelementptr inbounds i32, ptr %358, i64 %idxprom332
  %360 = load i32, ptr %arrayidx333, align 4, !tbaa !12
  store i32 %360, ptr %nz, align 4, !tbaa !12
  %361 = load i32, ptr %nz, align 4, !tbaa !12
  %cmp334 = icmp eq i32 %361, 0
  br i1 %cmp334, label %if.then336, label %if.else339

if.then336:                                       ; preds = %for.body327
  %362 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %363 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom337 = sext i32 %363 to i64
  %arrayidx338 = getelementptr inbounds i32, ptr %362, i64 %idxprom337
  store i32 0, ptr %arrayidx338, align 4, !tbaa !12
  br label %if.end346

if.else339:                                       ; preds = %for.body327
  %364 = load i32, ptr %put, align 4, !tbaa !12
  %365 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %366 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom340 = sext i32 %366 to i64
  %arrayidx341 = getelementptr inbounds i32, ptr %365, i64 %idxprom340
  store i32 %364, ptr %arrayidx341, align 4, !tbaa !12
  %367 = load i32, ptr %nz, align 4, !tbaa !12
  %368 = load i32, ptr %put, align 4, !tbaa !12
  %add342 = add nsw i32 %368, %367
  store i32 %add342, ptr %put, align 4, !tbaa !12
  %369 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %370 = load i32, ptr %put, align 4, !tbaa !12
  %inc343 = add nsw i32 %370, 1
  store i32 %inc343, ptr %put, align 4, !tbaa !12
  %idxprom344 = sext i32 %370 to i64
  %arrayidx345 = getelementptr inbounds i32, ptr %369, i64 %idxprom344
  store i32 -1, ptr %arrayidx345, align 4, !tbaa !12
  br label %if.end346

if.end346:                                        ; preds = %if.else339, %if.then336
  %371 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %372 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom347 = sext i32 %372 to i64
  %arrayidx348 = getelementptr inbounds i32, ptr %371, i64 %idxprom347
  %373 = load i32, ptr %arrayidx348, align 4, !tbaa !12
  %374 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %375 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom349 = sext i32 %375 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %374, i64 %idxprom349
  store i32 %373, ptr %arrayidx350, align 4, !tbaa !12
  br label %for.inc351

for.inc351:                                       ; preds = %if.end346
  %376 = load i32, ptr %k, align 4, !tbaa !12
  %inc352 = add nsw i32 %376, 1
  store i32 %inc352, ptr %k, align 4, !tbaa !12
  br label %for.cond324

for.end353:                                       ; preds = %for.cond324
  %377 = load i32, ptr %put, align 4, !tbaa !12
  %378 = load ptr, ptr %Ubegin, align 8, !tbaa !4
  %379 = load i32, ptr %m, align 4, !tbaa !12
  %idxprom354 = sext i32 %379 to i64
  %arrayidx355 = getelementptr inbounds i32, ptr %378, i64 %idxprom354
  store i32 %377, ptr %arrayidx355, align 4, !tbaa !12
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond356

for.cond356:                                      ; preds = %for.inc386, %for.end353
  %380 = load i32, ptr %k, align 4, !tbaa !12
  %381 = load i32, ptr %m, align 4, !tbaa !12
  %cmp357 = icmp slt i32 %380, %381
  br i1 %cmp357, label %for.body359, label %for.end388

for.body359:                                      ; preds = %for.cond356
  %382 = load ptr, ptr %pivotcol, align 8, !tbaa !4
  %383 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom360 = sext i32 %383 to i64
  %arrayidx361 = getelementptr inbounds i32, ptr %382, i64 %idxprom360
  %384 = load i32, ptr %arrayidx361, align 4, !tbaa !12
  store i32 %384, ptr %jpivot, align 4, !tbaa !12
  %385 = load ptr, ptr %pivotrow, align 8, !tbaa !4
  %386 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom362 = sext i32 %386 to i64
  %arrayidx363 = getelementptr inbounds i32, ptr %385, i64 %idxprom362
  %387 = load i32, ptr %arrayidx363, align 4, !tbaa !12
  store i32 %387, ptr %i, align 4, !tbaa !12
  %388 = load ptr, ptr %Wbegin, align 8, !tbaa !4
  %389 = load i32, ptr %jpivot, align 4, !tbaa !12
  %idxprom364 = sext i32 %389 to i64
  %arrayidx365 = getelementptr inbounds i32, ptr %388, i64 %idxprom364
  %390 = load i32, ptr %arrayidx365, align 4, !tbaa !12
  store i32 %390, ptr %pos, align 4, !tbaa !12
  br label %for.cond366

for.cond366:                                      ; preds = %for.inc383, %for.body359
  %391 = load i32, ptr %pos, align 4, !tbaa !12
  %392 = load ptr, ptr %Wend, align 8, !tbaa !4
  %393 = load i32, ptr %jpivot, align 4, !tbaa !12
  %idxprom367 = sext i32 %393 to i64
  %arrayidx368 = getelementptr inbounds i32, ptr %392, i64 %idxprom367
  %394 = load i32, ptr %arrayidx368, align 4, !tbaa !12
  %cmp369 = icmp slt i32 %391, %394
  br i1 %cmp369, label %for.body371, label %for.end385

for.body371:                                      ; preds = %for.cond366
  %395 = load ptr, ptr %Windex, align 8, !tbaa !4
  %396 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom372 = sext i32 %396 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %395, i64 %idxprom372
  %397 = load i32, ptr %arrayidx373, align 4, !tbaa !12
  store i32 %397, ptr %j, align 4, !tbaa !12
  %398 = load ptr, ptr %iwork1, align 8, !tbaa !4
  %399 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom374 = sext i32 %399 to i64
  %arrayidx375 = getelementptr inbounds i32, ptr %398, i64 %idxprom374
  %400 = load i32, ptr %arrayidx375, align 4, !tbaa !12
  %inc376 = add nsw i32 %400, 1
  store i32 %inc376, ptr %arrayidx375, align 4, !tbaa !12
  store i32 %400, ptr %put, align 4, !tbaa !12
  %401 = load i32, ptr %i, align 4, !tbaa !12
  %402 = load ptr, ptr %Uindex, align 8, !tbaa !4
  %403 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom377 = sext i32 %403 to i64
  %arrayidx378 = getelementptr inbounds i32, ptr %402, i64 %idxprom377
  store i32 %401, ptr %arrayidx378, align 4, !tbaa !12
  %404 = load ptr, ptr %Wvalue, align 8, !tbaa !4
  %405 = load i32, ptr %pos, align 4, !tbaa !12
  %idxprom379 = sext i32 %405 to i64
  %arrayidx380 = getelementptr inbounds double, ptr %404, i64 %idxprom379
  %406 = load double, ptr %arrayidx380, align 8, !tbaa !19
  %407 = load ptr, ptr %Uvalue, align 8, !tbaa !4
  %408 = load i32, ptr %put, align 4, !tbaa !12
  %idxprom381 = sext i32 %408 to i64
  %arrayidx382 = getelementptr inbounds double, ptr %407, i64 %idxprom381
  store double %406, ptr %arrayidx382, align 8, !tbaa !19
  br label %for.inc383

for.inc383:                                       ; preds = %for.body371
  %409 = load i32, ptr %pos, align 4, !tbaa !12
  %inc384 = add nsw i32 %409, 1
  store i32 %inc384, ptr %pos, align 4, !tbaa !12
  br label %for.cond366

for.end385:                                       ; preds = %for.cond366
  br label %for.inc386

for.inc386:                                       ; preds = %for.end385
  %410 = load i32, ptr %k, align 4, !tbaa !12
  %inc387 = add nsw i32 %410, 1
  store i32 %inc387, ptr %k, align 4, !tbaa !12
  br label %for.cond356

for.end388:                                       ; preds = %for.cond356
  store i32 0, ptr %k, align 4, !tbaa !12
  br label %for.cond389

for.cond389:                                      ; preds = %for.inc401, %for.end388
  %411 = load i32, ptr %k, align 4, !tbaa !12
  %412 = load i32, ptr %m, align 4, !tbaa !12
  %cmp390 = icmp slt i32 %411, %412
  br i1 %cmp390, label %for.body392, label %for.end403

for.body392:                                      ; preds = %for.cond389
  %413 = load ptr, ptr %pivotrow, align 8, !tbaa !4
  %414 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom393 = sext i32 %414 to i64
  %arrayidx394 = getelementptr inbounds i32, ptr %413, i64 %idxprom393
  %415 = load i32, ptr %arrayidx394, align 4, !tbaa !12
  store i32 %415, ptr %i, align 4, !tbaa !12
  %416 = load ptr, ptr %pivotcol, align 8, !tbaa !4
  %417 = load i32, ptr %k, align 4, !tbaa !12
  %idxprom395 = sext i32 %417 to i64
  %arrayidx396 = getelementptr inbounds i32, ptr %416, i64 %idxprom395
  %418 = load i32, ptr %arrayidx396, align 4, !tbaa !12
  store i32 %418, ptr %j, align 4, !tbaa !12
  %419 = load i32, ptr %i, align 4, !tbaa !12
  %420 = load ptr, ptr %pmap, align 8, !tbaa !4
  %421 = load i32, ptr %j, align 4, !tbaa !12
  %idxprom397 = sext i32 %421 to i64
  %arrayidx398 = getelementptr inbounds i32, ptr %420, i64 %idxprom397
  store i32 %419, ptr %arrayidx398, align 4, !tbaa !12
  %422 = load i32, ptr %j, align 4, !tbaa !12
  %423 = load ptr, ptr %qmap, align 8, !tbaa !4
  %424 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom399 = sext i32 %424 to i64
  %arrayidx400 = getelementptr inbounds i32, ptr %423, i64 %idxprom399
  store i32 %422, ptr %arrayidx400, align 4, !tbaa !12
  br label %for.inc401

for.inc401:                                       ; preds = %for.body392
  %425 = load i32, ptr %k, align 4, !tbaa !12
  %inc402 = add nsw i32 %425, 1
  store i32 %inc402, ptr %k, align 4, !tbaa !12
  br label %for.cond389

for.end403:                                       ; preds = %for.cond389
  store double 0.000000e+00, ptr %max_pivot, align 8, !tbaa !19
  store double 0x7FF0000000000000, ptr %min_pivot, align 8, !tbaa !19
  store i32 0, ptr %i, align 4, !tbaa !12
  br label %for.cond404

for.cond404:                                      ; preds = %for.inc416, %for.end403
  %426 = load i32, ptr %i, align 4, !tbaa !12
  %427 = load i32, ptr %m, align 4, !tbaa !12
  %cmp405 = icmp slt i32 %426, %427
  br i1 %cmp405, label %for.body407, label %for.end418

for.body407:                                      ; preds = %for.cond404
  %428 = load ptr, ptr %col_pivot, align 8, !tbaa !4
  %429 = load ptr, ptr %qmap, align 8, !tbaa !4
  %430 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom408 = sext i32 %430 to i64
  %arrayidx409 = getelementptr inbounds i32, ptr %429, i64 %idxprom408
  %431 = load i32, ptr %arrayidx409, align 4, !tbaa !12
  %idxprom410 = sext i32 %431 to i64
  %arrayidx411 = getelementptr inbounds double, ptr %428, i64 %idxprom410
  %432 = load double, ptr %arrayidx411, align 8, !tbaa !19
  %433 = load ptr, ptr %row_pivot, align 8, !tbaa !4
  %434 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom412 = sext i32 %434 to i64
  %arrayidx413 = getelementptr inbounds double, ptr %433, i64 %idxprom412
  store double %432, ptr %arrayidx413, align 8, !tbaa !19
  %435 = load ptr, ptr %row_pivot, align 8, !tbaa !4
  %436 = load i32, ptr %i, align 4, !tbaa !12
  %idxprom414 = sext i32 %436 to i64
  %arrayidx415 = getelementptr inbounds double, ptr %435, i64 %idxprom414
  %437 = load double, ptr %arrayidx415, align 8, !tbaa !19
  %438 = call double @llvm.fabs.f64(double %437)
  store double %438, ptr %pivot, align 8, !tbaa !19
  %439 = load double, ptr %pivot, align 8, !tbaa !19
  %440 = load double, ptr %max_pivot, align 8, !tbaa !19
  %441 = call double @llvm.maxnum.f64(double %439, double %440)
  store double %441, ptr %max_pivot, align 8, !tbaa !19
  %442 = load double, ptr %pivot, align 8, !tbaa !19
  %443 = load double, ptr %min_pivot, align 8, !tbaa !19
  %444 = call double @llvm.minnum.f64(double %442, double %443)
  store double %444, ptr %min_pivot, align 8, !tbaa !19
  br label %for.inc416

for.inc416:                                       ; preds = %for.body407
  %445 = load i32, ptr %i, align 4, !tbaa !12
  %inc417 = add nsw i32 %445, 1
  store i32 %inc417, ptr %i, align 4, !tbaa !12
  br label %for.cond404

for.end418:                                       ; preds = %for.cond404
  %446 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %p = getelementptr inbounds %struct.lu, ptr %446, i32 0, i32 93
  %447 = load ptr, ptr %p, align 8, !tbaa !48
  %448 = load ptr, ptr %pivotrow, align 8, !tbaa !4
  %449 = load i32, ptr %m, align 4, !tbaa !12
  %conv419 = sext i32 %449 to i64
  %mul420 = mul i64 %conv419, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %447, ptr align 4 %448, i64 %mul420, i1 false)
  %450 = load double, ptr %min_pivot, align 8, !tbaa !19
  %451 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %min_pivot421 = getelementptr inbounds %struct.lu, ptr %451, i32 0, i32 26
  store double %450, ptr %min_pivot421, align 8, !tbaa !49
  %452 = load double, ptr %max_pivot, align 8, !tbaa !19
  %453 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %max_pivot422 = getelementptr inbounds %struct.lu, ptr %453, i32 0, i32 27
  store double %452, ptr %max_pivot422, align 8, !tbaa !50
  %454 = load i32, ptr %m, align 4, !tbaa !12
  %455 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %pivotlen = getelementptr inbounds %struct.lu, ptr %455, i32 0, i32 67
  store i32 %454, ptr %pivotlen, align 8, !tbaa !51
  %456 = load i32, ptr %Lnz, align 4, !tbaa !12
  %457 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Lnz423 = getelementptr inbounds %struct.lu, ptr %457, i32 0, i32 23
  store i32 %456, ptr %Lnz423, align 4, !tbaa !52
  %458 = load i32, ptr %Unz, align 4, !tbaa !12
  %459 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Unz424 = getelementptr inbounds %struct.lu, ptr %459, i32 0, i32 24
  store i32 %458, ptr %Unz424, align 8, !tbaa !53
  %460 = load ptr, ptr %this.addr, align 8, !tbaa !4
  %Rnz = getelementptr inbounds %struct.lu, ptr %460, i32 0, i32 25
  store i32 0, ptr %Rnz, align 4, !tbaa !54
  %461 = load i32, ptr %status, align 4, !tbaa !12
  store i32 %461, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end418, %if.then55
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_pivot) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_pivot) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivot) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %put) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %get) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %need) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %Unz) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %Lnz) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %nz) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %lrank) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %jpivot) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %ipivot) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %iwork1) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wvalue) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Windex) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uvalue) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Uindex) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lvalue) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lindex) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %row_pivot) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %col_pivot) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wblink) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wflink) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wend) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Wbegin) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rbegin) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ubegin) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ltbegin_p) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ltbegin) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lbegin_p) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %Lbegin) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivotrow) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pivotcol) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %qmap) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pmap) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %qinv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %pinv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %stretch) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %pad) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %Wmem) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %Umem) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %Lmem) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %rank) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  %462 = load i32, ptr %retval, align 4
  ret i32 %462
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @lu_file_empty(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @lu_list_move(i32 noundef %elem, i32 noundef %list, ptr noundef %flink, ptr noundef %blink, i32 noundef %nelem, ptr noundef %min_list) #5 {
entry:
  %elem.addr = alloca i32, align 4
  %list.addr = alloca i32, align 4
  %flink.addr = alloca ptr, align 8
  %blink.addr = alloca ptr, align 8
  %nelem.addr = alloca i32, align 4
  %min_list.addr = alloca ptr, align 8
  store i32 %elem, ptr %elem.addr, align 4, !tbaa !12
  store i32 %list, ptr %list.addr, align 4, !tbaa !12
  store ptr %flink, ptr %flink.addr, align 8, !tbaa !4
  store ptr %blink, ptr %blink.addr, align 8, !tbaa !4
  store i32 %nelem, ptr %nelem.addr, align 4, !tbaa !12
  store ptr %min_list, ptr %min_list.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %2 = load i32, ptr %elem.addr, align 4, !tbaa !12
  call void @lu_list_remove(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %3 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %4 = load i32, ptr %list.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %7 = load i32, ptr %nelem.addr, align 4, !tbaa !12
  %8 = load ptr, ptr %min_list.addr, align 8, !tbaa !4
  call void @lu_list_add(i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @lu_list_remove(ptr noundef %flink, ptr noundef %blink, i32 noundef %elem) #5 {
entry:
  %flink.addr = alloca ptr, align 8
  %blink.addr = alloca ptr, align 8
  %elem.addr = alloca i32, align 4
  store ptr %flink, ptr %flink.addr, align 8, !tbaa !4
  store ptr %blink, ptr %blink.addr, align 8, !tbaa !4
  store i32 %elem, ptr %elem.addr, align 4, !tbaa !12
  %0 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %1 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !12
  %3 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %5 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 %idxprom1
  %6 = load i32, ptr %arrayidx2, align 4, !tbaa !12
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %3, i64 %idxprom3
  store i32 %2, ptr %arrayidx4, align 4, !tbaa !12
  %7 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %8 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %7, i64 %idxprom5
  %9 = load i32, ptr %arrayidx6, align 4, !tbaa !12
  %10 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %12 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 %idxprom7
  %13 = load i32, ptr %arrayidx8, align 4, !tbaa !12
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %10, i64 %idxprom9
  store i32 %9, ptr %arrayidx10, align 4, !tbaa !12
  %14 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %15 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %16 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %15, i64 %idxprom11
  store i32 %14, ptr %arrayidx12, align 4, !tbaa !12
  %17 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %18 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %19 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %18, i64 %idxprom13
  store i32 %17, ptr %arrayidx14, align 4, !tbaa !12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lu_list_add(i32 noundef %elem, i32 noundef %list, ptr noundef %flink, ptr noundef %blink, i32 noundef %nelem, ptr noundef %min_list) #5 {
entry:
  %elem.addr = alloca i32, align 4
  %list.addr = alloca i32, align 4
  %flink.addr = alloca ptr, align 8
  %blink.addr = alloca ptr, align 8
  %nelem.addr = alloca i32, align 4
  %min_list.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  store i32 %elem, ptr %elem.addr, align 4, !tbaa !12
  store i32 %list, ptr %list.addr, align 4, !tbaa !12
  store ptr %flink, ptr %flink.addr, align 8, !tbaa !4
  store ptr %blink, ptr %blink.addr, align 8, !tbaa !4
  store i32 %nelem, ptr %nelem.addr, align 4, !tbaa !12
  store ptr %min_list, ptr %min_list.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #7
  %0 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %1 = load i32, ptr %nelem.addr, align 4, !tbaa !12
  %2 = load i32, ptr %list.addr, align 4, !tbaa !12
  %add = add nsw i32 %1, %2
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !12
  store i32 %3, ptr %temp, align 4, !tbaa !12
  %4 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %5 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %6 = load i32, ptr %nelem.addr, align 4, !tbaa !12
  %7 = load i32, ptr %list.addr, align 4, !tbaa !12
  %add1 = add nsw i32 %6, %7
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2
  store i32 %4, ptr %arrayidx3, align 4, !tbaa !12
  %8 = load i32, ptr %temp, align 4, !tbaa !12
  %9 = load ptr, ptr %blink.addr, align 8, !tbaa !4
  %10 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  store i32 %8, ptr %arrayidx5, align 4, !tbaa !12
  %11 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %12 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %13 = load i32, ptr %temp, align 4, !tbaa !12
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %12, i64 %idxprom6
  store i32 %11, ptr %arrayidx7, align 4, !tbaa !12
  %14 = load i32, ptr %nelem.addr, align 4, !tbaa !12
  %15 = load i32, ptr %list.addr, align 4, !tbaa !12
  %add8 = add nsw i32 %14, %15
  %16 = load ptr, ptr %flink.addr, align 8, !tbaa !4
  %17 = load i32, ptr %elem.addr, align 4, !tbaa !12
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 %idxprom9
  store i32 %add8, ptr %arrayidx10, align 4, !tbaa !12
  %18 = load i32, ptr %list.addr, align 4, !tbaa !12
  %cmp = icmp sgt i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %19 = load ptr, ptr %min_list.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %20 = load i32, ptr %list.addr, align 4, !tbaa !12
  %21 = load ptr, ptr %min_list.addr, align 8, !tbaa !4
  %22 = load i32, ptr %21, align 4, !tbaa !12
  %cmp12 = icmp slt i32 %20, %22
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true11
  %23 = load i32, ptr %list.addr, align 4, !tbaa !12
  %24 = load ptr, ptr %min_list.addr, align 8, !tbaa !4
  store i32 %23, ptr %24, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true11, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #7
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

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
!8 = !{!9, !10, i64 84}
!9 = !{!"lu", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !10, i64 224, !10, i64 228, !10, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !10, i64 376, !10, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !10, i64 404, !10, i64 408, !10, i64 412, !5, i64 416, !5, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !5, i64 456, !5, i64 464, !5, i64 472, !5, i64 480, !5, i64 488, !5, i64 496, !5, i64 504, !5, i64 512, !5, i64 520, !5, i64 528, !5, i64 536, !5, i64 544, !5, i64 552, !5, i64 560, !5, i64 568, !5, i64 576, !5, i64 584, !5, i64 592, !5, i64 600, !5, i64 608, !5, i64 616, !5, i64 624, !5, i64 632, !5, i64 640, !5, i64 648, !5, i64 656, !5, i64 664, !5, i64 672, !5, i64 680, !5, i64 688}
!10 = !{!"int", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !10, i64 316}
!14 = !{!9, !10, i64 0}
!15 = !{!9, !10, i64 4}
!16 = !{!9, !10, i64 8}
!17 = !{!9, !10, i64 48}
!18 = !{!9, !11, i64 56}
!19 = !{!11, !11, i64 0}
!20 = !{!9, !5, i64 600}
!21 = !{!9, !5, i64 616}
!22 = !{!9, !5, i64 608}
!23 = !{!9, !5, i64 624}
!24 = !{!9, !5, i64 472}
!25 = !{!9, !5, i64 488}
!26 = !{!9, !5, i64 544}
!27 = !{!9, !5, i64 632}
!28 = !{!9, !5, i64 560}
!29 = !{!9, !5, i64 576}
!30 = !{!9, !5, i64 640}
!31 = !{!9, !5, i64 504}
!32 = !{!9, !5, i64 536}
!33 = !{!9, !5, i64 552}
!34 = !{!9, !5, i64 568}
!35 = !{!9, !5, i64 584}
!36 = !{!9, !5, i64 680}
!37 = !{!9, !5, i64 688}
!38 = !{!9, !5, i64 416}
!39 = !{!9, !5, i64 440}
!40 = !{!9, !5, i64 424}
!41 = !{!9, !5, i64 448}
!42 = !{!9, !5, i64 432}
!43 = !{!9, !5, i64 456}
!44 = !{!9, !5, i64 528}
!45 = !{!9, !10, i64 88}
!46 = !{!9, !10, i64 92}
!47 = !{!9, !10, i64 96}
!48 = !{!9, !5, i64 592}
!49 = !{!9, !11, i64 136}
!50 = !{!9, !11, i64 144}
!51 = !{!9, !10, i64 400}
!52 = !{!9, !10, i64 124}
!53 = !{!9, !10, i64 128}
!54 = !{!9, !10, i64 132}
