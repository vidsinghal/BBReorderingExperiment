; ModuleID = 'samples/282.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zlanhe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define double @zlanhe_(ptr noundef %norm, ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %work) #0 {
entry:
  %norm.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %ret_val = alloca double, align 8
  %d__1 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca double, align 8
  %absa = alloca double, align 8
  %scale = alloca double, align 8
  %value = alloca double, align 8
  store ptr %norm, ptr %norm.addr, align 8, !tbaa !4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret_val) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %absa) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %scale) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #5
  %0 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %a_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4, !tbaa !8
  %3 = load i32, ptr %a_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, ptr %value, align 8, !tbaa !10
  br label %if.end280

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %norm.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then1, label %if.else72

if.then1:                                         ; preds = %if.else
  store double 0.000000e+00, ptr %value, align 8, !tbaa !10
  %9 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call2 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.else29

if.then4:                                         ; preds = %if.then1
  %10 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %if.then4
  %12 = load i32, ptr %j, align 4, !tbaa !8
  %13 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp5 = icmp sle i32 %12, %13
  br i1 %cmp5, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  %14 = load i32, ptr %j, align 4, !tbaa !8
  %sub = sub nsw i32 %14, 1
  store i32 %sub, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %15 = load i32, ptr %i__, align 4, !tbaa !8
  %16 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp7 = icmp sle i32 %15, %16
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %18 = load i32, ptr %i__, align 4, !tbaa !8
  %19 = load i32, ptr %j, align 4, !tbaa !8
  %20 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %19, %20
  %add9 = add nsw i32 %18, %mul
  %idxprom = sext i32 %add9 to i64
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %17, i64 %idxprom
  %call10 = call double @z_abs(ptr noundef %arrayidx)
  store double %call10, ptr %sum, align 8, !tbaa !10
  %21 = load double, ptr %value, align 8, !tbaa !10
  %22 = load double, ptr %sum, align 8, !tbaa !10
  %cmp11 = fcmp olt double %21, %22
  br i1 %cmp11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body8
  %call12 = call i32 @disnan_(ptr noundef %sum)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %lor.lhs.false, %for.body8
  %23 = load double, ptr %sum, align 8, !tbaa !10
  store double %23, ptr %value, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then14, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond6, !llvm.loop !12

for.end:                                          ; preds = %for.cond6
  %25 = load i32, ptr %j, align 4, !tbaa !8
  %26 = load i32, ptr %j, align 4, !tbaa !8
  %27 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul15 = mul nsw i32 %26, %27
  %add16 = add nsw i32 %25, %mul15
  store i32 %add16, ptr %i__2, align 4, !tbaa !8
  %28 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %29 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom17 = sext i32 %29 to i64
  %arrayidx18 = getelementptr inbounds %struct.doublecomplex, ptr %28, i64 %idxprom17
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx18, i32 0, i32 0
  %30 = load double, ptr %r, align 8, !tbaa !14
  store double %30, ptr %d__1, align 8, !tbaa !10
  %31 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp19 = fcmp oge double %31, 0.000000e+00
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %32 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %33 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg = fneg double %33
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %32, %cond.true ], [ %fneg, %cond.false ]
  store double %cond, ptr %sum, align 8, !tbaa !10
  %34 = load double, ptr %value, align 8, !tbaa !10
  %35 = load double, ptr %sum, align 8, !tbaa !10
  %cmp20 = fcmp olt double %34, %35
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %cond.end
  %call22 = call i32 @disnan_(ptr noundef %sum)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %lor.lhs.false21, %cond.end
  %36 = load double, ptr %sum, align 8, !tbaa !10
  store double %36, ptr %value, align 8, !tbaa !10
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %lor.lhs.false21
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %37 = load i32, ptr %j, align 4, !tbaa !8
  %inc27 = add nsw i32 %37, 1
  store i32 %inc27, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end28:                                        ; preds = %for.cond
  br label %if.end71

