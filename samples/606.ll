; ModuleID = 'samples/606.bc'
source_filename = "../Source/cs_maxtrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_ci_sparse = type { i32, i32, i32, ptr, ptr, ptr, i32 }

; Function Attrs: uwtable
define ptr @cs_ci_maxtrans(ptr noundef %A, i32 noundef %seed) #0 {
entry:
  %retval = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %seed.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %p = alloca i32, align 4
  %n2 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %Ap = alloca ptr, align 8
  %jimatch = alloca ptr, align 8
  %w = alloca ptr, align 8
  %cheap = alloca ptr, align 8
  %js = alloca ptr, align 8
  %is = alloca ptr, align 8
  %ps = alloca ptr, align 8
  %Ai = alloca ptr, align 8
  %Cp = alloca ptr, align 8
  %jmatch = alloca ptr, align 8
  %imatch = alloca ptr, align 8
  %q = alloca ptr, align 8
  %C = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store i32 %seed, ptr %seed.addr, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n2) #4
  store i32 0, ptr %n2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #4
  store i32 0, ptr %m2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ap) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %jimatch) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %cheap) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %js) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %is) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ps) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ai) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Cp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %jmatch) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %imatch) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %C) #4
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %nz = getelementptr inbounds %struct.cs_ci_sparse, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %nz, align 8, !tbaa !10
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %3 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %n1 = getelementptr inbounds %struct.cs_ci_sparse, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %n1, align 8, !tbaa !12
  store i32 %4, ptr %n, align 4, !tbaa !8
  %5 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %m3 = getelementptr inbounds %struct.cs_ci_sparse, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %m3, align 4, !tbaa !13
  store i32 %6, ptr %m, align 4, !tbaa !8
  %7 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p4 = getelementptr inbounds %struct.cs_ci_sparse, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %p4, align 8, !tbaa !14
  store ptr %8, ptr %Ap, align 8, !tbaa !4
  %9 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %i5 = getelementptr inbounds %struct.cs_ci_sparse, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %i5, align 8, !tbaa !15
  store ptr %10, ptr %Ai, align 8, !tbaa !4
  %11 = load i32, ptr %m, align 4, !tbaa !8
  %12 = load i32, ptr %n, align 4, !tbaa !8
  %add = add nsw i32 %11, %12
  %call = call ptr @cs_ci_calloc(i32 noundef %add, i64 noundef 4)
  store ptr %call, ptr %jimatch, align 8, !tbaa !4
  store ptr %call, ptr %w, align 8, !tbaa !4
  %13 = load ptr, ptr %jimatch, align 8, !tbaa !4
  %tobool6 = icmp ne ptr %13, null
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %k, align 4, !tbaa !8
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %if.end8
  %14 = load i32, ptr %j, align 4, !tbaa !8
  %15 = load i32, ptr %n, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %Ap, align 8, !tbaa !4
  %17 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %19 = load ptr, ptr %Ap, align 8, !tbaa !4
  %20 = load i32, ptr %j, align 4, !tbaa !8
  %add10 = add nsw i32 %20, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %19, i64 %idxprom11
  %21 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %18, %21
  %conv = zext i1 %cmp13 to i32
  %22 = load i32, ptr %n2, align 4, !tbaa !8
  %add14 = add nsw i32 %22, %conv
  store i32 %add14, ptr %n2, align 4, !tbaa !8
  %23 = load ptr, ptr %Ap, align 8, !tbaa !4
  %24 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %23, i64 %idxprom15
  %25 = load i32, ptr %arrayidx16, align 4, !tbaa !8
  store i32 %25, ptr %p, align 4, !tbaa !8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %for.body
  %26 = load i32, ptr %p, align 4, !tbaa !8
  %27 = load ptr, ptr %Ap, align 8, !tbaa !4
  %28 = load i32, ptr %j, align 4, !tbaa !8
  %add18 = add nsw i32 %28, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %27, i64 %idxprom19
  %29 = load i32, ptr %arrayidx20, align 4, !tbaa !8
  %cmp21 = icmp slt i32 %26, %29
  br i1 %cmp21, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond17
  %30 = load ptr, ptr %w, align 8, !tbaa !4
  %31 = load ptr, ptr %Ai, align 8, !tbaa !4
  %32 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %31, i64 %idxprom24
  %33 = load i32, ptr %arrayidx25, align 4, !tbaa !8
  %idxprom26 = sext i32 %33 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %30, i64 %idxprom26
  store i32 1, ptr %arrayidx27, align 4, !tbaa !8
  %34 = load i32, ptr %j, align 4, !tbaa !8
  %35 = load ptr, ptr %Ai, align 8, !tbaa !4
  %36 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom28 = sext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %35, i64 %idxprom28
  %37 = load i32, ptr %arrayidx29, align 4, !tbaa !8
  %cmp30 = icmp eq i32 %34, %37
  %conv31 = zext i1 %cmp30 to i32
  %38 = load i32, ptr %k, align 4, !tbaa !8
  %add32 = add nsw i32 %38, %conv31
  store i32 %add32, ptr %k, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %39 = load i32, ptr %p, align 4, !tbaa !8
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %p, align 4, !tbaa !8
  br label %for.cond17, !llvm.loop !16

