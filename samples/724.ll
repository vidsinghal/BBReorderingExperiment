; ModuleID = 'samples/724.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/zsytrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@c__1 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ZSYTRF\00", align 1
@c_n1 = internal global i32 -1, align 4
@c__2 = internal global i32 2, align 4

; Function Attrs: nounwind uwtable
define i32 @zsytrf_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %work, ptr noundef %lwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %kb = alloca i32, align 4
  %nb = alloca i32, align 4
  %iws = alloca i32, align 4
  %nbmin = alloca i32, align 4
  %iinfo = alloca i32, align 4
  %upper = alloca i32, align 4
  %ldwork = alloca i32, align 4
  %lwkopt = alloca i32, align 4
  %lquery = alloca i32, align 4
  %_x = alloca i32, align 4
  %_y = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_x48 = alloca i32, align 4
  %_y49 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %_x58 = alloca i32, align 4
  %_y59 = alloca i32, align 4
  %tmp60 = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %a, ptr %a.addr, align 8, !tbaa !4
  store ptr %lda, ptr %lda.addr, align 8, !tbaa !4
  store ptr %ipiv, ptr %ipiv.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_dim1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %kb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iws) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %nbmin) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #3
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
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds %struct.doublecomplex, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8, !tbaa !4
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %7, align 4, !tbaa !8
  %8 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %9 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %10 = load i32, ptr %9, align 4, !tbaa !8
  %cmp = icmp eq i32 %10, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %11 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %12 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call2 = call i32 @lsame_(ptr noundef %12, ptr noundef @.str.1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %13, align 4, !tbaa !8
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true, %entry
  %14 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %15 = load i32, ptr %14, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %16 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %16, align 4, !tbaa !8
  br label %if.end20

if.else7:                                         ; preds = %if.else
  %17 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %18 = load i32, ptr %17, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x) #3
  store i32 1, ptr %_x, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y) #3
  %19 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %20 = load i32, ptr %19, align 4, !tbaa !8
  store i32 %20, ptr %_y, align 4, !tbaa !8
  %21 = load i32, ptr %_x, align 4, !tbaa !8
  %22 = load i32, ptr %_y, align 4, !tbaa !8
  %cmp8 = icmp sgt i32 %21, %22
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else7
  %23 = load i32, ptr %_x, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.else7
  %24 = load i32, ptr %_y, align 4, !tbaa !8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ]
  store i32 %cond, ptr %tmp, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x) #3
  %25 = load i32, ptr %tmp, align 4, !tbaa !8
  %cmp10 = icmp slt i32 %18, %25
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %cond.end
  %26 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %26, align 4, !tbaa !8
  br label %if.end19