if.else29:                                        ; preds = %if.then1
  %38 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  store i32 %39, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc68, %if.else29
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %41 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp31 = icmp sle i32 %40, %41
  br i1 %cmp31, label %for.body32, label %for.end70

for.body32:                                       ; preds = %for.cond30
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %43 = load i32, ptr %j, align 4, !tbaa !8
  %44 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul33 = mul nsw i32 %43, %44
  %add34 = add nsw i32 %42, %mul33
  store i32 %add34, ptr %i__2, align 4, !tbaa !8
  %45 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %46 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom35 = sext i32 %46 to i64
  %arrayidx36 = getelementptr inbounds %struct.doublecomplex, ptr %45, i64 %idxprom35
  %r37 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx36, i32 0, i32 0
  %47 = load double, ptr %r37, align 8, !tbaa !14
  store double %47, ptr %d__1, align 8, !tbaa !10
  %48 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp38 = fcmp oge double %48, 0.000000e+00
  br i1 %cmp38, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %for.body32
  %49 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end42

cond.false40:                                     ; preds = %for.body32
  %50 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg41 = fneg double %50
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false40, %cond.true39
  %cond43 = phi double [ %49, %cond.true39 ], [ %fneg41, %cond.false40 ]
  store double %cond43, ptr %sum, align 8, !tbaa !10
  %51 = load double, ptr %value, align 8, !tbaa !10
  %52 = load double, ptr %sum, align 8, !tbaa !10
  %cmp44 = fcmp olt double %51, %52
  br i1 %cmp44, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %cond.end42
  %call46 = call i32 @disnan_(ptr noundef %sum)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %lor.lhs.false45, %cond.end42
  %53 = load double, ptr %sum, align 8, !tbaa !10
  store double %53, ptr %value, align 8, !tbaa !10
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %lor.lhs.false45
  %54 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !8
  store i32 %55, ptr %i__2, align 4, !tbaa !8
  %56 = load i32, ptr %j, align 4, !tbaa !8
  %add50 = add nsw i32 %56, 1
  store i32 %add50, ptr %i__, align 4, !tbaa !8
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc65, %if.end49
  %57 = load i32, ptr %i__, align 4, !tbaa !8
  %58 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp52 = icmp sle i32 %57, %58
  br i1 %cmp52, label %for.body53, label %for.end67

for.body53:                                       ; preds = %for.cond51
  %59 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %60 = load i32, ptr %i__, align 4, !tbaa !8
  %61 = load i32, ptr %j, align 4, !tbaa !8
  %62 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul54 = mul nsw i32 %61, %62
  %add55 = add nsw i32 %60, %mul54
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds %struct.doublecomplex, ptr %59, i64 %idxprom56
  %call58 = call double @z_abs(ptr noundef %arrayidx57)
  store double %call58, ptr %sum, align 8, !tbaa !10
  %63 = load double, ptr %value, align 8, !tbaa !10
  %64 = load double, ptr %sum, align 8, !tbaa !10
  %cmp59 = fcmp olt double %63, %64
  br i1 %cmp59, label %if.then63, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %for.body53
  %call61 = call i32 @disnan_(ptr noundef %sum)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %lor.lhs.false60, %for.body53
  %65 = load double, ptr %sum, align 8, !tbaa !10
  store double %65, ptr %value, align 8, !tbaa !10
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %lor.lhs.false60
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %66 = load i32, ptr %i__, align 4, !tbaa !8
  %inc66 = add nsw i32 %66, 1
  store i32 %inc66, ptr %i__, align 4, !tbaa !8
  br label %for.cond51, !llvm.loop !17

for.end67:                                        ; preds = %for.cond51
  br label %for.inc68

for.inc68:                                        ; preds = %for.end67
  %67 = load i32, ptr %j, align 4, !tbaa !8
  %inc69 = add nsw i32 %67, 1
  store i32 %inc69, ptr %j, align 4, !tbaa !8
  br label %for.cond30, !llvm.loop !18