for.end:                                          ; preds = %for.cond17
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %inc34 = add nsw i32 %40, 1
  store i32 %inc34, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !18

for.end35:                                        ; preds = %for.cond
  %41 = load i32, ptr %k, align 4, !tbaa !8
  %42 = load i32, ptr %m, align 4, !tbaa !8
  %43 = load i32, ptr %n, align 4, !tbaa !8
  %cmp36 = icmp slt i32 %42, %43
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end35
  %44 = load i32, ptr %m, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %for.end35
  %45 = load i32, ptr %n, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %44, %cond.true ], [ %45, %cond.false ]
  %cmp38 = icmp eq i32 %41, %cond
  br i1 %cmp38, label %if.then40, label %if.end78

if.then40:                                        ; preds = %cond.end
  %46 = load ptr, ptr %jimatch, align 8, !tbaa !4
  store ptr %46, ptr %jmatch, align 8, !tbaa !4
  %47 = load ptr, ptr %jimatch, align 8, !tbaa !4
  %48 = load i32, ptr %m, align 4, !tbaa !8
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr inbounds i32, ptr %47, i64 %idx.ext
  store ptr %add.ptr, ptr %imatch, align 8, !tbaa !4
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc47, %if.then40
  %49 = load i32, ptr %i, align 4, !tbaa !8
  %50 = load i32, ptr %k, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %49, %50
  br i1 %cmp42, label %for.body44, label %for.end49

for.body44:                                       ; preds = %for.cond41
  %51 = load i32, ptr %i, align 4, !tbaa !8
  %52 = load ptr, ptr %jmatch, align 8, !tbaa !4
  %53 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom45 = sext i32 %53 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %52, i64 %idxprom45
  store i32 %51, ptr %arrayidx46, align 4, !tbaa !8
  br label %for.inc47

for.inc47:                                        ; preds = %for.body44
  %54 = load i32, ptr %i, align 4, !tbaa !8
  %inc48 = add nsw i32 %54, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !8
  br label %for.cond41, !llvm.loop !19

for.end49:                                        ; preds = %for.cond41
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc56, %for.end49
  %55 = load i32, ptr %i, align 4, !tbaa !8
  %56 = load i32, ptr %m, align 4, !tbaa !8
  %cmp51 = icmp slt i32 %55, %56
  br i1 %cmp51, label %for.body53, label %for.end58

for.body53:                                       ; preds = %for.cond50
  %57 = load ptr, ptr %jmatch, align 8, !tbaa !4
  %58 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom54 = sext i32 %58 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %57, i64 %idxprom54
  store i32 -1, ptr %arrayidx55, align 4, !tbaa !8
  br label %for.inc56

for.inc56:                                        ; preds = %for.body53
  %59 = load i32, ptr %i, align 4, !tbaa !8
  %inc57 = add nsw i32 %59, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !8
  br label %for.cond50, !llvm.loop !20

for.end58:                                        ; preds = %for.cond50
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc65, %for.end58
  %60 = load i32, ptr %j, align 4, !tbaa !8
  %61 = load i32, ptr %k, align 4, !tbaa !8
  %cmp60 = icmp slt i32 %60, %61
  br i1 %cmp60, label %for.body62, label %for.end67

for.body62:                                       ; preds = %for.cond59
  %62 = load i32, ptr %j, align 4, !tbaa !8
  %63 = load ptr, ptr %imatch, align 8, !tbaa !4
  %64 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom63 = sext i32 %64 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %63, i64 %idxprom63
  store i32 %62, ptr %arrayidx64, align 4, !tbaa !8
  br label %for.inc65

for.inc65:                                        ; preds = %for.body62
  %65 = load i32, ptr %j, align 4, !tbaa !8
  %inc66 = add nsw i32 %65, 1
  store i32 %inc66, ptr %j, align 4, !tbaa !8
  br label %for.cond59, !llvm.loop !21

for.end67:                                        ; preds = %for.cond59
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc74, %for.end67
  %66 = load i32, ptr %j, align 4, !tbaa !8
  %67 = load i32, ptr %n, align 4, !tbaa !8
  %cmp69 = icmp slt i32 %66, %67
  br i1 %cmp69, label %for.body71, label %for.end76

for.body71:                                       ; preds = %for.cond68
  %68 = load ptr, ptr %imatch, align 8, !tbaa !4
  %69 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom72 = sext i32 %69 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %68, i64 %idxprom72
  store i32 -1, ptr %arrayidx73, align 4, !tbaa !8
  br label %for.inc74

for.inc74:                                        ; preds = %for.body71
  %70 = load i32, ptr %j, align 4, !tbaa !8
  %inc75 = add nsw i32 %70, 1
  store i32 %inc75, ptr %j, align 4, !tbaa !8
  br label %for.cond68, !llvm.loop !22

for.end76:                                        ; preds = %for.cond68
  %71 = load ptr, ptr %jimatch, align 8, !tbaa !4
  %call77 = call ptr @cs_ci_idone(ptr noundef %71, ptr noundef null, ptr noundef null, i32 noundef 1)
  store ptr %call77, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end78:                                         ; preds = %cond.end
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc86, %if.end78
  %72 = load i32, ptr %i, align 4, !tbaa !8
  %73 = load i32, ptr %m, align 4, !tbaa !8
  %cmp80 = icmp slt i32 %72, %73
  br i1 %cmp80, label %for.body82, label %for.end88

