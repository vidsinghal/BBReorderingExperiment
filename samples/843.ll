; ModuleID = 'samples/843.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/csytrs_rook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"CSYTRS_ROOK\00", align 1
@c__1 = internal global i32 1, align 4
@c_b1 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1

; Function Attrs: nounwind uwtable
define i32 @csytrs_rook_(ptr noundef %uplo, ptr noundef %n, ptr noundef %nrhs, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %b, ptr noundef %ldb, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ak = alloca %struct.complex, align 4
  %bk = alloca %struct.complex, align 4
  %kp = alloca i32, align 4
  %akm1 = alloca %struct.complex, align 4
  %bkm1 = alloca %struct.complex, align 4
  %akm1k = alloca %struct.complex, align 4
  %denom = alloca %struct.complex, align 4
  %upper = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x16 = alloca i32, align 4
  %_y17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nrhs, ptr %nrhs.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %ipiv, ptr %ipiv.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ak) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bk) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %akm1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bkm1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %akm1k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %denom) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #4
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %7, ptr %b_dim1, align 4, !tbaa !8
  %8 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %b_offset, align 4, !tbaa !8
  %9 = load i32, ptr %b_offset, align 4, !tbaa !8
  %10 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %11, align 4, !tbaa !8
  %12 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %12, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %13 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %14 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call5 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.1)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %15, align 4, !tbaa !8
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %17 = load i32, ptr %16, align 4, !tbaa !8
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  %18 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %18, align 4, !tbaa !8
  br label %if.end28

if.else8:                                         ; preds = %if.else
  %19 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %20, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else8
  %21 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %21, align 4, !tbaa !8
  br label %if.end27

if.else11:                                        ; preds = %if.else8
  %22 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #4
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #4
  %24 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  store i32 %25, ptr %_y, align 4, !tbaa !8
  %26 = load i32, ptr %_x, align 4, !tbaa !8
  %27 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp12 = icmp sgt i32 %26, %27
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else11
  %28 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else11
  %29 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #4
  %30 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp13 = icmp slt i32 %23, %30
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %cond.end
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %31, align 4, !tbaa !8
  br label %if.end26

if.else15:                                        ; preds = %cond.end
  %32 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %33 = load i32, ptr %32, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x16) #4
  store i32 1, ptr %_x16, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y17) #4
  %34 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  store i32 %35, ptr %_y17, align 4, !tbaa !8
  %36 = load i32, ptr %_x16, align 4, !tbaa !8
  %37 = load i32, ptr %_y17, align 4, !tbaa !8
  %cmp19 = icmp sgt i32 %36, %37
  br i1 %cmp19, label %cond.true20, label %cond.false21

cond.true20:                                      ; preds = %if.else15
  %38 = load i32, ptr %_x16, align 4, !tbaa !8
  br label %cond.end22

cond.false21:                                     ; preds = %if.else15
  %39 = load i32, ptr %_y17, align 4, !tbaa !8
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false21, %cond.true20
  %cond23 = phi i32 [ %38, %cond.true20 ], [ %39, %cond.false21 ]
  store i32 %cond23, ptr %tmp18, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y17) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x16) #4
  %40 = load i32, ptr %tmp18, align 4, !tbaa !8
  %cmp24 = icmp slt i32 %33, %40
  br i1 %cmp24, label %if.then25, label %if.end

if.then25:                                        ; preds = %cond.end22
  %41 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %41, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then25, %cond.end22
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then14
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then10
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then7
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  %42 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %cmp30 = icmp ne i32 %43, 0
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end29
  %44 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  %sub = sub nsw i32 0, %45
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call32 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %46 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %cmp34 = icmp eq i32 %47, 0
  br i1 %cmp34, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end33
  %48 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  %cmp35 = icmp eq i32 %49, 0
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %if.end33
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false
  %50 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool38 = icmp ne i32 %50, 0
  br i1 %tobool38, label %if.then39, label %if.else378

if.then39:                                        ; preds = %if.end37
  %51 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  store i32 %52, ptr %k, align 4, !tbaa !8
  br label %L10

L10:                                              ; preds = %if.end278, %if.then39
  %53 = load i32, ptr %k, align 4, !tbaa !8
  %cmp40 = icmp slt i32 %53, 1
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %L10
  br label %L30

if.end42:                                         ; preds = %L10
  %54 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %55 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds i32, ptr %54, i64 %idxprom
  %56 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp43 = icmp sgt i32 %56, 0
  br i1 %cmp43, label %if.then44, label %if.else76

if.then44:                                        ; preds = %if.end42
  %57 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %58 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom45 = sext i32 %58 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %57, i64 %idxprom45
  %59 = load i32, ptr %arrayidx46, align 4, !tbaa !8
  store i32 %59, ptr %kp, align 4, !tbaa !8
  %60 = load i32, ptr %kp, align 4, !tbaa !8
  %61 = load i32, ptr %k, align 4, !tbaa !8
  %cmp47 = icmp ne i32 %60, %61
  br i1 %cmp47, label %if.then48, label %if.end56

if.then48:                                        ; preds = %if.then44
  %62 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %63 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %64 = load i32, ptr %k, align 4, !tbaa !8
  %65 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add49 = add nsw i32 %64, %65
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds %struct.complex, ptr %63, i64 %idxprom50
  %66 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %68 = load i32, ptr %kp, align 4, !tbaa !8
  %69 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add52 = add nsw i32 %68, %69
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds %struct.complex, ptr %67, i64 %idxprom53
  %70 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call55 = call i32 @cswap_(ptr noundef %62, ptr noundef %arrayidx51, ptr noundef %66, ptr noundef %arrayidx54, ptr noundef %70)
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %if.then44
  %71 = load i32, ptr %k, align 4, !tbaa !8
  %sub57 = sub nsw i32 %71, 1
  store i32 %sub57, ptr %i__1, align 4, !tbaa !8
  %r = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r, align 4, !tbaa !10
  %i = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i, align 4, !tbaa !13
  %72 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %74 = load i32, ptr %k, align 4, !tbaa !8
  %75 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %74, %75
  %add58 = add nsw i32 %mul, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds %struct.complex, ptr %73, i64 %idxprom59
  %76 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %77 = load i32, ptr %k, align 4, !tbaa !8
  %78 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add61 = add nsw i32 %77, %78
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds %struct.complex, ptr %76, i64 %idxprom62
  %79 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %80 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %81 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add64 = add nsw i32 %81, 1
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds %struct.complex, ptr %80, i64 %idxprom65
  %82 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call67 = call i32 @cgeru_(ptr noundef %i__1, ptr noundef %72, ptr noundef %q__1, ptr noundef %arrayidx60, ptr noundef @c__1, ptr noundef %arrayidx63, ptr noundef %79, ptr noundef %arrayidx66, ptr noundef %82)
  %83 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %84 = load i32, ptr %k, align 4, !tbaa !8
  %85 = load i32, ptr %k, align 4, !tbaa !8
  %86 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul68 = mul nsw i32 %85, %86
  %add69 = add nsw i32 %84, %mul68
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds %struct.complex, ptr %83, i64 %idxprom70
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx71)
  %87 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %88 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %89 = load i32, ptr %k, align 4, !tbaa !8
  %90 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add72 = add nsw i32 %89, %90
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds %struct.complex, ptr %88, i64 %idxprom73
  %91 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call75 = call i32 @cscal_(ptr noundef %87, ptr noundef %q__1, ptr noundef %arrayidx74, ptr noundef %91)
  %92 = load i32, ptr %k, align 4, !tbaa !8
  %dec = add nsw i32 %92, -1
  store i32 %dec, ptr %k, align 4, !tbaa !8
  br label %if.end278

if.else76:                                        ; preds = %if.end42
  %93 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %94 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom77 = sext i32 %94 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %93, i64 %idxprom77
  %95 = load i32, ptr %arrayidx78, align 4, !tbaa !8
  %sub79 = sub nsw i32 0, %95
  store i32 %sub79, ptr %kp, align 4, !tbaa !8
  %96 = load i32, ptr %kp, align 4, !tbaa !8
  %97 = load i32, ptr %k, align 4, !tbaa !8
  %cmp80 = icmp ne i32 %96, %97
  br i1 %cmp80, label %if.then81, label %if.end89

if.then81:                                        ; preds = %if.else76
  %98 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %99 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %100 = load i32, ptr %k, align 4, !tbaa !8
  %101 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add82 = add nsw i32 %100, %101
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds %struct.complex, ptr %99, i64 %idxprom83
  %102 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %103 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %104 = load i32, ptr %kp, align 4, !tbaa !8
  %105 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add85 = add nsw i32 %104, %105
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds %struct.complex, ptr %103, i64 %idxprom86
  %106 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call88 = call i32 @cswap_(ptr noundef %98, ptr noundef %arrayidx84, ptr noundef %102, ptr noundef %arrayidx87, ptr noundef %106)
  br label %if.end89

if.end89:                                         ; preds = %if.then81, %if.else76
  %107 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %108 = load i32, ptr %k, align 4, !tbaa !8
  %sub90 = sub nsw i32 %108, 1
  %idxprom91 = sext i32 %sub90 to i64
  %arrayidx92 = getelementptr inbounds i32, ptr %107, i64 %idxprom91
  %109 = load i32, ptr %arrayidx92, align 4, !tbaa !8
  %sub93 = sub nsw i32 0, %109
  store i32 %sub93, ptr %kp, align 4, !tbaa !8
  %110 = load i32, ptr %kp, align 4, !tbaa !8
  %111 = load i32, ptr %k, align 4, !tbaa !8
  %sub94 = sub nsw i32 %111, 1
  %cmp95 = icmp ne i32 %110, %sub94
  br i1 %cmp95, label %if.then96, label %if.end105

