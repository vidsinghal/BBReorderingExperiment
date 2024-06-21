; ModuleID = 'samples/499.bc'
source_filename = "../Source/cs_qr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_dl_sparse = type { i64, i64, i64, ptr, ptr, ptr, i64 }
%struct.cs_dl_symbolic = type { ptr, ptr, ptr, ptr, ptr, i64, double, double }
%struct.cs_dl_numeric = type { ptr, ptr, ptr, ptr }

; Function Attrs: uwtable
define ptr @cs_dl_qr(ptr noundef %A, ptr noundef %S) #0 {
entry:
  %retval = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %S.addr = alloca ptr, align 8
  %Rx = alloca ptr, align 8
  %Vx = alloca ptr, align 8
  %Ax = alloca ptr, align 8
  %x = alloca ptr, align 8
  %Beta = alloca ptr, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  %p = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  %vnz = alloca i64, align 8
  %p1 = alloca i64, align 8
  %top = alloca i64, align 8
  %m2 = alloca i64, align 8
  %len = alloca i64, align 8
  %col = alloca i64, align 8
  %rnz = alloca i64, align 8
  %s = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  %Ap = alloca ptr, align 8
  %Ai = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %Rp = alloca ptr, align 8
  %Ri = alloca ptr, align 8
  %Vp = alloca ptr, align 8
  %Vi = alloca ptr, align 8
  %w = alloca ptr, align 8
  %pinv = alloca ptr, align 8
  %q = alloca ptr, align 8
  %R = alloca ptr, align 8
  %V = alloca ptr, align 8
  %N = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %S, ptr %S.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Vx) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ax) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Beta) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %vnz) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %top) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %m2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %col) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %rnz) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ap) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ai) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Rp) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ri) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Vp) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %Vi) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %pinv) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %R) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %V) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %N) #3
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %nz = getelementptr inbounds %struct.cs_dl_sparse, ptr %1, i32 0, i32 6
  %2 = load i64, ptr %nz, align 8, !tbaa !8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %m3 = getelementptr inbounds %struct.cs_dl_sparse, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %m3, align 8, !tbaa !11
  store i64 %5, ptr %m, align 8, !tbaa !12
  %6 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n4 = getelementptr inbounds %struct.cs_dl_sparse, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %n4, align 8, !tbaa !13
  store i64 %7, ptr %n, align 8, !tbaa !12
  %8 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p5 = getelementptr inbounds %struct.cs_dl_sparse, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %p5, align 8, !tbaa !14
  store ptr %9, ptr %Ap, align 8, !tbaa !4
  %10 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %i6 = getelementptr inbounds %struct.cs_dl_sparse, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %i6, align 8, !tbaa !15
  store ptr %11, ptr %Ai, align 8, !tbaa !4
  %12 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %x7 = getelementptr inbounds %struct.cs_dl_sparse, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %x7, align 8, !tbaa !16
  store ptr %13, ptr %Ax, align 8, !tbaa !4
  %14 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %q8 = getelementptr inbounds %struct.cs_dl_symbolic, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %q8, align 8, !tbaa !17
  store ptr %15, ptr %q, align 8, !tbaa !4
  %16 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %parent9 = getelementptr inbounds %struct.cs_dl_symbolic, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %parent9, align 8, !tbaa !20
  store ptr %17, ptr %parent, align 8, !tbaa !4
  %18 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %pinv10 = getelementptr inbounds %struct.cs_dl_symbolic, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pinv10, align 8, !tbaa !21
  store ptr %19, ptr %pinv, align 8, !tbaa !4
  %20 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %m211 = getelementptr inbounds %struct.cs_dl_symbolic, ptr %20, i32 0, i32 5
  %21 = load i64, ptr %m211, align 8, !tbaa !22
  store i64 %21, ptr %m2, align 8, !tbaa !12
  %22 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %lnz = getelementptr inbounds %struct.cs_dl_symbolic, ptr %22, i32 0, i32 6
  %23 = load double, ptr %lnz, align 8, !tbaa !23
  %conv = fptosi double %23 to i64
  store i64 %conv, ptr %vnz, align 8, !tbaa !12
  %24 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %unz = getelementptr inbounds %struct.cs_dl_symbolic, ptr %24, i32 0, i32 7
  %25 = load double, ptr %unz, align 8, !tbaa !24
  %conv12 = fptosi double %25 to i64
  store i64 %conv12, ptr %rnz, align 8, !tbaa !12
  %26 = load ptr, ptr %S.addr, align 8, !tbaa !4
  %leftmost13 = getelementptr inbounds %struct.cs_dl_symbolic, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %leftmost13, align 8, !tbaa !25
  store ptr %27, ptr %leftmost, align 8, !tbaa !4
  %28 = load i64, ptr %m2, align 8, !tbaa !12
  %29 = load i64, ptr %n, align 8, !tbaa !12
  %add = add nsw i64 %28, %29
  %call = call ptr @cs_dl_malloc(i64 noundef %add, i64 noundef 8)
  store ptr %call, ptr %w, align 8, !tbaa !4
  %30 = load i64, ptr %m2, align 8, !tbaa !12
  %call14 = call ptr @cs_dl_malloc(i64 noundef %30, i64 noundef 8)
  store ptr %call14, ptr %x, align 8, !tbaa !4
  %call15 = call ptr @cs_dl_calloc(i64 noundef 1, i64 noundef 32)
  store ptr %call15, ptr %N, align 8, !tbaa !4
  %31 = load ptr, ptr %w, align 8, !tbaa !4
  %tobool16 = icmp ne ptr %31, null
  br i1 %tobool16, label %lor.lhs.false17, label %if.then21

