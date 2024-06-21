; ModuleID = 'samples/584.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dgelsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"DGELSX\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@c__0 = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@c_b13 = internal global double 0.000000e+00, align 8
@c__2 = internal global i32 2, align 4
@c__1 = internal global i32 1, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c_b36 = internal global double 1.000000e+00, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"U\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dgelsx_(ptr noundef %m, ptr noundef %n, ptr noundef %nrhs, ptr noundef %a, ptr noundef %lda, ptr noundef %b, ptr noundef %ldb, ptr noundef %jpvt, ptr noundef %rcond, ptr noundef %rank, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %nrhs.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %jpvt.addr = alloca ptr, align 8
  %rcond.addr = alloca ptr, align 8
  %rank.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %d__1 = alloca double, align 8
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  %s1 = alloca double, align 8
  %s2 = alloca double, align 8
  %t1 = alloca double, align 8
  %t2 = alloca double, align 8
  %mn = alloca i32, align 4
  %anrm = alloca double, align 8
  %bnrm = alloca double, align 8
  %smin = alloca double, align 8
  %smax = alloca double, align 8
  %iascl = alloca i32, align 4
  %ibscl = alloca i32, align 4
  %ismin = alloca i32, align 4
  %ismax = alloca i32, align 4
  %bignum = alloca double, align 8
  %sminpr = alloca double, align 8
  %smaxpr = alloca double, align 8
  %smlnum = alloca double, align 8
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x15 = alloca i32, align 4
  %_y16 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %_x26 = alloca i32, align 4
  %_y27 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %_x34 = alloca i32, align 4
  %_y35 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x51 = alloca i32, align 4
  %_y52 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  %_x59 = alloca i32, align 4
  %_y60 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %_x91 = alloca i32, align 4
  %_y92 = alloca i32, align 4
  %tmp93 = alloca i32, align 4
  %_x155 = alloca i32, align 4
  %_y156 = alloca i32, align 4
  %tmp157 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %nrhs, ptr %nrhs.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %jpvt, ptr %jpvt.addr, align 8, !tbaa !4
  store ptr %rcond, ptr %rcond.addr, align 8, !tbaa !4
  store ptr %rank, ptr %rank.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %c2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %t2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %mn) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %anrm) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bnrm) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %smin) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %smax) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iascl) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ibscl) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ismin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ismax) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %bignum) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %sminpr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %smaxpr) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %smlnum) #3
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
  %add.ptr = getelementptr inbounds double, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %6, ptr %b_dim1, align 4, !tbaa !8
  %7 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %b_offset, align 4, !tbaa !8
  %8 = load i32, ptr %b_offset, align 4, !tbaa !8
  %9 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds double, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %10 = load ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %12 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %13 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %13, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %14 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  store i32 %15, ptr %_y, align 4, !tbaa !8
  %16 = load i32, ptr %_x, align 4, !tbaa !8
  %17 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %20 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %20, ptr %mn, align 4, !tbaa !8
  %21 = load i32, ptr %mn, align 4, !tbaa !8
  %add6 = add nsw i32 %21, 1
  store i32 %add6, ptr %ismin, align 4, !tbaa !8
  %22 = load i32, ptr %mn, align 4, !tbaa !8
  %shl = shl i32 %22, 1
  %add7 = add nsw i32 %shl, 1
  store i32 %add7, ptr %ismax, align 4, !tbaa !8
  %23 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %23, align 4, !tbaa !8
  %24 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %25 = load i32, ptr %24, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %25, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %26, align 4, !tbaa !8
  br label %if.end47

if.else:                                          ; preds = %cond.end
  %27 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %cmp9 = icmp slt i32 %28, 0
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  %29 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %29, align 4, !tbaa !8
  br label %if.end46

if.else11:                                        ; preds = %if.else
  %30 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %31 = load i32, ptr %30, align 4, !tbaa !8
  %cmp12 = icmp slt i32 %31, 0
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else11
  %32 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %32, align 4, !tbaa !8
  br label %if.end45

if.else14:                                        ; preds = %if.else11
  %33 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %34 = load i32, ptr %33, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x15) #3
  store i32 1, ptr %_x15, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y16) #3
  %35 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  store i32 %36, ptr %_y16, align 4, !tbaa !8
  %37 = load i32, ptr %_x15, align 4, !tbaa !8
  %38 = load i32, ptr %_y16, align 4, !tbaa !8
  %cmp18 = icmp sgt i32 %37, %38
  br i1 %cmp18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %if.else14
  %39 = load i32, ptr %_x15, align 4, !tbaa !8
  br label %cond.end21

cond.false20:                                     ; preds = %if.else14
  %40 = load i32, ptr %_y16, align 4, !tbaa !8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i32 [ %39, %cond.true19 ], [ %40, %cond.false20 ]
  store i32 %cond22, ptr %tmp17, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x15) #3
  %41 = load i32, ptr %tmp17, align 4, !tbaa !8
  %cmp23 = icmp slt i32 %34, %41
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %cond.end21
  %42 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %42, align 4, !tbaa !8
  br label %if.end44

if.else25:                                        ; preds = %cond.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x26) #3
  store i32 1, ptr %_x26, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y27) #3
  %43 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  store i32 %44, ptr %_y27, align 4, !tbaa !8
  %45 = load i32, ptr %_x26, align 4, !tbaa !8
  %46 = load i32, ptr %_y27, align 4, !tbaa !8
  %cmp29 = icmp sgt i32 %45, %46
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %if.else25
  %47 = load i32, ptr %_x26, align 4, !tbaa !8
  br label %cond.end32

cond.false31:                                     ; preds = %if.else25
  %48 = load i32, ptr %_y27, align 4, !tbaa !8
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %cond.true30
  %cond33 = phi i32 [ %47, %cond.true30 ], [ %48, %cond.false31 ]
  store i32 %cond33, ptr %tmp28, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y27) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x26) #3
  %49 = load i32, ptr %tmp28, align 4, !tbaa !8
  store i32 %49, ptr %i__1, align 4, !tbaa !8
  %50 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x34) #3
  %52 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %52, ptr %_x34, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y35) #3
  %53 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %54 = load i32, ptr %53, align 4, !tbaa !8
  store i32 %54, ptr %_y35, align 4, !tbaa !8
  %55 = load i32, ptr %_x34, align 4, !tbaa !8
  %56 = load i32, ptr %_y35, align 4, !tbaa !8
  %cmp37 = icmp sgt i32 %55, %56
  br i1 %cmp37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end32
  %57 = load i32, ptr %_x34, align 4, !tbaa !8
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end32
  %58 = load i32, ptr %_y35, align 4, !tbaa !8
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %cond.true38
  %cond41 = phi i32 [ %57, %cond.true38 ], [ %58, %cond.false39 ]
  store i32 %cond41, ptr %tmp36, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y35) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x34) #3
  %59 = load i32, ptr %tmp36, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %51, %59
  br i1 %cmp42, label %if.then43, label %if.end

