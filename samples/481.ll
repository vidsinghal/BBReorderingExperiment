; ModuleID = 'samples/481.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/chbev_2stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@c__2 = internal global i32 2, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"CHETRD_HB2ST\00", align 1
@c_n1 = internal global i32 -1, align 4
@c__3 = internal global i32 3, align 4
@c__4 = internal global i32 4, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"CHBEV_2STAGE \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@c_b21 = internal global float 1.000000e+00, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define i32 @chbev_2stage_(ptr noundef %jobz, ptr noundef %uplo, ptr noundef %n, ptr noundef %kd, ptr noundef %ab, ptr noundef %ldab, ptr noundef %w, ptr noundef %z__, ptr noundef %ldz, ptr noundef %work, ptr noundef %lwork, ptr noundef %rwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %jobz.addr = alloca ptr, align 8
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %kd.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %ldz.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %lwork.addr = alloca ptr, align 8
  %rwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %z_dim1 = alloca i32, align 4
  %z_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %ib = alloca i32, align 4
  %eps = alloca float, align 4
  %inde = alloca i32, align 4
  %anrm = alloca float, align 4
  %imax = alloca i32, align 4
  %rmin = alloca float, align 4
  %rmax = alloca float, align 4
  %sigma = alloca float, align 4
  %iinfo = alloca i32, align 4
  %lhtrd = alloca i32, align 4
  %lwmin = alloca i32, align 4
  %lower = alloca i32, align 4
  %lwtrd = alloca i32, align 4
  %wantz = alloca i32, align 4
  %iscale = alloca i32, align 4
  %safmin = alloca float, align 4
  %bignum = alloca float, align 4
  %indwrk = alloca i32, align 4
  %indrwk = alloca i32, align 4
  %llwork = alloca i32, align 4
  %smlnum = alloca float, align 4
  %lquery = alloca i32, align 4
  %indhous = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %jobz, ptr %jobz.addr, align 8, !tbaa !4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %kd, ptr %kd.addr, align 8, !tbaa !4
  store ptr %ab, ptr %ab.addr, align 8, !tbaa !4
  store ptr %ldab, ptr %ldab.addr, align 8, !tbaa !4
  store ptr %w, ptr %w.addr, align 8, !tbaa !4
  store ptr %z__, ptr %z__.addr, align 8, !tbaa !4
  store ptr %ldz, ptr %ldz.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %lwork, ptr %lwork.addr, align 8, !tbaa !4
  store ptr %rwork, ptr %rwork.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ab_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_dim1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z_offset) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ib) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %eps) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %inde) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %anrm) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %imax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rmin) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %rmax) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sigma) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %iinfo) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lhtrd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lwmin) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lower) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lwtrd) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %wantz) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %iscale) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %safmin) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %bignum) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %indwrk) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %indrwk) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %llwork) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %smlnum) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lquery) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %indhous) #4
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8, !tbaa !4
  %5 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %w.addr, align 8, !tbaa !4
  %6 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %7 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %7, ptr %z_dim1, align 4, !tbaa !8
  %8 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %add1 = add nsw i32 1, %8
  store i32 %add1, ptr %z_offset, align 4, !tbaa !8
  %9 = load i32, ptr %z_offset, align 4, !tbaa !8
  %10 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %idx.ext2 = sext i32 %9 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds %struct.complex, ptr %10, i64 %idx.neg3
  store ptr %add.ptr4, ptr %z__.addr, align 8, !tbaa !4
  %11 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr5 = getelementptr inbounds %struct.complex, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %work.addr, align 8, !tbaa !4
  %12 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %incdec.ptr6 = getelementptr inbounds float, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %rwork.addr, align 8, !tbaa !4
  %13 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %13, ptr noundef @.str)
  store i32 %call, ptr %wantz, align 4, !tbaa !8
  %14 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call7 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.1)
  store i32 %call7, ptr %lower, align 4, !tbaa !8
  %15 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp = icmp eq i32 %16, -1
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %lquery, align 4, !tbaa !8
  %17 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %17, align 4, !tbaa !8
  %18 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %call8 = call i32 @lsame_(ptr noundef %18, ptr noundef @.str.2)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %19 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %19, align 4, !tbaa !8
  br label %if.end38