for.body82:                                       ; preds = %for.cond79
  %74 = load ptr, ptr %w, align 8, !tbaa !4
  %75 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom83 = sext i32 %75 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %74, i64 %idxprom83
  %76 = load i32, ptr %arrayidx84, align 4, !tbaa !8
  %77 = load i32, ptr %m2, align 4, !tbaa !8
  %add85 = add nsw i32 %77, %76
  store i32 %add85, ptr %m2, align 4, !tbaa !8
  br label %for.inc86

for.inc86:                                        ; preds = %for.body82
  %78 = load i32, ptr %i, align 4, !tbaa !8
  %inc87 = add nsw i32 %78, 1
  store i32 %inc87, ptr %i, align 4, !tbaa !8
  br label %for.cond79, !llvm.loop !23

for.end88:                                        ; preds = %for.cond79
  %79 = load i32, ptr %m2, align 4, !tbaa !8
  %80 = load i32, ptr %n2, align 4, !tbaa !8
  %cmp89 = icmp slt i32 %79, %80
  br i1 %cmp89, label %cond.true91, label %cond.false93

cond.true91:                                      ; preds = %for.end88
  %81 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %call92 = call ptr @cs_ci_transpose(ptr noundef %81, i32 noundef 0)
  br label %cond.end94

cond.false93:                                     ; preds = %for.end88
  %82 = load ptr, ptr %A.addr, align 8, !tbaa !4
  br label %cond.end94

cond.end94:                                       ; preds = %cond.false93, %cond.true91
  %cond95 = phi ptr [ %call92, %cond.true91 ], [ %82, %cond.false93 ]
  store ptr %cond95, ptr %C, align 8, !tbaa !4
  %83 = load ptr, ptr %C, align 8, !tbaa !4
  %tobool96 = icmp ne ptr %83, null
  br i1 %tobool96, label %if.end105, label %if.then97

if.then97:                                        ; preds = %cond.end94
  %84 = load ptr, ptr %jimatch, align 8, !tbaa !4
  %85 = load i32, ptr %m2, align 4, !tbaa !8
  %86 = load i32, ptr %n2, align 4, !tbaa !8
  %cmp98 = icmp slt i32 %85, %86
  br i1 %cmp98, label %cond.true100, label %cond.false101

cond.true100:                                     ; preds = %if.then97
  %87 = load ptr, ptr %C, align 8, !tbaa !4
  br label %cond.end102

cond.false101:                                    ; preds = %if.then97
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false101, %cond.true100
  %cond103 = phi ptr [ %87, %cond.true100 ], [ null, %cond.false101 ]
  %call104 = call ptr @cs_ci_idone(ptr noundef %84, ptr noundef %cond103, ptr noundef null, i32 noundef 0)
  store ptr %call104, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end105:                                        ; preds = %cond.end94
  %88 = load ptr, ptr %C, align 8, !tbaa !4
  %n106 = getelementptr inbounds %struct.cs_ci_sparse, ptr %88, i32 0, i32 2
  %89 = load i32, ptr %n106, align 8, !tbaa !12
  store i32 %89, ptr %n, align 4, !tbaa !8
  %90 = load ptr, ptr %C, align 8, !tbaa !4
  %m107 = getelementptr inbounds %struct.cs_ci_sparse, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %m107, align 4, !tbaa !13
  store i32 %91, ptr %m, align 4, !tbaa !8
  %92 = load ptr, ptr %C, align 8, !tbaa !4
  %p108 = getelementptr inbounds %struct.cs_ci_sparse, ptr %92, i32 0, i32 3
  %93 = load ptr, ptr %p108, align 8, !tbaa !14
  store ptr %93, ptr %Cp, align 8, !tbaa !4
  %94 = load i32, ptr %m2, align 4, !tbaa !8
  %95 = load i32, ptr %n2, align 4, !tbaa !8
  %cmp109 = icmp slt i32 %94, %95
  br i1 %cmp109, label %cond.true111, label %cond.false114

cond.true111:                                     ; preds = %if.end105
  %96 = load ptr, ptr %jimatch, align 8, !tbaa !4
  %97 = load i32, ptr %n, align 4, !tbaa !8
  %idx.ext112 = sext i32 %97 to i64
  %add.ptr113 = getelementptr inbounds i32, ptr %96, i64 %idx.ext112
  br label %cond.end115

cond.false114:                                    ; preds = %if.end105
  %98 = load ptr, ptr %jimatch, align 8, !tbaa !4
  br label %cond.end115

cond.end115:                                      ; preds = %cond.false114, %cond.true111
  %cond116 = phi ptr [ %add.ptr113, %cond.true111 ], [ %98, %cond.false114 ]
  store ptr %cond116, ptr %jmatch, align 8, !tbaa !4
  %99 = load i32, ptr %m2, align 4, !tbaa !8
  %100 = load i32, ptr %n2, align 4, !tbaa !8
  %cmp117 = icmp slt i32 %99, %100
  br i1 %cmp117, label %cond.true119, label %cond.false120

cond.true119:                                     ; preds = %cond.end115
  %101 = load ptr, ptr %jimatch, align 8, !tbaa !4
  br label %cond.end123