for.end70:                                        ; preds = %for.cond30
  br label %if.end71

if.end71:                                         ; preds = %for.end70, %for.end28
  br label %if.end279

if.else72:                                        ; preds = %if.else
  %68 = load ptr, ptr %norm.addr, align 8, !tbaa !4
  %call73 = call i32 @lsame_(ptr noundef %68, ptr noundef @.str.2)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then81, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.else72
  %69 = load ptr, ptr %norm.addr, align 8, !tbaa !4
  %call76 = call i32 @lsame_(ptr noundef %69, ptr noundef @.str.3)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then81, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false75
  %70 = load ptr, ptr %norm.addr, align 8, !tbaa !4
  %71 = load i8, ptr %70, align 1, !tbaa !19
  %conv = zext i8 %71 to i32
  %cmp79 = icmp eq i32 %conv, 49
  br i1 %cmp79, label %if.then81, label %if.else197

if.then81:                                        ; preds = %lor.lhs.false78, %lor.lhs.false75, %if.else72
  store double 0.000000e+00, ptr %value, align 8, !tbaa !10
  %72 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call82 = call i32 @lsame_(ptr noundef %72, ptr noundef @.str.1)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then84, label %if.else140

if.then84:                                        ; preds = %if.then81
  %73 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  store i32 %74, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc121, %if.then84
  %75 = load i32, ptr %j, align 4, !tbaa !8
  %76 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp86 = icmp sle i32 %75, %76
  br i1 %cmp86, label %for.body88, label %for.end123

for.body88:                                       ; preds = %for.cond85
  store double 0.000000e+00, ptr %sum, align 8, !tbaa !10
  %77 = load i32, ptr %j, align 4, !tbaa !8
  %sub89 = sub nsw i32 %77, 1
  store i32 %sub89, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc103, %for.body88
  %78 = load i32, ptr %i__, align 4, !tbaa !8
  %79 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp91 = icmp sle i32 %78, %79
  br i1 %cmp91, label %for.body93, label %for.end105

for.body93:                                       ; preds = %for.cond90
  %80 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %81 = load i32, ptr %i__, align 4, !tbaa !8
  %82 = load i32, ptr %j, align 4, !tbaa !8
  %83 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul94 = mul nsw i32 %82, %83
  %add95 = add nsw i32 %81, %mul94
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds %struct.doublecomplex, ptr %80, i64 %idxprom96
  %call98 = call double @z_abs(ptr noundef %arrayidx97)
  store double %call98, ptr %absa, align 8, !tbaa !10
  %84 = load double, ptr %absa, align 8, !tbaa !10
  %85 = load double, ptr %sum, align 8, !tbaa !10
  %add99 = fadd double %85, %84
  store double %add99, ptr %sum, align 8, !tbaa !10
  %86 = load double, ptr %absa, align 8, !tbaa !10
  %87 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %88 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom100 = sext i32 %88 to i64
  %arrayidx101 = getelementptr inbounds double, ptr %87, i64 %idxprom100
  %89 = load double, ptr %arrayidx101, align 8, !tbaa !10
  %add102 = fadd double %89, %86
  store double %add102, ptr %arrayidx101, align 8, !tbaa !10
  br label %for.inc103

for.inc103:                                       ; preds = %for.body93
  %90 = load i32, ptr %i__, align 4, !tbaa !8
  %inc104 = add nsw i32 %90, 1
  store i32 %inc104, ptr %i__, align 4, !tbaa !8
  br label %for.cond90, !llvm.loop !20

