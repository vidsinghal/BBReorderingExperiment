; ModuleID = 'samples/317.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/cggrqf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"CGERQF\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"CGEQRF\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CUNMRQ\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"CGGRQF\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Conjugate Transpose\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cggrqf_(ptr noundef %m, ptr noundef %p, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %taua, ptr noundef %b, ptr noundef %ldb, ptr noundef %taub, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
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
  %i__3 = alloca i32, align 4
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
  %_x46 = alloca i32, align 4
  %_y47 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %_x59 = alloca i32, align 4
  %_y60 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %_x72 = alloca i32, align 4
  %_y73 = alloca i32, align 4
  %tmp74 = alloca i32, align 4
  %_x81 = alloca i32, align 4
  %_y82 = alloca i32, align 4
  %tmp83 = alloca i32, align 4
  %_x90 = alloca i32, align 4
  %_y91 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x123 = alloca i32, align 4
  %_y124 = alloca i32, align 4
  %tmp125 = alloca i32, align 4
  %_x134 = alloca i32, align 4
  %_y135 = alloca i32, align 4
  %tmp136 = alloca i32, align 4
  %_x154 = alloca i32, align 4
  %_y155 = alloca i32, align 4
  %tmp156 = alloca i32, align 4
  %_x171 = alloca i32, align 4
  %_y172 = alloca i32, align 4
  %tmp173 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %p, ptr %p.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %taua.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %5, i32 -1
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
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %b.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %taub.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds %struct.complex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %taub.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds %struct.complex, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %work.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %13, align 4, !tbaa !8
  %14 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %15 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %14, ptr noundef %15, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call, ptr %nb1, align 4, !tbaa !8
  %16 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %17 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call7 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.2, ptr noundef @.str.1, ptr noundef %16, ptr noundef %17, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call7, ptr %nb2, align 4, !tbaa !8
  %18 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %19 = load ptr, ptr %n.addr, align 8, !tbaa !4
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
  %conv = sitofp i32 %53 to float
  %54 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.complex, ptr %54, i64 1
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float %conv, ptr %r, align 4, !tbaa !10
  %55 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx33 = getelementptr inbounds %struct.complex, ptr %55, i64 1
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx33, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4, !tbaa !13
  %56 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %57 = load i32, ptr %56, align 4, !tbaa !8
  %cmp34 = icmp eq i32 %57, -1
  %conv35 = zext i1 %cmp34 to i32
  store i32 %conv35, ptr %lquery, align 4, !tbaa !8
  %58 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %cmp36 = icmp slt i32 %59, 0
  br i1 %cmp36, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end31
  %60 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %60, align 4, !tbaa !8
  br label %if.end106

if.else:                                          ; preds = %cond.end31
  %61 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %cmp38 = icmp slt i32 %62, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.else
  %63 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %63, align 4, !tbaa !8
  br label %if.end105

if.else41:                                        ; preds = %if.else
  %64 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %cmp42 = icmp slt i32 %65, 0
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else41
  %66 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %66, align 4, !tbaa !8
  br label %if.end104

if.else45:                                        ; preds = %if.else41
  %67 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %68 = load i32, ptr %67, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x46) #3
  store i32 1, ptr %_x46, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y47) #3
  %69 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %70 = load i32, ptr %69, align 4, !tbaa !8
  store i32 %70, ptr %_y47, align 4, !tbaa !8
  %71 = load i32, ptr %_x46, align 4, !tbaa !8
  %72 = load i32, ptr %_y47, align 4, !tbaa !8
  %cmp49 = icmp sgt i32 %71, %72
  br i1 %cmp49, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %if.else45
  %73 = load i32, ptr %_x46, align 4, !tbaa !8
  br label %cond.end53

