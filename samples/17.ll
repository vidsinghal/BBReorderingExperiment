; ModuleID = 'samples/17.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dlarzb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DLARZB\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@c__1 = internal global i32 1, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b13 = internal global double 1.000000e+00, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c_b23 = internal global double -1.000000e+00, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dlarzb_(ptr noundef %side, ptr noundef %trans, ptr noundef %direct, ptr noundef %storev, ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %l, ptr noundef %v, ptr noundef %ldv, ptr noundef %t, ptr noundef %ldt, ptr noundef %c__, ptr noundef %ldc, ptr noundef %work, ptr noundef %ldwork) #0 {
entry:
  %retval = alloca i32, align 4
  %side.addr = alloca ptr, align 8
  %trans.addr = alloca ptr, align 8
  %direct.addr = alloca ptr, align 8
  %storev.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %ldv.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  %ldt.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %ldc.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %ldwork.addr = alloca ptr, align 8
  %c_dim1 = alloca i32, align 4
  %c_offset = alloca i32, align 4
  %t_dim1 = alloca i32, align 4
  %t_offset = alloca i32, align 4
  %v_dim1 = alloca i32, align 4
  %v_offset = alloca i32, align 4
  %work_dim1 = alloca i32, align 4
  %work_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %info = alloca i32, align 4
  %transt = alloca [1 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %side, ptr %side.addr, align 8, !tbaa !4
  store ptr %trans, ptr %trans.addr, align 8, !tbaa !4
  store ptr %direct, ptr %direct.addr, align 8, !tbaa !4
  store ptr %storev, ptr %storev.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %l, ptr %l.addr, align 8, !tbaa !4
  store ptr %v, ptr %v.addr, align 8, !tbaa !4
  store ptr %ldv, ptr %ldv.addr, align 8, !tbaa !4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  store ptr %ldt, ptr %ldt.addr, align 8, !tbaa !4
  store ptr %c__, ptr %c__.addr, align 8, !tbaa !4
  store ptr %ldc, ptr %ldc.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %ldwork, ptr %ldwork.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %v_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %v_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %work_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %work_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %info) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %transt) #3
  %0 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %v_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %v_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %v_offset, align 4, !tbaa !8
  %3 = load i32, ptr %v_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %v.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %t_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %t_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %t_offset, align 4, !tbaa !8
  %8 = load i32, ptr %t_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds double, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %t.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %11, ptr %c_dim1, align 4, !tbaa !8
  %12 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add5 = add nsw i32 1, %12
  store i32 %add5, ptr %c_offset, align 4, !tbaa !8
  %13 = load i32, ptr %c_offset, align 4, !tbaa !8
  %14 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %idx.ext6 = sext i32 %13 to i64
  %idx.neg7 = sub i64 0, %idx.ext6
  %add.ptr8 = getelementptr inbounds double, ptr %14, i64 %idx.neg7
  store ptr %add.ptr8, ptr %c__.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %ldwork.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  store i32 %16, ptr %work_dim1, align 4, !tbaa !8
  %17 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %add9 = add nsw i32 1, %17
  store i32 %add9, ptr %work_offset, align 4, !tbaa !8
  %18 = load i32, ptr %work_offset, align 4, !tbaa !8
  %19 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %idx.ext10 = sext i32 %18 to i64
  %idx.neg11 = sub i64 0, %idx.ext10
  %add.ptr12 = getelementptr inbounds double, ptr %19, i64 %idx.neg11
  store ptr %add.ptr12, ptr %work.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %cmp = icmp sle i32 %21, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %cmp13 = icmp sle i32 %23, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %info, align 4, !tbaa !8
  %24 = load ptr, ptr %direct.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %24, ptr noundef @.str)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  store i32 -3, ptr %info, align 4, !tbaa !8
  br label %if.end19

if.else:                                          ; preds = %if.end
  %25 = load ptr, ptr %storev.addr, align 8, !tbaa !4
  %call15 = call i32 @lsame_(ptr noundef %25, ptr noundef @.str.1)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.else
  store i32 -4, ptr %info, align 4, !tbaa !8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then14
  %26 = load i32, ptr %info, align 4, !tbaa !8
  %cmp20 = icmp ne i32 %26, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %27 = load i32, ptr %info, align 4, !tbaa !8
  %sub = sub nsw i32 0, %27
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call22 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %28 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %call24 = call i32 @lsame_(ptr noundef %28, ptr noundef @.str.3)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end23
  %arraydecay = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  store i8 84, ptr %arraydecay, align 1, !tbaa !10
  br label %if.end29

