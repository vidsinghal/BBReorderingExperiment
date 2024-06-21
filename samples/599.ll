; ModuleID = 'samples/599.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/cungrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@c__1 = internal global i32 1, align 4
@.str = private unnamed_addr constant [7 x i8] c"CUNGRQ\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = internal global i32 -1, align 4
@c__3 = internal global i32 3, align 4
@c__2 = internal global i32 2, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Backward\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Rowwise\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Conjugate transpose\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cungrq_(ptr noundef %m, ptr noundef %n, ptr noundef %k, ptr noundef %a, ptr noundef %lda, ptr noundef %tau, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %k.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %l = alloca i32, align 4
  %ib = alloca i32, align 4
  %nb = alloca i32, align 4
  %ii = alloca i32, align 4
  %kk = alloca i32, align 4
  %nx = alloca i32, align 4
  %iws = alloca i32, align 4
  %nbmin = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %ldwork = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %_x32 = alloca i32, align 4
  %_y33 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x66 = alloca i32, align 4
  %_y67 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %_x83 = alloca i32, align 4
  %_y84 = alloca i32, align 4
  %tmp85 = alloca i32, align 4
  %_x109 = alloca i32, align 4
  %_y110 = alloca i32, align 4
  %tmp111 = alloca i32, align 4
  %_x167 = alloca i32, align 4
  %_y168 = alloca i32, align 4
  %tmp169 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %k, ptr %k.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %tau, ptr %tau.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ii) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kk) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nx) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iws) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %ldwork) #3
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
  %5 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds %struct.complex, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %7, align 4, !tbaa !8
  %8 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %cmp = icmp eq i32 %9, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %10 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %11 = load i32, ptr %10, align 4, !tbaa !8
  %cmp2 = icmp slt i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %12, align 4, !tbaa !8
  br label %if.end21

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %15 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %14, %16
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %17, align 4, !tbaa !8
  br label %if.end20

if.else7:                                         ; preds = %if.else
  %18 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %19, 0
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else7
  %20 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %22 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %cmp10 = icmp sgt i32 %21, %23
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %lor.lhs.false, %if.else7
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %24, align 4, !tbaa !8
  br label %if.end19

if.else13:                                        ; preds = %lor.lhs.false
  %25 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %27 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  store i32 %28, ptr %_y, align 4, !tbaa !8
  %29 = load i32, ptr %_x, align 4, !tbaa !8
  %30 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp14 = icmp sgt i32 %29, %30
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else13
  %31 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else13
  %32 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %31, %cond.true ], [ %32, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %33 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp16 = icmp slt i32 %26, %33
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %cond.end
  %34 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -5, ptr %34, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then18, %cond.end
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then12
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then6
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then
  %35 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %cmp22 = icmp eq i32 %36, 0
  br i1 %cmp22, label %if.then24, label %if.end45

if.then24:                                        ; preds = %if.end21
  %37 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %cmp25 = icmp sle i32 %38, 0
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.then24
  store i32 1, ptr %lwkopt, align 4, !tbaa !8
  br label %if.end29

if.else28:                                        ; preds = %if.then24
  %39 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %40 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %41 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %call = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef @c_n1)
  store i32 %call, ptr %nb, align 4, !tbaa !8
  %42 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %44 = load i32, ptr %nb, align 4, !tbaa !8
  %mul = mul nsw i32 %43, %44
  store i32 %mul, ptr %lwkopt, align 4, !tbaa !8
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %45 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv30 = sitofp i32 %45 to float
  %46 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.complex, ptr %46, i64 1
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float %conv30, ptr %r, align 4, !tbaa !10
  %47 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx31 = getelementptr inbounds %struct.complex, ptr %47, i64 1
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx31, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4, !tbaa !13
  %48 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %49 = load i32, ptr %48, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x32) #3
  store i32 1, ptr %_x32, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y33) #3
  %50 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  store i32 %51, ptr %_y33, align 4, !tbaa !8
  %52 = load i32, ptr %_x32, align 4, !tbaa !8
  %53 = load i32, ptr %_y33, align 4, !tbaa !8
  %cmp35 = icmp sgt i32 %52, %53
  br i1 %cmp35, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %if.end29
  %54 = load i32, ptr %_x32, align 4, !tbaa !8
  br label %cond.end39