cond.false120:                                    ; preds = %cond.end115
  %102 = load ptr, ptr %jimatch, align 8, !tbaa !4
  %103 = load i32, ptr %m, align 4, !tbaa !8
  %idx.ext121 = sext i32 %103 to i64
  %add.ptr122 = getelementptr inbounds i32, ptr %102, i64 %idx.ext121
  br label %cond.end123

cond.end123:                                      ; preds = %cond.false120, %cond.true119
  %cond124 = phi ptr [ %101, %cond.true119 ], [ %add.ptr122, %cond.false120 ]
  store ptr %cond124, ptr %imatch, align 8, !tbaa !4
  %104 = load i32, ptr %n, align 4, !tbaa !8
  %mul = mul nsw i32 5, %104
  %call125 = call ptr @cs_ci_malloc(i32 noundef %mul, i64 noundef 4)
  store ptr %call125, ptr %w, align 8, !tbaa !4
  %105 = load ptr, ptr %w, align 8, !tbaa !4
  %tobool126 = icmp ne ptr %105, null
  br i1 %tobool126, label %if.end135, label %if.then127

if.then127:                                       ; preds = %cond.end123
  %106 = load ptr, ptr %jimatch, align 8, !tbaa !4
  %107 = load i32, ptr %m2, align 4, !tbaa !8
  %108 = load i32, ptr %n2, align 4, !tbaa !8
  %cmp128 = icmp slt i32 %107, %108
  br i1 %cmp128, label %cond.true130, label %cond.false131

cond.true130:                                     ; preds = %if.then127
  %109 = load ptr, ptr %C, align 8, !tbaa !4
  br label %cond.end132

cond.false131:                                    ; preds = %if.then127
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false131, %cond.true130
  %cond133 = phi ptr [ %109, %cond.true130 ], [ null, %cond.false131 ]
  %110 = load ptr, ptr %w, align 8, !tbaa !4
  %call134 = call ptr @cs_ci_idone(ptr noundef %106, ptr noundef %cond133, ptr noundef %110, i32 noundef 0)
  store ptr %call134, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end135:                                        ; preds = %cond.end123
  %111 = load ptr, ptr %w, align 8, !tbaa !4
  %112 = load i32, ptr %n, align 4, !tbaa !8
  %idx.ext136 = sext i32 %112 to i64
  %add.ptr137 = getelementptr inbounds i32, ptr %111, i64 %idx.ext136
  store ptr %add.ptr137, ptr %cheap, align 8, !tbaa !4
  %113 = load ptr, ptr %w, align 8, !tbaa !4
  %114 = load i32, ptr %n, align 4, !tbaa !8
  %mul138 = mul nsw i32 2, %114
  %idx.ext139 = sext i32 %mul138 to i64
  %add.ptr140 = getelementptr inbounds i32, ptr %113, i64 %idx.ext139
  store ptr %add.ptr140, ptr %js, align 8, !tbaa !4
  %115 = load ptr, ptr %w, align 8, !tbaa !4
  %116 = load i32, ptr %n, align 4, !tbaa !8
  %mul141 = mul nsw i32 3, %116
  %idx.ext142 = sext i32 %mul141 to i64
  %add.ptr143 = getelementptr inbounds i32, ptr %115, i64 %idx.ext142
  store ptr %add.ptr143, ptr %is, align 8, !tbaa !4
  %117 = load ptr, ptr %w, align 8, !tbaa !4
  %118 = load i32, ptr %n, align 4, !tbaa !8
  %mul144 = mul nsw i32 4, %118
  %idx.ext145 = sext i32 %mul144 to i64
  %add.ptr146 = getelementptr inbounds i32, ptr %117, i64 %idx.ext145
  store ptr %add.ptr146, ptr %ps, align 8, !tbaa !4
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc155, %if.end135
  %119 = load i32, ptr %j, align 4, !tbaa !8
  %120 = load i32, ptr %n, align 4, !tbaa !8
  %cmp148 = icmp slt i32 %119, %120
  br i1 %cmp148, label %for.body150, label %for.end157

for.body150:                                      ; preds = %for.cond147
  %121 = load ptr, ptr %Cp, align 8, !tbaa !4
  %122 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom151 = sext i32 %122 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %121, i64 %idxprom151
  %123 = load i32, ptr %arrayidx152, align 4, !tbaa !8
  %124 = load ptr, ptr %cheap, align 8, !tbaa !4
  %125 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom153 = sext i32 %125 to i64
  %arrayidx154 = getelementptr inbounds i32, ptr %124, i64 %idxprom153
  store i32 %123, ptr %arrayidx154, align 4, !tbaa !8
  br label %for.inc155

for.inc155:                                       ; preds = %for.body150
  %126 = load i32, ptr %j, align 4, !tbaa !8
  %inc156 = add nsw i32 %126, 1
  store i32 %inc156, ptr %j, align 4, !tbaa !8
  br label %for.cond147, !llvm.loop !24

for.end157:                                       ; preds = %for.cond147
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc164, %for.end157
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %128 = load i32, ptr %n, align 4, !tbaa !8
  %cmp159 = icmp slt i32 %127, %128
  br i1 %cmp159, label %for.body161, label %for.end166