lor.lhs.false17:                                  ; preds = %if.end
  %32 = load ptr, ptr %x, align 8, !tbaa !4
  %tobool18 = icmp ne ptr %32, null
  br i1 %tobool18, label %lor.lhs.false19, label %if.then21

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %33 = load ptr, ptr %N, align 8, !tbaa !4
  %tobool20 = icmp ne ptr %33, null
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %lor.lhs.false19, %lor.lhs.false17, %if.end
  %34 = load ptr, ptr %N, align 8, !tbaa !4
  %35 = load ptr, ptr %w, align 8, !tbaa !4
  %36 = load ptr, ptr %x, align 8, !tbaa !4
  %call22 = call ptr @cs_dl_ndone(ptr noundef %34, ptr noundef null, ptr noundef %35, ptr noundef %36, i64 noundef 0)
  store ptr %call22, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false19
  %37 = load ptr, ptr %w, align 8, !tbaa !4
  %38 = load i64, ptr %m2, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i64, ptr %37, i64 %38
  store ptr %add.ptr, ptr %s, align 8, !tbaa !4
  store i64 0, ptr %k, align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end23
  %39 = load i64, ptr %k, align 8, !tbaa !12
  %40 = load i64, ptr %m2, align 8, !tbaa !12
  %cmp24 = icmp slt i64 %39, %40
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load ptr, ptr %x, align 8, !tbaa !4
  %42 = load i64, ptr %k, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds double, ptr %41, i64 %42
  store double 0.000000e+00, ptr %arrayidx, align 8, !tbaa !26
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i64, ptr %k, align 8, !tbaa !12
  %inc = add nsw i64 %43, 1
  store i64 %inc, ptr %k, align 8, !tbaa !12
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  %44 = load i64, ptr %m2, align 8, !tbaa !12
  %45 = load i64, ptr %n, align 8, !tbaa !12
  %46 = load i64, ptr %vnz, align 8, !tbaa !12
  %call26 = call ptr @cs_dl_spalloc(i64 noundef %44, i64 noundef %45, i64 noundef %46, i64 noundef 1, i64 noundef 0)
  store ptr %call26, ptr %V, align 8, !tbaa !4
  %47 = load ptr, ptr %N, align 8, !tbaa !4
  %L = getelementptr inbounds %struct.cs_dl_numeric, ptr %47, i32 0, i32 0
  store ptr %call26, ptr %L, align 8, !tbaa !29
  %48 = load i64, ptr %m2, align 8, !tbaa !12
  %49 = load i64, ptr %n, align 8, !tbaa !12
  %50 = load i64, ptr %rnz, align 8, !tbaa !12
  %call27 = call ptr @cs_dl_spalloc(i64 noundef %48, i64 noundef %49, i64 noundef %50, i64 noundef 1, i64 noundef 0)
  store ptr %call27, ptr %R, align 8, !tbaa !4
  %51 = load ptr, ptr %N, align 8, !tbaa !4
  %U = getelementptr inbounds %struct.cs_dl_numeric, ptr %51, i32 0, i32 1
  store ptr %call27, ptr %U, align 8, !tbaa !31
  %52 = load i64, ptr %n, align 8, !tbaa !12
  %call28 = call ptr @cs_dl_malloc(i64 noundef %52, i64 noundef 8)
  store ptr %call28, ptr %Beta, align 8, !tbaa !4
  %53 = load ptr, ptr %N, align 8, !tbaa !4
  %B = getelementptr inbounds %struct.cs_dl_numeric, ptr %53, i32 0, i32 3
  store ptr %call28, ptr %B, align 8, !tbaa !32
  %54 = load ptr, ptr %R, align 8, !tbaa !4
  %tobool29 = icmp ne ptr %54, null
  br i1 %tobool29, label %lor.lhs.false30, label %if.then34