cond.false38:                                     ; preds = %if.end29
  %55 = load i32, ptr %_y33, align 4, !tbaa !8
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i32 [ %54, %cond.true37 ], [ %55, %cond.false38 ]
  store i32 %cond40, ptr %tmp34, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y33) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x32) #3
  %56 = load i32, ptr %tmp34, align 4, !tbaa !8
  %cmp41 = icmp slt i32 %49, %56
  br i1 %cmp41, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %cond.end39
  %57 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool = icmp ne i32 %57, 0
  br i1 %tobool, label %if.end44, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -8, ptr %58, align 4, !tbaa !8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true, %cond.end39
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end21
  %59 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %60 = load i32, ptr %59, align 4, !tbaa !8
  %cmp46 = icmp ne i32 %60, 0
  br i1 %cmp46, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.end45
  %61 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %sub = sub nsw i32 0, %62
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call49 = call i32 @xerbla_(ptr noundef @.str, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else50:                                        ; preds = %if.end45
  %63 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool51 = icmp ne i32 %63, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.else50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.else50
  br label %if.end54

if.end54:                                         ; preds = %if.end53
  %64 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %cmp55 = icmp sle i32 %65, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end54
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end58:                                         ; preds = %if.end54
  store i32 2, ptr %nbmin, align 4, !tbaa !8
  store i32 0, ptr %nx, align 4, !tbaa !8
  %66 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %67 = load i32, ptr %66, align 4, !tbaa !8
  store i32 %67, ptr %iws, align 4, !tbaa !8
  %68 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp59 = icmp sgt i32 %68, 1
  br i1 %cmp59, label %land.lhs.true61, label %if.end94

land.lhs.true61:                                  ; preds = %if.end58
  %69 = load i32, ptr %nb, align 4, !tbaa !8
  %70 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %cmp62 = icmp slt i32 %69, %71
  br i1 %cmp62, label %if.then64, label %if.end94

if.then64:                                        ; preds = %land.lhs.true61
  store i32 0, ptr %i__1, align 4, !tbaa !8
  %72 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %73 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %74 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %call65 = call i32 @ilaenv_(ptr noundef @c__3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %72, ptr noundef %73, ptr noundef %74, ptr noundef @c_n1)
  store i32 %call65, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x66) #3
  %75 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %75, ptr %_x66, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y67) #3
  %76 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %76, ptr %_y67, align 4, !tbaa !8
  %77 = load i32, ptr %_x66, align 4, !tbaa !8
  %78 = load i32, ptr %_y67, align 4, !tbaa !8
  %cmp69 = icmp sgt i32 %77, %78
  br i1 %cmp69, label %cond.true71, label %cond.false72

cond.true71:                                      ; preds = %if.then64
  %79 = load i32, ptr %_x66, align 4, !tbaa !8
  br label %cond.end73

cond.false72:                                     ; preds = %if.then64
  %80 = load i32, ptr %_y67, align 4, !tbaa !8
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.true71
  %cond74 = phi i32 [ %79, %cond.true71 ], [ %80, %cond.false72 ]
  store i32 %cond74, ptr %tmp68, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y67) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x66) #3
  %81 = load i32, ptr %tmp68, align 4, !tbaa !8
  store i32 %81, ptr %nx, align 4, !tbaa !8
  %82 = load i32, ptr %nx, align 4, !tbaa !8
  %83 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %84 = load i32, ptr %83, align 4, !tbaa !8
  %cmp75 = icmp slt i32 %82, %84
  br i1 %cmp75, label %if.then77, label %if.end93