for.body161:                                      ; preds = %for.cond158
  %129 = load ptr, ptr %w, align 8, !tbaa !4
  %130 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom162 = sext i32 %130 to i64
  %arrayidx163 = getelementptr inbounds i32, ptr %129, i64 %idxprom162
  store i32 -1, ptr %arrayidx163, align 4, !tbaa !8
  br label %for.inc164

for.inc164:                                       ; preds = %for.body161
  %131 = load i32, ptr %j, align 4, !tbaa !8
  %inc165 = add nsw i32 %131, 1
  store i32 %inc165, ptr %j, align 4, !tbaa !8
  br label %for.cond158, !llvm.loop !25

for.end166:                                       ; preds = %for.cond158
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond167

for.cond167:                                      ; preds = %for.inc173, %for.end166
  %132 = load i32, ptr %i, align 4, !tbaa !8
  %133 = load i32, ptr %m, align 4, !tbaa !8
  %cmp168 = icmp slt i32 %132, %133
  br i1 %cmp168, label %for.body170, label %for.end175

for.body170:                                      ; preds = %for.cond167
  %134 = load ptr, ptr %jmatch, align 8, !tbaa !4
  %135 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom171 = sext i32 %135 to i64
  %arrayidx172 = getelementptr inbounds i32, ptr %134, i64 %idxprom171
  store i32 -1, ptr %arrayidx172, align 4, !tbaa !8
  br label %for.inc173

for.inc173:                                       ; preds = %for.body170
  %136 = load i32, ptr %i, align 4, !tbaa !8
  %inc174 = add nsw i32 %136, 1
  store i32 %inc174, ptr %i, align 4, !tbaa !8
  br label %for.cond167, !llvm.loop !26

for.end175:                                       ; preds = %for.cond167
  %137 = load i32, ptr %n, align 4, !tbaa !8
  %138 = load i32, ptr %seed.addr, align 4, !tbaa !8
  %call176 = call ptr @cs_ci_randperm(i32 noundef %137, i32 noundef %138)
  store ptr %call176, ptr %q, align 8, !tbaa !4
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond177

for.cond177:                                      ; preds = %for.inc188, %for.end175
  %139 = load i32, ptr %k, align 4, !tbaa !8
  %140 = load i32, ptr %n, align 4, !tbaa !8
  %cmp178 = icmp slt i32 %139, %140
  br i1 %cmp178, label %for.body180, label %for.end190

for.body180:                                      ; preds = %for.cond177
  %141 = load ptr, ptr %q, align 8, !tbaa !4
  %tobool181 = icmp ne ptr %141, null
  br i1 %tobool181, label %cond.true182, label %cond.false185

cond.true182:                                     ; preds = %for.body180
  %142 = load ptr, ptr %q, align 8, !tbaa !4
  %143 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom183 = sext i32 %143 to i64
  %arrayidx184 = getelementptr inbounds i32, ptr %142, i64 %idxprom183
  %144 = load i32, ptr %arrayidx184, align 4, !tbaa !8
  br label %cond.end186

cond.false185:                                    ; preds = %for.body180
  %145 = load i32, ptr %k, align 4, !tbaa !8
  br label %cond.end186

cond.end186:                                      ; preds = %cond.false185, %cond.true182
  %cond187 = phi i32 [ %144, %cond.true182 ], [ %145, %cond.false185 ]
  %146 = load ptr, ptr %C, align 8, !tbaa !4
  %147 = load ptr, ptr %jmatch, align 8, !tbaa !4
  %148 = load ptr, ptr %cheap, align 8, !tbaa !4
  %149 = load ptr, ptr %w, align 8, !tbaa !4
  %150 = load ptr, ptr %js, align 8, !tbaa !4
  %151 = load ptr, ptr %is, align 8, !tbaa !4
  %152 = load ptr, ptr %ps, align 8, !tbaa !4
  call void @cs_augment(i32 noundef %cond187, ptr noundef %146, ptr noundef %147, ptr noundef %148, ptr noundef %149, ptr noundef %150, ptr noundef %151, ptr noundef %152)
  br label %for.inc188

for.inc188:                                       ; preds = %cond.end186
  %153 = load i32, ptr %k, align 4, !tbaa !8
  %inc189 = add nsw i32 %153, 1
  store i32 %inc189, ptr %k, align 4, !tbaa !8
  br label %for.cond177, !llvm.loop !27

for.end190:                                       ; preds = %for.cond177
  %154 = load ptr, ptr %q, align 8, !tbaa !4
  %call191 = call ptr @cs_ci_free(ptr noundef %154)
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond192

for.cond192:                                      ; preds = %for.inc198, %for.end190
  %155 = load i32, ptr %j, align 4, !tbaa !8
  %156 = load i32, ptr %n, align 4, !tbaa !8
  %cmp193 = icmp slt i32 %155, %156
  br i1 %cmp193, label %for.body195, label %for.end200

for.body195:                                      ; preds = %for.cond192
  %157 = load ptr, ptr %imatch, align 8, !tbaa !4
  %158 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom196 = sext i32 %158 to i64
  %arrayidx197 = getelementptr inbounds i32, ptr %157, i64 %idxprom196
  store i32 -1, ptr %arrayidx197, align 4, !tbaa !8
  br label %for.inc198

