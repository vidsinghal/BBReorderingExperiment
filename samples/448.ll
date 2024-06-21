; ModuleID = 'samples/448.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/ssbtrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SSBTRD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b9 = internal global float 0.000000e+00, align 4
@c_b10 = internal global float 1.000000e+00, align 4
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define i32 @ssbtrd_(ptr noundef %vect, ptr noundef %uplo, ptr noundef %n, ptr noundef %kd, ptr noundef %ab, ptr noundef %ldab, ptr noundef %d__, ptr noundef %e, ptr noundef %q, ptr noundef %ldq, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %vect.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %kd.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %ldq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %q_dim1 = alloca i32, align 4
  %q_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %nq = alloca i32, align 4
  %nr = alloca i32, align 4
  %kd1 = alloca i32, align 4
  %ibl = alloca i32, align 4
  %iqb = alloca i32, align 4
  %kdn = alloca i32, align 4
  %jin = alloca i32, align 4
  %nrt = alloca i32, align 4
  %kdm1 = alloca i32, align 4
  %inca = alloca i32, align 4
  %jend = alloca i32, align 4
  %lend = alloca i32, align 4
  %jinc = alloca i32, align 4
  %incx = alloca i32, align 4
  %last = alloca i32, align 4
  %temp = alloca float, align 4
  %j1end = alloca i32, align 4
  %j1inc = alloca i32, align 4
  %iqend = alloca i32, align 4
  %initq = alloca i32, align 4
  %wantq = alloca i32, align 4
  %upper = alloca i32, align 4
  %iqaend = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x52 = alloca i32, align 4
  %_y53 = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  %_x322 = alloca i32, align 4
  %_y323 = alloca i32, align 4
  %tmp324 = alloca i32, align 4
  %_x358 = alloca i32, align 4
  %_y359 = alloca i32, align 4
  %tmp360 = alloca i32, align 4
  %_x368 = alloca i32, align 4
  %_y369 = alloca i32, align 4
  %tmp370 = alloca i32, align 4
  %_x384 = alloca i32, align 4
  %_y385 = alloca i32, align 4
  %tmp386 = alloca i32, align 4
  %_x409 = alloca i32, align 4
  %_y410 = alloca i32, align 4
  %tmp411 = alloca i32, align 4
  %_x421 = alloca i32, align 4
  %_y422 = alloca i32, align 4
  %tmp423 = alloca i32, align 4
  %_x842 = alloca i32, align 4
  %_y843 = alloca i32, align 4
  %tmp844 = alloca i32, align 4
  %_x876 = alloca i32, align 4
  %_y877 = alloca i32, align 4
  %tmp878 = alloca i32, align 4
  %_x886 = alloca i32, align 4
  %_y887 = alloca i32, align 4
  %tmp888 = alloca i32, align 4
  %_x902 = alloca i32, align 4
  %_y903 = alloca i32, align 4
  %tmp904 = alloca i32, align 4
  %_x928 = alloca i32, align 4
  %_y929 = alloca i32, align 4
  %tmp930 = alloca i32, align 4
  %_x940 = alloca i32, align 4
  %_y941 = alloca i32, align 4
  %tmp942 = alloca i32, align 4
  store ptr %vect, ptr %vect.addr, align 8, !tbaa !4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %kd, ptr %kd.addr, align 8, !tbaa !4
  store ptr %ab, ptr %ab.addr, align 8, !tbaa !4
  store ptr %ldab, ptr %ldab.addr, align 8, !tbaa !4
  store ptr %d__, ptr %d__.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %q, ptr %q.addr, align 8, !tbaa !4
  store ptr %ldq, ptr %ldq.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kd1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ibl) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iqb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kdn) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %jin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nrt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kdm1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %inca) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %jend) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lend) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %jinc) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %incx) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1end) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1inc) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iqend) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %initq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantq) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iqaend) #3
  %0 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %1 = load i32, ptr %0, align 4, !tbaa !8
  store i32 %1, ptr %ab_dim1, align 4, !tbaa !8
  %2 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4, !tbaa !8
  %3 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %4 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %e.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %8 = load i32, ptr %7, align 4, !tbaa !8
  store i32 %8, ptr %q_dim1, align 4, !tbaa !8
  %9 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %add2 = add nsw i32 1, %9
  store i32 %add2, ptr %q_offset, align 4, !tbaa !8
  %10 = load i32, ptr %q_offset, align 4, !tbaa !8
  %11 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %idx.ext3 = sext i32 %10 to i64
  %idx.neg4 = sub i64 0, %idx.ext3
  %add.ptr5 = getelementptr inbounds float, ptr %11, i64 %idx.neg4
  store ptr %add.ptr5, ptr %q.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds float, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %vect.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %13, ptr noundef @.str)
  store i32 %call, ptr %initq, align 4, !tbaa !8
  %14 = load i32, ptr %initq, align 4, !tbaa !8
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %15 = load ptr, ptr %vect.addr, align 8, !tbaa !4
  %call7 = call i32 @lsame_(ptr noundef %15, ptr noundef @.str.1)
  %tobool8 = icmp ne i32 %call7, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %16 = phi i1 [ true, %entry ], [ %tobool8, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  store i32 %lor.ext, ptr %wantq, align 4, !tbaa !8
  %17 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call9 = call i32 @lsame_(ptr noundef %17, ptr noundef @.str.1)
  store i32 %call9, ptr %upper, align 4, !tbaa !8
  %18 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %add10 = add nsw i32 %19, 1
  store i32 %add10, ptr %kd1, align 4, !tbaa !8
  %20 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %sub = sub nsw i32 %21, 1
  store i32 %sub, ptr %kdm1, align 4, !tbaa !8
  %22 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %sub11 = sub nsw i32 %23, 1
  store i32 %sub11, ptr %incx, align 4, !tbaa !8
  store i32 1, ptr %iqend, align 4, !tbaa !8
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %24, align 4, !tbaa !8
  %25 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool12 = icmp ne i32 %25, 0
  br i1 %tobool12, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.end
  %26 = load ptr, ptr %vect.addr, align 8, !tbaa !4
  %call13 = call i32 @lsame_(ptr noundef %26, ptr noundef @.str.2)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %27 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %27, align 4, !tbaa !8
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true, %lor.end
  %28 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool15 = icmp ne i32 %28, 0
  br i1 %tobool15, label %if.else20, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.else
  %29 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call17 = call i32 @lsame_(ptr noundef %29, ptr noundef @.str.3)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else20, label %if.then19

if.then19:                                        ; preds = %land.lhs.true16
  %30 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %30, align 4, !tbaa !8
  br label %if.end37

if.else20:                                        ; preds = %land.lhs.true16, %if.else
  %31 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  %cmp = icmp slt i32 %32, 0
  br i1 %cmp, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else20
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %33, align 4, !tbaa !8
  br label %if.end36

if.else22:                                        ; preds = %if.else20
  %34 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %cmp23 = icmp slt i32 %35, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else22
  %36 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %36, align 4, !tbaa !8
  br label %if.end35

if.else25:                                        ; preds = %if.else22
  %37 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %39 = load i32, ptr %kd1, align 4, !tbaa !8
  %cmp26 = icmp slt i32 %38, %39
  br i1 %cmp26, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else25
  %40 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %40, align 4, !tbaa !8
  br label %if.end34

if.else28:                                        ; preds = %if.else25
  %41 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %43 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  store i32 %44, ptr %_y, align 4, !tbaa !8
  %45 = load i32, ptr %_x, align 4, !tbaa !8
  %46 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp29 = icmp sgt i32 %45, %46
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else28
  %47 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else28
  %48 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %47, %cond.true ], [ %48, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %49 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp30 = icmp slt i32 %42, %49
  br i1 %cmp30, label %land.lhs.true31, label %if.end

land.lhs.true31:                                  ; preds = %cond.end
  %50 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool32 = icmp ne i32 %50, 0
  br i1 %tobool32, label %if.then33, label %if.end

if.then33:                                        ; preds = %land.lhs.true31
  %51 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -10, ptr %51, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then33, %land.lhs.true31, %cond.end
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.then27
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then24
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then21
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then19
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  %52 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %53 = load i32, ptr %52, align 4, !tbaa !8
  %cmp39 = icmp ne i32 %53, 0
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end38
  %54 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %sub41 = sub nsw i32 0, %55
  store i32 %sub41, ptr %i__1, align 4, !tbaa !8
  %call42 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %56 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %57 = load i32, ptr %56, align 4, !tbaa !8
  %cmp44 = icmp eq i32 %57, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end43
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  %58 = load i32, ptr %initq, align 4, !tbaa !8
  %tobool47 = icmp ne i32 %58, 0
  br i1 %tobool47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end46
  %59 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %60 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %61 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %62 = load i32, ptr %q_offset, align 4, !tbaa !8
  %idxprom = sext i32 %62 to i64
  %arrayidx = getelementptr inbounds float, ptr %61, i64 %idxprom
  %63 = load ptr, ptr %ldq.addr, align 8, !tbaa !4
  %call49 = call i32 @slaset_(ptr noundef @.str.5, ptr noundef %59, ptr noundef %60, ptr noundef @c_b9, ptr noundef @c_b10, ptr noundef %arrayidx, ptr noundef %63)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end46
  %64 = load i32, ptr %kd1, align 4, !tbaa !8
  %65 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %mul = mul nsw i32 %64, %66
  store i32 %mul, ptr %inca, align 4, !tbaa !8
  %67 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %sub51 = sub nsw i32 %68, 1
  store i32 %sub51, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x52) #3
  %69 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %69, ptr %_x52, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y53) #3
  %70 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  store i32 %71, ptr %_y53, align 4, !tbaa !8
  %72 = load i32, ptr %_x52, align 4, !tbaa !8
  %73 = load i32, ptr %_y53, align 4, !tbaa !8
  %cmp55 = icmp slt i32 %72, %73
  br i1 %cmp55, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %if.end50
  %74 = load i32, ptr %_x52, align 4, !tbaa !8
  br label %cond.end58

cond.false57:                                     ; preds = %if.end50
  %75 = load i32, ptr %_y53, align 4, !tbaa !8
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %cond.true56
  %cond59 = phi i32 [ %74, %cond.true56 ], [ %75, %cond.false57 ]
  store i32 %cond59, ptr %tmp54, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y53) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x52) #3
  %76 = load i32, ptr %tmp54, align 4, !tbaa !8
  store i32 %76, ptr %kdn, align 4, !tbaa !8
  %77 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool60 = icmp ne i32 %77, 0
  br i1 %tobool60, label %if.then61, label %if.else577

if.then61:                                        ; preds = %cond.end58
  %78 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %79 = load i32, ptr %78, align 4, !tbaa !8
  %cmp62 = icmp sgt i32 %79, 1
  br i1 %cmp62, label %if.then63, label %if.end533

if.then63:                                        ; preds = %if.then61
  store i32 0, ptr %nr, align 4, !tbaa !8
  %80 = load i32, ptr %kdn, align 4, !tbaa !8
  %add64 = add nsw i32 %80, 2
  store i32 %add64, ptr %j1, align 4, !tbaa !8
  store i32 1, ptr %j2, align 4, !tbaa !8
  %81 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %82 = load i32, ptr %81, align 4, !tbaa !8
  %sub65 = sub nsw i32 %82, 2
  store i32 %sub65, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc530, %if.then63
  %83 = load i32, ptr %i__, align 4, !tbaa !8
  %84 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp66 = icmp sle i32 %83, %84
  br i1 %cmp66, label %for.body, label %for.end532

for.body:                                         ; preds = %for.cond
  %85 = load i32, ptr %kdn, align 4, !tbaa !8
  %add67 = add nsw i32 %85, 1
  store i32 %add67, ptr %k, align 4, !tbaa !8
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc527, %for.body
  %86 = load i32, ptr %k, align 4, !tbaa !8
  %cmp69 = icmp sge i32 %86, 2
  br i1 %cmp69, label %for.body70, label %for.end529

for.body70:                                       ; preds = %for.cond68
  %87 = load i32, ptr %kdn, align 4, !tbaa !8
  %88 = load i32, ptr %j1, align 4, !tbaa !8
  %add71 = add nsw i32 %88, %87
  store i32 %add71, ptr %j1, align 4, !tbaa !8
  %89 = load i32, ptr %kdn, align 4, !tbaa !8
  %90 = load i32, ptr %j2, align 4, !tbaa !8
  %add72 = add nsw i32 %90, %89
  store i32 %add72, ptr %j2, align 4, !tbaa !8
  %91 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp73 = icmp sgt i32 %91, 0
  br i1 %cmp73, label %if.then74, label %if.end140

if.then74:                                        ; preds = %for.body70
  %92 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %93 = load i32, ptr %j1, align 4, !tbaa !8
  %sub75 = sub nsw i32 %93, 1
  %94 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul76 = mul nsw i32 %sub75, %94
  %add77 = add nsw i32 %mul76, 1
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds float, ptr %92, i64 %idxprom78
  %95 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %96 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom80 = sext i32 %96 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %95, i64 %idxprom80
  %97 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %98 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom82 = sext i32 %98 to i64
  %arrayidx83 = getelementptr inbounds float, ptr %97, i64 %idxprom82
  %call84 = call i32 @slargv_(ptr noundef %nr, ptr noundef %arrayidx79, ptr noundef %inca, ptr noundef %arrayidx81, ptr noundef %kd1, ptr noundef %arrayidx83, ptr noundef %kd1)
  %99 = load i32, ptr %nr, align 4, !tbaa !8
  %100 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %101 = load i32, ptr %100, align 4, !tbaa !8
  %shl = shl i32 %101, 1
  %sub85 = sub nsw i32 %shl, 1
  %cmp86 = icmp sge i32 %99, %sub85
  br i1 %cmp86, label %if.then87, label %if.else107

if.then87:                                        ; preds = %if.then74
  %102 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %103 = load i32, ptr %102, align 4, !tbaa !8
  %sub88 = sub nsw i32 %103, 1
  store i32 %sub88, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc, %if.then87
  %104 = load i32, ptr %l, align 4, !tbaa !8
  %105 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp90 = icmp sle i32 %104, %105
  br i1 %cmp90, label %for.body91, label %for.end

for.body91:                                       ; preds = %for.cond89
  %106 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %107 = load i32, ptr %l, align 4, !tbaa !8
  %add92 = add nsw i32 %107, 1
  %108 = load i32, ptr %j1, align 4, !tbaa !8
  %sub93 = sub nsw i32 %108, 1
  %109 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul94 = mul nsw i32 %sub93, %109
  %add95 = add nsw i32 %add92, %mul94
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds float, ptr %106, i64 %idxprom96
  %110 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %111 = load i32, ptr %l, align 4, !tbaa !8
  %112 = load i32, ptr %j1, align 4, !tbaa !8
  %113 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul98 = mul nsw i32 %112, %113
  %add99 = add nsw i32 %111, %mul98
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %110, i64 %idxprom100
  %114 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %115 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom102 = sext i32 %115 to i64
  %arrayidx103 = getelementptr inbounds float, ptr %114, i64 %idxprom102
  %116 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %117 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom104 = sext i32 %117 to i64
  %arrayidx105 = getelementptr inbounds float, ptr %116, i64 %idxprom104
  %call106 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx97, ptr noundef %inca, ptr noundef %arrayidx101, ptr noundef %inca, ptr noundef %arrayidx103, ptr noundef %arrayidx105, ptr noundef %kd1)
  br label %for.inc