if.then77:                                        ; preds = %cond.end73
  %85 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %86 = load i32, ptr %85, align 4, !tbaa !8
  store i32 %86, ptr %ldwork, align 4, !tbaa !8
  %87 = load i32, ptr %ldwork, align 4, !tbaa !8
  %88 = load i32, ptr %nb, align 4, !tbaa !8
  %mul78 = mul nsw i32 %87, %88
  store i32 %mul78, ptr %iws, align 4, !tbaa !8
  %89 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %90 = load i32, ptr %89, align 4, !tbaa !8
  %91 = load i32, ptr %iws, align 4, !tbaa !8
  %cmp79 = icmp slt i32 %90, %91
  br i1 %cmp79, label %if.then81, label %if.end92

if.then81:                                        ; preds = %if.then77
  %92 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %93 = load i32, ptr %92, align 4, !tbaa !8
  %94 = load i32, ptr %ldwork, align 4, !tbaa !8
  %div = sdiv i32 %93, %94
  store i32 %div, ptr %nb, align 4, !tbaa !8
  store i32 2, ptr %i__1, align 4, !tbaa !8
  %95 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %97 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %call82 = call i32 @ilaenv_(ptr noundef @c__2, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %95, ptr noundef %96, ptr noundef %97, ptr noundef @c_n1)
  store i32 %call82, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x83) #3
  %98 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %98, ptr %_x83, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y84) #3
  %99 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %99, ptr %_y84, align 4, !tbaa !8
  %100 = load i32, ptr %_x83, align 4, !tbaa !8
  %101 = load i32, ptr %_y84, align 4, !tbaa !8
  %cmp86 = icmp sgt i32 %100, %101
  br i1 %cmp86, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %if.then81
  %102 = load i32, ptr %_x83, align 4, !tbaa !8
  br label %cond.end90

cond.false89:                                     ; preds = %if.then81
  %103 = load i32, ptr %_y84, align 4, !tbaa !8
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %cond.true88
  %cond91 = phi i32 [ %102, %cond.true88 ], [ %103, %cond.false89 ]
  store i32 %cond91, ptr %tmp85, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y84) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x83) #3
  %104 = load i32, ptr %tmp85, align 4, !tbaa !8
  store i32 %104, ptr %nbmin, align 4, !tbaa !8
  br label %if.end92

if.end92:                                         ; preds = %cond.end90, %if.then77
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %cond.end73
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %land.lhs.true61, %if.end58
  %105 = load i32, ptr %nb, align 4, !tbaa !8
  %106 = load i32, ptr %nbmin, align 4, !tbaa !8
  %cmp95 = icmp sge i32 %105, %106
  br i1 %cmp95, label %land.lhs.true97, label %if.else137

land.lhs.true97:                                  ; preds = %if.end94
  %107 = load i32, ptr %nb, align 4, !tbaa !8
  %108 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %109 = load i32, ptr %108, align 4, !tbaa !8
  %cmp98 = icmp slt i32 %107, %109
  br i1 %cmp98, label %land.lhs.true100, label %if.else137

land.lhs.true100:                                 ; preds = %land.lhs.true97
  %110 = load i32, ptr %nx, align 4, !tbaa !8
  %111 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %112 = load i32, ptr %111, align 4, !tbaa !8
  %cmp101 = icmp slt i32 %110, %112
  br i1 %cmp101, label %if.then103, label %if.else137

if.then103:                                       ; preds = %land.lhs.true100
  %113 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %114 = load i32, ptr %113, align 4, !tbaa !8
  store i32 %114, ptr %i__1, align 4, !tbaa !8
  %115 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %116 = load i32, ptr %115, align 4, !tbaa !8
  %117 = load i32, ptr %nx, align 4, !tbaa !8
  %sub104 = sub nsw i32 %116, %117
  %118 = load i32, ptr %nb, align 4, !tbaa !8
  %add105 = add nsw i32 %sub104, %118
  %sub106 = sub nsw i32 %add105, 1
  %119 = load i32, ptr %nb, align 4, !tbaa !8
  %div107 = sdiv i32 %sub106, %119
  %120 = load i32, ptr %nb, align 4, !tbaa !8
  %mul108 = mul nsw i32 %div107, %120
  store i32 %mul108, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x109) #3
  %121 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %121, ptr %_x109, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y110) #3
  %122 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %122, ptr %_y110, align 4, !tbaa !8
  %123 = load i32, ptr %_x109, align 4, !tbaa !8
  %124 = load i32, ptr %_y110, align 4, !tbaa !8
  %cmp112 = icmp slt i32 %123, %124
  br i1 %cmp112, label %cond.true114, label %cond.false115