for.end105:                                       ; preds = %for.cond90
  %91 = load i32, ptr %j, align 4, !tbaa !8
  %92 = load i32, ptr %j, align 4, !tbaa !8
  %93 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul106 = mul nsw i32 %92, %93
  %add107 = add nsw i32 %91, %mul106
  store i32 %add107, ptr %i__2, align 4, !tbaa !8
  %94 = load double, ptr %sum, align 8, !tbaa !10
  %95 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %96 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom108 = sext i32 %96 to i64
  %arrayidx109 = getelementptr inbounds %struct.doublecomplex, ptr %95, i64 %idxprom108
  %r110 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx109, i32 0, i32 0
  %97 = load double, ptr %r110, align 8, !tbaa !14
  store double %97, ptr %d__1, align 8, !tbaa !10
  %98 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp111 = fcmp oge double %98, 0.000000e+00
  br i1 %cmp111, label %cond.true113, label %cond.false114

cond.true113:                                     ; preds = %for.end105
  %99 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end116

cond.false114:                                    ; preds = %for.end105
  %100 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg115 = fneg double %100
  br label %cond.end116

cond.end116:                                      ; preds = %cond.false114, %cond.true113
  %cond117 = phi double [ %99, %cond.true113 ], [ %fneg115, %cond.false114 ]
  %add118 = fadd double %94, %cond117
  %101 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %102 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom119 = sext i32 %102 to i64
  %arrayidx120 = getelementptr inbounds double, ptr %101, i64 %idxprom119
  store double %add118, ptr %arrayidx120, align 8, !tbaa !10
  br label %for.inc121

for.inc121:                                       ; preds = %cond.end116
  %103 = load i32, ptr %j, align 4, !tbaa !8
  %inc122 = add nsw i32 %103, 1
  store i32 %inc122, ptr %j, align 4, !tbaa !8
  br label %for.cond85, !llvm.loop !21

for.end123:                                       ; preds = %for.cond85
  %104 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  store i32 %105, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc137, %for.end123
  %106 = load i32, ptr %i__, align 4, !tbaa !8
  %107 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp125 = icmp sle i32 %106, %107
  br i1 %cmp125, label %for.body127, label %for.end139

for.body127:                                      ; preds = %for.cond124
  %108 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %109 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom128 = sext i32 %109 to i64
  %arrayidx129 = getelementptr inbounds double, ptr %108, i64 %idxprom128
  %110 = load double, ptr %arrayidx129, align 8, !tbaa !10
  store double %110, ptr %sum, align 8, !tbaa !10
  %111 = load double, ptr %value, align 8, !tbaa !10
  %112 = load double, ptr %sum, align 8, !tbaa !10
  %cmp130 = fcmp olt double %111, %112
  br i1 %cmp130, label %if.then135, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %for.body127
  %call133 = call i32 @disnan_(ptr noundef %sum)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then135, label %if.end136

if.then135:                                       ; preds = %lor.lhs.false132, %for.body127
  %113 = load double, ptr %sum, align 8, !tbaa !10
  store double %113, ptr %value, align 8, !tbaa !10
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %lor.lhs.false132
  br label %for.inc137

for.inc137:                                       ; preds = %if.end136
  %114 = load i32, ptr %i__, align 4, !tbaa !8
  %inc138 = add nsw i32 %114, 1
  store i32 %inc138, ptr %i__, align 4, !tbaa !8
  br label %for.cond124, !llvm.loop !22

for.end139:                                       ; preds = %for.cond124
  br label %if.end196

if.else140:                                       ; preds = %if.then81
  %115 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  store i32 %116, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc147, %if.else140
  %117 = load i32, ptr %i__, align 4, !tbaa !8
  %118 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp142 = icmp sle i32 %117, %118
  br i1 %cmp142, label %for.body144, label %for.end149

for.body144:                                      ; preds = %for.cond141
  %119 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %120 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom145 = sext i32 %120 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %119, i64 %idxprom145
  store double 0.000000e+00, ptr %arrayidx146, align 8, !tbaa !10
  br label %for.inc147

for.inc147:                                       ; preds = %for.body144
  %121 = load i32, ptr %i__, align 4, !tbaa !8
  %inc148 = add nsw i32 %121, 1
  store i32 %inc148, ptr %i__, align 4, !tbaa !8
  br label %for.cond141, !llvm.loop !23