if.then43:                                        ; preds = %cond.end40
  %60 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %60, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then43, %cond.end40
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then24
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then13
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then10
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then
  %61 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %cmp48 = icmp ne i32 %62, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end47
  %63 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %sub = sub nsw i32 0, %64
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x51) #3
  %65 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  store i32 %66, ptr %_x51, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y52) #3
  %67 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  store i32 %68, ptr %_y52, align 4, !tbaa !8
  %69 = load i32, ptr %_x51, align 4, !tbaa !8
  %70 = load i32, ptr %_y52, align 4, !tbaa !8
  %cmp54 = icmp slt i32 %69, %70
  br i1 %cmp54, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %if.end50
  %71 = load i32, ptr %_x51, align 4, !tbaa !8
  br label %cond.end57

cond.false56:                                     ; preds = %if.end50
  %72 = load i32, ptr %_y52, align 4, !tbaa !8
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %cond.true55
  %cond58 = phi i32 [ %71, %cond.true55 ], [ %72, %cond.false56 ]
  store i32 %cond58, ptr %tmp53, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y52) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x51) #3
  %73 = load i32, ptr %tmp53, align 4, !tbaa !8
  store i32 %73, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x59) #3
  %74 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %74, ptr %_x59, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y60) #3
  %75 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %76 = load i32, ptr %75, align 4, !tbaa !8
  store i32 %76, ptr %_y60, align 4, !tbaa !8
  %77 = load i32, ptr %_x59, align 4, !tbaa !8
  %78 = load i32, ptr %_y60, align 4, !tbaa !8
  %cmp62 = icmp slt i32 %77, %78
  br i1 %cmp62, label %cond.true63, label %cond.false64

cond.true63:                                      ; preds = %cond.end57
  %79 = load i32, ptr %_x59, align 4, !tbaa !8
  br label %cond.end65

cond.false64:                                     ; preds = %cond.end57
  %80 = load i32, ptr %_y60, align 4, !tbaa !8
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false64, %cond.true63
  %cond66 = phi i32 [ %79, %cond.true63 ], [ %80, %cond.false64 ]
  store i32 %cond66, ptr %tmp61, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y60) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x59) #3
  %81 = load i32, ptr %tmp61, align 4, !tbaa !8
  %cmp67 = icmp eq i32 %81, 0
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %cond.end65
  %82 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  store i32 0, ptr %82, align 4, !tbaa !8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end69:                                         ; preds = %cond.end65
  %call70 = call double @dlamch_(ptr noundef @.str.1)
  %call71 = call double @dlamch_(ptr noundef @.str.2)
  %div = fdiv double %call70, %call71
  store double %div, ptr %smlnum, align 8, !tbaa !10
  %83 = load double, ptr %smlnum, align 8, !tbaa !10
  %div72 = fdiv double 1.000000e+00, %83
  store double %div72, ptr %bignum, align 8, !tbaa !10
  %call73 = call i32 @dlabad_(ptr noundef %smlnum, ptr noundef %bignum)
  %84 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %85 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %87 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom = sext i32 %87 to i64
  %arrayidx = getelementptr inbounds double, ptr %86, i64 %idxprom
  %88 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx74 = getelementptr inbounds double, ptr %89, i64 1
  %call75 = call double @dlange_(ptr noundef @.str.3, ptr noundef %84, ptr noundef %85, ptr noundef %arrayidx, ptr noundef %88, ptr noundef %arrayidx74)
  store double %call75, ptr %anrm, align 8, !tbaa !10
  store i32 0, ptr %iascl, align 4, !tbaa !8
  %90 = load double, ptr %anrm, align 8, !tbaa !10
  %cmp76 = fcmp ogt double %90, 0.000000e+00
  br i1 %cmp76, label %land.lhs.true, label %if.else82

land.lhs.true:                                    ; preds = %if.end69
  %91 = load double, ptr %anrm, align 8, !tbaa !10
  %92 = load double, ptr %smlnum, align 8, !tbaa !10
  %cmp77 = fcmp olt double %91, %92
  br i1 %cmp77, label %if.then78, label %if.else82

if.then78:                                        ; preds = %land.lhs.true
  %93 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %94 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %95 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %96 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom79 = sext i32 %96 to i64
  %arrayidx80 = getelementptr inbounds double, ptr %95, i64 %idxprom79
  %97 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %98 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call81 = call i32 @dlascl_(ptr noundef @.str.4, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %smlnum, ptr noundef %93, ptr noundef %94, ptr noundef %arrayidx80, ptr noundef %97, ptr noundef %98)
  store i32 1, ptr %iascl, align 4, !tbaa !8
  br label %if.end104

if.else82:                                        ; preds = %land.lhs.true, %if.end69
  %99 = load double, ptr %anrm, align 8, !tbaa !10
  %100 = load double, ptr %bignum, align 8, !tbaa !10
  %cmp83 = fcmp ogt double %99, %100
  br i1 %cmp83, label %if.then84, label %if.else88

if.then84:                                        ; preds = %if.else82
  %101 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %102 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %103 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %104 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom85 = sext i32 %104 to i64
  %arrayidx86 = getelementptr inbounds double, ptr %103, i64 %idxprom85
  %105 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %106 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call87 = call i32 @dlascl_(ptr noundef @.str.4, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %bignum, ptr noundef %101, ptr noundef %102, ptr noundef %arrayidx86, ptr noundef %105, ptr noundef %106)
  store i32 2, ptr %iascl, align 4, !tbaa !8
  br label %if.end103

if.else88:                                        ; preds = %if.else82
  %107 = load double, ptr %anrm, align 8, !tbaa !10
  %cmp89 = fcmp oeq double %107, 0.000000e+00
  br i1 %cmp89, label %if.then90, label %if.end102

if.then90:                                        ; preds = %if.else88
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x91) #3
  %108 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %109 = load i32, ptr %108, align 4, !tbaa !8
  store i32 %109, ptr %_x91, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y92) #3
  %110 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %111 = load i32, ptr %110, align 4, !tbaa !8
  store i32 %111, ptr %_y92, align 4, !tbaa !8
  %112 = load i32, ptr %_x91, align 4, !tbaa !8
  %113 = load i32, ptr %_y92, align 4, !tbaa !8
  %cmp94 = icmp sgt i32 %112, %113
  br i1 %cmp94, label %cond.true95, label %cond.false96