cond.true114:                                     ; preds = %if.then103
  %125 = load i32, ptr %_x109, align 4, !tbaa !8
  br label %cond.end116

cond.false115:                                    ; preds = %if.then103
  %126 = load i32, ptr %_y110, align 4, !tbaa !8
  br label %cond.end116

cond.end116:                                      ; preds = %cond.false115, %cond.true114
  %cond117 = phi i32 [ %125, %cond.true114 ], [ %126, %cond.false115 ]
  store i32 %cond117, ptr %tmp111, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y110) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x109) #3
  %127 = load i32, ptr %tmp111, align 4, !tbaa !8
  store i32 %127, ptr %kk, align 4, !tbaa !8
  %128 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %129 = load i32, ptr %128, align 4, !tbaa !8
  store i32 %129, ptr %i__1, align 4, !tbaa !8
  %130 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %131 = load i32, ptr %130, align 4, !tbaa !8
  %132 = load i32, ptr %kk, align 4, !tbaa !8
  %sub118 = sub nsw i32 %131, %132
  %add119 = add nsw i32 %sub118, 1
  store i32 %add119, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc134, %cond.end116
  %133 = load i32, ptr %j, align 4, !tbaa !8
  %134 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp120 = icmp sle i32 %133, %134
  br i1 %cmp120, label %for.body, label %for.end136

for.body:                                         ; preds = %for.cond
  %135 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %136 = load i32, ptr %135, align 4, !tbaa !8
  %137 = load i32, ptr %kk, align 4, !tbaa !8
  %sub122 = sub nsw i32 %136, %137
  store i32 %sub122, ptr %i__2, align 4, !tbaa !8
  store i32 1, ptr %i__, align 4, !tbaa !8
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc, %for.body
  %138 = load i32, ptr %i__, align 4, !tbaa !8
  %139 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp124 = icmp sle i32 %138, %139
  br i1 %cmp124, label %for.body126, label %for.end

for.body126:                                      ; preds = %for.cond123
  %140 = load i32, ptr %i__, align 4, !tbaa !8
  %141 = load i32, ptr %j, align 4, !tbaa !8
  %142 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul127 = mul nsw i32 %141, %142
  %add128 = add nsw i32 %140, %mul127
  store i32 %add128, ptr %i__3, align 4, !tbaa !8
  %143 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %144 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom = sext i32 %144 to i64
  %arrayidx129 = getelementptr inbounds %struct.complex, ptr %143, i64 %idxprom
  %r130 = getelementptr inbounds %struct.complex, ptr %arrayidx129, i32 0, i32 0
  store float 0.000000e+00, ptr %r130, align 4, !tbaa !10
  %145 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %146 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom131 = sext i32 %146 to i64
  %arrayidx132 = getelementptr inbounds %struct.complex, ptr %145, i64 %idxprom131
  %i133 = getelementptr inbounds %struct.complex, ptr %arrayidx132, i32 0, i32 1
  store float 0.000000e+00, ptr %i133, align 4, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body126
  %147 = load i32, ptr %i__, align 4, !tbaa !8
  %inc = add nsw i32 %147, 1
  store i32 %inc, ptr %i__, align 4, !tbaa !8
  br label %for.cond123, !llvm.loop !14

for.end:                                          ; preds = %for.cond123
  br label %for.inc134

for.inc134:                                       ; preds = %for.end
  %148 = load i32, ptr %j, align 4, !tbaa !8
  %inc135 = add nsw i32 %148, 1
  store i32 %inc135, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !16

for.end136:                                       ; preds = %for.cond
  br label %if.end138