lor.lhs.false30:                                  ; preds = %for.end
  %55 = load ptr, ptr %V, align 8, !tbaa !4
  %tobool31 = icmp ne ptr %55, null
  br i1 %tobool31, label %lor.lhs.false32, label %if.then34

lor.lhs.false32:                                  ; preds = %lor.lhs.false30
  %56 = load ptr, ptr %Beta, align 8, !tbaa !4
  %tobool33 = icmp ne ptr %56, null
  br i1 %tobool33, label %if.end36, label %if.then34

if.then34:                                        ; preds = %lor.lhs.false32, %lor.lhs.false30, %for.end
  %57 = load ptr, ptr %N, align 8, !tbaa !4
  %58 = load ptr, ptr %w, align 8, !tbaa !4
  %59 = load ptr, ptr %x, align 8, !tbaa !4
  %call35 = call ptr @cs_dl_ndone(ptr noundef %57, ptr noundef null, ptr noundef %58, ptr noundef %59, i64 noundef 0)
  store ptr %call35, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false32
  %60 = load ptr, ptr %R, align 8, !tbaa !4
  %p37 = getelementptr inbounds %struct.cs_dl_sparse, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %p37, align 8, !tbaa !14
  store ptr %61, ptr %Rp, align 8, !tbaa !4
  %62 = load ptr, ptr %R, align 8, !tbaa !4
  %i38 = getelementptr inbounds %struct.cs_dl_sparse, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %i38, align 8, !tbaa !15
  store ptr %63, ptr %Ri, align 8, !tbaa !4
  %64 = load ptr, ptr %R, align 8, !tbaa !4
  %x39 = getelementptr inbounds %struct.cs_dl_sparse, ptr %64, i32 0, i32 5
  %65 = load ptr, ptr %x39, align 8, !tbaa !16
  store ptr %65, ptr %Rx, align 8, !tbaa !4
  %66 = load ptr, ptr %V, align 8, !tbaa !4
  %p40 = getelementptr inbounds %struct.cs_dl_sparse, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %p40, align 8, !tbaa !14
  store ptr %67, ptr %Vp, align 8, !tbaa !4
  %68 = load ptr, ptr %V, align 8, !tbaa !4
  %i41 = getelementptr inbounds %struct.cs_dl_sparse, ptr %68, i32 0, i32 4
  %69 = load ptr, ptr %i41, align 8, !tbaa !15
  store ptr %69, ptr %Vi, align 8, !tbaa !4
  %70 = load ptr, ptr %V, align 8, !tbaa !4
  %x42 = getelementptr inbounds %struct.cs_dl_sparse, ptr %70, i32 0, i32 5
  %71 = load ptr, ptr %x42, align 8, !tbaa !16
  store ptr %71, ptr %Vx, align 8, !tbaa !4
  store i64 0, ptr %i, align 8, !tbaa !12
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc48, %if.end36
  %72 = load i64, ptr %i, align 8, !tbaa !12
  %73 = load i64, ptr %m2, align 8, !tbaa !12
  %cmp44 = icmp slt i64 %72, %73
  br i1 %cmp44, label %for.body46, label %for.end50

for.body46:                                       ; preds = %for.cond43
  %74 = load ptr, ptr %w, align 8, !tbaa !4
  %75 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx47 = getelementptr inbounds i64, ptr %74, i64 %75
  store i64 -1, ptr %arrayidx47, align 8, !tbaa !12
  br label %for.inc48

for.inc48:                                        ; preds = %for.body46
  %76 = load i64, ptr %i, align 8, !tbaa !12
  %inc49 = add nsw i64 %76, 1
  store i64 %inc49, ptr %i, align 8, !tbaa !12
  br label %for.cond43, !llvm.loop !33