if.then96:                                        ; preds = %if.end89
  %112 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %113 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %114 = load i32, ptr %k, align 4, !tbaa !8
  %sub97 = sub nsw i32 %114, 1
  %115 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add98 = add nsw i32 %sub97, %115
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds %struct.complex, ptr %113, i64 %idxprom99
  %116 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %117 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %118 = load i32, ptr %kp, align 4, !tbaa !8
  %119 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add101 = add nsw i32 %118, %119
  %idxprom102 = sext i32 %add101 to i64
  %arrayidx103 = getelementptr inbounds %struct.complex, ptr %117, i64 %idxprom102
  %120 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call104 = call i32 @cswap_(ptr noundef %112, ptr noundef %arrayidx100, ptr noundef %116, ptr noundef %arrayidx103, ptr noundef %120)
  br label %if.end105

if.end105:                                        ; preds = %if.then96, %if.end89
  %121 = load i32, ptr %k, align 4, !tbaa !8
  %cmp106 = icmp sgt i32 %121, 2
  br i1 %cmp106, label %if.then107, label %if.end138

if.then107:                                       ; preds = %if.end105
  %122 = load i32, ptr %k, align 4, !tbaa !8
  %sub108 = sub nsw i32 %122, 2
  store i32 %sub108, ptr %i__1, align 4, !tbaa !8
  %r109 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r109, align 4, !tbaa !10
  %i110 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i110, align 4, !tbaa !13
  %123 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %125 = load i32, ptr %k, align 4, !tbaa !8
  %126 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul111 = mul nsw i32 %125, %126
  %add112 = add nsw i32 %mul111, 1
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds %struct.complex, ptr %124, i64 %idxprom113
  %127 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %128 = load i32, ptr %k, align 4, !tbaa !8
  %129 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add115 = add nsw i32 %128, %129
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds %struct.complex, ptr %127, i64 %idxprom116
  %130 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %131 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %132 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add118 = add nsw i32 %132, 1
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds %struct.complex, ptr %131, i64 %idxprom119
  %133 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call121 = call i32 @cgeru_(ptr noundef %i__1, ptr noundef %123, ptr noundef %q__1, ptr noundef %arrayidx114, ptr noundef @c__1, ptr noundef %arrayidx117, ptr noundef %130, ptr noundef %arrayidx120, ptr noundef %133)
  %134 = load i32, ptr %k, align 4, !tbaa !8
  %sub122 = sub nsw i32 %134, 2
  store i32 %sub122, ptr %i__1, align 4, !tbaa !8
  %r123 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r123, align 4, !tbaa !10
  %i124 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i124, align 4, !tbaa !13
  %135 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %136 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %137 = load i32, ptr %k, align 4, !tbaa !8
  %sub125 = sub nsw i32 %137, 1
  %138 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul126 = mul nsw i32 %sub125, %138
  %add127 = add nsw i32 %mul126, 1
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds %struct.complex, ptr %136, i64 %idxprom128
  %139 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %140 = load i32, ptr %k, align 4, !tbaa !8
  %sub130 = sub nsw i32 %140, 1
  %141 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add131 = add nsw i32 %sub130, %141
  %idxprom132 = sext i32 %add131 to i64
  %arrayidx133 = getelementptr inbounds %struct.complex, ptr %139, i64 %idxprom132
  %142 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %143 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %144 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add134 = add nsw i32 %144, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds %struct.complex, ptr %143, i64 %idxprom135
  %145 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call137 = call i32 @cgeru_(ptr noundef %i__1, ptr noundef %135, ptr noundef %q__1, ptr noundef %arrayidx129, ptr noundef @c__1, ptr noundef %arrayidx133, ptr noundef %142, ptr noundef %arrayidx136, ptr noundef %145)
  br label %if.end138