if.else137:                                       ; preds = %land.lhs.true100, %land.lhs.true97, %if.end94
  store i32 0, ptr %kk, align 4, !tbaa !8
  br label %if.end138

if.end138:                                        ; preds = %if.else137, %for.end136
  %149 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %150 = load i32, ptr %149, align 4, !tbaa !8
  %151 = load i32, ptr %kk, align 4, !tbaa !8
  %sub139 = sub nsw i32 %150, %151
  store i32 %sub139, ptr %i__1, align 4, !tbaa !8
  %152 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %153 = load i32, ptr %152, align 4, !tbaa !8
  %154 = load i32, ptr %kk, align 4, !tbaa !8
  %sub140 = sub nsw i32 %153, %154
  store i32 %sub140, ptr %i__2, align 4, !tbaa !8
  %155 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %156 = load i32, ptr %155, align 4, !tbaa !8
  %157 = load i32, ptr %kk, align 4, !tbaa !8
  %sub141 = sub nsw i32 %156, %157
  store i32 %sub141, ptr %i__3, align 4, !tbaa !8
  %158 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %159 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom142 = sext i32 %159 to i64
  %arrayidx143 = getelementptr inbounds %struct.complex, ptr %158, i64 %idxprom142
  %160 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %161 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %arrayidx144 = getelementptr inbounds %struct.complex, ptr %161, i64 1
  %162 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx145 = getelementptr inbounds %struct.complex, ptr %162, i64 1
  %call146 = call i32 @cungr2_(ptr noundef %i__1, ptr noundef %i__2, ptr noundef %i__3, ptr noundef %arrayidx143, ptr noundef %160, ptr noundef %arrayidx144, ptr noundef %arrayidx145, ptr noundef %iinfo)
  %163 = load i32, ptr %kk, align 4, !tbaa !8
  %cmp147 = icmp sgt i32 %163, 0
  br i1 %cmp147, label %if.then149, label %if.end249

if.then149:                                       ; preds = %if.end138
  %164 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %165 = load i32, ptr %164, align 4, !tbaa !8
  store i32 %165, ptr %i__1, align 4, !tbaa !8
  %166 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %166, ptr %i__2, align 4, !tbaa !8
  %167 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %168 = load i32, ptr %167, align 4, !tbaa !8
  %169 = load i32, ptr %kk, align 4, !tbaa !8
  %sub150 = sub nsw i32 %168, %169
  %add151 = add nsw i32 %sub150, 1
  store i32 %add151, ptr %i__, align 4, !tbaa !8
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc246, %if.then149
  %170 = load i32, ptr %i__2, align 4, !tbaa !8
  %cmp153 = icmp slt i32 %170, 0
  br i1 %cmp153, label %cond.true155, label %cond.false158

cond.true155:                                     ; preds = %for.cond152
  %171 = load i32, ptr %i__, align 4, !tbaa !8
  %172 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp156 = icmp sge i32 %171, %172
  %conv157 = zext i1 %cmp156 to i32
  br label %cond.end161

cond.false158:                                    ; preds = %for.cond152
  %173 = load i32, ptr %i__, align 4, !tbaa !8
  %174 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp159 = icmp sle i32 %173, %174
  %conv160 = zext i1 %cmp159 to i32
  br label %cond.end161

cond.end161:                                      ; preds = %cond.false158, %cond.true155
  %cond162 = phi i32 [ %conv157, %cond.true155 ], [ %conv160, %cond.false158 ]
  %tobool163 = icmp ne i32 %cond162, 0
  br i1 %tobool163, label %for.body164, label %for.end248

