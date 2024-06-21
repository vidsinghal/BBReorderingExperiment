; ModuleID = 'samples/387.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/dggqrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"DGEQRF\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"DGERQF\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DORMQR\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DGGQRF\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dggqrf_(ptr noundef %n, ptr noundef %m, ptr noundef %p, ptr noundef %a, ptr noundef %lda, ptr noundef %taua, ptr noundef %b, ptr noundef %ldb, ptr noundef %taub, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %taua.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ldb.addr = alloca ptr, align 8
  %taub.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %b_dim1 = alloca i32, align 4
  %b_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %nb = alloca i32, align 4
  %nb1 = alloca i32, align 4
  %nb2 = alloca i32, align 4
  %nb3 = alloca i32, align 4
  %lopt = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x9 = alloca i32, align 4
  %_y10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %_x17 = alloca i32, align 4
  %_y18 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %_x25 = alloca i32, align 4
  %_y26 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %_x45 = alloca i32, align 4
  %_y46 = alloca i32, align 4
  %tmp47 = alloca i32, align 4
  %_x58 = alloca i32, align 4
  %_y59 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  %_x71 = alloca i32, align 4
  %_y72 = alloca i32, align 4
  %tmp73 = alloca i32, align 4
  %_x80 = alloca i32, align 4
  %_y81 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %_x89 = alloca i32, align 4
  %_y90 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x121 = alloca i32, align 4
  %_y122 = alloca i32, align 4
  %tmp123 = alloca i32, align 4
  %_x139 = alloca i32, align 4
  %_y140 = alloca i32, align 4
  %tmp141 = alloca i32, align 4
  %_x155 = alloca i32, align 4
  %_y156 = alloca i32, align 4
  %tmp157 = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %taua, ptr %taua.addr, align 8, !tbaa !4
  store ptr %b, ptr %b.addr, align 8, !tbaa !4
  store ptr %ldb, ptr %ldb.addr, align 8, !tbaa !4
  store ptr %taub, ptr %taub.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lquery) #3
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
  %5 = load ptr, ptr %taua.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds double, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %taua.addr, align 8, !tbaa !4
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
  %add.ptr4 = getelementptr inbounds double, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %taub.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds double, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %taub.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds double, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %13, align 4, !tbaa !8
  %14 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %call = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %14, ptr noundef %15, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call, ptr %nb1, align 4, !tbaa !8
  %16 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call7 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.2, ptr noundef @.str.1, ptr noundef %16, ptr noundef %17, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call7, ptr %nb2, align 4, !tbaa !8
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %20 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %call8 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef @c_n1)
  store i32 %call8, ptr %nb3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  %21 = load i32, ptr %nb1, align 4, !tbaa !8
  store i32 %21, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %22 = load i32, ptr %nb2, align 4, !tbaa !8
  store i32 %22, ptr %_y, align 4, !tbaa !8
  %23 = load i32, ptr %_x, align 4, !tbaa !8
  %24 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp = icmp sgt i32 %23, %24
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %25 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %26 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %27 = load i32, ptr %tmp, align 4, !tbaa !8
  store i32 %27, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x9) #3
  %28 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %28, ptr %_x9, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y10) #3
  %29 = load i32, ptr %nb3, align 4, !tbaa !8
  store i32 %29, ptr %_y10, align 4, !tbaa !8
  %30 = load i32, ptr %_x9, align 4, !tbaa !8
  %31 = load i32, ptr %_y10, align 4, !tbaa !8
  %cmp12 = icmp sgt i32 %30, %31
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end
  %32 = load i32, ptr %_x9, align 4, !tbaa !8
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  %33 = load i32, ptr %_y10, align 4, !tbaa !8
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi i32 [ %32, %cond.true13 ], [ %33, %cond.false14 ]
  store i32 %cond16, ptr %tmp11, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x9) #3
  %34 = load i32, ptr %tmp11, align 4, !tbaa !8
  store i32 %34, ptr %nb, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x17) #3
  %35 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  store i32 %36, ptr %_x17, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y18) #3
  %37 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  store i32 %38, ptr %_y18, align 4, !tbaa !8
  %39 = load i32, ptr %_x17, align 4, !tbaa !8
  %40 = load i32, ptr %_y18, align 4, !tbaa !8
  %cmp20 = icmp sgt i32 %39, %40
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end15
  %41 = load i32, ptr %_x17, align 4, !tbaa !8
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end15
  %42 = load i32, ptr %_y18, align 4, !tbaa !8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.true21
  %cond24 = phi i32 [ %41, %cond.true21 ], [ %42, %cond.false22 ]
  store i32 %cond24, ptr %tmp19, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y18) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x17) #3
  %43 = load i32, ptr %tmp19, align 4, !tbaa !8
  store i32 %43, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x25) #3
  %44 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %44, ptr %_x25, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y26) #3
  %45 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %46 = load i32, ptr %45, align 4, !tbaa !8
  store i32 %46, ptr %_y26, align 4, !tbaa !8
  %47 = load i32, ptr %_x25, align 4, !tbaa !8
  %48 = load i32, ptr %_y26, align 4, !tbaa !8
  %cmp28 = icmp sgt i32 %47, %48
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.end23
  %49 = load i32, ptr %_x25, align 4, !tbaa !8
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end23
  %50 = load i32, ptr %_y26, align 4, !tbaa !8
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ %49, %cond.true29 ], [ %50, %cond.false30 ]
  store i32 %cond32, ptr %tmp27, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y26) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x25) #3
  %51 = load i32, ptr %tmp27, align 4, !tbaa !8
  %52 = load i32, ptr %nb, align 4, !tbaa !8
  %mul = mul nsw i32 %51, %52
  store i32 %mul, ptr %lwkopt, align 4, !tbaa !8
  %53 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv = sitofp i32 %53 to double
  %54 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds double, ptr %54, i64 1
  store double %conv, ptr %arrayidx, align 8, !tbaa !10
  %55 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %cmp33 = icmp eq i32 %56, -1
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, ptr %lquery, align 4, !tbaa !8
  %57 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %58 = load i32, ptr %57, align 4, !tbaa !8
  %cmp35 = icmp slt i32 %58, 0
  br i1 %cmp35, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end31
  %59 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %59, align 4, !tbaa !8
  br label %if.end105