if.end138:                                        ; preds = %if.then107, %if.end105
  %146 = load i32, ptr %k, align 4, !tbaa !8
  %sub139 = sub nsw i32 %146, 1
  %147 = load i32, ptr %k, align 4, !tbaa !8
  %148 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul140 = mul nsw i32 %147, %148
  %add141 = add nsw i32 %sub139, %mul140
  store i32 %add141, ptr %i__1, align 4, !tbaa !8
  %149 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %150 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom142 = sext i32 %150 to i64
  %arrayidx143 = getelementptr inbounds %struct.complex, ptr %149, i64 %idxprom142
  %r144 = getelementptr inbounds %struct.complex, ptr %arrayidx143, i32 0, i32 0
  %151 = load float, ptr %r144, align 4, !tbaa !10
  %r145 = getelementptr inbounds %struct.complex, ptr %akm1k, i32 0, i32 0
  store float %151, ptr %r145, align 4, !tbaa !10
  %152 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %153 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom146 = sext i32 %153 to i64
  %arrayidx147 = getelementptr inbounds %struct.complex, ptr %152, i64 %idxprom146
  %i148 = getelementptr inbounds %struct.complex, ptr %arrayidx147, i32 0, i32 1
  %154 = load float, ptr %i148, align 4, !tbaa !13
  %i149 = getelementptr inbounds %struct.complex, ptr %akm1k, i32 0, i32 1
  store float %154, ptr %i149, align 4, !tbaa !13
  %155 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %156 = load i32, ptr %k, align 4, !tbaa !8
  %sub150 = sub nsw i32 %156, 1
  %157 = load i32, ptr %k, align 4, !tbaa !8
  %sub151 = sub nsw i32 %157, 1
  %158 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul152 = mul nsw i32 %sub151, %158
  %add153 = add nsw i32 %sub150, %mul152
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds %struct.complex, ptr %155, i64 %idxprom154
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx155, ptr noundef %akm1k)
  %r156 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %159 = load float, ptr %r156, align 4, !tbaa !10
  %r157 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  store float %159, ptr %r157, align 4, !tbaa !10
  %i158 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %160 = load float, ptr %i158, align 4, !tbaa !13
  %i159 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  store float %160, ptr %i159, align 4, !tbaa !13
  %161 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %162 = load i32, ptr %k, align 4, !tbaa !8
  %163 = load i32, ptr %k, align 4, !tbaa !8
  %164 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul160 = mul nsw i32 %163, %164
  %add161 = add nsw i32 %162, %mul160
  %idxprom162 = sext i32 %add161 to i64
  %arrayidx163 = getelementptr inbounds %struct.complex, ptr %161, i64 %idxprom162
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx163, ptr noundef %akm1k)
  %r164 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %165 = load float, ptr %r164, align 4, !tbaa !10
  %r165 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  store float %165, ptr %r165, align 4, !tbaa !10
  %i166 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %166 = load float, ptr %i166, align 4, !tbaa !13
  %i167 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  store float %166, ptr %i167, align 4, !tbaa !13
  %r168 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %167 = load float, ptr %r168, align 4, !tbaa !10
  %r169 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %168 = load float, ptr %r169, align 4, !tbaa !10
  %i171 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %169 = load float, ptr %i171, align 4, !tbaa !13
  %i172 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %170 = load float, ptr %i172, align 4, !tbaa !13
  %mul173 = fmul float %169, %170
  %neg = fneg float %mul173
  %171 = call float @llvm.fmuladd.f32(float %167, float %168, float %neg)
  %r174 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %171, ptr %r174, align 4, !tbaa !10
  %r175 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %172 = load float, ptr %r175, align 4, !tbaa !10
  %i176 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %173 = load float, ptr %i176, align 4, !tbaa !13
  %i178 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %174 = load float, ptr %i178, align 4, !tbaa !13
  %r179 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %175 = load float, ptr %r179, align 4, !tbaa !10
  %mul180 = fmul float %174, %175
  %176 = call float @llvm.fmuladd.f32(float %172, float %173, float %mul180)
  %i181 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %176, ptr %i181, align 4, !tbaa !13
  %r182 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %177 = load float, ptr %r182, align 4, !tbaa !10
  %sub183 = fsub float %177, 1.000000e+00
  %r184 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub183, ptr %r184, align 4, !tbaa !10
  %i185 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %178 = load float, ptr %i185, align 4, !tbaa !13
  %sub186 = fsub float %178, 0.000000e+00
  %i187 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub186, ptr %i187, align 4, !tbaa !13
  %r188 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %179 = load float, ptr %r188, align 4, !tbaa !10
  %r189 = getelementptr inbounds %struct.complex, ptr %denom, i32 0, i32 0
  store float %179, ptr %r189, align 4, !tbaa !10
  %i190 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %180 = load float, ptr %i190, align 4, !tbaa !13
  %i191 = getelementptr inbounds %struct.complex, ptr %denom, i32 0, i32 1
  store float %180, ptr %i191, align 4, !tbaa !13
  %181 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %182 = load i32, ptr %181, align 4, !tbaa !8
  store i32 %182, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end138
  %183 = load i32, ptr %j, align 4, !tbaa !8
  %184 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp192 = icmp sle i32 %183, %184
  br i1 %cmp192, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %185 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %186 = load i32, ptr %k, align 4, !tbaa !8
  %sub193 = sub nsw i32 %186, 1
  %187 = load i32, ptr %j, align 4, !tbaa !8
  %188 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul194 = mul nsw i32 %187, %188
  %add195 = add nsw i32 %sub193, %mul194
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds %struct.complex, ptr %185, i64 %idxprom196
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx197, ptr noundef %akm1k)
  %r198 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %189 = load float, ptr %r198, align 4, !tbaa !10
  %r199 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  store float %189, ptr %r199, align 4, !tbaa !10
  %i200 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %190 = load float, ptr %i200, align 4, !tbaa !13
  %i201 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  store float %190, ptr %i201, align 4, !tbaa !13
  %191 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %192 = load i32, ptr %k, align 4, !tbaa !8
  %193 = load i32, ptr %j, align 4, !tbaa !8
  %194 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul202 = mul nsw i32 %193, %194
  %add203 = add nsw i32 %192, %mul202
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds %struct.complex, ptr %191, i64 %idxprom204
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx205, ptr noundef %akm1k)
  %r206 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %195 = load float, ptr %r206, align 4, !tbaa !10
  %r207 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  store float %195, ptr %r207, align 4, !tbaa !10
  %i208 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %196 = load float, ptr %i208, align 4, !tbaa !13
  %i209 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  store float %196, ptr %i209, align 4, !tbaa !13
  %197 = load i32, ptr %k, align 4, !tbaa !8
  %sub210 = sub nsw i32 %197, 1
  %198 = load i32, ptr %j, align 4, !tbaa !8
  %199 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul211 = mul nsw i32 %198, %199
  %add212 = add nsw i32 %sub210, %mul211
  store i32 %add212, ptr %i__2, align 4, !tbaa !8
  %r213 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %200 = load float, ptr %r213, align 4, !tbaa !10
  %r214 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %201 = load float, ptr %r214, align 4, !tbaa !10
  %i216 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %202 = load float, ptr %i216, align 4, !tbaa !13
  %i217 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %203 = load float, ptr %i217, align 4, !tbaa !13
  %mul218 = fmul float %202, %203
  %neg219 = fneg float %mul218
  %204 = call float @llvm.fmuladd.f32(float %200, float %201, float %neg219)
  %r220 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %204, ptr %r220, align 4, !tbaa !10
  %r221 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %205 = load float, ptr %r221, align 4, !tbaa !10
  %i222 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %206 = load float, ptr %i222, align 4, !tbaa !13
  %i224 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %207 = load float, ptr %i224, align 4, !tbaa !13
  %r225 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %208 = load float, ptr %r225, align 4, !tbaa !10
  %mul226 = fmul float %207, %208
  %209 = call float @llvm.fmuladd.f32(float %205, float %206, float %mul226)
  %i227 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %209, ptr %i227, align 4, !tbaa !13
  %r228 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %210 = load float, ptr %r228, align 4, !tbaa !10
  %r229 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %211 = load float, ptr %r229, align 4, !tbaa !10
  %sub230 = fsub float %210, %211
  %r231 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub230, ptr %r231, align 4, !tbaa !10
  %i232 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %212 = load float, ptr %i232, align 4, !tbaa !13
  %i233 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %213 = load float, ptr %i233, align 4, !tbaa !13
  %sub234 = fsub float %212, %213
  %i235 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub234, ptr %i235, align 4, !tbaa !13
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %denom)
  %r236 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %214 = load float, ptr %r236, align 4, !tbaa !10
  %215 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %216 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom237 = sext i32 %216 to i64
  %arrayidx238 = getelementptr inbounds %struct.complex, ptr %215, i64 %idxprom237
  %r239 = getelementptr inbounds %struct.complex, ptr %arrayidx238, i32 0, i32 0
  store float %214, ptr %r239, align 4, !tbaa !10
  %i240 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %217 = load float, ptr %i240, align 4, !tbaa !13
  %218 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %219 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom241 = sext i32 %219 to i64
  %arrayidx242 = getelementptr inbounds %struct.complex, ptr %218, i64 %idxprom241
  %i243 = getelementptr inbounds %struct.complex, ptr %arrayidx242, i32 0, i32 1
  store float %217, ptr %i243, align 4, !tbaa !13
  %220 = load i32, ptr %k, align 4, !tbaa !8
  %221 = load i32, ptr %j, align 4, !tbaa !8
  %222 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul244 = mul nsw i32 %221, %222
  %add245 = add nsw i32 %220, %mul244
  store i32 %add245, ptr %i__2, align 4, !tbaa !8
  %r246 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %223 = load float, ptr %r246, align 4, !tbaa !10
  %r247 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %224 = load float, ptr %r247, align 4, !tbaa !10
  %i249 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %225 = load float, ptr %i249, align 4, !tbaa !13
  %i250 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %226 = load float, ptr %i250, align 4, !tbaa !13
  %mul251 = fmul float %225, %226
  %neg252 = fneg float %mul251
  %227 = call float @llvm.fmuladd.f32(float %223, float %224, float %neg252)
  %r253 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %227, ptr %r253, align 4, !tbaa !10
  %r254 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %228 = load float, ptr %r254, align 4, !tbaa !10
  %i255 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %229 = load float, ptr %i255, align 4, !tbaa !13
  %i257 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %230 = load float, ptr %i257, align 4, !tbaa !13
  %r258 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %231 = load float, ptr %r258, align 4, !tbaa !10
  %mul259 = fmul float %230, %231
  %232 = call float @llvm.fmuladd.f32(float %228, float %229, float %mul259)
  %i260 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %232, ptr %i260, align 4, !tbaa !13
  %r261 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %233 = load float, ptr %r261, align 4, !tbaa !10
  %r262 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %234 = load float, ptr %r262, align 4, !tbaa !10
  %sub263 = fsub float %233, %234
  %r264 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub263, ptr %r264, align 4, !tbaa !10
  %i265 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %235 = load float, ptr %i265, align 4, !tbaa !13
  %i266 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %236 = load float, ptr %i266, align 4, !tbaa !13
  %sub267 = fsub float %235, %236
  %i268 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub267, ptr %i268, align 4, !tbaa !13
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %denom)
  %r269 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %237 = load float, ptr %r269, align 4, !tbaa !10
  %238 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %239 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom270 = sext i32 %239 to i64
  %arrayidx271 = getelementptr inbounds %struct.complex, ptr %238, i64 %idxprom270
  %r272 = getelementptr inbounds %struct.complex, ptr %arrayidx271, i32 0, i32 0
  store float %237, ptr %r272, align 4, !tbaa !10
  %i273 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %240 = load float, ptr %i273, align 4, !tbaa !13
  %241 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %242 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom274 = sext i32 %242 to i64
  %arrayidx275 = getelementptr inbounds %struct.complex, ptr %241, i64 %idxprom274
  %i276 = getelementptr inbounds %struct.complex, ptr %arrayidx275, i32 0, i32 1
  store float %240, ptr %i276, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %243 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %243, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %244 = load i32, ptr %k, align 4, !tbaa !8
  %add277 = add nsw i32 %244, -2
  store i32 %add277, ptr %k, align 4, !tbaa !8
  br label %if.end278

if.end278:                                        ; preds = %for.end, %if.end56
  br label %L10

L30:                                              ; preds = %if.then41
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %L40

L40:                                              ; preds = %if.end377, %L30
  %245 = load i32, ptr %k, align 4, !tbaa !8
  %246 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %247 = load i32, ptr %246, align 4, !tbaa !8
  %cmp279 = icmp sgt i32 %245, %247
  br i1 %cmp279, label %if.then280, label %if.end281

if.then280:                                       ; preds = %L40
  br label %L50

if.end281:                                        ; preds = %L40
  %248 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %249 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom282 = sext i32 %249 to i64
  %arrayidx283 = getelementptr inbounds i32, ptr %248, i64 %idxprom282
  %250 = load i32, ptr %arrayidx283, align 4, !tbaa !8
  %cmp284 = icmp sgt i32 %250, 0
  br i1 %cmp284, label %if.then285, label %if.else315

if.then285:                                       ; preds = %if.end281
  %251 = load i32, ptr %k, align 4, !tbaa !8
  %cmp286 = icmp sgt i32 %251, 1
  br i1 %cmp286, label %if.then287, label %if.end301

if.then287:                                       ; preds = %if.then285
  %252 = load i32, ptr %k, align 4, !tbaa !8
  %sub288 = sub nsw i32 %252, 1
  store i32 %sub288, ptr %i__1, align 4, !tbaa !8
  %r289 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r289, align 4, !tbaa !10
  %i290 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i290, align 4, !tbaa !13
  %253 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %254 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %255 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom291 = sext i32 %255 to i64
  %arrayidx292 = getelementptr inbounds %struct.complex, ptr %254, i64 %idxprom291
  %256 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %257 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %258 = load i32, ptr %k, align 4, !tbaa !8
  %259 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul293 = mul nsw i32 %258, %259
  %add294 = add nsw i32 %mul293, 1
  %idxprom295 = sext i32 %add294 to i64
  %arrayidx296 = getelementptr inbounds %struct.complex, ptr %257, i64 %idxprom295
  %260 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %261 = load i32, ptr %k, align 4, !tbaa !8
  %262 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add297 = add nsw i32 %261, %262
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds %struct.complex, ptr %260, i64 %idxprom298
  %263 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call300 = call i32 @cgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %253, ptr noundef %q__1, ptr noundef %arrayidx292, ptr noundef %256, ptr noundef %arrayidx296, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx299, ptr noundef %263)
  br label %if.end301