cond.true95:                                      ; preds = %if.then90
  %114 = load i32, ptr %_x91, align 4, !tbaa !8
  br label %cond.end97

cond.false96:                                     ; preds = %if.then90
  %115 = load i32, ptr %_y92, align 4, !tbaa !8
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %cond.true95
  %cond98 = phi i32 [ %114, %cond.true95 ], [ %115, %cond.false96 ]
  store i32 %cond98, ptr %tmp93, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y92) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x91) #3
  %116 = load i32, ptr %tmp93, align 4, !tbaa !8
  store i32 %116, ptr %i__1, align 4, !tbaa !8
  %117 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %118 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %119 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom99 = sext i32 %119 to i64
  %arrayidx100 = getelementptr inbounds double, ptr %118, i64 %idxprom99
  %120 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call101 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %i__1, ptr noundef %117, ptr noundef @c_b13, ptr noundef @c_b13, ptr noundef %arrayidx100, ptr noundef %120)
  %121 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  store i32 0, ptr %121, align 4, !tbaa !8
  br label %L100

if.end102:                                        ; preds = %if.else88
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then84
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then78
  %122 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %125 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom105 = sext i32 %125 to i64
  %arrayidx106 = getelementptr inbounds double, ptr %124, i64 %idxprom105
  %126 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %127 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx107 = getelementptr inbounds double, ptr %127, i64 1
  %call108 = call double @dlange_(ptr noundef @.str.3, ptr noundef %122, ptr noundef %123, ptr noundef %arrayidx106, ptr noundef %126, ptr noundef %arrayidx107)
  store double %call108, ptr %bnrm, align 8, !tbaa !10
  store i32 0, ptr %ibscl, align 4, !tbaa !8
  %128 = load double, ptr %bnrm, align 8, !tbaa !10
  %cmp109 = fcmp ogt double %128, 0.000000e+00
  br i1 %cmp109, label %land.lhs.true110, label %if.else116

land.lhs.true110:                                 ; preds = %if.end104
  %129 = load double, ptr %bnrm, align 8, !tbaa !10
  %130 = load double, ptr %smlnum, align 8, !tbaa !10
  %cmp111 = fcmp olt double %129, %130
  br i1 %cmp111, label %if.then112, label %if.else116

if.then112:                                       ; preds = %land.lhs.true110
  %131 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %132 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %133 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %134 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom113 = sext i32 %134 to i64
  %arrayidx114 = getelementptr inbounds double, ptr %133, i64 %idxprom113
  %135 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %136 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call115 = call i32 @dlascl_(ptr noundef @.str.4, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %bnrm, ptr noundef %smlnum, ptr noundef %131, ptr noundef %132, ptr noundef %arrayidx114, ptr noundef %135, ptr noundef %136)
  store i32 1, ptr %ibscl, align 4, !tbaa !8
  br label %if.end123

if.else116:                                       ; preds = %land.lhs.true110, %if.end104
  %137 = load double, ptr %bnrm, align 8, !tbaa !10
  %138 = load double, ptr %bignum, align 8, !tbaa !10
  %cmp117 = fcmp ogt double %137, %138
  br i1 %cmp117, label %if.then118, label %if.end122

if.then118:                                       ; preds = %if.else116
  %139 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %140 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %141 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %142 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom119 = sext i32 %142 to i64
  %arrayidx120 = getelementptr inbounds double, ptr %141, i64 %idxprom119
  %143 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call121 = call i32 @dlascl_(ptr noundef @.str.4, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %bnrm, ptr noundef %bignum, ptr noundef %139, ptr noundef %140, ptr noundef %arrayidx120, ptr noundef %143, ptr noundef %144)
  store i32 2, ptr %ibscl, align 4, !tbaa !8
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.else116
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then112
  %145 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %146 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %147 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %148 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom124 = sext i32 %148 to i64
  %arrayidx125 = getelementptr inbounds double, ptr %147, i64 %idxprom124
  %149 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %150 = load ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %arrayidx126 = getelementptr inbounds i32, ptr %150, i64 1
  %151 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx127 = getelementptr inbounds double, ptr %151, i64 1
  %152 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %153 = load i32, ptr %mn, align 4, !tbaa !8
  %add128 = add nsw i32 %153, 1
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds double, ptr %152, i64 %idxprom129
  %154 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call131 = call i32 @dgeqpf_(ptr noundef %145, ptr noundef %146, ptr noundef %arrayidx125, ptr noundef %149, ptr noundef %arrayidx126, ptr noundef %arrayidx127, ptr noundef %arrayidx130, ptr noundef %154)
  %155 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %156 = load i32, ptr %ismin, align 4, !tbaa !8
  %idxprom132 = sext i32 %156 to i64
  %arrayidx133 = getelementptr inbounds double, ptr %155, i64 %idxprom132
  store double 1.000000e+00, ptr %arrayidx133, align 8, !tbaa !10
  %157 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %158 = load i32, ptr %ismax, align 4, !tbaa !8
  %idxprom134 = sext i32 %158 to i64
  %arrayidx135 = getelementptr inbounds double, ptr %157, i64 %idxprom134
  store double 1.000000e+00, ptr %arrayidx135, align 8, !tbaa !10
  %159 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %160 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add136 = add nsw i32 %160, 1
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds double, ptr %159, i64 %idxprom137
  %161 = load double, ptr %arrayidx138, align 8, !tbaa !10
  store double %161, ptr %d__1, align 8, !tbaa !10
  %162 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp139 = fcmp oge double %162, 0.000000e+00
  br i1 %cmp139, label %cond.true140, label %cond.false141

cond.true140:                                     ; preds = %if.end123
  %163 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end142

cond.false141:                                    ; preds = %if.end123
  %164 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg = fneg double %164
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false141, %cond.true140
  %cond143 = phi double [ %163, %cond.true140 ], [ %fneg, %cond.false141 ]
  store double %cond143, ptr %smax, align 8, !tbaa !10
  %165 = load double, ptr %smax, align 8, !tbaa !10
  store double %165, ptr %smin, align 8, !tbaa !10
  %166 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %167 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add144 = add nsw i32 %167, 1
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %166, i64 %idxprom145
  %168 = load double, ptr %arrayidx146, align 8, !tbaa !10
  store double %168, ptr %d__1, align 8, !tbaa !10
  %169 = load double, ptr %d__1, align 8, !tbaa !10
  %cmp147 = fcmp oge double %169, 0.000000e+00
  br i1 %cmp147, label %cond.true148, label %cond.false149