for.inc198:                                       ; preds = %for.body195
  %159 = load i32, ptr %j, align 4, !tbaa !8
  %inc199 = add nsw i32 %159, 1
  store i32 %inc199, ptr %j, align 4, !tbaa !8
  br label %for.cond192, !llvm.loop !28

for.end200:                                       ; preds = %for.cond192
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond201

for.cond201:                                      ; preds = %for.inc215, %for.end200
  %160 = load i32, ptr %i, align 4, !tbaa !8
  %161 = load i32, ptr %m, align 4, !tbaa !8
  %cmp202 = icmp slt i32 %160, %161
  br i1 %cmp202, label %for.body204, label %for.end217

for.body204:                                      ; preds = %for.cond201
  %162 = load ptr, ptr %jmatch, align 8, !tbaa !4
  %163 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom205 = sext i32 %163 to i64
  %arrayidx206 = getelementptr inbounds i32, ptr %162, i64 %idxprom205
  %164 = load i32, ptr %arrayidx206, align 4, !tbaa !8
  %cmp207 = icmp sge i32 %164, 0
  br i1 %cmp207, label %if.then209, label %if.end214

if.then209:                                       ; preds = %for.body204
  %165 = load i32, ptr %i, align 4, !tbaa !8
  %166 = load ptr, ptr %imatch, align 8, !tbaa !4
  %167 = load ptr, ptr %jmatch, align 8, !tbaa !4
  %168 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom210 = sext i32 %168 to i64
  %arrayidx211 = getelementptr inbounds i32, ptr %167, i64 %idxprom210
  %169 = load i32, ptr %arrayidx211, align 4, !tbaa !8
  %idxprom212 = sext i32 %169 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %166, i64 %idxprom212
  store i32 %165, ptr %arrayidx213, align 4, !tbaa !8
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %for.body204
  br label %for.inc215

for.inc215:                                       ; preds = %if.end214
  %170 = load i32, ptr %i, align 4, !tbaa !8
  %inc216 = add nsw i32 %170, 1
  store i32 %inc216, ptr %i, align 4, !tbaa !8
  br label %for.cond201, !llvm.loop !29

for.end217:                                       ; preds = %for.cond201
  %171 = load ptr, ptr %jimatch, align 8, !tbaa !4
  %172 = load i32, ptr %m2, align 4, !tbaa !8
  %173 = load i32, ptr %n2, align 4, !tbaa !8
  %cmp218 = icmp slt i32 %172, %173
  br i1 %cmp218, label %cond.true220, label %cond.false221

cond.true220:                                     ; preds = %for.end217
  %174 = load ptr, ptr %C, align 8, !tbaa !4
  br label %cond.end222

cond.false221:                                    ; preds = %for.end217
  br label %cond.end222

cond.end222:                                      ; preds = %cond.false221, %cond.true220
  %cond223 = phi ptr [ %174, %cond.true220 ], [ null, %cond.false221 ]
  %175 = load ptr, ptr %w, align 8, !tbaa !4
  %call224 = call ptr @cs_ci_idone(ptr noundef %171, ptr noundef %cond223, ptr noundef %175, i32 noundef 1)
  store ptr %call224, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end222, %cond.end132, %cond.end102, %for.end76, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %C) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %imatch) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %jmatch) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Cp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ai) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ps) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %is) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %js) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %cheap) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %jimatch) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ap) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %176 = load ptr, ptr %retval, align 8
  ret ptr %176
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @cs_ci_calloc(i32 noundef, i64 noundef) #2

declare ptr @cs_ci_idone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare ptr @cs_ci_transpose(ptr noundef, i32 noundef) #2

declare ptr @cs_ci_malloc(i32 noundef, i64 noundef) #2

declare ptr @cs_ci_randperm(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define internal void @cs_augment(i32 noundef %k, ptr noundef %A, ptr noundef %jmatch, ptr noundef %cheap, ptr noundef %w, ptr noundef %js, ptr noundef %is, ptr noundef %ps) #3 {
entry:
  %k.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %jmatch.addr = alloca ptr, align 8
  %cheap.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %js.addr = alloca ptr, align 8
  %is.addr = alloca ptr, align 8
  %ps.addr = alloca ptr, align 8
  %found = alloca i32, align 4
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %Ap = alloca ptr, align 8
  %Ai = alloca ptr, align 8
  %head = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4, !tbaa !8
  store ptr %A, ptr %A.addr, align 8, !tbaa !4
  store ptr %jmatch, ptr %jmatch.addr, align 8, !tbaa !4
  store ptr %cheap, ptr %cheap.addr, align 8, !tbaa !4
  store ptr %w, ptr %w.addr, align 8, !tbaa !4
  store ptr %js, ptr %js.addr, align 8, !tbaa !4
  store ptr %is, ptr %is.addr, align 8, !tbaa !4
  store ptr %ps, ptr %ps.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #4
  store i32 0, ptr %found, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 -1, ptr %i, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ap) #4
  %0 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %p1 = getelementptr inbounds %struct.cs_ci_sparse, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %p1, align 8, !tbaa !14
  store ptr %1, ptr %Ap, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %Ai) #4
  %2 = load ptr, ptr %A.addr, align 8, !tbaa !4
  %i2 = getelementptr inbounds %struct.cs_ci_sparse, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %i2, align 8, !tbaa !15
  store ptr %3, ptr %Ai, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %head) #4
  store i32 0, ptr %head, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  %4 = load i32, ptr %k.addr, align 4, !tbaa !8
  %5 = load ptr, ptr %js.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 0
  store i32 %4, ptr %arrayidx, align 4, !tbaa !8
  br label %while.cond