if.end301:                                        ; preds = %if.then287, %if.then285
  %264 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %265 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom302 = sext i32 %265 to i64
  %arrayidx303 = getelementptr inbounds i32, ptr %264, i64 %idxprom302
  %266 = load i32, ptr %arrayidx303, align 4, !tbaa !8
  store i32 %266, ptr %kp, align 4, !tbaa !8
  %267 = load i32, ptr %kp, align 4, !tbaa !8
  %268 = load i32, ptr %k, align 4, !tbaa !8
  %cmp304 = icmp ne i32 %267, %268
  br i1 %cmp304, label %if.then305, label %if.end313

if.then305:                                       ; preds = %if.end301
  %269 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %270 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %271 = load i32, ptr %k, align 4, !tbaa !8
  %272 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add306 = add nsw i32 %271, %272
  %idxprom307 = sext i32 %add306 to i64
  %arrayidx308 = getelementptr inbounds %struct.complex, ptr %270, i64 %idxprom307
  %273 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %274 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %275 = load i32, ptr %kp, align 4, !tbaa !8
  %276 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add309 = add nsw i32 %275, %276
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds %struct.complex, ptr %274, i64 %idxprom310
  %277 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call312 = call i32 @cswap_(ptr noundef %269, ptr noundef %arrayidx308, ptr noundef %273, ptr noundef %arrayidx311, ptr noundef %277)
  br label %if.end313

if.end313:                                        ; preds = %if.then305, %if.end301
  %278 = load i32, ptr %k, align 4, !tbaa !8
  %inc314 = add nsw i32 %278, 1
  store i32 %inc314, ptr %k, align 4, !tbaa !8
  br label %if.end377

if.else315:                                       ; preds = %if.end281
  %279 = load i32, ptr %k, align 4, !tbaa !8
  %cmp316 = icmp sgt i32 %279, 1
  br i1 %cmp316, label %if.then317, label %if.end346

if.then317:                                       ; preds = %if.else315
  %280 = load i32, ptr %k, align 4, !tbaa !8
  %sub318 = sub nsw i32 %280, 1
  store i32 %sub318, ptr %i__1, align 4, !tbaa !8
  %r319 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r319, align 4, !tbaa !10
  %i320 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i320, align 4, !tbaa !13
  %281 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %282 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %283 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom321 = sext i32 %283 to i64
  %arrayidx322 = getelementptr inbounds %struct.complex, ptr %282, i64 %idxprom321
  %284 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %285 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %286 = load i32, ptr %k, align 4, !tbaa !8
  %287 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul323 = mul nsw i32 %286, %287
  %add324 = add nsw i32 %mul323, 1
  %idxprom325 = sext i32 %add324 to i64
  %arrayidx326 = getelementptr inbounds %struct.complex, ptr %285, i64 %idxprom325
  %288 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %289 = load i32, ptr %k, align 4, !tbaa !8
  %290 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add327 = add nsw i32 %289, %290
  %idxprom328 = sext i32 %add327 to i64
  %arrayidx329 = getelementptr inbounds %struct.complex, ptr %288, i64 %idxprom328
  %291 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call330 = call i32 @cgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %281, ptr noundef %q__1, ptr noundef %arrayidx322, ptr noundef %284, ptr noundef %arrayidx326, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx329, ptr noundef %291)
  %292 = load i32, ptr %k, align 4, !tbaa !8
  %sub331 = sub nsw i32 %292, 1
  store i32 %sub331, ptr %i__1, align 4, !tbaa !8
  %r332 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r332, align 4, !tbaa !10
  %i333 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i333, align 4, !tbaa !13
  %293 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %294 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %295 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom334 = sext i32 %295 to i64
  %arrayidx335 = getelementptr inbounds %struct.complex, ptr %294, i64 %idxprom334
  %296 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %297 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %298 = load i32, ptr %k, align 4, !tbaa !8
  %add336 = add nsw i32 %298, 1
  %299 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul337 = mul nsw i32 %add336, %299
  %add338 = add nsw i32 %mul337, 1
  %idxprom339 = sext i32 %add338 to i64
  %arrayidx340 = getelementptr inbounds %struct.complex, ptr %297, i64 %idxprom339
  %300 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %301 = load i32, ptr %k, align 4, !tbaa !8
  %add341 = add nsw i32 %301, 1
  %302 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add342 = add nsw i32 %add341, %302
  %idxprom343 = sext i32 %add342 to i64
  %arrayidx344 = getelementptr inbounds %struct.complex, ptr %300, i64 %idxprom343
  %303 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call345 = call i32 @cgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %293, ptr noundef %q__1, ptr noundef %arrayidx335, ptr noundef %296, ptr noundef %arrayidx340, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx344, ptr noundef %303)
  br label %if.end346

if.end346:                                        ; preds = %if.then317, %if.else315
  %304 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %305 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom347 = sext i32 %305 to i64
  %arrayidx348 = getelementptr inbounds i32, ptr %304, i64 %idxprom347
  %306 = load i32, ptr %arrayidx348, align 4, !tbaa !8
  %sub349 = sub nsw i32 0, %306
  store i32 %sub349, ptr %kp, align 4, !tbaa !8
  %307 = load i32, ptr %kp, align 4, !tbaa !8
  %308 = load i32, ptr %k, align 4, !tbaa !8
  %cmp350 = icmp ne i32 %307, %308
  br i1 %cmp350, label %if.then351, label %if.end359

if.then351:                                       ; preds = %if.end346
  %309 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %310 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %311 = load i32, ptr %k, align 4, !tbaa !8
  %312 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add352 = add nsw i32 %311, %312
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds %struct.complex, ptr %310, i64 %idxprom353
  %313 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %314 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %315 = load i32, ptr %kp, align 4, !tbaa !8
  %316 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add355 = add nsw i32 %315, %316
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds %struct.complex, ptr %314, i64 %idxprom356
  %317 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call358 = call i32 @cswap_(ptr noundef %309, ptr noundef %arrayidx354, ptr noundef %313, ptr noundef %arrayidx357, ptr noundef %317)
  br label %if.end359

if.end359:                                        ; preds = %if.then351, %if.end346
  %318 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %319 = load i32, ptr %k, align 4, !tbaa !8
  %add360 = add nsw i32 %319, 1
  %idxprom361 = sext i32 %add360 to i64
  %arrayidx362 = getelementptr inbounds i32, ptr %318, i64 %idxprom361
  %320 = load i32, ptr %arrayidx362, align 4, !tbaa !8
  %sub363 = sub nsw i32 0, %320
  store i32 %sub363, ptr %kp, align 4, !tbaa !8
  %321 = load i32, ptr %kp, align 4, !tbaa !8
  %322 = load i32, ptr %k, align 4, !tbaa !8
  %add364 = add nsw i32 %322, 1
  %cmp365 = icmp ne i32 %321, %add364
  br i1 %cmp365, label %if.then366, label %if.end375

if.then366:                                       ; preds = %if.end359
  %323 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %324 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %325 = load i32, ptr %k, align 4, !tbaa !8
  %add367 = add nsw i32 %325, 1
  %326 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add368 = add nsw i32 %add367, %326
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds %struct.complex, ptr %324, i64 %idxprom369
  %327 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %328 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %329 = load i32, ptr %kp, align 4, !tbaa !8
  %330 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add371 = add nsw i32 %329, %330
  %idxprom372 = sext i32 %add371 to i64
  %arrayidx373 = getelementptr inbounds %struct.complex, ptr %328, i64 %idxprom372
  %331 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call374 = call i32 @cswap_(ptr noundef %323, ptr noundef %arrayidx370, ptr noundef %327, ptr noundef %arrayidx373, ptr noundef %331)
  br label %if.end375

if.end375:                                        ; preds = %if.then366, %if.end359
  %332 = load i32, ptr %k, align 4, !tbaa !8
  %add376 = add nsw i32 %332, 2
  store i32 %add376, ptr %k, align 4, !tbaa !8
  br label %if.end377

if.end377:                                        ; preds = %if.end375, %if.end313
  br label %L40

L50:                                              ; preds = %if.then280
  br label %if.end750

if.else378:                                       ; preds = %if.end37
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %L60

L60:                                              ; preds = %if.end641, %if.else378
  %333 = load i32, ptr %k, align 4, !tbaa !8
  %334 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %335 = load i32, ptr %334, align 4, !tbaa !8
  %cmp379 = icmp sgt i32 %333, %335
  br i1 %cmp379, label %if.then380, label %if.end381

if.then380:                                       ; preds = %L60
  br label %L80

if.end381:                                        ; preds = %L60
  %336 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %337 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom382 = sext i32 %337 to i64
  %arrayidx383 = getelementptr inbounds i32, ptr %336, i64 %idxprom382
  %338 = load i32, ptr %arrayidx383, align 4, !tbaa !8
  %cmp384 = icmp sgt i32 %338, 0
  br i1 %cmp384, label %if.then385, label %if.else426

if.then385:                                       ; preds = %if.end381
  %339 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %340 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom386 = sext i32 %340 to i64
  %arrayidx387 = getelementptr inbounds i32, ptr %339, i64 %idxprom386
  %341 = load i32, ptr %arrayidx387, align 4, !tbaa !8
  store i32 %341, ptr %kp, align 4, !tbaa !8
  %342 = load i32, ptr %kp, align 4, !tbaa !8
  %343 = load i32, ptr %k, align 4, !tbaa !8
  %cmp388 = icmp ne i32 %342, %343
  br i1 %cmp388, label %if.then389, label %if.end397