for.end50:                                        ; preds = %for.cond43
  store i64 0, ptr %rnz, align 8, !tbaa !12
  store i64 0, ptr %vnz, align 8, !tbaa !12
  store i64 0, ptr %k, align 8, !tbaa !12
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc144, %for.end50
  %77 = load i64, ptr %k, align 8, !tbaa !12
  %78 = load i64, ptr %n, align 8, !tbaa !12
  %cmp52 = icmp slt i64 %77, %78
  br i1 %cmp52, label %for.body54, label %for.end146

for.body54:                                       ; preds = %for.cond51
  %79 = load i64, ptr %rnz, align 8, !tbaa !12
  %80 = load ptr, ptr %Rp, align 8, !tbaa !4
  %81 = load i64, ptr %k, align 8, !tbaa !12
  %arrayidx55 = getelementptr inbounds i64, ptr %80, i64 %81
  store i64 %79, ptr %arrayidx55, align 8, !tbaa !12
  %82 = load i64, ptr %vnz, align 8, !tbaa !12
  store i64 %82, ptr %p1, align 8, !tbaa !12
  %83 = load ptr, ptr %Vp, align 8, !tbaa !4
  %84 = load i64, ptr %k, align 8, !tbaa !12
  %arrayidx56 = getelementptr inbounds i64, ptr %83, i64 %84
  store i64 %82, ptr %arrayidx56, align 8, !tbaa !12
  %85 = load i64, ptr %k, align 8, !tbaa !12
  %86 = load ptr, ptr %w, align 8, !tbaa !4
  %87 = load i64, ptr %k, align 8, !tbaa !12
  %arrayidx57 = getelementptr inbounds i64, ptr %86, i64 %87
  store i64 %85, ptr %arrayidx57, align 8, !tbaa !12
  %88 = load i64, ptr %k, align 8, !tbaa !12
  %89 = load ptr, ptr %Vi, align 8, !tbaa !4
  %90 = load i64, ptr %vnz, align 8, !tbaa !12
  %inc58 = add nsw i64 %90, 1
  store i64 %inc58, ptr %vnz, align 8, !tbaa !12
  %arrayidx59 = getelementptr inbounds i64, ptr %89, i64 %90
  store i64 %88, ptr %arrayidx59, align 8, !tbaa !12
  %91 = load i64, ptr %n, align 8, !tbaa !12
  store i64 %91, ptr %top, align 8, !tbaa !12
  %92 = load ptr, ptr %q, align 8, !tbaa !4
  %tobool60 = icmp ne ptr %92, null
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body54
  %93 = load ptr, ptr %q, align 8, !tbaa !4
  %94 = load i64, ptr %k, align 8, !tbaa !12
  %arrayidx61 = getelementptr inbounds i64, ptr %93, i64 %94
  %95 = load i64, ptr %arrayidx61, align 8, !tbaa !12
  br label %cond.end

cond.false:                                       ; preds = %for.body54
  %96 = load i64, ptr %k, align 8, !tbaa !12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %95, %cond.true ], [ %96, %cond.false ]
  store i64 %cond, ptr %col, align 8, !tbaa !12
  %97 = load ptr, ptr %Ap, align 8, !tbaa !4
  %98 = load i64, ptr %col, align 8, !tbaa !12
  %arrayidx62 = getelementptr inbounds i64, ptr %97, i64 %98
  %99 = load i64, ptr %arrayidx62, align 8, !tbaa !12
  store i64 %99, ptr %p, align 8, !tbaa !12
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc102, %cond.end
  %100 = load i64, ptr %p, align 8, !tbaa !12
  %101 = load ptr, ptr %Ap, align 8, !tbaa !4
  %102 = load i64, ptr %col, align 8, !tbaa !12
  %add64 = add nsw i64 %102, 1
  %arrayidx65 = getelementptr inbounds i64, ptr %101, i64 %add64
  %103 = load i64, ptr %arrayidx65, align 8, !tbaa !12
  %cmp66 = icmp slt i64 %100, %103
  br i1 %cmp66, label %for.body68, label %for.end104