while.cond:                                       ; preds = %if.end68, %entry
  %6 = load i32, ptr %head, align 4, !tbaa !8
  %cmp = icmp sge i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %js.addr, align 8, !tbaa !4
  %8 = load i32, ptr %head, align 4, !tbaa !8
  %idxprom = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx3, align 4, !tbaa !8
  store i32 %9, ptr %j, align 4, !tbaa !8
  %10 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %11 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4, !tbaa !8
  %13 = load i32, ptr %k.addr, align 4, !tbaa !8
  %cmp6 = icmp ne i32 %12, %13
  br i1 %cmp6, label %if.then, label %if.end29

if.then:                                          ; preds = %while.body
  %14 = load i32, ptr %k.addr, align 4, !tbaa !8
  %15 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %16 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 %idxprom7
  store i32 %14, ptr %arrayidx8, align 4, !tbaa !8
  %17 = load ptr, ptr %cheap.addr, align 8, !tbaa !4
  %18 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %17, i64 %idxprom9
  %19 = load i32, ptr %arrayidx10, align 4, !tbaa !8
  store i32 %19, ptr %p, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, ptr %p, align 4, !tbaa !8
  %21 = load ptr, ptr %Ap, align 8, !tbaa !4
  %22 = load i32, ptr %j, align 4, !tbaa !8
  %add = add nsw i32 %22, 1
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 %idxprom11
  %23 = load i32, ptr %arrayidx12, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %20, %23
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %24 = load i32, ptr %found, align 4, !tbaa !8
  %tobool = icmp ne i32 %24, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %25 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %25, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %26 = load ptr, ptr %Ai, align 8, !tbaa !4
  %27 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom14 = sext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %26, i64 %idxprom14
  %28 = load i32, ptr %arrayidx15, align 4, !tbaa !8
  store i32 %28, ptr %i, align 4, !tbaa !8
  %29 = load ptr, ptr %jmatch.addr, align 8, !tbaa !4
  %30 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %29, i64 %idxprom16
  %31 = load i32, ptr %arrayidx17, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %31, -1
  %conv = zext i1 %cmp18 to i32
  store i32 %conv, ptr %found, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %p, align 4, !tbaa !8
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %p, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %land.end
  %33 = load i32, ptr %p, align 4, !tbaa !8
  %34 = load ptr, ptr %cheap.addr, align 8, !tbaa !4
  %35 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom19 = sext i32 %35 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %34, i64 %idxprom19
  store i32 %33, ptr %arrayidx20, align 4, !tbaa !8
  %36 = load i32, ptr %found, align 4, !tbaa !8
  %tobool21 = icmp ne i32 %36, 0
  br i1 %tobool21, label %if.then22, label %if.end

if.then22:                                        ; preds = %for.end
  %37 = load i32, ptr %i, align 4, !tbaa !8
  %38 = load ptr, ptr %is.addr, align 8, !tbaa !4
  %39 = load i32, ptr %head, align 4, !tbaa !8
  %idxprom23 = sext i32 %39 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %38, i64 %idxprom23
  store i32 %37, ptr %arrayidx24, align 4, !tbaa !8
  br label %while.end

if.end:                                           ; preds = %for.end
  %40 = load ptr, ptr %Ap, align 8, !tbaa !4
  %41 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom25 = sext i32 %41 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %40, i64 %idxprom25
  %42 = load i32, ptr %arrayidx26, align 4, !tbaa !8
  %43 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %44 = load i32, ptr %head, align 4, !tbaa !8
  %idxprom27 = sext i32 %44 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %43, i64 %idxprom27
  store i32 %42, ptr %arrayidx28, align 4, !tbaa !8
  br label %if.end29

if.end29:                                         ; preds = %if.end, %while.body
  %45 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %46 = load i32, ptr %head, align 4, !tbaa !8
  %idxprom30 = sext i32 %46 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %45, i64 %idxprom30
  %47 = load i32, ptr %arrayidx31, align 4, !tbaa !8
  store i32 %47, ptr %p, align 4, !tbaa !8
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc59, %if.end29
  %48 = load i32, ptr %p, align 4, !tbaa !8
  %49 = load ptr, ptr %Ap, align 8, !tbaa !4
  %50 = load i32, ptr %j, align 4, !tbaa !8
  %add33 = add nsw i32 %50, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %49, i64 %idxprom34
  %51 = load i32, ptr %arrayidx35, align 4, !tbaa !8
  %cmp36 = icmp slt i32 %48, %51
  br i1 %cmp36, label %for.body38, label %for.end61