cond.false52:                                     ; preds = %if.else45
  %74 = load i32, ptr %_y47, align 4, !tbaa !8
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi i32 [ %73, %cond.true51 ], [ %74, %cond.false52 ]
  store i32 %cond54, ptr %tmp48, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y47) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x46) #3
  %75 = load i32, ptr %tmp48, align 4, !tbaa !8
  %cmp55 = icmp slt i32 %68, %75
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %cond.end53
  %76 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %76, align 4, !tbaa !8
  br label %if.end103

if.else58:                                        ; preds = %cond.end53
  %77 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %78 = load i32, ptr %77, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x59) #3
  store i32 1, ptr %_x59, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y60) #3
  %79 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %80 = load i32, ptr %79, align 4, !tbaa !8
  store i32 %80, ptr %_y60, align 4, !tbaa !8
  %81 = load i32, ptr %_x59, align 4, !tbaa !8
  %82 = load i32, ptr %_y60, align 4, !tbaa !8
  %cmp62 = icmp sgt i32 %81, %82
  br i1 %cmp62, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %if.else58
  %83 = load i32, ptr %_x59, align 4, !tbaa !8
  br label %cond.end66

cond.false65:                                     ; preds = %if.else58
  %84 = load i32, ptr %_y60, align 4, !tbaa !8
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.true64
  %cond67 = phi i32 [ %83, %cond.true64 ], [ %84, %cond.false65 ]
  store i32 %cond67, ptr %tmp61, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y60) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x59) #3
  %85 = load i32, ptr %tmp61, align 4, !tbaa !8
  %cmp68 = icmp slt i32 %78, %85
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %cond.end66
  %86 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %86, align 4, !tbaa !8
  br label %if.end102

if.else71:                                        ; preds = %cond.end66
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x72) #3
  store i32 1, ptr %_x72, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y73) #3
  %87 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %88 = load i32, ptr %87, align 4, !tbaa !8
  store i32 %88, ptr %_y73, align 4, !tbaa !8
  %89 = load i32, ptr %_x72, align 4, !tbaa !8
  %90 = load i32, ptr %_y73, align 4, !tbaa !8
  %cmp75 = icmp sgt i32 %89, %90
  br i1 %cmp75, label %cond.true77, label %cond.false78

cond.true77:                                      ; preds = %if.else71
  %91 = load i32, ptr %_x72, align 4, !tbaa !8
  br label %cond.end79

cond.false78:                                     ; preds = %if.else71
  %92 = load i32, ptr %_y73, align 4, !tbaa !8
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false78, %cond.true77
  %cond80 = phi i32 [ %91, %cond.true77 ], [ %92, %cond.false78 ]
  store i32 %cond80, ptr %tmp74, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y73) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x72) #3
  %93 = load i32, ptr %tmp74, align 4, !tbaa !8
  store i32 %93, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x81) #3
  %94 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %94, ptr %_x81, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y82) #3
  %95 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %96 = load i32, ptr %95, align 4, !tbaa !8
  store i32 %96, ptr %_y82, align 4, !tbaa !8
  %97 = load i32, ptr %_x81, align 4, !tbaa !8
  %98 = load i32, ptr %_y82, align 4, !tbaa !8
  %cmp84 = icmp sgt i32 %97, %98
  br i1 %cmp84, label %cond.true86, label %cond.false87

cond.true86:                                      ; preds = %cond.end79
  %99 = load i32, ptr %_x81, align 4, !tbaa !8
  br label %cond.end88

cond.false87:                                     ; preds = %cond.end79
  %100 = load i32, ptr %_y82, align 4, !tbaa !8
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false87, %cond.true86
  %cond89 = phi i32 [ %99, %cond.true86 ], [ %100, %cond.false87 ]
  store i32 %cond89, ptr %tmp83, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y82) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x81) #3
  %101 = load i32, ptr %tmp83, align 4, !tbaa !8
  store i32 %101, ptr %i__1, align 4, !tbaa !8
  %102 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %103 = load i32, ptr %102, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x90) #3
  %104 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %104, ptr %_x90, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y91) #3
  %105 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %106 = load i32, ptr %105, align 4, !tbaa !8
  store i32 %106, ptr %_y91, align 4, !tbaa !8
  %107 = load i32, ptr %_x90, align 4, !tbaa !8
  %108 = load i32, ptr %_y91, align 4, !tbaa !8
  %cmp93 = icmp sgt i32 %107, %108
  br i1 %cmp93, label %cond.true95, label %cond.false96