if.else13:                                        ; preds = %cond.end
  %27 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %28 = load i32, ptr %27, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %28, 1
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %if.else13
  %29 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool17 = icmp ne i32 %29, 0
  br i1 %tobool17, label %if.end, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  %30 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -7, ptr %30, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then18, %land.lhs.true16, %if.else13
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then12
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then6
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then
  %31 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  %cmp22 = icmp eq i32 %32, 0
  br i1 %cmp22, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end21
  %33 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %34 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call25 = call i32 @ilaenv_(ptr noundef @c__1, ptr noundef @.str.2, ptr noundef %33, ptr noundef %34, ptr noundef @c_n1, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call25, ptr %nb, align 4, !tbaa !8
  %35 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %36 = load i32, ptr %35, align 4, !tbaa !8
  %37 = load i32, ptr %nb, align 4, !tbaa !8
  %mul = mul nsw i32 %36, %37
  store i32 %mul, ptr %lwkopt, align 4, !tbaa !8
  %38 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv26 = sitofp i32 %38 to double
  %39 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %39, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double %conv26, ptr %r, align 8, !tbaa !10
  %40 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx27 = getelementptr inbounds %struct.doublecomplex, ptr %40, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx27, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8, !tbaa !13
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end21
  %41 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  %cmp29 = icmp ne i32 %42, 0
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.end28
  %43 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  %sub = sub nsw i32 0, %44
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call32 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else33:                                        ; preds = %if.end28
  %45 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool34 = icmp ne i32 %45, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else33
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end36:                                         ; preds = %if.else33
  br label %if.end37

if.end37:                                         ; preds = %if.end36
  store i32 2, ptr %nbmin, align 4, !tbaa !8
  %46 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  store i32 %47, ptr %ldwork, align 4, !tbaa !8
  %48 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp38 = icmp sgt i32 %48, 1
  br i1 %cmp38, label %land.lhs.true40, label %if.else68

land.lhs.true40:                                  ; preds = %if.end37
  %49 = load i32, ptr %nb, align 4, !tbaa !8
  %50 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %51 = load i32, ptr %50, align 4, !tbaa !8
  %cmp41 = icmp slt i32 %49, %51
  br i1 %cmp41, label %if.then43, label %if.else68

if.then43:                                        ; preds = %land.lhs.true40
  %52 = load i32, ptr %ldwork, align 4, !tbaa !8
  %53 = load i32, ptr %nb, align 4, !tbaa !8
  %mul44 = mul nsw i32 %52, %53
  store i32 %mul44, ptr %iws, align 4, !tbaa !8
  %54 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %55 = load i32, ptr %54, align 4, !tbaa !8
  %56 = load i32, ptr %iws, align 4, !tbaa !8
  %cmp45 = icmp slt i32 %55, %56
  br i1 %cmp45, label %if.then47, label %if.end67

if.then47:                                        ; preds = %if.then43
  %57 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %58 = load i32, ptr %57, align 4, !tbaa !8
  %59 = load i32, ptr %ldwork, align 4, !tbaa !8
  %div = sdiv i32 %58, %59
  store i32 %div, ptr %i__1, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x48) #3
  %60 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %60, ptr %_x48, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y49) #3
  store i32 1, ptr %_y49, align 4, !tbaa !8
  %61 = load i32, ptr %_x48, align 4, !tbaa !8
  %62 = load i32, ptr %_y49, align 4, !tbaa !8
  %cmp51 = icmp sgt i32 %61, %62
  br i1 %cmp51, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %if.then47
  %63 = load i32, ptr %_x48, align 4, !tbaa !8
  br label %cond.end55

cond.false54:                                     ; preds = %if.then47
  %64 = load i32, ptr %_y49, align 4, !tbaa !8
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.true53
  %cond56 = phi i32 [ %63, %cond.true53 ], [ %64, %cond.false54 ]
  store i32 %cond56, ptr %tmp50, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y49) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x48) #3
  %65 = load i32, ptr %tmp50, align 4, !tbaa !8
  store i32 %65, ptr %nb, align 4, !tbaa !8
  store i32 2, ptr %i__1, align 4, !tbaa !8
  %66 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %67 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call57 = call i32 @ilaenv_(ptr noundef @c__2, ptr noundef @.str.2, ptr noundef %66, ptr noundef %67, ptr noundef @c_n1, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call57, ptr %i__2, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_x58) #3
  %68 = load i32, ptr %i__1, align 4, !tbaa !8
  store i32 %68, ptr %_x58, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_y59) #3
  %69 = load i32, ptr %i__2, align 4, !tbaa !8
  store i32 %69, ptr %_y59, align 4, !tbaa !8
  %70 = load i32, ptr %_x58, align 4, !tbaa !8
  %71 = load i32, ptr %_y59, align 4, !tbaa !8
  %cmp61 = icmp sgt i32 %70, %71
  br i1 %cmp61, label %cond.true63, label %cond.false64

cond.true63:                                      ; preds = %cond.end55
  %72 = load i32, ptr %_x58, align 4, !tbaa !8
  br label %cond.end65

cond.false64:                                     ; preds = %cond.end55
  %73 = load i32, ptr %_y59, align 4, !tbaa !8
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false64, %cond.true63
  %cond66 = phi i32 [ %72, %cond.true63 ], [ %73, %cond.false64 ]
  store i32 %cond66, ptr %tmp60, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 4, ptr %_y59) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %_x58) #3
  %74 = load i32, ptr %tmp60, align 4, !tbaa !8
  store i32 %74, ptr %nbmin, align 4, !tbaa !8
  br label %if.end67