if.then389:                                       ; preds = %if.then385
  %344 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %345 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %346 = load i32, ptr %k, align 4, !tbaa !8
  %347 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add390 = add nsw i32 %346, %347
  %idxprom391 = sext i32 %add390 to i64
  %arrayidx392 = getelementptr inbounds %struct.complex, ptr %345, i64 %idxprom391
  %348 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %349 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %350 = load i32, ptr %kp, align 4, !tbaa !8
  %351 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add393 = add nsw i32 %350, %351
  %idxprom394 = sext i32 %add393 to i64
  %arrayidx395 = getelementptr inbounds %struct.complex, ptr %349, i64 %idxprom394
  %352 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call396 = call i32 @cswap_(ptr noundef %344, ptr noundef %arrayidx392, ptr noundef %348, ptr noundef %arrayidx395, ptr noundef %352)
  br label %if.end397

if.end397:                                        ; preds = %if.then389, %if.then385
  %353 = load i32, ptr %k, align 4, !tbaa !8
  %354 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %355 = load i32, ptr %354, align 4, !tbaa !8
  %cmp398 = icmp slt i32 %353, %355
  br i1 %cmp398, label %if.then399, label %if.end416

if.then399:                                       ; preds = %if.end397
  %356 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %357 = load i32, ptr %356, align 4, !tbaa !8
  %358 = load i32, ptr %k, align 4, !tbaa !8
  %sub400 = sub nsw i32 %357, %358
  store i32 %sub400, ptr %i__1, align 4, !tbaa !8
  %r401 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r401, align 4, !tbaa !10
  %i402 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i402, align 4, !tbaa !13
  %359 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %360 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %361 = load i32, ptr %k, align 4, !tbaa !8
  %add403 = add nsw i32 %361, 1
  %362 = load i32, ptr %k, align 4, !tbaa !8
  %363 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul404 = mul nsw i32 %362, %363
  %add405 = add nsw i32 %add403, %mul404
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds %struct.complex, ptr %360, i64 %idxprom406
  %364 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %365 = load i32, ptr %k, align 4, !tbaa !8
  %366 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add408 = add nsw i32 %365, %366
  %idxprom409 = sext i32 %add408 to i64
  %arrayidx410 = getelementptr inbounds %struct.complex, ptr %364, i64 %idxprom409
  %367 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %368 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %369 = load i32, ptr %k, align 4, !tbaa !8
  %add411 = add nsw i32 %369, 1
  %370 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add412 = add nsw i32 %add411, %370
  %idxprom413 = sext i32 %add412 to i64
  %arrayidx414 = getelementptr inbounds %struct.complex, ptr %368, i64 %idxprom413
  %371 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call415 = call i32 @cgeru_(ptr noundef %i__1, ptr noundef %359, ptr noundef %q__1, ptr noundef %arrayidx407, ptr noundef @c__1, ptr noundef %arrayidx410, ptr noundef %367, ptr noundef %arrayidx414, ptr noundef %371)
  br label %if.end416

if.end416:                                        ; preds = %if.then399, %if.end397
  %372 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %373 = load i32, ptr %k, align 4, !tbaa !8
  %374 = load i32, ptr %k, align 4, !tbaa !8
  %375 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul417 = mul nsw i32 %374, %375
  %add418 = add nsw i32 %373, %mul417
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds %struct.complex, ptr %372, i64 %idxprom419
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx420)
  %376 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %377 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %378 = load i32, ptr %k, align 4, !tbaa !8
  %379 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add421 = add nsw i32 %378, %379
  %idxprom422 = sext i32 %add421 to i64
  %arrayidx423 = getelementptr inbounds %struct.complex, ptr %377, i64 %idxprom422
  %380 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call424 = call i32 @cscal_(ptr noundef %376, ptr noundef %q__1, ptr noundef %arrayidx423, ptr noundef %380)
  %381 = load i32, ptr %k, align 4, !tbaa !8
  %inc425 = add nsw i32 %381, 1
  store i32 %inc425, ptr %k, align 4, !tbaa !8
  br label %if.end641

if.else426:                                       ; preds = %if.end381
  %382 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %383 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom427 = sext i32 %383 to i64
  %arrayidx428 = getelementptr inbounds i32, ptr %382, i64 %idxprom427
  %384 = load i32, ptr %arrayidx428, align 4, !tbaa !8
  %sub429 = sub nsw i32 0, %384
  store i32 %sub429, ptr %kp, align 4, !tbaa !8
  %385 = load i32, ptr %kp, align 4, !tbaa !8
  %386 = load i32, ptr %k, align 4, !tbaa !8
  %cmp430 = icmp ne i32 %385, %386
  br i1 %cmp430, label %if.then431, label %if.end439

if.then431:                                       ; preds = %if.else426
  %387 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %388 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %389 = load i32, ptr %k, align 4, !tbaa !8
  %390 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add432 = add nsw i32 %389, %390
  %idxprom433 = sext i32 %add432 to i64
  %arrayidx434 = getelementptr inbounds %struct.complex, ptr %388, i64 %idxprom433
  %391 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %392 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %393 = load i32, ptr %kp, align 4, !tbaa !8
  %394 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add435 = add nsw i32 %393, %394
  %idxprom436 = sext i32 %add435 to i64
  %arrayidx437 = getelementptr inbounds %struct.complex, ptr %392, i64 %idxprom436
  %395 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call438 = call i32 @cswap_(ptr noundef %387, ptr noundef %arrayidx434, ptr noundef %391, ptr noundef %arrayidx437, ptr noundef %395)
  br label %if.end439

if.end439:                                        ; preds = %if.then431, %if.else426
  %396 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %397 = load i32, ptr %k, align 4, !tbaa !8
  %add440 = add nsw i32 %397, 1
  %idxprom441 = sext i32 %add440 to i64
  %arrayidx442 = getelementptr inbounds i32, ptr %396, i64 %idxprom441
  %398 = load i32, ptr %arrayidx442, align 4, !tbaa !8
  %sub443 = sub nsw i32 0, %398
  store i32 %sub443, ptr %kp, align 4, !tbaa !8
  %399 = load i32, ptr %kp, align 4, !tbaa !8
  %400 = load i32, ptr %k, align 4, !tbaa !8
  %add444 = add nsw i32 %400, 1
  %cmp445 = icmp ne i32 %399, %add444
  br i1 %cmp445, label %if.then446, label %if.end455

if.then446:                                       ; preds = %if.end439
  %401 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %402 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %403 = load i32, ptr %k, align 4, !tbaa !8
  %add447 = add nsw i32 %403, 1
  %404 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add448 = add nsw i32 %add447, %404
  %idxprom449 = sext i32 %add448 to i64
  %arrayidx450 = getelementptr inbounds %struct.complex, ptr %402, i64 %idxprom449
  %405 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %406 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %407 = load i32, ptr %kp, align 4, !tbaa !8
  %408 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add451 = add nsw i32 %407, %408
  %idxprom452 = sext i32 %add451 to i64
  %arrayidx453 = getelementptr inbounds %struct.complex, ptr %406, i64 %idxprom452
  %409 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call454 = call i32 @cswap_(ptr noundef %401, ptr noundef %arrayidx450, ptr noundef %405, ptr noundef %arrayidx453, ptr noundef %409)
  br label %if.end455

if.end455:                                        ; preds = %if.then446, %if.end439
  %410 = load i32, ptr %k, align 4, !tbaa !8
  %411 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %412 = load i32, ptr %411, align 4, !tbaa !8
  %sub456 = sub nsw i32 %412, 1
  %cmp457 = icmp slt i32 %410, %sub456
  br i1 %cmp457, label %if.then458, label %if.end495