for.inc:                                          ; preds = %for.body91
  %118 = load i32, ptr %l, align 4, !tbaa !8
  %inc = add nsw i32 %118, 1
  store i32 %inc, ptr %l, align 4, !tbaa !8
  br label %for.cond89, !llvm.loop !10

for.end:                                          ; preds = %for.cond89
  br label %if.end139

if.else107:                                       ; preds = %if.then74
  %119 = load i32, ptr %j1, align 4, !tbaa !8
  %120 = load i32, ptr %nr, align 4, !tbaa !8
  %sub108 = sub nsw i32 %120, 1
  %121 = load i32, ptr %kd1, align 4, !tbaa !8
  %mul109 = mul nsw i32 %sub108, %121
  %add110 = add nsw i32 %119, %mul109
  store i32 %add110, ptr %jend, align 4, !tbaa !8
  %122 = load i32, ptr %jend, align 4, !tbaa !8
  store i32 %122, ptr %i__2, align 4, !tbaa !8
  %123 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %123, ptr %i__3, align 4, !tbaa !8
  %124 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %124, ptr %jinc, align 4, !tbaa !8
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc136, %if.else107
  %125 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp112 = icmp slt i32 %125, 0
  br i1 %cmp112, label %cond.true113, label %cond.false115

cond.true113:                                     ; preds = %for.cond111
  %126 = load i32, ptr %jinc, align 4, !tbaa !8
  %127 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp114 = icmp sge i32 %126, %127
  %conv = zext i1 %cmp114 to i32
  br label %cond.end118

cond.false115:                                    ; preds = %for.cond111
  %128 = load i32, ptr %jinc, align 4, !tbaa !8
  %129 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp116 = icmp sle i32 %128, %129
  %conv117 = zext i1 %cmp116 to i32
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false115, %cond.true113
  %cond119 = phi i32 [ %conv, %cond.true113 ], [ %conv117, %cond.false115 ]
  %tobool120 = icmp ne i32 %cond119, 0
  br i1 %tobool120, label %for.body121, label %for.end138

for.body121:                                      ; preds = %cond.end118
  %130 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %131 = load i32, ptr %jinc, align 4, !tbaa !8
  %sub122 = sub nsw i32 %131, 1
  %132 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul123 = mul nsw i32 %sub122, %132
  %add124 = add nsw i32 %mul123, 2
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds float, ptr %130, i64 %idxprom125
  %133 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %134 = load i32, ptr %jinc, align 4, !tbaa !8
  %135 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul127 = mul nsw i32 %134, %135
  %add128 = add nsw i32 %mul127, 1
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %133, i64 %idxprom129
  %136 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %137 = load i32, ptr %jinc, align 4, !tbaa !8
  %idxprom131 = sext i32 %137 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %136, i64 %idxprom131
  %138 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %139 = load i32, ptr %jinc, align 4, !tbaa !8
  %idxprom133 = sext i32 %139 to i64
  %arrayidx134 = getelementptr inbounds float, ptr %138, i64 %idxprom133
  %call135 = call i32 @srot_(ptr noundef %kdm1, ptr noundef %arrayidx126, ptr noundef @c__1, ptr noundef %arrayidx130, ptr noundef @c__1, ptr noundef %arrayidx132, ptr noundef %arrayidx134)
  br label %for.inc136

for.inc136:                                       ; preds = %for.body121
  %140 = load i32, ptr %i__3, align 4, !tbaa !8
  %141 = load i32, ptr %jinc, align 4, !tbaa !8
  %add137 = add nsw i32 %141, %140
  store i32 %add137, ptr %jinc, align 4, !tbaa !8
  br label %for.cond111, !llvm.loop !12

for.end138:                                       ; preds = %cond.end118
  br label %if.end139

if.end139:                                        ; preds = %for.end138, %for.end
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %for.body70
  %142 = load i32, ptr %k, align 4, !tbaa !8
  %cmp141 = icmp sgt i32 %142, 2
  br i1 %cmp141, label %if.then143, label %if.end212

if.then143:                                       ; preds = %if.end140
  %143 = load i32, ptr %k, align 4, !tbaa !8
  %144 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %145 = load i32, ptr %144, align 4, !tbaa !8
  %146 = load i32, ptr %i__, align 4, !tbaa !8
  %sub144 = sub nsw i32 %145, %146
  %add145 = add nsw i32 %sub144, 1
  %cmp146 = icmp sle i32 %143, %add145
  br i1 %cmp146, label %if.then148, label %if.end208

if.then148:                                       ; preds = %if.then143
  %147 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %148 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %149 = load i32, ptr %148, align 4, !tbaa !8
  %150 = load i32, ptr %k, align 4, !tbaa !8
  %sub149 = sub nsw i32 %149, %150
  %add150 = add nsw i32 %sub149, 3
  %151 = load i32, ptr %i__, align 4, !tbaa !8
  %152 = load i32, ptr %k, align 4, !tbaa !8
  %add151 = add nsw i32 %151, %152
  %sub152 = sub nsw i32 %add151, 2
  %153 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul153 = mul nsw i32 %sub152, %153
  %add154 = add nsw i32 %add150, %mul153
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds float, ptr %147, i64 %idxprom155
  %154 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %155 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %156 = load i32, ptr %155, align 4, !tbaa !8
  %157 = load i32, ptr %k, align 4, !tbaa !8
  %sub157 = sub nsw i32 %156, %157
  %add158 = add nsw i32 %sub157, 2
  %158 = load i32, ptr %i__, align 4, !tbaa !8
  %159 = load i32, ptr %k, align 4, !tbaa !8
  %add159 = add nsw i32 %158, %159
  %sub160 = sub nsw i32 %add159, 1
  %160 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul161 = mul nsw i32 %sub160, %160
  %add162 = add nsw i32 %add158, %mul161
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds float, ptr %154, i64 %idxprom163
  %161 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %162 = load i32, ptr %i__, align 4, !tbaa !8
  %163 = load i32, ptr %k, align 4, !tbaa !8
  %add165 = add nsw i32 %162, %163
  %sub166 = sub nsw i32 %add165, 1
  %idxprom167 = sext i32 %sub166 to i64
  %arrayidx168 = getelementptr inbounds float, ptr %161, i64 %idxprom167
  %164 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %165 = load i32, ptr %i__, align 4, !tbaa !8
  %166 = load i32, ptr %k, align 4, !tbaa !8
  %add169 = add nsw i32 %165, %166
  %sub170 = sub nsw i32 %add169, 1
  %idxprom171 = sext i32 %sub170 to i64
  %arrayidx172 = getelementptr inbounds float, ptr %164, i64 %idxprom171
  %call173 = call i32 @slartg_(ptr noundef %arrayidx156, ptr noundef %arrayidx164, ptr noundef %arrayidx168, ptr noundef %arrayidx172, ptr noundef %temp)
  %167 = load float, ptr %temp, align 4, !tbaa !13
  %168 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %169 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %170 = load i32, ptr %169, align 4, !tbaa !8
  %171 = load i32, ptr %k, align 4, !tbaa !8
  %sub174 = sub nsw i32 %170, %171
  %add175 = add nsw i32 %sub174, 3
  %172 = load i32, ptr %i__, align 4, !tbaa !8
  %173 = load i32, ptr %k, align 4, !tbaa !8
  %add176 = add nsw i32 %172, %173
  %sub177 = sub nsw i32 %add176, 2
  %174 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul178 = mul nsw i32 %sub177, %174
  %add179 = add nsw i32 %add175, %mul178
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds float, ptr %168, i64 %idxprom180
  store float %167, ptr %arrayidx181, align 4, !tbaa !13
  %175 = load i32, ptr %k, align 4, !tbaa !8
  %sub182 = sub nsw i32 %175, 3
  store i32 %sub182, ptr %i__3, align 4, !tbaa !8
  %176 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %177 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %178 = load i32, ptr %177, align 4, !tbaa !8
  %179 = load i32, ptr %k, align 4, !tbaa !8
  %sub183 = sub nsw i32 %178, %179
  %add184 = add nsw i32 %sub183, 4
  %180 = load i32, ptr %i__, align 4, !tbaa !8
  %181 = load i32, ptr %k, align 4, !tbaa !8
  %add185 = add nsw i32 %180, %181
  %sub186 = sub nsw i32 %add185, 2
  %182 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul187 = mul nsw i32 %sub186, %182
  %add188 = add nsw i32 %add184, %mul187
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds float, ptr %176, i64 %idxprom189
  %183 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %184 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %185 = load i32, ptr %184, align 4, !tbaa !8
  %186 = load i32, ptr %k, align 4, !tbaa !8
  %sub191 = sub nsw i32 %185, %186
  %add192 = add nsw i32 %sub191, 3
  %187 = load i32, ptr %i__, align 4, !tbaa !8
  %188 = load i32, ptr %k, align 4, !tbaa !8
  %add193 = add nsw i32 %187, %188
  %sub194 = sub nsw i32 %add193, 1
  %189 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul195 = mul nsw i32 %sub194, %189
  %add196 = add nsw i32 %add192, %mul195
  %idxprom197 = sext i32 %add196 to i64
  %arrayidx198 = getelementptr inbounds float, ptr %183, i64 %idxprom197
  %190 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %191 = load i32, ptr %i__, align 4, !tbaa !8
  %192 = load i32, ptr %k, align 4, !tbaa !8
  %add199 = add nsw i32 %191, %192
  %sub200 = sub nsw i32 %add199, 1
  %idxprom201 = sext i32 %sub200 to i64
  %arrayidx202 = getelementptr inbounds float, ptr %190, i64 %idxprom201
  %193 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %194 = load i32, ptr %i__, align 4, !tbaa !8
  %195 = load i32, ptr %k, align 4, !tbaa !8
  %add203 = add nsw i32 %194, %195
  %sub204 = sub nsw i32 %add203, 1
  %idxprom205 = sext i32 %sub204 to i64
  %arrayidx206 = getelementptr inbounds float, ptr %193, i64 %idxprom205
  %call207 = call i32 @srot_(ptr noundef %i__3, ptr noundef %arrayidx190, ptr noundef @c__1, ptr noundef %arrayidx198, ptr noundef @c__1, ptr noundef %arrayidx202, ptr noundef %arrayidx206)
  br label %if.end208

if.end208:                                        ; preds = %if.then148, %if.then143
  %196 = load i32, ptr %nr, align 4, !tbaa !8
  %inc209 = add nsw i32 %196, 1
  store i32 %inc209, ptr %nr, align 4, !tbaa !8
  %197 = load i32, ptr %j1, align 4, !tbaa !8
  %198 = load i32, ptr %kdn, align 4, !tbaa !8
  %sub210 = sub nsw i32 %197, %198
  %sub211 = sub nsw i32 %sub210, 1
  store i32 %sub211, ptr %j1, align 4, !tbaa !8
  br label %if.end212

if.end212:                                        ; preds = %if.end208, %if.end140
  %199 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp213 = icmp sgt i32 %199, 0
  br i1 %cmp213, label %if.then215, label %if.end234

if.then215:                                       ; preds = %if.end212
  %200 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %201 = load i32, ptr %kd1, align 4, !tbaa !8
  %202 = load i32, ptr %j1, align 4, !tbaa !8
  %sub216 = sub nsw i32 %202, 1
  %203 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul217 = mul nsw i32 %sub216, %203
  %add218 = add nsw i32 %201, %mul217
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds float, ptr %200, i64 %idxprom219
  %204 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %205 = load i32, ptr %kd1, align 4, !tbaa !8
  %206 = load i32, ptr %j1, align 4, !tbaa !8
  %207 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul221 = mul nsw i32 %206, %207
  %add222 = add nsw i32 %205, %mul221
  %idxprom223 = sext i32 %add222 to i64
  %arrayidx224 = getelementptr inbounds float, ptr %204, i64 %idxprom223
  %208 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %209 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %210 = load i32, ptr %209, align 4, !tbaa !8
  %211 = load i32, ptr %j1, align 4, !tbaa !8
  %212 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul225 = mul nsw i32 %211, %212
  %add226 = add nsw i32 %210, %mul225
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds float, ptr %208, i64 %idxprom227
  %213 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %214 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom229 = sext i32 %214 to i64
  %arrayidx230 = getelementptr inbounds float, ptr %213, i64 %idxprom229
  %215 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %216 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom231 = sext i32 %216 to i64
  %arrayidx232 = getelementptr inbounds float, ptr %215, i64 %idxprom231
  %call233 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx220, ptr noundef %arrayidx224, ptr noundef %arrayidx228, ptr noundef %inca, ptr noundef %arrayidx230, ptr noundef %arrayidx232, ptr noundef %kd1)
  br label %if.end234

if.end234:                                        ; preds = %if.then215, %if.end212
  %217 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp235 = icmp sgt i32 %217, 0
  br i1 %cmp235, label %if.then237, label %if.end353

if.then237:                                       ; preds = %if.end234
  %218 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %219 = load i32, ptr %218, align 4, !tbaa !8
  %shl238 = shl i32 %219, 1
  %sub239 = sub nsw i32 %shl238, 1
  %220 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp240 = icmp slt i32 %sub239, %220
  br i1 %cmp240, label %if.then242, label %if.else280

if.then242:                                       ; preds = %if.then237
  %221 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %222 = load i32, ptr %221, align 4, !tbaa !8
  %sub243 = sub nsw i32 %222, 1
  store i32 %sub243, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond244

for.cond244:                                      ; preds = %for.inc277, %if.then242
  %223 = load i32, ptr %l, align 4, !tbaa !8
  %224 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp245 = icmp sle i32 %223, %224
  br i1 %cmp245, label %for.body247, label %for.end279

for.body247:                                      ; preds = %for.cond244
  %225 = load i32, ptr %j2, align 4, !tbaa !8
  %226 = load i32, ptr %l, align 4, !tbaa !8
  %add248 = add nsw i32 %225, %226
  %227 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %228 = load i32, ptr %227, align 4, !tbaa !8
  %cmp249 = icmp sgt i32 %add248, %228
  br i1 %cmp249, label %if.then251, label %if.else253

if.then251:                                       ; preds = %for.body247
  %229 = load i32, ptr %nr, align 4, !tbaa !8
  %sub252 = sub nsw i32 %229, 1
  store i32 %sub252, ptr %nrt, align 4, !tbaa !8
  br label %if.end254

if.else253:                                       ; preds = %for.body247
  %230 = load i32, ptr %nr, align 4, !tbaa !8
  store i32 %230, ptr %nrt, align 4, !tbaa !8
  br label %if.end254

if.end254:                                        ; preds = %if.else253, %if.then251
  %231 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp255 = icmp sgt i32 %231, 0
  br i1 %cmp255, label %if.then257, label %if.end276