for.body38:                                       ; preds = %for.cond32
  %52 = load ptr, ptr %Ai, align 8, !tbaa !4
  %53 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom39 = sext i32 %53 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %52, i64 %idxprom39
  %54 = load i32, ptr %arrayidx40, align 4, !tbaa !8
  store i32 %54, ptr %i, align 4, !tbaa !8
  %55 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %56 = load ptr, ptr %jmatch.addr, align 8, !tbaa !4
  %57 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom41 = sext i32 %57 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %56, i64 %idxprom41
  %58 = load i32, ptr %arrayidx42, align 4, !tbaa !8
  %idxprom43 = sext i32 %58 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %55, i64 %idxprom43
  %59 = load i32, ptr %arrayidx44, align 4, !tbaa !8
  %60 = load i32, ptr %k.addr, align 4, !tbaa !8
  %cmp45 = icmp eq i32 %59, %60
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.body38
  br label %for.inc59

if.end48:                                         ; preds = %for.body38
  %61 = load i32, ptr %p, align 4, !tbaa !8
  %add49 = add nsw i32 %61, 1
  %62 = load ptr, ptr %ps.addr, align 8, !tbaa !4
  %63 = load i32, ptr %head, align 4, !tbaa !8
  %idxprom50 = sext i32 %63 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %62, i64 %idxprom50
  store i32 %add49, ptr %arrayidx51, align 4, !tbaa !8
  %64 = load i32, ptr %i, align 4, !tbaa !8
  %65 = load ptr, ptr %is.addr, align 8, !tbaa !4
  %66 = load i32, ptr %head, align 4, !tbaa !8
  %idxprom52 = sext i32 %66 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %65, i64 %idxprom52
  store i32 %64, ptr %arrayidx53, align 4, !tbaa !8
  %67 = load ptr, ptr %jmatch.addr, align 8, !tbaa !4
  %68 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom54 = sext i32 %68 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %67, i64 %idxprom54
  %69 = load i32, ptr %arrayidx55, align 4, !tbaa !8
  %70 = load ptr, ptr %js.addr, align 8, !tbaa !4
  %71 = load i32, ptr %head, align 4, !tbaa !8
  %inc56 = add nsw i32 %71, 1
  store i32 %inc56, ptr %head, align 4, !tbaa !8
  %idxprom57 = sext i32 %inc56 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %70, i64 %idxprom57
  store i32 %69, ptr %arrayidx58, align 4, !tbaa !8
  br label %for.end61

for.inc59:                                        ; preds = %if.then47
  %72 = load i32, ptr %p, align 4, !tbaa !8
  %inc60 = add nsw i32 %72, 1
  store i32 %inc60, ptr %p, align 4, !tbaa !8
  br label %for.cond32, !llvm.loop !31

for.end61:                                        ; preds = %if.end48, %for.cond32
  %73 = load i32, ptr %p, align 4, !tbaa !8
  %74 = load ptr, ptr %Ap, align 8, !tbaa !4
  %75 = load i32, ptr %j, align 4, !tbaa !8
  %add62 = add nsw i32 %75, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %74, i64 %idxprom63
  %76 = load i32, ptr %arrayidx64, align 4, !tbaa !8
  %cmp65 = icmp eq i32 %73, %76
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.end61
  %77 = load i32, ptr %head, align 4, !tbaa !8
  %dec = add nsw i32 %77, -1
  store i32 %dec, ptr %head, align 4, !tbaa !8
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %for.end61
  br label %while.cond, !llvm.loop !32

while.end:                                        ; preds = %if.then22, %while.cond
  %78 = load i32, ptr %found, align 4, !tbaa !8
  %tobool69 = icmp ne i32 %78, 0
  br i1 %tobool69, label %if.then70, label %if.end84

if.then70:                                        ; preds = %while.end
  %79 = load i32, ptr %head, align 4, !tbaa !8
  store i32 %79, ptr %p, align 4, !tbaa !8
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc81, %if.then70
  %80 = load i32, ptr %p, align 4, !tbaa !8
  %cmp72 = icmp sge i32 %80, 0
  br i1 %cmp72, label %for.body74, label %for.end83

for.body74:                                       ; preds = %for.cond71
  %81 = load ptr, ptr %js.addr, align 8, !tbaa !4
  %82 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom75 = sext i32 %82 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %81, i64 %idxprom75
  %83 = load i32, ptr %arrayidx76, align 4, !tbaa !8
  %84 = load ptr, ptr %jmatch.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %is.addr, align 8, !tbaa !4
  %86 = load i32, ptr %p, align 4, !tbaa !8
  %idxprom77 = sext i32 %86 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %85, i64 %idxprom77
  %87 = load i32, ptr %arrayidx78, align 4, !tbaa !8
  %idxprom79 = sext i32 %87 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %84, i64 %idxprom79
  store i32 %83, ptr %arrayidx80, align 4, !tbaa !8
  br label %for.inc81

for.inc81:                                        ; preds = %for.body74
  %88 = load i32, ptr %p, align 4, !tbaa !8
  %dec82 = add nsw i32 %88, -1
  store i32 %dec82, ptr %p, align 4, !tbaa !8
  br label %for.cond71, !llvm.loop !33

for.end83:                                        ; preds = %for.cond71
  br label %if.end84

if.end84:                                         ; preds = %for.end83, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %head) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ai) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %Ap) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #4
  ret void
}

declare ptr @cs_ci_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 40}
!11 = !{!"cs_ci_sparse", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 16, !5, i64 24, !5, i64 32, !9, i64 40}
!12 = !{!11, !9, i64 8}
!13 = !{!11, !9, i64 4}
!14 = !{!11, !5, i64 16}
!15 = !{!11, !5, i64 24}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