cond.true148:                                     ; preds = %cond.end142
  %170 = load double, ptr %d__1, align 8, !tbaa !10
  br label %cond.end151

cond.false149:                                    ; preds = %cond.end142
  %171 = load double, ptr %d__1, align 8, !tbaa !10
  %fneg150 = fneg double %171
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false149, %cond.true148
  %cond152 = phi double [ %170, %cond.true148 ], [ %fneg150, %cond.false149 ]
  %cmp153 = fcmp oeq double %cond152, 0.000000e+00
  br i1 %cmp153, label %if.then154, label %if.else166

if.then154:                                       ; preds = %cond.end151
  %172 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  store i32 0, ptr %172, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x155) #3
  %173 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %174 = load i32, ptr %173, align 4, !tbaa !8
  store i32 %174, ptr %_x155, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y156) #3
  %175 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %176 = load i32, ptr %175, align 4, !tbaa !8
  store i32 %176, ptr %_y156, align 4, !tbaa !8
  %177 = load i32, ptr %_x155, align 4, !tbaa !8
  %178 = load i32, ptr %_y156, align 4, !tbaa !8
  %cmp158 = icmp sgt i32 %177, %178
  br i1 %cmp158, label %cond.true159, label %cond.false160

cond.true159:                                     ; preds = %if.then154
  %179 = load i32, ptr %_x155, align 4, !tbaa !8
  br label %cond.end161

cond.false160:                                    ; preds = %if.then154
  %180 = load i32, ptr %_y156, align 4, !tbaa !8
  br label %cond.end161

cond.end161:                                      ; preds = %cond.false160, %cond.true159
  %cond162 = phi i32 [ %179, %cond.true159 ], [ %180, %cond.false160 ]
  store i32 %cond162, ptr %tmp157, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y156) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x155) #3
  %181 = load i32, ptr %tmp157, align 4, !tbaa !8
  store i32 %181, ptr %i__1, align 4, !tbaa !8
  %182 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %183 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %184 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom163 = sext i32 %184 to i64
  %arrayidx164 = getelementptr inbounds double, ptr %183, i64 %idxprom163
  %185 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call165 = call i32 @dlaset_(ptr noundef @.str.5, ptr noundef %i__1, ptr noundef %182, ptr noundef @c_b13, ptr noundef @c_b13, ptr noundef %arrayidx164, ptr noundef %185)
  br label %L100

if.else166:                                       ; preds = %cond.end151
  %186 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  store i32 1, ptr %186, align 4, !tbaa !8
  br label %if.end167

if.end167:                                        ; preds = %if.else166
  br label %L10

L10:                                              ; preds = %for.end, %if.end167
  %187 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %188 = load i32, ptr %187, align 4, !tbaa !8
  %189 = load i32, ptr %mn, align 4, !tbaa !8
  %cmp168 = icmp slt i32 %188, %189
  br i1 %cmp168, label %if.then169, label %if.end222

if.then169:                                       ; preds = %L10
  %190 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %191 = load i32, ptr %190, align 4, !tbaa !8
  %add170 = add nsw i32 %191, 1
  store i32 %add170, ptr %i__, align 4, !tbaa !8
  %192 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %193 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %194 = load i32, ptr %ismin, align 4, !tbaa !8
  %idxprom171 = sext i32 %194 to i64
  %arrayidx172 = getelementptr inbounds double, ptr %193, i64 %idxprom171
  %195 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %196 = load i32, ptr %i__, align 4, !tbaa !8
  %197 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul = mul nsw i32 %196, %197
  %add173 = add nsw i32 %mul, 1
  %idxprom174 = sext i32 %add173 to i64
  %arrayidx175 = getelementptr inbounds double, ptr %195, i64 %idxprom174
  %198 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %199 = load i32, ptr %i__, align 4, !tbaa !8
  %200 = load i32, ptr %i__, align 4, !tbaa !8
  %201 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul176 = mul nsw i32 %200, %201
  %add177 = add nsw i32 %199, %mul176
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds double, ptr %198, i64 %idxprom178
  %call180 = call i32 @dlaic1_(ptr noundef @c__2, ptr noundef %192, ptr noundef %arrayidx172, ptr noundef %smin, ptr noundef %arrayidx175, ptr noundef %arrayidx179, ptr noundef %sminpr, ptr noundef %s1, ptr noundef %c1)
  %202 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %203 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %204 = load i32, ptr %ismax, align 4, !tbaa !8
  %idxprom181 = sext i32 %204 to i64
  %arrayidx182 = getelementptr inbounds double, ptr %203, i64 %idxprom181
  %205 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %206 = load i32, ptr %i__, align 4, !tbaa !8
  %207 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul183 = mul nsw i32 %206, %207
  %add184 = add nsw i32 %mul183, 1
  %idxprom185 = sext i32 %add184 to i64
  %arrayidx186 = getelementptr inbounds double, ptr %205, i64 %idxprom185
  %208 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %209 = load i32, ptr %i__, align 4, !tbaa !8
  %210 = load i32, ptr %i__, align 4, !tbaa !8
  %211 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul187 = mul nsw i32 %210, %211
  %add188 = add nsw i32 %209, %mul187
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds double, ptr %208, i64 %idxprom189
  %call191 = call i32 @dlaic1_(ptr noundef @c__1, ptr noundef %202, ptr noundef %arrayidx182, ptr noundef %smax, ptr noundef %arrayidx186, ptr noundef %arrayidx190, ptr noundef %smaxpr, ptr noundef %s2, ptr noundef %c2)
  %212 = load double, ptr %smaxpr, align 8, !tbaa !10
  %213 = load ptr, ptr %rcond.addr, align 8, !tbaa !4
  %214 = load double, ptr %213, align 8, !tbaa !10
  %mul192 = fmul double %212, %214
  %215 = load double, ptr %sminpr, align 8, !tbaa !10
  %cmp193 = fcmp ole double %mul192, %215
  br i1 %cmp193, label %if.then194, label %if.end221