for.end149:                                       ; preds = %for.cond141
  %122 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %123 = load i32, ptr %122, align 4, !tbaa !8
  store i32 %123, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond150

for.cond150:                                      ; preds = %for.inc193, %for.end149
  %124 = load i32, ptr %j, align 4, !tbaa !8
  %125 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp151 = icmp sle i32 %124, %125
  br i1 %cmp151, label %for.body153, label %for.end195

for.body153:                                      ; preds = %for.cond150
  %126 = load i32, ptr %j, align 4, !tbaa !8
  %127 = load i32, ptr %j, align 4, !tbaa !8
  %128 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul154 = mul nsw i32 %127, %128
  %add155 = add nsw i32 %126, %mul154
  store i32 %add155, ptr %i__2, align 4, !tbaa !8
  %129 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %130 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom156 = sext i32 %130 to i64
  %arrayidx157 = getelementptr inbounds double, ptr %129, i64 %idxprom156
  %131 = load double, ptr %arrayidx157, align 8, !tbaa !10
  %132 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %133 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom158 = sext i32 %133 to i64
  %arrayidx159 = getelementptr inbounds %struct.doublecomplex, ptr %132, i64 %idxprom158
  %r160 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx159, i32 0, i32 0
  %134 = load double, ptr %r160, align 8, !tbaa !14
  store double %134, ptr %d__1, align 8, !tbaa !10
  %135 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp161 = fcmp oge double %135, 0.000000e+00
  br i1 %cmp161, label %cond.true163, label %cond.false164

cond.true163:                                     ; preds = %for.body153
  %136 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end166

cond.false164:                                    ; preds = %for.body153
  %137 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg165 = fneg double %137
  br label %cond.end166

cond.end166:                                      ; preds = %cond.false164, %cond.true163
  %cond167 = phi double [ %136, %cond.true163 ], [ %fneg165, %cond.false164 ]
  %add168 = fadd double %131, %cond167
  store double %add168, ptr %sum, align 8, !tbaa !10
  %138 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %139 = load i32, ptr %138, align 4, !tbaa !8
  store i32 %139, ptr %i__2, align 4, !tbaa !8
  %140 = load i32, ptr %j, align 4, !tbaa !8
  %add169 = add nsw i32 %140, 1
  store i32 %add169, ptr %i__, align 4, !tbaa !8
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc183, %cond.end166
  %141 = load i32, ptr %i__, align 4, !tbaa !8
  %142 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp171 = icmp sle i32 %141, %142
  br i1 %cmp171, label %for.body173, label %for.end185

for.body173:                                      ; preds = %for.cond170
  %143 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %144 = load i32, ptr %i__, align 4, !tbaa !8
  %145 = load i32, ptr %j, align 4, !tbaa !8
  %146 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul174 = mul nsw i32 %145, %146
  %add175 = add nsw i32 %144, %mul174
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds %struct.doublecomplex, ptr %143, i64 %idxprom176
  %call178 = call double @z_abs(ptr noundef %arrayidx177)
  store double %call178, ptr %absa, align 8, !tbaa !10
  %147 = load double, ptr %absa, align 8, !tbaa !10
  %148 = load double, ptr %sum, align 8, !tbaa !10
  %add179 = fadd double %148, %147
  store double %add179, ptr %sum, align 8, !tbaa !10
  %149 = load double, ptr %absa, align 8, !tbaa !10
  %150 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %151 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom180 = sext i32 %151 to i64
  %arrayidx181 = getelementptr inbounds double, ptr %150, i64 %idxprom180
  %152 = load double, ptr %arrayidx181, align 8, !tbaa !10
  %add182 = fadd double %152, %149
  store double %add182, ptr %arrayidx181, align 8, !tbaa !10
  br label %for.inc183