if.then257:                                       ; preds = %if.end254
  %232 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %233 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %234 = load i32, ptr %233, align 4, !tbaa !8
  %235 = load i32, ptr %l, align 4, !tbaa !8
  %sub258 = sub nsw i32 %234, %235
  %236 = load i32, ptr %j1, align 4, !tbaa !8
  %237 = load i32, ptr %l, align 4, !tbaa !8
  %add259 = add nsw i32 %236, %237
  %238 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul260 = mul nsw i32 %add259, %238
  %add261 = add nsw i32 %sub258, %mul260
  %idxprom262 = sext i32 %add261 to i64
  %arrayidx263 = getelementptr inbounds float, ptr %232, i64 %idxprom262
  %239 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %240 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %241 = load i32, ptr %240, align 4, !tbaa !8
  %242 = load i32, ptr %l, align 4, !tbaa !8
  %sub264 = sub nsw i32 %241, %242
  %add265 = add nsw i32 %sub264, 1
  %243 = load i32, ptr %j1, align 4, !tbaa !8
  %244 = load i32, ptr %l, align 4, !tbaa !8
  %add266 = add nsw i32 %243, %244
  %245 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul267 = mul nsw i32 %add266, %245
  %add268 = add nsw i32 %add265, %mul267
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds float, ptr %239, i64 %idxprom269
  %246 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %247 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom271 = sext i32 %247 to i64
  %arrayidx272 = getelementptr inbounds float, ptr %246, i64 %idxprom271
  %248 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %249 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom273 = sext i32 %249 to i64
  %arrayidx274 = getelementptr inbounds float, ptr %248, i64 %idxprom273
  %call275 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx263, ptr noundef %inca, ptr noundef %arrayidx270, ptr noundef %inca, ptr noundef %arrayidx272, ptr noundef %arrayidx274, ptr noundef %kd1)
  br label %if.end276

if.end276:                                        ; preds = %if.then257, %if.end254
  br label %for.inc277

for.inc277:                                       ; preds = %if.end276
  %250 = load i32, ptr %l, align 4, !tbaa !8
  %inc278 = add nsw i32 %250, 1
  store i32 %inc278, ptr %l, align 4, !tbaa !8
  br label %for.cond244, !llvm.loop !15

for.end279:                                       ; preds = %for.cond244
  br label %if.end352

if.else280:                                       ; preds = %if.then237
  %251 = load i32, ptr %j1, align 4, !tbaa !8
  %252 = load i32, ptr %kd1, align 4, !tbaa !8
  %253 = load i32, ptr %nr, align 4, !tbaa !8
  %sub281 = sub nsw i32 %253, 2
  %mul282 = mul nsw i32 %252, %sub281
  %add283 = add nsw i32 %251, %mul282
  store i32 %add283, ptr %j1end, align 4, !tbaa !8
  %254 = load i32, ptr %j1end, align 4, !tbaa !8
  %255 = load i32, ptr %j1, align 4, !tbaa !8
  %cmp284 = icmp sge i32 %254, %255
  br i1 %cmp284, label %if.then286, label %if.end320

if.then286:                                       ; preds = %if.else280
  %256 = load i32, ptr %j1end, align 4, !tbaa !8
  store i32 %256, ptr %i__3, align 4, !tbaa !8
  %257 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %257, ptr %i__2, align 4, !tbaa !8
  %258 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %258, ptr %jin, align 4, !tbaa !8
  br label %for.cond287

for.cond287:                                      ; preds = %for.inc317, %if.then286
  %259 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp288 = icmp slt i32 %259, 0
  br i1 %cmp288, label %cond.true290, label %cond.false293

cond.true290:                                     ; preds = %for.cond287
  %260 = load i32, ptr %jin, align 4, !tbaa !8
  %261 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp291 = icmp sge i32 %260, %261
  %conv292 = zext i1 %cmp291 to i32
  br label %cond.end296

cond.false293:                                    ; preds = %for.cond287
  %262 = load i32, ptr %jin, align 4, !tbaa !8
  %263 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp294 = icmp sle i32 %262, %263
  %conv295 = zext i1 %cmp294 to i32
  br label %cond.end296

cond.end296:                                      ; preds = %cond.false293, %cond.true290
  %cond297 = phi i32 [ %conv292, %cond.true290 ], [ %conv295, %cond.false293 ]
  %tobool298 = icmp ne i32 %cond297, 0
  br i1 %tobool298, label %for.body299, label %for.end319

for.body299:                                      ; preds = %cond.end296
  %264 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %265 = load i32, ptr %264, align 4, !tbaa !8
  %sub300 = sub nsw i32 %265, 1
  store i32 %sub300, ptr %i__4, align 4, !tbaa !8
  %266 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %267 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %268 = load i32, ptr %267, align 4, !tbaa !8
  %sub301 = sub nsw i32 %268, 1
  %269 = load i32, ptr %jin, align 4, !tbaa !8
  %add302 = add nsw i32 %269, 1
  %270 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul303 = mul nsw i32 %add302, %270
  %add304 = add nsw i32 %sub301, %mul303
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds float, ptr %266, i64 %idxprom305
  %271 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %272 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %273 = load i32, ptr %272, align 4, !tbaa !8
  %274 = load i32, ptr %jin, align 4, !tbaa !8
  %add307 = add nsw i32 %274, 1
  %275 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul308 = mul nsw i32 %add307, %275
  %add309 = add nsw i32 %273, %mul308
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds float, ptr %271, i64 %idxprom310
  %276 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %277 = load i32, ptr %jin, align 4, !tbaa !8
  %idxprom312 = sext i32 %277 to i64
  %arrayidx313 = getelementptr inbounds float, ptr %276, i64 %idxprom312
  %278 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %279 = load i32, ptr %jin, align 4, !tbaa !8
  %idxprom314 = sext i32 %279 to i64
  %arrayidx315 = getelementptr inbounds float, ptr %278, i64 %idxprom314
  %call316 = call i32 @srot_(ptr noundef %i__4, ptr noundef %arrayidx306, ptr noundef %incx, ptr noundef %arrayidx311, ptr noundef %incx, ptr noundef %arrayidx313, ptr noundef %arrayidx315)
  br label %for.inc317

for.inc317:                                       ; preds = %for.body299
  %280 = load i32, ptr %i__2, align 4, !tbaa !8
  %281 = load i32, ptr %jin, align 4, !tbaa !8
  %add318 = add nsw i32 %281, %280
  store i32 %add318, ptr %jin, align 4, !tbaa !8
  br label %for.cond287, !llvm.loop !16

for.end319:                                       ; preds = %cond.end296
  br label %if.end320

if.end320:                                        ; preds = %for.end319, %if.else280
  %282 = load i32, ptr %kdm1, align 4, !tbaa !8
  store i32 %282, ptr %i__2, align 4, !tbaa !8
  %283 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %284 = load i32, ptr %283, align 4, !tbaa !8
  %285 = load i32, ptr %j2, align 4, !tbaa !8
  %sub321 = sub nsw i32 %284, %285
  store i32 %sub321, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x322) #3
  %286 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %286, ptr %_x322, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y323) #3
  %287 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %287, ptr %_y323, align 4, !tbaa !8
  %288 = load i32, ptr %_x322, align 4, !tbaa !8
  %289 = load i32, ptr %_y323, align 4, !tbaa !8
  %cmp325 = icmp slt i32 %288, %289
  br i1 %cmp325, label %cond.true327, label %cond.false328

cond.true327:                                     ; preds = %if.end320
  %290 = load i32, ptr %_x322, align 4, !tbaa !8
  br label %cond.end329

cond.false328:                                    ; preds = %if.end320
  %291 = load i32, ptr %_y323, align 4, !tbaa !8
  br label %cond.end329

cond.end329:                                      ; preds = %cond.false328, %cond.true327
  %cond330 = phi i32 [ %290, %cond.true327 ], [ %291, %cond.false328 ]
  store i32 %cond330, ptr %tmp324, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y323) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x322) #3
  %292 = load i32, ptr %tmp324, align 4, !tbaa !8
  store i32 %292, ptr %lend, align 4, !tbaa !8
  %293 = load i32, ptr %j1end, align 4, !tbaa !8
  %294 = load i32, ptr %kd1, align 4, !tbaa !8
  %add331 = add nsw i32 %293, %294
  store i32 %add331, ptr %last, align 4, !tbaa !8
  %295 = load i32, ptr %lend, align 4, !tbaa !8
  %cmp332 = icmp sgt i32 %295, 0
  br i1 %cmp332, label %if.then334, label %if.end351

if.then334:                                       ; preds = %cond.end329
  %296 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %297 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %298 = load i32, ptr %297, align 4, !tbaa !8
  %sub335 = sub nsw i32 %298, 1
  %299 = load i32, ptr %last, align 4, !tbaa !8
  %add336 = add nsw i32 %299, 1
  %300 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul337 = mul nsw i32 %add336, %300
  %add338 = add nsw i32 %sub335, %mul337
  %idxprom339 = sext i32 %add338 to i64
  %arrayidx340 = getelementptr inbounds float, ptr %296, i64 %idxprom339
  %301 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %302 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %303 = load i32, ptr %302, align 4, !tbaa !8
  %304 = load i32, ptr %last, align 4, !tbaa !8
  %add341 = add nsw i32 %304, 1
  %305 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul342 = mul nsw i32 %add341, %305
  %add343 = add nsw i32 %303, %mul342
  %idxprom344 = sext i32 %add343 to i64
  %arrayidx345 = getelementptr inbounds float, ptr %301, i64 %idxprom344
  %306 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %307 = load i32, ptr %last, align 4, !tbaa !8
  %idxprom346 = sext i32 %307 to i64
  %arrayidx347 = getelementptr inbounds float, ptr %306, i64 %idxprom346
  %308 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %309 = load i32, ptr %last, align 4, !tbaa !8
  %idxprom348 = sext i32 %309 to i64
  %arrayidx349 = getelementptr inbounds float, ptr %308, i64 %idxprom348
  %call350 = call i32 @srot_(ptr noundef %lend, ptr noundef %arrayidx340, ptr noundef %incx, ptr noundef %arrayidx345, ptr noundef %incx, ptr noundef %arrayidx347, ptr noundef %arrayidx349)
  br label %if.end351

if.end351:                                        ; preds = %if.then334, %cond.end329
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %for.end279
  br label %if.end353

if.end353:                                        ; preds = %if.end352, %if.end234
  %310 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool354 = icmp ne i32 %310, 0
  br i1 %tobool354, label %if.then355, label %if.end479

if.then355:                                       ; preds = %if.end353
  %311 = load i32, ptr %initq, align 4, !tbaa !8
  %tobool356 = icmp ne i32 %311, 0
  br i1 %tobool356, label %if.then357, label %if.else447

if.then357:                                       ; preds = %if.then355
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x358) #3
  %312 = load i32, ptr %iqend, align 4, !tbaa !8
  store i32 %312, ptr %_x358, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y359) #3
  %313 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %313, ptr %_y359, align 4, !tbaa !8
  %314 = load i32, ptr %_x358, align 4, !tbaa !8
  %315 = load i32, ptr %_y359, align 4, !tbaa !8
  %cmp361 = icmp sgt i32 %314, %315
  br i1 %cmp361, label %cond.true363, label %cond.false364

cond.true363:                                     ; preds = %if.then357
  %316 = load i32, ptr %_x358, align 4, !tbaa !8
  br label %cond.end365

cond.false364:                                    ; preds = %if.then357
  %317 = load i32, ptr %_y359, align 4, !tbaa !8
  br label %cond.end365

cond.end365:                                      ; preds = %cond.false364, %cond.true363
  %cond366 = phi i32 [ %316, %cond.true363 ], [ %317, %cond.false364 ]
  store i32 %cond366, ptr %tmp360, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y359) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x358) #3
  %318 = load i32, ptr %tmp360, align 4, !tbaa !8
  store i32 %318, ptr %iqend, align 4, !tbaa !8
  store i32 0, ptr %i__2, align 4, !tbaa !8
  %319 = load i32, ptr %k, align 4, !tbaa !8
  %sub367 = sub nsw i32 %319, 3
  store i32 %sub367, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x368) #3
  %320 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %320, ptr %_x368, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y369) #3
  %321 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %321, ptr %_y369, align 4, !tbaa !8
  %322 = load i32, ptr %_x368, align 4, !tbaa !8
  %323 = load i32, ptr %_y369, align 4, !tbaa !8
  %cmp371 = icmp sgt i32 %322, %323
  br i1 %cmp371, label %cond.true373, label %cond.false374

cond.true373:                                     ; preds = %cond.end365
  %324 = load i32, ptr %_x368, align 4, !tbaa !8
  br label %cond.end375

cond.false374:                                    ; preds = %cond.end365
  %325 = load i32, ptr %_y369, align 4, !tbaa !8
  br label %cond.end375

cond.end375:                                      ; preds = %cond.false374, %cond.true373
  %cond376 = phi i32 [ %324, %cond.true373 ], [ %325, %cond.false374 ]
  store i32 %cond376, ptr %tmp370, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y369) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x368) #3
  %326 = load i32, ptr %tmp370, align 4, !tbaa !8
  store i32 %326, ptr %i2, align 4, !tbaa !8
  %327 = load i32, ptr %i__, align 4, !tbaa !8
  %328 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %329 = load i32, ptr %328, align 4, !tbaa !8
  %mul377 = mul nsw i32 %327, %329
  %add378 = add nsw i32 %mul377, 1
  store i32 %add378, ptr %iqaend, align 4, !tbaa !8
  %330 = load i32, ptr %k, align 4, !tbaa !8
  %cmp379 = icmp eq i32 %330, 2
  br i1 %cmp379, label %if.then381, label %if.end383

if.then381:                                       ; preds = %cond.end375
  %331 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %332 = load i32, ptr %331, align 4, !tbaa !8
  %333 = load i32, ptr %iqaend, align 4, !tbaa !8
  %add382 = add nsw i32 %333, %332
  store i32 %add382, ptr %iqaend, align 4, !tbaa !8
  br label %if.end383

if.end383:                                        ; preds = %if.then381, %cond.end375
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x384) #3
  %334 = load i32, ptr %iqaend, align 4, !tbaa !8
  store i32 %334, ptr %_x384, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y385) #3
  %335 = load i32, ptr %iqend, align 4, !tbaa !8
  store i32 %335, ptr %_y385, align 4, !tbaa !8
  %336 = load i32, ptr %_x384, align 4, !tbaa !8
  %337 = load i32, ptr %_y385, align 4, !tbaa !8
  %cmp387 = icmp slt i32 %336, %337
  br i1 %cmp387, label %cond.true389, label %cond.false390

cond.true389:                                     ; preds = %if.end383
  %338 = load i32, ptr %_x384, align 4, !tbaa !8
  br label %cond.end391

cond.false390:                                    ; preds = %if.end383
  %339 = load i32, ptr %_y385, align 4, !tbaa !8
  br label %cond.end391

cond.end391:                                      ; preds = %cond.false390, %cond.true389
  %cond392 = phi i32 [ %338, %cond.true389 ], [ %339, %cond.false390 ]
  store i32 %cond392, ptr %tmp386, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y385) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x384) #3
  %340 = load i32, ptr %tmp386, align 4, !tbaa !8
  store i32 %340, ptr %iqaend, align 4, !tbaa !8
  %341 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %341, ptr %i__2, align 4, !tbaa !8
  %342 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %342, ptr %i__3, align 4, !tbaa !8
  %343 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %343, ptr %j, align 4, !tbaa !8
  br label %for.cond393

for.cond393:                                      ; preds = %for.inc444, %cond.end391
  %344 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp394 = icmp slt i32 %344, 0
  br i1 %cmp394, label %cond.true396, label %cond.false399

cond.true396:                                     ; preds = %for.cond393
  %345 = load i32, ptr %j, align 4, !tbaa !8
  %346 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp397 = icmp sge i32 %345, %346
  %conv398 = zext i1 %cmp397 to i32
  br label %cond.end402

cond.false399:                                    ; preds = %for.cond393
  %347 = load i32, ptr %j, align 4, !tbaa !8
  %348 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp400 = icmp sle i32 %347, %348
  %conv401 = zext i1 %cmp400 to i32
  br label %cond.end402