if.else:                                          ; preds = %entry
  %20 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool9 = icmp ne i32 %20, 0
  br i1 %tobool9, label %if.else13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %21 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call10 = call i32 @lsame_(ptr noundef %21, ptr noundef @.str.3)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else13, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false
  %22 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %22, align 4, !tbaa !8
  br label %if.end37

if.else13:                                        ; preds = %lor.lhs.false, %if.else
  %23 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %24 = load i32, ptr %23, align 4, !tbaa !8
  %cmp14 = icmp slt i32 %24, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else13
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -3, ptr %25, align 4, !tbaa !8
  br label %if.end36

if.else17:                                        ; preds = %if.else13
  %26 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %27 = load i32, ptr %26, align 4, !tbaa !8
  %cmp18 = icmp slt i32 %27, 0
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else17
  %28 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -4, ptr %28, align 4, !tbaa !8
  br label %if.end35

if.else21:                                        ; preds = %if.else17
  %29 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  %31 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %32 = load i32, ptr %31, align 4, !tbaa !8
  %add22 = add nsw i32 %32, 1
  %cmp23 = icmp slt i32 %30, %add22
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else21
  %33 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -6, ptr %33, align 4, !tbaa !8
  br label %if.end34

if.else26:                                        ; preds = %if.else21
  %34 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %cmp27 = icmp slt i32 %35, 1
  br i1 %cmp27, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.else26
  %36 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool30 = icmp ne i32 %36, 0
  br i1 %tobool30, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false29
  %37 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %38 = load i32, ptr %37, align 4, !tbaa !8
  %39 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %40 = load i32, ptr %39, align 4, !tbaa !8
  %cmp31 = icmp slt i32 %38, %40
  br i1 %cmp31, label %if.then33, label %if.end

if.then33:                                        ; preds = %land.lhs.true, %if.else26
  %41 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -9, ptr %41, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then33, %land.lhs.true, %lor.lhs.false29
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.then25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then20
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then16
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then12
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then
  %42 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %43 = load i32, ptr %42, align 4, !tbaa !8
  %cmp39 = icmp eq i32 %43, 0
  br i1 %cmp39, label %if.then41, label %if.end64

if.then41:                                        ; preds = %if.end38
  %44 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %45 = load i32, ptr %44, align 4, !tbaa !8
  %cmp42 = icmp sle i32 %45, 1
  br i1 %cmp42, label %if.then44, label %if.else47

if.then44:                                        ; preds = %if.then41
  store i32 1, ptr %lwmin, align 4, !tbaa !8
  %46 = load i32, ptr %lwmin, align 4, !tbaa !8
  %conv45 = sitofp i32 %46 to float
  %47 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds %struct.complex, ptr %47, i64 1
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float %conv45, ptr %r, align 4, !tbaa !10
  %48 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx46 = getelementptr inbounds %struct.complex, ptr %48, i64 1
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx46, i32 0, i32 1
  store float 0.000000e+00, ptr %i, align 4, !tbaa !13
  br label %if.end57