if.end67:                                         ; preds = %cond.end65, %if.then43
  br label %if.end69

if.else68:                                        ; preds = %land.lhs.true40, %if.end37
  store i32 1, ptr %iws, align 4, !tbaa !8
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.end67
  %75 = load i32, ptr %nb, align 4, !tbaa !8
  %76 = load i32, ptr %nbmin, align 4, !tbaa !8
  %cmp70 = icmp slt i32 %75, %76
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end69
  %77 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %78 = load i32, ptr %77, align 4, !tbaa !8
  store i32 %78, ptr %nb, align 4, !tbaa !8
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end69
  %79 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool74 = icmp ne i32 %79, 0
  br i1 %tobool74, label %if.then75, label %if.else101

if.then75:                                        ; preds = %if.end73
  %80 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %81 = load i32, ptr %80, align 4, !tbaa !8
  store i32 %81, ptr %k, align 4, !tbaa !8
  br label %L10

L10:                                              ; preds = %if.end99, %if.then75
  %82 = load i32, ptr %k, align 4, !tbaa !8
  %cmp76 = icmp slt i32 %82, 1
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %L10
  br label %L40

if.end79:                                         ; preds = %L10
  %83 = load i32, ptr %k, align 4, !tbaa !8
  %84 = load i32, ptr %nb, align 4, !tbaa !8
  %cmp80 = icmp sgt i32 %83, %84
  br i1 %cmp80, label %if.then82, label %if.else87

if.then82:                                        ; preds = %if.end79
  %85 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %86 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %87 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom = sext i32 %87 to i64
  %arrayidx83 = getelementptr inbounds %struct.doublecomplex, ptr %86, i64 %idxprom
  %88 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %89 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %arrayidx84 = getelementptr inbounds i32, ptr %89, i64 1
  %90 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds %struct.doublecomplex, ptr %90, i64 1
  %91 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call86 = call i32 @zlasyf_(ptr noundef %85, ptr noundef %k, ptr noundef %nb, ptr noundef %kb, ptr noundef %arrayidx83, ptr noundef %88, ptr noundef %arrayidx84, ptr noundef %arrayidx85, ptr noundef %91, ptr noundef %iinfo)
  br label %if.end92

if.else87:                                        ; preds = %if.end79
  %92 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %93 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %94 = load i32, ptr %a_offset, align 4, !tbaa !8
  %idxprom88 = sext i32 %94 to i64
  %arrayidx89 = getelementptr inbounds %struct.doublecomplex, ptr %93, i64 %idxprom88
  %95 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %96 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds i32, ptr %96, i64 1
  %call91 = call i32 @zsytf2_(ptr noundef %92, ptr noundef %k, ptr noundef %arrayidx89, ptr noundef %95, ptr noundef %arrayidx90, ptr noundef %iinfo)
  %97 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %97, ptr %kb, align 4, !tbaa !8
  br label %if.end92

if.end92:                                         ; preds = %if.else87, %if.then82
  %98 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %99 = load i32, ptr %98, align 4, !tbaa !8
  %cmp93 = icmp eq i32 %99, 0
  br i1 %cmp93, label %land.lhs.true95, label %if.end99

land.lhs.true95:                                  ; preds = %if.end92
  %100 = load i32, ptr %iinfo, align 4, !tbaa !8
  %cmp96 = icmp sgt i32 %100, 0
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %land.lhs.true95
  %101 = load i32, ptr %iinfo, align 4, !tbaa !8
  %102 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %101, ptr %102, align 4, !tbaa !8
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %land.lhs.true95, %if.end92
  %103 = load i32, ptr %kb, align 4, !tbaa !8
  %104 = load i32, ptr %k, align 4, !tbaa !8
  %sub100 = sub nsw i32 %104, %103
  store i32 %sub100, ptr %k, align 4, !tbaa !8
  br label %L10

if.else101:                                       ; preds = %if.end73
  store i32 1, ptr %k, align 4, !tbaa !8
  br label %L20

L20:                                              ; preds = %for.end, %if.else101
  %105 = load i32, ptr %k, align 4, !tbaa !8
  %106 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %107 = load i32, ptr %106, align 4, !tbaa !8
  %cmp102 = icmp sgt i32 %105, %107
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %L20
  br label %L40