if.then194:                                       ; preds = %if.then169
  %216 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %217 = load i32, ptr %216, align 4, !tbaa !8
  store i32 %217, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then194
  %218 = load i32, ptr %i__, align 4, !tbaa !8
  %219 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp195 = icmp sle i32 %218, %219
  br i1 %cmp195, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %220 = load double, ptr %s1, align 8, !tbaa !10
  %221 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %222 = load i32, ptr %ismin, align 4, !tbaa !8
  %223 = load i32, ptr %i__, align 4, !tbaa !8
  %add196 = add nsw i32 %222, %223
  %sub197 = sub nsw i32 %add196, 1
  %idxprom198 = sext i32 %sub197 to i64
  %arrayidx199 = getelementptr inbounds double, ptr %221, i64 %idxprom198
  %224 = load double, ptr %arrayidx199, align 8, !tbaa !10
  %mul200 = fmul double %220, %224
  %225 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %226 = load i32, ptr %ismin, align 4, !tbaa !8
  %227 = load i32, ptr %i__, align 4, !tbaa !8
  %add201 = add nsw i32 %226, %227
  %sub202 = sub nsw i32 %add201, 1
  %idxprom203 = sext i32 %sub202 to i64
  %arrayidx204 = getelementptr inbounds double, ptr %225, i64 %idxprom203
  store double %mul200, ptr %arrayidx204, align 8, !tbaa !10
  %228 = load double, ptr %s2, align 8, !tbaa !10
  %229 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %230 = load i32, ptr %ismax, align 4, !tbaa !8
  %231 = load i32, ptr %i__, align 4, !tbaa !8
  %add205 = add nsw i32 %230, %231
  %sub206 = sub nsw i32 %add205, 1
  %idxprom207 = sext i32 %sub206 to i64
  %arrayidx208 = getelementptr inbounds double, ptr %229, i64 %idxprom207
  %232 = load double, ptr %arrayidx208, align 8, !tbaa !10
  %mul209 = fmul double %228, %232
  %233 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %234 = load i32, ptr %ismax, align 4, !tbaa !8
  %235 = load i32, ptr %i__, align 4, !tbaa !8
  %add210 = add nsw i32 %234, %235
  %sub211 = sub nsw i32 %add210, 1
  %idxprom212 = sext i32 %sub211 to i64
  %arrayidx213 = getelementptr inbounds double, ptr %233, i64 %idxprom212
  store double %mul209, ptr %arrayidx213, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %236 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %236, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %237 = load double, ptr %c1, align 8, !tbaa !10
  %238 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %239 = load i32, ptr %ismin, align 4, !tbaa !8
  %240 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %241 = load i32, ptr %240, align 4, !tbaa !8
  %add214 = add nsw i32 %239, %241
  %idxprom215 = sext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds double, ptr %238, i64 %idxprom215
  store double %237, ptr %arrayidx216, align 8, !tbaa !10
  %242 = load double, ptr %c2, align 8, !tbaa !10
  %243 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %244 = load i32, ptr %ismax, align 4, !tbaa !8
  %245 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %246 = load i32, ptr %245, align 4, !tbaa !8
  %add217 = add nsw i32 %244, %246
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds double, ptr %243, i64 %idxprom218
  store double %242, ptr %arrayidx219, align 8, !tbaa !10
  %247 = load double, ptr %sminpr, align 8, !tbaa !10
  store double %247, ptr %smin, align 8, !tbaa !10
  %248 = load double, ptr %smaxpr, align 8, !tbaa !10
  store double %248, ptr %smax, align 8, !tbaa !10
  %249 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %250 = load i32, ptr %249, align 4, !tbaa !8
  %inc220 = add nsw i32 %250, 1
  store i32 %inc220, ptr %249, align 4, !tbaa !8
  br label %L10

if.end221:                                        ; preds = %if.then169
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %L10
  %251 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %252 = load i32, ptr %251, align 4, !tbaa !8
  %253 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %254 = load i32, ptr %253, align 4, !tbaa !8
  %cmp223 = icmp slt i32 %252, %254
  br i1 %cmp223, label %if.then224, label %if.end231

if.then224:                                       ; preds = %if.end222
  %255 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %256 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %257 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %258 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom225 = sext i32 %258 to i64
  %arrayidx226 = getelementptr inbounds double, ptr %257, i64 %idxprom225
  %259 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %260 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %261 = load i32, ptr %mn, align 4, !tbaa !8
  %add227 = add nsw i32 %261, 1
  %idxprom228 = sext i32 %add227 to i64
  %arrayidx229 = getelementptr inbounds double, ptr %260, i64 %idxprom228
  %262 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call230 = call i32 @dtzrqf_(ptr noundef %255, ptr noundef %256, ptr noundef %arrayidx226, ptr noundef %259, ptr noundef %arrayidx229, ptr noundef %262)
  br label %if.end231

if.end231:                                        ; preds = %if.then224, %if.end222
  %263 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %264 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %265 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %266 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom232 = sext i32 %266 to i64
  %arrayidx233 = getelementptr inbounds double, ptr %265, i64 %idxprom232
  %267 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %268 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx234 = getelementptr inbounds double, ptr %268, i64 1
  %269 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %270 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom235 = sext i32 %270 to i64
  %arrayidx236 = getelementptr inbounds double, ptr %269, i64 %idxprom235
  %271 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %272 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %273 = load i32, ptr %mn, align 4, !tbaa !8
  %shl237 = shl i32 %273, 1
  %add238 = add nsw i32 %shl237, 1
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds double, ptr %272, i64 %idxprom239
  %274 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call241 = call i32 @dorm2r_(ptr noundef @.str.6, ptr noundef @.str.7, ptr noundef %263, ptr noundef %264, ptr noundef %mn, ptr noundef %arrayidx233, ptr noundef %267, ptr noundef %arrayidx234, ptr noundef %arrayidx236, ptr noundef %271, ptr noundef %arrayidx240, ptr noundef %274)
  %275 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %276 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %277 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %278 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom242 = sext i32 %278 to i64
  %arrayidx243 = getelementptr inbounds double, ptr %277, i64 %idxprom242
  %279 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %280 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %281 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom244 = sext i32 %281 to i64
  %arrayidx245 = getelementptr inbounds double, ptr %280, i64 %idxprom244
  %282 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %call246 = call i32 @dtrsm_(ptr noundef @.str.6, ptr noundef @.str.8, ptr noundef @.str.9, ptr noundef @.str.10, ptr noundef %275, ptr noundef %276, ptr noundef @c_b36, ptr noundef %arrayidx243, ptr noundef %279, ptr noundef %arrayidx245, ptr noundef %282)
  %283 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %284 = load i32, ptr %283, align 4, !tbaa !8
  store i32 %284, ptr %i__1, align 4, !tbaa !8
  %285 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %286 = load i32, ptr %285, align 4, !tbaa !8
  %add247 = add nsw i32 %286, 1
  store i32 %add247, ptr %i__, align 4, !tbaa !8
  br label %for.cond248