cond.true95:                                      ; preds = %cond.end88
  %109 = load i32, ptr %_x90, align 4, !tbaa !8
  br label %cond.end97

cond.false96:                                     ; preds = %cond.end88
  %110 = load i32, ptr %_y91, align 4, !tbaa !8
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false96, %cond.true95
  %cond98 = phi i32 [ %109, %cond.true95 ], [ %110, %cond.false96 ]
  store i32 %cond98, ptr %tmp92, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y91) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x90) #3
  %111 = load i32, ptr %tmp92, align 4, !tbaa !8
  %cmp99 = icmp slt i32 %103, %111
  br i1 %cmp99, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end97
  %112 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool = icmp ne i32 %112, 0
  br i1 %tobool, label %if.end, label %if.then101

if.then101:                                       ; preds = %land.lhs.true
  %113 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %113, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then101, %land.lhs.true, %cond.end97
  br label %if.end102

if.end102:                                        ; preds = %if.end, %if.then70
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then57
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then44
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.then40
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.then
  %114 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %115 = load i32, ptr %114, align 4, !tbaa !8
  %cmp107 = icmp ne i32 %115, 0
  br i1 %cmp107, label %if.then109, label %if.else111

if.then109:                                       ; preds = %if.end106
  %116 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %117 = load i32, ptr %116, align 4, !tbaa !8
  %sub = sub nsw i32 0, %117
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call110 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else111:                                       ; preds = %if.end106
  %118 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool112 = icmp ne i32 %118, 0
  br i1 %tobool112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.else111
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end114:                                        ; preds = %if.else111
  br label %if.end115

if.end115:                                        ; preds = %if.end114
  %119 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %120 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %121 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %122 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom = sext i32 %122 to i64
  %arrayidx116 = getelementptr inbounds %struct.complex, ptr %121, i64 %idxprom
  %123 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %124 = load ptr, ptr %taua.addr, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds %struct.complex, ptr %124, i64 1
  %125 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx118 = getelementptr inbounds %struct.complex, ptr %125, i64 1
  %126 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %127 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call119 = call i32 @cgerqf_(ptr noundef %119, ptr noundef %120, ptr noundef %arrayidx116, ptr noundef %123, ptr noundef %arrayidx117, ptr noundef %arrayidx118, ptr noundef %126, ptr noundef %127)
  %128 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx120 = getelementptr inbounds %struct.complex, ptr %128, i64 1
  %r121 = getelementptr inbounds %struct.complex, ptr %arrayidx120, i32 0, i32 0
  %129 = load float, ptr %r121, align 4, !tbaa !10
  %conv122 = fptosi float %129 to i32
  store i32 %conv122, ptr %lopt, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x123) #3
  %130 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %131 = load i32, ptr %130, align 4, !tbaa !8
  store i32 %131, ptr %_x123, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y124) #3
  %132 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %133 = load i32, ptr %132, align 4, !tbaa !8
  store i32 %133, ptr %_y124, align 4, !tbaa !8
  %134 = load i32, ptr %_x123, align 4, !tbaa !8
  %135 = load i32, ptr %_y124, align 4, !tbaa !8
  %cmp126 = icmp slt i32 %134, %135
  br i1 %cmp126, label %cond.true128, label %cond.false129

cond.true128:                                     ; preds = %if.end115
  %136 = load i32, ptr %_x123, align 4, !tbaa !8
  br label %cond.end130