if.else:                                          ; preds = %cond.end31
  %60 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %61 = load i32, ptr %60, align 4, !tbaa !8
  %cmp37 = icmp slt i32 %61, 0
  br i1 %cmp37, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else
  %62 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %62, align 4, !tbaa !8
  br label %if.end104

if.else40:                                        ; preds = %if.else
  %63 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %cmp41 = icmp slt i32 %64, 0
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  %65 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %65, align 4, !tbaa !8
  br label %if.end103

if.else44:                                        ; preds = %if.else40
  %66 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %67 = load i32, ptr %66, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x45) #3
  store i32 1, ptr %_x45, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y46) #3
  %68 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !8
  store i32 %69, ptr %_y46, align 4, !tbaa !8
  %70 = load i32, ptr %_x45, align 4, !tbaa !8
  %71 = load i32, ptr %_y46, align 4, !tbaa !8
  %cmp48 = icmp sgt i32 %70, %71
  br i1 %cmp48, label %cond.true50, label %cond.false51

cond.true50:                                      ; preds = %if.else44
  %72 = load i32, ptr %_x45, align 4, !tbaa !8
  br label %cond.end52

cond.false51:                                     ; preds = %if.else44
  %73 = load i32, ptr %_y46, align 4, !tbaa !8
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false51, %cond.true50
  %cond53 = phi i32 [ %72, %cond.true50 ], [ %73, %cond.false51 ]
  store i32 %cond53, ptr %tmp47, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y46) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x45) #3
  %74 = load i32, ptr %tmp47, align 4, !tbaa !8
  %cmp54 = icmp slt i32 %67, %74
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %cond.end52
  %75 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %75, align 4, !tbaa !8
  br label %if.end102

if.else57:                                        ; preds = %cond.end52
  %76 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %77 = load i32, ptr %76, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x58) #3
  store i32 1, ptr %_x58, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y59) #3
  %78 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %79 = load i32, ptr %78, align 4, !tbaa !8
  store i32 %79, ptr %_y59, align 4, !tbaa !8
  %80 = load i32, ptr %_x58, align 4, !tbaa !8
  %81 = load i32, ptr %_y59, align 4, !tbaa !8
  %cmp61 = icmp sgt i32 %80, %81
  br i1 %cmp61, label %cond.true63, label %cond.false64