for.cond248:                                      ; preds = %for.inc261, %if.end231
  %287 = load i32, ptr %i__, align 4, !tbaa !8
  %288 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp249 = icmp sle i32 %287, %288
  br i1 %cmp249, label %for.body250, label %for.end263

for.body250:                                      ; preds = %for.cond248
  %289 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %290 = load i32, ptr %289, align 4, !tbaa !8
  store i32 %290, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond251

for.cond251:                                      ; preds = %for.inc258, %for.body250
  %291 = load i32, ptr %j, align 4, !tbaa !8
  %292 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp252 = icmp sle i32 %291, %292
  br i1 %cmp252, label %for.body253, label %for.end260

for.body253:                                      ; preds = %for.cond251
  %293 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %294 = load i32, ptr %i__, align 4, !tbaa !8
  %295 = load i32, ptr %j, align 4, !tbaa !8
  %296 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul254 = mul nsw i32 %295, %296
  %add255 = add nsw i32 %294, %mul254
  %idxprom256 = sext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds double, ptr %293, i64 %idxprom256
  store double 0.000000e+00, ptr %arrayidx257, align 8, !tbaa !10
  br label %for.inc258

for.inc258:                                       ; preds = %for.body253
  %297 = load i32, ptr %j, align 4, !tbaa !8
  %inc259 = add nsw i32 %297, 1
  store i32 %inc259, ptr %j, align 4, !tbaa !8
  br label %for.cond251, !llvm.loop !14

for.end260:                                       ; preds = %for.cond251
  br label %for.inc261

for.inc261:                                       ; preds = %for.end260
  %298 = load i32, ptr %i__, align 4, !tbaa !8
  %inc262 = add nsw i32 %298, 1
  store i32 %inc262, ptr %i__, align 4, !tbaa !8
  br label %for.cond248, !llvm.loop !15

for.end263:                                       ; preds = %for.cond248
  %299 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %300 = load i32, ptr %299, align 4, !tbaa !8
  %301 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %302 = load i32, ptr %301, align 4, !tbaa !8
  %cmp264 = icmp slt i32 %300, %302
  br i1 %cmp264, label %if.then265, label %if.end294

if.then265:                                       ; preds = %for.end263
  %303 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %304 = load i32, ptr %303, align 4, !tbaa !8
  store i32 %304, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond266

for.cond266:                                      ; preds = %for.inc291, %if.then265
  %305 = load i32, ptr %i__, align 4, !tbaa !8
  %306 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp267 = icmp sle i32 %305, %306
  br i1 %cmp267, label %for.body268, label %for.end293

for.body268:                                      ; preds = %for.cond266
  %307 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %308 = load i32, ptr %307, align 4, !tbaa !8
  %309 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %310 = load i32, ptr %309, align 4, !tbaa !8
  %sub269 = sub nsw i32 %308, %310
  %add270 = add nsw i32 %sub269, 1
  store i32 %add270, ptr %i__2, align 4, !tbaa !8
  %311 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %312 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %313 = load i32, ptr %i__, align 4, !tbaa !8
  %314 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %315 = load i32, ptr %314, align 4, !tbaa !8
  %add271 = add nsw i32 %315, 1
  %316 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul272 = mul nsw i32 %add271, %316
  %add273 = add nsw i32 %313, %mul272
  %idxprom274 = sext i32 %add273 to i64
  %arrayidx275 = getelementptr inbounds double, ptr %312, i64 %idxprom274
  %317 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %318 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %319 = load i32, ptr %mn, align 4, !tbaa !8
  %320 = load i32, ptr %i__, align 4, !tbaa !8
  %add276 = add nsw i32 %319, %320
  %idxprom277 = sext i32 %add276 to i64
  %arrayidx278 = getelementptr inbounds double, ptr %318, i64 %idxprom277
  %321 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %322 = load i32, ptr %i__, align 4, !tbaa !8
  %323 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add279 = add nsw i32 %322, %323
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds double, ptr %321, i64 %idxprom280
  %324 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %325 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %326 = load i32, ptr %325, align 4, !tbaa !8
  %add282 = add nsw i32 %326, 1
  %327 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %add283 = add nsw i32 %add282, %327
  %idxprom284 = sext i32 %add283 to i64
  %arrayidx285 = getelementptr inbounds double, ptr %324, i64 %idxprom284
  %328 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %329 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %330 = load i32, ptr %mn, align 4, !tbaa !8
  %shl286 = shl i32 %330, 1
  %add287 = add nsw i32 %shl286, 1
  %idxprom288 = sext i32 %add287 to i64
  %arrayidx289 = getelementptr inbounds double, ptr %329, i64 %idxprom288
  %call290 = call i32 @dlatzm_(ptr noundef @.str.6, ptr noundef %i__2, ptr noundef %311, ptr noundef %arrayidx275, ptr noundef %317, ptr noundef %arrayidx278, ptr noundef %arrayidx281, ptr noundef %arrayidx285, ptr noundef %328, ptr noundef %arrayidx289)
  br label %for.inc291

for.inc291:                                       ; preds = %for.body268
  %331 = load i32, ptr %i__, align 4, !tbaa !8
  %inc292 = add nsw i32 %331, 1
  store i32 %inc292, ptr %i__, align 4, !tbaa !8
  br label %for.cond266, !llvm.loop !16

for.end293:                                       ; preds = %for.cond266
  br label %if.end294

if.end294:                                        ; preds = %for.end293, %for.end263
  %332 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %333 = load i32, ptr %332, align 4, !tbaa !8
  store i32 %333, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %j, align 4, !tbaa !8
  br label %for.cond295

for.cond295:                                      ; preds = %for.inc367, %if.end294
  %334 = load i32, ptr %j, align 4, !tbaa !8
  %335 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp296 = icmp sle i32 %334, %335
  br i1 %cmp296, label %for.body297, label %for.end369

for.body297:                                      ; preds = %for.cond295
  %336 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %337 = load i32, ptr %336, align 4, !tbaa !8
  store i32 %337, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond298

for.cond298:                                      ; preds = %for.inc305, %for.body297
  %338 = load i32, ptr %i__, align 4, !tbaa !8
  %339 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp299 = icmp sle i32 %338, %339
  br i1 %cmp299, label %for.body300, label %for.end307

for.body300:                                      ; preds = %for.cond298
  %340 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %341 = load i32, ptr %mn, align 4, !tbaa !8
  %shl301 = shl i32 %341, 1
  %342 = load i32, ptr %i__, align 4, !tbaa !8
  %add302 = add nsw i32 %shl301, %342
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds double, ptr %340, i64 %idxprom303
  store double 1.000000e+00, ptr %arrayidx304, align 8, !tbaa !10
  br label %for.inc305

