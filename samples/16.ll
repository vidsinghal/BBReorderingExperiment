; ModuleID = 'samples/16.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dptsvx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DPTSVX\00", align 1
@c__1 = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Epsilon\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dptsvx_(ptr noundef %fact, ptr noundef %n, ptr noundef %nrhs, ptr noundef %d__, ptr noundef %e, ptr noundef %df, ptr noundef %ef, ptr noundef %b, ptr noundef %ldb, ptr noundef %x, ptr noundef %ldx, ptr noundef %rcond, ptr noundef %ferr, ptr noundef %berr, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %fact.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %df.addr = alloca ptr, align 8
  %ef.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %ldx.addr = alloca ptr, align 8
  %rcond.addr = alloca ptr, align 8
  %ferr.addr = alloca ptr, align 8
  %berr.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %x_dim1 = alloca i32, align 4
  %x_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %anorm = alloca double, align 8
  %nofact = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x22 = alloca i32, align 4
  %_y23 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fact, ptr %fact.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nrhs, ptr %nrhs.addr, align 8, !tbaa !4
  store ptr %d__, ptr %d__.addr, align 8, !tbaa !4
  store ptr %e, ptr %e.addr, align 8, !tbaa !4
  store ptr %df, ptr %df.addr, align 8, !tbaa !4
  store ptr %ef, ptr %ef.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %x, ptr %x.addr, align 8, !tbaa !4
  store ptr %ldx, ptr %ldx.addr, align 8, !tbaa !4
  store ptr %rcond, ptr %rcond.addr, align 8, !tbaa !4
  store ptr %ferr, ptr %ferr.addr, align 8, !tbaa !4
  store ptr %berr, ptr %berr.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %anorm) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nofact) #3
  %0 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds double, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %e.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %df.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds double, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %df.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %ef.addr, align 8, !tbaa !4
  %incdec.ptr3 = getelementptr inbounds double, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %ef.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %5 = load i32, ptr %4, align 4, !tbaa !8
  store i32 %5, ptr %b_dim1, align 4, !tbaa !8
  %6 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add = add nsw i32 1, %6
  store i32 %add, ptr %b_offset, align 4, !tbaa !8
  %7 = load i32, ptr %b_offset, align 4, !tbaa !8
  %8 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext = sext i32 %7 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, ptr %8, i64 %idx.neg
  store ptr %add.ptr, ptr %b.addr, align 8, !tbaa !4
  %9 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %10 = load i32, ptr %9, align 4, !tbaa !8
  store i32 %10, ptr %x_dim1, align 4, !tbaa !8
  %11 = load i32, ptr %x_dim1, align 4, !tbaa !8
  %add4 = add nsw i32 1, %11
  store i32 %add4, ptr %x_offset, align 4, !tbaa !8
  %12 = load i32, ptr %x_offset, align 4, !tbaa !8
  %13 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %idx.ext5 = sext i32 %12 to i64
  %idx.neg6 = sub i64 0, %idx.ext5
  %add.ptr7 = getelementptr inbounds double, ptr %13, i64 %idx.neg6
  store ptr %add.ptr7, ptr %x.addr, align 8, !tbaa !4
  %14 = load ptr, ptr %ferr.addr, align 8, !tbaa !4
  %incdec.ptr8 = getelementptr inbounds double, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %ferr.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %berr.addr, align 8, !tbaa !4
  %incdec.ptr9 = getelementptr inbounds double, ptr %15, i32 -1
  store ptr %incdec.ptr9, ptr %berr.addr, align 8, !tbaa !4
  %16 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr10 = getelementptr inbounds double, ptr %16, i32 -1
  store ptr %incdec.ptr10, ptr %work.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %17, align 4, !tbaa !8
  %18 = load ptr, ptr %fact.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %18, ptr noundef @.str)
  store i32 %call, ptr %nofact, align 4, !tbaa !8
  %19 = load i32, ptr %nofact, align 4, !tbaa !8
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %20 = load ptr, ptr %fact.addr, align 8, !tbaa !4
  %call11 = call i32 @lsame_(ptr noundef %20, ptr noundef @.str.1)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %21 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %21, align 4, !tbaa !8
  br label %if.end35

if.else:                                          ; preds = %land.lhs.true, %entry
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %24, align 4, !tbaa !8
  br label %if.end34

if.else14:                                        ; preds = %if.else
  %25 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %cmp15 = icmp slt i32 %26, 0
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else14
  %27 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %27, align 4, !tbaa !8
  br label %if.end33