for.body164:                                      ; preds = %cond.end161
  %175 = load i32, ptr %nb, align 4, !tbaa !8
  store i32 %175, ptr %i__3, align 4, !tbaa !8
  %176 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %177 = load i32, ptr %176, align 4, !tbaa !8
  %178 = load i32, ptr %i__, align 4, !tbaa !8
  %sub165 = sub nsw i32 %177, %178
  %add166 = add nsw i32 %sub165, 1
  store i32 %add166, ptr %i__4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x167) #3
  %179 = load i32, ptr %i__3, align 4, !tbaa !8
  store i32 %179, ptr %_x167, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y168) #3
  %180 = load i32, ptr %i__4, align 4, !tbaa !8
  store i32 %180, ptr %_y168, align 4, !tbaa !8
  %181 = load i32, ptr %_x167, align 4, !tbaa !8
  %182 = load i32, ptr %_y168, align 4, !tbaa !8
  %cmp170 = icmp slt i32 %181, %182
  br i1 %cmp170, label %cond.true172, label %cond.false173

cond.true172:                                     ; preds = %for.body164
  %183 = load i32, ptr %_x167, align 4, !tbaa !8
  br label %cond.end174

cond.false173:                                    ; preds = %for.body164
  %184 = load i32, ptr %_y168, align 4, !tbaa !8
  br label %cond.end174

cond.end174:                                      ; preds = %cond.false173, %cond.true172
  %cond175 = phi i32 [ %183, %cond.true172 ], [ %184, %cond.false173 ]
  store i32 %cond175, ptr %tmp169, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y168) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x167) #3
  %185 = load i32, ptr %tmp169, align 4, !tbaa !8
  store i32 %185, ptr %ib, align 4, !tbaa !8
  %186 = load ptr, ptr %m.addr, align 8, !tbaa !4
  %187 = load i32, ptr %186, align 4, !tbaa !8
  %188 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %189 = load i32, ptr %188, align 4, !tbaa !8
  %sub176 = sub nsw i32 %187, %189
  %190 = load i32, ptr %i__, align 4, !tbaa !8
  %add177 = add nsw i32 %sub176, %190
  store i32 %add177, ptr %ii, align 4, !tbaa !8
  %191 = load i32, ptr %ii, align 4, !tbaa !8
  %cmp178 = icmp sgt i32 %191, 1
  br i1 %cmp178, label %if.then180, label %if.end207

if.then180:                                       ; preds = %cond.end174
  %192 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %193 = load i32, ptr %192, align 4, !tbaa !8
  %194 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %195 = load i32, ptr %194, align 4, !tbaa !8
  %sub181 = sub nsw i32 %193, %195
  %196 = load i32, ptr %i__, align 4, !tbaa !8
  %add182 = add nsw i32 %sub181, %196
  %197 = load i32, ptr %ib, align 4, !tbaa !8
  %add183 = add nsw i32 %add182, %197
  %sub184 = sub nsw i32 %add183, 1
  store i32 %sub184, ptr %i__3, align 4, !tbaa !8
  %198 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %199 = load i32, ptr %ii, align 4, !tbaa !8
  %200 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add185 = add nsw i32 %199, %200
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds %struct.complex, ptr %198, i64 %idxprom186
  %201 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %202 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %203 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom188 = sext i32 %203 to i64
  %arrayidx189 = getelementptr inbounds %struct.complex, ptr %202, i64 %idxprom188
  %204 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx190 = getelementptr inbounds %struct.complex, ptr %204, i64 1
  %call191 = call i32 @clarft_(ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %i__3, ptr noundef %ib, ptr noundef %arrayidx187, ptr noundef %201, ptr noundef %arrayidx189, ptr noundef %arrayidx190, ptr noundef %ldwork)
  %205 = load i32, ptr %ii, align 4, !tbaa !8
  %sub192 = sub nsw i32 %205, 1
  store i32 %sub192, ptr %i__3, align 4, !tbaa !8
  %206 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %207 = load i32, ptr %206, align 4, !tbaa !8
  %208 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %209 = load i32, ptr %208, align 4, !tbaa !8
  %sub193 = sub nsw i32 %207, %209
  %210 = load i32, ptr %i__, align 4, !tbaa !8
  %add194 = add nsw i32 %sub193, %210
  %211 = load i32, ptr %ib, align 4, !tbaa !8
  %add195 = add nsw i32 %add194, %211
  %sub196 = sub nsw i32 %add195, 1
  store i32 %sub196, ptr %i__4, align 4, !tbaa !8
  %212 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %213 = load i32, ptr %ii, align 4, !tbaa !8
  %214 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add197 = add nsw i32 %213, %214
  %idxprom198 = sext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds %struct.complex, ptr %212, i64 %idxprom198
  %215 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %216 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx200 = getelementptr inbounds %struct.complex, ptr %216, i64 1
  %217 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %218 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom201 = sext i32 %218 to i64
  %arrayidx202 = getelementptr inbounds %struct.complex, ptr %217, i64 %idxprom201
  %219 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %220 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %221 = load i32, ptr %ib, align 4, !tbaa !8
  %add203 = add nsw i32 %221, 1
  %idxprom204 = sext i32 %add203 to i64
  %arrayidx205 = getelementptr inbounds %struct.complex, ptr %220, i64 %idxprom204
  %call206 = call i32 @clarfb_(ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %i__3, ptr noundef %i__4, ptr noundef %ib, ptr noundef %arrayidx199, ptr noundef %215, ptr noundef %arrayidx200, ptr noundef %ldwork, ptr noundef %arrayidx202, ptr noundef %219, ptr noundef %arrayidx205, ptr noundef %ldwork)
  br label %if.end207