if.else47:                                        ; preds = %if.then41
  %49 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %50 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %call48 = call i32 @ilaenv2stage_(ptr noundef @c__2, ptr noundef @.str.4, ptr noundef %49, ptr noundef %50, ptr noundef %51, ptr noundef @c_n1, ptr noundef @c_n1)
  store i32 %call48, ptr %ib, align 4, !tbaa !8
  %52 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %53 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %54 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %call49 = call i32 @ilaenv2stage_(ptr noundef @c__3, ptr noundef @.str.4, ptr noundef %52, ptr noundef %53, ptr noundef %54, ptr noundef %ib, ptr noundef @c_n1)
  store i32 %call49, ptr %lhtrd, align 4, !tbaa !8
  %55 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %56 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %57 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %call50 = call i32 @ilaenv2stage_(ptr noundef @c__4, ptr noundef @.str.4, ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %ib, ptr noundef @c_n1)
  store i32 %call50, ptr %lwtrd, align 4, !tbaa !8
  %58 = load i32, ptr %lhtrd, align 4, !tbaa !8
  %59 = load i32, ptr %lwtrd, align 4, !tbaa !8
  %add51 = add nsw i32 %58, %59
  store i32 %add51, ptr %lwmin, align 4, !tbaa !8
  %60 = load i32, ptr %lwmin, align 4, !tbaa !8
  %conv52 = sitofp i32 %60 to float
  %61 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx53 = getelementptr inbounds %struct.complex, ptr %61, i64 1
  %r54 = getelementptr inbounds %struct.complex, ptr %arrayidx53, i32 0, i32 0
  store float %conv52, ptr %r54, align 4, !tbaa !10
  %62 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx55 = getelementptr inbounds %struct.complex, ptr %62, i64 1
  %i56 = getelementptr inbounds %struct.complex, ptr %arrayidx55, i32 0, i32 1
  store float 0.000000e+00, ptr %i56, align 4, !tbaa !13
  br label %if.end57

if.end57:                                         ; preds = %if.else47, %if.then44
  %63 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %65 = load i32, ptr %lwmin, align 4, !tbaa !8
  %cmp58 = icmp slt i32 %64, %65
  br i1 %cmp58, label %land.lhs.true60, label %if.end63

land.lhs.true60:                                  ; preds = %if.end57
  %66 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool61 = icmp ne i32 %66, 0
  br i1 %tobool61, label %if.end63, label %if.then62

if.then62:                                        ; preds = %land.lhs.true60
  %67 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -11, ptr %67, align 4, !tbaa !8
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true60, %if.end57
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end38
  %68 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %69 = load i32, ptr %68, align 4, !tbaa !8
  %cmp65 = icmp ne i32 %69, 0
  br i1 %cmp65, label %if.then67, label %if.else69