cond.end402:                                      ; preds = %cond.false399, %cond.true396
  %cond403 = phi i32 [ %conv398, %cond.true396 ], [ %conv401, %cond.false399 ]
  %tobool404 = icmp ne i32 %cond403, 0
  br i1 %tobool404, label %for.body405, label %for.end446

for.body405:                                      ; preds = %cond.end402
  %349 = load i32, ptr %i__, align 4, !tbaa !8
  %350 = load i32, ptr %i2, align 4, !tbaa !8
  %351 = load i32, ptr %kdm1, align 4, !tbaa !8
  %div = sdiv i32 %350, %351
  %sub406 = sub nsw i32 %349, %div
  store i32 %sub406, ptr %ibl, align 4, !tbaa !8
  %352 = load i32, ptr %i2, align 4, !tbaa !8
  %inc407 = add nsw i32 %352, 1
  store i32 %inc407, ptr %i2, align 4, !tbaa !8
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %353 = load i32, ptr %j, align 4, !tbaa !8
  %354 = load i32, ptr %ibl, align 4, !tbaa !8
  %sub408 = sub nsw i32 %353, %354
  store i32 %sub408, ptr %i__5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x409) #3
  %355 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %355, ptr %_x409, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y410) #3
  %356 = load i32, ptr %i__5, align 4, !tbaa !8
  store i32 %356, ptr %_y410, align 4, !tbaa !8
  %357 = load i32, ptr %_x409, align 4, !tbaa !8
  %358 = load i32, ptr %_y410, align 4, !tbaa !8
  %cmp412 = icmp sgt i32 %357, %358
  br i1 %cmp412, label %cond.true414, label %cond.false415

cond.true414:                                     ; preds = %for.body405
  %359 = load i32, ptr %_x409, align 4, !tbaa !8
  br label %cond.end416

cond.false415:                                    ; preds = %for.body405
  %360 = load i32, ptr %_y410, align 4, !tbaa !8
  br label %cond.end416

cond.end416:                                      ; preds = %cond.false415, %cond.true414
  %cond417 = phi i32 [ %359, %cond.true414 ], [ %360, %cond.false415 ]
  store i32 %cond417, ptr %tmp411, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y410) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x409) #3
  %361 = load i32, ptr %tmp411, align 4, !tbaa !8
  store i32 %361, ptr %iqb, align 4, !tbaa !8
  %362 = load i32, ptr %iqaend, align 4, !tbaa !8
  %add418 = add nsw i32 %362, 1
  %363 = load i32, ptr %iqb, align 4, !tbaa !8
  %sub419 = sub nsw i32 %add418, %363
  store i32 %sub419, ptr %nq, align 4, !tbaa !8
  %364 = load i32, ptr %iqaend, align 4, !tbaa !8
  %365 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %366 = load i32, ptr %365, align 4, !tbaa !8
  %add420 = add nsw i32 %364, %366
  store i32 %add420, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x421) #3
  %367 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %367, ptr %_x421, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y422) #3
  %368 = load i32, ptr %iqend, align 4, !tbaa !8
  store i32 %368, ptr %_y422, align 4, !tbaa !8
  %369 = load i32, ptr %_x421, align 4, !tbaa !8
  %370 = load i32, ptr %_y422, align 4, !tbaa !8
  %cmp424 = icmp slt i32 %369, %370
  br i1 %cmp424, label %cond.true426, label %cond.false427

cond.true426:                                     ; preds = %cond.end416
  %371 = load i32, ptr %_x421, align 4, !tbaa !8
  br label %cond.end428

cond.false427:                                    ; preds = %cond.end416
  %372 = load i32, ptr %_y422, align 4, !tbaa !8
  br label %cond.end428

cond.end428:                                      ; preds = %cond.false427, %cond.true426
  %cond429 = phi i32 [ %371, %cond.true426 ], [ %372, %cond.false427 ]
  store i32 %cond429, ptr %tmp423, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y422) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x421) #3
  %373 = load i32, ptr %tmp423, align 4, !tbaa !8
  store i32 %373, ptr %iqaend, align 4, !tbaa !8
  %374 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %375 = load i32, ptr %iqb, align 4, !tbaa !8
  %376 = load i32, ptr %j, align 4, !tbaa !8
  %sub430 = sub nsw i32 %376, 1
  %377 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul431 = mul nsw i32 %sub430, %377
  %add432 = add nsw i32 %375, %mul431
  %idxprom433 = sext i32 %add432 to i64
  %arrayidx434 = getelementptr inbounds float, ptr %374, i64 %idxprom433
  %378 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %379 = load i32, ptr %iqb, align 4, !tbaa !8
  %380 = load i32, ptr %j, align 4, !tbaa !8
  %381 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul435 = mul nsw i32 %380, %381
  %add436 = add nsw i32 %379, %mul435
  %idxprom437 = sext i32 %add436 to i64
  %arrayidx438 = getelementptr inbounds float, ptr %378, i64 %idxprom437
  %382 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %383 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom439 = sext i32 %383 to i64
  %arrayidx440 = getelementptr inbounds float, ptr %382, i64 %idxprom439
  %384 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %385 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom441 = sext i32 %385 to i64
  %arrayidx442 = getelementptr inbounds float, ptr %384, i64 %idxprom441
  %call443 = call i32 @srot_(ptr noundef %nq, ptr noundef %arrayidx434, ptr noundef @c__1, ptr noundef %arrayidx438, ptr noundef @c__1, ptr noundef %arrayidx440, ptr noundef %arrayidx442)
  br label %for.inc444

for.inc444:                                       ; preds = %cond.end428
  %386 = load i32, ptr %i__3, align 4, !tbaa !8
  %387 = load i32, ptr %j, align 4, !tbaa !8
  %add445 = add nsw i32 %387, %386
  store i32 %add445, ptr %j, align 4, !tbaa !8
  br label %for.cond393, !llvm.loop !17

for.end446:                                       ; preds = %cond.end402
  br label %if.end478

if.else447:                                       ; preds = %if.then355
  %388 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %388, ptr %i__3, align 4, !tbaa !8
  %389 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %389, ptr %i__2, align 4, !tbaa !8
  %390 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %390, ptr %j, align 4, !tbaa !8
  br label %for.cond448

for.cond448:                                      ; preds = %for.inc475, %if.else447
  %391 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp449 = icmp slt i32 %391, 0
  br i1 %cmp449, label %cond.true451, label %cond.false454

cond.true451:                                     ; preds = %for.cond448
  %392 = load i32, ptr %j, align 4, !tbaa !8
  %393 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp452 = icmp sge i32 %392, %393
  %conv453 = zext i1 %cmp452 to i32
  br label %cond.end457

cond.false454:                                    ; preds = %for.cond448
  %394 = load i32, ptr %j, align 4, !tbaa !8
  %395 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp455 = icmp sle i32 %394, %395
  %conv456 = zext i1 %cmp455 to i32
  br label %cond.end457

cond.end457:                                      ; preds = %cond.false454, %cond.true451
  %cond458 = phi i32 [ %conv453, %cond.true451 ], [ %conv456, %cond.false454 ]
  %tobool459 = icmp ne i32 %cond458, 0
  br i1 %tobool459, label %for.body460, label %for.end477

for.body460:                                      ; preds = %cond.end457
  %396 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %397 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %398 = load i32, ptr %j, align 4, !tbaa !8
  %sub461 = sub nsw i32 %398, 1
  %399 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul462 = mul nsw i32 %sub461, %399
  %add463 = add nsw i32 %mul462, 1
  %idxprom464 = sext i32 %add463 to i64
  %arrayidx465 = getelementptr inbounds float, ptr %397, i64 %idxprom464
  %400 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %401 = load i32, ptr %j, align 4, !tbaa !8
  %402 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul466 = mul nsw i32 %401, %402
  %add467 = add nsw i32 %mul466, 1
  %idxprom468 = sext i32 %add467 to i64
  %arrayidx469 = getelementptr inbounds float, ptr %400, i64 %idxprom468
  %403 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %404 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom470 = sext i32 %404 to i64
  %arrayidx471 = getelementptr inbounds float, ptr %403, i64 %idxprom470
  %405 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %406 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom472 = sext i32 %406 to i64
  %arrayidx473 = getelementptr inbounds float, ptr %405, i64 %idxprom472
  %call474 = call i32 @srot_(ptr noundef %396, ptr noundef %arrayidx465, ptr noundef @c__1, ptr noundef %arrayidx469, ptr noundef @c__1, ptr noundef %arrayidx471, ptr noundef %arrayidx473)
  br label %for.inc475

for.inc475:                                       ; preds = %for.body460
  %407 = load i32, ptr %i__2, align 4, !tbaa !8
  %408 = load i32, ptr %j, align 4, !tbaa !8
  %add476 = add nsw i32 %408, %407
  store i32 %add476, ptr %j, align 4, !tbaa !8
  br label %for.cond448, !llvm.loop !18

for.end477:                                       ; preds = %cond.end457
  br label %if.end478

if.end478:                                        ; preds = %for.end477, %for.end446
  br label %if.end479

if.end479:                                        ; preds = %if.end478, %if.end353
  %409 = load i32, ptr %j2, align 4, !tbaa !8
  %410 = load i32, ptr %kdn, align 4, !tbaa !8
  %add480 = add nsw i32 %409, %410
  %411 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %412 = load i32, ptr %411, align 4, !tbaa !8
  %cmp481 = icmp sgt i32 %add480, %412
  br i1 %cmp481, label %if.then483, label %if.end486

if.then483:                                       ; preds = %if.end479
  %413 = load i32, ptr %nr, align 4, !tbaa !8
  %dec = add nsw i32 %413, -1
  store i32 %dec, ptr %nr, align 4, !tbaa !8
  %414 = load i32, ptr %j2, align 4, !tbaa !8
  %415 = load i32, ptr %kdn, align 4, !tbaa !8
  %sub484 = sub nsw i32 %414, %415
  %sub485 = sub nsw i32 %sub484, 1
  store i32 %sub485, ptr %j2, align 4, !tbaa !8
  br label %if.end486

if.end486:                                        ; preds = %if.then483, %if.end479
  %416 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %416, ptr %i__2, align 4, !tbaa !8
  %417 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %417, ptr %i__3, align 4, !tbaa !8
  %418 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %418, ptr %j, align 4, !tbaa !8
  br label %for.cond487

for.cond487:                                      ; preds = %for.inc524, %if.end486
  %419 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp488 = icmp slt i32 %419, 0
  br i1 %cmp488, label %cond.true490, label %cond.false493

cond.true490:                                     ; preds = %for.cond487
  %420 = load i32, ptr %j, align 4, !tbaa !8
  %421 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp491 = icmp sge i32 %420, %421
  %conv492 = zext i1 %cmp491 to i32
  br label %cond.end496

cond.false493:                                    ; preds = %for.cond487
  %422 = load i32, ptr %j, align 4, !tbaa !8
  %423 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp494 = icmp sle i32 %422, %423
  %conv495 = zext i1 %cmp494 to i32
  br label %cond.end496

cond.end496:                                      ; preds = %cond.false493, %cond.true490
  %cond497 = phi i32 [ %conv492, %cond.true490 ], [ %conv495, %cond.false493 ]
  %tobool498 = icmp ne i32 %cond497, 0
  br i1 %tobool498, label %for.body499, label %for.end526

for.body499:                                      ; preds = %cond.end496
  %424 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %425 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom500 = sext i32 %425 to i64
  %arrayidx501 = getelementptr inbounds float, ptr %424, i64 %idxprom500
  %426 = load float, ptr %arrayidx501, align 4, !tbaa !13
  %427 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %428 = load i32, ptr %j, align 4, !tbaa !8
  %429 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %430 = load i32, ptr %429, align 4, !tbaa !8
  %add502 = add nsw i32 %428, %430
  %431 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul503 = mul nsw i32 %add502, %431
  %add504 = add nsw i32 %mul503, 1
  %idxprom505 = sext i32 %add504 to i64
  %arrayidx506 = getelementptr inbounds float, ptr %427, i64 %idxprom505
  %432 = load float, ptr %arrayidx506, align 4, !tbaa !13
  %mul507 = fmul float %426, %432
  %433 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %434 = load i32, ptr %j, align 4, !tbaa !8
  %435 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %436 = load i32, ptr %435, align 4, !tbaa !8
  %add508 = add nsw i32 %434, %436
  %idxprom509 = sext i32 %add508 to i64
  %arrayidx510 = getelementptr inbounds float, ptr %433, i64 %idxprom509
  store float %mul507, ptr %arrayidx510, align 4, !tbaa !13
  %437 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %438 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom511 = sext i32 %438 to i64
  %arrayidx512 = getelementptr inbounds float, ptr %437, i64 %idxprom511
  %439 = load float, ptr %arrayidx512, align 4, !tbaa !13
  %440 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %441 = load i32, ptr %j, align 4, !tbaa !8
  %442 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %443 = load i32, ptr %442, align 4, !tbaa !8
  %add513 = add nsw i32 %441, %443
  %444 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul514 = mul nsw i32 %add513, %444
  %add515 = add nsw i32 %mul514, 1
  %idxprom516 = sext i32 %add515 to i64
  %arrayidx517 = getelementptr inbounds float, ptr %440, i64 %idxprom516
  %445 = load float, ptr %arrayidx517, align 4, !tbaa !13
  %mul518 = fmul float %439, %445
  %446 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %447 = load i32, ptr %j, align 4, !tbaa !8
  %448 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %449 = load i32, ptr %448, align 4, !tbaa !8
  %add519 = add nsw i32 %447, %449
  %450 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul520 = mul nsw i32 %add519, %450
  %add521 = add nsw i32 %mul520, 1
  %idxprom522 = sext i32 %add521 to i64
  %arrayidx523 = getelementptr inbounds float, ptr %446, i64 %idxprom522
  store float %mul518, ptr %arrayidx523, align 4, !tbaa !13
  br label %for.inc524

for.inc524:                                       ; preds = %for.body499
  %451 = load i32, ptr %i__3, align 4, !tbaa !8
  %452 = load i32, ptr %j, align 4, !tbaa !8
  %add525 = add nsw i32 %452, %451
  store i32 %add525, ptr %j, align 4, !tbaa !8
  br label %for.cond487, !llvm.loop !19

for.end526:                                       ; preds = %cond.end496
  br label %for.inc527

for.inc527:                                       ; preds = %for.end526
  %453 = load i32, ptr %k, align 4, !tbaa !8
  %dec528 = add nsw i32 %453, -1
  store i32 %dec528, ptr %k, align 4, !tbaa !8
  br label %for.cond68, !llvm.loop !20

for.end529:                                       ; preds = %for.cond68
  br label %for.inc530

for.inc530:                                       ; preds = %for.end529
  %454 = load i32, ptr %i__, align 4, !tbaa !8
  %inc531 = add nsw i32 %454, 1
  store i32 %inc531, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !21

for.end532:                                       ; preds = %for.cond
  br label %if.end533

if.end533:                                        ; preds = %for.end532, %if.then61
  %455 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %456 = load i32, ptr %455, align 4, !tbaa !8
  %cmp534 = icmp sgt i32 %456, 0
  br i1 %cmp534, label %if.then536, label %if.else552

if.then536:                                       ; preds = %if.end533
  %457 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %458 = load i32, ptr %457, align 4, !tbaa !8
  %sub537 = sub nsw i32 %458, 1
  store i32 %sub537, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond538

for.cond538:                                      ; preds = %for.inc549, %if.then536
  %459 = load i32, ptr %i__, align 4, !tbaa !8
  %460 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp539 = icmp sle i32 %459, %460
  br i1 %cmp539, label %for.body541, label %for.end551