if.end105:                                        ; preds = %L20
  %108 = load i32, ptr %k, align 4, !tbaa !8
  %109 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %110 = load i32, ptr %109, align 4, !tbaa !8
  %111 = load i32, ptr %nb, align 4, !tbaa !8
  %sub106 = sub nsw i32 %110, %111
  %cmp107 = icmp sle i32 %108, %sub106
  br i1 %cmp107, label %if.then109, label %if.else120

if.then109:                                       ; preds = %if.end105
  %112 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %113 = load i32, ptr %112, align 4, !tbaa !8
  %114 = load i32, ptr %k, align 4, !tbaa !8
  %sub110 = sub nsw i32 %113, %114
  %add111 = add nsw i32 %sub110, 1
  store i32 %add111, ptr %i__1, align 4, !tbaa !8
  %115 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %116 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %117 = load i32, ptr %k, align 4, !tbaa !8
  %118 = load i32, ptr %k, align 4, !tbaa !8
  %119 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul112 = mul nsw i32 %118, %119
  %add113 = add nsw i32 %117, %mul112
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds %struct.doublecomplex, ptr %116, i64 %idxprom114
  %120 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %121 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %122 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom116 = sext i32 %122 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %121, i64 %idxprom116
  %123 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx118 = getelementptr inbounds %struct.doublecomplex, ptr %123, i64 1
  %124 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %call119 = call i32 @zlasyf_(ptr noundef %115, ptr noundef %i__1, ptr noundef %nb, ptr noundef %kb, ptr noundef %arrayidx115, ptr noundef %120, ptr noundef %arrayidx117, ptr noundef %arrayidx118, ptr noundef %124, ptr noundef %iinfo)
  br label %if.end132

if.else120:                                       ; preds = %if.end105
  %125 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %126 = load i32, ptr %125, align 4, !tbaa !8
  %127 = load i32, ptr %k, align 4, !tbaa !8
  %sub121 = sub nsw i32 %126, %127
  %add122 = add nsw i32 %sub121, 1
  store i32 %add122, ptr %i__1, align 4, !tbaa !8
  %128 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %a.addr, align 8, !tbaa !4
  %130 = load i32, ptr %k, align 4, !tbaa !8
  %131 = load i32, ptr %k, align 4, !tbaa !8
  %132 = load i32, ptr %a_dim1, align 4, !tbaa !8
  %mul123 = mul nsw i32 %131, %132
  %add124 = add nsw i32 %130, %mul123
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds %struct.doublecomplex, ptr %129, i64 %idxprom125
  %133 = load ptr, ptr %lda.addr, align 8, !tbaa !4
  %134 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %135 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom127 = sext i32 %135 to i64
  %arrayidx128 = getelementptr inbounds i32, ptr %134, i64 %idxprom127
  %call129 = call i32 @zsytf2_(ptr noundef %128, ptr noundef %i__1, ptr noundef %arrayidx126, ptr noundef %133, ptr noundef %arrayidx128, ptr noundef %iinfo)
  %136 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %137 = load i32, ptr %136, align 4, !tbaa !8
  %138 = load i32, ptr %k, align 4, !tbaa !8
  %sub130 = sub nsw i32 %137, %138
  %add131 = add nsw i32 %sub130, 1
  store i32 %add131, ptr %kb, align 4, !tbaa !8
  br label %if.end132

if.end132:                                        ; preds = %if.else120, %if.then109
  %139 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %140 = load i32, ptr %139, align 4, !tbaa !8
  %cmp133 = icmp eq i32 %140, 0
  br i1 %cmp133, label %land.lhs.true135, label %if.end141