cond.true63:                                      ; preds = %if.else57
  %82 = load i32, ptr %_x58, align 4, !tbaa !8
  br label %cond.end65

cond.false64:                                     ; preds = %if.else57
  %83 = load i32, ptr %_y59, align 4, !tbaa !8
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false64, %cond.true63
  %cond66 = phi i32 [ %82, %cond.true63 ], [ %83, %cond.false64 ]
  store i32 %cond66, ptr %tmp60, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y59) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x58) #3
  %84 = load i32, ptr %tmp60, align 4, !tbaa !8
  %cmp67 = icmp slt i32 %77, %84
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %cond.end65
  %85 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %85, align 4, !tbaa !8
  br label %if.end101

if.else70:                                        ; preds = %cond.end65
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x71) #3
  store i32 1, ptr %_x71, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y72) #3
  %86 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %87 = load i32, ptr %86, align 4, !tbaa !8
  store i32 %87, ptr %_y72, align 4, !tbaa !8
  %88 = load i32, ptr %_x71, align 4, !tbaa !8
  %89 = load i32, ptr %_y72, align 4, !tbaa !8
  %cmp74 = icmp sgt i32 %88, %89
  br i1 %cmp74, label %cond.true76, label %cond.false77

cond.true76:                                      ; preds = %if.else70
  %90 = load i32, ptr %_x71, align 4, !tbaa !8
  br label %cond.end78

cond.false77:                                     ; preds = %if.else70
  %91 = load i32, ptr %_y72, align 4, !tbaa !8
  br label %cond.end78

cond.end78:                                       ; preds = %cond.false77, %cond.true76
  %cond79 = phi i32 [ %90, %cond.true76 ], [ %91, %cond.false77 ]
  store i32 %cond79, ptr %tmp73, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y72) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x71) #3
  %92 = load i32, ptr %tmp73, align 4, !tbaa !8
  store i32 %92, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x80) #3
  %93 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %93, ptr %_x80, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y81) #3
  %94 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %95 = load i32, ptr %94, align 4, !tbaa !8
  store i32 %95, ptr %_y81, align 4, !tbaa !8
  %96 = load i32, ptr %_x80, align 4, !tbaa !8
  %97 = load i32, ptr %_y81, align 4, !tbaa !8
  %cmp83 = icmp sgt i32 %96, %97
  br i1 %cmp83, label %cond.true85, label %cond.false86

cond.true85:                                      ; preds = %cond.end78
  %98 = load i32, ptr %_x80, align 4, !tbaa !8
  br label %cond.end87

cond.false86:                                     ; preds = %cond.end78
  %99 = load i32, ptr %_y81, align 4, !tbaa !8
  br label %cond.end87

cond.end87:                                       ; preds = %cond.false86, %cond.true85
  %cond88 = phi i32 [ %98, %cond.true85 ], [ %99, %cond.false86 ]
  store i32 %cond88, ptr %tmp82, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y81) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x80) #3
  %100 = load i32, ptr %tmp82, align 4, !tbaa !8
  store i32 %100, ptr %i__1, align 4, !tbaa !8
  %101 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %102 = load i32, ptr %101, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x89) #3
  %103 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %103, ptr %_x89, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y90) #3
  %104 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %105 = load i32, ptr %104, align 4, !tbaa !8
  store i32 %105, ptr %_y90, align 4, !tbaa !8
  %106 = load i32, ptr %_x89, align 4, !tbaa !8
  %107 = load i32, ptr %_y90, align 4, !tbaa !8
  %cmp92 = icmp sgt i32 %106, %107
  br i1 %cmp92, label %cond.true94, label %cond.false95

cond.true94:                                      ; preds = %cond.end87
  %108 = load i32, ptr %_x89, align 4, !tbaa !8
  br label %cond.end96