if.then67:                                        ; preds = %if.end64
  %70 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %sub = sub nsw i32 0, %71
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call68 = call i32 @xerbla_(ptr noundef @.str.5, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else69:                                        ; preds = %if.end64
  %72 = load i32, ptr %lquery, align 4, !tbaa !8
  %tobool70 = icmp ne i32 %72, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.else69
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end72:                                         ; preds = %if.else69
  br label %if.end73

if.end73:                                         ; preds = %if.end72
  %73 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %74 = load i32, ptr %73, align 4, !tbaa !8
  %cmp74 = icmp eq i32 %74, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end73
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.end73
  %75 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %76 = load i32, ptr %75, align 4, !tbaa !8
  %cmp78 = icmp eq i32 %76, 1
  br i1 %cmp78, label %if.then80, label %if.end105

if.then80:                                        ; preds = %if.end77
  %77 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool81 = icmp ne i32 %77, 0
  br i1 %tobool81, label %if.then82, label %if.else87

if.then82:                                        ; preds = %if.then80
  %78 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %add83 = add nsw i32 %78, 1
  store i32 %add83, ptr %i__1, align 4, !tbaa !8
  %79 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %80 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom = sext i32 %80 to i64
  %arrayidx84 = getelementptr inbounds %struct.complex, ptr %79, i64 %idxprom
  %r85 = getelementptr inbounds %struct.complex, ptr %arrayidx84, i32 0, i32 0
  %81 = load float, ptr %r85, align 4, !tbaa !10
  %82 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx86 = getelementptr inbounds float, ptr %82, i64 1
  store float %81, ptr %arrayidx86, align 4, !tbaa !14
  br label %if.end94

if.else87:                                        ; preds = %if.then80
  %83 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %84 = load i32, ptr %83, align 4, !tbaa !8
  %add88 = add nsw i32 %84, 1
  %85 = load i32, ptr %ab_dim1, align 4, !tbaa !8
  %add89 = add nsw i32 %add88, %85
  store i32 %add89, ptr %i__1, align 4, !tbaa !8
  %86 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %87 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom90 = sext i32 %87 to i64
  %arrayidx91 = getelementptr inbounds %struct.complex, ptr %86, i64 %idxprom90
  %r92 = getelementptr inbounds %struct.complex, ptr %arrayidx91, i32 0, i32 0
  %88 = load float, ptr %r92, align 4, !tbaa !10
  %89 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx93 = getelementptr inbounds float, ptr %89, i64 1
  store float %88, ptr %arrayidx93, align 4, !tbaa !14
  br label %if.end94

if.end94:                                         ; preds = %if.else87, %if.then82
  %90 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool95 = icmp ne i32 %90, 0
  br i1 %tobool95, label %if.then96, label %if.end104

if.then96:                                        ; preds = %if.end94
  %91 = load i32, ptr %z_dim1, align 4, !tbaa !8
  %add97 = add nsw i32 %91, 1
  store i32 %add97, ptr %i__1, align 4, !tbaa !8
  %92 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %93 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom98 = sext i32 %93 to i64
  %arrayidx99 = getelementptr inbounds %struct.complex, ptr %92, i64 %idxprom98
  %r100 = getelementptr inbounds %struct.complex, ptr %arrayidx99, i32 0, i32 0
  store float 1.000000e+00, ptr %r100, align 4, !tbaa !10
  %94 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %95 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom101 = sext i32 %95 to i64
  %arrayidx102 = getelementptr inbounds %struct.complex, ptr %94, i64 %idxprom101
  %i103 = getelementptr inbounds %struct.complex, ptr %arrayidx102, i32 0, i32 1
  store float 0.000000e+00, ptr %i103, align 4, !tbaa !13
  br label %if.end104

if.end104:                                        ; preds = %if.then96, %if.end94
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end105:                                        ; preds = %if.end77
  %call106 = call float @slamch_(ptr noundef @.str.6)
  store float %call106, ptr %safmin, align 4, !tbaa !14
  %call107 = call float @slamch_(ptr noundef @.str.7)
  store float %call107, ptr %eps, align 4, !tbaa !14
  %96 = load float, ptr %safmin, align 4, !tbaa !14
  %97 = load float, ptr %eps, align 4, !tbaa !14
  %div = fdiv float %96, %97
  store float %div, ptr %smlnum, align 4, !tbaa !14
  %98 = load float, ptr %smlnum, align 4, !tbaa !14
  %div108 = fdiv float 1.000000e+00, %98
  store float %div108, ptr %bignum, align 4, !tbaa !14
  %99 = load float, ptr %smlnum, align 4, !tbaa !14
  %conv109 = fpext float %99 to double
  %call110 = call double @sqrt(double noundef %conv109) #4
  %conv111 = fptrunc double %call110 to float
  store float %conv111, ptr %rmin, align 4, !tbaa !14
  %100 = load float, ptr %bignum, align 4, !tbaa !14
  %conv112 = fpext float %100 to double
  %call113 = call double @sqrt(double noundef %conv112) #4
  %conv114 = fptrunc double %call113 to float
  store float %conv114, ptr %rmax, align 4, !tbaa !14
  %101 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %102 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %103 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %104 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %105 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom115 = sext i32 %105 to i64
  %arrayidx116 = getelementptr inbounds %struct.complex, ptr %104, i64 %idxprom115
  %106 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %107 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %arrayidx117 = getelementptr inbounds float, ptr %107, i64 1
  %call118 = call float @clanhb_(ptr noundef @.str.8, ptr noundef %101, ptr noundef %102, ptr noundef %103, ptr noundef %arrayidx116, ptr noundef %106, ptr noundef %arrayidx117)
  store float %call118, ptr %anrm, align 4, !tbaa !14
  store i32 0, ptr %iscale, align 4, !tbaa !8
  %108 = load float, ptr %anrm, align 4, !tbaa !14
  %cmp119 = fcmp ogt float %108, 0.000000e+00
  br i1 %cmp119, label %land.lhs.true121, label %if.else126

land.lhs.true121:                                 ; preds = %if.end105
  %109 = load float, ptr %anrm, align 4, !tbaa !14
  %110 = load float, ptr %rmin, align 4, !tbaa !14
  %cmp122 = fcmp olt float %109, %110
  br i1 %cmp122, label %if.then124, label %if.else126

if.then124:                                       ; preds = %land.lhs.true121
  store i32 1, ptr %iscale, align 4, !tbaa !8
  %111 = load float, ptr %rmin, align 4, !tbaa !14
  %112 = load float, ptr %anrm, align 4, !tbaa !14
  %div125 = fdiv float %111, %112
  store float %div125, ptr %sigma, align 4, !tbaa !14
  br label %if.end132

if.else126:                                       ; preds = %land.lhs.true121, %if.end105
  %113 = load float, ptr %anrm, align 4, !tbaa !14
  %114 = load float, ptr %rmax, align 4, !tbaa !14
  %cmp127 = fcmp ogt float %113, %114
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.else126
  store i32 1, ptr %iscale, align 4, !tbaa !8
  %115 = load float, ptr %rmax, align 4, !tbaa !14
  %116 = load float, ptr %anrm, align 4, !tbaa !14
  %div130 = fdiv float %115, %116
  store float %div130, ptr %sigma, align 4, !tbaa !14
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.else126
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.then124
  %117 = load i32, ptr %iscale, align 4, !tbaa !8
  %cmp133 = icmp eq i32 %117, 1
  br i1 %cmp133, label %if.then135, label %if.end146

if.then135:                                       ; preds = %if.end132
  %118 = load i32, ptr %lower, align 4, !tbaa !8
  %tobool136 = icmp ne i32 %118, 0
  br i1 %tobool136, label %if.then137, label %if.else141

if.then137:                                       ; preds = %if.then135
  %119 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %120 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %121 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %122 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %123 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %124 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom138 = sext i32 %124 to i64
  %arrayidx139 = getelementptr inbounds %struct.complex, ptr %123, i64 %idxprom138
  %125 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %126 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call140 = call i32 @clascl_(ptr noundef @.str.9, ptr noundef %119, ptr noundef %120, ptr noundef @c_b21, ptr noundef %sigma, ptr noundef %121, ptr noundef %122, ptr noundef %arrayidx139, ptr noundef %125, ptr noundef %126)
  br label %if.end145

if.else141:                                       ; preds = %if.then135
  %127 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %128 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %129 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %130 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %131 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %132 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom142 = sext i32 %132 to i64
  %arrayidx143 = getelementptr inbounds %struct.complex, ptr %131, i64 %idxprom142
  %133 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %134 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call144 = call i32 @clascl_(ptr noundef @.str.10, ptr noundef %127, ptr noundef %128, ptr noundef @c_b21, ptr noundef %sigma, ptr noundef %129, ptr noundef %130, ptr noundef %arrayidx143, ptr noundef %133, ptr noundef %134)
  br label %if.end145

if.end145:                                        ; preds = %if.else141, %if.then137
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end132
  store i32 1, ptr %inde, align 4, !tbaa !8
  store i32 1, ptr %indhous, align 4, !tbaa !8
  %135 = load i32, ptr %indhous, align 4, !tbaa !8
  %136 = load i32, ptr %lhtrd, align 4, !tbaa !8
  %add147 = add nsw i32 %135, %136
  store i32 %add147, ptr %indwrk, align 4, !tbaa !8
  %137 = load ptr, ptr %lwork.addr, align 8, !tbaa !4
  %138 = load i32, ptr %137, align 4, !tbaa !8
  %139 = load i32, ptr %indwrk, align 4, !tbaa !8
  %sub148 = sub nsw i32 %138, %139
  %add149 = add nsw i32 %sub148, 1
  store i32 %add149, ptr %llwork, align 4, !tbaa !8
  %140 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %141 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %142 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %143 = load ptr, ptr %kd.addr, align 8, !tbaa !4
  %144 = load ptr, ptr %ab.addr, align 8, !tbaa !4
  %145 = load i32, ptr %ab_offset, align 4, !tbaa !8
  %idxprom150 = sext i32 %145 to i64
  %arrayidx151 = getelementptr inbounds %struct.complex, ptr %144, i64 %idxprom150
  %146 = load ptr, ptr %ldab.addr, align 8, !tbaa !4
  %147 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx152 = getelementptr inbounds float, ptr %147, i64 1
  %148 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %149 = load i32, ptr %inde, align 4, !tbaa !8
  %idxprom153 = sext i32 %149 to i64
  %arrayidx154 = getelementptr inbounds float, ptr %148, i64 %idxprom153
  %150 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %151 = load i32, ptr %indhous, align 4, !tbaa !8
  %idxprom155 = sext i32 %151 to i64
  %arrayidx156 = getelementptr inbounds %struct.complex, ptr %150, i64 %idxprom155
  %152 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %153 = load i32, ptr %indwrk, align 4, !tbaa !8
  %idxprom157 = sext i32 %153 to i64
  %arrayidx158 = getelementptr inbounds %struct.complex, ptr %152, i64 %idxprom157
  %call159 = call i32 @chetrd_hb2st_(ptr noundef @.str.2, ptr noundef %140, ptr noundef %141, ptr noundef %142, ptr noundef %143, ptr noundef %arrayidx151, ptr noundef %146, ptr noundef %arrayidx152, ptr noundef %arrayidx154, ptr noundef %arrayidx156, ptr noundef %lhtrd, ptr noundef %arrayidx158, ptr noundef %llwork, ptr noundef %iinfo)
  %154 = load i32, ptr %wantz, align 4, !tbaa !8
  %tobool160 = icmp ne i32 %154, 0
  br i1 %tobool160, label %if.else166, label %if.then161

if.then161:                                       ; preds = %if.end146
  %155 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %156 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx162 = getelementptr inbounds float, ptr %156, i64 1
  %157 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %158 = load i32, ptr %inde, align 4, !tbaa !8
  %idxprom163 = sext i32 %158 to i64
  %arrayidx164 = getelementptr inbounds float, ptr %157, i64 %idxprom163
  %159 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call165 = call i32 @ssterf_(ptr noundef %155, ptr noundef %arrayidx162, ptr noundef %arrayidx164, ptr noundef %159)
  br label %if.end176

if.else166:                                       ; preds = %if.end146
  %160 = load i32, ptr %inde, align 4, !tbaa !8
  %161 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %162 = load i32, ptr %161, align 4, !tbaa !8
  %add167 = add nsw i32 %160, %162
  store i32 %add167, ptr %indrwk, align 4, !tbaa !8
  %163 = load ptr, ptr %jobz.addr, align 8, !tbaa !4
  %164 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %165 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx168 = getelementptr inbounds float, ptr %165, i64 1
  %166 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %167 = load i32, ptr %inde, align 4, !tbaa !8
  %idxprom169 = sext i32 %167 to i64
  %arrayidx170 = getelementptr inbounds float, ptr %166, i64 %idxprom169
  %168 = load ptr, ptr %z__.addr, align 8, !tbaa !4
  %169 = load i32, ptr %z_offset, align 4, !tbaa !8
  %idxprom171 = sext i32 %169 to i64
  %arrayidx172 = getelementptr inbounds %struct.complex, ptr %168, i64 %idxprom171
  %170 = load ptr, ptr %ldz.addr, align 8, !tbaa !4
  %171 = load ptr, ptr %rwork.addr, align 8, !tbaa !4
  %172 = load i32, ptr %indrwk, align 4, !tbaa !8
  %idxprom173 = sext i32 %172 to i64
  %arrayidx174 = getelementptr inbounds float, ptr %171, i64 %idxprom173
  %173 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %call175 = call i32 @csteqr_(ptr noundef %163, ptr noundef %164, ptr noundef %arrayidx168, ptr noundef %arrayidx170, ptr noundef %arrayidx172, ptr noundef %170, ptr noundef %arrayidx174, ptr noundef %173)
  br label %if.end176

if.end176:                                        ; preds = %if.else166, %if.then161
  %174 = load i32, ptr %iscale, align 4, !tbaa !8
  %cmp177 = icmp eq i32 %174, 1
  br i1 %cmp177, label %if.then179, label %if.end189

if.then179:                                       ; preds = %if.end176
  %175 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %176 = load i32, ptr %175, align 4, !tbaa !8
  %cmp180 = icmp eq i32 %176, 0
  br i1 %cmp180, label %if.then182, label %if.else183

if.then182:                                       ; preds = %if.then179
  %177 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %178 = load i32, ptr %177, align 4, !tbaa !8
  store i32 %178, ptr %imax, align 4, !tbaa !8
  br label %if.end185

if.else183:                                       ; preds = %if.then179
  %179 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %180 = load i32, ptr %179, align 4, !tbaa !8
  %sub184 = sub nsw i32 %180, 1
  store i32 %sub184, ptr %imax, align 4, !tbaa !8
  br label %if.end185

if.end185:                                        ; preds = %if.else183, %if.then182
  %181 = load float, ptr %sigma, align 4, !tbaa !14
  %div186 = fdiv float 1.000000e+00, %181
  store float %div186, ptr %r__1, align 4, !tbaa !14
  %182 = load ptr, ptr %w.addr, align 8, !tbaa !4
  %arrayidx187 = getelementptr inbounds float, ptr %182, i64 1
  %call188 = call i32 @sscal_(ptr noundef %imax, ptr noundef %r__1, ptr noundef %arrayidx187, ptr noundef @c__1)
  br label %if.end189

if.end189:                                        ; preds = %if.end185, %if.end176
  %183 = load i32, ptr %lwmin, align 4, !tbaa !8
  %conv190 = sitofp i32 %183 to float
  %184 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx191 = getelementptr inbounds %struct.complex, ptr %184, i64 1
  %r192 = getelementptr inbounds %struct.complex, ptr %arrayidx191, i32 0, i32 0
  store float %conv190, ptr %r192, align 4, !tbaa !10
  %185 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx193 = getelementptr inbounds %struct.complex, ptr %185, i64 1
  %i194 = getelementptr inbounds %struct.complex, ptr %arrayidx193, i32 0, i32 1
  store float 0.000000e+00, ptr %i194, align 4, !tbaa !13
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %if.end104, %if.then76, %if.then71, %if.then67
  call void @llvm.lifetime.end.p0(i64 4, ptr %indhous) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lquery) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %smlnum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %llwork) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %indrwk) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %indwrk) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %bignum) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %safmin) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %iscale) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %wantz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwtrd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lower) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lwmin) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %lhtrd) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %iinfo) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sigma) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rmax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rmin) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %imax) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %anrm) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %inde) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %eps) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ib) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %r__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %z_dim1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_offset) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ab_dim1) #4
  %186 = load i32, ptr %retval, align 4
  ret i32 %186
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

declare i32 @ilaenv2stage_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare float @slamch_(ptr noundef) #2

; Function Attrs: nounwind
declare double @sqrt(double noundef) #3

declare float @clanhb_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @clascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @chetrd_hb2st_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ssterf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @csteqr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @sscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="znver2" }
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
!14 = !{!12, !12, i64 0}