cond.false129:                                    ; preds = %if.end115
  %137 = load i32, ptr %_y124, align 4, !tbaa !8
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false129, %cond.true128
  %cond131 = phi i32 [ %136, %cond.true128 ], [ %137, %cond.false129 ]
  store i32 %cond131, ptr %tmp125, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y124) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x123) #3
  %138 = load i32, ptr %tmp125, align 4, !tbaa !8
  store i32 %138, ptr %i__1, align 4, !tbaa !8
  store i32 1, ptr %i__2, align 4, !tbaa !8
  %139 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %140 = load i32, ptr %139, align 4, !tbaa !8
  %141 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %142 = load i32, ptr %141, align 4, !tbaa !8
  %sub132 = sub nsw i32 %140, %142
  %add133 = add nsw i32 %sub132, 1
  store i32 %add133, ptr %i__3, align 4, !tbaa !8
  %143 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %145 = load ptr, ptr %a.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x134) #3
  %146 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %146, ptr %_x134, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y135) #3
  %147 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %147, ptr %_y135, align 4, !tbaa !8
  %148 = load i32, ptr %_x134, align 4, !tbaa !8
  %149 = load i32, ptr %_y135, align 4, !tbaa !8
  %cmp137 = icmp sgt i32 %148, %149
  br i1 %cmp137, label %cond.true139, label %cond.false140

cond.true139:                                     ; preds = %cond.end130
  %150 = load i32, ptr %_x134, align 4, !tbaa !8
  br label %cond.end141

cond.false140:                                    ; preds = %cond.end130
  %151 = load i32, ptr %_y135, align 4, !tbaa !8
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %cond.true139
  %cond142 = phi i32 [ %150, %cond.true139 ], [ %151, %cond.false140 ]
  store i32 %cond142, ptr %tmp136, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y135) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x134) #3
  %152 = load i32, ptr %tmp136, align 4, !tbaa !8
  %153 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add143 = add nsw i32 %152, %153
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds %struct.complex, ptr %145, i64 %idxprom144
  %154 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %155 = load ptr, ptr %taua.addr, align 8, !tbaa !4
  %arrayidx146 = getelementptr inbounds %struct.complex, ptr %155, i64 1
  %156 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %157 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom147 = sext i32 %157 to i64
  %arrayidx148 = getelementptr inbounds %struct.complex, ptr %156, i64 %idxprom147
  %158 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %159 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx149 = getelementptr inbounds %struct.complex, ptr %159, i64 1
  %160 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call150 = call i32 @cunmrq_(ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef %143, ptr noundef %144, ptr noundef %i__1, ptr noundef %arrayidx145, ptr noundef %154, ptr noundef %arrayidx146, ptr noundef %arrayidx148, ptr noundef %158, ptr noundef %arrayidx149, ptr noundef %160, ptr noundef %161)
  %162 = load i32, ptr %lopt, align 4, !tbaa !8
  store i32 %162, ptr %i__1, align 4, !tbaa !8
  %163 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx151 = getelementptr inbounds %struct.complex, ptr %163, i64 1
  %r152 = getelementptr inbounds %struct.complex, ptr %arrayidx151, i32 0, i32 0
  %164 = load float, ptr %r152, align 4, !tbaa !10
  %conv153 = fptosi float %164 to i32
  store i32 %conv153, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x154) #3
  %165 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %165, ptr %_x154, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y155) #3
  %166 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %166, ptr %_y155, align 4, !tbaa !8
  %167 = load i32, ptr %_x154, align 4, !tbaa !8
  %168 = load i32, ptr %_y155, align 4, !tbaa !8
  %cmp157 = icmp sgt i32 %167, %168
  br i1 %cmp157, label %cond.true159, label %cond.false160

cond.true159:                                     ; preds = %cond.end141
  %169 = load i32, ptr %_x154, align 4, !tbaa !8
  br label %cond.end161

cond.false160:                                    ; preds = %cond.end141
  %170 = load i32, ptr %_y155, align 4, !tbaa !8
  br label %cond.end161