for.body68:                                       ; preds = %for.cond63
  %104 = load ptr, ptr %leftmost, align 8, !tbaa !4
  %105 = load ptr, ptr %Ai, align 8, !tbaa !4
  %106 = load i64, ptr %p, align 8, !tbaa !12
  %arrayidx69 = getelementptr inbounds i64, ptr %105, i64 %106
  %107 = load i64, ptr %arrayidx69, align 8, !tbaa !12
  %arrayidx70 = getelementptr inbounds i64, ptr %104, i64 %107
  %108 = load i64, ptr %arrayidx70, align 8, !tbaa !12
  store i64 %108, ptr %i, align 8, !tbaa !12
  store i64 0, ptr %len, align 8, !tbaa !12
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc79, %for.body68
  %109 = load ptr, ptr %w, align 8, !tbaa !4
  %110 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx72 = getelementptr inbounds i64, ptr %109, i64 %110
  %111 = load i64, ptr %arrayidx72, align 8, !tbaa !12
  %112 = load i64, ptr %k, align 8, !tbaa !12
  %cmp73 = icmp ne i64 %111, %112
  br i1 %cmp73, label %for.body75, label %for.end81

for.body75:                                       ; preds = %for.cond71
  %113 = load i64, ptr %i, align 8, !tbaa !12
  %114 = load ptr, ptr %s, align 8, !tbaa !4
  %115 = load i64, ptr %len, align 8, !tbaa !12
  %inc76 = add nsw i64 %115, 1
  store i64 %inc76, ptr %len, align 8, !tbaa !12
  %arrayidx77 = getelementptr inbounds i64, ptr %114, i64 %115
  store i64 %113, ptr %arrayidx77, align 8, !tbaa !12
  %116 = load i64, ptr %k, align 8, !tbaa !12
  %117 = load ptr, ptr %w, align 8, !tbaa !4
  %118 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx78 = getelementptr inbounds i64, ptr %117, i64 %118
  store i64 %116, ptr %arrayidx78, align 8, !tbaa !12
  br label %for.inc79

for.inc79:                                        ; preds = %for.body75
  %119 = load ptr, ptr %parent, align 8, !tbaa !4
  %120 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx80 = getelementptr inbounds i64, ptr %119, i64 %120
  %121 = load i64, ptr %arrayidx80, align 8, !tbaa !12
  store i64 %121, ptr %i, align 8, !tbaa !12
  br label %for.cond71, !llvm.loop !34

for.end81:                                        ; preds = %for.cond71
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end81
  %122 = load i64, ptr %len, align 8, !tbaa !12
  %cmp82 = icmp sgt i64 %122, 0
  br i1 %cmp82, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %123 = load ptr, ptr %s, align 8, !tbaa !4
  %124 = load i64, ptr %len, align 8, !tbaa !12
  %dec = add nsw i64 %124, -1
  store i64 %dec, ptr %len, align 8, !tbaa !12
  %arrayidx84 = getelementptr inbounds i64, ptr %123, i64 %dec
  %125 = load i64, ptr %arrayidx84, align 8, !tbaa !12
  %126 = load ptr, ptr %s, align 8, !tbaa !4
  %127 = load i64, ptr %top, align 8, !tbaa !12
  %dec85 = add nsw i64 %127, -1
  store i64 %dec85, ptr %top, align 8, !tbaa !12
  %arrayidx86 = getelementptr inbounds i64, ptr %126, i64 %dec85
  store i64 %125, ptr %arrayidx86, align 8, !tbaa !12
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %while.cond
  %128 = load ptr, ptr %pinv, align 8, !tbaa !4
  %129 = load ptr, ptr %Ai, align 8, !tbaa !4
  %130 = load i64, ptr %p, align 8, !tbaa !12
  %arrayidx87 = getelementptr inbounds i64, ptr %129, i64 %130
  %131 = load i64, ptr %arrayidx87, align 8, !tbaa !12
  %arrayidx88 = getelementptr inbounds i64, ptr %128, i64 %131
  %132 = load i64, ptr %arrayidx88, align 8, !tbaa !12
  store i64 %132, ptr %i, align 8, !tbaa !12
  %133 = load ptr, ptr %Ax, align 8, !tbaa !4
  %134 = load i64, ptr %p, align 8, !tbaa !12
  %arrayidx89 = getelementptr inbounds double, ptr %133, i64 %134
  %135 = load double, ptr %arrayidx89, align 8, !tbaa !26
  %136 = load ptr, ptr %x, align 8, !tbaa !4
  %137 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx90 = getelementptr inbounds double, ptr %136, i64 %137
  store double %135, ptr %arrayidx90, align 8, !tbaa !26
  %138 = load i64, ptr %i, align 8, !tbaa !12
  %139 = load i64, ptr %k, align 8, !tbaa !12
  %cmp91 = icmp sgt i64 %138, %139
  br i1 %cmp91, label %land.lhs.true93, label %if.end101