if.end207:                                        ; preds = %if.then180, %cond.end174
  %222 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %223 = load i32, ptr %222, align 4, !tbaa !8
  %224 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %225 = load i32, ptr %224, align 4, !tbaa !8
  %sub208 = sub nsw i32 %223, %225
  %226 = load i32, ptr %i__, align 4, !tbaa !8
  %add209 = add nsw i32 %sub208, %226
  %227 = load i32, ptr %ib, align 4, !tbaa !8
  %add210 = add nsw i32 %add209, %227
  %sub211 = sub nsw i32 %add210, 1
  store i32 %sub211, ptr %i__3, align 4, !tbaa !8
  %228 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %229 = load i32, ptr %ii, align 4, !tbaa !8
  %230 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %add212 = add nsw i32 %229, %230
  %idxprom213 = sext i32 %add212 to i64
  %arrayidx214 = getelementptr inbounds %struct.complex, ptr %228, i64 %idxprom213
  %231 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %232 = load ptr, ptr %tau.addr, align 8, !tbaa !4
  %233 = load i32, ptr %i__, align 4, !tbaa !8
  %idxprom215 = sext i32 %233 to i64
  %arrayidx216 = getelementptr inbounds %struct.complex, ptr %232, i64 %idxprom215
  %234 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx217 = getelementptr inbounds %struct.complex, ptr %234, i64 1
  %call218 = call i32 @cungr2_(ptr noundef %ib, ptr noundef %i__3, ptr noundef %ib, ptr noundef %arrayidx214, ptr noundef %231, ptr noundef %arrayidx216, ptr noundef %arrayidx217, ptr noundef %iinfo)
  %235 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %236 = load i32, ptr %235, align 4, !tbaa !8
  store i32 %236, ptr %i__3, align 4, !tbaa !8
  %237 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %238 = load i32, ptr %237, align 4, !tbaa !8
  %239 = load ptr, ptr %k.addr, align 8, !tbaa !4
  %240 = load i32, ptr %239, align 4, !tbaa !8
  %sub219 = sub nsw i32 %238, %240
  %241 = load i32, ptr %i__, align 4, !tbaa !8
  %add220 = add nsw i32 %sub219, %241
  %242 = load i32, ptr %ib, align 4, !tbaa !8
  %add221 = add nsw i32 %add220, %242
  store i32 %add221, ptr %l, align 4, !tbaa !8
  br label %for.cond222

for.cond222:                                      ; preds = %for.inc243, %if.end207
  %243 = load i32, ptr %l, align 4, !tbaa !8
  %244 = load i32, ptr %i__3, align 4, !tbaa !8
  %cmp223 = icmp sle i32 %243, %244
  br i1 %cmp223, label %for.body225, label %for.end245