for.body541:                                      ; preds = %for.cond538
  %461 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %462 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %463 = load i32, ptr %462, align 4, !tbaa !8
  %464 = load i32, ptr %i__, align 4, !tbaa !8
  %add542 = add nsw i32 %464, 1
  %465 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul543 = mul nsw i32 %add542, %465
  %add544 = add nsw i32 %463, %mul543
  %idxprom545 = sext i32 %add544 to i64
  %arrayidx546 = getelementptr inbounds float, ptr %461, i64 %idxprom545
  %466 = load float, ptr %arrayidx546, align 4, !tbaa !13
  %467 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %468 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom547 = sext i32 %468 to i64
  %arrayidx548 = getelementptr inbounds float, ptr %467, i64 %idxprom547
  store float %466, ptr %arrayidx548, align 4, !tbaa !13
  br label %for.inc549

for.inc549:                                       ; preds = %for.body541
  %469 = load i32, ptr %i__, align 4, !tbaa !8
  %inc550 = add nsw i32 %469, 1
  store i32 %inc550, ptr %i__, align 4, !tbaa !8
  br label %for.cond538, !llvm.loop !22

for.end551:                                       ; preds = %for.cond538
  br label %if.end563

if.else552:                                       ; preds = %if.end533
  %470 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %471 = load i32, ptr %470, align 4, !tbaa !8
  %sub553 = sub nsw i32 %471, 1
  store i32 %sub553, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond554

for.cond554:                                      ; preds = %for.inc560, %if.else552
  %472 = load i32, ptr %i__, align 4, !tbaa !8
  %473 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp555 = icmp sle i32 %472, %473
  br i1 %cmp555, label %for.body557, label %for.end562

for.body557:                                      ; preds = %for.cond554
  %474 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %475 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom558 = sext i32 %475 to i64
  %arrayidx559 = getelementptr inbounds float, ptr %474, i64 %idxprom558
  store float 0.000000e+00, ptr %arrayidx559, align 4, !tbaa !13
  br label %for.inc560

for.inc560:                                       ; preds = %for.body557
  %476 = load i32, ptr %i__, align 4, !tbaa !8
  %inc561 = add nsw i32 %476, 1
  store i32 %inc561, ptr %i__, align 4, !tbaa !8
  br label %for.cond554, !llvm.loop !23

for.end562:                                       ; preds = %for.cond554
  br label %if.end563

if.end563:                                        ; preds = %for.end562, %for.end551
  %477 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %478 = load i32, ptr %477, align 4, !tbaa !8
  store i32 %478, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond564

for.cond564:                                      ; preds = %for.inc574, %if.end563
  %479 = load i32, ptr %i__, align 4, !tbaa !8
  %480 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp565 = icmp sle i32 %479, %480
  br i1 %cmp565, label %for.body567, label %for.end576

for.body567:                                      ; preds = %for.cond564
  %481 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %482 = load i32, ptr %kd1, align 4, !tbaa !8
  %483 = load i32, ptr %i__, align 4, !tbaa !8
  %484 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul568 = mul nsw i32 %483, %484
  %add569 = add nsw i32 %482, %mul568
  %idxprom570 = sext i32 %add569 to i64
  %arrayidx571 = getelementptr inbounds float, ptr %481, i64 %idxprom570
  %485 = load float, ptr %arrayidx571, align 4, !tbaa !13
  %486 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %487 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom572 = sext i32 %487 to i64
  %arrayidx573 = getelementptr inbounds float, ptr %486, i64 %idxprom572
  store float %485, ptr %arrayidx573, align 4, !tbaa !13
  br label %for.inc574

for.inc574:                                       ; preds = %for.body567
  %488 = load i32, ptr %i__, align 4, !tbaa !8
  %inc575 = add nsw i32 %488, 1
  store i32 %inc575, ptr %i__, align 4, !tbaa !8
  br label %for.cond564, !llvm.loop !24

for.end576:                                       ; preds = %for.cond564
  br label %if.end1093

if.else577:                                       ; preds = %cond.end58
  %489 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %490 = load i32, ptr %489, align 4, !tbaa !8
  %cmp578 = icmp sgt i32 %490, 1
  br i1 %cmp578, label %if.then580, label %if.end1050

if.then580:                                       ; preds = %if.else577
  store i32 0, ptr %nr, align 4, !tbaa !8
  %491 = load i32, ptr %kdn, align 4, !tbaa !8
  %add581 = add nsw i32 %491, 2
  store i32 %add581, ptr %j1, align 4, !tbaa !8
  store i32 1, ptr %j2, align 4, !tbaa !8
  %492 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %493 = load i32, ptr %492, align 4, !tbaa !8
  %sub582 = sub nsw i32 %493, 2
  store i32 %sub582, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond583

for.cond583:                                      ; preds = %for.inc1047, %if.then580
  %494 = load i32, ptr %i__, align 4, !tbaa !8
  %495 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp584 = icmp sle i32 %494, %495
  br i1 %cmp584, label %for.body586, label %for.end1049

for.body586:                                      ; preds = %for.cond583
  %496 = load i32, ptr %kdn, align 4, !tbaa !8
  %add587 = add nsw i32 %496, 1
  store i32 %add587, ptr %k, align 4, !tbaa !8
  br label %for.cond588

for.cond588:                                      ; preds = %for.inc1044, %for.body586
  %497 = load i32, ptr %k, align 4, !tbaa !8
  %cmp589 = icmp sge i32 %497, 2
  br i1 %cmp589, label %for.body591, label %for.end1046

for.body591:                                      ; preds = %for.cond588
  %498 = load i32, ptr %kdn, align 4, !tbaa !8
  %499 = load i32, ptr %j1, align 4, !tbaa !8
  %add592 = add nsw i32 %499, %498
  store i32 %add592, ptr %j1, align 4, !tbaa !8
  %500 = load i32, ptr %kdn, align 4, !tbaa !8
  %501 = load i32, ptr %j2, align 4, !tbaa !8
  %add593 = add nsw i32 %501, %500
  store i32 %add593, ptr %j2, align 4, !tbaa !8
  %502 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp594 = icmp sgt i32 %502, 0
  br i1 %cmp594, label %if.then596, label %if.end676

if.then596:                                       ; preds = %for.body591
  %503 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %504 = load i32, ptr %kd1, align 4, !tbaa !8
  %505 = load i32, ptr %j1, align 4, !tbaa !8
  %506 = load i32, ptr %kd1, align 4, !tbaa !8
  %sub597 = sub nsw i32 %505, %506
  %507 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul598 = mul nsw i32 %sub597, %507
  %add599 = add nsw i32 %504, %mul598
  %idxprom600 = sext i32 %add599 to i64
  %arrayidx601 = getelementptr inbounds float, ptr %503, i64 %idxprom600
  %508 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %509 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom602 = sext i32 %509 to i64
  %arrayidx603 = getelementptr inbounds float, ptr %508, i64 %idxprom602
  %510 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %511 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom604 = sext i32 %511 to i64
  %arrayidx605 = getelementptr inbounds float, ptr %510, i64 %idxprom604
  %call606 = call i32 @slargv_(ptr noundef %nr, ptr noundef %arrayidx601, ptr noundef %inca, ptr noundef %arrayidx603, ptr noundef %kd1, ptr noundef %arrayidx605, ptr noundef %kd1)
  %512 = load i32, ptr %nr, align 4, !tbaa !8
  %513 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %514 = load i32, ptr %513, align 4, !tbaa !8
  %shl607 = shl i32 %514, 1
  %sub608 = sub nsw i32 %shl607, 1
  %cmp609 = icmp sgt i32 %512, %sub608
  br i1 %cmp609, label %if.then611, label %if.else640

if.then611:                                       ; preds = %if.then596
  %515 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %516 = load i32, ptr %515, align 4, !tbaa !8
  %sub612 = sub nsw i32 %516, 1
  store i32 %sub612, ptr %i__3, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond613

for.cond613:                                      ; preds = %for.inc637, %if.then611
  %517 = load i32, ptr %l, align 4, !tbaa !8
  %518 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp614 = icmp sle i32 %517, %518
  br i1 %cmp614, label %for.body616, label %for.end639

for.body616:                                      ; preds = %for.cond613
  %519 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %520 = load i32, ptr %kd1, align 4, !tbaa !8
  %521 = load i32, ptr %l, align 4, !tbaa !8
  %sub617 = sub nsw i32 %520, %521
  %522 = load i32, ptr %j1, align 4, !tbaa !8
  %523 = load i32, ptr %kd1, align 4, !tbaa !8
  %sub618 = sub nsw i32 %522, %523
  %524 = load i32, ptr %l, align 4, !tbaa !8
  %add619 = add nsw i32 %sub618, %524
  %525 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul620 = mul nsw i32 %add619, %525
  %add621 = add nsw i32 %sub617, %mul620
  %idxprom622 = sext i32 %add621 to i64
  %arrayidx623 = getelementptr inbounds float, ptr %519, i64 %idxprom622
  %526 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %527 = load i32, ptr %kd1, align 4, !tbaa !8
  %528 = load i32, ptr %l, align 4, !tbaa !8
  %sub624 = sub nsw i32 %527, %528
  %add625 = add nsw i32 %sub624, 1
  %529 = load i32, ptr %j1, align 4, !tbaa !8
  %530 = load i32, ptr %kd1, align 4, !tbaa !8
  %sub626 = sub nsw i32 %529, %530
  %531 = load i32, ptr %l, align 4, !tbaa !8
  %add627 = add nsw i32 %sub626, %531
  %532 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul628 = mul nsw i32 %add627, %532
  %add629 = add nsw i32 %add625, %mul628
  %idxprom630 = sext i32 %add629 to i64
  %arrayidx631 = getelementptr inbounds float, ptr %526, i64 %idxprom630
  %533 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %534 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom632 = sext i32 %534 to i64
  %arrayidx633 = getelementptr inbounds float, ptr %533, i64 %idxprom632
  %535 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %536 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom634 = sext i32 %536 to i64
  %arrayidx635 = getelementptr inbounds float, ptr %535, i64 %idxprom634
  %call636 = call i32 @slartv_(ptr noundef %nr, ptr noundef %arrayidx623, ptr noundef %inca, ptr noundef %arrayidx631, ptr noundef %inca, ptr noundef %arrayidx633, ptr noundef %arrayidx635, ptr noundef %kd1)
  br label %for.inc637

for.inc637:                                       ; preds = %for.body616
  %537 = load i32, ptr %l, align 4, !tbaa !8
  %inc638 = add nsw i32 %537, 1
  store i32 %inc638, ptr %l, align 4, !tbaa !8
  br label %for.cond613, !llvm.loop !25

for.end639:                                       ; preds = %for.cond613
  br label %if.end675

if.else640:                                       ; preds = %if.then596
  %538 = load i32, ptr %j1, align 4, !tbaa !8
  %539 = load i32, ptr %kd1, align 4, !tbaa !8
  %540 = load i32, ptr %nr, align 4, !tbaa !8
  %sub641 = sub nsw i32 %540, 1
  %mul642 = mul nsw i32 %539, %sub641
  %add643 = add nsw i32 %538, %mul642
  store i32 %add643, ptr %jend, align 4, !tbaa !8
  %541 = load i32, ptr %jend, align 4, !tbaa !8
  store i32 %541, ptr %i__3, align 4, !tbaa !8
  %542 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %542, ptr %i__2, align 4, !tbaa !8
  %543 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %543, ptr %jinc, align 4, !tbaa !8
  br label %for.cond644

for.cond644:                                      ; preds = %for.inc672, %if.else640
  %544 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp645 = icmp slt i32 %544, 0
  br i1 %cmp645, label %cond.true647, label %cond.false650

cond.true647:                                     ; preds = %for.cond644
  %545 = load i32, ptr %jinc, align 4, !tbaa !8
  %546 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp648 = icmp sge i32 %545, %546
  %conv649 = zext i1 %cmp648 to i32
  br label %cond.end653

cond.false650:                                    ; preds = %for.cond644
  %547 = load i32, ptr %jinc, align 4, !tbaa !8
  %548 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp651 = icmp sle i32 %547, %548
  %conv652 = zext i1 %cmp651 to i32
  br label %cond.end653

cond.end653:                                      ; preds = %cond.false650, %cond.true647
  %cond654 = phi i32 [ %conv649, %cond.true647 ], [ %conv652, %cond.false650 ]
  %tobool655 = icmp ne i32 %cond654, 0
  br i1 %tobool655, label %for.body656, label %for.end674

for.body656:                                      ; preds = %cond.end653
  %549 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %550 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %551 = load i32, ptr %550, align 4, !tbaa !8
  %552 = load i32, ptr %jinc, align 4, !tbaa !8
  %553 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %554 = load i32, ptr %553, align 4, !tbaa !8
  %sub657 = sub nsw i32 %552, %554
  %555 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul658 = mul nsw i32 %sub657, %555
  %add659 = add nsw i32 %551, %mul658
  %idxprom660 = sext i32 %add659 to i64
  %arrayidx661 = getelementptr inbounds float, ptr %549, i64 %idxprom660
  %556 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %557 = load i32, ptr %kd1, align 4, !tbaa !8
  %558 = load i32, ptr %jinc, align 4, !tbaa !8
  %559 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %560 = load i32, ptr %559, align 4, !tbaa !8
  %sub662 = sub nsw i32 %558, %560
  %561 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul663 = mul nsw i32 %sub662, %561
  %add664 = add nsw i32 %557, %mul663
  %idxprom665 = sext i32 %add664 to i64
  %arrayidx666 = getelementptr inbounds float, ptr %556, i64 %idxprom665
  %562 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %563 = load i32, ptr %jinc, align 4, !tbaa !8
  %idxprom667 = sext i32 %563 to i64
  %arrayidx668 = getelementptr inbounds float, ptr %562, i64 %idxprom667
  %564 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %565 = load i32, ptr %jinc, align 4, !tbaa !8
  %idxprom669 = sext i32 %565 to i64
  %arrayidx670 = getelementptr inbounds float, ptr %564, i64 %idxprom669
  %call671 = call i32 @srot_(ptr noundef %kdm1, ptr noundef %arrayidx661, ptr noundef %incx, ptr noundef %arrayidx666, ptr noundef %incx, ptr noundef %arrayidx668, ptr noundef %arrayidx670)
  br label %for.inc672

for.inc672:                                       ; preds = %for.body656
  %566 = load i32, ptr %i__2, align 4, !tbaa !8
  %567 = load i32, ptr %jinc, align 4, !tbaa !8
  %add673 = add nsw i32 %567, %566
  store i32 %add673, ptr %jinc, align 4, !tbaa !8
  br label %for.cond644, !llvm.loop !26

for.end674:                                       ; preds = %cond.end653
  br label %if.end675

if.end675:                                        ; preds = %for.end674, %for.end639
  br label %if.end676

if.end676:                                        ; preds = %if.end675, %for.body591
  %568 = load i32, ptr %k, align 4, !tbaa !8
  %cmp677 = icmp sgt i32 %568, 2
  br i1 %cmp677, label %if.then679, label %if.end736

if.then679:                                       ; preds = %if.end676
  %569 = load i32, ptr %k, align 4, !tbaa !8
  %570 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %571 = load i32, ptr %570, align 4, !tbaa !8
  %572 = load i32, ptr %i__, align 4, !tbaa !8
  %sub680 = sub nsw i32 %571, %572
  %add681 = add nsw i32 %sub680, 1
  %cmp682 = icmp sle i32 %569, %add681
  br i1 %cmp682, label %if.then684, label %if.end732