land.lhs.true93:                                  ; preds = %while.end
  %140 = load ptr, ptr %w, align 8, !tbaa !4
  %141 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx94 = getelementptr inbounds i64, ptr %140, i64 %141
  %142 = load i64, ptr %arrayidx94, align 8, !tbaa !12
  %143 = load i64, ptr %k, align 8, !tbaa !12
  %cmp95 = icmp slt i64 %142, %143
  br i1 %cmp95, label %if.then97, label %if.end101

if.then97:                                        ; preds = %land.lhs.true93
  %144 = load i64, ptr %i, align 8, !tbaa !12
  %145 = load ptr, ptr %Vi, align 8, !tbaa !4
  %146 = load i64, ptr %vnz, align 8, !tbaa !12
  %inc98 = add nsw i64 %146, 1
  store i64 %inc98, ptr %vnz, align 8, !tbaa !12
  %arrayidx99 = getelementptr inbounds i64, ptr %145, i64 %146
  store i64 %144, ptr %arrayidx99, align 8, !tbaa !12
  %147 = load i64, ptr %k, align 8, !tbaa !12
  %148 = load ptr, ptr %w, align 8, !tbaa !4
  %149 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx100 = getelementptr inbounds i64, ptr %148, i64 %149
  store i64 %147, ptr %arrayidx100, align 8, !tbaa !12
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %land.lhs.true93, %while.end
  br label %for.inc102

for.inc102:                                       ; preds = %if.end101
  %150 = load i64, ptr %p, align 8, !tbaa !12
  %inc103 = add nsw i64 %150, 1
  store i64 %inc103, ptr %p, align 8, !tbaa !12
  br label %for.cond63, !llvm.loop !36

for.end104:                                       ; preds = %for.cond63
  %151 = load i64, ptr %top, align 8, !tbaa !12
  store i64 %151, ptr %p, align 8, !tbaa !12
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc123, %for.end104
  %152 = load i64, ptr %p, align 8, !tbaa !12
  %153 = load i64, ptr %n, align 8, !tbaa !12
  %cmp106 = icmp slt i64 %152, %153
  br i1 %cmp106, label %for.body108, label %for.end125

for.body108:                                      ; preds = %for.cond105
  %154 = load ptr, ptr %s, align 8, !tbaa !4
  %155 = load i64, ptr %p, align 8, !tbaa !12
  %arrayidx109 = getelementptr inbounds i64, ptr %154, i64 %155
  %156 = load i64, ptr %arrayidx109, align 8, !tbaa !12
  store i64 %156, ptr %i, align 8, !tbaa !12
  %157 = load ptr, ptr %V, align 8, !tbaa !4
  %158 = load i64, ptr %i, align 8, !tbaa !12
  %159 = load ptr, ptr %Beta, align 8, !tbaa !4
  %160 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx110 = getelementptr inbounds double, ptr %159, i64 %160
  %161 = load double, ptr %arrayidx110, align 8, !tbaa !26
  %162 = load ptr, ptr %x, align 8, !tbaa !4
  %call111 = call i64 @cs_dl_happly(ptr noundef %157, i64 noundef %158, double noundef %161, ptr noundef %162)
  %163 = load i64, ptr %i, align 8, !tbaa !12
  %164 = load ptr, ptr %Ri, align 8, !tbaa !4
  %165 = load i64, ptr %rnz, align 8, !tbaa !12
  %arrayidx112 = getelementptr inbounds i64, ptr %164, i64 %165
  store i64 %163, ptr %arrayidx112, align 8, !tbaa !12
  %166 = load ptr, ptr %x, align 8, !tbaa !4
  %167 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx113 = getelementptr inbounds double, ptr %166, i64 %167
  %168 = load double, ptr %arrayidx113, align 8, !tbaa !26
  %169 = load ptr, ptr %Rx, align 8, !tbaa !4
  %170 = load i64, ptr %rnz, align 8, !tbaa !12
  %inc114 = add nsw i64 %170, 1
  store i64 %inc114, ptr %rnz, align 8, !tbaa !12
  %arrayidx115 = getelementptr inbounds double, ptr %169, i64 %170
  store double %168, ptr %arrayidx115, align 8, !tbaa !26
  %171 = load ptr, ptr %x, align 8, !tbaa !4
  %172 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx116 = getelementptr inbounds double, ptr %171, i64 %172
  store double 0.000000e+00, ptr %arrayidx116, align 8, !tbaa !26
  %173 = load ptr, ptr %parent, align 8, !tbaa !4
  %174 = load i64, ptr %i, align 8, !tbaa !12
  %arrayidx117 = getelementptr inbounds i64, ptr %173, i64 %174
  %175 = load i64, ptr %arrayidx117, align 8, !tbaa !12
  %176 = load i64, ptr %k, align 8, !tbaa !12
  %cmp118 = icmp eq i64 %175, %176
  br i1 %cmp118, label %if.then120, label %if.end122