for.body225:                                      ; preds = %for.cond222
  %245 = load i32, ptr %ii, align 4, !tbaa !8
  %246 = load i32, ptr %ib, align 4, !tbaa !8
  %add226 = add nsw i32 %245, %246
  %sub227 = sub nsw i32 %add226, 1
  store i32 %sub227, ptr %i__4, align 4, !tbaa !8
  %247 = load i32, ptr %ii, align 4, !tbaa !8
  store i32 %247, ptr %j, align 4, !tbaa !8
  br label %for.cond228

for.cond228:                                      ; preds = %for.inc240, %for.body225
  %248 = load i32, ptr %j, align 4, !tbaa !8
  %249 = load i32, ptr %i__4, align 4, !tbaa !8
  %cmp229 = icmp sle i32 %248, %249
  br i1 %cmp229, label %for.body231, label %for.end242

for.body231:                                      ; preds = %for.cond228
  %250 = load i32, ptr %j, align 4, !tbaa !8
  %251 = load i32, ptr %l, align 4, !tbaa !8
  %252 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul232 = mul nsw i32 %251, %252
  %add233 = add nsw i32 %250, %mul232
  store i32 %add233, ptr %i__5, align 4, !tbaa !8
  %253 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %254 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom234 = sext i32 %254 to i64
  %arrayidx235 = getelementptr inbounds %struct.complex, ptr %253, i64 %idxprom234
  %r236 = getelementptr inbounds %struct.complex, ptr %arrayidx235, i32 0, i32 0
  store float 0.000000e+00, ptr %r236, align 4, !tbaa !10
  %255 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %256 = load i32, ptr %i__5, align 4, !tbaa !8
  %idxprom237 = sext i32 %256 to i64
  %arrayidx238 = getelementptr inbounds %struct.complex, ptr %255, i64 %idxprom237
  %i239 = getelementptr inbounds %struct.complex, ptr %arrayidx238, i32 0, i32 1
  store float 0.000000e+00, ptr %i239, align 4, !tbaa !13
  br label %for.inc240

for.inc240:                                       ; preds = %for.body231
  %257 = load i32, ptr %j, align 4, !tbaa !8
  %inc241 = add nsw i32 %257, 1
  store i32 %inc241, ptr %j, align 4, !tbaa !8
  br label %for.cond228, !llvm.loop !17

for.end242:                                       ; preds = %for.cond228
  br label %for.inc243

for.inc243:                                       ; preds = %for.end242
  %258 = load i32, ptr %l, align 4, !tbaa !8
  %inc244 = add nsw i32 %258, 1
  store i32 %inc244, ptr %l, align 4, !tbaa !8
  br label %for.cond222, !llvm.loop !18

for.end245:                                       ; preds = %for.cond222
  br label %for.inc246

for.inc246:                                       ; preds = %for.end245
  %259 = load i32, ptr %i__2, align 4, !tbaa !8
  %260 = load i32, ptr %i__, align 4, !tbaa !8
  %add247 = add nsw i32 %260, %259
  store i32 %add247, ptr %i__, align 4, !tbaa !8
  br label %for.cond152, !llvm.loop !19

for.end248:                                       ; preds = %cond.end161
  br label %if.end249

if.end249:                                        ; preds = %for.end248, %if.end138
  %261 = load i32, ptr %iws, align 4, !tbaa !8
  %conv250 = sitofp i32 %261 to float
  %262 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx251 = getelementptr inbounds %struct.complex, ptr %262, i64 1
  %r252 = getelementptr inbounds %struct.complex, ptr %arrayidx251, i32 0, i32 0
  store float %conv250, ptr %r252, align 4, !tbaa !10
  %263 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx253 = getelementptr inbounds %struct.complex, ptr %263, i64 1
  %i254 = getelementptr inbounds %struct.complex, ptr %arrayidx253, i32 0, i32 1
  store float 0.000000e+00, ptr %i254, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end249, %if.then57, %if.then52, %if.then48
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ldwork) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbmin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iws) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nx) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %kk) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ii) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %264 = load i32, ptr %retval, align 4
  ret i32 %264
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @cungr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clarft_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clarfb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