if.then458:                                       ; preds = %if.end455
  %413 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %414 = load i32, ptr %413, align 4, !tbaa !8
  %415 = load i32, ptr %k, align 4, !tbaa !8
  %sub459 = sub nsw i32 %414, %415
  %sub460 = sub nsw i32 %sub459, 1
  store i32 %sub460, ptr %i__1, align 4, !tbaa !8
  %r461 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r461, align 4, !tbaa !10
  %i462 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i462, align 4, !tbaa !13
  %416 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %417 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %418 = load i32, ptr %k, align 4, !tbaa !8
  %add463 = add nsw i32 %418, 2
  %419 = load i32, ptr %k, align 4, !tbaa !8
  %420 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul464 = mul nsw i32 %419, %420
  %add465 = add nsw i32 %add463, %mul464
  %idxprom466 = sext i32 %add465 to i64
  %arrayidx467 = getelementptr inbounds %struct.complex, ptr %417, i64 %idxprom466
  %421 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %422 = load i32, ptr %k, align 4, !tbaa !8
  %423 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add468 = add nsw i32 %422, %423
  %idxprom469 = sext i32 %add468 to i64
  %arrayidx470 = getelementptr inbounds %struct.complex, ptr %421, i64 %idxprom469
  %424 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %425 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %426 = load i32, ptr %k, align 4, !tbaa !8
  %add471 = add nsw i32 %426, 2
  %427 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add472 = add nsw i32 %add471, %427
  %idxprom473 = sext i32 %add472 to i64
  %arrayidx474 = getelementptr inbounds %struct.complex, ptr %425, i64 %idxprom473
  %428 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call475 = call i32 @cgeru_(ptr noundef %i__1, ptr noundef %416, ptr noundef %q__1, ptr noundef %arrayidx467, ptr noundef @c__1, ptr noundef %arrayidx470, ptr noundef %424, ptr noundef %arrayidx474, ptr noundef %428)
  %429 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %430 = load i32, ptr %429, align 4, !tbaa !8
  %431 = load i32, ptr %k, align 4, !tbaa !8
  %sub476 = sub nsw i32 %430, %431
  %sub477 = sub nsw i32 %sub476, 1
  store i32 %sub477, ptr %i__1, align 4, !tbaa !8
  %r478 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r478, align 4, !tbaa !10
  %i479 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i479, align 4, !tbaa !13
  %432 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %433 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %434 = load i32, ptr %k, align 4, !tbaa !8
  %add480 = add nsw i32 %434, 2
  %435 = load i32, ptr %k, align 4, !tbaa !8
  %add481 = add nsw i32 %435, 1
  %436 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul482 = mul nsw i32 %add481, %436
  %add483 = add nsw i32 %add480, %mul482
  %idxprom484 = sext i32 %add483 to i64
  %arrayidx485 = getelementptr inbounds %struct.complex, ptr %433, i64 %idxprom484
  %437 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %438 = load i32, ptr %k, align 4, !tbaa !8
  %add486 = add nsw i32 %438, 1
  %439 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add487 = add nsw i32 %add486, %439
  %idxprom488 = sext i32 %add487 to i64
  %arrayidx489 = getelementptr inbounds %struct.complex, ptr %437, i64 %idxprom488
  %440 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %441 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %442 = load i32, ptr %k, align 4, !tbaa !8
  %add490 = add nsw i32 %442, 2
  %443 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add491 = add nsw i32 %add490, %443
  %idxprom492 = sext i32 %add491 to i64
  %arrayidx493 = getelementptr inbounds %struct.complex, ptr %441, i64 %idxprom492
  %444 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call494 = call i32 @cgeru_(ptr noundef %i__1, ptr noundef %432, ptr noundef %q__1, ptr noundef %arrayidx485, ptr noundef @c__1, ptr noundef %arrayidx489, ptr noundef %440, ptr noundef %arrayidx493, ptr noundef %444)
  br label %if.end495

if.end495:                                        ; preds = %if.then458, %if.end455
  %445 = load i32, ptr %k, align 4, !tbaa !8
  %add496 = add nsw i32 %445, 1
  %446 = load i32, ptr %k, align 4, !tbaa !8
  %447 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul497 = mul nsw i32 %446, %447
  %add498 = add nsw i32 %add496, %mul497
  store i32 %add498, ptr %i__1, align 4, !tbaa !8
  %448 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %449 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom499 = sext i32 %449 to i64
  %arrayidx500 = getelementptr inbounds %struct.complex, ptr %448, i64 %idxprom499
  %r501 = getelementptr inbounds %struct.complex, ptr %arrayidx500, i32 0, i32 0
  %450 = load float, ptr %r501, align 4, !tbaa !10
  %r502 = getelementptr inbounds %struct.complex, ptr %akm1k, i32 0, i32 0
  store float %450, ptr %r502, align 4, !tbaa !10
  %451 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %452 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom503 = sext i32 %452 to i64
  %arrayidx504 = getelementptr inbounds %struct.complex, ptr %451, i64 %idxprom503
  %i505 = getelementptr inbounds %struct.complex, ptr %arrayidx504, i32 0, i32 1
  %453 = load float, ptr %i505, align 4, !tbaa !13
  %i506 = getelementptr inbounds %struct.complex, ptr %akm1k, i32 0, i32 1
  store float %453, ptr %i506, align 4, !tbaa !13
  %454 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %455 = load i32, ptr %k, align 4, !tbaa !8
  %456 = load i32, ptr %k, align 4, !tbaa !8
  %457 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul507 = mul nsw i32 %456, %457
  %add508 = add nsw i32 %455, %mul507
  %idxprom509 = sext i32 %add508 to i64
  %arrayidx510 = getelementptr inbounds %struct.complex, ptr %454, i64 %idxprom509
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx510, ptr noundef %akm1k)
  %r511 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %458 = load float, ptr %r511, align 4, !tbaa !10
  %r512 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  store float %458, ptr %r512, align 4, !tbaa !10
  %i513 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %459 = load float, ptr %i513, align 4, !tbaa !13
  %i514 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  store float %459, ptr %i514, align 4, !tbaa !13
  %460 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %461 = load i32, ptr %k, align 4, !tbaa !8
  %add515 = add nsw i32 %461, 1
  %462 = load i32, ptr %k, align 4, !tbaa !8
  %add516 = add nsw i32 %462, 1
  %463 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul517 = mul nsw i32 %add516, %463
  %add518 = add nsw i32 %add515, %mul517
  %idxprom519 = sext i32 %add518 to i64
  %arrayidx520 = getelementptr inbounds %struct.complex, ptr %460, i64 %idxprom519
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx520, ptr noundef %akm1k)
  %r521 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %464 = load float, ptr %r521, align 4, !tbaa !10
  %r522 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  store float %464, ptr %r522, align 4, !tbaa !10
  %i523 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %465 = load float, ptr %i523, align 4, !tbaa !13
  %i524 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  store float %465, ptr %i524, align 4, !tbaa !13
  %r525 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %466 = load float, ptr %r525, align 4, !tbaa !10
  %r526 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %467 = load float, ptr %r526, align 4, !tbaa !10
  %i528 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %468 = load float, ptr %i528, align 4, !tbaa !13
  %i529 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %469 = load float, ptr %i529, align 4, !tbaa !13
  %mul530 = fmul float %468, %469
  %neg531 = fneg float %mul530
  %470 = call float @llvm.fmuladd.f32(float %466, float %467, float %neg531)
  %r532 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %470, ptr %r532, align 4, !tbaa !10
  %r533 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %471 = load float, ptr %r533, align 4, !tbaa !10
  %i534 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %472 = load float, ptr %i534, align 4, !tbaa !13
  %i536 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %473 = load float, ptr %i536, align 4, !tbaa !13
  %r537 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %474 = load float, ptr %r537, align 4, !tbaa !10
  %mul538 = fmul float %473, %474
  %475 = call float @llvm.fmuladd.f32(float %471, float %472, float %mul538)
  %i539 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %475, ptr %i539, align 4, !tbaa !13
  %r540 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %476 = load float, ptr %r540, align 4, !tbaa !10
  %sub541 = fsub float %476, 1.000000e+00
  %r542 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub541, ptr %r542, align 4, !tbaa !10
  %i543 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %477 = load float, ptr %i543, align 4, !tbaa !13
  %sub544 = fsub float %477, 0.000000e+00
  %i545 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub544, ptr %i545, align 4, !tbaa !13
  %r546 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %478 = load float, ptr %r546, align 4, !tbaa !10
  %r547 = getelementptr inbounds %struct.complex, ptr %denom, i32 0, i32 0
  store float %478, ptr %r547, align 4, !tbaa !10
  %i548 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %479 = load float, ptr %i548, align 4, !tbaa !13
  %i549 = getelementptr inbounds %struct.complex, ptr %denom, i32 0, i32 1
  store float %479, ptr %i549, align 4, !tbaa !13
  %480 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %481 = load i32, ptr %480, align 4, !tbaa !8
  store i32 %481, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond550

for.cond550:                                      ; preds = %for.inc637, %if.end495
  %482 = load i32, ptr %j, align 4, !tbaa !8
  %483 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp551 = icmp sle i32 %482, %483
  br i1 %cmp551, label %for.body552, label %for.end639