if.then120:                                       ; preds = %for.body108
  %177 = load ptr, ptr %V, align 8, !tbaa !4
  %178 = load i64, ptr %i, align 8, !tbaa !12
  %179 = load ptr, ptr %w, align 8, !tbaa !4
  %180 = load i64, ptr %k, align 8, !tbaa !12
  %181 = load ptr, ptr %V, align 8, !tbaa !4
  %182 = load i64, ptr %vnz, align 8, !tbaa !12
  %call121 = call i64 @cs_dl_scatter(ptr noundef %177, i64 noundef %178, double noundef 0.000000e+00, ptr noundef %179, ptr noundef null, i64 noundef %180, ptr noundef %181, i64 noundef %182)
  store i64 %call121, ptr %vnz, align 8, !tbaa !12
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %for.body108
  br label %for.inc123

for.inc123:                                       ; preds = %if.end122
  %183 = load i64, ptr %p, align 8, !tbaa !12
  %inc124 = add nsw i64 %183, 1
  store i64 %inc124, ptr %p, align 8, !tbaa !12
  br label %for.cond105, !llvm.loop !37

for.end125:                                       ; preds = %for.cond105
  %184 = load i64, ptr %p1, align 8, !tbaa !12
  store i64 %184, ptr %p, align 8, !tbaa !12
  br label %for.cond126

for.cond126:                                      ; preds = %for.inc135, %for.end125
  %185 = load i64, ptr %p, align 8, !tbaa !12
  %186 = load i64, ptr %vnz, align 8, !tbaa !12
  %cmp127 = icmp slt i64 %185, %186
  br i1 %cmp127, label %for.body129, label %for.end137

for.body129:                                      ; preds = %for.cond126
  %187 = load ptr, ptr %x, align 8, !tbaa !4
  %188 = load ptr, ptr %Vi, align 8, !tbaa !4
  %189 = load i64, ptr %p, align 8, !tbaa !12
  %arrayidx130 = getelementptr inbounds i64, ptr %188, i64 %189
  %190 = load i64, ptr %arrayidx130, align 8, !tbaa !12
  %arrayidx131 = getelementptr inbounds double, ptr %187, i64 %190
  %191 = load double, ptr %arrayidx131, align 8, !tbaa !26
  %192 = load ptr, ptr %Vx, align 8, !tbaa !4
  %193 = load i64, ptr %p, align 8, !tbaa !12
  %arrayidx132 = getelementptr inbounds double, ptr %192, i64 %193
  store double %191, ptr %arrayidx132, align 8, !tbaa !26
  %194 = load ptr, ptr %x, align 8, !tbaa !4
  %195 = load ptr, ptr %Vi, align 8, !tbaa !4
  %196 = load i64, ptr %p, align 8, !tbaa !12
  %arrayidx133 = getelementptr inbounds i64, ptr %195, i64 %196
  %197 = load i64, ptr %arrayidx133, align 8, !tbaa !12
  %arrayidx134 = getelementptr inbounds double, ptr %194, i64 %197
  store double 0.000000e+00, ptr %arrayidx134, align 8, !tbaa !26
  br label %for.inc135

for.inc135:                                       ; preds = %for.body129
  %198 = load i64, ptr %p, align 8, !tbaa !12
  %inc136 = add nsw i64 %198, 1
  store i64 %inc136, ptr %p, align 8, !tbaa !12
  br label %for.cond126, !llvm.loop !38