if.else17:                                        ; preds = %if.else14
  %28 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %29 = load i32, ptr %28, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %30 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  store i32 %31, ptr %_y, align 4, !tbaa !8
  %32 = load i32, ptr %_x, align 4, !tbaa !8
  %33 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp18 = icmp sgt i32 %32, %33
  br i1 %cmp18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else17
  %34 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else17
  %35 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %34, %cond.true ], [ %35, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %36 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp19 = icmp slt i32 %29, %36
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %cond.end
  %37 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -9, ptr %37, align 4, !tbaa !8
  br label %if.end32

if.else21:                                        ; preds = %cond.end
  %38 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x22) #3
  store i32 1, ptr %_x22, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y23) #3
  %40 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %41 = load i32, ptr %40, align 4, !tbaa !8
  store i32 %41, ptr %_y23, align 4, !tbaa !8
  %42 = load i32, ptr %_x22, align 4, !tbaa !8
  %43 = load i32, ptr %_y23, align 4, !tbaa !8
  %cmp25 = icmp sgt i32 %42, %43
  br i1 %cmp25, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %if.else21
  %44 = load i32, ptr %_x22, align 4, !tbaa !8
  br label %cond.end28

cond.false27:                                     ; preds = %if.else21
  %45 = load i32, ptr %_y23, align 4, !tbaa !8
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi i32 [ %44, %cond.true26 ], [ %45, %cond.false27 ]
  store i32 %cond29, ptr %tmp24, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y23) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x22) #3
  %46 = load i32, ptr %tmp24, align 4, !tbaa !8
  %cmp30 = icmp slt i32 %39, %46
  br i1 %cmp30, label %if.then31, label %if.end

if.then31:                                        ; preds = %cond.end28
  %47 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %47, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then31, %cond.end28
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then20
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then16
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then13
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then
  %48 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  %cmp36 = icmp ne i32 %49, 0
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %50 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  %sub = sub nsw i32 0, %51
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call38 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %52 = load i32, ptr %nofact, align 4, !tbaa !8
  %tobool40 = icmp ne i32 %52, 0
  br i1 %tobool40, label %if.then41, label %if.end57

if.then41:                                        ; preds = %if.end39
  %53 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %54, i64 1
  %55 = load ptr, ptr %df.addr, align 8, !tbaa !4
  %arrayidx42 = getelementptr inbounds double, ptr %55, i64 1
  %call43 = call i32 @dcopy_(ptr noundef %53, ptr noundef %arrayidx, ptr noundef @c__1, ptr noundef %arrayidx42, ptr noundef @c__1)
  %56 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %57 = load i32, ptr %56, align 4, !tbaa !8
  %cmp44 = icmp sgt i32 %57, 1
  br i1 %cmp44, label %if.then45, label %if.end50