for.inc305:                                       ; preds = %for.body300
  %343 = load i32, ptr %i__, align 4, !tbaa !8
  %inc306 = add nsw i32 %343, 1
  store i32 %inc306, ptr %i__, align 4, !tbaa !8
  br label %for.cond298, !llvm.loop !17

for.end307:                                       ; preds = %for.cond298
  %344 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %345 = load i32, ptr %344, align 4, !tbaa !8
  store i32 %345, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond308

for.cond308:                                      ; preds = %for.inc364, %for.end307
  %346 = load i32, ptr %i__, align 4, !tbaa !8
  %347 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp309 = icmp sle i32 %346, %347
  br i1 %cmp309, label %for.body310, label %for.end366

for.body310:                                      ; preds = %for.cond308
  %348 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %349 = load i32, ptr %mn, align 4, !tbaa !8
  %shl311 = shl i32 %349, 1
  %350 = load i32, ptr %i__, align 4, !tbaa !8
  %add312 = add nsw i32 %shl311, %350
  %idxprom313 = sext i32 %add312 to i64
  %arrayidx314 = getelementptr inbounds double, ptr %348, i64 %idxprom313
  %351 = load double, ptr %arrayidx314, align 8, !tbaa !10
  %cmp315 = fcmp oeq double %351, 1.000000e+00
  br i1 %cmp315, label %if.then316, label %if.end363

if.then316:                                       ; preds = %for.body310
  %352 = load ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %353 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom317 = sext i32 %353 to i64
  %arrayidx318 = getelementptr inbounds i32, ptr %352, i64 %idxprom317
  %354 = load i32, ptr %arrayidx318, align 4, !tbaa !8
  %355 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp319 = icmp ne i32 %354, %355
  br i1 %cmp319, label %if.then320, label %if.end362

if.then320:                                       ; preds = %if.then316
  %356 = load i32, ptr %i__, align 4, !tbaa !8
  store i32 %356, ptr %k, align 4, !tbaa !8
  %357 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %358 = load i32, ptr %k, align 4, !tbaa !8
  %359 = load i32, ptr %j, align 4, !tbaa !8
  %360 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul321 = mul nsw i32 %359, %360
  %add322 = add nsw i32 %358, %mul321
  %idxprom323 = sext i32 %add322 to i64
  %arrayidx324 = getelementptr inbounds double, ptr %357, i64 %idxprom323
  %361 = load double, ptr %arrayidx324, align 8, !tbaa !10
  store double %361, ptr %t1, align 8, !tbaa !10
  %362 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %363 = load ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %364 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom325 = sext i32 %364 to i64
  %arrayidx326 = getelementptr inbounds i32, ptr %363, i64 %idxprom325
  %365 = load i32, ptr %arrayidx326, align 4, !tbaa !8
  %366 = load i32, ptr %j, align 4, !tbaa !8
  %367 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul327 = mul nsw i32 %366, %367
  %add328 = add nsw i32 %365, %mul327
  %idxprom329 = sext i32 %add328 to i64
  %arrayidx330 = getelementptr inbounds double, ptr %362, i64 %idxprom329
  %368 = load double, ptr %arrayidx330, align 8, !tbaa !10
  store double %368, ptr %t2, align 8, !tbaa !10
  br label %L70

L70:                                              ; preds = %if.then352, %if.then320
  %369 = load double, ptr %t1, align 8, !tbaa !10
  %370 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %371 = load ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %372 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom331 = sext i32 %372 to i64
  %arrayidx332 = getelementptr inbounds i32, ptr %371, i64 %idxprom331
  %373 = load i32, ptr %arrayidx332, align 4, !tbaa !8
  %374 = load i32, ptr %j, align 4, !tbaa !8
  %375 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul333 = mul nsw i32 %374, %375
  %add334 = add nsw i32 %373, %mul333
  %idxprom335 = sext i32 %add334 to i64
  %arrayidx336 = getelementptr inbounds double, ptr %370, i64 %idxprom335
  store double %369, ptr %arrayidx336, align 8, !tbaa !10
  %376 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %377 = load i32, ptr %mn, align 4, !tbaa !8
  %shl337 = shl i32 %377, 1
  %378 = load i32, ptr %k, align 4, !tbaa !8
  %add338 = add nsw i32 %shl337, %378
  %idxprom339 = sext i32 %add338 to i64
  %arrayidx340 = getelementptr inbounds double, ptr %376, i64 %idxprom339
  store double 0.000000e+00, ptr %arrayidx340, align 8, !tbaa !10
  %379 = load double, ptr %t2, align 8, !tbaa !10
  store double %379, ptr %t1, align 8, !tbaa !10
  %380 = load ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %381 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom341 = sext i32 %381 to i64
  %arrayidx342 = getelementptr inbounds i32, ptr %380, i64 %idxprom341
  %382 = load i32, ptr %arrayidx342, align 4, !tbaa !8
  store i32 %382, ptr %k, align 4, !tbaa !8
  %383 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %384 = load ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %385 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom343 = sext i32 %385 to i64
  %arrayidx344 = getelementptr inbounds i32, ptr %384, i64 %idxprom343
  %386 = load i32, ptr %arrayidx344, align 4, !tbaa !8
  %387 = load i32, ptr %j, align 4, !tbaa !8
  %388 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul345 = mul nsw i32 %387, %388
  %add346 = add nsw i32 %386, %mul345
  %idxprom347 = sext i32 %add346 to i64
  %arrayidx348 = getelementptr inbounds double, ptr %383, i64 %idxprom347
  %389 = load double, ptr %arrayidx348, align 8, !tbaa !10
  store double %389, ptr %t2, align 8, !tbaa !10
  %390 = load ptr, ptr %jpvt.addr, align 8, !tbaa !4
  %391 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom349 = sext i32 %391 to i64
  %arrayidx350 = getelementptr inbounds i32, ptr %390, i64 %idxprom349
  %392 = load i32, ptr %arrayidx350, align 4, !tbaa !8
  %393 = load i32, ptr %i__, align 4, !tbaa !8
  %cmp351 = icmp ne i32 %392, %393
  br i1 %cmp351, label %if.then352, label %if.end353

if.then352:                                       ; preds = %L70
  br label %L70