cond.false95:                                     ; preds = %cond.end87
  %109 = load i32, ptr %_y90, align 4, !tbaa !8
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false95, %cond.true94
  %cond97 = phi i32 [ %108, %cond.true94 ], [ %109, %cond.false95 ]
  store i32 %cond97, ptr %tmp91, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y90) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x89) #3
  %110 = load i32, ptr %tmp91, align 4, !tbaa !8
  %cmp98 = icmp slt i32 %102, %110
  br i1 %cmp98, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end96
  %111 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool = icmp ne i32 %111, 0
  br i1 %tobool, label %if.end, label %if.then100

if.then100:                                       ; preds = %land.lhs.true
  %112 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %112, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then100, %land.lhs.true, %cond.end96
  br label %if.end101

if.end101:                                        ; preds = %if.end, %if.then69
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then56
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then43
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then39
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then
  %113 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %114 = load i32, ptr %113, align 4, !tbaa !8
  %cmp106 = icmp ne i32 %114, 0
  br i1 %cmp106, label %if.then108, label %if.else110

if.then108:                                       ; preds = %if.end105
  %115 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  %sub = sub nsw i32 0, %116
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call109 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else110:                                       ; preds = %if.end105
  %117 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool111 = icmp ne i32 %117, 0
  br i1 %tobool111, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.else110
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end113:                                        ; preds = %if.else110
  br label %if.end114

if.end114:                                        ; preds = %if.end113
  %118 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %119 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %120 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %121 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom = sext i32 %121 to i64
  %arrayidx115 = getelementptr inbounds double, ptr %120, i64 %idxprom
  %122 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %taua.addr, align 8, !tbaa !4
  %arrayidx116 = getelementptr inbounds double, ptr %123, i64 1
  %124 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds double, ptr %124, i64 1
  %125 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %126 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call118 = call i32 @dgeqrf_(ptr noundef %118, ptr noundef %119, ptr noundef %arrayidx115, ptr noundef %122, ptr noundef %arrayidx116, ptr noundef %arrayidx117, ptr noundef %125, ptr noundef %126)
  %127 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx119 = getelementptr inbounds double, ptr %127, i64 1
  %128 = load double, ptr %arrayidx119, align 8, !tbaa !10
  %conv120 = fptosi double %128 to i32
  store i32 %conv120, ptr %lopt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x121) #3
  %129 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %130 = load i32, ptr %129, align 4, !tbaa !8
  store i32 %130, ptr %_x121, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y122) #3
  %131 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %132 = load i32, ptr %131, align 4, !tbaa !8
  store i32 %132, ptr %_y122, align 4, !tbaa !8
  %133 = load i32, ptr %_x121, align 4, !tbaa !8
  %134 = load i32, ptr %_y122, align 4, !tbaa !8
  %cmp124 = icmp slt i32 %133, %134
  br i1 %cmp124, label %cond.true126, label %cond.false127

cond.true126:                                     ; preds = %if.end114
  %135 = load i32, ptr %_x121, align 4, !tbaa !8
  br label %cond.end128

cond.false127:                                    ; preds = %if.end114
  %136 = load i32, ptr %_y122, align 4, !tbaa !8
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false127, %cond.true126
  %cond129 = phi i32 [ %135, %cond.true126 ], [ %136, %cond.false127 ]
  store i32 %cond129, ptr %tmp123, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y122) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x121) #3
  %137 = load i32, ptr %tmp123, align 4, !tbaa !8
  store i32 %137, ptr %i__1, align 4, !tbaa !8
  %138 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %139 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %140 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %141 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom130 = sext i32 %141 to i64
  %arrayidx131 = getelementptr inbounds double, ptr %140, i64 %idxprom130
  %142 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %143 = load ptr, ptr %taua.addr, align 8, !tbaa !4
  %arrayidx132 = getelementptr inbounds double, ptr %143, i64 1
  %144 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %145 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom133 = sext i32 %145 to i64
  %arrayidx134 = getelementptr inbounds double, ptr %144, i64 %idxprom133
  %146 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %147 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx135 = getelementptr inbounds double, ptr %147, i64 1
  %148 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %149 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call136 = call i32 @dormqr_(ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef %138, ptr noundef %139, ptr noundef %i__1, ptr noundef %arrayidx131, ptr noundef %142, ptr noundef %arrayidx132, ptr noundef %arrayidx134, ptr noundef %146, ptr noundef %arrayidx135, ptr noundef %148, ptr noundef %149)
  %150 = load i32, ptr %lopt, align 4, !tbaa !8
  store i32 %150, ptr %i__1, align 4, !tbaa !8
  %151 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx137 = getelementptr inbounds double, ptr %151, i64 1
  %152 = load double, ptr %arrayidx137, align 8, !tbaa !10
  %conv138 = fptosi double %152 to i32
  store i32 %conv138, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x139) #3
  %153 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %153, ptr %_x139, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y140) #3
  %154 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %154, ptr %_y140, align 4, !tbaa !8
  %155 = load i32, ptr %_x139, align 4, !tbaa !8
  %156 = load i32, ptr %_y140, align 4, !tbaa !8
  %cmp142 = icmp sgt i32 %155, %156
  br i1 %cmp142, label %cond.true144, label %cond.false145