if.then684:                                       ; preds = %if.then679
  %573 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %574 = load i32, ptr %k, align 4, !tbaa !8
  %sub685 = sub nsw i32 %574, 1
  %575 = load i32, ptr %i__, align 4, !tbaa !8
  %576 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul686 = mul nsw i32 %575, %576
  %add687 = add nsw i32 %sub685, %mul686
  %idxprom688 = sext i32 %add687 to i64
  %arrayidx689 = getelementptr inbounds float, ptr %573, i64 %idxprom688
  %577 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %578 = load i32, ptr %k, align 4, !tbaa !8
  %579 = load i32, ptr %i__, align 4, !tbaa !8
  %580 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul690 = mul nsw i32 %579, %580
  %add691 = add nsw i32 %578, %mul690
  %idxprom692 = sext i32 %add691 to i64
  %arrayidx693 = getelementptr inbounds float, ptr %577, i64 %idxprom692
  %581 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %582 = load i32, ptr %i__, align 4, !tbaa !8
  %583 = load i32, ptr %k, align 4, !tbaa !8
  %add694 = add nsw i32 %582, %583
  %sub695 = sub nsw i32 %add694, 1
  %idxprom696 = sext i32 %sub695 to i64
  %arrayidx697 = getelementptr inbounds float, ptr %581, i64 %idxprom696
  %584 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %585 = load i32, ptr %i__, align 4, !tbaa !8
  %586 = load i32, ptr %k, align 4, !tbaa !8
  %add698 = add nsw i32 %585, %586
  %sub699 = sub nsw i32 %add698, 1
  %idxprom700 = sext i32 %sub699 to i64
  %arrayidx701 = getelementptr inbounds float, ptr %584, i64 %idxprom700
  %call702 = call i32 @slartg_(ptr noundef %arrayidx689, ptr noundef %arrayidx693, ptr noundef %arrayidx697, ptr noundef %arrayidx701, ptr noundef %temp)
  %587 = load float, ptr %temp, align 4, !tbaa !13
  %588 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %589 = load i32, ptr %k, align 4, !tbaa !8
  %sub703 = sub nsw i32 %589, 1
  %590 = load i32, ptr %i__, align 4, !tbaa !8
  %591 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul704 = mul nsw i32 %590, %591
  %add705 = add nsw i32 %sub703, %mul704
  %idxprom706 = sext i32 %add705 to i64
  %arrayidx707 = getelementptr inbounds float, ptr %588, i64 %idxprom706
  store float %587, ptr %arrayidx707, align 4, !tbaa !13
  %592 = load i32, ptr %k, align 4, !tbaa !8
  %sub708 = sub nsw i32 %592, 3
  store i32 %sub708, ptr %i__2, align 4, !tbaa !8
  %593 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %594 = load i32, ptr %593, align 4, !tbaa !8
  %sub709 = sub nsw i32 %594, 1
  store i32 %sub709, ptr %i__3, align 4, !tbaa !8
  %595 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %596 = load i32, ptr %595, align 4, !tbaa !8
  %sub710 = sub nsw i32 %596, 1
  store i32 %sub710, ptr %i__4, align 4, !tbaa !8
  %597 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %598 = load i32, ptr %k, align 4, !tbaa !8
  %sub711 = sub nsw i32 %598, 2
  %599 = load i32, ptr %i__, align 4, !tbaa !8
  %add712 = add nsw i32 %599, 1
  %600 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul713 = mul nsw i32 %add712, %600
  %add714 = add nsw i32 %sub711, %mul713
  %idxprom715 = sext i32 %add714 to i64
  %arrayidx716 = getelementptr inbounds float, ptr %597, i64 %idxprom715
  %601 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %602 = load i32, ptr %k, align 4, !tbaa !8
  %sub717 = sub nsw i32 %602, 1
  %603 = load i32, ptr %i__, align 4, !tbaa !8
  %add718 = add nsw i32 %603, 1
  %604 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul719 = mul nsw i32 %add718, %604
  %add720 = add nsw i32 %sub717, %mul719
  %idxprom721 = sext i32 %add720 to i64
  %arrayidx722 = getelementptr inbounds float, ptr %601, i64 %idxprom721
  %605 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %606 = load i32, ptr %i__, align 4, !tbaa !8
  %607 = load i32, ptr %k, align 4, !tbaa !8
  %add723 = add nsw i32 %606, %607
  %sub724 = sub nsw i32 %add723, 1
  %idxprom725 = sext i32 %sub724 to i64
  %arrayidx726 = getelementptr inbounds float, ptr %605, i64 %idxprom725
  %608 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %609 = load i32, ptr %i__, align 4, !tbaa !8
  %610 = load i32, ptr %k, align 4, !tbaa !8
  %add727 = add nsw i32 %609, %610
  %sub728 = sub nsw i32 %add727, 1
  %idxprom729 = sext i32 %sub728 to i64
  %arrayidx730 = getelementptr inbounds float, ptr %608, i64 %idxprom729
  %call731 = call i32 @srot_(ptr noundef %i__2, ptr noundef %arrayidx716, ptr noundef %i__3, ptr noundef %arrayidx722, ptr noundef %i__4, ptr noundef %arrayidx726, ptr noundef %arrayidx730)
  br label %if.end732

if.end732:                                        ; preds = %if.then684, %if.then679
  %611 = load i32, ptr %nr, align 4, !tbaa !8
  %inc733 = add nsw i32 %611, 1
  store i32 %inc733, ptr %nr, align 4, !tbaa !8
  %612 = load i32, ptr %j1, align 4, !tbaa !8
  %613 = load i32, ptr %kdn, align 4, !tbaa !8
  %sub734 = sub nsw i32 %612, %613
  %sub735 = sub nsw i32 %sub734, 1
  store i32 %sub735, ptr %j1, align 4, !tbaa !8
  br label %if.end736

if.end736:                                        ; preds = %if.end732, %if.end676
  %614 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp737 = icmp sgt i32 %614, 0
  br i1 %cmp737, label %if.then739, label %if.end759

if.then739:                                       ; preds = %if.end736
  %615 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %616 = load i32, ptr %j1, align 4, !tbaa !8
  %sub740 = sub nsw i32 %616, 1
  %617 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul741 = mul nsw i32 %sub740, %617
  %add742 = add nsw i32 %mul741, 1
  %idxprom743 = sext i32 %add742 to i64
  %arrayidx744 = getelementptr inbounds float, ptr %615, i64 %idxprom743
  %618 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %619 = load i32, ptr %j1, align 4, !tbaa !8
  %620 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul745 = mul nsw i32 %619, %620
  %add746 = add nsw i32 %mul745, 1
  %idxprom747 = sext i32 %add746 to i64
  %arrayidx748 = getelementptr inbounds float, ptr %618, i64 %idxprom747
  %621 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %622 = load i32, ptr %j1, align 4, !tbaa !8
  %sub749 = sub nsw i32 %622, 1
  %623 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul750 = mul nsw i32 %sub749, %623
  %add751 = add nsw i32 %mul750, 2
  %idxprom752 = sext i32 %add751 to i64
  %arrayidx753 = getelementptr inbounds float, ptr %621, i64 %idxprom752
  %624 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %625 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom754 = sext i32 %625 to i64
  %arrayidx755 = getelementptr inbounds float, ptr %624, i64 %idxprom754
  %626 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %627 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom756 = sext i32 %627 to i64
  %arrayidx757 = getelementptr inbounds float, ptr %626, i64 %idxprom756
  %call758 = call i32 @slar2v_(ptr noundef %nr, ptr noundef %arrayidx744, ptr noundef %arrayidx748, ptr noundef %arrayidx753, ptr noundef %inca, ptr noundef %arrayidx755, ptr noundef %arrayidx757, ptr noundef %kd1)
  br label %if.end759

if.end759:                                        ; preds = %if.then739, %if.end736
  %628 = load i32, ptr %nr, align 4, !tbaa !8
  %cmp760 = icmp sgt i32 %628, 0
  br i1 %cmp760, label %if.then762, label %if.end871

if.then762:                                       ; preds = %if.end759
  %629 = load i32, ptr %nr, align 4, !tbaa !8
  %630 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %631 = load i32, ptr %630, align 4, !tbaa !8
  %shl763 = shl i32 %631, 1
  %sub764 = sub nsw i32 %shl763, 1
  %cmp765 = icmp sgt i32 %629, %sub764
  br i1 %cmp765, label %if.then767, label %if.else803

if.then767:                                       ; preds = %if.then762
  %632 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %633 = load i32, ptr %632, align 4, !tbaa !8
  %sub768 = sub nsw i32 %633, 1
  store i32 %sub768, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %l, align 4, !tbaa !8
  br label %for.cond769

for.cond769:                                      ; preds = %for.inc800, %if.then767
  %634 = load i32, ptr %l, align 4, !tbaa !8
  %635 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp770 = icmp sle i32 %634, %635
  br i1 %cmp770, label %for.body772, label %for.end802

for.body772:                                      ; preds = %for.cond769
  %636 = load i32, ptr %j2, align 4, !tbaa !8
  %637 = load i32, ptr %l, align 4, !tbaa !8
  %add773 = add nsw i32 %636, %637
  %638 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %639 = load i32, ptr %638, align 4, !tbaa !8
  %cmp774 = icmp sgt i32 %add773, %639
  br i1 %cmp774, label %if.then776, label %if.else778

if.then776:                                       ; preds = %for.body772
  %640 = load i32, ptr %nr, align 4, !tbaa !8
  %sub777 = sub nsw i32 %640, 1
  store i32 %sub777, ptr %nrt, align 4, !tbaa !8
  br label %if.end779

if.else778:                                       ; preds = %for.body772
  %641 = load i32, ptr %nr, align 4, !tbaa !8
  store i32 %641, ptr %nrt, align 4, !tbaa !8
  br label %if.end779

if.end779:                                        ; preds = %if.else778, %if.then776
  %642 = load i32, ptr %nrt, align 4, !tbaa !8
  %cmp780 = icmp sgt i32 %642, 0
  br i1 %cmp780, label %if.then782, label %if.end799

if.then782:                                       ; preds = %if.end779
  %643 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %644 = load i32, ptr %l, align 4, !tbaa !8
  %add783 = add nsw i32 %644, 2
  %645 = load i32, ptr %j1, align 4, !tbaa !8
  %sub784 = sub nsw i32 %645, 1
  %646 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul785 = mul nsw i32 %sub784, %646
  %add786 = add nsw i32 %add783, %mul785
  %idxprom787 = sext i32 %add786 to i64
  %arrayidx788 = getelementptr inbounds float, ptr %643, i64 %idxprom787
  %647 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %648 = load i32, ptr %l, align 4, !tbaa !8
  %add789 = add nsw i32 %648, 1
  %649 = load i32, ptr %j1, align 4, !tbaa !8
  %650 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul790 = mul nsw i32 %649, %650
  %add791 = add nsw i32 %add789, %mul790
  %idxprom792 = sext i32 %add791 to i64
  %arrayidx793 = getelementptr inbounds float, ptr %647, i64 %idxprom792
  %651 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %652 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom794 = sext i32 %652 to i64
  %arrayidx795 = getelementptr inbounds float, ptr %651, i64 %idxprom794
  %653 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %654 = load i32, ptr %j1, align 4, !tbaa !8
  %idxprom796 = sext i32 %654 to i64
  %arrayidx797 = getelementptr inbounds float, ptr %653, i64 %idxprom796
  %call798 = call i32 @slartv_(ptr noundef %nrt, ptr noundef %arrayidx788, ptr noundef %inca, ptr noundef %arrayidx793, ptr noundef %inca, ptr noundef %arrayidx795, ptr noundef %arrayidx797, ptr noundef %kd1)
  br label %if.end799

if.end799:                                        ; preds = %if.then782, %if.end779
  br label %for.inc800

for.inc800:                                       ; preds = %if.end799
  %655 = load i32, ptr %l, align 4, !tbaa !8
  %inc801 = add nsw i32 %655, 1
  store i32 %inc801, ptr %l, align 4, !tbaa !8
  br label %for.cond769, !llvm.loop !27

for.end802:                                       ; preds = %for.cond769
  br label %if.end870

if.else803:                                       ; preds = %if.then762
  %656 = load i32, ptr %j1, align 4, !tbaa !8
  %657 = load i32, ptr %kd1, align 4, !tbaa !8
  %658 = load i32, ptr %nr, align 4, !tbaa !8
  %sub804 = sub nsw i32 %658, 2
  %mul805 = mul nsw i32 %657, %sub804
  %add806 = add nsw i32 %656, %mul805
  store i32 %add806, ptr %j1end, align 4, !tbaa !8
  %659 = load i32, ptr %j1end, align 4, !tbaa !8
  %660 = load i32, ptr %j1, align 4, !tbaa !8
  %cmp807 = icmp sge i32 %659, %660
  br i1 %cmp807, label %if.then809, label %if.end840

if.then809:                                       ; preds = %if.else803
  %661 = load i32, ptr %j1end, align 4, !tbaa !8
  store i32 %661, ptr %i__2, align 4, !tbaa !8
  %662 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %662, ptr %i__3, align 4, !tbaa !8
  %663 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %663, ptr %j1inc, align 4, !tbaa !8
  br label %for.cond810

for.cond810:                                      ; preds = %for.inc837, %if.then809
  %664 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp811 = icmp slt i32 %664, 0
  br i1 %cmp811, label %cond.true813, label %cond.false816

cond.true813:                                     ; preds = %for.cond810
  %665 = load i32, ptr %j1inc, align 4, !tbaa !8
  %666 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp814 = icmp sge i32 %665, %666
  %conv815 = zext i1 %cmp814 to i32
  br label %cond.end819

cond.false816:                                    ; preds = %for.cond810
  %667 = load i32, ptr %j1inc, align 4, !tbaa !8
  %668 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp817 = icmp sle i32 %667, %668
  %conv818 = zext i1 %cmp817 to i32
  br label %cond.end819

cond.end819:                                      ; preds = %cond.false816, %cond.true813
  %cond820 = phi i32 [ %conv815, %cond.true813 ], [ %conv818, %cond.false816 ]
  %tobool821 = icmp ne i32 %cond820, 0
  br i1 %tobool821, label %for.body822, label %for.end839

for.body822:                                      ; preds = %cond.end819
  %669 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %670 = load i32, ptr %j1inc, align 4, !tbaa !8
  %sub823 = sub nsw i32 %670, 1
  %671 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul824 = mul nsw i32 %sub823, %671
  %add825 = add nsw i32 %mul824, 3
  %idxprom826 = sext i32 %add825 to i64
  %arrayidx827 = getelementptr inbounds float, ptr %669, i64 %idxprom826
  %672 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %673 = load i32, ptr %j1inc, align 4, !tbaa !8
  %674 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul828 = mul nsw i32 %673, %674
  %add829 = add nsw i32 %mul828, 2
  %idxprom830 = sext i32 %add829 to i64
  %arrayidx831 = getelementptr inbounds float, ptr %672, i64 %idxprom830
  %675 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %676 = load i32, ptr %j1inc, align 4, !tbaa !8
  %idxprom832 = sext i32 %676 to i64
  %arrayidx833 = getelementptr inbounds float, ptr %675, i64 %idxprom832
  %677 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %678 = load i32, ptr %j1inc, align 4, !tbaa !8
  %idxprom834 = sext i32 %678 to i64
  %arrayidx835 = getelementptr inbounds float, ptr %677, i64 %idxprom834
  %call836 = call i32 @srot_(ptr noundef %kdm1, ptr noundef %arrayidx827, ptr noundef @c__1, ptr noundef %arrayidx831, ptr noundef @c__1, ptr noundef %arrayidx833, ptr noundef %arrayidx835)
  br label %for.inc837