for.inc183:                                       ; preds = %for.body173
  %153 = load i32, ptr %i__, align 4, !tbaa !8
  %inc184 = add nsw i32 %153, 1
  store i32 %inc184, ptr %i__, align 4, !tbaa !8
  br label %for.cond170, !llvm.loop !24

for.end185:                                       ; preds = %for.cond170
  %154 = load double, ptr %value, align 8, !tbaa !10
  %155 = load double, ptr %sum, align 8, !tbaa !10
  %cmp186 = fcmp olt double %154, %155
  br i1 %cmp186, label %if.then191, label %lor.lhs.false188

lor.lhs.false188:                                 ; preds = %for.end185
  %call189 = call i32 @disnan_(ptr noundef %sum)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then191, label %if.end192

if.then191:                                       ; preds = %lor.lhs.false188, %for.end185
  %156 = load double, ptr %sum, align 8, !tbaa !10
  store double %156, ptr %value, align 8, !tbaa !10
  br label %if.end192

if.end192:                                        ; preds = %if.then191, %lor.lhs.false188
  br label %for.inc193

for.inc193:                                       ; preds = %if.end192
  %157 = load i32, ptr %j, align 4, !tbaa !8
  %inc194 = add nsw i32 %157, 1
  store i32 %inc194, ptr %j, align 4, !tbaa !8
  br label %for.cond150, !llvm.loop !25

for.end195:                                       ; preds = %for.cond150
  br label %if.end196

if.end196:                                        ; preds = %for.end195, %for.end139
  br label %if.end278

if.else197:                                       ; preds = %lor.lhs.false78
  %158 = load ptr, ptr %norm.addr, align 8, !tbaa !4
  %call198 = call i32 @lsame_(ptr noundef %158, ptr noundef @.str.4)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then203, label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %if.else197
  %159 = load ptr, ptr %norm.addr, align 8, !tbaa !4
  %call201 = call i32 @lsame_(ptr noundef %159, ptr noundef @.str.5)
  %tobool202 = icmp ne i32 %call201, 0
  br i1 %tobool202, label %if.then203, label %if.end277

if.then203:                                       ; preds = %lor.lhs.false200, %if.else197
  store double 0.000000e+00, ptr %scale, align 8, !tbaa !10
  store double 1.000000e+00, ptr %sum, align 8, !tbaa !10
  %160 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call204 = call i32 @lsame_(ptr noundef %160, ptr noundef @.str.1)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then206, label %if.else220

if.then206:                                       ; preds = %if.then203
  %161 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %162 = load i32, ptr %161, align 4, !tbaa !8
  store i32 %162, ptr %i__1, align 4, !tbaa !8
  store i32 2, ptr %j, align 4, !tbaa !8
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc217, %if.then206
  %163 = load i32, ptr %j, align 4, !tbaa !8
  %164 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp208 = icmp sle i32 %163, %164
  br i1 %cmp208, label %for.body210, label %for.end219

for.body210:                                      ; preds = %for.cond207
  %165 = load i32, ptr %j, align 4, !tbaa !8
  %sub211 = sub nsw i32 %165, 1
  store i32 %sub211, ptr %i__2, align 4, !tbaa !8
  %166 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %167 = load i32, ptr %j, align 4, !tbaa !8
  %168 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul212 = mul nsw i32 %167, %168
  %add213 = add nsw i32 %mul212, 1
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds %struct.doublecomplex, ptr %166, i64 %idxprom214
  %call216 = call i32 @zlassq_(ptr noundef %i__2, ptr noundef %arrayidx215, ptr noundef @c__1, ptr noundef %scale, ptr noundef %sum)
  br label %for.inc217

for.inc217:                                       ; preds = %for.body210
  %169 = load i32, ptr %j, align 4, !tbaa !8
  %inc218 = add nsw i32 %169, 1
  store i32 %inc218, ptr %j, align 4, !tbaa !8
  br label %for.cond207, !llvm.loop !26

for.end219:                                       ; preds = %for.cond207
  br label %if.end236