land.lhs.true135:                                 ; preds = %if.end132
  %141 = load i32, ptr %iinfo, align 4, !tbaa !8
  %cmp136 = icmp sgt i32 %141, 0
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %land.lhs.true135
  %142 = load i32, ptr %iinfo, align 4, !tbaa !8
  %143 = load i32, ptr %k, align 4, !tbaa !8
  %add139 = add nsw i32 %142, %143
  %sub140 = sub nsw i32 %add139, 1
  %144 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %sub140, ptr %144, align 4, !tbaa !8
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %land.lhs.true135, %if.end132
  %145 = load i32, ptr %k, align 4, !tbaa !8
  %146 = load i32, ptr %kb, align 4, !tbaa !8
  %add142 = add nsw i32 %145, %146
  %sub143 = sub nsw i32 %add142, 1
  store i32 %sub143, ptr %i__1, align 4, !tbaa !8
  %147 = load i32, ptr %k, align 4, !tbaa !8
  store i32 %147, ptr %j, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end141
  %148 = load i32, ptr %j, align 4, !tbaa !8
  %149 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp144 = icmp sle i32 %148, %149
  br i1 %cmp144, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %150 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %151 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom146 = sext i32 %151 to i64
  %arrayidx147 = getelementptr inbounds i32, ptr %150, i64 %idxprom146
  %152 = load i32, ptr %arrayidx147, align 4, !tbaa !8
  %cmp148 = icmp sgt i32 %152, 0
  br i1 %cmp148, label %if.then150, label %if.else157

if.then150:                                       ; preds = %for.body
  %153 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %154 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom151 = sext i32 %154 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %153, i64 %idxprom151
  %155 = load i32, ptr %arrayidx152, align 4, !tbaa !8
  %156 = load i32, ptr %k, align 4, !tbaa !8
  %add153 = add nsw i32 %155, %156
  %sub154 = sub nsw i32 %add153, 1
  %157 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %158 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom155 = sext i32 %158 to i64
  %arrayidx156 = getelementptr inbounds i32, ptr %157, i64 %idxprom155
  store i32 %sub154, ptr %arrayidx156, align 4, !tbaa !8
  br label %if.end164

if.else157:                                       ; preds = %for.body
  %159 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %160 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom158 = sext i32 %160 to i64
  %arrayidx159 = getelementptr inbounds i32, ptr %159, i64 %idxprom158
  %161 = load i32, ptr %arrayidx159, align 4, !tbaa !8
  %162 = load i32, ptr %k, align 4, !tbaa !8
  %sub160 = sub nsw i32 %161, %162
  %add161 = add nsw i32 %sub160, 1
  %163 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %164 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom162 = sext i32 %164 to i64
  %arrayidx163 = getelementptr inbounds i32, ptr %163, i64 %idxprom162
  store i32 %add161, ptr %arrayidx163, align 4, !tbaa !8
  br label %if.end164

if.end164:                                        ; preds = %if.else157, %if.then150
  br label %for.inc

for.inc:                                          ; preds = %if.end164
  %165 = load i32, ptr %j, align 4, !tbaa !8
  %inc = add nsw i32 %165, 1
  store i32 %inc, ptr %j, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %166 = load i32, ptr %kb, align 4, !tbaa !8
  %167 = load i32, ptr %k, align 4, !tbaa !8
  %add165 = add nsw i32 %167, %166
  store i32 %add165, ptr %k, align 4, !tbaa !8
  br label %L20

L40:                                              ; preds = %if.then104, %if.then78
  %168 = load i32, ptr %lwkopt, align 4, !tbaa !8
  %conv166 = sitofp i32 %168 to double
  %169 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx167 = getelementptr inbounds %struct.doublecomplex, ptr %169, i64 1
  %r168 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx167, i32 0, i32 0
  store double %conv166, ptr %r168, align 8, !tbaa !10
  %170 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx169 = getelementptr inbounds %struct.doublecomplex, ptr %170, i64 1
  %i170 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx169, i32 0, i32 1
  store double 0.000000e+00, ptr %i170, align 8, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %L40, %if.then35, %if.then31
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwkopt) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ldwork) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iinfo) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nbmin) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %iws) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %nb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %kb) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_offset) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a_dim1) #3
  %171 = load i32, ptr %retval, align 4
  ret i32 %171
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @ilaenv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare i32 @zlasyf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @zsytf2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!11 = !{!"", !12, i64 0, !12, i64 8}
!12 = !{!"double", !6, i64 0}
!13 = !{!11, !12, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