for.inc837:                                       ; preds = %for.body822
  %679 = load i32, ptr %i__3, align 4, !tbaa !8
  %680 = load i32, ptr %j1inc, align 4, !tbaa !8
  %add838 = add nsw i32 %680, %679
  store i32 %add838, ptr %j1inc, align 4, !tbaa !8
  br label %for.cond810, !llvm.loop !28

for.end839:                                       ; preds = %cond.end819
  br label %if.end840

if.end840:                                        ; preds = %for.end839, %if.else803
  %681 = load i32, ptr %kdm1, align 4, !tbaa !8
  store i32 %681, ptr %i__3, align 4, !tbaa !8
  %682 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %683 = load i32, ptr %682, align 4, !tbaa !8
  %684 = load i32, ptr %j2, align 4, !tbaa !8
  %sub841 = sub nsw i32 %683, %684
  store i32 %sub841, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x842) #3
  %685 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %685, ptr %_x842, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y843) #3
  %686 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %686, ptr %_y843, align 4, !tbaa !8
  %687 = load i32, ptr %_x842, align 4, !tbaa !8
  %688 = load i32, ptr %_y843, align 4, !tbaa !8
  %cmp845 = icmp slt i32 %687, %688
  br i1 %cmp845, label %cond.true847, label %cond.false848

cond.true847:                                     ; preds = %if.end840
  %689 = load i32, ptr %_x842, align 4, !tbaa !8
  br label %cond.end849

cond.false848:                                    ; preds = %if.end840
  %690 = load i32, ptr %_y843, align 4, !tbaa !8
  br label %cond.end849

cond.end849:                                      ; preds = %cond.false848, %cond.true847
  %cond850 = phi i32 [ %689, %cond.true847 ], [ %690, %cond.false848 ]
  store i32 %cond850, ptr %tmp844, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y843) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x842) #3
  %691 = load i32, ptr %tmp844, align 4, !tbaa !8
  store i32 %691, ptr %lend, align 4, !tbaa !8
  %692 = load i32, ptr %j1end, align 4, !tbaa !8
  %693 = load i32, ptr %kd1, align 4, !tbaa !8
  %add851 = add nsw i32 %692, %693
  store i32 %add851, ptr %last, align 4, !tbaa !8
  %694 = load i32, ptr %lend, align 4, !tbaa !8
  %cmp852 = icmp sgt i32 %694, 0
  br i1 %cmp852, label %if.then854, label %if.end869

if.then854:                                       ; preds = %cond.end849
  %695 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %696 = load i32, ptr %last, align 4, !tbaa !8
  %sub855 = sub nsw i32 %696, 1
  %697 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul856 = mul nsw i32 %sub855, %697
  %add857 = add nsw i32 %mul856, 3
  %idxprom858 = sext i32 %add857 to i64
  %arrayidx859 = getelementptr inbounds float, ptr %695, i64 %idxprom858
  %698 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %699 = load i32, ptr %last, align 4, !tbaa !8
  %700 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul860 = mul nsw i32 %699, %700
  %add861 = add nsw i32 %mul860, 2
  %idxprom862 = sext i32 %add861 to i64
  %arrayidx863 = getelementptr inbounds float, ptr %698, i64 %idxprom862
  %701 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %702 = load i32, ptr %last, align 4, !tbaa !8
  %idxprom864 = sext i32 %702 to i64
  %arrayidx865 = getelementptr inbounds float, ptr %701, i64 %idxprom864
  %703 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %704 = load i32, ptr %last, align 4, !tbaa !8
  %idxprom866 = sext i32 %704 to i64
  %arrayidx867 = getelementptr inbounds float, ptr %703, i64 %idxprom866
  %call868 = call i32 @srot_(ptr noundef %lend, ptr noundef %arrayidx859, ptr noundef @c__1, ptr noundef %arrayidx863, ptr noundef @c__1, ptr noundef %arrayidx865, ptr noundef %arrayidx867)
  br label %if.end869

if.end869:                                        ; preds = %if.then854, %cond.end849
  br label %if.end870

if.end870:                                        ; preds = %if.end869, %for.end802
  br label %if.end871

if.end871:                                        ; preds = %if.end870, %if.end759
  %705 = load i32, ptr %wantq, align 4, !tbaa !8
  %tobool872 = icmp ne i32 %705, 0
  br i1 %tobool872, label %if.then873, label %if.end998

if.then873:                                       ; preds = %if.end871
  %706 = load i32, ptr %initq, align 4, !tbaa !8
  %tobool874 = icmp ne i32 %706, 0
  br i1 %tobool874, label %if.then875, label %if.else966

if.then875:                                       ; preds = %if.then873
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x876) #3
  %707 = load i32, ptr %iqend, align 4, !tbaa !8
  store i32 %707, ptr %_x876, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y877) #3
  %708 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %708, ptr %_y877, align 4, !tbaa !8
  %709 = load i32, ptr %_x876, align 4, !tbaa !8
  %710 = load i32, ptr %_y877, align 4, !tbaa !8
  %cmp879 = icmp sgt i32 %709, %710
  br i1 %cmp879, label %cond.true881, label %cond.false882

cond.true881:                                     ; preds = %if.then875
  %711 = load i32, ptr %_x876, align 4, !tbaa !8
  br label %cond.end883

cond.false882:                                    ; preds = %if.then875
  %712 = load i32, ptr %_y877, align 4, !tbaa !8
  br label %cond.end883

cond.end883:                                      ; preds = %cond.false882, %cond.true881
  %cond884 = phi i32 [ %711, %cond.true881 ], [ %712, %cond.false882 ]
  store i32 %cond884, ptr %tmp878, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y877) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x876) #3
  %713 = load i32, ptr %tmp878, align 4, !tbaa !8
  store i32 %713, ptr %iqend, align 4, !tbaa !8
  store i32 0, ptr %i__3, align 4, !tbaa !8
  %714 = load i32, ptr %k, align 4, !tbaa !8
  %sub885 = sub nsw i32 %714, 3
  store i32 %sub885, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x886) #3
  %715 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %715, ptr %_x886, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y887) #3
  %716 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %716, ptr %_y887, align 4, !tbaa !8
  %717 = load i32, ptr %_x886, align 4, !tbaa !8
  %718 = load i32, ptr %_y887, align 4, !tbaa !8
  %cmp889 = icmp sgt i32 %717, %718
  br i1 %cmp889, label %cond.true891, label %cond.false892

cond.true891:                                     ; preds = %cond.end883
  %719 = load i32, ptr %_x886, align 4, !tbaa !8
  br label %cond.end893

cond.false892:                                    ; preds = %cond.end883
  %720 = load i32, ptr %_y887, align 4, !tbaa !8
  br label %cond.end893

cond.end893:                                      ; preds = %cond.false892, %cond.true891
  %cond894 = phi i32 [ %719, %cond.true891 ], [ %720, %cond.false892 ]
  store i32 %cond894, ptr %tmp888, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y887) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x886) #3
  %721 = load i32, ptr %tmp888, align 4, !tbaa !8
  store i32 %721, ptr %i2, align 4, !tbaa !8
  %722 = load i32, ptr %i__, align 4, !tbaa !8
  %723 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %724 = load i32, ptr %723, align 4, !tbaa !8
  %mul895 = mul nsw i32 %722, %724
  %add896 = add nsw i32 %mul895, 1
  store i32 %add896, ptr %iqaend, align 4, !tbaa !8
  %725 = load i32, ptr %k, align 4, !tbaa !8
  %cmp897 = icmp eq i32 %725, 2
  br i1 %cmp897, label %if.then899, label %if.end901

if.then899:                                       ; preds = %cond.end893
  %726 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %727 = load i32, ptr %726, align 4, !tbaa !8
  %728 = load i32, ptr %iqaend, align 4, !tbaa !8
  %add900 = add nsw i32 %728, %727
  store i32 %add900, ptr %iqaend, align 4, !tbaa !8
  br label %if.end901

if.end901:                                        ; preds = %if.then899, %cond.end893
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x902) #3
  %729 = load i32, ptr %iqaend, align 4, !tbaa !8
  store i32 %729, ptr %_x902, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y903) #3
  %730 = load i32, ptr %iqend, align 4, !tbaa !8
  store i32 %730, ptr %_y903, align 4, !tbaa !8
  %731 = load i32, ptr %_x902, align 4, !tbaa !8
  %732 = load i32, ptr %_y903, align 4, !tbaa !8
  %cmp905 = icmp slt i32 %731, %732
  br i1 %cmp905, label %cond.true907, label %cond.false908

cond.true907:                                     ; preds = %if.end901
  %733 = load i32, ptr %_x902, align 4, !tbaa !8
  br label %cond.end909

cond.false908:                                    ; preds = %if.end901
  %734 = load i32, ptr %_y903, align 4, !tbaa !8
  br label %cond.end909

cond.end909:                                      ; preds = %cond.false908, %cond.true907
  %cond910 = phi i32 [ %733, %cond.true907 ], [ %734, %cond.false908 ]
  store i32 %cond910, ptr %tmp904, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y903) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x902) #3
  %735 = load i32, ptr %tmp904, align 4, !tbaa !8
  store i32 %735, ptr %iqaend, align 4, !tbaa !8
  %736 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %736, ptr %i__3, align 4, !tbaa !8
  %737 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %737, ptr %i__2, align 4, !tbaa !8
  %738 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %738, ptr %j, align 4, !tbaa !8
  br label %for.cond911

for.cond911:                                      ; preds = %for.inc963, %cond.end909
  %739 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp912 = icmp slt i32 %739, 0
  br i1 %cmp912, label %cond.true914, label %cond.false917

cond.true914:                                     ; preds = %for.cond911
  %740 = load i32, ptr %j, align 4, !tbaa !8
  %741 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp915 = icmp sge i32 %740, %741
  %conv916 = zext i1 %cmp915 to i32
  br label %cond.end920

cond.false917:                                    ; preds = %for.cond911
  %742 = load i32, ptr %j, align 4, !tbaa !8
  %743 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp918 = icmp sle i32 %742, %743
  %conv919 = zext i1 %cmp918 to i32
  br label %cond.end920

cond.end920:                                      ; preds = %cond.false917, %cond.true914
  %cond921 = phi i32 [ %conv916, %cond.true914 ], [ %conv919, %cond.false917 ]
  %tobool922 = icmp ne i32 %cond921, 0
  br i1 %tobool922, label %for.body923, label %for.end965

for.body923:                                      ; preds = %cond.end920
  %744 = load i32, ptr %i__, align 4, !tbaa !8
  %745 = load i32, ptr %i2, align 4, !tbaa !8
  %746 = load i32, ptr %kdm1, align 4, !tbaa !8
  %div924 = sdiv i32 %745, %746
  %sub925 = sub nsw i32 %744, %div924
  store i32 %sub925, ptr %ibl, align 4, !tbaa !8
  %747 = load i32, ptr %i2, align 4, !tbaa !8
  %inc926 = add nsw i32 %747, 1
  store i32 %inc926, ptr %i2, align 4, !tbaa !8
  store i32 1, ptr %i__4, align 4, !tbaa !8
  %748 = load i32, ptr %j, align 4, !tbaa !8
  %749 = load i32, ptr %ibl, align 4, !tbaa !8
  %sub927 = sub nsw i32 %748, %749
  store i32 %sub927, ptr %i__5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x928) #3
  %750 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %750, ptr %_x928, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y929) #3
  %751 = load i32, ptr %i__5, align 4, !tbaa !8
  store i32 %751, ptr %_y929, align 4, !tbaa !8
  %752 = load i32, ptr %_x928, align 4, !tbaa !8
  %753 = load i32, ptr %_y929, align 4, !tbaa !8
  %cmp931 = icmp sgt i32 %752, %753
  br i1 %cmp931, label %cond.true933, label %cond.false934

cond.true933:                                     ; preds = %for.body923
  %754 = load i32, ptr %_x928, align 4, !tbaa !8
  br label %cond.end935

cond.false934:                                    ; preds = %for.body923
  %755 = load i32, ptr %_y929, align 4, !tbaa !8
  br label %cond.end935

cond.end935:                                      ; preds = %cond.false934, %cond.true933
  %cond936 = phi i32 [ %754, %cond.true933 ], [ %755, %cond.false934 ]
  store i32 %cond936, ptr %tmp930, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y929) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x928) #3
  %756 = load i32, ptr %tmp930, align 4, !tbaa !8
  store i32 %756, ptr %iqb, align 4, !tbaa !8
  %757 = load i32, ptr %iqaend, align 4, !tbaa !8
  %add937 = add nsw i32 %757, 1
  %758 = load i32, ptr %iqb, align 4, !tbaa !8
  %sub938 = sub nsw i32 %add937, %758
  store i32 %sub938, ptr %nq, align 4, !tbaa !8
  %759 = load i32, ptr %iqaend, align 4, !tbaa !8
  %760 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %761 = load i32, ptr %760, align 4, !tbaa !8
  %add939 = add nsw i32 %759, %761
  store i32 %add939, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x940) #3
  %762 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %762, ptr %_x940, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y941) #3
  %763 = load i32, ptr %iqend, align 4, !tbaa !8
  store i32 %763, ptr %_y941, align 4, !tbaa !8
  %764 = load i32, ptr %_x940, align 4, !tbaa !8
  %765 = load i32, ptr %_y941, align 4, !tbaa !8
  %cmp943 = icmp slt i32 %764, %765
  br i1 %cmp943, label %cond.true945, label %cond.false946

cond.true945:                                     ; preds = %cond.end935
  %766 = load i32, ptr %_x940, align 4, !tbaa !8
  br label %cond.end947

cond.false946:                                    ; preds = %cond.end935
  %767 = load i32, ptr %_y941, align 4, !tbaa !8
  br label %cond.end947

cond.end947:                                      ; preds = %cond.false946, %cond.true945
  %cond948 = phi i32 [ %766, %cond.true945 ], [ %767, %cond.false946 ]
  store i32 %cond948, ptr %tmp942, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y941) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x940) #3
  %768 = load i32, ptr %tmp942, align 4, !tbaa !8
  store i32 %768, ptr %iqaend, align 4, !tbaa !8
  %769 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %770 = load i32, ptr %iqb, align 4, !tbaa !8
  %771 = load i32, ptr %j, align 4, !tbaa !8
  %sub949 = sub nsw i32 %771, 1
  %772 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul950 = mul nsw i32 %sub949, %772
  %add951 = add nsw i32 %770, %mul950
  %idxprom952 = sext i32 %add951 to i64
  %arrayidx953 = getelementptr inbounds float, ptr %769, i64 %idxprom952
  %773 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %774 = load i32, ptr %iqb, align 4, !tbaa !8
  %775 = load i32, ptr %j, align 4, !tbaa !8
  %776 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul954 = mul nsw i32 %775, %776
  %add955 = add nsw i32 %774, %mul954
  %idxprom956 = sext i32 %add955 to i64
  %arrayidx957 = getelementptr inbounds float, ptr %773, i64 %idxprom956
  %777 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %778 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom958 = sext i32 %778 to i64
  %arrayidx959 = getelementptr inbounds float, ptr %777, i64 %idxprom958
  %779 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %780 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom960 = sext i32 %780 to i64
  %arrayidx961 = getelementptr inbounds float, ptr %779, i64 %idxprom960
  %call962 = call i32 @srot_(ptr noundef %nq, ptr noundef %arrayidx953, ptr noundef @c__1, ptr noundef %arrayidx957, ptr noundef @c__1, ptr noundef %arrayidx959, ptr noundef %arrayidx961)
  br label %for.inc963