if.else220:                                       ; preds = %if.then203
  %170 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %171 = load i32, ptr %170, align 4, !tbaa !8
  %sub221 = sub nsw i32 %171, 1
  store i32 %sub221, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond222

for.cond222:                                      ; preds = %for.inc233, %if.else220
  %172 = load i32, ptr %j, align 4, !tbaa !8
  %173 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp223 = icmp sle i32 %172, %173
  br i1 %cmp223, label %for.body225, label %for.end235

for.body225:                                      ; preds = %for.cond222
  %174 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %175 = load i32, ptr %174, align 4, !tbaa !8
  %176 = load i32, ptr %j, align 4, !tbaa !8
  %sub226 = sub nsw i32 %175, %176
  store i32 %sub226, ptr %i__2, align 4, !tbaa !8
  %177 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %178 = load i32, ptr %j, align 4, !tbaa !8
  %add227 = add nsw i32 %178, 1
  %179 = load i32, ptr %j, align 4, !tbaa !8
  %180 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul228 = mul nsw i32 %179, %180
  %add229 = add nsw i32 %add227, %mul228
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds %struct.doublecomplex, ptr %177, i64 %idxprom230
  %call232 = call i32 @zlassq_(ptr noundef %i__2, ptr noundef %arrayidx231, ptr noundef @c__1, ptr noundef %scale, ptr noundef %sum)
  br label %for.inc233

for.inc233:                                       ; preds = %for.body225
  %181 = load i32, ptr %j, align 4, !tbaa !8
  %inc234 = add nsw i32 %181, 1
  store i32 %inc234, ptr %j, align 4, !tbaa !8
  br label %for.cond222, !llvm.loop !27

for.end235:                                       ; preds = %for.cond222
  br label %if.end236

if.end236:                                        ; preds = %for.end235, %for.end219
  %182 = load double, ptr %sum, align 8, !tbaa !10
  %mul237 = fmul double %182, 2.000000e+00
  store double %mul237, ptr %sum, align 8, !tbaa !10
  %183 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %184 = load i32, ptr %183, align 4, !tbaa !8
  store i32 %184, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc272, %if.end236
  %185 = load i32, ptr %i__, align 4, !tbaa !8
  %186 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp239 = icmp sle i32 %185, %186
  br i1 %cmp239, label %for.body241, label %for.end274

for.body241:                                      ; preds = %for.cond238
  %187 = load i32, ptr %i__, align 4, !tbaa !8
  %188 = load i32, ptr %i__, align 4, !tbaa !8
  %189 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul242 = mul nsw i32 %188, %189
  %add243 = add nsw i32 %187, %mul242
  store i32 %add243, ptr %i__2, align 4, !tbaa !8
  %190 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %191 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom244 = sext i32 %191 to i64
  %arrayidx245 = getelementptr inbounds %struct.doublecomplex, ptr %190, i64 %idxprom244
  %r246 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx245, i32 0, i32 0
  %192 = load double, ptr %r246, align 8, !tbaa !14
  %cmp247 = fcmp une double %192, 0.000000e+00
  br i1 %cmp247, label %if.then249, label %if.end271

if.then249:                                       ; preds = %for.body241
  %193 = load i32, ptr %i__, align 4, !tbaa !8
  %194 = load i32, ptr %i__, align 4, !tbaa !8
  %195 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul250 = mul nsw i32 %194, %195
  %add251 = add nsw i32 %193, %mul250
  store i32 %add251, ptr %i__2, align 4, !tbaa !8
  %196 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %197 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom252 = sext i32 %197 to i64
  %arrayidx253 = getelementptr inbounds %struct.doublecomplex, ptr %196, i64 %idxprom252
  %r254 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx253, i32 0, i32 0
  %198 = load double, ptr %r254, align 8, !tbaa !14
  store double %198, ptr %d__1, align 8, !tbaa !10
  %199 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp255 = fcmp oge double %199, 0.000000e+00
  br i1 %cmp255, label %cond.true257, label %cond.false258