for.end137:                                       ; preds = %for.cond126
  %199 = load i64, ptr %k, align 8, !tbaa !12
  %200 = load ptr, ptr %Ri, align 8, !tbaa !4
  %201 = load i64, ptr %rnz, align 8, !tbaa !12
  %arrayidx138 = getelementptr inbounds i64, ptr %200, i64 %201
  store i64 %199, ptr %arrayidx138, align 8, !tbaa !12
  %202 = load ptr, ptr %Vx, align 8, !tbaa !4
  %203 = load i64, ptr %p1, align 8, !tbaa !12
  %add.ptr139 = getelementptr inbounds double, ptr %202, i64 %203
  %204 = load ptr, ptr %Beta, align 8, !tbaa !4
  %205 = load i64, ptr %k, align 8, !tbaa !12
  %add.ptr140 = getelementptr inbounds double, ptr %204, i64 %205
  %206 = load i64, ptr %vnz, align 8, !tbaa !12
  %207 = load i64, ptr %p1, align 8, !tbaa !12
  %sub = sub nsw i64 %206, %207
  %call141 = call double @cs_dl_house(ptr noundef %add.ptr139, ptr noundef %add.ptr140, i64 noundef %sub)
  %208 = load ptr, ptr %Rx, align 8, !tbaa !4
  %209 = load i64, ptr %rnz, align 8, !tbaa !12
  %inc142 = add nsw i64 %209, 1
  store i64 %inc142, ptr %rnz, align 8, !tbaa !12
  %arrayidx143 = getelementptr inbounds double, ptr %208, i64 %209
  store double %call141, ptr %arrayidx143, align 8, !tbaa !26
  br label %for.inc144

for.inc144:                                       ; preds = %for.end137
  %210 = load i64, ptr %k, align 8, !tbaa !12
  %inc145 = add nsw i64 %210, 1
  store i64 %inc145, ptr %k, align 8, !tbaa !12
  br label %for.cond51, !llvm.loop !39

for.end146:                                       ; preds = %for.cond51
  %211 = load i64, ptr %rnz, align 8, !tbaa !12
  %212 = load ptr, ptr %Rp, align 8, !tbaa !4
  %213 = load i64, ptr %n, align 8, !tbaa !12
  %arrayidx147 = getelementptr inbounds i64, ptr %212, i64 %213
  store i64 %211, ptr %arrayidx147, align 8, !tbaa !12
  %214 = load i64, ptr %vnz, align 8, !tbaa !12
  %215 = load ptr, ptr %Vp, align 8, !tbaa !4
  %216 = load i64, ptr %n, align 8, !tbaa !12
  %arrayidx148 = getelementptr inbounds i64, ptr %215, i64 %216
  store i64 %214, ptr %arrayidx148, align 8, !tbaa !12
  %217 = load ptr, ptr %N, align 8, !tbaa !4
  %218 = load ptr, ptr %w, align 8, !tbaa !4
  %219 = load ptr, ptr %x, align 8, !tbaa !4
  %call149 = call ptr @cs_dl_ndone(ptr noundef %217, ptr noundef null, ptr noundef %218, ptr noundef %219, i64 noundef 1)
  store ptr %call149, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end146, %if.then34, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %N) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %V) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %R) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %pinv) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Vi) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Vp) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ri) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rp) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ai) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ap) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %rnz) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %col) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %top) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %vnz) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Beta) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ax) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Vx) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %Rx) #3
  %220 = load ptr, ptr %retval, align 8
  ret ptr %220
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @cs_dl_malloc(i64 noundef, i64 noundef) #2

declare ptr @cs_dl_calloc(i64 noundef, i64 noundef) #2

declare ptr @cs_dl_ndone(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @cs_dl_spalloc(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #2

declare i64 @cs_dl_happly(ptr noundef, i64 noundef, double noundef, ptr noundef) #2

declare i64 @cs_dl_scatter(ptr noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare double @cs_dl_house(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = !{!9, !10, i64 48}
!9 = !{!"cs_dl_sparse", !10, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !5, i64 32, !5, i64 40, !10, i64 48}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!9, !10, i64 16}
!14 = !{!9, !5, i64 24}
!15 = !{!9, !5, i64 32}
!16 = !{!9, !5, i64 40}
!17 = !{!18, !5, i64 8}
!18 = !{!"cs_dl_symbolic", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !10, i64 40, !19, i64 48, !19, i64 56}
!19 = !{!"double", !6, i64 0}
!20 = !{!18, !5, i64 16}
!21 = !{!18, !5, i64 0}
!22 = !{!18, !10, i64 40}
!23 = !{!18, !19, i64 48}
!24 = !{!18, !19, i64 56}
!25 = !{!18, !5, i64 32}
!26 = !{!19, !19, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!30, !5, i64 0}
!30 = !{!"cs_dl_numeric", !5, i64 0, !5, i64 8, !5, i64 16, !5, i64 24}
!31 = !{!30, !5, i64 8}
!32 = !{!30, !5, i64 24}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