for.body552:                                      ; preds = %for.cond550
  %484 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %485 = load i32, ptr %k, align 4, !tbaa !8
  %486 = load i32, ptr %j, align 4, !tbaa !8
  %487 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul553 = mul nsw i32 %486, %487
  %add554 = add nsw i32 %485, %mul553
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds %struct.complex, ptr %484, i64 %idxprom555
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx556, ptr noundef %akm1k)
  %r557 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %488 = load float, ptr %r557, align 4, !tbaa !10
  %r558 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  store float %488, ptr %r558, align 4, !tbaa !10
  %i559 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %489 = load float, ptr %i559, align 4, !tbaa !13
  %i560 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  store float %489, ptr %i560, align 4, !tbaa !13
  %490 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %491 = load i32, ptr %k, align 4, !tbaa !8
  %add561 = add nsw i32 %491, 1
  %492 = load i32, ptr %j, align 4, !tbaa !8
  %493 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul562 = mul nsw i32 %492, %493
  %add563 = add nsw i32 %add561, %mul562
  %idxprom564 = sext i32 %add563 to i64
  %arrayidx565 = getelementptr inbounds %struct.complex, ptr %490, i64 %idxprom564
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx565, ptr noundef %akm1k)
  %r566 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %494 = load float, ptr %r566, align 4, !tbaa !10
  %r567 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  store float %494, ptr %r567, align 4, !tbaa !10
  %i568 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %495 = load float, ptr %i568, align 4, !tbaa !13
  %i569 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  store float %495, ptr %i569, align 4, !tbaa !13
  %496 = load i32, ptr %k, align 4, !tbaa !8
  %497 = load i32, ptr %j, align 4, !tbaa !8
  %498 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul570 = mul nsw i32 %497, %498
  %add571 = add nsw i32 %496, %mul570
  store i32 %add571, ptr %i__2, align 4, !tbaa !8
  %r572 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %499 = load float, ptr %r572, align 4, !tbaa !10
  %r573 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %500 = load float, ptr %r573, align 4, !tbaa !10
  %i575 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %501 = load float, ptr %i575, align 4, !tbaa !13
  %i576 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %502 = load float, ptr %i576, align 4, !tbaa !13
  %mul577 = fmul float %501, %502
  %neg578 = fneg float %mul577
  %503 = call float @llvm.fmuladd.f32(float %499, float %500, float %neg578)
  %r579 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %503, ptr %r579, align 4, !tbaa !10
  %r580 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %504 = load float, ptr %r580, align 4, !tbaa !10
  %i581 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %505 = load float, ptr %i581, align 4, !tbaa !13
  %i583 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %506 = load float, ptr %i583, align 4, !tbaa !13
  %r584 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %507 = load float, ptr %r584, align 4, !tbaa !10
  %mul585 = fmul float %506, %507
  %508 = call float @llvm.fmuladd.f32(float %504, float %505, float %mul585)
  %i586 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %508, ptr %i586, align 4, !tbaa !13
  %r587 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %509 = load float, ptr %r587, align 4, !tbaa !10
  %r588 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %510 = load float, ptr %r588, align 4, !tbaa !10
  %sub589 = fsub float %509, %510
  %r590 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub589, ptr %r590, align 4, !tbaa !10
  %i591 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %511 = load float, ptr %i591, align 4, !tbaa !13
  %i592 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %512 = load float, ptr %i592, align 4, !tbaa !13
  %sub593 = fsub float %511, %512
  %i594 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub593, ptr %i594, align 4, !tbaa !13
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %denom)
  %r595 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %513 = load float, ptr %r595, align 4, !tbaa !10
  %514 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %515 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom596 = sext i32 %515 to i64
  %arrayidx597 = getelementptr inbounds %struct.complex, ptr %514, i64 %idxprom596
  %r598 = getelementptr inbounds %struct.complex, ptr %arrayidx597, i32 0, i32 0
  store float %513, ptr %r598, align 4, !tbaa !10
  %i599 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %516 = load float, ptr %i599, align 4, !tbaa !13
  %517 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %518 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom600 = sext i32 %518 to i64
  %arrayidx601 = getelementptr inbounds %struct.complex, ptr %517, i64 %idxprom600
  %i602 = getelementptr inbounds %struct.complex, ptr %arrayidx601, i32 0, i32 1
  store float %516, ptr %i602, align 4, !tbaa !13
  %519 = load i32, ptr %k, align 4, !tbaa !8
  %add603 = add nsw i32 %519, 1
  %520 = load i32, ptr %j, align 4, !tbaa !8
  %521 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul604 = mul nsw i32 %520, %521
  %add605 = add nsw i32 %add603, %mul604
  store i32 %add605, ptr %i__2, align 4, !tbaa !8
  %r606 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %522 = load float, ptr %r606, align 4, !tbaa !10
  %r607 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %523 = load float, ptr %r607, align 4, !tbaa !10
  %i609 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %524 = load float, ptr %i609, align 4, !tbaa !13
  %i610 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %525 = load float, ptr %i610, align 4, !tbaa !13
  %mul611 = fmul float %524, %525
  %neg612 = fneg float %mul611
  %526 = call float @llvm.fmuladd.f32(float %522, float %523, float %neg612)
  %r613 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %526, ptr %r613, align 4, !tbaa !10
  %r614 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 0
  %527 = load float, ptr %r614, align 4, !tbaa !10
  %i615 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 1
  %528 = load float, ptr %i615, align 4, !tbaa !13
  %i617 = getelementptr inbounds %struct.complex, ptr %akm1, i32 0, i32 1
  %529 = load float, ptr %i617, align 4, !tbaa !13
  %r618 = getelementptr inbounds %struct.complex, ptr %bk, i32 0, i32 0
  %530 = load float, ptr %r618, align 4, !tbaa !10
  %mul619 = fmul float %529, %530
  %531 = call float @llvm.fmuladd.f32(float %527, float %528, float %mul619)
  %i620 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %531, ptr %i620, align 4, !tbaa !13
  %r621 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %532 = load float, ptr %r621, align 4, !tbaa !10
  %r622 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 0
  %533 = load float, ptr %r622, align 4, !tbaa !10
  %sub623 = fsub float %532, %533
  %r624 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub623, ptr %r624, align 4, !tbaa !10
  %i625 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %534 = load float, ptr %i625, align 4, !tbaa !13
  %i626 = getelementptr inbounds %struct.complex, ptr %bkm1, i32 0, i32 1
  %535 = load float, ptr %i626, align 4, !tbaa !13
  %sub627 = fsub float %534, %535
  %i628 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub627, ptr %i628, align 4, !tbaa !13
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %denom)
  %r629 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %536 = load float, ptr %r629, align 4, !tbaa !10
  %537 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %538 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom630 = sext i32 %538 to i64
  %arrayidx631 = getelementptr inbounds %struct.complex, ptr %537, i64 %idxprom630
  %r632 = getelementptr inbounds %struct.complex, ptr %arrayidx631, i32 0, i32 0
  store float %536, ptr %r632, align 4, !tbaa !10
  %i633 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %539 = load float, ptr %i633, align 4, !tbaa !13
  %540 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %541 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom634 = sext i32 %541 to i64
  %arrayidx635 = getelementptr inbounds %struct.complex, ptr %540, i64 %idxprom634
  %i636 = getelementptr inbounds %struct.complex, ptr %arrayidx635, i32 0, i32 1
  store float %539, ptr %i636, align 4, !tbaa !13
  br label %for.inc637

for.inc637:                                       ; preds = %for.body552
  %542 = load i32, ptr %j, align 4, !tbaa !8
  %inc638 = add nsw i32 %542, 1
  store i32 %inc638, ptr %j, align 4, !tbaa !8
  br label %for.cond550, !llvm.loop !16

for.end639:                                       ; preds = %for.cond550
  %543 = load i32, ptr %k, align 4, !tbaa !8
  %add640 = add nsw i32 %543, 2
  store i32 %add640, ptr %k, align 4, !tbaa !8
  br label %if.end641

if.end641:                                        ; preds = %for.end639, %if.end416
  br label %L60

L80:                                              ; preds = %if.then380
  %544 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %545 = load i32, ptr %544, align 4, !tbaa !8
  store i32 %545, ptr %k, align 4, !tbaa !8
  br label %L90

L90:                                              ; preds = %if.end749, %L80
  %546 = load i32, ptr %k, align 4, !tbaa !8
  %cmp642 = icmp slt i32 %546, 1
  br i1 %cmp642, label %if.then643, label %if.end644

if.then643:                                       ; preds = %L90
  br label %L100

if.end644:                                        ; preds = %L90
  %547 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %548 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom645 = sext i32 %548 to i64
  %arrayidx646 = getelementptr inbounds i32, ptr %547, i64 %idxprom645
  %549 = load i32, ptr %arrayidx646, align 4, !tbaa !8
  %cmp647 = icmp sgt i32 %549, 0
  br i1 %cmp647, label %if.then648, label %if.else681

if.then648:                                       ; preds = %if.end644
  %550 = load i32, ptr %k, align 4, !tbaa !8
  %551 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %552 = load i32, ptr %551, align 4, !tbaa !8
  %cmp649 = icmp slt i32 %550, %552
  br i1 %cmp649, label %if.then650, label %if.end667

if.then650:                                       ; preds = %if.then648
  %553 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %554 = load i32, ptr %553, align 4, !tbaa !8
  %555 = load i32, ptr %k, align 4, !tbaa !8
  %sub651 = sub nsw i32 %554, %555
  store i32 %sub651, ptr %i__1, align 4, !tbaa !8
  %r652 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r652, align 4, !tbaa !10
  %i653 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i653, align 4, !tbaa !13
  %556 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %557 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %558 = load i32, ptr %k, align 4, !tbaa !8
  %add654 = add nsw i32 %558, 1
  %559 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add655 = add nsw i32 %add654, %559
  %idxprom656 = sext i32 %add655 to i64
  %arrayidx657 = getelementptr inbounds %struct.complex, ptr %557, i64 %idxprom656
  %560 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %561 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %562 = load i32, ptr %k, align 4, !tbaa !8
  %add658 = add nsw i32 %562, 1
  %563 = load i32, ptr %k, align 4, !tbaa !8
  %564 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul659 = mul nsw i32 %563, %564
  %add660 = add nsw i32 %add658, %mul659
  %idxprom661 = sext i32 %add660 to i64
  %arrayidx662 = getelementptr inbounds %struct.complex, ptr %561, i64 %idxprom661
  %565 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %566 = load i32, ptr %k, align 4, !tbaa !8
  %567 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add663 = add nsw i32 %566, %567
  %idxprom664 = sext i32 %add663 to i64
  %arrayidx665 = getelementptr inbounds %struct.complex, ptr %565, i64 %idxprom664
  %568 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call666 = call i32 @cgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %556, ptr noundef %q__1, ptr noundef %arrayidx657, ptr noundef %560, ptr noundef %arrayidx662, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx665, ptr noundef %568)
  br label %if.end667

if.end667:                                        ; preds = %if.then650, %if.then648
  %569 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %570 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom668 = sext i32 %570 to i64
  %arrayidx669 = getelementptr inbounds i32, ptr %569, i64 %idxprom668
  %571 = load i32, ptr %arrayidx669, align 4, !tbaa !8
  store i32 %571, ptr %kp, align 4, !tbaa !8
  %572 = load i32, ptr %kp, align 4, !tbaa !8
  %573 = load i32, ptr %k, align 4, !tbaa !8
  %cmp670 = icmp ne i32 %572, %573
  br i1 %cmp670, label %if.then671, label %if.end679

