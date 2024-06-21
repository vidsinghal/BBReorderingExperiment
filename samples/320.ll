; ModuleID = 'samples/320.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/cgtrfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CGTRFS\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@c__1 = internal global i32 1, align 4
@c_b18 = internal global float -1.000000e+00, align 4
@c_b19 = internal global float 1.000000e+00, align 4
@c_b26 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @cgtrfs_(ptr noundef %trans, ptr noundef %n, ptr noundef %nrhs, ptr noundef %dl, ptr noundef %d__, ptr noundef %du, ptr noundef %dlf, ptr noundef %df, ptr noundef %duf, ptr noundef %du2, ptr noundef %ipiv, ptr noundef %b, ptr noundef %ldb, ptr noundef %x, ptr noundef %ldx, ptr noundef %ferr, ptr noundef %berr, ptr noundef %work, ptr noundef %rwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %trans.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %dl.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %du.addr = alloca ptr, align 8
  %dlf.addr = alloca ptr, align 8
  %df.addr = alloca ptr, align 8
  %duf.addr = alloca ptr, align 8
  %du2.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %ferr.addr = alloca ptr, align 8
  %berr.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %x_dim1 = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__6 = alloca i32, align 4
  %i__7 = alloca i32, align 4
  %i__8 = alloca i32, align 4
  %i__9 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %r__4 = alloca float, align 4
  %r__5 = alloca float, align 4
  %r__6 = alloca float, align 4
  %r__7 = alloca float, align 4
  %r__8 = alloca float, align 4
  %r__9 = alloca float, align 4
  %r__10 = alloca float, align 4
  %r__11 = alloca float, align 4
  %r__12 = alloca float, align 4
  %r__13 = alloca float, align 4
  %r__14 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca float, align 4
  %nz = alloca i32, align 4
  %eps = alloca float, align 4
  %kase = alloca i32, align 4
  %safe1 = alloca float, align 4
  %safe2 = alloca float, align 4
  %isave = alloca [3 x i32], align 4
  %count = alloca i32, align 4
  %safmin = alloca float, align 4
  %notran = alloca i32, align 4
  %transn = alloca [1 x i8], align 1
  %transt = alloca [1 x i8], align 1
  %lstres = alloca float, align 4
  store ptr %trans, ptr %trans.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %nrhs, ptr %nrhs.addr, align 8
  store ptr %dl, ptr %dl.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %du, ptr %du.addr, align 8
  store ptr %dlf, ptr %dlf.addr, align 8
  store ptr %df, ptr %df.addr, align 8
  store ptr %duf, ptr %duf.addr, align 8
  store ptr %du2, ptr %du2.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %ldb, ptr %ldb.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %ldx, ptr %ldx.addr, align 8
  store ptr %ferr, ptr %ferr.addr, align 8
  store ptr %berr, ptr %berr.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %rwork, ptr %rwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %dl.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %dl.addr, align 8
  %1 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.complex, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %d__.addr, align 8
  %2 = load ptr, ptr %du.addr, align 8
  %incdec.ptr2 = getelementptr inbounds %struct.complex, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %du.addr, align 8
  %3 = load ptr, ptr %dlf.addr, align 8
  %incdec.ptr3 = getelementptr inbounds %struct.complex, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %dlf.addr, align 8
  %4 = load ptr, ptr %df.addr, align 8
  %incdec.ptr4 = getelementptr inbounds %struct.complex, ptr %4, i32 -1
  store ptr %incdec.ptr4, ptr %df.addr, align 8
  %5 = load ptr, ptr %duf.addr, align 8
  %incdec.ptr5 = getelementptr inbounds %struct.complex, ptr %5, i32 -1
  store ptr %incdec.ptr5, ptr %duf.addr, align 8
  %6 = load ptr, ptr %du2.addr, align 8
  %incdec.ptr6 = getelementptr inbounds %struct.complex, ptr %6, i32 -1
  store ptr %incdec.ptr6, ptr %du2.addr, align 8
  %7 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %7, i32 -1
  store ptr %incdec.ptr7, ptr %ipiv.addr, align 8
  %8 = load ptr, ptr %ldb.addr, align 8
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %b_dim1, align 4
  %10 = load i32, ptr %b_dim1, align 4
  %add = add nsw i32 1, %10
  store i32 %add, ptr %b_offset, align 4
  %11 = load i32, ptr %b_offset, align 4
  %12 = load ptr, ptr %b.addr, align 8
  %idx.ext = sext i32 %11 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %12, i64 %idx.neg
  store ptr %add.ptr, ptr %b.addr, align 8
  %13 = load ptr, ptr %ldx.addr, align 8
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %x_dim1, align 4
  %15 = load i32, ptr %x_dim1, align 4
  %add8 = add nsw i32 1, %15
  store i32 %add8, ptr %x_offset, align 4
  %16 = load i32, ptr %x_offset, align 4
  %17 = load ptr, ptr %x.addr, align 8
  %idx.ext9 = sext i32 %16 to i64
  %idx.neg10 = sub i64 0, %idx.ext9
  %add.ptr11 = getelementptr inbounds %struct.complex, ptr %17, i64 %idx.neg10
  store ptr %add.ptr11, ptr %x.addr, align 8
  %18 = load ptr, ptr %ferr.addr, align 8
  %incdec.ptr12 = getelementptr inbounds float, ptr %18, i32 -1
  store ptr %incdec.ptr12, ptr %ferr.addr, align 8
  %19 = load ptr, ptr %berr.addr, align 8
  %incdec.ptr13 = getelementptr inbounds float, ptr %19, i32 -1
  store ptr %incdec.ptr13, ptr %berr.addr, align 8
  %20 = load ptr, ptr %work.addr, align 8
  %incdec.ptr14 = getelementptr inbounds %struct.complex, ptr %20, i32 -1
  store ptr %incdec.ptr14, ptr %work.addr, align 8
  %21 = load ptr, ptr %rwork.addr, align 8
  %incdec.ptr15 = getelementptr inbounds float, ptr %21, i32 -1
  store ptr %incdec.ptr15, ptr %rwork.addr, align 8
  %22 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %22, align 4
  %23 = load ptr, ptr %trans.addr, align 8
  %call = call i32 @lsame_(ptr noundef %23, ptr noundef @.str)
  store i32 %call, ptr %notran, align 4
  %24 = load i32, ptr %notran, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %25 = load ptr, ptr %trans.addr, align 8
  %call16 = call i32 @lsame_(ptr noundef %25, ptr noundef @.str.1)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else, label %land.lhs.true18

land.lhs.true18:                                  ; preds = %land.lhs.true
  %26 = load ptr, ptr %trans.addr, align 8
  %call19 = call i32 @lsame_(ptr noundef %26, ptr noundef @.str.2)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true18
  %27 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %27, align 4
  br label %if.end40

if.else:                                          ; preds = %land.lhs.true18, %land.lhs.true, %entry
  %28 = load ptr, ptr %n.addr, align 8
  %29 = load i32, ptr %28, align 4
  %cmp = icmp slt i32 %29, 0
  br i1 %cmp, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else
  %30 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %30, align 4
  br label %if.end39

if.else22:                                        ; preds = %if.else
  %31 = load ptr, ptr %nrhs.addr, align 8
  %32 = load i32, ptr %31, align 4
  %cmp23 = icmp slt i32 %32, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else22
  %33 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %33, align 4
  br label %if.end38

if.else25:                                        ; preds = %if.else22
  %34 = load ptr, ptr %ldb.addr, align 8
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %n.addr, align 8
  %37 = load i32, ptr %36, align 4
  %cmp26 = icmp sge i32 1, %37
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else25
  br label %cond.end

cond.false:                                       ; preds = %if.else25
  %38 = load ptr, ptr %n.addr, align 8
  %39 = load i32, ptr %38, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %39, %cond.false ]
  %cmp27 = icmp slt i32 %35, %cond
  br i1 %cmp27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %cond.end
  %40 = load ptr, ptr %info.addr, align 8
  store i32 -13, ptr %40, align 4
  br label %if.end37

if.else29:                                        ; preds = %cond.end
  %41 = load ptr, ptr %ldx.addr, align 8
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %n.addr, align 8
  %44 = load i32, ptr %43, align 4
  %cmp30 = icmp sge i32 1, %44
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %if.else29
  br label %cond.end33

cond.false32:                                     ; preds = %if.else29
  %45 = load ptr, ptr %n.addr, align 8
  %46 = load i32, ptr %45, align 4
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi i32 [ 1, %cond.true31 ], [ %46, %cond.false32 ]
  %cmp35 = icmp slt i32 %42, %cond34
  br i1 %cmp35, label %if.then36, label %if.end

if.then36:                                        ; preds = %cond.end33
  %47 = load ptr, ptr %info.addr, align 8
  store i32 -15, ptr %47, align 4
  br label %if.end