cond.end161:                                      ; preds = %cond.false160, %cond.true159
  %cond162 = phi i32 [ %169, %cond.true159 ], [ %170, %cond.false160 ]
  store i32 %cond162, ptr %tmp156, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y155) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x154) #3
  %171 = load i32, ptr %tmp156, align 4, !tbaa !8
  store i32 %171, ptr %lopt, align 4, !tbaa !8
  %172 = load ptr, ptr %p.addr, align 8, !tbaa !4
  %173 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %174 = load ptr, ptr %b.addr, align 8, !tbaa !4
  %175 = load i32, ptr %b_offset, align 4, !tbaa !8
  %idxprom163 = sext i32 %175 to i64
  %arrayidx164 = getelementptr inbounds %struct.complex, ptr %174, i64 %idxprom163
  %176 = load ptr, ptr %ldb.addr, align 8, !tbaa !4
  %177 = load ptr, ptr %taub.addr, align 8, !tbaa !4
  %arrayidx165 = getelementptr inbounds %struct.complex, ptr %177, i64 1
  %178 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx166 = getelementptr inbounds %struct.complex, ptr %178, i64 1
  %179 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %180 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call167 = call i32 @cgeqrf_(ptr noundef %172, ptr noundef %173, ptr noundef %arrayidx164, ptr noundef %176, ptr noundef %arrayidx165, ptr noundef %arrayidx166, ptr noundef %179, ptr noundef %180)
  %181 = load i32, ptr %lopt, align 4, !tbaa !8
  store i32 %181, ptr %i__2, align 4, !tbaa !8
  %182 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx168 = getelementptr inbounds %struct.complex, ptr %182, i64 1
  %r169 = getelementptr inbounds %struct.complex, ptr %arrayidx168, i32 0, i32 0
  %183 = load float, ptr %r169, align 4, !tbaa !10
  %conv170 = fptosi float %183 to i32
  store i32 %conv170, ptr %i__3, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x171) #3
  %184 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %184, ptr %_x171, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y172) #3
  %185 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %185, ptr %_y172, align 4, !tbaa !8
  %186 = load i32, ptr %_x171, align 4, !tbaa !8
  %187 = load i32, ptr %_y172, align 4, !tbaa !8
  %cmp174 = icmp sgt i32 %186, %187
  br i1 %cmp174, label %cond.true176, label %cond.false177

cond.true176:                                     ; preds = %cond.end161
  %188 = load i32, ptr %_x171, align 4, !tbaa !8
  br label %cond.end178

cond.false177:                                    ; preds = %cond.end161
  %189 = load i32, ptr %_y172, align 4, !tbaa !8
  br label %cond.end178

cond.end178:                                      ; preds = %cond.false177, %cond.true176
  %cond179 = phi i32 [ %188, %cond.true176 ], [ %189, %cond.false177 ]
  store i32 %cond179, ptr %tmp173, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y172) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x171) #3
  %190 = load i32, ptr %tmp173, align 4, !tbaa !8
  store i32 %190, ptr %i__1, align 4, !tbaa !8
  %191 = load i32, ptr %i__1, align 4, !tbaa !8
  %conv180 = sitofp i32 %191 to float
  %192 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx181 = getelementptr inbounds %struct.complex, ptr %192, i64 1
  %r182 = getelementptr inbounds %struct.complex, ptr %arrayidx181, i32 0, i32 0
  store float %conv180, ptr %r182, align 4, !tbaa !10
  %193 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx183 = getelementptr inbounds %struct.complex, ptr %193, i64 1
  %i184 = getelementptr inbounds %struct.complex, ptr %arrayidx183, i32 0, i32 1
  store float 0.000000e+00, ptr %i184, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end178, %if.then113, %if.then109
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b_dim1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %194 = load i32, ptr %retval, align 4
  ret i32 %194
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @cgerqf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cunmrq_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cgeqrf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!10 = !{!11, !12, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 4}
!12 = !{!"float", !6, i64 0}
!13 = !{!11, !12, i64 4}