if.then671:                                       ; preds = %if.end667
  %574 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %575 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %576 = load i32, ptr %k, align 4, !tbaa !8
  %577 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add672 = add nsw i32 %576, %577
  %idxprom673 = sext i32 %add672 to i64
  %arrayidx674 = getelementptr inbounds %struct.complex, ptr %575, i64 %idxprom673
  %578 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %579 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %580 = load i32, ptr %kp, align 4, !tbaa !8
  %581 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add675 = add nsw i32 %580, %581
  %idxprom676 = sext i32 %add675 to i64
  %arrayidx677 = getelementptr inbounds %struct.complex, ptr %579, i64 %idxprom676
  %582 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call678 = call i32 @cswap_(ptr noundef %574, ptr noundef %arrayidx674, ptr noundef %578, ptr noundef %arrayidx677, ptr noundef %582)
  br label %if.end679

if.end679:                                        ; preds = %if.then671, %if.end667
  %583 = load i32, ptr %k, align 4, !tbaa !8
  %dec680 = add nsw i32 %583, -1
  store i32 %dec680, ptr %k, align 4, !tbaa !8
  br label %if.end749

if.else681:                                       ; preds = %if.end644
  %584 = load i32, ptr %k, align 4, !tbaa !8
  %585 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %586 = load i32, ptr %585, align 4, !tbaa !8
  %cmp682 = icmp slt i32 %584, %586
  br i1 %cmp682, label %if.then683, label %if.end718

if.then683:                                       ; preds = %if.else681
  %587 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %588 = load i32, ptr %587, align 4, !tbaa !8
  %589 = load i32, ptr %k, align 4, !tbaa !8
  %sub684 = sub nsw i32 %588, %589
  store i32 %sub684, ptr %i__1, align 4, !tbaa !8
  %r685 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r685, align 4, !tbaa !10
  %i686 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i686, align 4, !tbaa !13
  %590 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %591 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %592 = load i32, ptr %k, align 4, !tbaa !8
  %add687 = add nsw i32 %592, 1
  %593 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add688 = add nsw i32 %add687, %593
  %idxprom689 = sext i32 %add688 to i64
  %arrayidx690 = getelementptr inbounds %struct.complex, ptr %591, i64 %idxprom689
  %594 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %595 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %596 = load i32, ptr %k, align 4, !tbaa !8
  %add691 = add nsw i32 %596, 1
  %597 = load i32, ptr %k, align 4, !tbaa !8
  %598 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul692 = mul nsw i32 %597, %598
  %add693 = add nsw i32 %add691, %mul692
  %idxprom694 = sext i32 %add693 to i64
  %arrayidx695 = getelementptr inbounds %struct.complex, ptr %595, i64 %idxprom694
  %599 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %600 = load i32, ptr %k, align 4, !tbaa !8
  %601 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add696 = add nsw i32 %600, %601
  %idxprom697 = sext i32 %add696 to i64
  %arrayidx698 = getelementptr inbounds %struct.complex, ptr %599, i64 %idxprom697
  %602 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call699 = call i32 @cgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %590, ptr noundef %q__1, ptr noundef %arrayidx690, ptr noundef %594, ptr noundef %arrayidx695, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx698, ptr noundef %602)
  %603 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %604 = load i32, ptr %603, align 4, !tbaa !8
  %605 = load i32, ptr %k, align 4, !tbaa !8
  %sub700 = sub nsw i32 %604, %605
  store i32 %sub700, ptr %i__1, align 4, !tbaa !8
  %r701 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r701, align 4, !tbaa !10
  %i702 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i702, align 4, !tbaa !13
  %606 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %607 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %608 = load i32, ptr %k, align 4, !tbaa !8
  %add703 = add nsw i32 %608, 1
  %609 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add704 = add nsw i32 %add703, %609
  %idxprom705 = sext i32 %add704 to i64
  %arrayidx706 = getelementptr inbounds %struct.complex, ptr %607, i64 %idxprom705
  %610 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %611 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %612 = load i32, ptr %k, align 4, !tbaa !8
  %add707 = add nsw i32 %612, 1
  %613 = load i32, ptr %k, align 4, !tbaa !8
  %sub708 = sub nsw i32 %613, 1
  %614 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul709 = mul nsw i32 %sub708, %614
  %add710 = add nsw i32 %add707, %mul709
  %idxprom711 = sext i32 %add710 to i64
  %arrayidx712 = getelementptr inbounds %struct.complex, ptr %611, i64 %idxprom711
  %615 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %616 = load i32, ptr %k, align 4, !tbaa !8
  %sub713 = sub nsw i32 %616, 1
  %617 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add714 = add nsw i32 %sub713, %617
  %idxprom715 = sext i32 %add714 to i64
  %arrayidx716 = getelementptr inbounds %struct.complex, ptr %615, i64 %idxprom715
  %618 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call717 = call i32 @cgemv_(ptr noundef @.str.3, ptr noundef %i__1, ptr noundef %606, ptr noundef %q__1, ptr noundef %arrayidx706, ptr noundef %610, ptr noundef %arrayidx712, ptr noundef @c__1, ptr noundef @c_b1, ptr noundef %arrayidx716, ptr noundef %618)
  br label %if.end718

if.end718:                                        ; preds = %if.then683, %if.else681
  %619 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %620 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom719 = sext i32 %620 to i64
  %arrayidx720 = getelementptr inbounds i32, ptr %619, i64 %idxprom719
  %621 = load i32, ptr %arrayidx720, align 4, !tbaa !8
  %sub721 = sub nsw i32 0, %621
  store i32 %sub721, ptr %kp, align 4, !tbaa !8
  %622 = load i32, ptr %kp, align 4, !tbaa !8
  %623 = load i32, ptr %k, align 4, !tbaa !8
  %cmp722 = icmp ne i32 %622, %623
  br i1 %cmp722, label %if.then723, label %if.end731

if.then723:                                       ; preds = %if.end718
  %624 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %625 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %626 = load i32, ptr %k, align 4, !tbaa !8
  %627 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add724 = add nsw i32 %626, %627
  %idxprom725 = sext i32 %add724 to i64
  %arrayidx726 = getelementptr inbounds %struct.complex, ptr %625, i64 %idxprom725
  %628 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %629 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %630 = load i32, ptr %kp, align 4, !tbaa !8
  %631 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add727 = add nsw i32 %630, %631
  %idxprom728 = sext i32 %add727 to i64
  %arrayidx729 = getelementptr inbounds %struct.complex, ptr %629, i64 %idxprom728
  %632 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call730 = call i32 @cswap_(ptr noundef %624, ptr noundef %arrayidx726, ptr noundef %628, ptr noundef %arrayidx729, ptr noundef %632)
  br label %if.end731

if.end731:                                        ; preds = %if.then723, %if.end718
  %633 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %634 = load i32, ptr %k, align 4, !tbaa !8
  %sub732 = sub nsw i32 %634, 1
  %idxprom733 = sext i32 %sub732 to i64
  %arrayidx734 = getelementptr inbounds i32, ptr %633, i64 %idxprom733
  %635 = load i32, ptr %arrayidx734, align 4, !tbaa !8
  %sub735 = sub nsw i32 0, %635
  store i32 %sub735, ptr %kp, align 4, !tbaa !8
  %636 = load i32, ptr %kp, align 4, !tbaa !8
  %637 = load i32, ptr %k, align 4, !tbaa !8
  %sub736 = sub nsw i32 %637, 1
  %cmp737 = icmp ne i32 %636, %sub736
  br i1 %cmp737, label %if.then738, label %if.end747

if.then738:                                       ; preds = %if.end731
  %638 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %639 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %640 = load i32, ptr %k, align 4, !tbaa !8
  %sub739 = sub nsw i32 %640, 1
  %641 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add740 = add nsw i32 %sub739, %641
  %idxprom741 = sext i32 %add740 to i64
  %arrayidx742 = getelementptr inbounds %struct.complex, ptr %639, i64 %idxprom741
  %642 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %643 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %644 = load i32, ptr %kp, align 4, !tbaa !8
  %645 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add743 = add nsw i32 %644, %645
  %idxprom744 = sext i32 %add743 to i64
  %arrayidx745 = getelementptr inbounds %struct.complex, ptr %643, i64 %idxprom744
  %646 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call746 = call i32 @cswap_(ptr noundef %638, ptr noundef %arrayidx742, ptr noundef %642, ptr noundef %arrayidx745, ptr noundef %646)
  br label %if.end747

if.end747:                                        ; preds = %if.then738, %if.end731
  %647 = load i32, ptr %k, align 4, !tbaa !8
  %add748 = add nsw i32 %647, -2
  store i32 %add748, ptr %k, align 4, !tbaa !8
  br label %if.end749

if.end749:                                        ; preds = %if.end747, %if.end679
  br label %L90

L100:                                             ; preds = %if.then643
  br label %if.end750

if.end750:                                        ; preds = %L100, %L50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end750, %if.then36, %if.then31
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %denom) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %akm1k) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bkm1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %akm1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %bk) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ak) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #4
  %648 = load i32, ptr %retval, align 4
  ret i32 %648
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @cswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cgeru_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @cladiv_f2c_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @cgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 4}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 4}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