if.end:                                           ; preds = %if.then36, %cond.end33
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then28
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then21
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then
  %48 = load ptr, ptr %info.addr, align 8
  %49 = load i32, ptr %48, align 4
  %cmp41 = icmp ne i32 %49, 0
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %50 = load ptr, ptr %info.addr, align 8
  %51 = load i32, ptr %50, align 4
  %sub = sub nsw i32 0, %51
  store i32 %sub, ptr %i__1, align 4
  %call43 = call i32 @xerbla_(ptr noundef @.str.3, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end40
  %52 = load ptr, ptr %n.addr, align 8
  %53 = load i32, ptr %52, align 4
  %cmp45 = icmp eq i32 %53, 0
  br i1 %cmp45, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end44
  %54 = load ptr, ptr %nrhs.addr, align 8
  %55 = load i32, ptr %54, align 4
  %cmp46 = icmp eq i32 %55, 0
  br i1 %cmp46, label %if.then47, label %if.end51

if.then47:                                        ; preds = %lor.lhs.false, %if.end44
  %56 = load ptr, ptr %nrhs.addr, align 8
  %57 = load i32, ptr %56, align 4
  store i32 %57, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then47
  %58 = load i32, ptr %j, align 4
  %59 = load i32, ptr %i__1, align 4
  %cmp48 = icmp sle i32 %58, %59
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load ptr, ptr %ferr.addr, align 8
  %61 = load i32, ptr %j, align 4
  %idxprom = sext i32 %61 to i64
  %arrayidx = getelementptr inbounds float, ptr %60, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx, align 4
  %62 = load ptr, ptr %berr.addr, align 8
  %63 = load i32, ptr %j, align 4
  %idxprom49 = sext i32 %63 to i64
  %arrayidx50 = getelementptr inbounds float, ptr %62, i64 %idxprom49
  store float 0.000000e+00, ptr %arrayidx50, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, ptr %j, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %lor.lhs.false
  %65 = load i32, ptr %notran, align 4
  %tobool52 = icmp ne i32 %65, 0
  br i1 %tobool52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.end51
  %arraydecay = getelementptr inbounds [1 x i8], ptr %transn, i64 0, i64 0
  store i8 78, ptr %arraydecay, align 1
  %arraydecay54 = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  store i8 67, ptr %arraydecay54, align 1
  br label %if.end58

if.else55:                                        ; preds = %if.end51
  %arraydecay56 = getelementptr inbounds [1 x i8], ptr %transn, i64 0, i64 0
  store i8 67, ptr %arraydecay56, align 1
  %arraydecay57 = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  store i8 78, ptr %arraydecay57, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then53
  store i32 4, ptr %nz, align 4
  %call59 = call float @slamch_(ptr noundef @.str.4)
  store float %call59, ptr %eps, align 4
  %call60 = call float @slamch_(ptr noundef @.str.5)
  store float %call60, ptr %safmin, align 4
  %66 = load i32, ptr %nz, align 4
  %conv = sitofp i32 %66 to float
  %67 = load float, ptr %safmin, align 4
  %mul = fmul float %conv, %67
  store float %mul, ptr %safe1, align 4
  %68 = load float, ptr %safe1, align 4
  %69 = load float, ptr %eps, align 4
  %div = fdiv float %68, %69
  store float %div, ptr %safe2, align 4
  %70 = load ptr, ptr %nrhs.addr, align 8
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc1440, %if.end58
  %72 = load i32, ptr %j, align 4
  %73 = load i32, ptr %i__1, align 4
  %cmp62 = icmp sle i32 %72, %73
  br i1 %cmp62, label %for.body64, label %for.end1442

for.body64:                                       ; preds = %for.cond61
  store i32 1, ptr %count, align 4
  store float 3.000000e+00, ptr %lstres, align 4
  br label %L20

L20:                                              ; preds = %if.then1213, %for.body64
  %74 = load ptr, ptr %n.addr, align 8
  %75 = load ptr, ptr %b.addr, align 8
  %76 = load i32, ptr %j, align 4
  %77 = load i32, ptr %b_dim1, align 4
  %mul65 = mul nsw i32 %76, %77
  %add66 = add nsw i32 %mul65, 1
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds %struct.complex, ptr %75, i64 %idxprom67
  %78 = load ptr, ptr %work.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.complex, ptr %78, i64 1
  %call70 = call i32 @ccopy_(ptr noundef %74, ptr noundef %arrayidx68, ptr noundef @c__1, ptr noundef %arrayidx69, ptr noundef @c__1)
  %79 = load ptr, ptr %trans.addr, align 8
  %80 = load ptr, ptr %n.addr, align 8
  %81 = load ptr, ptr %dl.addr, align 8
  %arrayidx71 = getelementptr inbounds %struct.complex, ptr %81, i64 1
  %82 = load ptr, ptr %d__.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.complex, ptr %82, i64 1
  %83 = load ptr, ptr %du.addr, align 8
  %arrayidx73 = getelementptr inbounds %struct.complex, ptr %83, i64 1
  %84 = load ptr, ptr %x.addr, align 8
  %85 = load i32, ptr %j, align 4
  %86 = load i32, ptr %x_dim1, align 4
  %mul74 = mul nsw i32 %85, %86
  %add75 = add nsw i32 %mul74, 1
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds %struct.complex, ptr %84, i64 %idxprom76
  %87 = load ptr, ptr %ldx.addr, align 8
  %88 = load ptr, ptr %work.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct.complex, ptr %88, i64 1
  %89 = load ptr, ptr %n.addr, align 8
  %call79 = call i32 @clagtm_(ptr noundef %79, ptr noundef %80, ptr noundef @c__1, ptr noundef @c_b18, ptr noundef %arrayidx71, ptr noundef %arrayidx72, ptr noundef %arrayidx73, ptr noundef %arrayidx77, ptr noundef %87, ptr noundef @c_b19, ptr noundef %arrayidx78, ptr noundef %89)
  %90 = load i32, ptr %notran, align 4
  %tobool80 = icmp ne i32 %90, 0
  br i1 %tobool80, label %if.then81, label %if.else599

if.then81:                                        ; preds = %L20
  %91 = load ptr, ptr %n.addr, align 8
  %92 = load i32, ptr %91, align 4
  %cmp82 = icmp eq i32 %92, 1
  br i1 %cmp82, label %if.then84, label %if.else157

if.then84:                                        ; preds = %if.then81
  %93 = load i32, ptr %j, align 4
  %94 = load i32, ptr %b_dim1, align 4
  %mul85 = mul nsw i32 %93, %94
  %add86 = add nsw i32 %mul85, 1
  store i32 %add86, ptr %i__2, align 4
  %95 = load i32, ptr %j, align 4
  %96 = load i32, ptr %x_dim1, align 4
  %mul87 = mul nsw i32 %95, %96
  %add88 = add nsw i32 %mul87, 1
  store i32 %add88, ptr %i__3, align 4
  %97 = load ptr, ptr %b.addr, align 8
  %98 = load i32, ptr %i__2, align 4
  %idxprom89 = sext i32 %98 to i64
  %arrayidx90 = getelementptr inbounds %struct.complex, ptr %97, i64 %idxprom89
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx90, i32 0, i32 0
  %99 = load float, ptr %r, align 4
  store float %99, ptr %r__1, align 4
  %100 = load float, ptr %r__1, align 4
  %cmp91 = fcmp oge float %100, 0.000000e+00
  br i1 %cmp91, label %cond.true93, label %cond.false94

cond.true93:                                      ; preds = %if.then84
  %101 = load float, ptr %r__1, align 4
  br label %cond.end95

cond.false94:                                     ; preds = %if.then84
  %102 = load float, ptr %r__1, align 4
  %fneg = fneg float %102
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false94, %cond.true93
  %cond96 = phi float [ %101, %cond.true93 ], [ %fneg, %cond.false94 ]
  %103 = load ptr, ptr %b.addr, align 8
  %104 = load i32, ptr %j, align 4
  %105 = load i32, ptr %b_dim1, align 4
  %mul97 = mul nsw i32 %104, %105
  %add98 = add nsw i32 %mul97, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds %struct.complex, ptr %103, i64 %idxprom99
  %call101 = call double @r_imag(ptr noundef %arrayidx100)
  %conv102 = fptrunc double %call101 to float
  store float %conv102, ptr %r__2, align 4
  %106 = load float, ptr %r__2, align 4
  %cmp103 = fcmp oge float %106, 0.000000e+00
  br i1 %cmp103, label %cond.true105, label %cond.false106

cond.true105:                                     ; preds = %cond.end95
  %107 = load float, ptr %r__2, align 4
  br label %cond.end108

cond.false106:                                    ; preds = %cond.end95
  %108 = load float, ptr %r__2, align 4
  %fneg107 = fneg float %108
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false106, %cond.true105
  %cond109 = phi float [ %107, %cond.true105 ], [ %fneg107, %cond.false106 ]
  %add110 = fadd float %cond96, %cond109
  %109 = load ptr, ptr %d__.addr, align 8
  %arrayidx111 = getelementptr inbounds %struct.complex, ptr %109, i64 1
  %r112 = getelementptr inbounds %struct.complex, ptr %arrayidx111, i32 0, i32 0
  %110 = load float, ptr %r112, align 4
  store float %110, ptr %r__3, align 4
  %111 = load float, ptr %r__3, align 4
  %cmp113 = fcmp oge float %111, 0.000000e+00
  br i1 %cmp113, label %cond.true115, label %cond.false116

cond.true115:                                     ; preds = %cond.end108
  %112 = load float, ptr %r__3, align 4
  br label %cond.end118

cond.false116:                                    ; preds = %cond.end108
  %113 = load float, ptr %r__3, align 4
  %fneg117 = fneg float %113
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false116, %cond.true115
  %cond119 = phi float [ %112, %cond.true115 ], [ %fneg117, %cond.false116 ]
  %114 = load ptr, ptr %d__.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct.complex, ptr %114, i64 1
  %call121 = call double @r_imag(ptr noundef %arrayidx120)
  %conv122 = fptrunc double %call121 to float
  store float %conv122, ptr %r__4, align 4
  %115 = load float, ptr %r__4, align 4
  %cmp123 = fcmp oge float %115, 0.000000e+00
  br i1 %cmp123, label %cond.true125, label %cond.false126

cond.true125:                                     ; preds = %cond.end118
  %116 = load float, ptr %r__4, align 4
  br label %cond.end128

cond.false126:                                    ; preds = %cond.end118
  %117 = load float, ptr %r__4, align 4
  %fneg127 = fneg float %117
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false126, %cond.true125
  %cond129 = phi float [ %116, %cond.true125 ], [ %fneg127, %cond.false126 ]
  %add130 = fadd float %cond119, %cond129
  %118 = load ptr, ptr %x.addr, align 8
  %119 = load i32, ptr %i__3, align 4
  %idxprom131 = sext i32 %119 to i64
  %arrayidx132 = getelementptr inbounds %struct.complex, ptr %118, i64 %idxprom131
  %r133 = getelementptr inbounds %struct.complex, ptr %arrayidx132, i32 0, i32 0
  %120 = load float, ptr %r133, align 4
  store float %120, ptr %r__5, align 4
  %121 = load float, ptr %r__5, align 4
  %cmp134 = fcmp oge float %121, 0.000000e+00
  br i1 %cmp134, label %cond.true136, label %cond.false137

cond.true136:                                     ; preds = %cond.end128
  %122 = load float, ptr %r__5, align 4
  br label %cond.end139

cond.false137:                                    ; preds = %cond.end128
  %123 = load float, ptr %r__5, align 4
  %fneg138 = fneg float %123
  br label %cond.end139

cond.end139:                                      ; preds = %cond.false137, %cond.true136
  %cond140 = phi float [ %122, %cond.true136 ], [ %fneg138, %cond.false137 ]
  %124 = load ptr, ptr %x.addr, align 8
  %125 = load i32, ptr %j, align 4
  %126 = load i32, ptr %x_dim1, align 4
  %mul141 = mul nsw i32 %125, %126
  %add142 = add nsw i32 %mul141, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds %struct.complex, ptr %124, i64 %idxprom143
  %call145 = call double @r_imag(ptr noundef %arrayidx144)
  %conv146 = fptrunc double %call145 to float
  store float %conv146, ptr %r__6, align 4
  %127 = load float, ptr %r__6, align 4
  %cmp147 = fcmp oge float %127, 0.000000e+00
  br i1 %cmp147, label %cond.true149, label %cond.false150

cond.true149:                                     ; preds = %cond.end139
  %128 = load float, ptr %r__6, align 4
  br label %cond.end152

cond.false150:                                    ; preds = %cond.end139
  %129 = load float, ptr %r__6, align 4
  %fneg151 = fneg float %129
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false150, %cond.true149
  %cond153 = phi float [ %128, %cond.true149 ], [ %fneg151, %cond.false150 ]
  %add154 = fadd float %cond140, %cond153
  %130 = call float @llvm.fmuladd.f32(float %add130, float %add154, float %add110)
  %131 = load ptr, ptr %rwork.addr, align 8
  %arrayidx156 = getelementptr inbounds float, ptr %131, i64 1
  store float %130, ptr %arrayidx156, align 4
  br label %if.end598

if.else157:                                       ; preds = %if.then81
  %132 = load i32, ptr %j, align 4
  %133 = load i32, ptr %b_dim1, align 4
  %mul158 = mul nsw i32 %132, %133
  %add159 = add nsw i32 %mul158, 1
  store i32 %add159, ptr %i__2, align 4
  %134 = load i32, ptr %j, align 4
  %135 = load i32, ptr %x_dim1, align 4
  %mul160 = mul nsw i32 %134, %135
  %add161 = add nsw i32 %mul160, 1
  store i32 %add161, ptr %i__3, align 4
  %136 = load i32, ptr %j, align 4
  %137 = load i32, ptr %x_dim1, align 4
  %mul162 = mul nsw i32 %136, %137
  %add163 = add nsw i32 %mul162, 2
  store i32 %add163, ptr %i__4, align 4
  %138 = load ptr, ptr %b.addr, align 8
  %139 = load i32, ptr %i__2, align 4
  %idxprom164 = sext i32 %139 to i64
  %arrayidx165 = getelementptr inbounds %struct.complex, ptr %138, i64 %idxprom164
  %r166 = getelementptr inbounds %struct.complex, ptr %arrayidx165, i32 0, i32 0
  %140 = load float, ptr %r166, align 4
  store float %140, ptr %r__1, align 4
  %141 = load float, ptr %r__1, align 4
  %cmp167 = fcmp oge float %141, 0.000000e+00
  br i1 %cmp167, label %cond.true169, label %cond.false170

cond.true169:                                     ; preds = %if.else157
  %142 = load float, ptr %r__1, align 4
  br label %cond.end172

cond.false170:                                    ; preds = %if.else157
  %143 = load float, ptr %r__1, align 4
  %fneg171 = fneg float %143
  br label %cond.end172

cond.end172:                                      ; preds = %cond.false170, %cond.true169
  %cond173 = phi float [ %142, %cond.true169 ], [ %fneg171, %cond.false170 ]
  %144 = load ptr, ptr %b.addr, align 8
  %145 = load i32, ptr %j, align 4
  %146 = load i32, ptr %b_dim1, align 4
  %mul174 = mul nsw i32 %145, %146
  %add175 = add nsw i32 %mul174, 1
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds %struct.complex, ptr %144, i64 %idxprom176
  %call178 = call double @r_imag(ptr noundef %arrayidx177)
  %conv179 = fptrunc double %call178 to float
  store float %conv179, ptr %r__2, align 4
  %147 = load float, ptr %r__2, align 4
  %cmp180 = fcmp oge float %147, 0.000000e+00
  br i1 %cmp180, label %cond.true182, label %cond.false183

cond.true182:                                     ; preds = %cond.end172
  %148 = load float, ptr %r__2, align 4
  br label %cond.end185

cond.false183:                                    ; preds = %cond.end172
  %149 = load float, ptr %r__2, align 4
  %fneg184 = fneg float %149
  br label %cond.end185

cond.end185:                                      ; preds = %cond.false183, %cond.true182
  %cond186 = phi float [ %148, %cond.true182 ], [ %fneg184, %cond.false183 ]
  %add187 = fadd float %cond173, %cond186
  %150 = load ptr, ptr %d__.addr, align 8
  %arrayidx188 = getelementptr inbounds %struct.complex, ptr %150, i64 1
  %r189 = getelementptr inbounds %struct.complex, ptr %arrayidx188, i32 0, i32 0
  %151 = load float, ptr %r189, align 4
  store float %151, ptr %r__3, align 4
  %152 = load float, ptr %r__3, align 4
  %cmp190 = fcmp oge float %152, 0.000000e+00
  br i1 %cmp190, label %cond.true192, label %cond.false193

cond.true192:                                     ; preds = %cond.end185
  %153 = load float, ptr %r__3, align 4
  br label %cond.end195

cond.false193:                                    ; preds = %cond.end185
  %154 = load float, ptr %r__3, align 4
  %fneg194 = fneg float %154
  br label %cond.end195

cond.end195:                                      ; preds = %cond.false193, %cond.true192
  %cond196 = phi float [ %153, %cond.true192 ], [ %fneg194, %cond.false193 ]
  %155 = load ptr, ptr %d__.addr, align 8
  %arrayidx197 = getelementptr inbounds %struct.complex, ptr %155, i64 1
  %call198 = call double @r_imag(ptr noundef %arrayidx197)
  %conv199 = fptrunc double %call198 to float
  store float %conv199, ptr %r__4, align 4
  %156 = load float, ptr %r__4, align 4
  %cmp200 = fcmp oge float %156, 0.000000e+00
  br i1 %cmp200, label %cond.true202, label %cond.false203

cond.true202:                                     ; preds = %cond.end195
  %157 = load float, ptr %r__4, align 4
  br label %cond.end205

cond.false203:                                    ; preds = %cond.end195
  %158 = load float, ptr %r__4, align 4
  %fneg204 = fneg float %158
  br label %cond.end205

cond.end205:                                      ; preds = %cond.false203, %cond.true202
  %cond206 = phi float [ %157, %cond.true202 ], [ %fneg204, %cond.false203 ]
  %add207 = fadd float %cond196, %cond206
  %159 = load ptr, ptr %x.addr, align 8
  %160 = load i32, ptr %i__3, align 4
  %idxprom208 = sext i32 %160 to i64
  %arrayidx209 = getelementptr inbounds %struct.complex, ptr %159, i64 %idxprom208
  %r210 = getelementptr inbounds %struct.complex, ptr %arrayidx209, i32 0, i32 0
  %161 = load float, ptr %r210, align 4
  store float %161, ptr %r__5, align 4
  %162 = load float, ptr %r__5, align 4
  %cmp211 = fcmp oge float %162, 0.000000e+00
  br i1 %cmp211, label %cond.true213, label %cond.false214

cond.true213:                                     ; preds = %cond.end205
  %163 = load float, ptr %r__5, align 4
  br label %cond.end216

cond.false214:                                    ; preds = %cond.end205
  %164 = load float, ptr %r__5, align 4
  %fneg215 = fneg float %164
  br label %cond.end216

cond.end216:                                      ; preds = %cond.false214, %cond.true213
  %cond217 = phi float [ %163, %cond.true213 ], [ %fneg215, %cond.false214 ]
  %165 = load ptr, ptr %x.addr, align 8
  %166 = load i32, ptr %j, align 4
  %167 = load i32, ptr %x_dim1, align 4
  %mul218 = mul nsw i32 %166, %167
  %add219 = add nsw i32 %mul218, 1
  %idxprom220 = sext i32 %add219 to i64
  %arrayidx221 = getelementptr inbounds %struct.complex, ptr %165, i64 %idxprom220
  %call222 = call double @r_imag(ptr noundef %arrayidx221)
  %conv223 = fptrunc double %call222 to float
  store float %conv223, ptr %r__6, align 4
  %168 = load float, ptr %r__6, align 4
  %cmp224 = fcmp oge float %168, 0.000000e+00
  br i1 %cmp224, label %cond.true226, label %cond.false227

cond.true226:                                     ; preds = %cond.end216
  %169 = load float, ptr %r__6, align 4
  br label %cond.end229

cond.false227:                                    ; preds = %cond.end216
  %170 = load float, ptr %r__6, align 4
  %fneg228 = fneg float %170
  br label %cond.end229

cond.end229:                                      ; preds = %cond.false227, %cond.true226
  %cond230 = phi float [ %169, %cond.true226 ], [ %fneg228, %cond.false227 ]
  %add231 = fadd float %cond217, %cond230
  %171 = call float @llvm.fmuladd.f32(float %add207, float %add231, float %add187)
  %172 = load ptr, ptr %du.addr, align 8
  %arrayidx233 = getelementptr inbounds %struct.complex, ptr %172, i64 1
  %r234 = getelementptr inbounds %struct.complex, ptr %arrayidx233, i32 0, i32 0
  %173 = load float, ptr %r234, align 4
  store float %173, ptr %r__7, align 4
  %174 = load float, ptr %r__7, align 4
  %cmp235 = fcmp oge float %174, 0.000000e+00
  br i1 %cmp235, label %cond.true237, label %cond.false238

cond.true237:                                     ; preds = %cond.end229
  %175 = load float, ptr %r__7, align 4
  br label %cond.end240

cond.false238:                                    ; preds = %cond.end229
  %176 = load float, ptr %r__7, align 4
  %fneg239 = fneg float %176
  br label %cond.end240

cond.end240:                                      ; preds = %cond.false238, %cond.true237
  %cond241 = phi float [ %175, %cond.true237 ], [ %fneg239, %cond.false238 ]
  %177 = load ptr, ptr %du.addr, align 8
  %arrayidx242 = getelementptr inbounds %struct.complex, ptr %177, i64 1
  %call243 = call double @r_imag(ptr noundef %arrayidx242)
  %conv244 = fptrunc double %call243 to float
  store float %conv244, ptr %r__8, align 4
  %178 = load float, ptr %r__8, align 4
  %cmp245 = fcmp oge float %178, 0.000000e+00
  br i1 %cmp245, label %cond.true247, label %cond.false248

cond.true247:                                     ; preds = %cond.end240
  %179 = load float, ptr %r__8, align 4
  br label %cond.end250

cond.false248:                                    ; preds = %cond.end240
  %180 = load float, ptr %r__8, align 4
  %fneg249 = fneg float %180
  br label %cond.end250

cond.end250:                                      ; preds = %cond.false248, %cond.true247
  %cond251 = phi float [ %179, %cond.true247 ], [ %fneg249, %cond.false248 ]
  %add252 = fadd float %cond241, %cond251
  %181 = load ptr, ptr %x.addr, align 8
  %182 = load i32, ptr %i__4, align 4
  %idxprom253 = sext i32 %182 to i64
  %arrayidx254 = getelementptr inbounds %struct.complex, ptr %181, i64 %idxprom253
  %r255 = getelementptr inbounds %struct.complex, ptr %arrayidx254, i32 0, i32 0
  %183 = load float, ptr %r255, align 4
  store float %183, ptr %r__9, align 4
  %184 = load float, ptr %r__9, align 4
  %cmp256 = fcmp oge float %184, 0.000000e+00
  br i1 %cmp256, label %cond.true258, label %cond.false259

cond.true258:                                     ; preds = %cond.end250
  %185 = load float, ptr %r__9, align 4
  br label %cond.end261

cond.false259:                                    ; preds = %cond.end250
  %186 = load float, ptr %r__9, align 4
  %fneg260 = fneg float %186
  br label %cond.end261

cond.end261:                                      ; preds = %cond.false259, %cond.true258
  %cond262 = phi float [ %185, %cond.true258 ], [ %fneg260, %cond.false259 ]
  %187 = load ptr, ptr %x.addr, align 8
  %188 = load i32, ptr %j, align 4
  %189 = load i32, ptr %x_dim1, align 4
  %mul263 = mul nsw i32 %188, %189
  %add264 = add nsw i32 %mul263, 2
  %idxprom265 = sext i32 %add264 to i64
  %arrayidx266 = getelementptr inbounds %struct.complex, ptr %187, i64 %idxprom265
  %call267 = call double @r_imag(ptr noundef %arrayidx266)
  %conv268 = fptrunc double %call267 to float
  store float %conv268, ptr %r__10, align 4
  %190 = load float, ptr %r__10, align 4
  %cmp269 = fcmp oge float %190, 0.000000e+00
  br i1 %cmp269, label %cond.true271, label %cond.false272

cond.true271:                                     ; preds = %cond.end261
  %191 = load float, ptr %r__10, align 4
  br label %cond.end274

cond.false272:                                    ; preds = %cond.end261
  %192 = load float, ptr %r__10, align 4
  %fneg273 = fneg float %192
  br label %cond.end274

cond.end274:                                      ; preds = %cond.false272, %cond.true271
  %cond275 = phi float [ %191, %cond.true271 ], [ %fneg273, %cond.false272 ]
  %add276 = fadd float %cond262, %cond275
  %193 = call float @llvm.fmuladd.f32(float %add252, float %add276, float %171)
  %194 = load ptr, ptr %rwork.addr, align 8
  %arrayidx278 = getelementptr inbounds float, ptr %194, i64 1
  store float %193, ptr %arrayidx278, align 4
  %195 = load ptr, ptr %n.addr, align 8
  %196 = load i32, ptr %195, align 4
  %sub279 = sub nsw i32 %196, 1
  store i32 %sub279, ptr %i__2, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond280

for.cond280:                                      ; preds = %for.inc465, %cond.end274
  %197 = load i32, ptr %i__, align 4
  %198 = load i32, ptr %i__2, align 4
  %cmp281 = icmp sle i32 %197, %198
  br i1 %cmp281, label %for.body283, label %for.end467

for.body283:                                      ; preds = %for.cond280
  %199 = load i32, ptr %i__, align 4
  %200 = load i32, ptr %j, align 4
  %201 = load i32, ptr %b_dim1, align 4
  %mul284 = mul nsw i32 %200, %201
  %add285 = add nsw i32 %199, %mul284
  store i32 %add285, ptr %i__3, align 4
  %202 = load i32, ptr %i__, align 4
  %sub286 = sub nsw i32 %202, 1
  store i32 %sub286, ptr %i__4, align 4
  %203 = load i32, ptr %i__, align 4
  %sub287 = sub nsw i32 %203, 1
  %204 = load i32, ptr %j, align 4
  %205 = load i32, ptr %x_dim1, align 4
  %mul288 = mul nsw i32 %204, %205
  %add289 = add nsw i32 %sub287, %mul288
  store i32 %add289, ptr %i__5, align 4
  %206 = load i32, ptr %i__, align 4
  store i32 %206, ptr %i__6, align 4
  %207 = load i32, ptr %i__, align 4
  %208 = load i32, ptr %j, align 4
  %209 = load i32, ptr %x_dim1, align 4
  %mul290 = mul nsw i32 %208, %209
  %add291 = add nsw i32 %207, %mul290
  store i32 %add291, ptr %i__7, align 4
  %210 = load i32, ptr %i__, align 4
  store i32 %210, ptr %i__8, align 4
  %211 = load i32, ptr %i__, align 4
  %add292 = add nsw i32 %211, 1
  %212 = load i32, ptr %j, align 4
  %213 = load i32, ptr %x_dim1, align 4
  %mul293 = mul nsw i32 %212, %213
  %add294 = add nsw i32 %add292, %mul293
  store i32 %add294, ptr %i__9, align 4
  %214 = load ptr, ptr %b.addr, align 8
  %215 = load i32, ptr %i__3, align 4
  %idxprom295 = sext i32 %215 to i64
  %arrayidx296 = getelementptr inbounds %struct.complex, ptr %214, i64 %idxprom295
  %r297 = getelementptr inbounds %struct.complex, ptr %arrayidx296, i32 0, i32 0
  %216 = load float, ptr %r297, align 4
  store float %216, ptr %r__1, align 4
  %217 = load float, ptr %r__1, align 4
  %cmp298 = fcmp oge float %217, 0.000000e+00
  br i1 %cmp298, label %cond.true300, label %cond.false301

cond.true300:                                     ; preds = %for.body283
  %218 = load float, ptr %r__1, align 4
  br label %cond.end303

cond.false301:                                    ; preds = %for.body283
  %219 = load float, ptr %r__1, align 4
  %fneg302 = fneg float %219
  br label %cond.end303

cond.end303:                                      ; preds = %cond.false301, %cond.true300
  %cond304 = phi float [ %218, %cond.true300 ], [ %fneg302, %cond.false301 ]
  %220 = load ptr, ptr %b.addr, align 8
  %221 = load i32, ptr %i__, align 4
  %222 = load i32, ptr %j, align 4
  %223 = load i32, ptr %b_dim1, align 4
  %mul305 = mul nsw i32 %222, %223
  %add306 = add nsw i32 %221, %mul305
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds %struct.complex, ptr %220, i64 %idxprom307
  %call309 = call double @r_imag(ptr noundef %arrayidx308)
  %conv310 = fptrunc double %call309 to float
  store float %conv310, ptr %r__2, align 4
  %224 = load float, ptr %r__2, align 4
  %cmp311 = fcmp oge float %224, 0.000000e+00
  br i1 %cmp311, label %cond.true313, label %cond.false314

cond.true313:                                     ; preds = %cond.end303
  %225 = load float, ptr %r__2, align 4
  br label %cond.end316

cond.false314:                                    ; preds = %cond.end303
  %226 = load float, ptr %r__2, align 4
  %fneg315 = fneg float %226
  br label %cond.end316

cond.end316:                                      ; preds = %cond.false314, %cond.true313
  %cond317 = phi float [ %225, %cond.true313 ], [ %fneg315, %cond.false314 ]
  %add318 = fadd float %cond304, %cond317
  %227 = load ptr, ptr %dl.addr, align 8
  %228 = load i32, ptr %i__4, align 4
  %idxprom319 = sext i32 %228 to i64
  %arrayidx320 = getelementptr inbounds %struct.complex, ptr %227, i64 %idxprom319
  %r321 = getelementptr inbounds %struct.complex, ptr %arrayidx320, i32 0, i32 0
  %229 = load float, ptr %r321, align 4
  store float %229, ptr %r__3, align 4
  %230 = load float, ptr %r__3, align 4
  %cmp322 = fcmp oge float %230, 0.000000e+00
  br i1 %cmp322, label %cond.true324, label %cond.false325

cond.true324:                                     ; preds = %cond.end316
  %231 = load float, ptr %r__3, align 4
  br label %cond.end327

cond.false325:                                    ; preds = %cond.end316
  %232 = load float, ptr %r__3, align 4
  %fneg326 = fneg float %232
  br label %cond.end327

cond.end327:                                      ; preds = %cond.false325, %cond.true324
  %cond328 = phi float [ %231, %cond.true324 ], [ %fneg326, %cond.false325 ]
  %233 = load ptr, ptr %dl.addr, align 8
  %234 = load i32, ptr %i__, align 4
  %sub329 = sub nsw i32 %234, 1
  %idxprom330 = sext i32 %sub329 to i64
  %arrayidx331 = getelementptr inbounds %struct.complex, ptr %233, i64 %idxprom330
  %call332 = call double @r_imag(ptr noundef %arrayidx331)
  %conv333 = fptrunc double %call332 to float
  store float %conv333, ptr %r__4, align 4
  %235 = load float, ptr %r__4, align 4
  %cmp334 = fcmp oge float %235, 0.000000e+00
  br i1 %cmp334, label %cond.true336, label %cond.false337

cond.true336:                                     ; preds = %cond.end327
  %236 = load float, ptr %r__4, align 4
  br label %cond.end339

cond.false337:                                    ; preds = %cond.end327
  %237 = load float, ptr %r__4, align 4
  %fneg338 = fneg float %237
  br label %cond.end339

cond.end339:                                      ; preds = %cond.false337, %cond.true336
  %cond340 = phi float [ %236, %cond.true336 ], [ %fneg338, %cond.false337 ]
  %add341 = fadd float %cond328, %cond340
  %238 = load ptr, ptr %x.addr, align 8
  %239 = load i32, ptr %i__5, align 4
  %idxprom342 = sext i32 %239 to i64
  %arrayidx343 = getelementptr inbounds %struct.complex, ptr %238, i64 %idxprom342
  %r344 = getelementptr inbounds %struct.complex, ptr %arrayidx343, i32 0, i32 0
  %240 = load float, ptr %r344, align 4
  store float %240, ptr %r__5, align 4
  %241 = load float, ptr %r__5, align 4
  %cmp345 = fcmp oge float %241, 0.000000e+00
  br i1 %cmp345, label %cond.true347, label %cond.false348

cond.true347:                                     ; preds = %cond.end339
  %242 = load float, ptr %r__5, align 4
  br label %cond.end350

cond.false348:                                    ; preds = %cond.end339
  %243 = load float, ptr %r__5, align 4
  %fneg349 = fneg float %243
  br label %cond.end350

cond.end350:                                      ; preds = %cond.false348, %cond.true347
  %cond351 = phi float [ %242, %cond.true347 ], [ %fneg349, %cond.false348 ]
  %244 = load ptr, ptr %x.addr, align 8
  %245 = load i32, ptr %i__, align 4
  %sub352 = sub nsw i32 %245, 1
  %246 = load i32, ptr %j, align 4
  %247 = load i32, ptr %x_dim1, align 4
  %mul353 = mul nsw i32 %246, %247
  %add354 = add nsw i32 %sub352, %mul353
  %idxprom355 = sext i32 %add354 to i64
  %arrayidx356 = getelementptr inbounds %struct.complex, ptr %244, i64 %idxprom355
  %call357 = call double @r_imag(ptr noundef %arrayidx356)
  %conv358 = fptrunc double %call357 to float
  store float %conv358, ptr %r__6, align 4
  %248 = load float, ptr %r__6, align 4
  %cmp359 = fcmp oge float %248, 0.000000e+00
  br i1 %cmp359, label %cond.true361, label %cond.false362

cond.true361:                                     ; preds = %cond.end350
  %249 = load float, ptr %r__6, align 4
  br label %cond.end364

cond.false362:                                    ; preds = %cond.end350
  %250 = load float, ptr %r__6, align 4
  %fneg363 = fneg float %250
  br label %cond.end364

cond.end364:                                      ; preds = %cond.false362, %cond.true361
  %cond365 = phi float [ %249, %cond.true361 ], [ %fneg363, %cond.false362 ]
  %add366 = fadd float %cond351, %cond365
  %251 = call float @llvm.fmuladd.f32(float %add341, float %add366, float %add318)
  %252 = load ptr, ptr %d__.addr, align 8
  %253 = load i32, ptr %i__6, align 4
  %idxprom368 = sext i32 %253 to i64
  %arrayidx369 = getelementptr inbounds %struct.complex, ptr %252, i64 %idxprom368
  %r370 = getelementptr inbounds %struct.complex, ptr %arrayidx369, i32 0, i32 0
  %254 = load float, ptr %r370, align 4
  store float %254, ptr %r__7, align 4
  %255 = load float, ptr %r__7, align 4
  %cmp371 = fcmp oge float %255, 0.000000e+00
  br i1 %cmp371, label %cond.true373, label %cond.false374

cond.true373:                                     ; preds = %cond.end364
  %256 = load float, ptr %r__7, align 4
  br label %cond.end376

cond.false374:                                    ; preds = %cond.end364
  %257 = load float, ptr %r__7, align 4
  %fneg375 = fneg float %257
  br label %cond.end376

cond.end376:                                      ; preds = %cond.false374, %cond.true373
  %cond377 = phi float [ %256, %cond.true373 ], [ %fneg375, %cond.false374 ]
  %258 = load ptr, ptr %d__.addr, align 8
  %259 = load i32, ptr %i__, align 4
  %idxprom378 = sext i32 %259 to i64
  %arrayidx379 = getelementptr inbounds %struct.complex, ptr %258, i64 %idxprom378
  %call380 = call double @r_imag(ptr noundef %arrayidx379)
  %conv381 = fptrunc double %call380 to float
  store float %conv381, ptr %r__8, align 4
  %260 = load float, ptr %r__8, align 4
  %cmp382 = fcmp oge float %260, 0.000000e+00
  br i1 %cmp382, label %cond.true384, label %cond.false385

cond.true384:                                     ; preds = %cond.end376
  %261 = load float, ptr %r__8, align 4
  br label %cond.end387

cond.false385:                                    ; preds = %cond.end376
  %262 = load float, ptr %r__8, align 4
  %fneg386 = fneg float %262
  br label %cond.end387

cond.end387:                                      ; preds = %cond.false385, %cond.true384
  %cond388 = phi float [ %261, %cond.true384 ], [ %fneg386, %cond.false385 ]
  %add389 = fadd float %cond377, %cond388
  %263 = load ptr, ptr %x.addr, align 8
  %264 = load i32, ptr %i__7, align 4
  %idxprom390 = sext i32 %264 to i64
  %arrayidx391 = getelementptr inbounds %struct.complex, ptr %263, i64 %idxprom390
  %r392 = getelementptr inbounds %struct.complex, ptr %arrayidx391, i32 0, i32 0
  %265 = load float, ptr %r392, align 4
  store float %265, ptr %r__9, align 4
  %266 = load float, ptr %r__9, align 4
  %cmp393 = fcmp oge float %266, 0.000000e+00
  br i1 %cmp393, label %cond.true395, label %cond.false396

cond.true395:                                     ; preds = %cond.end387
  %267 = load float, ptr %r__9, align 4
  br label %cond.end398

cond.false396:                                    ; preds = %cond.end387
  %268 = load float, ptr %r__9, align 4
  %fneg397 = fneg float %268
  br label %cond.end398

cond.end398:                                      ; preds = %cond.false396, %cond.true395
  %cond399 = phi float [ %267, %cond.true395 ], [ %fneg397, %cond.false396 ]
  %269 = load ptr, ptr %x.addr, align 8
  %270 = load i32, ptr %i__, align 4
  %271 = load i32, ptr %j, align 4
  %272 = load i32, ptr %x_dim1, align 4
  %mul400 = mul nsw i32 %271, %272
  %add401 = add nsw i32 %270, %mul400
  %idxprom402 = sext i32 %add401 to i64
  %arrayidx403 = getelementptr inbounds %struct.complex, ptr %269, i64 %idxprom402
  %call404 = call double @r_imag(ptr noundef %arrayidx403)
  %conv405 = fptrunc double %call404 to float
  store float %conv405, ptr %r__10, align 4
  %273 = load float, ptr %r__10, align 4
  %cmp406 = fcmp oge float %273, 0.000000e+00
  br i1 %cmp406, label %cond.true408, label %cond.false409

cond.true408:                                     ; preds = %cond.end398
  %274 = load float, ptr %r__10, align 4
  br label %cond.end411

cond.false409:                                    ; preds = %cond.end398
  %275 = load float, ptr %r__10, align 4
  %fneg410 = fneg float %275
  br label %cond.end411

cond.end411:                                      ; preds = %cond.false409, %cond.true408
  %cond412 = phi float [ %274, %cond.true408 ], [ %fneg410, %cond.false409 ]
  %add413 = fadd float %cond399, %cond412
  %276 = call float @llvm.fmuladd.f32(float %add389, float %add413, float %251)
  %277 = load ptr, ptr %du.addr, align 8
  %278 = load i32, ptr %i__8, align 4
  %idxprom415 = sext i32 %278 to i64
  %arrayidx416 = getelementptr inbounds %struct.complex, ptr %277, i64 %idxprom415
  %r417 = getelementptr inbounds %struct.complex, ptr %arrayidx416, i32 0, i32 0
  %279 = load float, ptr %r417, align 4
  store float %279, ptr %r__11, align 4
  %280 = load float, ptr %r__11, align 4
  %cmp418 = fcmp oge float %280, 0.000000e+00
  br i1 %cmp418, label %cond.true420, label %cond.false421

cond.true420:                                     ; preds = %cond.end411
  %281 = load float, ptr %r__11, align 4
  br label %cond.end423

cond.false421:                                    ; preds = %cond.end411
  %282 = load float, ptr %r__11, align 4
  %fneg422 = fneg float %282
  br label %cond.end423

cond.end423:                                      ; preds = %cond.false421, %cond.true420
  %cond424 = phi float [ %281, %cond.true420 ], [ %fneg422, %cond.false421 ]
  %283 = load ptr, ptr %du.addr, align 8
  %284 = load i32, ptr %i__, align 4
  %idxprom425 = sext i32 %284 to i64
  %arrayidx426 = getelementptr inbounds %struct.complex, ptr %283, i64 %idxprom425
  %call427 = call double @r_imag(ptr noundef %arrayidx426)
  %conv428 = fptrunc double %call427 to float
  store float %conv428, ptr %r__12, align 4
  %285 = load float, ptr %r__12, align 4
  %cmp429 = fcmp oge float %285, 0.000000e+00
  br i1 %cmp429, label %cond.true431, label %cond.false432

cond.true431:                                     ; preds = %cond.end423
  %286 = load float, ptr %r__12, align 4
  br label %cond.end434

cond.false432:                                    ; preds = %cond.end423
  %287 = load float, ptr %r__12, align 4
  %fneg433 = fneg float %287
  br label %cond.end434

cond.end434:                                      ; preds = %cond.false432, %cond.true431
  %cond435 = phi float [ %286, %cond.true431 ], [ %fneg433, %cond.false432 ]
  %add436 = fadd float %cond424, %cond435
  %288 = load ptr, ptr %x.addr, align 8
  %289 = load i32, ptr %i__9, align 4
  %idxprom437 = sext i32 %289 to i64
  %arrayidx438 = getelementptr inbounds %struct.complex, ptr %288, i64 %idxprom437
  %r439 = getelementptr inbounds %struct.complex, ptr %arrayidx438, i32 0, i32 0
  %290 = load float, ptr %r439, align 4
  store float %290, ptr %r__13, align 4
  %291 = load float, ptr %r__13, align 4
  %cmp440 = fcmp oge float %291, 0.000000e+00
  br i1 %cmp440, label %cond.true442, label %cond.false443

cond.true442:                                     ; preds = %cond.end434
  %292 = load float, ptr %r__13, align 4
  br label %cond.end445

cond.false443:                                    ; preds = %cond.end434
  %293 = load float, ptr %r__13, align 4
  %fneg444 = fneg float %293
  br label %cond.end445

cond.end445:                                      ; preds = %cond.false443, %cond.true442
  %cond446 = phi float [ %292, %cond.true442 ], [ %fneg444, %cond.false443 ]
  %294 = load ptr, ptr %x.addr, align 8
  %295 = load i32, ptr %i__, align 4
  %add447 = add nsw i32 %295, 1
  %296 = load i32, ptr %j, align 4
  %297 = load i32, ptr %x_dim1, align 4
  %mul448 = mul nsw i32 %296, %297
  %add449 = add nsw i32 %add447, %mul448
  %idxprom450 = sext i32 %add449 to i64
  %arrayidx451 = getelementptr inbounds %struct.complex, ptr %294, i64 %idxprom450
  %call452 = call double @r_imag(ptr noundef %arrayidx451)
  %conv453 = fptrunc double %call452 to float
  store float %conv453, ptr %r__14, align 4
  %298 = load float, ptr %r__14, align 4
  %cmp454 = fcmp oge float %298, 0.000000e+00
  br i1 %cmp454, label %cond.true456, label %cond.false457

cond.true456:                                     ; preds = %cond.end445
  %299 = load float, ptr %r__14, align 4
  br label %cond.end459

cond.false457:                                    ; preds = %cond.end445
  %300 = load float, ptr %r__14, align 4
  %fneg458 = fneg float %300
  br label %cond.end459

cond.end459:                                      ; preds = %cond.false457, %cond.true456
  %cond460 = phi float [ %299, %cond.true456 ], [ %fneg458, %cond.false457 ]
  %add461 = fadd float %cond446, %cond460
  %301 = call float @llvm.fmuladd.f32(float %add436, float %add461, float %276)
  %302 = load ptr, ptr %rwork.addr, align 8
  %303 = load i32, ptr %i__, align 4
  %idxprom463 = sext i32 %303 to i64
  %arrayidx464 = getelementptr inbounds float, ptr %302, i64 %idxprom463
  store float %301, ptr %arrayidx464, align 4
  br label %for.inc465

for.inc465:                                       ; preds = %cond.end459
  %304 = load i32, ptr %i__, align 4
  %inc466 = add nsw i32 %304, 1
  store i32 %inc466, ptr %i__, align 4
  br label %for.cond280, !llvm.loop !7

for.end467:                                       ; preds = %for.cond280
  %305 = load ptr, ptr %n.addr, align 8
  %306 = load i32, ptr %305, align 4
  %307 = load i32, ptr %j, align 4
  %308 = load i32, ptr %b_dim1, align 4
  %mul468 = mul nsw i32 %307, %308
  %add469 = add nsw i32 %306, %mul468
  store i32 %add469, ptr %i__2, align 4
  %309 = load ptr, ptr %n.addr, align 8
  %310 = load i32, ptr %309, align 4
  %sub470 = sub nsw i32 %310, 1
  store i32 %sub470, ptr %i__3, align 4
  %311 = load ptr, ptr %n.addr, align 8
  %312 = load i32, ptr %311, align 4
  %sub471 = sub nsw i32 %312, 1
  %313 = load i32, ptr %j, align 4
  %314 = load i32, ptr %x_dim1, align 4
  %mul472 = mul nsw i32 %313, %314
  %add473 = add nsw i32 %sub471, %mul472
  store i32 %add473, ptr %i__4, align 4
  %315 = load ptr, ptr %n.addr, align 8
  %316 = load i32, ptr %315, align 4
  store i32 %316, ptr %i__5, align 4
  %317 = load ptr, ptr %n.addr, align 8
  %318 = load i32, ptr %317, align 4
  %319 = load i32, ptr %j, align 4
  %320 = load i32, ptr %x_dim1, align 4
  %mul474 = mul nsw i32 %319, %320
  %add475 = add nsw i32 %318, %mul474
  store i32 %add475, ptr %i__6, align 4
  %321 = load ptr, ptr %b.addr, align 8
  %322 = load i32, ptr %i__2, align 4
  %idxprom476 = sext i32 %322 to i64
  %arrayidx477 = getelementptr inbounds %struct.complex, ptr %321, i64 %idxprom476
  %r478 = getelementptr inbounds %struct.complex, ptr %arrayidx477, i32 0, i32 0
  %323 = load float, ptr %r478, align 4
  store float %323, ptr %r__1, align 4
  %324 = load float, ptr %r__1, align 4
  %cmp479 = fcmp oge float %324, 0.000000e+00
  br i1 %cmp479, label %cond.true481, label %cond.false482

cond.true481:                                     ; preds = %for.end467
  %325 = load float, ptr %r__1, align 4
  br label %cond.end484

cond.false482:                                    ; preds = %for.end467
  %326 = load float, ptr %r__1, align 4
  %fneg483 = fneg float %326
  br label %cond.end484

cond.end484:                                      ; preds = %cond.false482, %cond.true481
  %cond485 = phi float [ %325, %cond.true481 ], [ %fneg483, %cond.false482 ]
  %327 = load ptr, ptr %b.addr, align 8
  %328 = load ptr, ptr %n.addr, align 8
  %329 = load i32, ptr %328, align 4
  %330 = load i32, ptr %j, align 4
  %331 = load i32, ptr %b_dim1, align 4
  %mul486 = mul nsw i32 %330, %331
  %add487 = add nsw i32 %329, %mul486
  %idxprom488 = sext i32 %add487 to i64
  %arrayidx489 = getelementptr inbounds %struct.complex, ptr %327, i64 %idxprom488
  %call490 = call double @r_imag(ptr noundef %arrayidx489)
  %conv491 = fptrunc double %call490 to float
  store float %conv491, ptr %r__2, align 4
  %332 = load float, ptr %r__2, align 4
  %cmp492 = fcmp oge float %332, 0.000000e+00
  br i1 %cmp492, label %cond.true494, label %cond.false495

cond.true494:                                     ; preds = %cond.end484
  %333 = load float, ptr %r__2, align 4
  br label %cond.end497

cond.false495:                                    ; preds = %cond.end484
  %334 = load float, ptr %r__2, align 4
  %fneg496 = fneg float %334
  br label %cond.end497

cond.end497:                                      ; preds = %cond.false495, %cond.true494
  %cond498 = phi float [ %333, %cond.true494 ], [ %fneg496, %cond.false495 ]
  %add499 = fadd float %cond485, %cond498
  %335 = load ptr, ptr %dl.addr, align 8
  %336 = load i32, ptr %i__3, align 4
  %idxprom500 = sext i32 %336 to i64
  %arrayidx501 = getelementptr inbounds %struct.complex, ptr %335, i64 %idxprom500
  %r502 = getelementptr inbounds %struct.complex, ptr %arrayidx501, i32 0, i32 0
  %337 = load float, ptr %r502, align 4
  store float %337, ptr %r__3, align 4
  %338 = load float, ptr %r__3, align 4
  %cmp503 = fcmp oge float %338, 0.000000e+00
  br i1 %cmp503, label %cond.true505, label %cond.false506

cond.true505:                                     ; preds = %cond.end497
  %339 = load float, ptr %r__3, align 4
  br label %cond.end508

cond.false506:                                    ; preds = %cond.end497
  %340 = load float, ptr %r__3, align 4
  %fneg507 = fneg float %340
  br label %cond.end508

cond.end508:                                      ; preds = %cond.false506, %cond.true505
  %cond509 = phi float [ %339, %cond.true505 ], [ %fneg507, %cond.false506 ]
  %341 = load ptr, ptr %dl.addr, align 8
  %342 = load ptr, ptr %n.addr, align 8
  %343 = load i32, ptr %342, align 4
  %sub510 = sub nsw i32 %343, 1
  %idxprom511 = sext i32 %sub510 to i64
  %arrayidx512 = getelementptr inbounds %struct.complex, ptr %341, i64 %idxprom511
  %call513 = call double @r_imag(ptr noundef %arrayidx512)
  %conv514 = fptrunc double %call513 to float
  store float %conv514, ptr %r__4, align 4
  %344 = load float, ptr %r__4, align 4
  %cmp515 = fcmp oge float %344, 0.000000e+00
  br i1 %cmp515, label %cond.true517, label %cond.false518

cond.true517:                                     ; preds = %cond.end508
  %345 = load float, ptr %r__4, align 4
  br label %cond.end520

cond.false518:                                    ; preds = %cond.end508
  %346 = load float, ptr %r__4, align 4
  %fneg519 = fneg float %346
  br label %cond.end520

cond.end520:                                      ; preds = %cond.false518, %cond.true517
  %cond521 = phi float [ %345, %cond.true517 ], [ %fneg519, %cond.false518 ]
  %add522 = fadd float %cond509, %cond521
  %347 = load ptr, ptr %x.addr, align 8
  %348 = load i32, ptr %i__4, align 4
  %idxprom523 = sext i32 %348 to i64
  %arrayidx524 = getelementptr inbounds %struct.complex, ptr %347, i64 %idxprom523
  %r525 = getelementptr inbounds %struct.complex, ptr %arrayidx524, i32 0, i32 0
  %349 = load float, ptr %r525, align 4
  store float %349, ptr %r__5, align 4
  %350 = load float, ptr %r__5, align 4
  %cmp526 = fcmp oge float %350, 0.000000e+00
  br i1 %cmp526, label %cond.true528, label %cond.false529

cond.true528:                                     ; preds = %cond.end520
  %351 = load float, ptr %r__5, align 4
  br label %cond.end531

cond.false529:                                    ; preds = %cond.end520
  %352 = load float, ptr %r__5, align 4
  %fneg530 = fneg float %352
  br label %cond.end531

cond.end531:                                      ; preds = %cond.false529, %cond.true528
  %cond532 = phi float [ %351, %cond.true528 ], [ %fneg530, %cond.false529 ]
  %353 = load ptr, ptr %x.addr, align 8
  %354 = load ptr, ptr %n.addr, align 8
  %355 = load i32, ptr %354, align 4
  %sub533 = sub nsw i32 %355, 1
  %356 = load i32, ptr %j, align 4
  %357 = load i32, ptr %x_dim1, align 4
  %mul534 = mul nsw i32 %356, %357
  %add535 = add nsw i32 %sub533, %mul534
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds %struct.complex, ptr %353, i64 %idxprom536
  %call538 = call double @r_imag(ptr noundef %arrayidx537)
  %conv539 = fptrunc double %call538 to float
  store float %conv539, ptr %r__6, align 4
  %358 = load float, ptr %r__6, align 4
  %cmp540 = fcmp oge float %358, 0.000000e+00
  br i1 %cmp540, label %cond.true542, label %cond.false543

cond.true542:                                     ; preds = %cond.end531
  %359 = load float, ptr %r__6, align 4
  br label %cond.end545

cond.false543:                                    ; preds = %cond.end531
  %360 = load float, ptr %r__6, align 4
  %fneg544 = fneg float %360
  br label %cond.end545

cond.end545:                                      ; preds = %cond.false543, %cond.true542
  %cond546 = phi float [ %359, %cond.true542 ], [ %fneg544, %cond.false543 ]
  %add547 = fadd float %cond532, %cond546
  %361 = call float @llvm.fmuladd.f32(float %add522, float %add547, float %add499)
  %362 = load ptr, ptr %d__.addr, align 8
  %363 = load i32, ptr %i__5, align 4
  %idxprom549 = sext i32 %363 to i64
  %arrayidx550 = getelementptr inbounds %struct.complex, ptr %362, i64 %idxprom549
  %r551 = getelementptr inbounds %struct.complex, ptr %arrayidx550, i32 0, i32 0
  %364 = load float, ptr %r551, align 4
  store float %364, ptr %r__7, align 4
  %365 = load float, ptr %r__7, align 4
  %cmp552 = fcmp oge float %365, 0.000000e+00
  br i1 %cmp552, label %cond.true554, label %cond.false555

cond.true554:                                     ; preds = %cond.end545
  %366 = load float, ptr %r__7, align 4
  br label %cond.end557

cond.false555:                                    ; preds = %cond.end545
  %367 = load float, ptr %r__7, align 4
  %fneg556 = fneg float %367
  br label %cond.end557

cond.end557:                                      ; preds = %cond.false555, %cond.true554
  %cond558 = phi float [ %366, %cond.true554 ], [ %fneg556, %cond.false555 ]
  %368 = load ptr, ptr %d__.addr, align 8
  %369 = load ptr, ptr %n.addr, align 8
  %370 = load i32, ptr %369, align 4
  %idxprom559 = sext i32 %370 to i64
  %arrayidx560 = getelementptr inbounds %struct.complex, ptr %368, i64 %idxprom559
  %call561 = call double @r_imag(ptr noundef %arrayidx560)
  %conv562 = fptrunc double %call561 to float
  store float %conv562, ptr %r__8, align 4
  %371 = load float, ptr %r__8, align 4
  %cmp563 = fcmp oge float %371, 0.000000e+00
  br i1 %cmp563, label %cond.true565, label %cond.false566

cond.true565:                                     ; preds = %cond.end557
  %372 = load float, ptr %r__8, align 4
  br label %cond.end568

cond.false566:                                    ; preds = %cond.end557
  %373 = load float, ptr %r__8, align 4
  %fneg567 = fneg float %373
  br label %cond.end568

cond.end568:                                      ; preds = %cond.false566, %cond.true565
  %cond569 = phi float [ %372, %cond.true565 ], [ %fneg567, %cond.false566 ]
  %add570 = fadd float %cond558, %cond569
  %374 = load ptr, ptr %x.addr, align 8
  %375 = load i32, ptr %i__6, align 4
  %idxprom571 = sext i32 %375 to i64
  %arrayidx572 = getelementptr inbounds %struct.complex, ptr %374, i64 %idxprom571
  %r573 = getelementptr inbounds %struct.complex, ptr %arrayidx572, i32 0, i32 0
  %376 = load float, ptr %r573, align 4
  store float %376, ptr %r__9, align 4
  %377 = load float, ptr %r__9, align 4
  %cmp574 = fcmp oge float %377, 0.000000e+00
  br i1 %cmp574, label %cond.true576, label %cond.false577

cond.true576:                                     ; preds = %cond.end568
  %378 = load float, ptr %r__9, align 4
  br label %cond.end579

cond.false577:                                    ; preds = %cond.end568
  %379 = load float, ptr %r__9, align 4
  %fneg578 = fneg float %379
  br label %cond.end579

cond.end579:                                      ; preds = %cond.false577, %cond.true576
  %cond580 = phi float [ %378, %cond.true576 ], [ %fneg578, %cond.false577 ]
  %380 = load ptr, ptr %x.addr, align 8
  %381 = load ptr, ptr %n.addr, align 8
  %382 = load i32, ptr %381, align 4
  %383 = load i32, ptr %j, align 4
  %384 = load i32, ptr %x_dim1, align 4
  %mul581 = mul nsw i32 %383, %384
  %add582 = add nsw i32 %382, %mul581
  %idxprom583 = sext i32 %add582 to i64
  %arrayidx584 = getelementptr inbounds %struct.complex, ptr %380, i64 %idxprom583
  %call585 = call double @r_imag(ptr noundef %arrayidx584)
  %conv586 = fptrunc double %call585 to float
  store float %conv586, ptr %r__10, align 4
  %385 = load float, ptr %r__10, align 4
  %cmp587 = fcmp oge float %385, 0.000000e+00
  br i1 %cmp587, label %cond.true589, label %cond.false590

cond.true589:                                     ; preds = %cond.end579
  %386 = load float, ptr %r__10, align 4
  br label %cond.end592

cond.false590:                                    ; preds = %cond.end579
  %387 = load float, ptr %r__10, align 4
  %fneg591 = fneg float %387
  br label %cond.end592

cond.end592:                                      ; preds = %cond.false590, %cond.true589
  %cond593 = phi float [ %386, %cond.true589 ], [ %fneg591, %cond.false590 ]
  %add594 = fadd float %cond580, %cond593
  %388 = call float @llvm.fmuladd.f32(float %add570, float %add594, float %361)
  %389 = load ptr, ptr %rwork.addr, align 8
  %390 = load ptr, ptr %n.addr, align 8
  %391 = load i32, ptr %390, align 4
  %idxprom596 = sext i32 %391 to i64
  %arrayidx597 = getelementptr inbounds float, ptr %389, i64 %idxprom596
  store float %388, ptr %arrayidx597, align 4
  br label %if.end598

if.end598:                                        ; preds = %cond.end592, %cond.end152
  br label %if.end1119

if.else599:                                       ; preds = %L20
  %392 = load ptr, ptr %n.addr, align 8
  %393 = load i32, ptr %392, align 4
  %cmp600 = icmp eq i32 %393, 1
  br i1 %cmp600, label %if.then602, label %if.else677

if.then602:                                       ; preds = %if.else599
  %394 = load i32, ptr %j, align 4
  %395 = load i32, ptr %b_dim1, align 4
  %mul603 = mul nsw i32 %394, %395
  %add604 = add nsw i32 %mul603, 1
  store i32 %add604, ptr %i__2, align 4
  %396 = load i32, ptr %j, align 4
  %397 = load i32, ptr %x_dim1, align 4
  %mul605 = mul nsw i32 %396, %397
  %add606 = add nsw i32 %mul605, 1
  store i32 %add606, ptr %i__3, align 4
  %398 = load ptr, ptr %b.addr, align 8
  %399 = load i32, ptr %i__2, align 4
  %idxprom607 = sext i32 %399 to i64
  %arrayidx608 = getelementptr inbounds %struct.complex, ptr %398, i64 %idxprom607
  %r609 = getelementptr inbounds %struct.complex, ptr %arrayidx608, i32 0, i32 0
  %400 = load float, ptr %r609, align 4
  store float %400, ptr %r__1, align 4
  %401 = load float, ptr %r__1, align 4
  %cmp610 = fcmp oge float %401, 0.000000e+00
  br i1 %cmp610, label %cond.true612, label %cond.false613

cond.true612:                                     ; preds = %if.then602
  %402 = load float, ptr %r__1, align 4
  br label %cond.end615

cond.false613:                                    ; preds = %if.then602
  %403 = load float, ptr %r__1, align 4
  %fneg614 = fneg float %403
  br label %cond.end615

cond.end615:                                      ; preds = %cond.false613, %cond.true612
  %cond616 = phi float [ %402, %cond.true612 ], [ %fneg614, %cond.false613 ]
  %404 = load ptr, ptr %b.addr, align 8
  %405 = load i32, ptr %j, align 4
  %406 = load i32, ptr %b_dim1, align 4
  %mul617 = mul nsw i32 %405, %406
  %add618 = add nsw i32 %mul617, 1
  %idxprom619 = sext i32 %add618 to i64
  %arrayidx620 = getelementptr inbounds %struct.complex, ptr %404, i64 %idxprom619
  %call621 = call double @r_imag(ptr noundef %arrayidx620)
  %conv622 = fptrunc double %call621 to float
  store float %conv622, ptr %r__2, align 4
  %407 = load float, ptr %r__2, align 4
  %cmp623 = fcmp oge float %407, 0.000000e+00
  br i1 %cmp623, label %cond.true625, label %cond.false626

cond.true625:                                     ; preds = %cond.end615
  %408 = load float, ptr %r__2, align 4
  br label %cond.end628

cond.false626:                                    ; preds = %cond.end615
  %409 = load float, ptr %r__2, align 4
  %fneg627 = fneg float %409
  br label %cond.end628

cond.end628:                                      ; preds = %cond.false626, %cond.true625
  %cond629 = phi float [ %408, %cond.true625 ], [ %fneg627, %cond.false626 ]
  %add630 = fadd float %cond616, %cond629
  %410 = load ptr, ptr %d__.addr, align 8
  %arrayidx631 = getelementptr inbounds %struct.complex, ptr %410, i64 1
  %r632 = getelementptr inbounds %struct.complex, ptr %arrayidx631, i32 0, i32 0
  %411 = load float, ptr %r632, align 4
  store float %411, ptr %r__3, align 4
  %412 = load float, ptr %r__3, align 4
  %cmp633 = fcmp oge float %412, 0.000000e+00
  br i1 %cmp633, label %cond.true635, label %cond.false636

cond.true635:                                     ; preds = %cond.end628
  %413 = load float, ptr %r__3, align 4
  br label %cond.end638

cond.false636:                                    ; preds = %cond.end628
  %414 = load float, ptr %r__3, align 4
  %fneg637 = fneg float %414
  br label %cond.end638

cond.end638:                                      ; preds = %cond.false636, %cond.true635
  %cond639 = phi float [ %413, %cond.true635 ], [ %fneg637, %cond.false636 ]
  %415 = load ptr, ptr %d__.addr, align 8
  %arrayidx640 = getelementptr inbounds %struct.complex, ptr %415, i64 1
  %call641 = call double @r_imag(ptr noundef %arrayidx640)
  %conv642 = fptrunc double %call641 to float
  store float %conv642, ptr %r__4, align 4
  %416 = load float, ptr %r__4, align 4
  %cmp643 = fcmp oge float %416, 0.000000e+00
  br i1 %cmp643, label %cond.true645, label %cond.false646

cond.true645:                                     ; preds = %cond.end638
  %417 = load float, ptr %r__4, align 4
  br label %cond.end648

cond.false646:                                    ; preds = %cond.end638
  %418 = load float, ptr %r__4, align 4
  %fneg647 = fneg float %418
  br label %cond.end648

cond.end648:                                      ; preds = %cond.false646, %cond.true645
  %cond649 = phi float [ %417, %cond.true645 ], [ %fneg647, %cond.false646 ]
  %add650 = fadd float %cond639, %cond649
  %419 = load ptr, ptr %x.addr, align 8
  %420 = load i32, ptr %i__3, align 4
  %idxprom651 = sext i32 %420 to i64
  %arrayidx652 = getelementptr inbounds %struct.complex, ptr %419, i64 %idxprom651
  %r653 = getelementptr inbounds %struct.complex, ptr %arrayidx652, i32 0, i32 0
  %421 = load float, ptr %r653, align 4
  store float %421, ptr %r__5, align 4
  %422 = load float, ptr %r__5, align 4
  %cmp654 = fcmp oge float %422, 0.000000e+00
  br i1 %cmp654, label %cond.true656, label %cond.false657

cond.true656:                                     ; preds = %cond.end648
  %423 = load float, ptr %r__5, align 4
  br label %cond.end659

cond.false657:                                    ; preds = %cond.end648
  %424 = load float, ptr %r__5, align 4
  %fneg658 = fneg float %424
  br label %cond.end659

cond.end659:                                      ; preds = %cond.false657, %cond.true656
  %cond660 = phi float [ %423, %cond.true656 ], [ %fneg658, %cond.false657 ]
  %425 = load ptr, ptr %x.addr, align 8
  %426 = load i32, ptr %j, align 4
  %427 = load i32, ptr %x_dim1, align 4
  %mul661 = mul nsw i32 %426, %427
  %add662 = add nsw i32 %mul661, 1
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds %struct.complex, ptr %425, i64 %idxprom663
  %call665 = call double @r_imag(ptr noundef %arrayidx664)
  %conv666 = fptrunc double %call665 to float
  store float %conv666, ptr %r__6, align 4
  %428 = load float, ptr %r__6, align 4
  %cmp667 = fcmp oge float %428, 0.000000e+00
  br i1 %cmp667, label %cond.true669, label %cond.false670

cond.true669:                                     ; preds = %cond.end659
  %429 = load float, ptr %r__6, align 4
  br label %cond.end672

cond.false670:                                    ; preds = %cond.end659
  %430 = load float, ptr %r__6, align 4
  %fneg671 = fneg float %430
  br label %cond.end672

cond.end672:                                      ; preds = %cond.false670, %cond.true669
  %cond673 = phi float [ %429, %cond.true669 ], [ %fneg671, %cond.false670 ]
  %add674 = fadd float %cond660, %cond673
  %431 = call float @llvm.fmuladd.f32(float %add650, float %add674, float %add630)
  %432 = load ptr, ptr %rwork.addr, align 8
  %arrayidx676 = getelementptr inbounds float, ptr %432, i64 1
  store float %431, ptr %arrayidx676, align 4
  br label %if.end1118

if.else677:                                       ; preds = %if.else599
  %433 = load i32, ptr %j, align 4
  %434 = load i32, ptr %b_dim1, align 4
  %mul678 = mul nsw i32 %433, %434
  %add679 = add nsw i32 %mul678, 1
  store i32 %add679, ptr %i__2, align 4
  %435 = load i32, ptr %j, align 4
  %436 = load i32, ptr %x_dim1, align 4
  %mul680 = mul nsw i32 %435, %436
  %add681 = add nsw i32 %mul680, 1
  store i32 %add681, ptr %i__3, align 4
  %437 = load i32, ptr %j, align 4
  %438 = load i32, ptr %x_dim1, align 4
  %mul682 = mul nsw i32 %437, %438
  %add683 = add nsw i32 %mul682, 2
  store i32 %add683, ptr %i__4, align 4
  %439 = load ptr, ptr %b.addr, align 8
  %440 = load i32, ptr %i__2, align 4
  %idxprom684 = sext i32 %440 to i64
  %arrayidx685 = getelementptr inbounds %struct.complex, ptr %439, i64 %idxprom684
  %r686 = getelementptr inbounds %struct.complex, ptr %arrayidx685, i32 0, i32 0
  %441 = load float, ptr %r686, align 4
  store float %441, ptr %r__1, align 4
  %442 = load float, ptr %r__1, align 4
  %cmp687 = fcmp oge float %442, 0.000000e+00
  br i1 %cmp687, label %cond.true689, label %cond.false690

cond.true689:                                     ; preds = %if.else677
  %443 = load float, ptr %r__1, align 4
  br label %cond.end692

cond.false690:                                    ; preds = %if.else677
  %444 = load float, ptr %r__1, align 4
  %fneg691 = fneg float %444
  br label %cond.end692

cond.end692:                                      ; preds = %cond.false690, %cond.true689
  %cond693 = phi float [ %443, %cond.true689 ], [ %fneg691, %cond.false690 ]
  %445 = load ptr, ptr %b.addr, align 8
  %446 = load i32, ptr %j, align 4
  %447 = load i32, ptr %b_dim1, align 4
  %mul694 = mul nsw i32 %446, %447
  %add695 = add nsw i32 %mul694, 1
  %idxprom696 = sext i32 %add695 to i64
  %arrayidx697 = getelementptr inbounds %struct.complex, ptr %445, i64 %idxprom696
  %call698 = call double @r_imag(ptr noundef %arrayidx697)
  %conv699 = fptrunc double %call698 to float
  store float %conv699, ptr %r__2, align 4
  %448 = load float, ptr %r__2, align 4
  %cmp700 = fcmp oge float %448, 0.000000e+00
  br i1 %cmp700, label %cond.true702, label %cond.false703

cond.true702:                                     ; preds = %cond.end692
  %449 = load float, ptr %r__2, align 4
  br label %cond.end705

cond.false703:                                    ; preds = %cond.end692
  %450 = load float, ptr %r__2, align 4
  %fneg704 = fneg float %450
  br label %cond.end705

cond.end705:                                      ; preds = %cond.false703, %cond.true702
  %cond706 = phi float [ %449, %cond.true702 ], [ %fneg704, %cond.false703 ]
  %add707 = fadd float %cond693, %cond706
  %451 = load ptr, ptr %d__.addr, align 8
  %arrayidx708 = getelementptr inbounds %struct.complex, ptr %451, i64 1
  %r709 = getelementptr inbounds %struct.complex, ptr %arrayidx708, i32 0, i32 0
  %452 = load float, ptr %r709, align 4
  store float %452, ptr %r__3, align 4
  %453 = load float, ptr %r__3, align 4
  %cmp710 = fcmp oge float %453, 0.000000e+00
  br i1 %cmp710, label %cond.true712, label %cond.false713

cond.true712:                                     ; preds = %cond.end705
  %454 = load float, ptr %r__3, align 4
  br label %cond.end715

cond.false713:                                    ; preds = %cond.end705
  %455 = load float, ptr %r__3, align 4
  %fneg714 = fneg float %455
  br label %cond.end715

cond.end715:                                      ; preds = %cond.false713, %cond.true712
  %cond716 = phi float [ %454, %cond.true712 ], [ %fneg714, %cond.false713 ]
  %456 = load ptr, ptr %d__.addr, align 8
  %arrayidx717 = getelementptr inbounds %struct.complex, ptr %456, i64 1
  %call718 = call double @r_imag(ptr noundef %arrayidx717)
  %conv719 = fptrunc double %call718 to float
  store float %conv719, ptr %r__4, align 4
  %457 = load float, ptr %r__4, align 4
  %cmp720 = fcmp oge float %457, 0.000000e+00
  br i1 %cmp720, label %cond.true722, label %cond.false723

cond.true722:                                     ; preds = %cond.end715
  %458 = load float, ptr %r__4, align 4
  br label %cond.end725

cond.false723:                                    ; preds = %cond.end715
  %459 = load float, ptr %r__4, align 4
  %fneg724 = fneg float %459
  br label %cond.end725

cond.end725:                                      ; preds = %cond.false723, %cond.true722
  %cond726 = phi float [ %458, %cond.true722 ], [ %fneg724, %cond.false723 ]
  %add727 = fadd float %cond716, %cond726
  %460 = load ptr, ptr %x.addr, align 8
  %461 = load i32, ptr %i__3, align 4
  %idxprom728 = sext i32 %461 to i64
  %arrayidx729 = getelementptr inbounds %struct.complex, ptr %460, i64 %idxprom728
  %r730 = getelementptr inbounds %struct.complex, ptr %arrayidx729, i32 0, i32 0
  %462 = load float, ptr %r730, align 4
  store float %462, ptr %r__5, align 4
  %463 = load float, ptr %r__5, align 4
  %cmp731 = fcmp oge float %463, 0.000000e+00
  br i1 %cmp731, label %cond.true733, label %cond.false734

cond.true733:                                     ; preds = %cond.end725
  %464 = load float, ptr %r__5, align 4
  br label %cond.end736

cond.false734:                                    ; preds = %cond.end725
  %465 = load float, ptr %r__5, align 4
  %fneg735 = fneg float %465
  br label %cond.end736

cond.end736:                                      ; preds = %cond.false734, %cond.true733
  %cond737 = phi float [ %464, %cond.true733 ], [ %fneg735, %cond.false734 ]
  %466 = load ptr, ptr %x.addr, align 8
  %467 = load i32, ptr %j, align 4
  %468 = load i32, ptr %x_dim1, align 4
  %mul738 = mul nsw i32 %467, %468
  %add739 = add nsw i32 %mul738, 1
  %idxprom740 = sext i32 %add739 to i64
  %arrayidx741 = getelementptr inbounds %struct.complex, ptr %466, i64 %idxprom740
  %call742 = call double @r_imag(ptr noundef %arrayidx741)
  %conv743 = fptrunc double %call742 to float
  store float %conv743, ptr %r__6, align 4
  %469 = load float, ptr %r__6, align 4
  %cmp744 = fcmp oge float %469, 0.000000e+00
  br i1 %cmp744, label %cond.true746, label %cond.false747

cond.true746:                                     ; preds = %cond.end736
  %470 = load float, ptr %r__6, align 4
  br label %cond.end749

cond.false747:                                    ; preds = %cond.end736
  %471 = load float, ptr %r__6, align 4
  %fneg748 = fneg float %471
  br label %cond.end749

cond.end749:                                      ; preds = %cond.false747, %cond.true746
  %cond750 = phi float [ %470, %cond.true746 ], [ %fneg748, %cond.false747 ]
  %add751 = fadd float %cond737, %cond750
  %472 = call float @llvm.fmuladd.f32(float %add727, float %add751, float %add707)
  %473 = load ptr, ptr %dl.addr, align 8
  %arrayidx753 = getelementptr inbounds %struct.complex, ptr %473, i64 1
  %r754 = getelementptr inbounds %struct.complex, ptr %arrayidx753, i32 0, i32 0
  %474 = load float, ptr %r754, align 4
  store float %474, ptr %r__7, align 4
  %475 = load float, ptr %r__7, align 4
  %cmp755 = fcmp oge float %475, 0.000000e+00
  br i1 %cmp755, label %cond.true757, label %cond.false758

cond.true757:                                     ; preds = %cond.end749
  %476 = load float, ptr %r__7, align 4
  br label %cond.end760

cond.false758:                                    ; preds = %cond.end749
  %477 = load float, ptr %r__7, align 4
  %fneg759 = fneg float %477
  br label %cond.end760

cond.end760:                                      ; preds = %cond.false758, %cond.true757
  %cond761 = phi float [ %476, %cond.true757 ], [ %fneg759, %cond.false758 ]
  %478 = load ptr, ptr %dl.addr, align 8
  %arrayidx762 = getelementptr inbounds %struct.complex, ptr %478, i64 1
  %call763 = call double @r_imag(ptr noundef %arrayidx762)
  %conv764 = fptrunc double %call763 to float
  store float %conv764, ptr %r__8, align 4
  %479 = load float, ptr %r__8, align 4
  %cmp765 = fcmp oge float %479, 0.000000e+00
  br i1 %cmp765, label %cond.true767, label %cond.false768

cond.true767:                                     ; preds = %cond.end760
  %480 = load float, ptr %r__8, align 4
  br label %cond.end770

cond.false768:                                    ; preds = %cond.end760
  %481 = load float, ptr %r__8, align 4
  %fneg769 = fneg float %481
  br label %cond.end770

cond.end770:                                      ; preds = %cond.false768, %cond.true767
  %cond771 = phi float [ %480, %cond.true767 ], [ %fneg769, %cond.false768 ]
  %add772 = fadd float %cond761, %cond771
  %482 = load ptr, ptr %x.addr, align 8
  %483 = load i32, ptr %i__4, align 4
  %idxprom773 = sext i32 %483 to i64
  %arrayidx774 = getelementptr inbounds %struct.complex, ptr %482, i64 %idxprom773
  %r775 = getelementptr inbounds %struct.complex, ptr %arrayidx774, i32 0, i32 0
  %484 = load float, ptr %r775, align 4
  store float %484, ptr %r__9, align 4
  %485 = load float, ptr %r__9, align 4
  %cmp776 = fcmp oge float %485, 0.000000e+00
  br i1 %cmp776, label %cond.true778, label %cond.false779

cond.true778:                                     ; preds = %cond.end770
  %486 = load float, ptr %r__9, align 4
  br label %cond.end781

cond.false779:                                    ; preds = %cond.end770
  %487 = load float, ptr %r__9, align 4
  %fneg780 = fneg float %487
  br label %cond.end781

cond.end781:                                      ; preds = %cond.false779, %cond.true778
  %cond782 = phi float [ %486, %cond.true778 ], [ %fneg780, %cond.false779 ]
  %488 = load ptr, ptr %x.addr, align 8
  %489 = load i32, ptr %j, align 4
  %490 = load i32, ptr %x_dim1, align 4
  %mul783 = mul nsw i32 %489, %490
  %add784 = add nsw i32 %mul783, 2
  %idxprom785 = sext i32 %add784 to i64
  %arrayidx786 = getelementptr inbounds %struct.complex, ptr %488, i64 %idxprom785
  %call787 = call double @r_imag(ptr noundef %arrayidx786)
  %conv788 = fptrunc double %call787 to float
  store float %conv788, ptr %r__10, align 4
  %491 = load float, ptr %r__10, align 4
  %cmp789 = fcmp oge float %491, 0.000000e+00
  br i1 %cmp789, label %cond.true791, label %cond.false792

cond.true791:                                     ; preds = %cond.end781
  %492 = load float, ptr %r__10, align 4
  br label %cond.end794

cond.false792:                                    ; preds = %cond.end781
  %493 = load float, ptr %r__10, align 4
  %fneg793 = fneg float %493
  br label %cond.end794

cond.end794:                                      ; preds = %cond.false792, %cond.true791
  %cond795 = phi float [ %492, %cond.true791 ], [ %fneg793, %cond.false792 ]
  %add796 = fadd float %cond782, %cond795
  %494 = call float @llvm.fmuladd.f32(float %add772, float %add796, float %472)
  %495 = load ptr, ptr %rwork.addr, align 8
  %arrayidx798 = getelementptr inbounds float, ptr %495, i64 1
  store float %494, ptr %arrayidx798, align 4
  %496 = load ptr, ptr %n.addr, align 8
  %497 = load i32, ptr %496, align 4
  %sub799 = sub nsw i32 %497, 1
  store i32 %sub799, ptr %i__2, align 4
  store i32 2, ptr %i__, align 4
  br label %for.cond800

for.cond800:                                      ; preds = %for.inc985, %cond.end794
  %498 = load i32, ptr %i__, align 4
  %499 = load i32, ptr %i__2, align 4
  %cmp801 = icmp sle i32 %498, %499
  br i1 %cmp801, label %for.body803, label %for.end987

for.body803:                                      ; preds = %for.cond800
  %500 = load i32, ptr %i__, align 4
  %501 = load i32, ptr %j, align 4
  %502 = load i32, ptr %b_dim1, align 4
  %mul804 = mul nsw i32 %501, %502
  %add805 = add nsw i32 %500, %mul804
  store i32 %add805, ptr %i__3, align 4
  %503 = load i32, ptr %i__, align 4
  %sub806 = sub nsw i32 %503, 1
  store i32 %sub806, ptr %i__4, align 4
  %504 = load i32, ptr %i__, align 4
  %sub807 = sub nsw i32 %504, 1
  %505 = load i32, ptr %j, align 4
  %506 = load i32, ptr %x_dim1, align 4
  %mul808 = mul nsw i32 %505, %506
  %add809 = add nsw i32 %sub807, %mul808
  store i32 %add809, ptr %i__5, align 4
  %507 = load i32, ptr %i__, align 4
  store i32 %507, ptr %i__6, align 4
  %508 = load i32, ptr %i__, align 4
  %509 = load i32, ptr %j, align 4
  %510 = load i32, ptr %x_dim1, align 4
  %mul810 = mul nsw i32 %509, %510
  %add811 = add nsw i32 %508, %mul810
  store i32 %add811, ptr %i__7, align 4
  %511 = load i32, ptr %i__, align 4
  store i32 %511, ptr %i__8, align 4
  %512 = load i32, ptr %i__, align 4
  %add812 = add nsw i32 %512, 1
  %513 = load i32, ptr %j, align 4
  %514 = load i32, ptr %x_dim1, align 4
  %mul813 = mul nsw i32 %513, %514
  %add814 = add nsw i32 %add812, %mul813
  store i32 %add814, ptr %i__9, align 4
  %515 = load ptr, ptr %b.addr, align 8
  %516 = load i32, ptr %i__3, align 4
  %idxprom815 = sext i32 %516 to i64
  %arrayidx816 = getelementptr inbounds %struct.complex, ptr %515, i64 %idxprom815
  %r817 = getelementptr inbounds %struct.complex, ptr %arrayidx816, i32 0, i32 0
  %517 = load float, ptr %r817, align 4
  store float %517, ptr %r__1, align 4
  %518 = load float, ptr %r__1, align 4
  %cmp818 = fcmp oge float %518, 0.000000e+00
  br i1 %cmp818, label %cond.true820, label %cond.false821

cond.true820:                                     ; preds = %for.body803
  %519 = load float, ptr %r__1, align 4
  br label %cond.end823

cond.false821:                                    ; preds = %for.body803
  %520 = load float, ptr %r__1, align 4
  %fneg822 = fneg float %520
  br label %cond.end823

cond.end823:                                      ; preds = %cond.false821, %cond.true820
  %cond824 = phi float [ %519, %cond.true820 ], [ %fneg822, %cond.false821 ]
  %521 = load ptr, ptr %b.addr, align 8
  %522 = load i32, ptr %i__, align 4
  %523 = load i32, ptr %j, align 4
  %524 = load i32, ptr %b_dim1, align 4
  %mul825 = mul nsw i32 %523, %524
  %add826 = add nsw i32 %522, %mul825
  %idxprom827 = sext i32 %add826 to i64
  %arrayidx828 = getelementptr inbounds %struct.complex, ptr %521, i64 %idxprom827
  %call829 = call double @r_imag(ptr noundef %arrayidx828)
  %conv830 = fptrunc double %call829 to float
  store float %conv830, ptr %r__2, align 4
  %525 = load float, ptr %r__2, align 4
  %cmp831 = fcmp oge float %525, 0.000000e+00
  br i1 %cmp831, label %cond.true833, label %cond.false834

cond.true833:                                     ; preds = %cond.end823
  %526 = load float, ptr %r__2, align 4
  br label %cond.end836

cond.false834:                                    ; preds = %cond.end823
  %527 = load float, ptr %r__2, align 4
  %fneg835 = fneg float %527
  br label %cond.end836

cond.end836:                                      ; preds = %cond.false834, %cond.true833
  %cond837 = phi float [ %526, %cond.true833 ], [ %fneg835, %cond.false834 ]
  %add838 = fadd float %cond824, %cond837
  %528 = load ptr, ptr %du.addr, align 8
  %529 = load i32, ptr %i__4, align 4
  %idxprom839 = sext i32 %529 to i64
  %arrayidx840 = getelementptr inbounds %struct.complex, ptr %528, i64 %idxprom839
  %r841 = getelementptr inbounds %struct.complex, ptr %arrayidx840, i32 0, i32 0
  %530 = load float, ptr %r841, align 4
  store float %530, ptr %r__3, align 4
  %531 = load float, ptr %r__3, align 4
  %cmp842 = fcmp oge float %531, 0.000000e+00
  br i1 %cmp842, label %cond.true844, label %cond.false845

cond.true844:                                     ; preds = %cond.end836
  %532 = load float, ptr %r__3, align 4
  br label %cond.end847

cond.false845:                                    ; preds = %cond.end836
  %533 = load float, ptr %r__3, align 4
  %fneg846 = fneg float %533
  br label %cond.end847

cond.end847:                                      ; preds = %cond.false845, %cond.true844
  %cond848 = phi float [ %532, %cond.true844 ], [ %fneg846, %cond.false845 ]
  %534 = load ptr, ptr %du.addr, align 8
  %535 = load i32, ptr %i__, align 4
  %sub849 = sub nsw i32 %535, 1
  %idxprom850 = sext i32 %sub849 to i64
  %arrayidx851 = getelementptr inbounds %struct.complex, ptr %534, i64 %idxprom850
  %call852 = call double @r_imag(ptr noundef %arrayidx851)
  %conv853 = fptrunc double %call852 to float
  store float %conv853, ptr %r__4, align 4
  %536 = load float, ptr %r__4, align 4
  %cmp854 = fcmp oge float %536, 0.000000e+00
  br i1 %cmp854, label %cond.true856, label %cond.false857

cond.true856:                                     ; preds = %cond.end847
  %537 = load float, ptr %r__4, align 4
  br label %cond.end859

cond.false857:                                    ; preds = %cond.end847
  %538 = load float, ptr %r__4, align 4
  %fneg858 = fneg float %538
  br label %cond.end859

cond.end859:                                      ; preds = %cond.false857, %cond.true856
  %cond860 = phi float [ %537, %cond.true856 ], [ %fneg858, %cond.false857 ]
  %add861 = fadd float %cond848, %cond860
  %539 = load ptr, ptr %x.addr, align 8
  %540 = load i32, ptr %i__5, align 4
  %idxprom862 = sext i32 %540 to i64
  %arrayidx863 = getelementptr inbounds %struct.complex, ptr %539, i64 %idxprom862
  %r864 = getelementptr inbounds %struct.complex, ptr %arrayidx863, i32 0, i32 0
  %541 = load float, ptr %r864, align 4
  store float %541, ptr %r__5, align 4
  %542 = load float, ptr %r__5, align 4
  %cmp865 = fcmp oge float %542, 0.000000e+00
  br i1 %cmp865, label %cond.true867, label %cond.false868

cond.true867:                                     ; preds = %cond.end859
  %543 = load float, ptr %r__5, align 4
  br label %cond.end870

cond.false868:                                    ; preds = %cond.end859
  %544 = load float, ptr %r__5, align 4
  %fneg869 = fneg float %544
  br label %cond.end870

cond.end870:                                      ; preds = %cond.false868, %cond.true867
  %cond871 = phi float [ %543, %cond.true867 ], [ %fneg869, %cond.false868 ]
  %545 = load ptr, ptr %x.addr, align 8
  %546 = load i32, ptr %i__, align 4
  %sub872 = sub nsw i32 %546, 1
  %547 = load i32, ptr %j, align 4
  %548 = load i32, ptr %x_dim1, align 4
  %mul873 = mul nsw i32 %547, %548
  %add874 = add nsw i32 %sub872, %mul873
  %idxprom875 = sext i32 %add874 to i64
  %arrayidx876 = getelementptr inbounds %struct.complex, ptr %545, i64 %idxprom875
  %call877 = call double @r_imag(ptr noundef %arrayidx876)
  %conv878 = fptrunc double %call877 to float
  store float %conv878, ptr %r__6, align 4
  %549 = load float, ptr %r__6, align 4
  %cmp879 = fcmp oge float %549, 0.000000e+00
  br i1 %cmp879, label %cond.true881, label %cond.false882

cond.true881:                                     ; preds = %cond.end870
  %550 = load float, ptr %r__6, align 4
  br label %cond.end884

cond.false882:                                    ; preds = %cond.end870
  %551 = load float, ptr %r__6, align 4
  %fneg883 = fneg float %551
  br label %cond.end884

cond.end884:                                      ; preds = %cond.false882, %cond.true881
  %cond885 = phi float [ %550, %cond.true881 ], [ %fneg883, %cond.false882 ]
  %add886 = fadd float %cond871, %cond885
  %552 = call float @llvm.fmuladd.f32(float %add861, float %add886, float %add838)
  %553 = load ptr, ptr %d__.addr, align 8
  %554 = load i32, ptr %i__6, align 4
  %idxprom888 = sext i32 %554 to i64
  %arrayidx889 = getelementptr inbounds %struct.complex, ptr %553, i64 %idxprom888
  %r890 = getelementptr inbounds %struct.complex, ptr %arrayidx889, i32 0, i32 0
  %555 = load float, ptr %r890, align 4
  store float %555, ptr %r__7, align 4
  %556 = load float, ptr %r__7, align 4
  %cmp891 = fcmp oge float %556, 0.000000e+00
  br i1 %cmp891, label %cond.true893, label %cond.false894

cond.true893:                                     ; preds = %cond.end884
  %557 = load float, ptr %r__7, align 4
  br label %cond.end896

cond.false894:                                    ; preds = %cond.end884
  %558 = load float, ptr %r__7, align 4
  %fneg895 = fneg float %558
  br label %cond.end896

cond.end896:                                      ; preds = %cond.false894, %cond.true893
  %cond897 = phi float [ %557, %cond.true893 ], [ %fneg895, %cond.false894 ]
  %559 = load ptr, ptr %d__.addr, align 8
  %560 = load i32, ptr %i__, align 4
  %idxprom898 = sext i32 %560 to i64
  %arrayidx899 = getelementptr inbounds %struct.complex, ptr %559, i64 %idxprom898
  %call900 = call double @r_imag(ptr noundef %arrayidx899)
  %conv901 = fptrunc double %call900 to float
  store float %conv901, ptr %r__8, align 4
  %561 = load float, ptr %r__8, align 4
  %cmp902 = fcmp oge float %561, 0.000000e+00
  br i1 %cmp902, label %cond.true904, label %cond.false905

cond.true904:                                     ; preds = %cond.end896
  %562 = load float, ptr %r__8, align 4
  br label %cond.end907

cond.false905:                                    ; preds = %cond.end896
  %563 = load float, ptr %r__8, align 4
  %fneg906 = fneg float %563
  br label %cond.end907

cond.end907:                                      ; preds = %cond.false905, %cond.true904
  %cond908 = phi float [ %562, %cond.true904 ], [ %fneg906, %cond.false905 ]
  %add909 = fadd float %cond897, %cond908
  %564 = load ptr, ptr %x.addr, align 8
  %565 = load i32, ptr %i__7, align 4
  %idxprom910 = sext i32 %565 to i64
  %arrayidx911 = getelementptr inbounds %struct.complex, ptr %564, i64 %idxprom910
  %r912 = getelementptr inbounds %struct.complex, ptr %arrayidx911, i32 0, i32 0
  %566 = load float, ptr %r912, align 4
  store float %566, ptr %r__9, align 4
  %567 = load float, ptr %r__9, align 4
  %cmp913 = fcmp oge float %567, 0.000000e+00
  br i1 %cmp913, label %cond.true915, label %cond.false916

cond.true915:                                     ; preds = %cond.end907
  %568 = load float, ptr %r__9, align 4
  br label %cond.end918

cond.false916:                                    ; preds = %cond.end907
  %569 = load float, ptr %r__9, align 4
  %fneg917 = fneg float %569
  br label %cond.end918

cond.end918:                                      ; preds = %cond.false916, %cond.true915
  %cond919 = phi float [ %568, %cond.true915 ], [ %fneg917, %cond.false916 ]
  %570 = load ptr, ptr %x.addr, align 8
  %571 = load i32, ptr %i__, align 4
  %572 = load i32, ptr %j, align 4
  %573 = load i32, ptr %x_dim1, align 4
  %mul920 = mul nsw i32 %572, %573
  %add921 = add nsw i32 %571, %mul920
  %idxprom922 = sext i32 %add921 to i64
  %arrayidx923 = getelementptr inbounds %struct.complex, ptr %570, i64 %idxprom922
  %call924 = call double @r_imag(ptr noundef %arrayidx923)
  %conv925 = fptrunc double %call924 to float
  store float %conv925, ptr %r__10, align 4
  %574 = load float, ptr %r__10, align 4
  %cmp926 = fcmp oge float %574, 0.000000e+00
  br i1 %cmp926, label %cond.true928, label %cond.false929

cond.true928:                                     ; preds = %cond.end918
  %575 = load float, ptr %r__10, align 4
  br label %cond.end931

cond.false929:                                    ; preds = %cond.end918
  %576 = load float, ptr %r__10, align 4
  %fneg930 = fneg float %576
  br label %cond.end931

cond.end931:                                      ; preds = %cond.false929, %cond.true928
  %cond932 = phi float [ %575, %cond.true928 ], [ %fneg930, %cond.false929 ]
  %add933 = fadd float %cond919, %cond932
  %577 = call float @llvm.fmuladd.f32(float %add909, float %add933, float %552)
  %578 = load ptr, ptr %dl.addr, align 8
  %579 = load i32, ptr %i__8, align 4
  %idxprom935 = sext i32 %579 to i64
  %arrayidx936 = getelementptr inbounds %struct.complex, ptr %578, i64 %idxprom935
  %r937 = getelementptr inbounds %struct.complex, ptr %arrayidx936, i32 0, i32 0
  %580 = load float, ptr %r937, align 4
  store float %580, ptr %r__11, align 4
  %581 = load float, ptr %r__11, align 4
  %cmp938 = fcmp oge float %581, 0.000000e+00
  br i1 %cmp938, label %cond.true940, label %cond.false941

cond.true940:                                     ; preds = %cond.end931
  %582 = load float, ptr %r__11, align 4
  br label %cond.end943

cond.false941:                                    ; preds = %cond.end931
  %583 = load float, ptr %r__11, align 4
  %fneg942 = fneg float %583
  br label %cond.end943

cond.end943:                                      ; preds = %cond.false941, %cond.true940
  %cond944 = phi float [ %582, %cond.true940 ], [ %fneg942, %cond.false941 ]
  %584 = load ptr, ptr %dl.addr, align 8
  %585 = load i32, ptr %i__, align 4
  %idxprom945 = sext i32 %585 to i64
  %arrayidx946 = getelementptr inbounds %struct.complex, ptr %584, i64 %idxprom945
  %call947 = call double @r_imag(ptr noundef %arrayidx946)
  %conv948 = fptrunc double %call947 to float
  store float %conv948, ptr %r__12, align 4
  %586 = load float, ptr %r__12, align 4
  %cmp949 = fcmp oge float %586, 0.000000e+00
  br i1 %cmp949, label %cond.true951, label %cond.false952

cond.true951:                                     ; preds = %cond.end943
  %587 = load float, ptr %r__12, align 4
  br label %cond.end954

cond.false952:                                    ; preds = %cond.end943
  %588 = load float, ptr %r__12, align 4
  %fneg953 = fneg float %588
  br label %cond.end954

cond.end954:                                      ; preds = %cond.false952, %cond.true951
  %cond955 = phi float [ %587, %cond.true951 ], [ %fneg953, %cond.false952 ]
  %add956 = fadd float %cond944, %cond955
  %589 = load ptr, ptr %x.addr, align 8
  %590 = load i32, ptr %i__9, align 4
  %idxprom957 = sext i32 %590 to i64
  %arrayidx958 = getelementptr inbounds %struct.complex, ptr %589, i64 %idxprom957
  %r959 = getelementptr inbounds %struct.complex, ptr %arrayidx958, i32 0, i32 0
  %591 = load float, ptr %r959, align 4
  store float %591, ptr %r__13, align 4
  %592 = load float, ptr %r__13, align 4
  %cmp960 = fcmp oge float %592, 0.000000e+00
  br i1 %cmp960, label %cond.true962, label %cond.false963

cond.true962:                                     ; preds = %cond.end954
  %593 = load float, ptr %r__13, align 4
  br label %cond.end965

cond.false963:                                    ; preds = %cond.end954
  %594 = load float, ptr %r__13, align 4
  %fneg964 = fneg float %594
  br label %cond.end965

cond.end965:                                      ; preds = %cond.false963, %cond.true962
  %cond966 = phi float [ %593, %cond.true962 ], [ %fneg964, %cond.false963 ]
  %595 = load ptr, ptr %x.addr, align 8
  %596 = load i32, ptr %i__, align 4
  %add967 = add nsw i32 %596, 1
  %597 = load i32, ptr %j, align 4
  %598 = load i32, ptr %x_dim1, align 4
  %mul968 = mul nsw i32 %597, %598
  %add969 = add nsw i32 %add967, %mul968
  %idxprom970 = sext i32 %add969 to i64
  %arrayidx971 = getelementptr inbounds %struct.complex, ptr %595, i64 %idxprom970
  %call972 = call double @r_imag(ptr noundef %arrayidx971)
  %conv973 = fptrunc double %call972 to float
  store float %conv973, ptr %r__14, align 4
  %599 = load float, ptr %r__14, align 4
  %cmp974 = fcmp oge float %599, 0.000000e+00
  br i1 %cmp974, label %cond.true976, label %cond.false977

cond.true976:                                     ; preds = %cond.end965
  %600 = load float, ptr %r__14, align 4
  br label %cond.end979

cond.false977:                                    ; preds = %cond.end965
  %601 = load float, ptr %r__14, align 4
  %fneg978 = fneg float %601
  br label %cond.end979

cond.end979:                                      ; preds = %cond.false977, %cond.true976
  %cond980 = phi float [ %600, %cond.true976 ], [ %fneg978, %cond.false977 ]
  %add981 = fadd float %cond966, %cond980
  %602 = call float @llvm.fmuladd.f32(float %add956, float %add981, float %577)
  %603 = load ptr, ptr %rwork.addr, align 8
  %604 = load i32, ptr %i__, align 4
  %idxprom983 = sext i32 %604 to i64
  %arrayidx984 = getelementptr inbounds float, ptr %603, i64 %idxprom983
  store float %602, ptr %arrayidx984, align 4
  br label %for.inc985

for.inc985:                                       ; preds = %cond.end979
  %605 = load i32, ptr %i__, align 4
  %inc986 = add nsw i32 %605, 1
  store i32 %inc986, ptr %i__, align 4
  br label %for.cond800, !llvm.loop !8

for.end987:                                       ; preds = %for.cond800
  %606 = load ptr, ptr %n.addr, align 8
  %607 = load i32, ptr %606, align 4
  %608 = load i32, ptr %j, align 4
  %609 = load i32, ptr %b_dim1, align 4
  %mul988 = mul nsw i32 %608, %609
  %add989 = add nsw i32 %607, %mul988
  store i32 %add989, ptr %i__2, align 4
  %610 = load ptr, ptr %n.addr, align 8
  %611 = load i32, ptr %610, align 4
  %sub990 = sub nsw i32 %611, 1
  store i32 %sub990, ptr %i__3, align 4
  %612 = load ptr, ptr %n.addr, align 8
  %613 = load i32, ptr %612, align 4
  %sub991 = sub nsw i32 %613, 1
  %614 = load i32, ptr %j, align 4
  %615 = load i32, ptr %x_dim1, align 4
  %mul992 = mul nsw i32 %614, %615
  %add993 = add nsw i32 %sub991, %mul992
  store i32 %add993, ptr %i__4, align 4
  %616 = load ptr, ptr %n.addr, align 8
  %617 = load i32, ptr %616, align 4
  store i32 %617, ptr %i__5, align 4
  %618 = load ptr, ptr %n.addr, align 8
  %619 = load i32, ptr %618, align 4
  %620 = load i32, ptr %j, align 4
  %621 = load i32, ptr %x_dim1, align 4
  %mul994 = mul nsw i32 %620, %621
  %add995 = add nsw i32 %619, %mul994
  store i32 %add995, ptr %i__6, align 4
  %622 = load ptr, ptr %b.addr, align 8
  %623 = load i32, ptr %i__2, align 4
  %idxprom996 = sext i32 %623 to i64
  %arrayidx997 = getelementptr inbounds %struct.complex, ptr %622, i64 %idxprom996
  %r998 = getelementptr inbounds %struct.complex, ptr %arrayidx997, i32 0, i32 0
  %624 = load float, ptr %r998, align 4
  store float %624, ptr %r__1, align 4
  %625 = load float, ptr %r__1, align 4
  %cmp999 = fcmp oge float %625, 0.000000e+00
  br i1 %cmp999, label %cond.true1001, label %cond.false1002

cond.true1001:                                    ; preds = %for.end987
  %626 = load float, ptr %r__1, align 4
  br label %cond.end1004

cond.false1002:                                   ; preds = %for.end987
  %627 = load float, ptr %r__1, align 4
  %fneg1003 = fneg float %627
  br label %cond.end1004

cond.end1004:                                     ; preds = %cond.false1002, %cond.true1001
  %cond1005 = phi float [ %626, %cond.true1001 ], [ %fneg1003, %cond.false1002 ]
  %628 = load ptr, ptr %b.addr, align 8
  %629 = load ptr, ptr %n.addr, align 8
  %630 = load i32, ptr %629, align 4
  %631 = load i32, ptr %j, align 4
  %632 = load i32, ptr %b_dim1, align 4
  %mul1006 = mul nsw i32 %631, %632
  %add1007 = add nsw i32 %630, %mul1006
  %idxprom1008 = sext i32 %add1007 to i64
  %arrayidx1009 = getelementptr inbounds %struct.complex, ptr %628, i64 %idxprom1008
  %call1010 = call double @r_imag(ptr noundef %arrayidx1009)
  %conv1011 = fptrunc double %call1010 to float
  store float %conv1011, ptr %r__2, align 4
  %633 = load float, ptr %r__2, align 4
  %cmp1012 = fcmp oge float %633, 0.000000e+00
  br i1 %cmp1012, label %cond.true1014, label %cond.false1015

cond.true1014:                                    ; preds = %cond.end1004
  %634 = load float, ptr %r__2, align 4
  br label %cond.end1017

cond.false1015:                                   ; preds = %cond.end1004
  %635 = load float, ptr %r__2, align 4
  %fneg1016 = fneg float %635
  br label %cond.end1017

cond.end1017:                                     ; preds = %cond.false1015, %cond.true1014
  %cond1018 = phi float [ %634, %cond.true1014 ], [ %fneg1016, %cond.false1015 ]
  %add1019 = fadd float %cond1005, %cond1018
  %636 = load ptr, ptr %du.addr, align 8
  %637 = load i32, ptr %i__3, align 4
  %idxprom1020 = sext i32 %637 to i64
  %arrayidx1021 = getelementptr inbounds %struct.complex, ptr %636, i64 %idxprom1020
  %r1022 = getelementptr inbounds %struct.complex, ptr %arrayidx1021, i32 0, i32 0
  %638 = load float, ptr %r1022, align 4
  store float %638, ptr %r__3, align 4
  %639 = load float, ptr %r__3, align 4
  %cmp1023 = fcmp oge float %639, 0.000000e+00
  br i1 %cmp1023, label %cond.true1025, label %cond.false1026

cond.true1025:                                    ; preds = %cond.end1017
  %640 = load float, ptr %r__3, align 4
  br label %cond.end1028

cond.false1026:                                   ; preds = %cond.end1017
  %641 = load float, ptr %r__3, align 4
  %fneg1027 = fneg float %641
  br label %cond.end1028

cond.end1028:                                     ; preds = %cond.false1026, %cond.true1025
  %cond1029 = phi float [ %640, %cond.true1025 ], [ %fneg1027, %cond.false1026 ]
  %642 = load ptr, ptr %du.addr, align 8
  %643 = load ptr, ptr %n.addr, align 8
  %644 = load i32, ptr %643, align 4
  %sub1030 = sub nsw i32 %644, 1
  %idxprom1031 = sext i32 %sub1030 to i64
  %arrayidx1032 = getelementptr inbounds %struct.complex, ptr %642, i64 %idxprom1031
  %call1033 = call double @r_imag(ptr noundef %arrayidx1032)
  %conv1034 = fptrunc double %call1033 to float
  store float %conv1034, ptr %r__4, align 4
  %645 = load float, ptr %r__4, align 4
  %cmp1035 = fcmp oge float %645, 0.000000e+00
  br i1 %cmp1035, label %cond.true1037, label %cond.false1038

cond.true1037:                                    ; preds = %cond.end1028
  %646 = load float, ptr %r__4, align 4
  br label %cond.end1040

cond.false1038:                                   ; preds = %cond.end1028
  %647 = load float, ptr %r__4, align 4
  %fneg1039 = fneg float %647
  br label %cond.end1040

cond.end1040:                                     ; preds = %cond.false1038, %cond.true1037
  %cond1041 = phi float [ %646, %cond.true1037 ], [ %fneg1039, %cond.false1038 ]
  %add1042 = fadd float %cond1029, %cond1041
  %648 = load ptr, ptr %x.addr, align 8
  %649 = load i32, ptr %i__4, align 4
  %idxprom1043 = sext i32 %649 to i64
  %arrayidx1044 = getelementptr inbounds %struct.complex, ptr %648, i64 %idxprom1043
  %r1045 = getelementptr inbounds %struct.complex, ptr %arrayidx1044, i32 0, i32 0
  %650 = load float, ptr %r1045, align 4
  store float %650, ptr %r__5, align 4
  %651 = load float, ptr %r__5, align 4
  %cmp1046 = fcmp oge float %651, 0.000000e+00
  br i1 %cmp1046, label %cond.true1048, label %cond.false1049

cond.true1048:                                    ; preds = %cond.end1040
  %652 = load float, ptr %r__5, align 4
  br label %cond.end1051

cond.false1049:                                   ; preds = %cond.end1040
  %653 = load float, ptr %r__5, align 4
  %fneg1050 = fneg float %653
  br label %cond.end1051

cond.end1051:                                     ; preds = %cond.false1049, %cond.true1048
  %cond1052 = phi float [ %652, %cond.true1048 ], [ %fneg1050, %cond.false1049 ]
  %654 = load ptr, ptr %x.addr, align 8
  %655 = load ptr, ptr %n.addr, align 8
  %656 = load i32, ptr %655, align 4
  %sub1053 = sub nsw i32 %656, 1
  %657 = load i32, ptr %j, align 4
  %658 = load i32, ptr %x_dim1, align 4
  %mul1054 = mul nsw i32 %657, %658
  %add1055 = add nsw i32 %sub1053, %mul1054
  %idxprom1056 = sext i32 %add1055 to i64
  %arrayidx1057 = getelementptr inbounds %struct.complex, ptr %654, i64 %idxprom1056
  %call1058 = call double @r_imag(ptr noundef %arrayidx1057)
  %conv1059 = fptrunc double %call1058 to float
  store float %conv1059, ptr %r__6, align 4
  %659 = load float, ptr %r__6, align 4
  %cmp1060 = fcmp oge float %659, 0.000000e+00
  br i1 %cmp1060, label %cond.true1062, label %cond.false1063

cond.true1062:                                    ; preds = %cond.end1051
  %660 = load float, ptr %r__6, align 4
  br label %cond.end1065

cond.false1063:                                   ; preds = %cond.end1051
  %661 = load float, ptr %r__6, align 4
  %fneg1064 = fneg float %661
  br label %cond.end1065

cond.end1065:                                     ; preds = %cond.false1063, %cond.true1062
  %cond1066 = phi float [ %660, %cond.true1062 ], [ %fneg1064, %cond.false1063 ]
  %add1067 = fadd float %cond1052, %cond1066
  %662 = call float @llvm.fmuladd.f32(float %add1042, float %add1067, float %add1019)
  %663 = load ptr, ptr %d__.addr, align 8
  %664 = load i32, ptr %i__5, align 4
  %idxprom1069 = sext i32 %664 to i64
  %arrayidx1070 = getelementptr inbounds %struct.complex, ptr %663, i64 %idxprom1069
  %r1071 = getelementptr inbounds %struct.complex, ptr %arrayidx1070, i32 0, i32 0
  %665 = load float, ptr %r1071, align 4
  store float %665, ptr %r__7, align 4
  %666 = load float, ptr %r__7, align 4
  %cmp1072 = fcmp oge float %666, 0.000000e+00
  br i1 %cmp1072, label %cond.true1074, label %cond.false1075

cond.true1074:                                    ; preds = %cond.end1065
  %667 = load float, ptr %r__7, align 4
  br label %cond.end1077

cond.false1075:                                   ; preds = %cond.end1065
  %668 = load float, ptr %r__7, align 4
  %fneg1076 = fneg float %668
  br label %cond.end1077

cond.end1077:                                     ; preds = %cond.false1075, %cond.true1074
  %cond1078 = phi float [ %667, %cond.true1074 ], [ %fneg1076, %cond.false1075 ]
  %669 = load ptr, ptr %d__.addr, align 8
  %670 = load ptr, ptr %n.addr, align 8
  %671 = load i32, ptr %670, align 4
  %idxprom1079 = sext i32 %671 to i64
  %arrayidx1080 = getelementptr inbounds %struct.complex, ptr %669, i64 %idxprom1079
  %call1081 = call double @r_imag(ptr noundef %arrayidx1080)
  %conv1082 = fptrunc double %call1081 to float
  store float %conv1082, ptr %r__8, align 4
  %672 = load float, ptr %r__8, align 4
  %cmp1083 = fcmp oge float %672, 0.000000e+00
  br i1 %cmp1083, label %cond.true1085, label %cond.false1086

cond.true1085:                                    ; preds = %cond.end1077
  %673 = load float, ptr %r__8, align 4
  br label %cond.end1088

cond.false1086:                                   ; preds = %cond.end1077
  %674 = load float, ptr %r__8, align 4
  %fneg1087 = fneg float %674
  br label %cond.end1088

cond.end1088:                                     ; preds = %cond.false1086, %cond.true1085
  %cond1089 = phi float [ %673, %cond.true1085 ], [ %fneg1087, %cond.false1086 ]
  %add1090 = fadd float %cond1078, %cond1089
  %675 = load ptr, ptr %x.addr, align 8
  %676 = load i32, ptr %i__6, align 4
  %idxprom1091 = sext i32 %676 to i64
  %arrayidx1092 = getelementptr inbounds %struct.complex, ptr %675, i64 %idxprom1091
  %r1093 = getelementptr inbounds %struct.complex, ptr %arrayidx1092, i32 0, i32 0
  %677 = load float, ptr %r1093, align 4
  store float %677, ptr %r__9, align 4
  %678 = load float, ptr %r__9, align 4
  %cmp1094 = fcmp oge float %678, 0.000000e+00
  br i1 %cmp1094, label %cond.true1096, label %cond.false1097

cond.true1096:                                    ; preds = %cond.end1088
  %679 = load float, ptr %r__9, align 4
  br label %cond.end1099

cond.false1097:                                   ; preds = %cond.end1088
  %680 = load float, ptr %r__9, align 4
  %fneg1098 = fneg float %680
  br label %cond.end1099

cond.end1099:                                     ; preds = %cond.false1097, %cond.true1096
  %cond1100 = phi float [ %679, %cond.true1096 ], [ %fneg1098, %cond.false1097 ]
  %681 = load ptr, ptr %x.addr, align 8
  %682 = load ptr, ptr %n.addr, align 8
  %683 = load i32, ptr %682, align 4
  %684 = load i32, ptr %j, align 4
  %685 = load i32, ptr %x_dim1, align 4
  %mul1101 = mul nsw i32 %684, %685
  %add1102 = add nsw i32 %683, %mul1101
  %idxprom1103 = sext i32 %add1102 to i64
  %arrayidx1104 = getelementptr inbounds %struct.complex, ptr %681, i64 %idxprom1103
  %call1105 = call double @r_imag(ptr noundef %arrayidx1104)
  %conv1106 = fptrunc double %call1105 to float
  store float %conv1106, ptr %r__10, align 4
  %686 = load float, ptr %r__10, align 4
  %cmp1107 = fcmp oge float %686, 0.000000e+00
  br i1 %cmp1107, label %cond.true1109, label %cond.false1110

cond.true1109:                                    ; preds = %cond.end1099
  %687 = load float, ptr %r__10, align 4
  br label %cond.end1112

cond.false1110:                                   ; preds = %cond.end1099
  %688 = load float, ptr %r__10, align 4
  %fneg1111 = fneg float %688
  br label %cond.end1112

cond.end1112:                                     ; preds = %cond.false1110, %cond.true1109
  %cond1113 = phi float [ %687, %cond.true1109 ], [ %fneg1111, %cond.false1110 ]
  %add1114 = fadd float %cond1100, %cond1113
  %689 = call float @llvm.fmuladd.f32(float %add1090, float %add1114, float %662)
  %690 = load ptr, ptr %rwork.addr, align 8
  %691 = load ptr, ptr %n.addr, align 8
  %692 = load i32, ptr %691, align 4
  %idxprom1116 = sext i32 %692 to i64
  %arrayidx1117 = getelementptr inbounds float, ptr %690, i64 %idxprom1116
  store float %689, ptr %arrayidx1117, align 4
  br label %if.end1118

if.end1118:                                       ; preds = %cond.end1112, %cond.end672
  br label %if.end1119

if.end1119:                                       ; preds = %if.end1118, %if.end598
  store float 0.000000e+00, ptr %s, align 4
  %693 = load ptr, ptr %n.addr, align 8
  %694 = load i32, ptr %693, align 4
  store i32 %694, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond1120

for.cond1120:                                     ; preds = %for.inc1195, %if.end1119
  %695 = load i32, ptr %i__, align 4
  %696 = load i32, ptr %i__2, align 4
  %cmp1121 = icmp sle i32 %695, %696
  br i1 %cmp1121, label %for.body1123, label %for.end1197

for.body1123:                                     ; preds = %for.cond1120
  %697 = load ptr, ptr %rwork.addr, align 8
  %698 = load i32, ptr %i__, align 4
  %idxprom1124 = sext i32 %698 to i64
  %arrayidx1125 = getelementptr inbounds float, ptr %697, i64 %idxprom1124
  %699 = load float, ptr %arrayidx1125, align 4
  %700 = load float, ptr %safe2, align 4
  %cmp1126 = fcmp ogt float %699, %700
  br i1 %cmp1126, label %if.then1128, label %if.else1160

if.then1128:                                      ; preds = %for.body1123
  %701 = load i32, ptr %i__, align 4
  store i32 %701, ptr %i__3, align 4
  %702 = load float, ptr %s, align 4
  store float %702, ptr %r__3, align 4
  %703 = load ptr, ptr %work.addr, align 8
  %704 = load i32, ptr %i__3, align 4
  %idxprom1129 = sext i32 %704 to i64
  %arrayidx1130 = getelementptr inbounds %struct.complex, ptr %703, i64 %idxprom1129
  %r1131 = getelementptr inbounds %struct.complex, ptr %arrayidx1130, i32 0, i32 0
  %705 = load float, ptr %r1131, align 4
  store float %705, ptr %r__1, align 4
  %706 = load float, ptr %r__1, align 4
  %cmp1132 = fcmp oge float %706, 0.000000e+00
  br i1 %cmp1132, label %cond.true1134, label %cond.false1135

cond.true1134:                                    ; preds = %if.then1128
  %707 = load float, ptr %r__1, align 4
  br label %cond.end1137

cond.false1135:                                   ; preds = %if.then1128
  %708 = load float, ptr %r__1, align 4
  %fneg1136 = fneg float %708
  br label %cond.end1137

cond.end1137:                                     ; preds = %cond.false1135, %cond.true1134
  %cond1138 = phi float [ %707, %cond.true1134 ], [ %fneg1136, %cond.false1135 ]
  %709 = load ptr, ptr %work.addr, align 8
  %710 = load i32, ptr %i__, align 4
  %idxprom1139 = sext i32 %710 to i64
  %arrayidx1140 = getelementptr inbounds %struct.complex, ptr %709, i64 %idxprom1139
  %call1141 = call double @r_imag(ptr noundef %arrayidx1140)
  %conv1142 = fptrunc double %call1141 to float
  store float %conv1142, ptr %r__2, align 4
  %711 = load float, ptr %r__2, align 4
  %cmp1143 = fcmp oge float %711, 0.000000e+00
  br i1 %cmp1143, label %cond.true1145, label %cond.false1146

cond.true1145:                                    ; preds = %cond.end1137
  %712 = load float, ptr %r__2, align 4
  br label %cond.end1148

cond.false1146:                                   ; preds = %cond.end1137
  %713 = load float, ptr %r__2, align 4
  %fneg1147 = fneg float %713
  br label %cond.end1148

cond.end1148:                                     ; preds = %cond.false1146, %cond.true1145
  %cond1149 = phi float [ %712, %cond.true1145 ], [ %fneg1147, %cond.false1146 ]
  %add1150 = fadd float %cond1138, %cond1149
  %714 = load ptr, ptr %rwork.addr, align 8
  %715 = load i32, ptr %i__, align 4
  %idxprom1151 = sext i32 %715 to i64
  %arrayidx1152 = getelementptr inbounds float, ptr %714, i64 %idxprom1151
  %716 = load float, ptr %arrayidx1152, align 4
  %div1153 = fdiv float %add1150, %716
  store float %div1153, ptr %r__4, align 4
  %717 = load float, ptr %r__3, align 4
  %718 = load float, ptr %r__4, align 4
  %cmp1154 = fcmp oge float %717, %718
  br i1 %cmp1154, label %cond.true1156, label %cond.false1157

cond.true1156:                                    ; preds = %cond.end1148
  %719 = load float, ptr %r__3, align 4
  br label %cond.end1158

cond.false1157:                                   ; preds = %cond.end1148
  %720 = load float, ptr %r__4, align 4
  br label %cond.end1158

cond.end1158:                                     ; preds = %cond.false1157, %cond.true1156
  %cond1159 = phi float [ %719, %cond.true1156 ], [ %720, %cond.false1157 ]
  store float %cond1159, ptr %s, align 4
  br label %if.end1194

if.else1160:                                      ; preds = %for.body1123
  %721 = load i32, ptr %i__, align 4
  store i32 %721, ptr %i__3, align 4
  %722 = load float, ptr %s, align 4
  store float %722, ptr %r__3, align 4
  %723 = load ptr, ptr %work.addr, align 8
  %724 = load i32, ptr %i__3, align 4
  %idxprom1161 = sext i32 %724 to i64
  %arrayidx1162 = getelementptr inbounds %struct.complex, ptr %723, i64 %idxprom1161
  %r1163 = getelementptr inbounds %struct.complex, ptr %arrayidx1162, i32 0, i32 0
  %725 = load float, ptr %r1163, align 4
  store float %725, ptr %r__1, align 4
  %726 = load float, ptr %r__1, align 4
  %cmp1164 = fcmp oge float %726, 0.000000e+00
  br i1 %cmp1164, label %cond.true1166, label %cond.false1167

cond.true1166:                                    ; preds = %if.else1160
  %727 = load float, ptr %r__1, align 4
  br label %cond.end1169

cond.false1167:                                   ; preds = %if.else1160
  %728 = load float, ptr %r__1, align 4
  %fneg1168 = fneg float %728
  br label %cond.end1169

cond.end1169:                                     ; preds = %cond.false1167, %cond.true1166
  %cond1170 = phi float [ %727, %cond.true1166 ], [ %fneg1168, %cond.false1167 ]
  %729 = load ptr, ptr %work.addr, align 8
  %730 = load i32, ptr %i__, align 4
  %idxprom1171 = sext i32 %730 to i64
  %arrayidx1172 = getelementptr inbounds %struct.complex, ptr %729, i64 %idxprom1171
  %call1173 = call double @r_imag(ptr noundef %arrayidx1172)
  %conv1174 = fptrunc double %call1173 to float
  store float %conv1174, ptr %r__2, align 4
  %731 = load float, ptr %r__2, align 4
  %cmp1175 = fcmp oge float %731, 0.000000e+00
  br i1 %cmp1175, label %cond.true1177, label %cond.false1178

cond.true1177:                                    ; preds = %cond.end1169
  %732 = load float, ptr %r__2, align 4
  br label %cond.end1180

cond.false1178:                                   ; preds = %cond.end1169
  %733 = load float, ptr %r__2, align 4
  %fneg1179 = fneg float %733
  br label %cond.end1180

cond.end1180:                                     ; preds = %cond.false1178, %cond.true1177
  %cond1181 = phi float [ %732, %cond.true1177 ], [ %fneg1179, %cond.false1178 ]
  %add1182 = fadd float %cond1170, %cond1181
  %734 = load float, ptr %safe1, align 4
  %add1183 = fadd float %add1182, %734
  %735 = load ptr, ptr %rwork.addr, align 8
  %736 = load i32, ptr %i__, align 4
  %idxprom1184 = sext i32 %736 to i64
  %arrayidx1185 = getelementptr inbounds float, ptr %735, i64 %idxprom1184
  %737 = load float, ptr %arrayidx1185, align 4
  %738 = load float, ptr %safe1, align 4
  %add1186 = fadd float %737, %738
  %div1187 = fdiv float %add1183, %add1186
  store float %div1187, ptr %r__4, align 4
  %739 = load float, ptr %r__3, align 4
  %740 = load float, ptr %r__4, align 4
  %cmp1188 = fcmp oge float %739, %740
  br i1 %cmp1188, label %cond.true1190, label %cond.false1191

cond.true1190:                                    ; preds = %cond.end1180
  %741 = load float, ptr %r__3, align 4
  br label %cond.end1192

cond.false1191:                                   ; preds = %cond.end1180
  %742 = load float, ptr %r__4, align 4
  br label %cond.end1192

cond.end1192:                                     ; preds = %cond.false1191, %cond.true1190
  %cond1193 = phi float [ %741, %cond.true1190 ], [ %742, %cond.false1191 ]
  store float %cond1193, ptr %s, align 4
  br label %if.end1194

if.end1194:                                       ; preds = %cond.end1192, %cond.end1158
  br label %for.inc1195

for.inc1195:                                      ; preds = %if.end1194
  %743 = load i32, ptr %i__, align 4
  %inc1196 = add nsw i32 %743, 1
  store i32 %inc1196, ptr %i__, align 4
  br label %for.cond1120, !llvm.loop !9

for.end1197:                                      ; preds = %for.cond1120
  %744 = load float, ptr %s, align 4
  %745 = load ptr, ptr %berr.addr, align 8
  %746 = load i32, ptr %j, align 4
  %idxprom1198 = sext i32 %746 to i64
  %arrayidx1199 = getelementptr inbounds float, ptr %745, i64 %idxprom1198
  store float %744, ptr %arrayidx1199, align 4
  %747 = load ptr, ptr %berr.addr, align 8
  %748 = load i32, ptr %j, align 4
  %idxprom1200 = sext i32 %748 to i64
  %arrayidx1201 = getelementptr inbounds float, ptr %747, i64 %idxprom1200
  %749 = load float, ptr %arrayidx1201, align 4
  %750 = load float, ptr %eps, align 4
  %cmp1202 = fcmp ogt float %749, %750
  br i1 %cmp1202, label %land.lhs.true1204, label %if.end1230

land.lhs.true1204:                                ; preds = %for.end1197
  %751 = load ptr, ptr %berr.addr, align 8
  %752 = load i32, ptr %j, align 4
  %idxprom1205 = sext i32 %752 to i64
  %arrayidx1206 = getelementptr inbounds float, ptr %751, i64 %idxprom1205
  %753 = load float, ptr %arrayidx1206, align 4
  %mul1207 = fmul float %753, 2.000000e+00
  %754 = load float, ptr %lstres, align 4
  %cmp1208 = fcmp ole float %mul1207, %754
  br i1 %cmp1208, label %land.lhs.true1210, label %if.end1230

land.lhs.true1210:                                ; preds = %land.lhs.true1204
  %755 = load i32, ptr %count, align 4
  %cmp1211 = icmp sle i32 %755, 5
  br i1 %cmp1211, label %if.then1213, label %if.end1230

if.then1213:                                      ; preds = %land.lhs.true1210
  %756 = load ptr, ptr %trans.addr, align 8
  %757 = load ptr, ptr %n.addr, align 8
  %758 = load ptr, ptr %dlf.addr, align 8
  %arrayidx1214 = getelementptr inbounds %struct.complex, ptr %758, i64 1
  %759 = load ptr, ptr %df.addr, align 8
  %arrayidx1215 = getelementptr inbounds %struct.complex, ptr %759, i64 1
  %760 = load ptr, ptr %duf.addr, align 8
  %arrayidx1216 = getelementptr inbounds %struct.complex, ptr %760, i64 1
  %761 = load ptr, ptr %du2.addr, align 8
  %arrayidx1217 = getelementptr inbounds %struct.complex, ptr %761, i64 1
  %762 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx1218 = getelementptr inbounds i32, ptr %762, i64 1
  %763 = load ptr, ptr %work.addr, align 8
  %arrayidx1219 = getelementptr inbounds %struct.complex, ptr %763, i64 1
  %764 = load ptr, ptr %n.addr, align 8
  %765 = load ptr, ptr %info.addr, align 8
  %call1220 = call i32 @cgttrs_(ptr noundef %756, ptr noundef %757, ptr noundef @c__1, ptr noundef %arrayidx1214, ptr noundef %arrayidx1215, ptr noundef %arrayidx1216, ptr noundef %arrayidx1217, ptr noundef %arrayidx1218, ptr noundef %arrayidx1219, ptr noundef %764, ptr noundef %765)
  %766 = load ptr, ptr %n.addr, align 8
  %767 = load ptr, ptr %work.addr, align 8
  %arrayidx1221 = getelementptr inbounds %struct.complex, ptr %767, i64 1
  %768 = load ptr, ptr %x.addr, align 8
  %769 = load i32, ptr %j, align 4
  %770 = load i32, ptr %x_dim1, align 4
  %mul1222 = mul nsw i32 %769, %770
  %add1223 = add nsw i32 %mul1222, 1
  %idxprom1224 = sext i32 %add1223 to i64
  %arrayidx1225 = getelementptr inbounds %struct.complex, ptr %768, i64 %idxprom1224
  %call1226 = call i32 @caxpy_(ptr noundef %766, ptr noundef @c_b26, ptr noundef %arrayidx1221, ptr noundef @c__1, ptr noundef %arrayidx1225, ptr noundef @c__1)
  %771 = load ptr, ptr %berr.addr, align 8
  %772 = load i32, ptr %j, align 4
  %idxprom1227 = sext i32 %772 to i64
  %arrayidx1228 = getelementptr inbounds float, ptr %771, i64 %idxprom1227
  %773 = load float, ptr %arrayidx1228, align 4
  store float %773, ptr %lstres, align 4
  %774 = load i32, ptr %count, align 4
  %inc1229 = add nsw i32 %774, 1
  store i32 %inc1229, ptr %count, align 4
  br label %L20

if.end1230:                                       ; preds = %land.lhs.true1210, %land.lhs.true1204, %for.end1197
  %775 = load ptr, ptr %n.addr, align 8
  %776 = load i32, ptr %775, align 4
  store i32 %776, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond1231

for.cond1231:                                     ; preds = %for.inc1301, %if.end1230
  %777 = load i32, ptr %i__, align 4
  %778 = load i32, ptr %i__2, align 4
  %cmp1232 = icmp sle i32 %777, %778
  br i1 %cmp1232, label %for.body1234, label %for.end1303

for.body1234:                                     ; preds = %for.cond1231
  %779 = load ptr, ptr %rwork.addr, align 8
  %780 = load i32, ptr %i__, align 4
  %idxprom1235 = sext i32 %780 to i64
  %arrayidx1236 = getelementptr inbounds float, ptr %779, i64 %idxprom1235
  %781 = load float, ptr %arrayidx1236, align 4
  %782 = load float, ptr %safe2, align 4
  %cmp1237 = fcmp ogt float %781, %782
  br i1 %cmp1237, label %if.then1239, label %if.else1269

if.then1239:                                      ; preds = %for.body1234
  %783 = load i32, ptr %i__, align 4
  store i32 %783, ptr %i__3, align 4
  %784 = load ptr, ptr %work.addr, align 8
  %785 = load i32, ptr %i__3, align 4
  %idxprom1240 = sext i32 %785 to i64
  %arrayidx1241 = getelementptr inbounds %struct.complex, ptr %784, i64 %idxprom1240
  %r1242 = getelementptr inbounds %struct.complex, ptr %arrayidx1241, i32 0, i32 0
  %786 = load float, ptr %r1242, align 4
  store float %786, ptr %r__1, align 4
  %787 = load float, ptr %r__1, align 4
  %cmp1243 = fcmp oge float %787, 0.000000e+00
  br i1 %cmp1243, label %cond.true1245, label %cond.false1246

cond.true1245:                                    ; preds = %if.then1239
  %788 = load float, ptr %r__1, align 4
  br label %cond.end1248

cond.false1246:                                   ; preds = %if.then1239
  %789 = load float, ptr %r__1, align 4
  %fneg1247 = fneg float %789
  br label %cond.end1248

cond.end1248:                                     ; preds = %cond.false1246, %cond.true1245
  %cond1249 = phi float [ %788, %cond.true1245 ], [ %fneg1247, %cond.false1246 ]
  %790 = load ptr, ptr %work.addr, align 8
  %791 = load i32, ptr %i__, align 4
  %idxprom1250 = sext i32 %791 to i64
  %arrayidx1251 = getelementptr inbounds %struct.complex, ptr %790, i64 %idxprom1250
  %call1252 = call double @r_imag(ptr noundef %arrayidx1251)
  %conv1253 = fptrunc double %call1252 to float
  store float %conv1253, ptr %r__2, align 4
  %792 = load float, ptr %r__2, align 4
  %cmp1254 = fcmp oge float %792, 0.000000e+00
  br i1 %cmp1254, label %cond.true1256, label %cond.false1257

cond.true1256:                                    ; preds = %cond.end1248
  %793 = load float, ptr %r__2, align 4
  br label %cond.end1259

cond.false1257:                                   ; preds = %cond.end1248
  %794 = load float, ptr %r__2, align 4
  %fneg1258 = fneg float %794
  br label %cond.end1259

cond.end1259:                                     ; preds = %cond.false1257, %cond.true1256
  %cond1260 = phi float [ %793, %cond.true1256 ], [ %fneg1258, %cond.false1257 ]
  %add1261 = fadd float %cond1249, %cond1260
  %795 = load i32, ptr %nz, align 4
  %conv1262 = sitofp i32 %795 to float
  %796 = load float, ptr %eps, align 4
  %mul1263 = fmul float %conv1262, %796
  %797 = load ptr, ptr %rwork.addr, align 8
  %798 = load i32, ptr %i__, align 4
  %idxprom1264 = sext i32 %798 to i64
  %arrayidx1265 = getelementptr inbounds float, ptr %797, i64 %idxprom1264
  %799 = load float, ptr %arrayidx1265, align 4
  %800 = call float @llvm.fmuladd.f32(float %mul1263, float %799, float %add1261)
  %801 = load ptr, ptr %rwork.addr, align 8
  %802 = load i32, ptr %i__, align 4
  %idxprom1267 = sext i32 %802 to i64
  %arrayidx1268 = getelementptr inbounds float, ptr %801, i64 %idxprom1267
  store float %800, ptr %arrayidx1268, align 4
  br label %if.end1300

if.else1269:                                      ; preds = %for.body1234
  %803 = load i32, ptr %i__, align 4
  store i32 %803, ptr %i__3, align 4
  %804 = load ptr, ptr %work.addr, align 8
  %805 = load i32, ptr %i__3, align 4
  %idxprom1270 = sext i32 %805 to i64
  %arrayidx1271 = getelementptr inbounds %struct.complex, ptr %804, i64 %idxprom1270
  %r1272 = getelementptr inbounds %struct.complex, ptr %arrayidx1271, i32 0, i32 0
  %806 = load float, ptr %r1272, align 4
  store float %806, ptr %r__1, align 4
  %807 = load float, ptr %r__1, align 4
  %cmp1273 = fcmp oge float %807, 0.000000e+00
  br i1 %cmp1273, label %cond.true1275, label %cond.false1276

cond.true1275:                                    ; preds = %if.else1269
  %808 = load float, ptr %r__1, align 4
  br label %cond.end1278

cond.false1276:                                   ; preds = %if.else1269
  %809 = load float, ptr %r__1, align 4
  %fneg1277 = fneg float %809
  br label %cond.end1278

cond.end1278:                                     ; preds = %cond.false1276, %cond.true1275
  %cond1279 = phi float [ %808, %cond.true1275 ], [ %fneg1277, %cond.false1276 ]
  %810 = load ptr, ptr %work.addr, align 8
  %811 = load i32, ptr %i__, align 4
  %idxprom1280 = sext i32 %811 to i64
  %arrayidx1281 = getelementptr inbounds %struct.complex, ptr %810, i64 %idxprom1280
  %call1282 = call double @r_imag(ptr noundef %arrayidx1281)
  %conv1283 = fptrunc double %call1282 to float
  store float %conv1283, ptr %r__2, align 4
  %812 = load float, ptr %r__2, align 4
  %cmp1284 = fcmp oge float %812, 0.000000e+00
  br i1 %cmp1284, label %cond.true1286, label %cond.false1287

cond.true1286:                                    ; preds = %cond.end1278
  %813 = load float, ptr %r__2, align 4
  br label %cond.end1289

cond.false1287:                                   ; preds = %cond.end1278
  %814 = load float, ptr %r__2, align 4
  %fneg1288 = fneg float %814
  br label %cond.end1289

cond.end1289:                                     ; preds = %cond.false1287, %cond.true1286
  %cond1290 = phi float [ %813, %cond.true1286 ], [ %fneg1288, %cond.false1287 ]
  %add1291 = fadd float %cond1279, %cond1290
  %815 = load i32, ptr %nz, align 4
  %conv1292 = sitofp i32 %815 to float
  %816 = load float, ptr %eps, align 4
  %mul1293 = fmul float %conv1292, %816
  %817 = load ptr, ptr %rwork.addr, align 8
  %818 = load i32, ptr %i__, align 4
  %idxprom1294 = sext i32 %818 to i64
  %arrayidx1295 = getelementptr inbounds float, ptr %817, i64 %idxprom1294
  %819 = load float, ptr %arrayidx1295, align 4
  %820 = call float @llvm.fmuladd.f32(float %mul1293, float %819, float %add1291)
  %821 = load float, ptr %safe1, align 4
  %add1297 = fadd float %820, %821
  %822 = load ptr, ptr %rwork.addr, align 8
  %823 = load i32, ptr %i__, align 4
  %idxprom1298 = sext i32 %823 to i64
  %arrayidx1299 = getelementptr inbounds float, ptr %822, i64 %idxprom1298
  store float %add1297, ptr %arrayidx1299, align 4
  br label %if.end1300

if.end1300:                                       ; preds = %cond.end1289, %cond.end1259
  br label %for.inc1301

for.inc1301:                                      ; preds = %if.end1300
  %824 = load i32, ptr %i__, align 4
  %inc1302 = add nsw i32 %824, 1
  store i32 %inc1302, ptr %i__, align 4
  br label %for.cond1231, !llvm.loop !10

for.end1303:                                      ; preds = %for.cond1231
  store i32 0, ptr %kase, align 4
  br label %L70

L70:                                              ; preds = %if.end1392, %for.end1303
  %825 = load ptr, ptr %n.addr, align 8
  %826 = load ptr, ptr %work.addr, align 8
  %827 = load ptr, ptr %n.addr, align 8
  %828 = load i32, ptr %827, align 4
  %add1304 = add nsw i32 %828, 1
  %idxprom1305 = sext i32 %add1304 to i64
  %arrayidx1306 = getelementptr inbounds %struct.complex, ptr %826, i64 %idxprom1305
  %829 = load ptr, ptr %work.addr, align 8
  %arrayidx1307 = getelementptr inbounds %struct.complex, ptr %829, i64 1
  %830 = load ptr, ptr %ferr.addr, align 8
  %831 = load i32, ptr %j, align 4
  %idxprom1308 = sext i32 %831 to i64
  %arrayidx1309 = getelementptr inbounds float, ptr %830, i64 %idxprom1308
  %arraydecay1310 = getelementptr inbounds [3 x i32], ptr %isave, i64 0, i64 0
  %call1311 = call i32 @clacn2_(ptr noundef %825, ptr noundef %arrayidx1306, ptr noundef %arrayidx1307, ptr noundef %arrayidx1309, ptr noundef %kase, ptr noundef %arraydecay1310)
  %832 = load i32, ptr %kase, align 4
  %cmp1312 = icmp ne i32 %832, 0
  br i1 %cmp1312, label %if.then1314, label %if.end1393

if.then1314:                                      ; preds = %L70
  %833 = load i32, ptr %kase, align 4
  %cmp1315 = icmp eq i32 %833, 1
  br i1 %cmp1315, label %if.then1317, label %if.else1354

if.then1317:                                      ; preds = %if.then1314
  %arraydecay1318 = getelementptr inbounds [1 x i8], ptr %transt, i64 0, i64 0
  %834 = load ptr, ptr %n.addr, align 8
  %835 = load ptr, ptr %dlf.addr, align 8
  %arrayidx1319 = getelementptr inbounds %struct.complex, ptr %835, i64 1
  %836 = load ptr, ptr %df.addr, align 8
  %arrayidx1320 = getelementptr inbounds %struct.complex, ptr %836, i64 1
  %837 = load ptr, ptr %duf.addr, align 8
  %arrayidx1321 = getelementptr inbounds %struct.complex, ptr %837, i64 1
  %838 = load ptr, ptr %du2.addr, align 8
  %arrayidx1322 = getelementptr inbounds %struct.complex, ptr %838, i64 1
  %839 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx1323 = getelementptr inbounds i32, ptr %839, i64 1
  %840 = load ptr, ptr %work.addr, align 8
  %arrayidx1324 = getelementptr inbounds %struct.complex, ptr %840, i64 1
  %841 = load ptr, ptr %n.addr, align 8
  %842 = load ptr, ptr %info.addr, align 8
  %call1325 = call i32 @cgttrs_(ptr noundef %arraydecay1318, ptr noundef %834, ptr noundef @c__1, ptr noundef %arrayidx1319, ptr noundef %arrayidx1320, ptr noundef %arrayidx1321, ptr noundef %arrayidx1322, ptr noundef %arrayidx1323, ptr noundef %arrayidx1324, ptr noundef %841, ptr noundef %842)
  %843 = load ptr, ptr %n.addr, align 8
  %844 = load i32, ptr %843, align 4
  store i32 %844, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond1326

for.cond1326:                                     ; preds = %for.inc1351, %if.then1317
  %845 = load i32, ptr %i__, align 4
  %846 = load i32, ptr %i__2, align 4
  %cmp1327 = icmp sle i32 %845, %846
  br i1 %cmp1327, label %for.body1329, label %for.end1353

for.body1329:                                     ; preds = %for.cond1326
  %847 = load i32, ptr %i__, align 4
  store i32 %847, ptr %i__3, align 4
  %848 = load i32, ptr %i__, align 4
  store i32 %848, ptr %i__4, align 4
  %849 = load i32, ptr %i__, align 4
  store i32 %849, ptr %i__5, align 4
  %850 = load ptr, ptr %rwork.addr, align 8
  %851 = load i32, ptr %i__4, align 4
  %idxprom1330 = sext i32 %851 to i64
  %arrayidx1331 = getelementptr inbounds float, ptr %850, i64 %idxprom1330
  %852 = load float, ptr %arrayidx1331, align 4
  %853 = load ptr, ptr %work.addr, align 8
  %854 = load i32, ptr %i__5, align 4
  %idxprom1332 = sext i32 %854 to i64
  %arrayidx1333 = getelementptr inbounds %struct.complex, ptr %853, i64 %idxprom1332
  %r1334 = getelementptr inbounds %struct.complex, ptr %arrayidx1333, i32 0, i32 0
  %855 = load float, ptr %r1334, align 4
  %mul1335 = fmul float %852, %855
  %r1336 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul1335, ptr %r1336, align 4
  %856 = load ptr, ptr %rwork.addr, align 8
  %857 = load i32, ptr %i__4, align 4
  %idxprom1337 = sext i32 %857 to i64
  %arrayidx1338 = getelementptr inbounds float, ptr %856, i64 %idxprom1337
  %858 = load float, ptr %arrayidx1338, align 4
  %859 = load ptr, ptr %work.addr, align 8
  %860 = load i32, ptr %i__5, align 4
  %idxprom1339 = sext i32 %860 to i64
  %arrayidx1340 = getelementptr inbounds %struct.complex, ptr %859, i64 %idxprom1339
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx1340, i32 0, i32 1
  %861 = load float, ptr %i, align 4
  %mul1341 = fmul float %858, %861
  %i1342 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul1341, ptr %i1342, align 4
  %r1343 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %862 = load float, ptr %r1343, align 4
  %863 = load ptr, ptr %work.addr, align 8
  %864 = load i32, ptr %i__3, align 4
  %idxprom1344 = sext i32 %864 to i64
  %arrayidx1345 = getelementptr inbounds %struct.complex, ptr %863, i64 %idxprom1344
  %r1346 = getelementptr inbounds %struct.complex, ptr %arrayidx1345, i32 0, i32 0
  store float %862, ptr %r1346, align 4
  %i1347 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %865 = load float, ptr %i1347, align 4
  %866 = load ptr, ptr %work.addr, align 8
  %867 = load i32, ptr %i__3, align 4
  %idxprom1348 = sext i32 %867 to i64
  %arrayidx1349 = getelementptr inbounds %struct.complex, ptr %866, i64 %idxprom1348
  %i1350 = getelementptr inbounds %struct.complex, ptr %arrayidx1349, i32 0, i32 1
  store float %865, ptr %i1350, align 4
  br label %for.inc1351

for.inc1351:                                      ; preds = %for.body1329
  %868 = load i32, ptr %i__, align 4
  %inc1352 = add nsw i32 %868, 1
  store i32 %inc1352, ptr %i__, align 4
  br label %for.cond1326, !llvm.loop !11

for.end1353:                                      ; preds = %for.cond1326
  br label %if.end1392

if.else1354:                                      ; preds = %if.then1314
  %869 = load ptr, ptr %n.addr, align 8
  %870 = load i32, ptr %869, align 4
  store i32 %870, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond1355

for.cond1355:                                     ; preds = %for.inc1381, %if.else1354
  %871 = load i32, ptr %i__, align 4
  %872 = load i32, ptr %i__2, align 4
  %cmp1356 = icmp sle i32 %871, %872
  br i1 %cmp1356, label %for.body1358, label %for.end1383

for.body1358:                                     ; preds = %for.cond1355
  %873 = load i32, ptr %i__, align 4
  store i32 %873, ptr %i__3, align 4
  %874 = load i32, ptr %i__, align 4
  store i32 %874, ptr %i__4, align 4
  %875 = load i32, ptr %i__, align 4
  store i32 %875, ptr %i__5, align 4
  %876 = load ptr, ptr %rwork.addr, align 8
  %877 = load i32, ptr %i__4, align 4
  %idxprom1359 = sext i32 %877 to i64
  %arrayidx1360 = getelementptr inbounds float, ptr %876, i64 %idxprom1359
  %878 = load float, ptr %arrayidx1360, align 4
  %879 = load ptr, ptr %work.addr, align 8
  %880 = load i32, ptr %i__5, align 4
  %idxprom1361 = sext i32 %880 to i64
  %arrayidx1362 = getelementptr inbounds %struct.complex, ptr %879, i64 %idxprom1361
  %r1363 = getelementptr inbounds %struct.complex, ptr %arrayidx1362, i32 0, i32 0
  %881 = load float, ptr %r1363, align 4
  %mul1364 = fmul float %878, %881
  %r1365 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul1364, ptr %r1365, align 4
  %882 = load ptr, ptr %rwork.addr, align 8
  %883 = load i32, ptr %i__4, align 4
  %idxprom1366 = sext i32 %883 to i64
  %arrayidx1367 = getelementptr inbounds float, ptr %882, i64 %idxprom1366
  %884 = load float, ptr %arrayidx1367, align 4
  %885 = load ptr, ptr %work.addr, align 8
  %886 = load i32, ptr %i__5, align 4
  %idxprom1368 = sext i32 %886 to i64
  %arrayidx1369 = getelementptr inbounds %struct.complex, ptr %885, i64 %idxprom1368
  %i1370 = getelementptr inbounds %struct.complex, ptr %arrayidx1369, i32 0, i32 1
  %887 = load float, ptr %i1370, align 4
  %mul1371 = fmul float %884, %887
  %i1372 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul1371, ptr %i1372, align 4
  %r1373 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %888 = load float, ptr %r1373, align 4
  %889 = load ptr, ptr %work.addr, align 8
  %890 = load i32, ptr %i__3, align 4
  %idxprom1374 = sext i32 %890 to i64
  %arrayidx1375 = getelementptr inbounds %struct.complex, ptr %889, i64 %idxprom1374
  %r1376 = getelementptr inbounds %struct.complex, ptr %arrayidx1375, i32 0, i32 0
  store float %888, ptr %r1376, align 4
  %i1377 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %891 = load float, ptr %i1377, align 4
  %892 = load ptr, ptr %work.addr, align 8
  %893 = load i32, ptr %i__3, align 4
  %idxprom1378 = sext i32 %893 to i64
  %arrayidx1379 = getelementptr inbounds %struct.complex, ptr %892, i64 %idxprom1378
  %i1380 = getelementptr inbounds %struct.complex, ptr %arrayidx1379, i32 0, i32 1
  store float %891, ptr %i1380, align 4
  br label %for.inc1381

for.inc1381:                                      ; preds = %for.body1358
  %894 = load i32, ptr %i__, align 4
  %inc1382 = add nsw i32 %894, 1
  store i32 %inc1382, ptr %i__, align 4
  br label %for.cond1355, !llvm.loop !12

for.end1383:                                      ; preds = %for.cond1355
  %arraydecay1384 = getelementptr inbounds [1 x i8], ptr %transn, i64 0, i64 0
  %895 = load ptr, ptr %n.addr, align 8
  %896 = load ptr, ptr %dlf.addr, align 8
  %arrayidx1385 = getelementptr inbounds %struct.complex, ptr %896, i64 1
  %897 = load ptr, ptr %df.addr, align 8
  %arrayidx1386 = getelementptr inbounds %struct.complex, ptr %897, i64 1
  %898 = load ptr, ptr %duf.addr, align 8
  %arrayidx1387 = getelementptr inbounds %struct.complex, ptr %898, i64 1
  %899 = load ptr, ptr %du2.addr, align 8
  %arrayidx1388 = getelementptr inbounds %struct.complex, ptr %899, i64 1
  %900 = load ptr, ptr %ipiv.addr, align 8
  %arrayidx1389 = getelementptr inbounds i32, ptr %900, i64 1
  %901 = load ptr, ptr %work.addr, align 8
  %arrayidx1390 = getelementptr inbounds %struct.complex, ptr %901, i64 1
  %902 = load ptr, ptr %n.addr, align 8
  %903 = load ptr, ptr %info.addr, align 8
  %call1391 = call i32 @cgttrs_(ptr noundef %arraydecay1384, ptr noundef %895, ptr noundef @c__1, ptr noundef %arrayidx1385, ptr noundef %arrayidx1386, ptr noundef %arrayidx1387, ptr noundef %arrayidx1388, ptr noundef %arrayidx1389, ptr noundef %arrayidx1390, ptr noundef %902, ptr noundef %903)
  br label %if.end1392

if.end1392:                                       ; preds = %for.end1383, %for.end1353
  br label %L70

if.end1393:                                       ; preds = %L70
  store float 0.000000e+00, ptr %lstres, align 4
  %904 = load ptr, ptr %n.addr, align 8
  %905 = load i32, ptr %904, align 4
  store i32 %905, ptr %i__2, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond1394

for.cond1394:                                     ; preds = %for.inc1430, %if.end1393
  %906 = load i32, ptr %i__, align 4
  %907 = load i32, ptr %i__2, align 4
  %cmp1395 = icmp sle i32 %906, %907
  br i1 %cmp1395, label %for.body1397, label %for.end1432

for.body1397:                                     ; preds = %for.cond1394
  %908 = load i32, ptr %i__, align 4
  %909 = load i32, ptr %j, align 4
  %910 = load i32, ptr %x_dim1, align 4
  %mul1398 = mul nsw i32 %909, %910
  %add1399 = add nsw i32 %908, %mul1398
  store i32 %add1399, ptr %i__3, align 4
  %911 = load float, ptr %lstres, align 4
  store float %911, ptr %r__3, align 4
  %912 = load ptr, ptr %x.addr, align 8
  %913 = load i32, ptr %i__3, align 4
  %idxprom1400 = sext i32 %913 to i64
  %arrayidx1401 = getelementptr inbounds %struct.complex, ptr %912, i64 %idxprom1400
  %r1402 = getelementptr inbounds %struct.complex, ptr %arrayidx1401, i32 0, i32 0
  %914 = load float, ptr %r1402, align 4
  store float %914, ptr %r__1, align 4
  %915 = load float, ptr %r__1, align 4
  %cmp1403 = fcmp oge float %915, 0.000000e+00
  br i1 %cmp1403, label %cond.true1405, label %cond.false1406

cond.true1405:                                    ; preds = %for.body1397
  %916 = load float, ptr %r__1, align 4
  br label %cond.end1408

cond.false1406:                                   ; preds = %for.body1397
  %917 = load float, ptr %r__1, align 4
  %fneg1407 = fneg float %917
  br label %cond.end1408

cond.end1408:                                     ; preds = %cond.false1406, %cond.true1405
  %cond1409 = phi float [ %916, %cond.true1405 ], [ %fneg1407, %cond.false1406 ]
  %918 = load ptr, ptr %x.addr, align 8
  %919 = load i32, ptr %i__, align 4
  %920 = load i32, ptr %j, align 4
  %921 = load i32, ptr %x_dim1, align 4
  %mul1410 = mul nsw i32 %920, %921
  %add1411 = add nsw i32 %919, %mul1410
  %idxprom1412 = sext i32 %add1411 to i64
  %arrayidx1413 = getelementptr inbounds %struct.complex, ptr %918, i64 %idxprom1412
  %call1414 = call double @r_imag(ptr noundef %arrayidx1413)
  %conv1415 = fptrunc double %call1414 to float
  store float %conv1415, ptr %r__2, align 4
  %922 = load float, ptr %r__2, align 4
  %cmp1416 = fcmp oge float %922, 0.000000e+00
  br i1 %cmp1416, label %cond.true1418, label %cond.false1419

cond.true1418:                                    ; preds = %cond.end1408
  %923 = load float, ptr %r__2, align 4
  br label %cond.end1421

cond.false1419:                                   ; preds = %cond.end1408
  %924 = load float, ptr %r__2, align 4
  %fneg1420 = fneg float %924
  br label %cond.end1421

cond.end1421:                                     ; preds = %cond.false1419, %cond.true1418
  %cond1422 = phi float [ %923, %cond.true1418 ], [ %fneg1420, %cond.false1419 ]
  %add1423 = fadd float %cond1409, %cond1422
  store float %add1423, ptr %r__4, align 4
  %925 = load float, ptr %r__3, align 4
  %926 = load float, ptr %r__4, align 4
  %cmp1424 = fcmp oge float %925, %926
  br i1 %cmp1424, label %cond.true1426, label %cond.false1427

cond.true1426:                                    ; preds = %cond.end1421
  %927 = load float, ptr %r__3, align 4
  br label %cond.end1428

cond.false1427:                                   ; preds = %cond.end1421
  %928 = load float, ptr %r__4, align 4
  br label %cond.end1428

cond.end1428:                                     ; preds = %cond.false1427, %cond.true1426
  %cond1429 = phi float [ %927, %cond.true1426 ], [ %928, %cond.false1427 ]
  store float %cond1429, ptr %lstres, align 4
  br label %for.inc1430

for.inc1430:                                      ; preds = %cond.end1428
  %929 = load i32, ptr %i__, align 4
  %inc1431 = add nsw i32 %929, 1
  store i32 %inc1431, ptr %i__, align 4
  br label %for.cond1394, !llvm.loop !13

for.end1432:                                      ; preds = %for.cond1394
  %930 = load float, ptr %lstres, align 4
  %cmp1433 = fcmp une float %930, 0.000000e+00
  br i1 %cmp1433, label %if.then1435, label %if.end1439

if.then1435:                                      ; preds = %for.end1432
  %931 = load float, ptr %lstres, align 4
  %932 = load ptr, ptr %ferr.addr, align 8
  %933 = load i32, ptr %j, align 4
  %idxprom1436 = sext i32 %933 to i64
  %arrayidx1437 = getelementptr inbounds float, ptr %932, i64 %idxprom1436
  %934 = load float, ptr %arrayidx1437, align 4
  %div1438 = fdiv float %934, %931
  store float %div1438, ptr %arrayidx1437, align 4
  br label %if.end1439

if.end1439:                                       ; preds = %if.then1435, %for.end1432
  br label %for.inc1440

for.inc1440:                                      ; preds = %if.end1439
  %935 = load i32, ptr %j, align 4
  %inc1441 = add nsw i32 %935, 1
  store i32 %inc1441, ptr %j, align 4
  br label %for.cond61, !llvm.loop !14

for.end1442:                                      ; preds = %for.cond61
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end1442, %for.end, %if.then42
  %936 = load i32, ptr %retval, align 4
  ret i32 %936
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare float @slamch_(ptr noundef) #1

declare i32 @ccopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clagtm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @r_imag(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare i32 @cgttrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @caxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @clacn2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