if.else27:                                        ; preds = %if.end23
  %arraydecay28 = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  store i8 78, ptr %arraydecay28, align 1, !tbaa !10
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  %29 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call30 = call i32 @lsame_(ptr noundef %29, ptr noundef @.str.4)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then32, label %if.else92

if.then32:                                        ; preds = %if.end29
  %30 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  store i32 %31, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then32
  %32 = load i32, ptr %j, align 4, !tbaa !8
  %33 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp33 = icmp sle i32 %32, %33
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %35 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %36 = load i32, ptr %j, align 4, !tbaa !8
  %37 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add34 = add nsw i32 %36, %37
  %idxprom = sext i32 %add34 to i64
  %arrayidx = getelementptr inbounds double, ptr %35, i64 %idxprom
  %38 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %39 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %40 = load i32, ptr %j, align 4, !tbaa !8
  %41 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %40, %41
  %add35 = add nsw i32 %mul, 1
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds double, ptr %39, i64 %idxprom36
  %call38 = call i32 @dcopy_(ptr noundef %34, ptr noundef %arrayidx, ptr noundef %38, ptr noundef %arrayidx37, ptr noundef @c__1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %43 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  %cmp39 = icmp sgt i32 %44, 0
  br i1 %cmp39, label %if.then40, label %if.end51

if.then40:                                        ; preds = %for.end
  %45 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %46 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %47 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %48 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %49 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %50 = load i32, ptr %49, align 4, !tbaa !8
  %51 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %sub41 = sub nsw i32 %50, %52
  %add42 = add nsw i32 %sub41, 1
  %53 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add43 = add nsw i32 %add42, %53
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %48, i64 %idxprom44
  %54 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %55 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %56 = load i32, ptr %v_offset, align 4, !tbaa !8
  %idxprom46 = sext i32 %56 to i64
  %arrayidx47 = getelementptr inbounds double, ptr %55, i64 %idxprom46
  %57 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %58 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %59 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom48 = sext i32 %59 to i64
  %arrayidx49 = getelementptr inbounds double, ptr %58, i64 %idxprom48
  %60 = load ptr, ptr %ldwork.addr, align 8, !tbaa !4
  %call50 = call i32 @dgemm_(ptr noundef @.str.5, ptr noundef @.str.5, ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef @c_b13, ptr noundef %arrayidx45, ptr noundef %54, ptr noundef %arrayidx47, ptr noundef %57, ptr noundef @c_b13, ptr noundef %arrayidx49, ptr noundef %60)
  br label %if.end51

if.end51:                                         ; preds = %if.then40, %for.end
  %arraydecay52 = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  %61 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %62 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %64 = load i32, ptr %t_offset, align 4, !tbaa !8
  %idxprom53 = sext i32 %64 to i64
  %arrayidx54 = getelementptr inbounds double, ptr %63, i64 %idxprom53
  %65 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %66 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %67 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom55 = sext i32 %67 to i64
  %arrayidx56 = getelementptr inbounds double, ptr %66, i64 %idxprom55
  %68 = load ptr, ptr %ldwork.addr, align 8, !tbaa !4
  %call57 = call i32 @dtrmm_(ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef %arraydecay52, ptr noundef @.str.8, ptr noundef %61, ptr noundef %62, ptr noundef @c_b13, ptr noundef %arrayidx54, ptr noundef %65, ptr noundef %arrayidx56, ptr noundef %68)
  %69 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  store i32 %70, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc76, %if.end51
  %71 = load i32, ptr %j, align 4, !tbaa !8
  %72 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp59 = icmp sle i32 %71, %72
  br i1 %cmp59, label %for.body60, label %for.end78

for.body60:                                       ; preds = %for.cond58
  %73 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  store i32 %74, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc73, %for.body60
  %75 = load i32, ptr %i__, align 4, !tbaa !8
  %76 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp62 = icmp sle i32 %75, %76
  br i1 %cmp62, label %for.body63, label %for.end75

for.body63:                                       ; preds = %for.cond61
  %77 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %78 = load i32, ptr %j, align 4, !tbaa !8
  %79 = load i32, ptr %i__, align 4, !tbaa !8
  %80 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul64 = mul nsw i32 %79, %80
  %add65 = add nsw i32 %78, %mul64
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %77, i64 %idxprom66
  %81 = load double, ptr %arrayidx67, align 8, !tbaa !13
  %82 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %83 = load i32, ptr %i__, align 4, !tbaa !8
  %84 = load i32, ptr %j, align 4, !tbaa !8
  %85 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul68 = mul nsw i32 %84, %85
  %add69 = add nsw i32 %83, %mul68
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds double, ptr %82, i64 %idxprom70
  %86 = load double, ptr %arrayidx71, align 8, !tbaa !13
  %sub72 = fsub double %86, %81
  store double %sub72, ptr %arrayidx71, align 8, !tbaa !13
  br label %for.inc73

for.inc73:                                        ; preds = %for.body63
  %87 = load i32, ptr %i__, align 4, !tbaa !8
  %inc74 = add nsw i32 %87, 1
  store i32 %inc74, ptr %i__, align 4, !tbaa !8
  br label %for.cond61, !llvm.loop !15

for.end75:                                        ; preds = %for.cond61
  br label %for.inc76

for.inc76:                                        ; preds = %for.end75
  %88 = load i32, ptr %j, align 4, !tbaa !8
  %inc77 = add nsw i32 %88, 1
  store i32 %inc77, ptr %j, align 4, !tbaa !8
  br label %for.cond58, !llvm.loop !16

for.end78:                                        ; preds = %for.cond58
  %89 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !8
  %cmp79 = icmp sgt i32 %90, 0
  br i1 %cmp79, label %if.then80, label %if.end91

if.then80:                                        ; preds = %for.end78
  %91 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %92 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %95 = load i32, ptr %v_offset, align 4, !tbaa !8
  %idxprom81 = sext i32 %95 to i64
  %arrayidx82 = getelementptr inbounds double, ptr %94, i64 %idxprom81
  %96 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %97 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %98 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom83 = sext i32 %98 to i64
  %arrayidx84 = getelementptr inbounds double, ptr %97, i64 %idxprom83
  %99 = load ptr, ptr %ldwork.addr, align 8, !tbaa !4
  %100 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %101 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %102 = load i32, ptr %101, align 4, !tbaa !8
  %103 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %104 = load i32, ptr %103, align 4, !tbaa !8
  %sub85 = sub nsw i32 %102, %104
  %add86 = add nsw i32 %sub85, 1
  %105 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %add87 = add nsw i32 %add86, %105
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %100, i64 %idxprom88
  %106 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call90 = call i32 @dgemm_(ptr noundef @.str.5, ptr noundef @.str.5, ptr noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef @c_b23, ptr noundef %arrayidx82, ptr noundef %96, ptr noundef %arrayidx84, ptr noundef %99, ptr noundef @c_b13, ptr noundef %arrayidx89, ptr noundef %106)
  br label %if.end91

if.end91:                                         ; preds = %if.then80, %for.end78
  br label %if.end166

if.else92:                                        ; preds = %if.end29
  %107 = load ptr, ptr %side.addr, align 8, !tbaa !4
  %call93 = call i32 @lsame_(ptr noundef %107, ptr noundef @.str.1)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end165

if.then95:                                        ; preds = %if.else92
  %108 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %109 = load i32, ptr %108, align 4, !tbaa !8
  store i32 %109, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc108, %if.then95
  %110 = load i32, ptr %j, align 4, !tbaa !8
  %111 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp97 = icmp sle i32 %110, %111
  br i1 %cmp97, label %for.body98, label %for.end110

for.body98:                                       ; preds = %for.cond96
  %112 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %114 = load i32, ptr %j, align 4, !tbaa !8
  %115 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul99 = mul nsw i32 %114, %115
  %add100 = add nsw i32 %mul99, 1
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds double, ptr %113, i64 %idxprom101
  %116 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %117 = load i32, ptr %j, align 4, !tbaa !8
  %118 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul103 = mul nsw i32 %117, %118
  %add104 = add nsw i32 %mul103, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds double, ptr %116, i64 %idxprom105
  %call107 = call i32 @dcopy_(ptr noundef %112, ptr noundef %arrayidx102, ptr noundef @c__1, ptr noundef %arrayidx106, ptr noundef @c__1)
  br label %for.inc108

for.inc108:                                       ; preds = %for.body98
  %119 = load i32, ptr %j, align 4, !tbaa !8
  %inc109 = add nsw i32 %119, 1
  store i32 %inc109, ptr %j, align 4, !tbaa !8
  br label %for.cond96, !llvm.loop !17

for.end110:                                       ; preds = %for.cond96
  %120 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %121 = load i32, ptr %120, align 4, !tbaa !8
  %cmp111 = icmp sgt i32 %121, 0
  br i1 %cmp111, label %if.then112, label %if.end124

if.then112:                                       ; preds = %for.end110
  %122 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %125 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %126 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %127 = load i32, ptr %126, align 4, !tbaa !8
  %128 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %129 = load i32, ptr %128, align 4, !tbaa !8
  %sub113 = sub nsw i32 %127, %129
  %add114 = add nsw i32 %sub113, 1
  %130 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul115 = mul nsw i32 %add114, %130
  %add116 = add nsw i32 %mul115, 1
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds double, ptr %125, i64 %idxprom117
  %131 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %132 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %133 = load i32, ptr %v_offset, align 4, !tbaa !8
  %idxprom119 = sext i32 %133 to i64
  %arrayidx120 = getelementptr inbounds double, ptr %132, i64 %idxprom119
  %134 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %135 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %136 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom121 = sext i32 %136 to i64
  %arrayidx122 = getelementptr inbounds double, ptr %135, i64 %idxprom121
  %137 = load ptr, ptr %ldwork.addr, align 8, !tbaa !4
  %call123 = call i32 @dgemm_(ptr noundef @.str.9, ptr noundef @.str.5, ptr noundef %122, ptr noundef %123, ptr noundef %124, ptr noundef @c_b13, ptr noundef %arrayidx118, ptr noundef %131, ptr noundef %arrayidx120, ptr noundef %134, ptr noundef @c_b13, ptr noundef %arrayidx122, ptr noundef %137)
  br label %if.end124

if.end124:                                        ; preds = %if.then112, %for.end110
  %138 = load ptr, ptr %trans.addr, align 8, !tbaa !4
  %139 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %140 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %141 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %142 = load i32, ptr %t_offset, align 4, !tbaa !8
  %idxprom125 = sext i32 %142 to i64
  %arrayidx126 = getelementptr inbounds double, ptr %141, i64 %idxprom125
  %143 = load ptr, ptr %ldt.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %145 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom127 = sext i32 %145 to i64
  %arrayidx128 = getelementptr inbounds double, ptr %144, i64 %idxprom127
  %146 = load ptr, ptr %ldwork.addr, align 8, !tbaa !4
  %call129 = call i32 @dtrmm_(ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef %138, ptr noundef @.str.8, ptr noundef %139, ptr noundef %140, ptr noundef @c_b13, ptr noundef %arrayidx126, ptr noundef %143, ptr noundef %arrayidx128, ptr noundef %146)
  %147 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %148 = load i32, ptr %147, align 4, !tbaa !8
  store i32 %148, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc148, %if.end124
  %149 = load i32, ptr %j, align 4, !tbaa !8
  %150 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp131 = icmp sle i32 %149, %150
  br i1 %cmp131, label %for.body132, label %for.end150

for.body132:                                      ; preds = %for.cond130
  %151 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %152 = load i32, ptr %151, align 4, !tbaa !8
  store i32 %152, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond133

for.cond133:                                      ; preds = %for.inc145, %for.body132
  %153 = load i32, ptr %i__, align 4, !tbaa !8
  %154 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp134 = icmp sle i32 %153, %154
  br i1 %cmp134, label %for.body135, label %for.end147

for.body135:                                      ; preds = %for.cond133
  %155 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %156 = load i32, ptr %i__, align 4, !tbaa !8
  %157 = load i32, ptr %j, align 4, !tbaa !8
  %158 = load i32, ptr %work_dim1, align 4, !tbaa !8
  %mul136 = mul nsw i32 %157, %158
  %add137 = add nsw i32 %156, %mul136
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds double, ptr %155, i64 %idxprom138
  %159 = load double, ptr %arrayidx139, align 8, !tbaa !13
  %160 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %161 = load i32, ptr %i__, align 4, !tbaa !8
  %162 = load i32, ptr %j, align 4, !tbaa !8
  %163 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul140 = mul nsw i32 %162, %163
  %add141 = add nsw i32 %161, %mul140
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds double, ptr %160, i64 %idxprom142
  %164 = load double, ptr %arrayidx143, align 8, !tbaa !13
  %sub144 = fsub double %164, %159
  store double %sub144, ptr %arrayidx143, align 8, !tbaa !13
  br label %for.inc145

for.inc145:                                       ; preds = %for.body135
  %165 = load i32, ptr %i__, align 4, !tbaa !8
  %inc146 = add nsw i32 %165, 1
  store i32 %inc146, ptr %i__, align 4, !tbaa !8
  br label %for.cond133, !llvm.loop !18

for.end147:                                       ; preds = %for.cond133
  br label %for.inc148

for.inc148:                                       ; preds = %for.end147
  %166 = load i32, ptr %j, align 4, !tbaa !8
  %inc149 = add nsw i32 %166, 1
  store i32 %inc149, ptr %j, align 4, !tbaa !8
  br label %for.cond130, !llvm.loop !19

for.end150:                                       ; preds = %for.cond130
  %167 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %168 = load i32, ptr %167, align 4, !tbaa !8
  %cmp151 = icmp sgt i32 %168, 0
  br i1 %cmp151, label %if.then152, label %if.end164

if.then152:                                       ; preds = %for.end150
  %169 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %170 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %171 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %172 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %173 = load i32, ptr %work_offset, align 4, !tbaa !8
  %idxprom153 = sext i32 %173 to i64
  %arrayidx154 = getelementptr inbounds double, ptr %172, i64 %idxprom153
  %174 = load ptr, ptr %ldwork.addr, align 8, !tbaa !4
  %175 = load ptr, ptr %v.addr, align 8, !tbaa !4
  %176 = load i32, ptr %v_offset, align 4, !tbaa !8
  %idxprom155 = sext i32 %176 to i64
  %arrayidx156 = getelementptr inbounds double, ptr %175, i64 %idxprom155
  %177 = load ptr, ptr %ldv.addr, align 8, !tbaa !4
  %178 = load ptr, ptr %c__.addr, align 8, !tbaa !4
  %179 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %180 = load i32, ptr %179, align 4, !tbaa !8
  %181 = load ptr, ptr %l.addr, align 8, !tbaa !4
  %182 = load i32, ptr %181, align 4, !tbaa !8
  %sub157 = sub nsw i32 %180, %182
  %add158 = add nsw i32 %sub157, 1
  %183 = load i32, ptr %c_dim1, align 4, !tbaa !8
  %mul159 = mul nsw i32 %add158, %183
  %add160 = add nsw i32 %mul159, 1
  %idxprom161 = sext i32 %add160 to i64
  %arrayidx162 = getelementptr inbounds double, ptr %178, i64 %idxprom161
  %184 = load ptr, ptr %ldc.addr, align 8, !tbaa !4
  %call163 = call i32 @dgemm_(ptr noundef @.str.9, ptr noundef @.str.9, ptr noundef %169, ptr noundef %170, ptr noundef %171, ptr noundef @c_b23, ptr noundef %arrayidx154, ptr noundef %174, ptr noundef %arrayidx156, ptr noundef %177, ptr noundef @c_b13, ptr noundef %arrayidx162, ptr noundef %184)
  br label %if.end164

if.end164:                                        ; preds = %if.then152, %for.end150
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.else92
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.end91
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end166, %if.then21, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %transt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %info) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %work_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %work_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %v_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %v_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c_dim1) #3
  %185 = load i32, ptr %retval, align 4
  ret i32 %185
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dgemm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dtrmm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