if.then45:                                        ; preds = %if.then41
  %58 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %sub46 = sub nsw i32 %59, 1
  store i32 %sub46, ptr %i__1, align 4, !tbaa !8
  %60 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %arrayidx47 = getelementptr inbounds double, ptr %60, i64 1
  %61 = load ptr, ptr %ef.addr, align 8, !tbaa !4
  %arrayidx48 = getelementptr inbounds double, ptr %61, i64 1
  %call49 = call i32 @dcopy_(ptr noundef %i__1, ptr noundef %arrayidx47, ptr noundef @c__1, ptr noundef %arrayidx48, ptr noundef @c__1)
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.then41
  %62 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %df.addr, align 8, !tbaa !4
  %arrayidx51 = getelementptr inbounds double, ptr %63, i64 1
  %64 = load ptr, ptr %ef.addr, align 8, !tbaa !4
  %arrayidx52 = getelementptr inbounds double, ptr %64, i64 1
  %65 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call53 = call i32 @dpttrf_(ptr noundef %62, ptr noundef %arrayidx51, ptr noundef %arrayidx52, ptr noundef %65)
  %66 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %67 = load i32, ptr %66, align 4, !tbaa !8
  %cmp54 = icmp sgt i32 %67, 0
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end50
  %68 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  store double 0.000000e+00, ptr %68, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end39
  %69 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %70 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %arrayidx58 = getelementptr inbounds double, ptr %70, i64 1
  %71 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %arrayidx59 = getelementptr inbounds double, ptr %71, i64 1
  %call60 = call double @dlanst_(ptr noundef @.str.3, ptr noundef %69, ptr noundef %arrayidx58, ptr noundef %arrayidx59)
  store double %call60, ptr %anorm, align 8, !tbaa !10
  %72 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %df.addr, align 8, !tbaa !4
  %arrayidx61 = getelementptr inbounds double, ptr %73, i64 1
  %74 = load ptr, ptr %ef.addr, align 8, !tbaa !4
  %arrayidx62 = getelementptr inbounds double, ptr %74, i64 1
  %75 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  %76 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx63 = getelementptr inbounds double, ptr %76, i64 1
  %77 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call64 = call i32 @dptcon_(ptr noundef %72, ptr noundef %arrayidx61, ptr noundef %arrayidx62, ptr noundef %anorm, ptr noundef %75, ptr noundef %arrayidx63, ptr noundef %77)
  %78 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %79 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %80 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %81 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom = sext i32 %81 to i64
  %arrayidx65 = getelementptr inbounds double, ptr %80, i64 %idxprom
  %82 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %83 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %84 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom66 = sext i32 %84 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %83, i64 %idxprom66
  %85 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %call68 = call i32 @dlacpy_(ptr noundef @.str.4, ptr noundef %78, ptr noundef %79, ptr noundef %arrayidx65, ptr noundef %82, ptr noundef %arrayidx67, ptr noundef %85)
  %86 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %87 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %88 = load ptr, ptr %df.addr, align 8, !tbaa !4
  %arrayidx69 = getelementptr inbounds double, ptr %88, i64 1
  %89 = load ptr, ptr %ef.addr, align 8, !tbaa !4
  %arrayidx70 = getelementptr inbounds double, ptr %89, i64 1
  %90 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %91 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom71 = sext i32 %91 to i64
  %arrayidx72 = getelementptr inbounds double, ptr %90, i64 %idxprom71
  %92 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call73 = call i32 @dpttrs_(ptr noundef %86, ptr noundef %87, ptr noundef %arrayidx69, ptr noundef %arrayidx70, ptr noundef %arrayidx72, ptr noundef %92, ptr noundef %93)
  %94 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %95 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %d__.addr, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds double, ptr %96, i64 1
  %97 = load ptr, ptr %e.addr, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds double, ptr %97, i64 1
  %98 = load ptr, ptr %df.addr, align 8, !tbaa !4
  %arrayidx76 = getelementptr inbounds double, ptr %98, i64 1
  %99 = load ptr, ptr %ef.addr, align 8, !tbaa !4
  %arrayidx77 = getelementptr inbounds double, ptr %99, i64 1
  %100 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %101 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom78 = sext i32 %101 to i64
  %arrayidx79 = getelementptr inbounds double, ptr %100, i64 %idxprom78
  %102 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %103 = load ptr, ptr %x.addr, align 8, !tbaa !4
  %104 = load i32, ptr %x_offset, align 4, !tbaa !8
  %idxprom80 = sext i32 %104 to i64
  %arrayidx81 = getelementptr inbounds double, ptr %103, i64 %idxprom80
  %105 = load ptr, ptr %ldx.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %ferr.addr, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds double, ptr %106, i64 1
  %107 = load ptr, ptr %berr.addr, align 8, !tbaa !4
  %arrayidx83 = getelementptr inbounds double, ptr %107, i64 1
  %108 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds double, ptr %108, i64 1
  %109 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call85 = call i32 @dptrfs_(ptr noundef %94, ptr noundef %95, ptr noundef %arrayidx74, ptr noundef %arrayidx75, ptr noundef %arrayidx76, ptr noundef %arrayidx77, ptr noundef %arrayidx79, ptr noundef %102, ptr noundef %arrayidx81, ptr noundef %105, ptr noundef %arrayidx82, ptr noundef %arrayidx83, ptr noundef %arrayidx84, ptr noundef %109)
  %110 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  %111 = load double, ptr %110, align 8, !tbaa !10
  %call86 = call double @dlamch_(ptr noundef @.str.5)
  %cmp87 = fcmp olt double %111, %call86
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end57
  %112 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %113 = load i32, ptr %112, align 4, !tbaa !8
  %add89 = add nsw i32 %113, 1
  %114 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %add89, ptr %114, align 4, !tbaa !8
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end57
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then55, %if.then37
  call void @llvm.lifetime.end.p0(i64 4, ptr %nofact) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %anorm) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  %115 = load i32, ptr %retval, align 4
  ret i32 %115
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dpttrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare double @dlanst_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dptcon_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlacpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dpttrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dptrfs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare double @dlamch_(ptr noundef) #2

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
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !6, i64 0}