for.inc963:                                       ; preds = %cond.end947
  %781 = load i32, ptr %i__2, align 4, !tbaa !8
  %782 = load i32, ptr %j, align 4, !tbaa !8
  %add964 = add nsw i32 %782, %781
  store i32 %add964, ptr %j, align 4, !tbaa !8
  br label %for.cond911, !llvm.loop !29

for.end965:                                       ; preds = %cond.end920
  br label %if.end997

if.else966:                                       ; preds = %if.then873
  %783 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %783, ptr %i__2, align 4, !tbaa !8
  %784 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %784, ptr %i__3, align 4, !tbaa !8
  %785 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %785, ptr %j, align 4, !tbaa !8
  br label %for.cond967

for.cond967:                                      ; preds = %for.inc994, %if.else966
  %786 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp968 = icmp slt i32 %786, 0
  br i1 %cmp968, label %cond.true970, label %cond.false973

cond.true970:                                     ; preds = %for.cond967
  %787 = load i32, ptr %j, align 4, !tbaa !8
  %788 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp971 = icmp sge i32 %787, %788
  %conv972 = zext i1 %cmp971 to i32
  br label %cond.end976

cond.false973:                                    ; preds = %for.cond967
  %789 = load i32, ptr %j, align 4, !tbaa !8
  %790 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp974 = icmp sle i32 %789, %790
  %conv975 = zext i1 %cmp974 to i32
  br label %cond.end976

cond.end976:                                      ; preds = %cond.false973, %cond.true970
  %cond977 = phi i32 [ %conv972, %cond.true970 ], [ %conv975, %cond.false973 ]
  %tobool978 = icmp ne i32 %cond977, 0
  br i1 %tobool978, label %for.body979, label %for.end996

for.body979:                                      ; preds = %cond.end976
  %791 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %792 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %793 = load i32, ptr %j, align 4, !tbaa !8
  %sub980 = sub nsw i32 %793, 1
  %794 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul981 = mul nsw i32 %sub980, %794
  %add982 = add nsw i32 %mul981, 1
  %idxprom983 = sext i32 %add982 to i64
  %arrayidx984 = getelementptr inbounds float, ptr %792, i64 %idxprom983
  %795 = load ptr, ptr %q.addr, align 8, !tbaa !4
  %796 = load i32, ptr %j, align 4, !tbaa !8
  %797 = load i32, ptr %q_dim1, align 4, !tbaa !8
  %mul985 = mul nsw i32 %796, %797
  %add986 = add nsw i32 %mul985, 1
  %idxprom987 = sext i32 %add986 to i64
  %arrayidx988 = getelementptr inbounds float, ptr %795, i64 %idxprom987
  %798 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %799 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom989 = sext i32 %799 to i64
  %arrayidx990 = getelementptr inbounds float, ptr %798, i64 %idxprom989
  %800 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %801 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom991 = sext i32 %801 to i64
  %arrayidx992 = getelementptr inbounds float, ptr %800, i64 %idxprom991
  %call993 = call i32 @srot_(ptr noundef %791, ptr noundef %arrayidx984, ptr noundef @c__1, ptr noundef %arrayidx988, ptr noundef @c__1, ptr noundef %arrayidx990, ptr noundef %arrayidx992)
  br label %for.inc994

for.inc994:                                       ; preds = %for.body979
  %802 = load i32, ptr %i__3, align 4, !tbaa !8
  %803 = load i32, ptr %j, align 4, !tbaa !8
  %add995 = add nsw i32 %803, %802
  store i32 %add995, ptr %j, align 4, !tbaa !8
  br label %for.cond967, !llvm.loop !30

for.end996:                                       ; preds = %cond.end976
  br label %if.end997

if.end997:                                        ; preds = %for.end996, %for.end965
  br label %if.end998

if.end998:                                        ; preds = %if.end997, %if.end871
  %804 = load i32, ptr %j2, align 4, !tbaa !8
  %805 = load i32, ptr %kdn, align 4, !tbaa !8
  %add999 = add nsw i32 %804, %805
  %806 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %807 = load i32, ptr %806, align 4, !tbaa !8
  %cmp1000 = icmp sgt i32 %add999, %807
  br i1 %cmp1000, label %if.then1002, label %if.end1006

if.then1002:                                      ; preds = %if.end998
  %808 = load i32, ptr %nr, align 4, !tbaa !8
  %dec1003 = add nsw i32 %808, -1
  store i32 %dec1003, ptr %nr, align 4, !tbaa !8
  %809 = load i32, ptr %j2, align 4, !tbaa !8
  %810 = load i32, ptr %kdn, align 4, !tbaa !8
  %sub1004 = sub nsw i32 %809, %810
  %sub1005 = sub nsw i32 %sub1004, 1
  store i32 %sub1005, ptr %j2, align 4, !tbaa !8
  br label %if.end1006

if.end1006:                                       ; preds = %if.then1002, %if.end998
  %811 = load i32, ptr %j2, align 4, !tbaa !8
  store i32 %811, ptr %i__3, align 4, !tbaa !8
  %812 = load i32, ptr %kd1, align 4, !tbaa !8
  store i32 %812, ptr %i__2, align 4, !tbaa !8
  %813 = load i32, ptr %j1, align 4, !tbaa !8
  store i32 %813, ptr %j, align 4, !tbaa !8
  br label %for.cond1007

for.cond1007:                                     ; preds = %for.inc1041, %if.end1006
  %814 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp1008 = icmp slt i32 %814, 0
  br i1 %cmp1008, label %cond.true1010, label %cond.false1013

cond.true1010:                                    ; preds = %for.cond1007
  %815 = load i32, ptr %j, align 4, !tbaa !8
  %816 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1011 = icmp sge i32 %815, %816
  %conv1012 = zext i1 %cmp1011 to i32
  br label %cond.end1016

cond.false1013:                                   ; preds = %for.cond1007
  %817 = load i32, ptr %j, align 4, !tbaa !8
  %818 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp1014 = icmp sle i32 %817, %818
  %conv1015 = zext i1 %cmp1014 to i32
  br label %cond.end1016

cond.end1016:                                     ; preds = %cond.false1013, %cond.true1010
  %cond1017 = phi i32 [ %conv1012, %cond.true1010 ], [ %conv1015, %cond.false1013 ]
  %tobool1018 = icmp ne i32 %cond1017, 0
  br i1 %tobool1018, label %for.body1019, label %for.end1043

for.body1019:                                     ; preds = %cond.end1016
  %819 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %820 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1020 = sext i32 %820 to i64
  %arrayidx1021 = getelementptr inbounds float, ptr %819, i64 %idxprom1020
  %821 = load float, ptr %arrayidx1021, align 4, !tbaa !13
  %822 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %823 = load i32, ptr %kd1, align 4, !tbaa !8
  %824 = load i32, ptr %j, align 4, !tbaa !8
  %825 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1022 = mul nsw i32 %824, %825
  %add1023 = add nsw i32 %823, %mul1022
  %idxprom1024 = sext i32 %add1023 to i64
  %arrayidx1025 = getelementptr inbounds float, ptr %822, i64 %idxprom1024
  %826 = load float, ptr %arrayidx1025, align 4, !tbaa !13
  %mul1026 = fmul float %821, %826
  %827 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %828 = load i32, ptr %j, align 4, !tbaa !8
  %829 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %830 = load i32, ptr %829, align 4, !tbaa !8
  %add1027 = add nsw i32 %828, %830
  %idxprom1028 = sext i32 %add1027 to i64
  %arrayidx1029 = getelementptr inbounds float, ptr %827, i64 %idxprom1028
  store float %mul1026, ptr %arrayidx1029, align 4, !tbaa !13
  %831 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %832 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom1030 = sext i32 %832 to i64
  %arrayidx1031 = getelementptr inbounds float, ptr %831, i64 %idxprom1030
  %833 = load float, ptr %arrayidx1031, align 4, !tbaa !13
  %834 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %835 = load i32, ptr %kd1, align 4, !tbaa !8
  %836 = load i32, ptr %j, align 4, !tbaa !8
  %837 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1032 = mul nsw i32 %836, %837
  %add1033 = add nsw i32 %835, %mul1032
  %idxprom1034 = sext i32 %add1033 to i64
  %arrayidx1035 = getelementptr inbounds float, ptr %834, i64 %idxprom1034
  %838 = load float, ptr %arrayidx1035, align 4, !tbaa !13
  %mul1036 = fmul float %833, %838
  %839 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %840 = load i32, ptr %kd1, align 4, !tbaa !8
  %841 = load i32, ptr %j, align 4, !tbaa !8
  %842 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1037 = mul nsw i32 %841, %842
  %add1038 = add nsw i32 %840, %mul1037
  %idxprom1039 = sext i32 %add1038 to i64
  %arrayidx1040 = getelementptr inbounds float, ptr %839, i64 %idxprom1039
  store float %mul1036, ptr %arrayidx1040, align 4, !tbaa !13
  br label %for.inc1041

for.inc1041:                                      ; preds = %for.body1019
  %843 = load i32, ptr %i__2, align 4, !tbaa !8
  %844 = load i32, ptr %j, align 4, !tbaa !8
  %add1042 = add nsw i32 %844, %843
  store i32 %add1042, ptr %j, align 4, !tbaa !8
  br label %for.cond1007, !llvm.loop !31

for.end1043:                                      ; preds = %cond.end1016
  br label %for.inc1044

for.inc1044:                                      ; preds = %for.end1043
  %845 = load i32, ptr %k, align 4, !tbaa !8
  %dec1045 = add nsw i32 %845, -1
  store i32 %dec1045, ptr %k, align 4, !tbaa !8
  br label %for.cond588, !llvm.loop !32

for.end1046:                                      ; preds = %for.cond588
  br label %for.inc1047

for.inc1047:                                      ; preds = %for.end1046
  %846 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1048 = add nsw i32 %846, 1
  store i32 %inc1048, ptr %i__, align 4, !tbaa !8
  br label %for.cond583, !llvm.loop !33

for.end1049:                                      ; preds = %for.cond583
  br label %if.end1050

if.end1050:                                       ; preds = %for.end1049, %if.else577
  %847 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %848 = load i32, ptr %847, align 4, !tbaa !8
  %cmp1051 = icmp sgt i32 %848, 0
  br i1 %cmp1051, label %if.then1053, label %if.else1068

if.then1053:                                      ; preds = %if.end1050
  %849 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %850 = load i32, ptr %849, align 4, !tbaa !8
  %sub1054 = sub nsw i32 %850, 1
  store i32 %sub1054, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond1055

for.cond1055:                                     ; preds = %for.inc1065, %if.then1053
  %851 = load i32, ptr %i__, align 4, !tbaa !8
  %852 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1056 = icmp sle i32 %851, %852
  br i1 %cmp1056, label %for.body1058, label %for.end1067

for.body1058:                                     ; preds = %for.cond1055
  %853 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %854 = load i32, ptr %i__, align 4, !tbaa !8
  %855 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1059 = mul nsw i32 %854, %855
  %add1060 = add nsw i32 %mul1059, 2
  %idxprom1061 = sext i32 %add1060 to i64
  %arrayidx1062 = getelementptr inbounds float, ptr %853, i64 %idxprom1061
  %856 = load float, ptr %arrayidx1062, align 4, !tbaa !13
  %857 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %858 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1063 = sext i32 %858 to i64
  %arrayidx1064 = getelementptr inbounds float, ptr %857, i64 %idxprom1063
  store float %856, ptr %arrayidx1064, align 4, !tbaa !13
  br label %for.inc1065

for.inc1065:                                      ; preds = %for.body1058
  %859 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1066 = add nsw i32 %859, 1
  store i32 %inc1066, ptr %i__, align 4, !tbaa !8
  br label %for.cond1055, !llvm.loop !34

for.end1067:                                      ; preds = %for.cond1055
  br label %if.end1079

if.else1068:                                      ; preds = %if.end1050
  %860 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %861 = load i32, ptr %860, align 4, !tbaa !8
  %sub1069 = sub nsw i32 %861, 1
  store i32 %sub1069, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond1070

for.cond1070:                                     ; preds = %for.inc1076, %if.else1068
  %862 = load i32, ptr %i__, align 4, !tbaa !8
  %863 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1071 = icmp sle i32 %862, %863
  br i1 %cmp1071, label %for.body1073, label %for.end1078

for.body1073:                                     ; preds = %for.cond1070
  %864 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %865 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1074 = sext i32 %865 to i64
  %arrayidx1075 = getelementptr inbounds float, ptr %864, i64 %idxprom1074
  store float 0.000000e+00, ptr %arrayidx1075, align 4, !tbaa !13
  br label %for.inc1076

for.inc1076:                                      ; preds = %for.body1073
  %866 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1077 = add nsw i32 %866, 1
  store i32 %inc1077, ptr %i__, align 4, !tbaa !8
  br label %for.cond1070, !llvm.loop !35

for.end1078:                                      ; preds = %for.cond1070
  br label %if.end1079

if.end1079:                                       ; preds = %for.end1078, %for.end1067
  %867 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %868 = load i32, ptr %867, align 4, !tbaa !8
  store i32 %868, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond1080

for.cond1080:                                     ; preds = %for.inc1090, %if.end1079
  %869 = load i32, ptr %i__, align 4, !tbaa !8
  %870 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp1081 = icmp sle i32 %869, %870
  br i1 %cmp1081, label %for.body1083, label %for.end1092

for.body1083:                                     ; preds = %for.cond1080
  %871 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %872 = load i32, ptr %i__, align 4, !tbaa !8
  %873 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %mul1084 = mul nsw i32 %872, %873
  %add1085 = add nsw i32 %mul1084, 1
  %idxprom1086 = sext i32 %add1085 to i64
  %arrayidx1087 = getelementptr inbounds float, ptr %871, i64 %idxprom1086
  %874 = load float, ptr %arrayidx1087, align 4, !tbaa !13
  %875 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %876 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom1088 = sext i32 %876 to i64
  %arrayidx1089 = getelementptr inbounds float, ptr %875, i64 %idxprom1088
  store float %874, ptr %arrayidx1089, align 4, !tbaa !13
  br label %for.inc1090

for.inc1090:                                      ; preds = %for.body1083
  %877 = load i32, ptr %i__, align 4, !tbaa !8
  %inc1091 = add nsw i32 %877, 1
  store i32 %inc1091, ptr %i__, align 4, !tbaa !8
  br label %for.cond1080, !llvm.loop !36

for.end1092:                                      ; preds = %for.cond1080
  br label %if.end1093

if.end1093:                                       ; preds = %for.end1092, %for.end576
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1093, %if.then45, %if.then40
  call void @llvm.lifetime.end.p0(i64 4, ptr %iqaend) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantq) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %initq) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iqend) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1inc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1end) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %incx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %jinc) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lend) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %jend) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %inca) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %kdm1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nrt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %jin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %kdn) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iqb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ibl) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %kd1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nq) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %q_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_dim1) #3
  %878 = load i32, ptr %retval, align 4
  ret i32 %878
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @slaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slargv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slartv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @srot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @slar2v_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !6, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