cond.true257:                                     ; preds = %if.then249
  %200 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end260

cond.false258:                                    ; preds = %if.then249
  %201 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg259 = fneg double %201
  br label %cond.end260

cond.end260:                                      ; preds = %cond.false258, %cond.true257
  %cond261 = phi double [ %200, %cond.true257 ], [ %fneg259, %cond.false258 ]
  store double %cond261, ptr %absa, align 8, !tbaa !10
  %202 = load double, ptr %scale, align 8, !tbaa !10
  %203 = load double, ptr %absa, align 8, !tbaa !10
  %cmp262 = fcmp olt double %202, %203
  br i1 %cmp262, label %if.then264, label %if.else267

if.then264:                                       ; preds = %cond.end260
  %204 = load double, ptr %scale, align 8, !tbaa !10
  %205 = load double, ptr %absa, align 8, !tbaa !10
  %div = fdiv double %204, %205
  store double %div, ptr %d__1, align 8, !tbaa !10
  %206 = load double, ptr %sum, align 8, !tbaa !10
  %207 = load double, ptr %d__1, align 8, !tbaa !10
  %208 = load double, ptr %d__1, align 8, !tbaa !10
  %mul265 = fmul double %207, %208
  %209 = call double @llvm.fmuladd.f64(double %206, double %mul265, double 1.000000e+00)
  store double %209, ptr %sum, align 8, !tbaa !10
  %210 = load double, ptr %absa, align 8, !tbaa !10
  store double %210, ptr %scale, align 8, !tbaa !10
  br label %if.end270

if.else267:                                       ; preds = %cond.end260
  %211 = load double, ptr %absa, align 8, !tbaa !10
  %212 = load double, ptr %scale, align 8, !tbaa !10
  %div268 = fdiv double %211, %212
  store double %div268, ptr %d__1, align 8, !tbaa !10
  %213 = load double, ptr %d__1, align 8, !tbaa !10
  %214 = load double, ptr %d__1, align 8, !tbaa !10
  %215 = load double, ptr %sum, align 8, !tbaa !10
  %216 = call double @llvm.fmuladd.f64(double %213, double %214, double %215)
  store double %216, ptr %sum, align 8, !tbaa !10
  br label %if.end270

if.end270:                                        ; preds = %if.else267, %if.then264
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %for.body241
  br label %for.inc272

for.inc272:                                       ; preds = %if.end271
  %217 = load i32, ptr %i__, align 4, !tbaa !8
  %inc273 = add nsw i32 %217, 1
  store i32 %inc273, ptr %i__, align 4, !tbaa !8
  br label %for.cond238, !llvm.loop !28

for.end274:                                       ; preds = %for.cond238
  %218 = load double, ptr %scale, align 8, !tbaa !10
  %219 = load double, ptr %sum, align 8, !tbaa !10
  %call275 = call double @sqrt(double noundef %219) #5
  %mul276 = fmul double %218, %call275
  store double %mul276, ptr %value, align 8, !tbaa !10
  br label %if.end277

if.end277:                                        ; preds = %for.end274, %lor.lhs.false200
  br label %if.end278

if.end278:                                        ; preds = %if.end277, %if.end196
  br label %if.end279

if.end279:                                        ; preds = %if.end278, %if.end71
  br label %if.end280

if.end280:                                        ; preds = %if.end279, %if.then
  %220 = load double, ptr %value, align 8, !tbaa !10
  store double %220, ptr %ret_val, align 8, !tbaa !10
  %221 = load double, ptr %ret_val, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %scale) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %absa) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret_val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #5
  ret double %221
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

declare double @z_abs(ptr noundef) #2

declare i32 @disnan_(ptr noundef) #2

declare i32 @zlassq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare double @sqrt(double noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #5 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !11, i64 0}
!15 = !{!"", !11, i64 0, !11, i64 8}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = !{!6, !6, i64 0}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