cond.true144:                                     ; preds = %cond.end128
  %157 = load i32, ptr %_x139, align 4, !tbaa !8
  br label %cond.end146

cond.false145:                                    ; preds = %cond.end128
  %158 = load i32, ptr %_y140, align 4, !tbaa !8
  br label %cond.end146

cond.end146:                                      ; preds = %cond.false145, %cond.true144
  %cond147 = phi i32 [ %157, %cond.true144 ], [ %158, %cond.false145 ]
  store i32 %cond147, ptr %tmp141, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y140) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x139) #3
  %159 = load i32, ptr %tmp141, align 4, !tbaa !8
  store i32 %159, ptr %lopt, align 4, !tbaa !8
  %160 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %162 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %163 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom148 = sext i32 %163 to i64
  %arrayidx149 = getelementptr inbounds double, ptr %162, i64 %idxprom148
  %164 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %165 = load ptr, ptr %taub.addr, align 8, !tbaa !4
  %arrayidx150 = getelementptr inbounds double, ptr %165, i64 1
  %166 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx151 = getelementptr inbounds double, ptr %166, i64 1
  %167 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %168 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call152 = call i32 @dgerqf_(ptr noundef %160, ptr noundef %161, ptr noundef %arrayidx149, ptr noundef %164, ptr noundef %arrayidx150, ptr noundef %arrayidx151, ptr noundef %167, ptr noundef %168)
  %169 = load i32, ptr %lopt, align 4, !tbaa !8
  store i32 %169, ptr %i__1, align 4, !tbaa !8
  %170 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx153 = getelementptr inbounds double, ptr %170, i64 1
  %171 = load double, ptr %arrayidx153, align 8, !tbaa !10
  %conv154 = fptosi double %171 to i32
  store i32 %conv154, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x155) #3
  %172 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %172, ptr %_x155, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y156) #3
  %173 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %173, ptr %_y156, align 4, !tbaa !8
  %174 = load i32, ptr %_x155, align 4, !tbaa !8
  %175 = load i32, ptr %_y156, align 4, !tbaa !8
  %cmp158 = icmp sgt i32 %174, %175
  br i1 %cmp158, label %cond.true160, label %cond.false161

cond.true160:                                     ; preds = %cond.end146
  %176 = load i32, ptr %_x155, align 4, !tbaa !8
  br label %cond.end162

cond.false161:                                    ; preds = %cond.end146
  %177 = load i32, ptr %_y156, align 4, !tbaa !8
  br label %cond.end162

cond.end162:                                      ; preds = %cond.false161, %cond.true160
  %cond163 = phi i32 [ %176, %cond.true160 ], [ %177, %cond.false161 ]
  store i32 %cond163, ptr %tmp157, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y156) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x155) #3
  %178 = load i32, ptr %tmp157, align 4, !tbaa !8
  %conv164 = sitofp i32 %178 to double
  %179 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx165 = getelementptr inbounds double, ptr %179, i64 1
  store double %conv164, ptr %arrayidx165, align 8, !tbaa !10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end162, %if.then112, %if.then108
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %180 = load i32, ptr %retval, align 4
  ret i32 %180
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @dgeqrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dormqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @dgerqf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