if.end353:                                        ; preds = %L70
  %394 = load double, ptr %t1, align 8, !tbaa !10
  %395 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %396 = load i32, ptr %i__, align 4, !tbaa !8
  %397 = load i32, ptr %j, align 4, !tbaa !8
  %398 = load i32, ptr %b_dim1, align 4, !tbaa !8
  %mul354 = mul nsw i32 %397, %398
  %add355 = add nsw i32 %396, %mul354
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds double, ptr %395, i64 %idxprom356
  store double %394, ptr %arrayidx357, align 8, !tbaa !10
  %399 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %400 = load i32, ptr %mn, align 4, !tbaa !8
  %shl358 = shl i32 %400, 1
  %401 = load i32, ptr %k, align 4, !tbaa !8
  %add359 = add nsw i32 %shl358, %401
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds double, ptr %399, i64 %idxprom360
  store double 0.000000e+00, ptr %arrayidx361, align 8, !tbaa !10
  br label %if.end362

if.end362:                                        ; preds = %if.end353, %if.then316
  br label %if.end363

if.end363:                                        ; preds = %if.end362, %for.body310
  br label %for.inc364

for.inc364:                                       ; preds = %if.end363
  %402 = load i32, ptr %i__, align 4, !tbaa !8
  %inc365 = add nsw i32 %402, 1
  store i32 %inc365, ptr %i__, align 4, !tbaa !8
  br label %for.cond308, !llvm.loop !18

for.end366:                                       ; preds = %for.cond308
  br label %for.inc367

for.inc367:                                       ; preds = %for.end366
  %403 = load i32, ptr %j, align 4, !tbaa !8
  %inc368 = add nsw i32 %403, 1
  store i32 %inc368, ptr %j, align 4, !tbaa !8
  br label %for.cond295, !llvm.loop !19

for.end369:                                       ; preds = %for.cond295
  %404 = load i32, ptr %iascl, align 4, !tbaa !8
  %cmp370 = icmp eq i32 %404, 1
  br i1 %cmp370, label %if.then371, label %if.else378

if.then371:                                       ; preds = %for.end369
  %405 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %406 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %407 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %408 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom372 = sext i32 %408 to i64
  %arrayidx373 = getelementptr inbounds double, ptr %407, i64 %idxprom372
  %409 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %410 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call374 = call i32 @dlascl_(ptr noundef @.str.4, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %smlnum, ptr noundef %405, ptr noundef %406, ptr noundef %arrayidx373, ptr noundef %409, ptr noundef %410)
  %411 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %412 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %413 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %414 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom375 = sext i32 %414 to i64
  %arrayidx376 = getelementptr inbounds double, ptr %413, i64 %idxprom375
  %415 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %416 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call377 = call i32 @dlascl_(ptr noundef @.str.11, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %smlnum, ptr noundef %anrm, ptr noundef %411, ptr noundef %412, ptr noundef %arrayidx376, ptr noundef %415, ptr noundef %416)
  br label %if.end388

if.else378:                                       ; preds = %for.end369
  %417 = load i32, ptr %iascl, align 4, !tbaa !8
  %cmp379 = icmp eq i32 %417, 2
  br i1 %cmp379, label %if.then380, label %if.end387

if.then380:                                       ; preds = %if.else378
  %418 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %419 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %420 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %421 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom381 = sext i32 %421 to i64
  %arrayidx382 = getelementptr inbounds double, ptr %420, i64 %idxprom381
  %422 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %423 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call383 = call i32 @dlascl_(ptr noundef @.str.4, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %anrm, ptr noundef %bignum, ptr noundef %418, ptr noundef %419, ptr noundef %arrayidx382, ptr noundef %422, ptr noundef %423)
  %424 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %425 = load ptr, ptr %rank.addr, align 8, !tbaa !4
  %426 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %427 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom384 = sext i32 %427 to i64
  %arrayidx385 = getelementptr inbounds double, ptr %426, i64 %idxprom384
  %428 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %429 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call386 = call i32 @dlascl_(ptr noundef @.str.11, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %bignum, ptr noundef %anrm, ptr noundef %424, ptr noundef %425, ptr noundef %arrayidx385, ptr noundef %428, ptr noundef %429)
  br label %if.end387

if.end387:                                        ; preds = %if.then380, %if.else378
  br label %if.end388

if.end388:                                        ; preds = %if.end387, %if.then371
  %430 = load i32, ptr %ibscl, align 4, !tbaa !8
  %cmp389 = icmp eq i32 %430, 1
  br i1 %cmp389, label %if.then390, label %if.else394

if.then390:                                       ; preds = %if.end388
  %431 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %432 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %433 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %434 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom391 = sext i32 %434 to i64
  %arrayidx392 = getelementptr inbounds double, ptr %433, i64 %idxprom391
  %435 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %436 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call393 = call i32 @dlascl_(ptr noundef @.str.4, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %smlnum, ptr noundef %bnrm, ptr noundef %431, ptr noundef %432, ptr noundef %arrayidx392, ptr noundef %435, ptr noundef %436)
  br label %if.end401

if.else394:                                       ; preds = %if.end388
  %437 = load i32, ptr %ibscl, align 4, !tbaa !8
  %cmp395 = icmp eq i32 %437, 2
  br i1 %cmp395, label %if.then396, label %if.end400

if.then396:                                       ; preds = %if.else394
  %438 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %439 = load ptr, ptr %nrhs.addr, align 8, !tbaa !4
  %440 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %441 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom397 = sext i32 %441 to i64
  %arrayidx398 = getelementptr inbounds double, ptr %440, i64 %idxprom397
  %442 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %443 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call399 = call i32 @dlascl_(ptr noundef @.str.4, ptr noundef @c__0, ptr noundef @c__0, ptr noundef %bignum, ptr noundef %bnrm, ptr noundef %438, ptr noundef %439, ptr noundef %arrayidx398, ptr noundef %442, ptr noundef %443)
  br label %if.end400

if.end400:                                        ; preds = %if.then396, %if.else394
  br label %if.end401

if.end401:                                        ; preds = %if.end400, %if.then390
  br label %L100

L100:                                             ; preds = %if.end401, %cond.end161, %cond.end97
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %L100, %if.then68, %if.then49
  call void @llvm.lifetime.end.p0(i64 8, ptr %smlnum) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %smaxpr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %sminpr) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bignum) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ismax) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ismin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ibscl) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iascl) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %smax) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %smin) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %bnrm) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %anrm) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %mn) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %t2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %c1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %444 = load i32, ptr %retval, align 4
  ret i32 %444
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare double @dlamch_(ptr noundef) #2

declare i32 @dlabad_(ptr noundef, ptr noundef) #2

declare double @dlange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dgeqpf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlaic1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dtzrqf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dorm2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dtrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dlatzm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
