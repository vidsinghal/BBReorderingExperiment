; ModuleID = 'samples/774.bc'
source_filename = "/local-ssd/amdlibflame-otrkevhm552xspevawtkllysqp2goz3p-build/aidengro/spack-stage-amdlibflame-4.1-otrkevhm552xspevawtkllysqp2goz3p/spack-src/src/map/lapack2flamec/f2c/c/csptri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CSPTRI\00", align 1
@c_b1 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@c__1 = internal global i32 1, align 4
@c_b2 = internal global %struct.complex zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define i32 @csptri_(ptr noundef %uplo, ptr noundef %n, ptr noundef %ap, ptr noundef %ipiv, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %d__ = alloca %struct.complex, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca %struct.complex, align 4
  %ak = alloca %struct.complex, align 4
  %kc = alloca i32, align 4
  %kp = alloca i32, align 4
  %kx = alloca i32, align 4
  %kpc = alloca i32, align 4
  %npp = alloca i32, align 4
  %akp1 = alloca %struct.complex, align 4
  %temp = alloca %struct.complex, align 4
  %akkp1 = alloca %struct.complex, align 4
  %kstep = alloca i32, align 4
  %upper = alloca i32, align 4
  %kcnext = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8, !tbaa !4
  store ptr %n, ptr %n.addr, align 8, !tbaa !4
  store ptr %ap, ptr %ap.addr, align 8, !tbaa !4
  store ptr %ipiv, ptr %ipiv.addr, align 8, !tbaa !4
  store ptr %work, ptr %work.addr, align 8, !tbaa !4
  store ptr %info, ptr %info.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %d__) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %ak) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kc) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kx) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kpc) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %npp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %akp1) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %akkp1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kstep) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %kcnext) #4
  %0 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %incdec.ptr = getelementptr inbounds %struct.complex, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %work.addr, align 8, !tbaa !4
  %1 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %incdec.ptr1 = getelementptr inbounds i32, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %ipiv.addr, align 8, !tbaa !4
  %2 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %incdec.ptr2 = getelementptr inbounds %struct.complex, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %ap.addr, align 8, !tbaa !4
  %3 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %3, align 4, !tbaa !8
  %4 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call = call i32 @lsame_(ptr noundef %4, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4, !tbaa !8
  %5 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %call3 = call i32 @lsame_(ptr noundef %6, ptr noundef @.str.1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -1, ptr %7, align 4, !tbaa !8
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %10 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 -2, ptr %10, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  %11 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %12 = load i32, ptr %11, align 4, !tbaa !8
  %cmp7 = icmp ne i32 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %13 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %14 = load i32, ptr %13, align 4, !tbaa !8
  %sub = sub nsw i32 0, %14
  store i32 %sub, ptr %i__1, align 4, !tbaa !8
  %call9 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %15 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %cmp11 = icmp eq i32 %16, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %17 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool14 = icmp ne i32 %17, 0
  br i1 %tobool14, label %if.then15, label %if.else29

if.then15:                                        ; preds = %if.end13
  %18 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %19 = load i32, ptr %18, align 4, !tbaa !8
  %20 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %21 = load i32, ptr %20, align 4, !tbaa !8
  %add = add nsw i32 %21, 1
  %mul = mul nsw i32 %19, %add
  %div = sdiv i32 %mul, 2
  store i32 %div, ptr %kp, align 4, !tbaa !8
  %22 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %23 = load i32, ptr %22, align 4, !tbaa !8
  %24 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 %23, ptr %24, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %25 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %26 = load i32, ptr %25, align 4, !tbaa !8
  %cmp16 = icmp sge i32 %26, 1
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, ptr %kp, align 4, !tbaa !8
  store i32 %27, ptr %i__1, align 4, !tbaa !8
  %28 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %29 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %30 = load i32, ptr %29, align 4, !tbaa !8
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds i32, ptr %28, i64 %idxprom
  %31 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %cmp17 = icmp sgt i32 %31, 0
  br i1 %cmp17, label %land.lhs.true18, label %if.end27

land.lhs.true18:                                  ; preds = %for.body
  %32 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %33 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds %struct.complex, ptr %32, i64 %idxprom19
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx20, i32 0, i32 0
  %34 = load float, ptr %r, align 4, !tbaa !10
  %cmp21 = fcmp oeq float %34, 0.000000e+00
  br i1 %cmp21, label %land.lhs.true22, label %if.end27

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %35 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %36 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds %struct.complex, ptr %35, i64 %idxprom23
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx24, i32 0, i32 1
  %37 = load float, ptr %i, align 4, !tbaa !13
  %cmp25 = fcmp oeq float %37, 0.000000e+00
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true22
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true22, %land.lhs.true18, %for.body
  %38 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %39 = load i32, ptr %38, align 4, !tbaa !8
  %40 = load i32, ptr %kp, align 4, !tbaa !8
  %sub28 = sub nsw i32 %40, %39
  store i32 %sub28, ptr %kp, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %41 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %42 = load i32, ptr %41, align 4, !tbaa !8
  %dec = add nsw i32 %42, -1
  store i32 %dec, ptr %41, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  br label %if.end53

if.else29:                                        ; preds = %if.end13
  store i32 1, ptr %kp, align 4, !tbaa !8
  %43 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %44 = load i32, ptr %43, align 4, !tbaa !8
  store i32 %44, ptr %i__1, align 4, !tbaa !8
  %45 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 1, ptr %45, align 4, !tbaa !8
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc51, %if.else29
  %46 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %47 = load i32, ptr %46, align 4, !tbaa !8
  %48 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp31 = icmp sle i32 %47, %48
  br i1 %cmp31, label %for.body32, label %for.end52

for.body32:                                       ; preds = %for.cond30
  %49 = load i32, ptr %kp, align 4, !tbaa !8
  store i32 %49, ptr %i__2, align 4, !tbaa !8
  %50 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %51 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %52 = load i32, ptr %51, align 4, !tbaa !8
  %idxprom33 = sext i32 %52 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %50, i64 %idxprom33
  %53 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %cmp35 = icmp sgt i32 %53, 0
  br i1 %cmp35, label %land.lhs.true36, label %if.end47

land.lhs.true36:                                  ; preds = %for.body32
  %54 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %55 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom37 = sext i32 %55 to i64
  %arrayidx38 = getelementptr inbounds %struct.complex, ptr %54, i64 %idxprom37
  %r39 = getelementptr inbounds %struct.complex, ptr %arrayidx38, i32 0, i32 0
  %56 = load float, ptr %r39, align 4, !tbaa !10
  %cmp40 = fcmp oeq float %56, 0.000000e+00
  br i1 %cmp40, label %land.lhs.true41, label %if.end47

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %57 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %58 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom42 = sext i32 %58 to i64
  %arrayidx43 = getelementptr inbounds %struct.complex, ptr %57, i64 %idxprom42
  %i44 = getelementptr inbounds %struct.complex, ptr %arrayidx43, i32 0, i32 1
  %59 = load float, ptr %i44, align 4, !tbaa !13
  %cmp45 = fcmp oeq float %59, 0.000000e+00
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true41, %land.lhs.true36, %for.body32
  %60 = load i32, ptr %kp, align 4, !tbaa !8
  %61 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %62 = load i32, ptr %61, align 4, !tbaa !8
  %add48 = add nsw i32 %60, %62
  %63 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %64 = load i32, ptr %63, align 4, !tbaa !8
  %sub49 = sub nsw i32 %add48, %64
  %add50 = add nsw i32 %sub49, 1
  store i32 %add50, ptr %kp, align 4, !tbaa !8
  br label %for.inc51

for.inc51:                                        ; preds = %if.end47
  %65 = load ptr, ptr %info.addr, align 8, !tbaa !4
  %66 = load i32, ptr %65, align 4, !tbaa !8
  %inc = add nsw i32 %66, 1
  store i32 %inc, ptr %65, align 4, !tbaa !8
  br label %for.cond30, !llvm.loop !16

for.end52:                                        ; preds = %for.cond30
  br label %if.end53

if.end53:                                         ; preds = %for.end52, %for.end
  %67 = load ptr, ptr %info.addr, align 8, !tbaa !4
  store i32 0, ptr %67, align 4, !tbaa !8
  %68 = load i32, ptr %upper, align 4, !tbaa !8
  %tobool54 = icmp ne i32 %68, 0
  br i1 %tobool54, label %if.then55, label %if.else485

if.then55:                                        ; preds = %if.end53
  store i32 1, ptr %k, align 4, !tbaa !8
  store i32 1, ptr %kc, align 4, !tbaa !8
  br label %L30

L30:                                              ; preds = %if.end483, %if.then55
  %69 = load i32, ptr %k, align 4, !tbaa !8
  %70 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %71 = load i32, ptr %70, align 4, !tbaa !8
  %cmp56 = icmp sgt i32 %69, %71
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %L30
  br label %L50

if.end58:                                         ; preds = %L30
  %72 = load i32, ptr %kc, align 4, !tbaa !8
  %73 = load i32, ptr %k, align 4, !tbaa !8
  %add59 = add nsw i32 %72, %73
  store i32 %add59, ptr %kcnext, align 4, !tbaa !8
  %74 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %75 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom60 = sext i32 %75 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %74, i64 %idxprom60
  %76 = load i32, ptr %arrayidx61, align 4, !tbaa !8
  %cmp62 = icmp sgt i32 %76, 0
  br i1 %cmp62, label %if.then63, label %if.else122

if.then63:                                        ; preds = %if.end58
  %77 = load i32, ptr %kc, align 4, !tbaa !8
  %78 = load i32, ptr %k, align 4, !tbaa !8
  %add64 = add nsw i32 %77, %78
  %sub65 = sub nsw i32 %add64, 1
  store i32 %sub65, ptr %i__1, align 4, !tbaa !8
  %79 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %80 = load i32, ptr %kc, align 4, !tbaa !8
  %81 = load i32, ptr %k, align 4, !tbaa !8
  %add66 = add nsw i32 %80, %81
  %sub67 = sub nsw i32 %add66, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds %struct.complex, ptr %79, i64 %idxprom68
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx69)
  %r70 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %82 = load float, ptr %r70, align 4, !tbaa !10
  %83 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %84 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom71 = sext i32 %84 to i64
  %arrayidx72 = getelementptr inbounds %struct.complex, ptr %83, i64 %idxprom71
  %r73 = getelementptr inbounds %struct.complex, ptr %arrayidx72, i32 0, i32 0
  store float %82, ptr %r73, align 4, !tbaa !10
  %i74 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %85 = load float, ptr %i74, align 4, !tbaa !13
  %86 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %87 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom75 = sext i32 %87 to i64
  %arrayidx76 = getelementptr inbounds %struct.complex, ptr %86, i64 %idxprom75
  %i77 = getelementptr inbounds %struct.complex, ptr %arrayidx76, i32 0, i32 1
  store float %85, ptr %i77, align 4, !tbaa !13
  %88 = load i32, ptr %k, align 4, !tbaa !8
  %cmp78 = icmp sgt i32 %88, 1
  br i1 %cmp78, label %if.then79, label %if.end121

if.then79:                                        ; preds = %if.then63
  %89 = load i32, ptr %k, align 4, !tbaa !8
  %sub80 = sub nsw i32 %89, 1
  store i32 %sub80, ptr %i__1, align 4, !tbaa !8
  %90 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %91 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom81 = sext i32 %91 to i64
  %arrayidx82 = getelementptr inbounds %struct.complex, ptr %90, i64 %idxprom81
  %92 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx83 = getelementptr inbounds %struct.complex, ptr %92, i64 1
  %call84 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx82, ptr noundef @c__1, ptr noundef %arrayidx83, ptr noundef @c__1)
  %93 = load i32, ptr %k, align 4, !tbaa !8
  %sub85 = sub nsw i32 %93, 1
  store i32 %sub85, ptr %i__1, align 4, !tbaa !8
  %r86 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r86, align 4, !tbaa !10
  %i87 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i87, align 4, !tbaa !13
  %94 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %95 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %arrayidx88 = getelementptr inbounds %struct.complex, ptr %95, i64 1
  %96 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds %struct.complex, ptr %96, i64 1
  %97 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %98 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom90 = sext i32 %98 to i64
  %arrayidx91 = getelementptr inbounds %struct.complex, ptr %97, i64 %idxprom90
  %call92 = call i32 @cspmv_(ptr noundef %94, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx88, ptr noundef %arrayidx89, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx91, ptr noundef @c__1)
  %99 = load i32, ptr %kc, align 4, !tbaa !8
  %100 = load i32, ptr %k, align 4, !tbaa !8
  %add93 = add nsw i32 %99, %100
  %sub94 = sub nsw i32 %add93, 1
  store i32 %sub94, ptr %i__1, align 4, !tbaa !8
  %101 = load i32, ptr %kc, align 4, !tbaa !8
  %102 = load i32, ptr %k, align 4, !tbaa !8
  %add95 = add nsw i32 %101, %102
  %sub96 = sub nsw i32 %add95, 1
  store i32 %sub96, ptr %i__2, align 4, !tbaa !8
  %103 = load i32, ptr %k, align 4, !tbaa !8
  %sub97 = sub nsw i32 %103, 1
  store i32 %sub97, ptr %i__3, align 4, !tbaa !8
  %104 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx98 = getelementptr inbounds %struct.complex, ptr %104, i64 1
  %105 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %106 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom99 = sext i32 %106 to i64
  %arrayidx100 = getelementptr inbounds %struct.complex, ptr %105, i64 %idxprom99
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx98, ptr noundef @c__1, ptr noundef %arrayidx100, ptr noundef @c__1)
  %107 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %108 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom101 = sext i32 %108 to i64
  %arrayidx102 = getelementptr inbounds %struct.complex, ptr %107, i64 %idxprom101
  %r103 = getelementptr inbounds %struct.complex, ptr %arrayidx102, i32 0, i32 0
  %109 = load float, ptr %r103, align 4, !tbaa !10
  %r104 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %110 = load float, ptr %r104, align 4, !tbaa !10
  %sub105 = fsub float %109, %110
  %r106 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub105, ptr %r106, align 4, !tbaa !10
  %111 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %112 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom107 = sext i32 %112 to i64
  %arrayidx108 = getelementptr inbounds %struct.complex, ptr %111, i64 %idxprom107
  %i109 = getelementptr inbounds %struct.complex, ptr %arrayidx108, i32 0, i32 1
  %113 = load float, ptr %i109, align 4, !tbaa !13
  %i110 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %114 = load float, ptr %i110, align 4, !tbaa !13
  %sub111 = fsub float %113, %114
  %i112 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub111, ptr %i112, align 4, !tbaa !13
  %r113 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %115 = load float, ptr %r113, align 4, !tbaa !10
  %116 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %117 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom114 = sext i32 %117 to i64
  %arrayidx115 = getelementptr inbounds %struct.complex, ptr %116, i64 %idxprom114
  %r116 = getelementptr inbounds %struct.complex, ptr %arrayidx115, i32 0, i32 0
  store float %115, ptr %r116, align 4, !tbaa !10
  %i117 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %118 = load float, ptr %i117, align 4, !tbaa !13
  %119 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %120 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom118 = sext i32 %120 to i64
  %arrayidx119 = getelementptr inbounds %struct.complex, ptr %119, i64 %idxprom118
  %i120 = getelementptr inbounds %struct.complex, ptr %arrayidx119, i32 0, i32 1
  store float %118, ptr %i120, align 4, !tbaa !13
  br label %if.end121

if.end121:                                        ; preds = %if.then79, %if.then63
  store i32 1, ptr %kstep, align 4, !tbaa !8
  br label %if.end343

if.else122:                                       ; preds = %if.end58
  %121 = load i32, ptr %kcnext, align 4, !tbaa !8
  %122 = load i32, ptr %k, align 4, !tbaa !8
  %add123 = add nsw i32 %121, %122
  %sub124 = sub nsw i32 %add123, 1
  store i32 %sub124, ptr %i__1, align 4, !tbaa !8
  %123 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %124 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom125 = sext i32 %124 to i64
  %arrayidx126 = getelementptr inbounds %struct.complex, ptr %123, i64 %idxprom125
  %r127 = getelementptr inbounds %struct.complex, ptr %arrayidx126, i32 0, i32 0
  %125 = load float, ptr %r127, align 4, !tbaa !10
  %r128 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %125, ptr %r128, align 4, !tbaa !10
  %126 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %127 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom129 = sext i32 %127 to i64
  %arrayidx130 = getelementptr inbounds %struct.complex, ptr %126, i64 %idxprom129
  %i131 = getelementptr inbounds %struct.complex, ptr %arrayidx130, i32 0, i32 1
  %128 = load float, ptr %i131, align 4, !tbaa !13
  %i132 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %128, ptr %i132, align 4, !tbaa !13
  %129 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %130 = load i32, ptr %kc, align 4, !tbaa !8
  %131 = load i32, ptr %k, align 4, !tbaa !8
  %add133 = add nsw i32 %130, %131
  %sub134 = sub nsw i32 %add133, 1
  %idxprom135 = sext i32 %sub134 to i64
  %arrayidx136 = getelementptr inbounds %struct.complex, ptr %129, i64 %idxprom135
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx136, ptr noundef %t)
  %r137 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %132 = load float, ptr %r137, align 4, !tbaa !10
  %r138 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  store float %132, ptr %r138, align 4, !tbaa !10
  %i139 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %133 = load float, ptr %i139, align 4, !tbaa !13
  %i140 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  store float %133, ptr %i140, align 4, !tbaa !13
  %134 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %135 = load i32, ptr %kcnext, align 4, !tbaa !8
  %136 = load i32, ptr %k, align 4, !tbaa !8
  %add141 = add nsw i32 %135, %136
  %idxprom142 = sext i32 %add141 to i64
  %arrayidx143 = getelementptr inbounds %struct.complex, ptr %134, i64 %idxprom142
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx143, ptr noundef %t)
  %r144 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %137 = load float, ptr %r144, align 4, !tbaa !10
  %r145 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  store float %137, ptr %r145, align 4, !tbaa !10
  %i146 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %138 = load float, ptr %i146, align 4, !tbaa !13
  %i147 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  store float %138, ptr %i147, align 4, !tbaa !13
  %139 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %140 = load i32, ptr %kcnext, align 4, !tbaa !8
  %141 = load i32, ptr %k, align 4, !tbaa !8
  %add148 = add nsw i32 %140, %141
  %sub149 = sub nsw i32 %add148, 1
  %idxprom150 = sext i32 %sub149 to i64
  %arrayidx151 = getelementptr inbounds %struct.complex, ptr %139, i64 %idxprom150
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx151, ptr noundef %t)
  %r152 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %142 = load float, ptr %r152, align 4, !tbaa !10
  %r153 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 0
  store float %142, ptr %r153, align 4, !tbaa !10
  %i154 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %143 = load float, ptr %i154, align 4, !tbaa !13
  %i155 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 1
  store float %143, ptr %i155, align 4, !tbaa !13
  %r156 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %144 = load float, ptr %r156, align 4, !tbaa !10
  %r157 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  %145 = load float, ptr %r157, align 4, !tbaa !10
  %i159 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %146 = load float, ptr %i159, align 4, !tbaa !13
  %i160 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  %147 = load float, ptr %i160, align 4, !tbaa !13
  %mul161 = fmul float %146, %147
  %neg = fneg float %mul161
  %148 = call float @llvm.fmuladd.f32(float %144, float %145, float %neg)
  %r162 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %148, ptr %r162, align 4, !tbaa !10
  %r163 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %149 = load float, ptr %r163, align 4, !tbaa !10
  %i164 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  %150 = load float, ptr %i164, align 4, !tbaa !13
  %i166 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %151 = load float, ptr %i166, align 4, !tbaa !13
  %r167 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  %152 = load float, ptr %r167, align 4, !tbaa !10
  %mul168 = fmul float %151, %152
  %153 = call float @llvm.fmuladd.f32(float %149, float %150, float %mul168)
  %i169 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %153, ptr %i169, align 4, !tbaa !13
  %r170 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %154 = load float, ptr %r170, align 4, !tbaa !10
  %sub171 = fsub float %154, 1.000000e+00
  %r172 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub171, ptr %r172, align 4, !tbaa !10
  %i173 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %155 = load float, ptr %i173, align 4, !tbaa !13
  %sub174 = fsub float %155, 0.000000e+00
  %i175 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub174, ptr %i175, align 4, !tbaa !13
  %r176 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %156 = load float, ptr %r176, align 4, !tbaa !10
  %r177 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %157 = load float, ptr %r177, align 4, !tbaa !10
  %i179 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %158 = load float, ptr %i179, align 4, !tbaa !13
  %i180 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %159 = load float, ptr %i180, align 4, !tbaa !13
  %mul181 = fmul float %158, %159
  %neg182 = fneg float %mul181
  %160 = call float @llvm.fmuladd.f32(float %156, float %157, float %neg182)
  %r183 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %160, ptr %r183, align 4, !tbaa !10
  %r184 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %161 = load float, ptr %r184, align 4, !tbaa !10
  %i185 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %162 = load float, ptr %i185, align 4, !tbaa !13
  %i187 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %163 = load float, ptr %i187, align 4, !tbaa !13
  %r188 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %164 = load float, ptr %r188, align 4, !tbaa !10
  %mul189 = fmul float %163, %164
  %165 = call float @llvm.fmuladd.f32(float %161, float %162, float %mul189)
  %i190 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %165, ptr %i190, align 4, !tbaa !13
  %r191 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %166 = load float, ptr %r191, align 4, !tbaa !10
  %r192 = getelementptr inbounds %struct.complex, ptr %d__, i32 0, i32 0
  store float %166, ptr %r192, align 4, !tbaa !10
  %i193 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %167 = load float, ptr %i193, align 4, !tbaa !13
  %i194 = getelementptr inbounds %struct.complex, ptr %d__, i32 0, i32 1
  store float %167, ptr %i194, align 4, !tbaa !13
  %168 = load i32, ptr %kc, align 4, !tbaa !8
  %169 = load i32, ptr %k, align 4, !tbaa !8
  %add195 = add nsw i32 %168, %169
  %sub196 = sub nsw i32 %add195, 1
  store i32 %sub196, ptr %i__1, align 4, !tbaa !8
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %akp1, ptr noundef %d__)
  %r197 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %170 = load float, ptr %r197, align 4, !tbaa !10
  %171 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %172 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom198 = sext i32 %172 to i64
  %arrayidx199 = getelementptr inbounds %struct.complex, ptr %171, i64 %idxprom198
  %r200 = getelementptr inbounds %struct.complex, ptr %arrayidx199, i32 0, i32 0
  store float %170, ptr %r200, align 4, !tbaa !10
  %i201 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %173 = load float, ptr %i201, align 4, !tbaa !13
  %174 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %175 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom202 = sext i32 %175 to i64
  %arrayidx203 = getelementptr inbounds %struct.complex, ptr %174, i64 %idxprom202
  %i204 = getelementptr inbounds %struct.complex, ptr %arrayidx203, i32 0, i32 1
  store float %173, ptr %i204, align 4, !tbaa !13
  %176 = load i32, ptr %kcnext, align 4, !tbaa !8
  %177 = load i32, ptr %k, align 4, !tbaa !8
  %add205 = add nsw i32 %176, %177
  store i32 %add205, ptr %i__1, align 4, !tbaa !8
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %ak, ptr noundef %d__)
  %r206 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %178 = load float, ptr %r206, align 4, !tbaa !10
  %179 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %180 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom207 = sext i32 %180 to i64
  %arrayidx208 = getelementptr inbounds %struct.complex, ptr %179, i64 %idxprom207
  %r209 = getelementptr inbounds %struct.complex, ptr %arrayidx208, i32 0, i32 0
  store float %178, ptr %r209, align 4, !tbaa !10
  %i210 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %181 = load float, ptr %i210, align 4, !tbaa !13
  %182 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %183 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom211 = sext i32 %183 to i64
  %arrayidx212 = getelementptr inbounds %struct.complex, ptr %182, i64 %idxprom211
  %i213 = getelementptr inbounds %struct.complex, ptr %arrayidx212, i32 0, i32 1
  store float %181, ptr %i213, align 4, !tbaa !13
  %184 = load i32, ptr %kcnext, align 4, !tbaa !8
  %185 = load i32, ptr %k, align 4, !tbaa !8
  %add214 = add nsw i32 %184, %185
  %sub215 = sub nsw i32 %add214, 1
  store i32 %sub215, ptr %i__1, align 4, !tbaa !8
  %r216 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 0
  %186 = load float, ptr %r216, align 4, !tbaa !10
  %fneg = fneg float %186
  %r217 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %fneg, ptr %r217, align 4, !tbaa !10
  %i218 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 1
  %187 = load float, ptr %i218, align 4, !tbaa !13
  %fneg219 = fneg float %187
  %i220 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg219, ptr %i220, align 4, !tbaa !13
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %d__)
  %r221 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %188 = load float, ptr %r221, align 4, !tbaa !10
  %189 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %190 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom222 = sext i32 %190 to i64
  %arrayidx223 = getelementptr inbounds %struct.complex, ptr %189, i64 %idxprom222
  %r224 = getelementptr inbounds %struct.complex, ptr %arrayidx223, i32 0, i32 0
  store float %188, ptr %r224, align 4, !tbaa !10
  %i225 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %191 = load float, ptr %i225, align 4, !tbaa !13
  %192 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %193 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom226 = sext i32 %193 to i64
  %arrayidx227 = getelementptr inbounds %struct.complex, ptr %192, i64 %idxprom226
  %i228 = getelementptr inbounds %struct.complex, ptr %arrayidx227, i32 0, i32 1
  store float %191, ptr %i228, align 4, !tbaa !13
  %194 = load i32, ptr %k, align 4, !tbaa !8
  %cmp229 = icmp sgt i32 %194, 1
  br i1 %cmp229, label %if.then230, label %if.end340

if.then230:                                       ; preds = %if.else122
  %195 = load i32, ptr %k, align 4, !tbaa !8
  %sub231 = sub nsw i32 %195, 1
  store i32 %sub231, ptr %i__1, align 4, !tbaa !8
  %196 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %197 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom232 = sext i32 %197 to i64
  %arrayidx233 = getelementptr inbounds %struct.complex, ptr %196, i64 %idxprom232
  %198 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx234 = getelementptr inbounds %struct.complex, ptr %198, i64 1
  %call235 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx233, ptr noundef @c__1, ptr noundef %arrayidx234, ptr noundef @c__1)
  %199 = load i32, ptr %k, align 4, !tbaa !8
  %sub236 = sub nsw i32 %199, 1
  store i32 %sub236, ptr %i__1, align 4, !tbaa !8
  %r237 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r237, align 4, !tbaa !10
  %i238 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i238, align 4, !tbaa !13
  %200 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %201 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %arrayidx239 = getelementptr inbounds %struct.complex, ptr %201, i64 1
  %202 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx240 = getelementptr inbounds %struct.complex, ptr %202, i64 1
  %203 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %204 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom241 = sext i32 %204 to i64
  %arrayidx242 = getelementptr inbounds %struct.complex, ptr %203, i64 %idxprom241
  %call243 = call i32 @cspmv_(ptr noundef %200, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx239, ptr noundef %arrayidx240, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx242, ptr noundef @c__1)
  %205 = load i32, ptr %kc, align 4, !tbaa !8
  %206 = load i32, ptr %k, align 4, !tbaa !8
  %add244 = add nsw i32 %205, %206
  %sub245 = sub nsw i32 %add244, 1
  store i32 %sub245, ptr %i__1, align 4, !tbaa !8
  %207 = load i32, ptr %kc, align 4, !tbaa !8
  %208 = load i32, ptr %k, align 4, !tbaa !8
  %add246 = add nsw i32 %207, %208
  %sub247 = sub nsw i32 %add246, 1
  store i32 %sub247, ptr %i__2, align 4, !tbaa !8
  %209 = load i32, ptr %k, align 4, !tbaa !8
  %sub248 = sub nsw i32 %209, 1
  store i32 %sub248, ptr %i__3, align 4, !tbaa !8
  %210 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx249 = getelementptr inbounds %struct.complex, ptr %210, i64 1
  %211 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %212 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom250 = sext i32 %212 to i64
  %arrayidx251 = getelementptr inbounds %struct.complex, ptr %211, i64 %idxprom250
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx249, ptr noundef @c__1, ptr noundef %arrayidx251, ptr noundef @c__1)
  %213 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %214 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom252 = sext i32 %214 to i64
  %arrayidx253 = getelementptr inbounds %struct.complex, ptr %213, i64 %idxprom252
  %r254 = getelementptr inbounds %struct.complex, ptr %arrayidx253, i32 0, i32 0
  %215 = load float, ptr %r254, align 4, !tbaa !10
  %r255 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %216 = load float, ptr %r255, align 4, !tbaa !10
  %sub256 = fsub float %215, %216
  %r257 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub256, ptr %r257, align 4, !tbaa !10
  %217 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %218 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom258 = sext i32 %218 to i64
  %arrayidx259 = getelementptr inbounds %struct.complex, ptr %217, i64 %idxprom258
  %i260 = getelementptr inbounds %struct.complex, ptr %arrayidx259, i32 0, i32 1
  %219 = load float, ptr %i260, align 4, !tbaa !13
  %i261 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %220 = load float, ptr %i261, align 4, !tbaa !13
  %sub262 = fsub float %219, %220
  %i263 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub262, ptr %i263, align 4, !tbaa !13
  %r264 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %221 = load float, ptr %r264, align 4, !tbaa !10
  %222 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %223 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom265 = sext i32 %223 to i64
  %arrayidx266 = getelementptr inbounds %struct.complex, ptr %222, i64 %idxprom265
  %r267 = getelementptr inbounds %struct.complex, ptr %arrayidx266, i32 0, i32 0
  store float %221, ptr %r267, align 4, !tbaa !10
  %i268 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %224 = load float, ptr %i268, align 4, !tbaa !13
  %225 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %226 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom269 = sext i32 %226 to i64
  %arrayidx270 = getelementptr inbounds %struct.complex, ptr %225, i64 %idxprom269
  %i271 = getelementptr inbounds %struct.complex, ptr %arrayidx270, i32 0, i32 1
  store float %224, ptr %i271, align 4, !tbaa !13
  %227 = load i32, ptr %kcnext, align 4, !tbaa !8
  %228 = load i32, ptr %k, align 4, !tbaa !8
  %add272 = add nsw i32 %227, %228
  %sub273 = sub nsw i32 %add272, 1
  store i32 %sub273, ptr %i__1, align 4, !tbaa !8
  %229 = load i32, ptr %kcnext, align 4, !tbaa !8
  %230 = load i32, ptr %k, align 4, !tbaa !8
  %add274 = add nsw i32 %229, %230
  %sub275 = sub nsw i32 %add274, 1
  store i32 %sub275, ptr %i__2, align 4, !tbaa !8
  %231 = load i32, ptr %k, align 4, !tbaa !8
  %sub276 = sub nsw i32 %231, 1
  store i32 %sub276, ptr %i__3, align 4, !tbaa !8
  %232 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %233 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom277 = sext i32 %233 to i64
  %arrayidx278 = getelementptr inbounds %struct.complex, ptr %232, i64 %idxprom277
  %234 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %235 = load i32, ptr %kcnext, align 4, !tbaa !8
  %idxprom279 = sext i32 %235 to i64
  %arrayidx280 = getelementptr inbounds %struct.complex, ptr %234, i64 %idxprom279
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx278, ptr noundef @c__1, ptr noundef %arrayidx280, ptr noundef @c__1)
  %236 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %237 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom281 = sext i32 %237 to i64
  %arrayidx282 = getelementptr inbounds %struct.complex, ptr %236, i64 %idxprom281
  %r283 = getelementptr inbounds %struct.complex, ptr %arrayidx282, i32 0, i32 0
  %238 = load float, ptr %r283, align 4, !tbaa !10
  %r284 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %239 = load float, ptr %r284, align 4, !tbaa !10
  %sub285 = fsub float %238, %239
  %r286 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub285, ptr %r286, align 4, !tbaa !10
  %240 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %241 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom287 = sext i32 %241 to i64
  %arrayidx288 = getelementptr inbounds %struct.complex, ptr %240, i64 %idxprom287
  %i289 = getelementptr inbounds %struct.complex, ptr %arrayidx288, i32 0, i32 1
  %242 = load float, ptr %i289, align 4, !tbaa !13
  %i290 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %243 = load float, ptr %i290, align 4, !tbaa !13
  %sub291 = fsub float %242, %243
  %i292 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub291, ptr %i292, align 4, !tbaa !13
  %r293 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %244 = load float, ptr %r293, align 4, !tbaa !10
  %245 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %246 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom294 = sext i32 %246 to i64
  %arrayidx295 = getelementptr inbounds %struct.complex, ptr %245, i64 %idxprom294
  %r296 = getelementptr inbounds %struct.complex, ptr %arrayidx295, i32 0, i32 0
  store float %244, ptr %r296, align 4, !tbaa !10
  %i297 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %247 = load float, ptr %i297, align 4, !tbaa !13
  %248 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %249 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom298 = sext i32 %249 to i64
  %arrayidx299 = getelementptr inbounds %struct.complex, ptr %248, i64 %idxprom298
  %i300 = getelementptr inbounds %struct.complex, ptr %arrayidx299, i32 0, i32 1
  store float %247, ptr %i300, align 4, !tbaa !13
  %250 = load i32, ptr %k, align 4, !tbaa !8
  %sub301 = sub nsw i32 %250, 1
  store i32 %sub301, ptr %i__1, align 4, !tbaa !8
  %251 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %252 = load i32, ptr %kcnext, align 4, !tbaa !8
  %idxprom302 = sext i32 %252 to i64
  %arrayidx303 = getelementptr inbounds %struct.complex, ptr %251, i64 %idxprom302
  %253 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx304 = getelementptr inbounds %struct.complex, ptr %253, i64 1
  %call305 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx303, ptr noundef @c__1, ptr noundef %arrayidx304, ptr noundef @c__1)
  %254 = load i32, ptr %k, align 4, !tbaa !8
  %sub306 = sub nsw i32 %254, 1
  store i32 %sub306, ptr %i__1, align 4, !tbaa !8
  %r307 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r307, align 4, !tbaa !10
  %i308 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i308, align 4, !tbaa !13
  %255 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %256 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %arrayidx309 = getelementptr inbounds %struct.complex, ptr %256, i64 1
  %257 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx310 = getelementptr inbounds %struct.complex, ptr %257, i64 1
  %258 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %259 = load i32, ptr %kcnext, align 4, !tbaa !8
  %idxprom311 = sext i32 %259 to i64
  %arrayidx312 = getelementptr inbounds %struct.complex, ptr %258, i64 %idxprom311
  %call313 = call i32 @cspmv_(ptr noundef %255, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx309, ptr noundef %arrayidx310, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx312, ptr noundef @c__1)
  %260 = load i32, ptr %kcnext, align 4, !tbaa !8
  %261 = load i32, ptr %k, align 4, !tbaa !8
  %add314 = add nsw i32 %260, %261
  store i32 %add314, ptr %i__1, align 4, !tbaa !8
  %262 = load i32, ptr %kcnext, align 4, !tbaa !8
  %263 = load i32, ptr %k, align 4, !tbaa !8
  %add315 = add nsw i32 %262, %263
  store i32 %add315, ptr %i__2, align 4, !tbaa !8
  %264 = load i32, ptr %k, align 4, !tbaa !8
  %sub316 = sub nsw i32 %264, 1
  store i32 %sub316, ptr %i__3, align 4, !tbaa !8
  %265 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx317 = getelementptr inbounds %struct.complex, ptr %265, i64 1
  %266 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %267 = load i32, ptr %kcnext, align 4, !tbaa !8
  %idxprom318 = sext i32 %267 to i64
  %arrayidx319 = getelementptr inbounds %struct.complex, ptr %266, i64 %idxprom318
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx317, ptr noundef @c__1, ptr noundef %arrayidx319, ptr noundef @c__1)
  %268 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %269 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom320 = sext i32 %269 to i64
  %arrayidx321 = getelementptr inbounds %struct.complex, ptr %268, i64 %idxprom320
  %r322 = getelementptr inbounds %struct.complex, ptr %arrayidx321, i32 0, i32 0
  %270 = load float, ptr %r322, align 4, !tbaa !10
  %r323 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %271 = load float, ptr %r323, align 4, !tbaa !10
  %sub324 = fsub float %270, %271
  %r325 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub324, ptr %r325, align 4, !tbaa !10
  %272 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %273 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom326 = sext i32 %273 to i64
  %arrayidx327 = getelementptr inbounds %struct.complex, ptr %272, i64 %idxprom326
  %i328 = getelementptr inbounds %struct.complex, ptr %arrayidx327, i32 0, i32 1
  %274 = load float, ptr %i328, align 4, !tbaa !13
  %i329 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %275 = load float, ptr %i329, align 4, !tbaa !13
  %sub330 = fsub float %274, %275
  %i331 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub330, ptr %i331, align 4, !tbaa !13
  %r332 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %276 = load float, ptr %r332, align 4, !tbaa !10
  %277 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %278 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom333 = sext i32 %278 to i64
  %arrayidx334 = getelementptr inbounds %struct.complex, ptr %277, i64 %idxprom333
  %r335 = getelementptr inbounds %struct.complex, ptr %arrayidx334, i32 0, i32 0
  store float %276, ptr %r335, align 4, !tbaa !10
  %i336 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %279 = load float, ptr %i336, align 4, !tbaa !13
  %280 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %281 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom337 = sext i32 %281 to i64
  %arrayidx338 = getelementptr inbounds %struct.complex, ptr %280, i64 %idxprom337
  %i339 = getelementptr inbounds %struct.complex, ptr %arrayidx338, i32 0, i32 1
  store float %279, ptr %i339, align 4, !tbaa !13
  br label %if.end340

if.end340:                                        ; preds = %if.then230, %if.else122
  store i32 2, ptr %kstep, align 4, !tbaa !8
  %282 = load i32, ptr %kcnext, align 4, !tbaa !8
  %283 = load i32, ptr %k, align 4, !tbaa !8
  %add341 = add nsw i32 %282, %283
  %add342 = add nsw i32 %add341, 1
  store i32 %add342, ptr %kcnext, align 4, !tbaa !8
  br label %if.end343

if.end343:                                        ; preds = %if.end340, %if.end121
  %284 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %285 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom344 = sext i32 %285 to i64
  %arrayidx345 = getelementptr inbounds i32, ptr %284, i64 %idxprom344
  %286 = load i32, ptr %arrayidx345, align 4, !tbaa !8
  store i32 %286, ptr %i__1, align 4, !tbaa !8
  %287 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp346 = icmp sge i32 %287, 0
  br i1 %cmp346, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end343
  %288 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end

cond.false:                                       ; preds = %if.end343
  %289 = load i32, ptr %i__1, align 4, !tbaa !8
  %sub347 = sub nsw i32 0, %289
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %288, %cond.true ], [ %sub347, %cond.false ]
  store i32 %cond, ptr %kp, align 4, !tbaa !8
  %290 = load i32, ptr %kp, align 4, !tbaa !8
  %291 = load i32, ptr %k, align 4, !tbaa !8
  %cmp348 = icmp ne i32 %290, %291
  br i1 %cmp348, label %if.then349, label %if.end483

if.then349:                                       ; preds = %cond.end
  %292 = load i32, ptr %kp, align 4, !tbaa !8
  %sub350 = sub nsw i32 %292, 1
  %293 = load i32, ptr %kp, align 4, !tbaa !8
  %mul351 = mul nsw i32 %sub350, %293
  %div352 = sdiv i32 %mul351, 2
  %add353 = add nsw i32 %div352, 1
  store i32 %add353, ptr %kpc, align 4, !tbaa !8
  %294 = load i32, ptr %kp, align 4, !tbaa !8
  %sub354 = sub nsw i32 %294, 1
  store i32 %sub354, ptr %i__1, align 4, !tbaa !8
  %295 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %296 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom355 = sext i32 %296 to i64
  %arrayidx356 = getelementptr inbounds %struct.complex, ptr %295, i64 %idxprom355
  %297 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %298 = load i32, ptr %kpc, align 4, !tbaa !8
  %idxprom357 = sext i32 %298 to i64
  %arrayidx358 = getelementptr inbounds %struct.complex, ptr %297, i64 %idxprom357
  %call359 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx356, ptr noundef @c__1, ptr noundef %arrayidx358, ptr noundef @c__1)
  %299 = load i32, ptr %kpc, align 4, !tbaa !8
  %300 = load i32, ptr %kp, align 4, !tbaa !8
  %add360 = add nsw i32 %299, %300
  %sub361 = sub nsw i32 %add360, 1
  store i32 %sub361, ptr %kx, align 4, !tbaa !8
  %301 = load i32, ptr %k, align 4, !tbaa !8
  %sub362 = sub nsw i32 %301, 1
  store i32 %sub362, ptr %i__1, align 4, !tbaa !8
  %302 = load i32, ptr %kp, align 4, !tbaa !8
  %add363 = add nsw i32 %302, 1
  store i32 %add363, ptr %j, align 4, !tbaa !8
  br label %for.cond364

for.cond364:                                      ; preds = %for.inc401, %if.then349
  %303 = load i32, ptr %j, align 4, !tbaa !8
  %304 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp365 = icmp sle i32 %303, %304
  br i1 %cmp365, label %for.body366, label %for.end403

for.body366:                                      ; preds = %for.cond364
  %305 = load i32, ptr %kx, align 4, !tbaa !8
  %306 = load i32, ptr %j, align 4, !tbaa !8
  %add367 = add nsw i32 %305, %306
  %sub368 = sub nsw i32 %add367, 1
  store i32 %sub368, ptr %kx, align 4, !tbaa !8
  %307 = load i32, ptr %kc, align 4, !tbaa !8
  %308 = load i32, ptr %j, align 4, !tbaa !8
  %add369 = add nsw i32 %307, %308
  %sub370 = sub nsw i32 %add369, 1
  store i32 %sub370, ptr %i__2, align 4, !tbaa !8
  %309 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %310 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom371 = sext i32 %310 to i64
  %arrayidx372 = getelementptr inbounds %struct.complex, ptr %309, i64 %idxprom371
  %r373 = getelementptr inbounds %struct.complex, ptr %arrayidx372, i32 0, i32 0
  %311 = load float, ptr %r373, align 4, !tbaa !10
  %r374 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %311, ptr %r374, align 4, !tbaa !10
  %312 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %313 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom375 = sext i32 %313 to i64
  %arrayidx376 = getelementptr inbounds %struct.complex, ptr %312, i64 %idxprom375
  %i377 = getelementptr inbounds %struct.complex, ptr %arrayidx376, i32 0, i32 1
  %314 = load float, ptr %i377, align 4, !tbaa !13
  %i378 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %314, ptr %i378, align 4, !tbaa !13
  %315 = load i32, ptr %kc, align 4, !tbaa !8
  %316 = load i32, ptr %j, align 4, !tbaa !8
  %add379 = add nsw i32 %315, %316
  %sub380 = sub nsw i32 %add379, 1
  store i32 %sub380, ptr %i__2, align 4, !tbaa !8
  %317 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %317, ptr %i__3, align 4, !tbaa !8
  %318 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %319 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom381 = sext i32 %319 to i64
  %arrayidx382 = getelementptr inbounds %struct.complex, ptr %318, i64 %idxprom381
  %r383 = getelementptr inbounds %struct.complex, ptr %arrayidx382, i32 0, i32 0
  %320 = load float, ptr %r383, align 4, !tbaa !10
  %321 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %322 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom384 = sext i32 %322 to i64
  %arrayidx385 = getelementptr inbounds %struct.complex, ptr %321, i64 %idxprom384
  %r386 = getelementptr inbounds %struct.complex, ptr %arrayidx385, i32 0, i32 0
  store float %320, ptr %r386, align 4, !tbaa !10
  %323 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %324 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom387 = sext i32 %324 to i64
  %arrayidx388 = getelementptr inbounds %struct.complex, ptr %323, i64 %idxprom387
  %i389 = getelementptr inbounds %struct.complex, ptr %arrayidx388, i32 0, i32 1
  %325 = load float, ptr %i389, align 4, !tbaa !13
  %326 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %327 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom390 = sext i32 %327 to i64
  %arrayidx391 = getelementptr inbounds %struct.complex, ptr %326, i64 %idxprom390
  %i392 = getelementptr inbounds %struct.complex, ptr %arrayidx391, i32 0, i32 1
  store float %325, ptr %i392, align 4, !tbaa !13
  %328 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %328, ptr %i__2, align 4, !tbaa !8
  %r393 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %329 = load float, ptr %r393, align 4, !tbaa !10
  %330 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %331 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom394 = sext i32 %331 to i64
  %arrayidx395 = getelementptr inbounds %struct.complex, ptr %330, i64 %idxprom394
  %r396 = getelementptr inbounds %struct.complex, ptr %arrayidx395, i32 0, i32 0
  store float %329, ptr %r396, align 4, !tbaa !10
  %i397 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %332 = load float, ptr %i397, align 4, !tbaa !13
  %333 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %334 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom398 = sext i32 %334 to i64
  %arrayidx399 = getelementptr inbounds %struct.complex, ptr %333, i64 %idxprom398
  %i400 = getelementptr inbounds %struct.complex, ptr %arrayidx399, i32 0, i32 1
  store float %332, ptr %i400, align 4, !tbaa !13
  br label %for.inc401

for.inc401:                                       ; preds = %for.body366
  %335 = load i32, ptr %j, align 4, !tbaa !8
  %inc402 = add nsw i32 %335, 1
  store i32 %inc402, ptr %j, align 4, !tbaa !8
  br label %for.cond364, !llvm.loop !17

for.end403:                                       ; preds = %for.cond364
  %336 = load i32, ptr %kc, align 4, !tbaa !8
  %337 = load i32, ptr %k, align 4, !tbaa !8
  %add404 = add nsw i32 %336, %337
  %sub405 = sub nsw i32 %add404, 1
  store i32 %sub405, ptr %i__1, align 4, !tbaa !8
  %338 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %339 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom406 = sext i32 %339 to i64
  %arrayidx407 = getelementptr inbounds %struct.complex, ptr %338, i64 %idxprom406
  %r408 = getelementptr inbounds %struct.complex, ptr %arrayidx407, i32 0, i32 0
  %340 = load float, ptr %r408, align 4, !tbaa !10
  %r409 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %340, ptr %r409, align 4, !tbaa !10
  %341 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %342 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom410 = sext i32 %342 to i64
  %arrayidx411 = getelementptr inbounds %struct.complex, ptr %341, i64 %idxprom410
  %i412 = getelementptr inbounds %struct.complex, ptr %arrayidx411, i32 0, i32 1
  %343 = load float, ptr %i412, align 4, !tbaa !13
  %i413 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %343, ptr %i413, align 4, !tbaa !13
  %344 = load i32, ptr %kc, align 4, !tbaa !8
  %345 = load i32, ptr %k, align 4, !tbaa !8
  %add414 = add nsw i32 %344, %345
  %sub415 = sub nsw i32 %add414, 1
  store i32 %sub415, ptr %i__1, align 4, !tbaa !8
  %346 = load i32, ptr %kpc, align 4, !tbaa !8
  %347 = load i32, ptr %kp, align 4, !tbaa !8
  %add416 = add nsw i32 %346, %347
  %sub417 = sub nsw i32 %add416, 1
  store i32 %sub417, ptr %i__2, align 4, !tbaa !8
  %348 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %349 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom418 = sext i32 %349 to i64
  %arrayidx419 = getelementptr inbounds %struct.complex, ptr %348, i64 %idxprom418
  %r420 = getelementptr inbounds %struct.complex, ptr %arrayidx419, i32 0, i32 0
  %350 = load float, ptr %r420, align 4, !tbaa !10
  %351 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %352 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom421 = sext i32 %352 to i64
  %arrayidx422 = getelementptr inbounds %struct.complex, ptr %351, i64 %idxprom421
  %r423 = getelementptr inbounds %struct.complex, ptr %arrayidx422, i32 0, i32 0
  store float %350, ptr %r423, align 4, !tbaa !10
  %353 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %354 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom424 = sext i32 %354 to i64
  %arrayidx425 = getelementptr inbounds %struct.complex, ptr %353, i64 %idxprom424
  %i426 = getelementptr inbounds %struct.complex, ptr %arrayidx425, i32 0, i32 1
  %355 = load float, ptr %i426, align 4, !tbaa !13
  %356 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %357 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom427 = sext i32 %357 to i64
  %arrayidx428 = getelementptr inbounds %struct.complex, ptr %356, i64 %idxprom427
  %i429 = getelementptr inbounds %struct.complex, ptr %arrayidx428, i32 0, i32 1
  store float %355, ptr %i429, align 4, !tbaa !13
  %358 = load i32, ptr %kpc, align 4, !tbaa !8
  %359 = load i32, ptr %kp, align 4, !tbaa !8
  %add430 = add nsw i32 %358, %359
  %sub431 = sub nsw i32 %add430, 1
  store i32 %sub431, ptr %i__1, align 4, !tbaa !8
  %r432 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %360 = load float, ptr %r432, align 4, !tbaa !10
  %361 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %362 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom433 = sext i32 %362 to i64
  %arrayidx434 = getelementptr inbounds %struct.complex, ptr %361, i64 %idxprom433
  %r435 = getelementptr inbounds %struct.complex, ptr %arrayidx434, i32 0, i32 0
  store float %360, ptr %r435, align 4, !tbaa !10
  %i436 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %363 = load float, ptr %i436, align 4, !tbaa !13
  %364 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %365 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom437 = sext i32 %365 to i64
  %arrayidx438 = getelementptr inbounds %struct.complex, ptr %364, i64 %idxprom437
  %i439 = getelementptr inbounds %struct.complex, ptr %arrayidx438, i32 0, i32 1
  store float %363, ptr %i439, align 4, !tbaa !13
  %366 = load i32, ptr %kstep, align 4, !tbaa !8
  %cmp440 = icmp eq i32 %366, 2
  br i1 %cmp440, label %if.then441, label %if.end482

if.then441:                                       ; preds = %for.end403
  %367 = load i32, ptr %kc, align 4, !tbaa !8
  %368 = load i32, ptr %k, align 4, !tbaa !8
  %add442 = add nsw i32 %367, %368
  %369 = load i32, ptr %k, align 4, !tbaa !8
  %add443 = add nsw i32 %add442, %369
  %sub444 = sub nsw i32 %add443, 1
  store i32 %sub444, ptr %i__1, align 4, !tbaa !8
  %370 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %371 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom445 = sext i32 %371 to i64
  %arrayidx446 = getelementptr inbounds %struct.complex, ptr %370, i64 %idxprom445
  %r447 = getelementptr inbounds %struct.complex, ptr %arrayidx446, i32 0, i32 0
  %372 = load float, ptr %r447, align 4, !tbaa !10
  %r448 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %372, ptr %r448, align 4, !tbaa !10
  %373 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %374 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom449 = sext i32 %374 to i64
  %arrayidx450 = getelementptr inbounds %struct.complex, ptr %373, i64 %idxprom449
  %i451 = getelementptr inbounds %struct.complex, ptr %arrayidx450, i32 0, i32 1
  %375 = load float, ptr %i451, align 4, !tbaa !13
  %i452 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %375, ptr %i452, align 4, !tbaa !13
  %376 = load i32, ptr %kc, align 4, !tbaa !8
  %377 = load i32, ptr %k, align 4, !tbaa !8
  %add453 = add nsw i32 %376, %377
  %378 = load i32, ptr %k, align 4, !tbaa !8
  %add454 = add nsw i32 %add453, %378
  %sub455 = sub nsw i32 %add454, 1
  store i32 %sub455, ptr %i__1, align 4, !tbaa !8
  %379 = load i32, ptr %kc, align 4, !tbaa !8
  %380 = load i32, ptr %k, align 4, !tbaa !8
  %add456 = add nsw i32 %379, %380
  %381 = load i32, ptr %kp, align 4, !tbaa !8
  %add457 = add nsw i32 %add456, %381
  %sub458 = sub nsw i32 %add457, 1
  store i32 %sub458, ptr %i__2, align 4, !tbaa !8
  %382 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %383 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom459 = sext i32 %383 to i64
  %arrayidx460 = getelementptr inbounds %struct.complex, ptr %382, i64 %idxprom459
  %r461 = getelementptr inbounds %struct.complex, ptr %arrayidx460, i32 0, i32 0
  %384 = load float, ptr %r461, align 4, !tbaa !10
  %385 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %386 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom462 = sext i32 %386 to i64
  %arrayidx463 = getelementptr inbounds %struct.complex, ptr %385, i64 %idxprom462
  %r464 = getelementptr inbounds %struct.complex, ptr %arrayidx463, i32 0, i32 0
  store float %384, ptr %r464, align 4, !tbaa !10
  %387 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %388 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom465 = sext i32 %388 to i64
  %arrayidx466 = getelementptr inbounds %struct.complex, ptr %387, i64 %idxprom465
  %i467 = getelementptr inbounds %struct.complex, ptr %arrayidx466, i32 0, i32 1
  %389 = load float, ptr %i467, align 4, !tbaa !13
  %390 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %391 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom468 = sext i32 %391 to i64
  %arrayidx469 = getelementptr inbounds %struct.complex, ptr %390, i64 %idxprom468
  %i470 = getelementptr inbounds %struct.complex, ptr %arrayidx469, i32 0, i32 1
  store float %389, ptr %i470, align 4, !tbaa !13
  %392 = load i32, ptr %kc, align 4, !tbaa !8
  %393 = load i32, ptr %k, align 4, !tbaa !8
  %add471 = add nsw i32 %392, %393
  %394 = load i32, ptr %kp, align 4, !tbaa !8
  %add472 = add nsw i32 %add471, %394
  %sub473 = sub nsw i32 %add472, 1
  store i32 %sub473, ptr %i__1, align 4, !tbaa !8
  %r474 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %395 = load float, ptr %r474, align 4, !tbaa !10
  %396 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %397 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom475 = sext i32 %397 to i64
  %arrayidx476 = getelementptr inbounds %struct.complex, ptr %396, i64 %idxprom475
  %r477 = getelementptr inbounds %struct.complex, ptr %arrayidx476, i32 0, i32 0
  store float %395, ptr %r477, align 4, !tbaa !10
  %i478 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %398 = load float, ptr %i478, align 4, !tbaa !13
  %399 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %400 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom479 = sext i32 %400 to i64
  %arrayidx480 = getelementptr inbounds %struct.complex, ptr %399, i64 %idxprom479
  %i481 = getelementptr inbounds %struct.complex, ptr %arrayidx480, i32 0, i32 1
  store float %398, ptr %i481, align 4, !tbaa !13
  br label %if.end482

if.end482:                                        ; preds = %if.then441, %for.end403
  br label %if.end483

if.end483:                                        ; preds = %if.end482, %cond.end
  %401 = load i32, ptr %kstep, align 4, !tbaa !8
  %402 = load i32, ptr %k, align 4, !tbaa !8
  %add484 = add nsw i32 %402, %401
  store i32 %add484, ptr %k, align 4, !tbaa !8
  %403 = load i32, ptr %kcnext, align 4, !tbaa !8
  store i32 %403, ptr %kc, align 4, !tbaa !8
  br label %L30

L50:                                              ; preds = %if.then57
  br label %if.end929

if.else485:                                       ; preds = %if.end53
  %404 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %405 = load i32, ptr %404, align 4, !tbaa !8
  %406 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %407 = load i32, ptr %406, align 4, !tbaa !8
  %add486 = add nsw i32 %407, 1
  %mul487 = mul nsw i32 %405, %add486
  %div488 = sdiv i32 %mul487, 2
  store i32 %div488, ptr %npp, align 4, !tbaa !8
  %408 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %409 = load i32, ptr %408, align 4, !tbaa !8
  store i32 %409, ptr %k, align 4, !tbaa !8
  %410 = load i32, ptr %npp, align 4, !tbaa !8
  store i32 %410, ptr %kc, align 4, !tbaa !8
  br label %L60

L60:                                              ; preds = %if.end927, %if.else485
  %411 = load i32, ptr %k, align 4, !tbaa !8
  %cmp489 = icmp slt i32 %411, 1
  br i1 %cmp489, label %if.then490, label %if.end491

if.then490:                                       ; preds = %L60
  br label %L80

if.end491:                                        ; preds = %L60
  %412 = load i32, ptr %kc, align 4, !tbaa !8
  %413 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %414 = load i32, ptr %413, align 4, !tbaa !8
  %415 = load i32, ptr %k, align 4, !tbaa !8
  %sub492 = sub nsw i32 %414, %415
  %add493 = add nsw i32 %sub492, 2
  %sub494 = sub nsw i32 %412, %add493
  store i32 %sub494, ptr %kcnext, align 4, !tbaa !8
  %416 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %417 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom495 = sext i32 %417 to i64
  %arrayidx496 = getelementptr inbounds i32, ptr %416, i64 %idxprom495
  %418 = load i32, ptr %arrayidx496, align 4, !tbaa !8
  %cmp497 = icmp sgt i32 %418, 0
  br i1 %cmp497, label %if.then498, label %if.else556

if.then498:                                       ; preds = %if.end491
  %419 = load i32, ptr %kc, align 4, !tbaa !8
  store i32 %419, ptr %i__1, align 4, !tbaa !8
  %420 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %421 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom499 = sext i32 %421 to i64
  %arrayidx500 = getelementptr inbounds %struct.complex, ptr %420, i64 %idxprom499
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx500)
  %r501 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %422 = load float, ptr %r501, align 4, !tbaa !10
  %423 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %424 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom502 = sext i32 %424 to i64
  %arrayidx503 = getelementptr inbounds %struct.complex, ptr %423, i64 %idxprom502
  %r504 = getelementptr inbounds %struct.complex, ptr %arrayidx503, i32 0, i32 0
  store float %422, ptr %r504, align 4, !tbaa !10
  %i505 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %425 = load float, ptr %i505, align 4, !tbaa !13
  %426 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %427 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom506 = sext i32 %427 to i64
  %arrayidx507 = getelementptr inbounds %struct.complex, ptr %426, i64 %idxprom506
  %i508 = getelementptr inbounds %struct.complex, ptr %arrayidx507, i32 0, i32 1
  store float %425, ptr %i508, align 4, !tbaa !13
  %428 = load i32, ptr %k, align 4, !tbaa !8
  %429 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %430 = load i32, ptr %429, align 4, !tbaa !8
  %cmp509 = icmp slt i32 %428, %430
  br i1 %cmp509, label %if.then510, label %if.end555

if.then510:                                       ; preds = %if.then498
  %431 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %432 = load i32, ptr %431, align 4, !tbaa !8
  %433 = load i32, ptr %k, align 4, !tbaa !8
  %sub511 = sub nsw i32 %432, %433
  store i32 %sub511, ptr %i__1, align 4, !tbaa !8
  %434 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %435 = load i32, ptr %kc, align 4, !tbaa !8
  %add512 = add nsw i32 %435, 1
  %idxprom513 = sext i32 %add512 to i64
  %arrayidx514 = getelementptr inbounds %struct.complex, ptr %434, i64 %idxprom513
  %436 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx515 = getelementptr inbounds %struct.complex, ptr %436, i64 1
  %call516 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx514, ptr noundef @c__1, ptr noundef %arrayidx515, ptr noundef @c__1)
  %437 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %438 = load i32, ptr %437, align 4, !tbaa !8
  %439 = load i32, ptr %k, align 4, !tbaa !8
  %sub517 = sub nsw i32 %438, %439
  store i32 %sub517, ptr %i__1, align 4, !tbaa !8
  %r518 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r518, align 4, !tbaa !10
  %i519 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i519, align 4, !tbaa !13
  %440 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %441 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %442 = load i32, ptr %kc, align 4, !tbaa !8
  %443 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %444 = load i32, ptr %443, align 4, !tbaa !8
  %add520 = add nsw i32 %442, %444
  %445 = load i32, ptr %k, align 4, !tbaa !8
  %sub521 = sub nsw i32 %add520, %445
  %add522 = add nsw i32 %sub521, 1
  %idxprom523 = sext i32 %add522 to i64
  %arrayidx524 = getelementptr inbounds %struct.complex, ptr %441, i64 %idxprom523
  %446 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx525 = getelementptr inbounds %struct.complex, ptr %446, i64 1
  %447 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %448 = load i32, ptr %kc, align 4, !tbaa !8
  %add526 = add nsw i32 %448, 1
  %idxprom527 = sext i32 %add526 to i64
  %arrayidx528 = getelementptr inbounds %struct.complex, ptr %447, i64 %idxprom527
  %call529 = call i32 @cspmv_(ptr noundef %440, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx524, ptr noundef %arrayidx525, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx528, ptr noundef @c__1)
  %449 = load i32, ptr %kc, align 4, !tbaa !8
  store i32 %449, ptr %i__1, align 4, !tbaa !8
  %450 = load i32, ptr %kc, align 4, !tbaa !8
  store i32 %450, ptr %i__2, align 4, !tbaa !8
  %451 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %452 = load i32, ptr %451, align 4, !tbaa !8
  %453 = load i32, ptr %k, align 4, !tbaa !8
  %sub530 = sub nsw i32 %452, %453
  store i32 %sub530, ptr %i__3, align 4, !tbaa !8
  %454 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx531 = getelementptr inbounds %struct.complex, ptr %454, i64 1
  %455 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %456 = load i32, ptr %kc, align 4, !tbaa !8
  %add532 = add nsw i32 %456, 1
  %idxprom533 = sext i32 %add532 to i64
  %arrayidx534 = getelementptr inbounds %struct.complex, ptr %455, i64 %idxprom533
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx531, ptr noundef @c__1, ptr noundef %arrayidx534, ptr noundef @c__1)
  %457 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %458 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom535 = sext i32 %458 to i64
  %arrayidx536 = getelementptr inbounds %struct.complex, ptr %457, i64 %idxprom535
  %r537 = getelementptr inbounds %struct.complex, ptr %arrayidx536, i32 0, i32 0
  %459 = load float, ptr %r537, align 4, !tbaa !10
  %r538 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %460 = load float, ptr %r538, align 4, !tbaa !10
  %sub539 = fsub float %459, %460
  %r540 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub539, ptr %r540, align 4, !tbaa !10
  %461 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %462 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom541 = sext i32 %462 to i64
  %arrayidx542 = getelementptr inbounds %struct.complex, ptr %461, i64 %idxprom541
  %i543 = getelementptr inbounds %struct.complex, ptr %arrayidx542, i32 0, i32 1
  %463 = load float, ptr %i543, align 4, !tbaa !13
  %i544 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %464 = load float, ptr %i544, align 4, !tbaa !13
  %sub545 = fsub float %463, %464
  %i546 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub545, ptr %i546, align 4, !tbaa !13
  %r547 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %465 = load float, ptr %r547, align 4, !tbaa !10
  %466 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %467 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom548 = sext i32 %467 to i64
  %arrayidx549 = getelementptr inbounds %struct.complex, ptr %466, i64 %idxprom548
  %r550 = getelementptr inbounds %struct.complex, ptr %arrayidx549, i32 0, i32 0
  store float %465, ptr %r550, align 4, !tbaa !10
  %i551 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %468 = load float, ptr %i551, align 4, !tbaa !13
  %469 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %470 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom552 = sext i32 %470 to i64
  %arrayidx553 = getelementptr inbounds %struct.complex, ptr %469, i64 %idxprom552
  %i554 = getelementptr inbounds %struct.complex, ptr %arrayidx553, i32 0, i32 1
  store float %468, ptr %i554, align 4, !tbaa !13
  br label %if.end555

if.end555:                                        ; preds = %if.then510, %if.then498
  store i32 1, ptr %kstep, align 4, !tbaa !8
  br label %if.end779

if.else556:                                       ; preds = %if.end491
  %471 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add557 = add nsw i32 %471, 1
  store i32 %add557, ptr %i__1, align 4, !tbaa !8
  %472 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %473 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom558 = sext i32 %473 to i64
  %arrayidx559 = getelementptr inbounds %struct.complex, ptr %472, i64 %idxprom558
  %r560 = getelementptr inbounds %struct.complex, ptr %arrayidx559, i32 0, i32 0
  %474 = load float, ptr %r560, align 4, !tbaa !10
  %r561 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %474, ptr %r561, align 4, !tbaa !10
  %475 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %476 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom562 = sext i32 %476 to i64
  %arrayidx563 = getelementptr inbounds %struct.complex, ptr %475, i64 %idxprom562
  %i564 = getelementptr inbounds %struct.complex, ptr %arrayidx563, i32 0, i32 1
  %477 = load float, ptr %i564, align 4, !tbaa !13
  %i565 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %477, ptr %i565, align 4, !tbaa !13
  %478 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %479 = load i32, ptr %kcnext, align 4, !tbaa !8
  %idxprom566 = sext i32 %479 to i64
  %arrayidx567 = getelementptr inbounds %struct.complex, ptr %478, i64 %idxprom566
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx567, ptr noundef %t)
  %r568 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %480 = load float, ptr %r568, align 4, !tbaa !10
  %r569 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  store float %480, ptr %r569, align 4, !tbaa !10
  %i570 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %481 = load float, ptr %i570, align 4, !tbaa !13
  %i571 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  store float %481, ptr %i571, align 4, !tbaa !13
  %482 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %483 = load i32, ptr %kc, align 4, !tbaa !8
  %idxprom572 = sext i32 %483 to i64
  %arrayidx573 = getelementptr inbounds %struct.complex, ptr %482, i64 %idxprom572
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx573, ptr noundef %t)
  %r574 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %484 = load float, ptr %r574, align 4, !tbaa !10
  %r575 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  store float %484, ptr %r575, align 4, !tbaa !10
  %i576 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %485 = load float, ptr %i576, align 4, !tbaa !13
  %i577 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  store float %485, ptr %i577, align 4, !tbaa !13
  %486 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %487 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add578 = add nsw i32 %487, 1
  %idxprom579 = sext i32 %add578 to i64
  %arrayidx580 = getelementptr inbounds %struct.complex, ptr %486, i64 %idxprom579
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %arrayidx580, ptr noundef %t)
  %r581 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %488 = load float, ptr %r581, align 4, !tbaa !10
  %r582 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 0
  store float %488, ptr %r582, align 4, !tbaa !10
  %i583 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %489 = load float, ptr %i583, align 4, !tbaa !13
  %i584 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 1
  store float %489, ptr %i584, align 4, !tbaa !13
  %r585 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %490 = load float, ptr %r585, align 4, !tbaa !10
  %r586 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  %491 = load float, ptr %r586, align 4, !tbaa !10
  %i588 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %492 = load float, ptr %i588, align 4, !tbaa !13
  %i589 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  %493 = load float, ptr %i589, align 4, !tbaa !13
  %mul590 = fmul float %492, %493
  %neg591 = fneg float %mul590
  %494 = call float @llvm.fmuladd.f32(float %490, float %491, float %neg591)
  %r592 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %494, ptr %r592, align 4, !tbaa !10
  %r593 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %495 = load float, ptr %r593, align 4, !tbaa !10
  %i594 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  %496 = load float, ptr %i594, align 4, !tbaa !13
  %i596 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %497 = load float, ptr %i596, align 4, !tbaa !13
  %r597 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  %498 = load float, ptr %r597, align 4, !tbaa !10
  %mul598 = fmul float %497, %498
  %499 = call float @llvm.fmuladd.f32(float %495, float %496, float %mul598)
  %i599 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %499, ptr %i599, align 4, !tbaa !13
  %r600 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %500 = load float, ptr %r600, align 4, !tbaa !10
  %sub601 = fsub float %500, 1.000000e+00
  %r602 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub601, ptr %r602, align 4, !tbaa !10
  %i603 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %501 = load float, ptr %i603, align 4, !tbaa !13
  %sub604 = fsub float %501, 0.000000e+00
  %i605 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub604, ptr %i605, align 4, !tbaa !13
  %r606 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %502 = load float, ptr %r606, align 4, !tbaa !10
  %r607 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %503 = load float, ptr %r607, align 4, !tbaa !10
  %i609 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %504 = load float, ptr %i609, align 4, !tbaa !13
  %i610 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %505 = load float, ptr %i610, align 4, !tbaa !13
  %mul611 = fmul float %504, %505
  %neg612 = fneg float %mul611
  %506 = call float @llvm.fmuladd.f32(float %502, float %503, float %neg612)
  %r613 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %506, ptr %r613, align 4, !tbaa !10
  %r614 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %507 = load float, ptr %r614, align 4, !tbaa !10
  %i615 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %508 = load float, ptr %i615, align 4, !tbaa !13
  %i617 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %509 = load float, ptr %i617, align 4, !tbaa !13
  %r618 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %510 = load float, ptr %r618, align 4, !tbaa !10
  %mul619 = fmul float %509, %510
  %511 = call float @llvm.fmuladd.f32(float %507, float %508, float %mul619)
  %i620 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %511, ptr %i620, align 4, !tbaa !13
  %r621 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %512 = load float, ptr %r621, align 4, !tbaa !10
  %r622 = getelementptr inbounds %struct.complex, ptr %d__, i32 0, i32 0
  store float %512, ptr %r622, align 4, !tbaa !10
  %i623 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %513 = load float, ptr %i623, align 4, !tbaa !13
  %i624 = getelementptr inbounds %struct.complex, ptr %d__, i32 0, i32 1
  store float %513, ptr %i624, align 4, !tbaa !13
  %514 = load i32, ptr %kcnext, align 4, !tbaa !8
  store i32 %514, ptr %i__1, align 4, !tbaa !8
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %akp1, ptr noundef %d__)
  %r625 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %515 = load float, ptr %r625, align 4, !tbaa !10
  %516 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %517 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom626 = sext i32 %517 to i64
  %arrayidx627 = getelementptr inbounds %struct.complex, ptr %516, i64 %idxprom626
  %r628 = getelementptr inbounds %struct.complex, ptr %arrayidx627, i32 0, i32 0
  store float %515, ptr %r628, align 4, !tbaa !10
  %i629 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %518 = load float, ptr %i629, align 4, !tbaa !13
  %519 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %520 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom630 = sext i32 %520 to i64
  %arrayidx631 = getelementptr inbounds %struct.complex, ptr %519, i64 %idxprom630
  %i632 = getelementptr inbounds %struct.complex, ptr %arrayidx631, i32 0, i32 1
  store float %518, ptr %i632, align 4, !tbaa !13
  %521 = load i32, ptr %kc, align 4, !tbaa !8
  store i32 %521, ptr %i__1, align 4, !tbaa !8
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %ak, ptr noundef %d__)
  %r633 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %522 = load float, ptr %r633, align 4, !tbaa !10
  %523 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %524 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom634 = sext i32 %524 to i64
  %arrayidx635 = getelementptr inbounds %struct.complex, ptr %523, i64 %idxprom634
  %r636 = getelementptr inbounds %struct.complex, ptr %arrayidx635, i32 0, i32 0
  store float %522, ptr %r636, align 4, !tbaa !10
  %i637 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %525 = load float, ptr %i637, align 4, !tbaa !13
  %526 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %527 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom638 = sext i32 %527 to i64
  %arrayidx639 = getelementptr inbounds %struct.complex, ptr %526, i64 %idxprom638
  %i640 = getelementptr inbounds %struct.complex, ptr %arrayidx639, i32 0, i32 1
  store float %525, ptr %i640, align 4, !tbaa !13
  %528 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add641 = add nsw i32 %528, 1
  store i32 %add641, ptr %i__1, align 4, !tbaa !8
  %r642 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 0
  %529 = load float, ptr %r642, align 4, !tbaa !10
  %fneg643 = fneg float %529
  %r644 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %fneg643, ptr %r644, align 4, !tbaa !10
  %i645 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 1
  %530 = load float, ptr %i645, align 4, !tbaa !13
  %fneg646 = fneg float %530
  %i647 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg646, ptr %i647, align 4, !tbaa !13
  call void @cladiv_f2c_(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %d__)
  %r648 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %531 = load float, ptr %r648, align 4, !tbaa !10
  %532 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %533 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom649 = sext i32 %533 to i64
  %arrayidx650 = getelementptr inbounds %struct.complex, ptr %532, i64 %idxprom649
  %r651 = getelementptr inbounds %struct.complex, ptr %arrayidx650, i32 0, i32 0
  store float %531, ptr %r651, align 4, !tbaa !10
  %i652 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %534 = load float, ptr %i652, align 4, !tbaa !13
  %535 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %536 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom653 = sext i32 %536 to i64
  %arrayidx654 = getelementptr inbounds %struct.complex, ptr %535, i64 %idxprom653
  %i655 = getelementptr inbounds %struct.complex, ptr %arrayidx654, i32 0, i32 1
  store float %534, ptr %i655, align 4, !tbaa !13
  %537 = load i32, ptr %k, align 4, !tbaa !8
  %538 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %539 = load i32, ptr %538, align 4, !tbaa !8
  %cmp656 = icmp slt i32 %537, %539
  br i1 %cmp656, label %if.then657, label %if.end775

if.then657:                                       ; preds = %if.else556
  %540 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %541 = load i32, ptr %540, align 4, !tbaa !8
  %542 = load i32, ptr %k, align 4, !tbaa !8
  %sub658 = sub nsw i32 %541, %542
  store i32 %sub658, ptr %i__1, align 4, !tbaa !8
  %543 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %544 = load i32, ptr %kc, align 4, !tbaa !8
  %add659 = add nsw i32 %544, 1
  %idxprom660 = sext i32 %add659 to i64
  %arrayidx661 = getelementptr inbounds %struct.complex, ptr %543, i64 %idxprom660
  %545 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx662 = getelementptr inbounds %struct.complex, ptr %545, i64 1
  %call663 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx661, ptr noundef @c__1, ptr noundef %arrayidx662, ptr noundef @c__1)
  %546 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %547 = load i32, ptr %546, align 4, !tbaa !8
  %548 = load i32, ptr %k, align 4, !tbaa !8
  %sub664 = sub nsw i32 %547, %548
  store i32 %sub664, ptr %i__1, align 4, !tbaa !8
  %r665 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r665, align 4, !tbaa !10
  %i666 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i666, align 4, !tbaa !13
  %549 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %550 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %551 = load i32, ptr %kc, align 4, !tbaa !8
  %552 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %553 = load i32, ptr %552, align 4, !tbaa !8
  %554 = load i32, ptr %k, align 4, !tbaa !8
  %sub667 = sub nsw i32 %553, %554
  %add668 = add nsw i32 %sub667, 1
  %add669 = add nsw i32 %551, %add668
  %idxprom670 = sext i32 %add669 to i64
  %arrayidx671 = getelementptr inbounds %struct.complex, ptr %550, i64 %idxprom670
  %555 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx672 = getelementptr inbounds %struct.complex, ptr %555, i64 1
  %556 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %557 = load i32, ptr %kc, align 4, !tbaa !8
  %add673 = add nsw i32 %557, 1
  %idxprom674 = sext i32 %add673 to i64
  %arrayidx675 = getelementptr inbounds %struct.complex, ptr %556, i64 %idxprom674
  %call676 = call i32 @cspmv_(ptr noundef %549, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx671, ptr noundef %arrayidx672, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx675, ptr noundef @c__1)
  %558 = load i32, ptr %kc, align 4, !tbaa !8
  store i32 %558, ptr %i__1, align 4, !tbaa !8
  %559 = load i32, ptr %kc, align 4, !tbaa !8
  store i32 %559, ptr %i__2, align 4, !tbaa !8
  %560 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %561 = load i32, ptr %560, align 4, !tbaa !8
  %562 = load i32, ptr %k, align 4, !tbaa !8
  %sub677 = sub nsw i32 %561, %562
  store i32 %sub677, ptr %i__3, align 4, !tbaa !8
  %563 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx678 = getelementptr inbounds %struct.complex, ptr %563, i64 1
  %564 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %565 = load i32, ptr %kc, align 4, !tbaa !8
  %add679 = add nsw i32 %565, 1
  %idxprom680 = sext i32 %add679 to i64
  %arrayidx681 = getelementptr inbounds %struct.complex, ptr %564, i64 %idxprom680
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx678, ptr noundef @c__1, ptr noundef %arrayidx681, ptr noundef @c__1)
  %566 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %567 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom682 = sext i32 %567 to i64
  %arrayidx683 = getelementptr inbounds %struct.complex, ptr %566, i64 %idxprom682
  %r684 = getelementptr inbounds %struct.complex, ptr %arrayidx683, i32 0, i32 0
  %568 = load float, ptr %r684, align 4, !tbaa !10
  %r685 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %569 = load float, ptr %r685, align 4, !tbaa !10
  %sub686 = fsub float %568, %569
  %r687 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub686, ptr %r687, align 4, !tbaa !10
  %570 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %571 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom688 = sext i32 %571 to i64
  %arrayidx689 = getelementptr inbounds %struct.complex, ptr %570, i64 %idxprom688
  %i690 = getelementptr inbounds %struct.complex, ptr %arrayidx689, i32 0, i32 1
  %572 = load float, ptr %i690, align 4, !tbaa !13
  %i691 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %573 = load float, ptr %i691, align 4, !tbaa !13
  %sub692 = fsub float %572, %573
  %i693 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub692, ptr %i693, align 4, !tbaa !13
  %r694 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %574 = load float, ptr %r694, align 4, !tbaa !10
  %575 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %576 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom695 = sext i32 %576 to i64
  %arrayidx696 = getelementptr inbounds %struct.complex, ptr %575, i64 %idxprom695
  %r697 = getelementptr inbounds %struct.complex, ptr %arrayidx696, i32 0, i32 0
  store float %574, ptr %r697, align 4, !tbaa !10
  %i698 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %577 = load float, ptr %i698, align 4, !tbaa !13
  %578 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %579 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom699 = sext i32 %579 to i64
  %arrayidx700 = getelementptr inbounds %struct.complex, ptr %578, i64 %idxprom699
  %i701 = getelementptr inbounds %struct.complex, ptr %arrayidx700, i32 0, i32 1
  store float %577, ptr %i701, align 4, !tbaa !13
  %580 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add702 = add nsw i32 %580, 1
  store i32 %add702, ptr %i__1, align 4, !tbaa !8
  %581 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add703 = add nsw i32 %581, 1
  store i32 %add703, ptr %i__2, align 4, !tbaa !8
  %582 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %583 = load i32, ptr %582, align 4, !tbaa !8
  %584 = load i32, ptr %k, align 4, !tbaa !8
  %sub704 = sub nsw i32 %583, %584
  store i32 %sub704, ptr %i__3, align 4, !tbaa !8
  %585 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %586 = load i32, ptr %kc, align 4, !tbaa !8
  %add705 = add nsw i32 %586, 1
  %idxprom706 = sext i32 %add705 to i64
  %arrayidx707 = getelementptr inbounds %struct.complex, ptr %585, i64 %idxprom706
  %587 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %588 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add708 = add nsw i32 %588, 2
  %idxprom709 = sext i32 %add708 to i64
  %arrayidx710 = getelementptr inbounds %struct.complex, ptr %587, i64 %idxprom709
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx707, ptr noundef @c__1, ptr noundef %arrayidx710, ptr noundef @c__1)
  %589 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %590 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom711 = sext i32 %590 to i64
  %arrayidx712 = getelementptr inbounds %struct.complex, ptr %589, i64 %idxprom711
  %r713 = getelementptr inbounds %struct.complex, ptr %arrayidx712, i32 0, i32 0
  %591 = load float, ptr %r713, align 4, !tbaa !10
  %r714 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %592 = load float, ptr %r714, align 4, !tbaa !10
  %sub715 = fsub float %591, %592
  %r716 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub715, ptr %r716, align 4, !tbaa !10
  %593 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %594 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom717 = sext i32 %594 to i64
  %arrayidx718 = getelementptr inbounds %struct.complex, ptr %593, i64 %idxprom717
  %i719 = getelementptr inbounds %struct.complex, ptr %arrayidx718, i32 0, i32 1
  %595 = load float, ptr %i719, align 4, !tbaa !13
  %i720 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %596 = load float, ptr %i720, align 4, !tbaa !13
  %sub721 = fsub float %595, %596
  %i722 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub721, ptr %i722, align 4, !tbaa !13
  %r723 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %597 = load float, ptr %r723, align 4, !tbaa !10
  %598 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %599 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom724 = sext i32 %599 to i64
  %arrayidx725 = getelementptr inbounds %struct.complex, ptr %598, i64 %idxprom724
  %r726 = getelementptr inbounds %struct.complex, ptr %arrayidx725, i32 0, i32 0
  store float %597, ptr %r726, align 4, !tbaa !10
  %i727 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %600 = load float, ptr %i727, align 4, !tbaa !13
  %601 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %602 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom728 = sext i32 %602 to i64
  %arrayidx729 = getelementptr inbounds %struct.complex, ptr %601, i64 %idxprom728
  %i730 = getelementptr inbounds %struct.complex, ptr %arrayidx729, i32 0, i32 1
  store float %600, ptr %i730, align 4, !tbaa !13
  %603 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %604 = load i32, ptr %603, align 4, !tbaa !8
  %605 = load i32, ptr %k, align 4, !tbaa !8
  %sub731 = sub nsw i32 %604, %605
  store i32 %sub731, ptr %i__1, align 4, !tbaa !8
  %606 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %607 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add732 = add nsw i32 %607, 2
  %idxprom733 = sext i32 %add732 to i64
  %arrayidx734 = getelementptr inbounds %struct.complex, ptr %606, i64 %idxprom733
  %608 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx735 = getelementptr inbounds %struct.complex, ptr %608, i64 1
  %call736 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx734, ptr noundef @c__1, ptr noundef %arrayidx735, ptr noundef @c__1)
  %609 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %610 = load i32, ptr %609, align 4, !tbaa !8
  %611 = load i32, ptr %k, align 4, !tbaa !8
  %sub737 = sub nsw i32 %610, %611
  store i32 %sub737, ptr %i__1, align 4, !tbaa !8
  %r738 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r738, align 4, !tbaa !10
  %i739 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i739, align 4, !tbaa !13
  %612 = load ptr, ptr %uplo.addr, align 8, !tbaa !4
  %613 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %614 = load i32, ptr %kc, align 4, !tbaa !8
  %615 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %616 = load i32, ptr %615, align 4, !tbaa !8
  %617 = load i32, ptr %k, align 4, !tbaa !8
  %sub740 = sub nsw i32 %616, %617
  %add741 = add nsw i32 %sub740, 1
  %add742 = add nsw i32 %614, %add741
  %idxprom743 = sext i32 %add742 to i64
  %arrayidx744 = getelementptr inbounds %struct.complex, ptr %613, i64 %idxprom743
  %618 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx745 = getelementptr inbounds %struct.complex, ptr %618, i64 1
  %619 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %620 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add746 = add nsw i32 %620, 2
  %idxprom747 = sext i32 %add746 to i64
  %arrayidx748 = getelementptr inbounds %struct.complex, ptr %619, i64 %idxprom747
  %call749 = call i32 @cspmv_(ptr noundef %612, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx744, ptr noundef %arrayidx745, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx748, ptr noundef @c__1)
  %621 = load i32, ptr %kcnext, align 4, !tbaa !8
  store i32 %621, ptr %i__1, align 4, !tbaa !8
  %622 = load i32, ptr %kcnext, align 4, !tbaa !8
  store i32 %622, ptr %i__2, align 4, !tbaa !8
  %623 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %624 = load i32, ptr %623, align 4, !tbaa !8
  %625 = load i32, ptr %k, align 4, !tbaa !8
  %sub750 = sub nsw i32 %624, %625
  store i32 %sub750, ptr %i__3, align 4, !tbaa !8
  %626 = load ptr, ptr %work.addr, align 8, !tbaa !4
  %arrayidx751 = getelementptr inbounds %struct.complex, ptr %626, i64 1
  %627 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %628 = load i32, ptr %kcnext, align 4, !tbaa !8
  %add752 = add nsw i32 %628, 2
  %idxprom753 = sext i32 %add752 to i64
  %arrayidx754 = getelementptr inbounds %struct.complex, ptr %627, i64 %idxprom753
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx751, ptr noundef @c__1, ptr noundef %arrayidx754, ptr noundef @c__1)
  %629 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %630 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom755 = sext i32 %630 to i64
  %arrayidx756 = getelementptr inbounds %struct.complex, ptr %629, i64 %idxprom755
  %r757 = getelementptr inbounds %struct.complex, ptr %arrayidx756, i32 0, i32 0
  %631 = load float, ptr %r757, align 4, !tbaa !10
  %r758 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %632 = load float, ptr %r758, align 4, !tbaa !10
  %sub759 = fsub float %631, %632
  %r760 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub759, ptr %r760, align 4, !tbaa !10
  %633 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %634 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom761 = sext i32 %634 to i64
  %arrayidx762 = getelementptr inbounds %struct.complex, ptr %633, i64 %idxprom761
  %i763 = getelementptr inbounds %struct.complex, ptr %arrayidx762, i32 0, i32 1
  %635 = load float, ptr %i763, align 4, !tbaa !13
  %i764 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %636 = load float, ptr %i764, align 4, !tbaa !13
  %sub765 = fsub float %635, %636
  %i766 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub765, ptr %i766, align 4, !tbaa !13
  %r767 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %637 = load float, ptr %r767, align 4, !tbaa !10
  %638 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %639 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom768 = sext i32 %639 to i64
  %arrayidx769 = getelementptr inbounds %struct.complex, ptr %638, i64 %idxprom768
  %r770 = getelementptr inbounds %struct.complex, ptr %arrayidx769, i32 0, i32 0
  store float %637, ptr %r770, align 4, !tbaa !10
  %i771 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %640 = load float, ptr %i771, align 4, !tbaa !13
  %641 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %642 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom772 = sext i32 %642 to i64
  %arrayidx773 = getelementptr inbounds %struct.complex, ptr %641, i64 %idxprom772
  %i774 = getelementptr inbounds %struct.complex, ptr %arrayidx773, i32 0, i32 1
  store float %640, ptr %i774, align 4, !tbaa !13
  br label %if.end775

if.end775:                                        ; preds = %if.then657, %if.else556
  store i32 2, ptr %kstep, align 4, !tbaa !8
  %643 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %644 = load i32, ptr %643, align 4, !tbaa !8
  %645 = load i32, ptr %k, align 4, !tbaa !8
  %sub776 = sub nsw i32 %644, %645
  %add777 = add nsw i32 %sub776, 3
  %646 = load i32, ptr %kcnext, align 4, !tbaa !8
  %sub778 = sub nsw i32 %646, %add777
  store i32 %sub778, ptr %kcnext, align 4, !tbaa !8
  br label %if.end779

if.end779:                                        ; preds = %if.end775, %if.end555
  %647 = load ptr, ptr %ipiv.addr, align 8, !tbaa !4
  %648 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom780 = sext i32 %648 to i64
  %arrayidx781 = getelementptr inbounds i32, ptr %647, i64 %idxprom780
  %649 = load i32, ptr %arrayidx781, align 4, !tbaa !8
  store i32 %649, ptr %i__1, align 4, !tbaa !8
  %650 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp782 = icmp sge i32 %650, 0
  br i1 %cmp782, label %cond.true783, label %cond.false784

cond.true783:                                     ; preds = %if.end779
  %651 = load i32, ptr %i__1, align 4, !tbaa !8
  br label %cond.end786

cond.false784:                                    ; preds = %if.end779
  %652 = load i32, ptr %i__1, align 4, !tbaa !8
  %sub785 = sub nsw i32 0, %652
  br label %cond.end786

cond.end786:                                      ; preds = %cond.false784, %cond.true783
  %cond787 = phi i32 [ %651, %cond.true783 ], [ %sub785, %cond.false784 ]
  store i32 %cond787, ptr %kp, align 4, !tbaa !8
  %653 = load i32, ptr %kp, align 4, !tbaa !8
  %654 = load i32, ptr %k, align 4, !tbaa !8
  %cmp788 = icmp ne i32 %653, %654
  br i1 %cmp788, label %if.then789, label %if.end927

if.then789:                                       ; preds = %cond.end786
  %655 = load i32, ptr %npp, align 4, !tbaa !8
  %656 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %657 = load i32, ptr %656, align 4, !tbaa !8
  %658 = load i32, ptr %kp, align 4, !tbaa !8
  %sub790 = sub nsw i32 %657, %658
  %add791 = add nsw i32 %sub790, 1
  %659 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %660 = load i32, ptr %659, align 4, !tbaa !8
  %661 = load i32, ptr %kp, align 4, !tbaa !8
  %sub792 = sub nsw i32 %660, %661
  %add793 = add nsw i32 %sub792, 2
  %mul794 = mul nsw i32 %add791, %add793
  %div795 = sdiv i32 %mul794, 2
  %sub796 = sub nsw i32 %655, %div795
  %add797 = add nsw i32 %sub796, 1
  store i32 %add797, ptr %kpc, align 4, !tbaa !8
  %662 = load i32, ptr %kp, align 4, !tbaa !8
  %663 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %664 = load i32, ptr %663, align 4, !tbaa !8
  %cmp798 = icmp slt i32 %662, %664
  br i1 %cmp798, label %if.then799, label %if.end810

if.then799:                                       ; preds = %if.then789
  %665 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %666 = load i32, ptr %665, align 4, !tbaa !8
  %667 = load i32, ptr %kp, align 4, !tbaa !8
  %sub800 = sub nsw i32 %666, %667
  store i32 %sub800, ptr %i__1, align 4, !tbaa !8
  %668 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %669 = load i32, ptr %kc, align 4, !tbaa !8
  %670 = load i32, ptr %kp, align 4, !tbaa !8
  %add801 = add nsw i32 %669, %670
  %671 = load i32, ptr %k, align 4, !tbaa !8
  %sub802 = sub nsw i32 %add801, %671
  %add803 = add nsw i32 %sub802, 1
  %idxprom804 = sext i32 %add803 to i64
  %arrayidx805 = getelementptr inbounds %struct.complex, ptr %668, i64 %idxprom804
  %672 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %673 = load i32, ptr %kpc, align 4, !tbaa !8
  %add806 = add nsw i32 %673, 1
  %idxprom807 = sext i32 %add806 to i64
  %arrayidx808 = getelementptr inbounds %struct.complex, ptr %672, i64 %idxprom807
  %call809 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx805, ptr noundef @c__1, ptr noundef %arrayidx808, ptr noundef @c__1)
  br label %if.end810

if.end810:                                        ; preds = %if.then799, %if.then789
  %674 = load i32, ptr %kc, align 4, !tbaa !8
  %675 = load i32, ptr %kp, align 4, !tbaa !8
  %add811 = add nsw i32 %674, %675
  %676 = load i32, ptr %k, align 4, !tbaa !8
  %sub812 = sub nsw i32 %add811, %676
  store i32 %sub812, ptr %kx, align 4, !tbaa !8
  %677 = load i32, ptr %kp, align 4, !tbaa !8
  %sub813 = sub nsw i32 %677, 1
  store i32 %sub813, ptr %i__1, align 4, !tbaa !8
  %678 = load i32, ptr %k, align 4, !tbaa !8
  %add814 = add nsw i32 %678, 1
  store i32 %add814, ptr %j, align 4, !tbaa !8
  br label %for.cond815

for.cond815:                                      ; preds = %for.inc853, %if.end810
  %679 = load i32, ptr %j, align 4, !tbaa !8
  %680 = load i32, ptr %i__1, align 4, !tbaa !8
  %cmp816 = icmp sle i32 %679, %680
  br i1 %cmp816, label %for.body817, label %for.end855

for.body817:                                      ; preds = %for.cond815
  %681 = load i32, ptr %kx, align 4, !tbaa !8
  %682 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %683 = load i32, ptr %682, align 4, !tbaa !8
  %add818 = add nsw i32 %681, %683
  %684 = load i32, ptr %j, align 4, !tbaa !8
  %sub819 = sub nsw i32 %add818, %684
  %add820 = add nsw i32 %sub819, 1
  store i32 %add820, ptr %kx, align 4, !tbaa !8
  %685 = load i32, ptr %kc, align 4, !tbaa !8
  %686 = load i32, ptr %j, align 4, !tbaa !8
  %add821 = add nsw i32 %685, %686
  %687 = load i32, ptr %k, align 4, !tbaa !8
  %sub822 = sub nsw i32 %add821, %687
  store i32 %sub822, ptr %i__2, align 4, !tbaa !8
  %688 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %689 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom823 = sext i32 %689 to i64
  %arrayidx824 = getelementptr inbounds %struct.complex, ptr %688, i64 %idxprom823
  %r825 = getelementptr inbounds %struct.complex, ptr %arrayidx824, i32 0, i32 0
  %690 = load float, ptr %r825, align 4, !tbaa !10
  %r826 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %690, ptr %r826, align 4, !tbaa !10
  %691 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %692 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom827 = sext i32 %692 to i64
  %arrayidx828 = getelementptr inbounds %struct.complex, ptr %691, i64 %idxprom827
  %i829 = getelementptr inbounds %struct.complex, ptr %arrayidx828, i32 0, i32 1
  %693 = load float, ptr %i829, align 4, !tbaa !13
  %i830 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %693, ptr %i830, align 4, !tbaa !13
  %694 = load i32, ptr %kc, align 4, !tbaa !8
  %695 = load i32, ptr %j, align 4, !tbaa !8
  %add831 = add nsw i32 %694, %695
  %696 = load i32, ptr %k, align 4, !tbaa !8
  %sub832 = sub nsw i32 %add831, %696
  store i32 %sub832, ptr %i__2, align 4, !tbaa !8
  %697 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %697, ptr %i__3, align 4, !tbaa !8
  %698 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %699 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom833 = sext i32 %699 to i64
  %arrayidx834 = getelementptr inbounds %struct.complex, ptr %698, i64 %idxprom833
  %r835 = getelementptr inbounds %struct.complex, ptr %arrayidx834, i32 0, i32 0
  %700 = load float, ptr %r835, align 4, !tbaa !10
  %701 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %702 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom836 = sext i32 %702 to i64
  %arrayidx837 = getelementptr inbounds %struct.complex, ptr %701, i64 %idxprom836
  %r838 = getelementptr inbounds %struct.complex, ptr %arrayidx837, i32 0, i32 0
  store float %700, ptr %r838, align 4, !tbaa !10
  %703 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %704 = load i32, ptr %i__3, align 4, !tbaa !8
  %idxprom839 = sext i32 %704 to i64
  %arrayidx840 = getelementptr inbounds %struct.complex, ptr %703, i64 %idxprom839
  %i841 = getelementptr inbounds %struct.complex, ptr %arrayidx840, i32 0, i32 1
  %705 = load float, ptr %i841, align 4, !tbaa !13
  %706 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %707 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom842 = sext i32 %707 to i64
  %arrayidx843 = getelementptr inbounds %struct.complex, ptr %706, i64 %idxprom842
  %i844 = getelementptr inbounds %struct.complex, ptr %arrayidx843, i32 0, i32 1
  store float %705, ptr %i844, align 4, !tbaa !13
  %708 = load i32, ptr %kx, align 4, !tbaa !8
  store i32 %708, ptr %i__2, align 4, !tbaa !8
  %r845 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %709 = load float, ptr %r845, align 4, !tbaa !10
  %710 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %711 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom846 = sext i32 %711 to i64
  %arrayidx847 = getelementptr inbounds %struct.complex, ptr %710, i64 %idxprom846
  %r848 = getelementptr inbounds %struct.complex, ptr %arrayidx847, i32 0, i32 0
  store float %709, ptr %r848, align 4, !tbaa !10
  %i849 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %712 = load float, ptr %i849, align 4, !tbaa !13
  %713 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %714 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom850 = sext i32 %714 to i64
  %arrayidx851 = getelementptr inbounds %struct.complex, ptr %713, i64 %idxprom850
  %i852 = getelementptr inbounds %struct.complex, ptr %arrayidx851, i32 0, i32 1
  store float %712, ptr %i852, align 4, !tbaa !13
  br label %for.inc853

for.inc853:                                       ; preds = %for.body817
  %715 = load i32, ptr %j, align 4, !tbaa !8
  %inc854 = add nsw i32 %715, 1
  store i32 %inc854, ptr %j, align 4, !tbaa !8
  br label %for.cond815, !llvm.loop !18

for.end855:                                       ; preds = %for.cond815
  %716 = load i32, ptr %kc, align 4, !tbaa !8
  store i32 %716, ptr %i__1, align 4, !tbaa !8
  %717 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %718 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom856 = sext i32 %718 to i64
  %arrayidx857 = getelementptr inbounds %struct.complex, ptr %717, i64 %idxprom856
  %r858 = getelementptr inbounds %struct.complex, ptr %arrayidx857, i32 0, i32 0
  %719 = load float, ptr %r858, align 4, !tbaa !10
  %r859 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %719, ptr %r859, align 4, !tbaa !10
  %720 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %721 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom860 = sext i32 %721 to i64
  %arrayidx861 = getelementptr inbounds %struct.complex, ptr %720, i64 %idxprom860
  %i862 = getelementptr inbounds %struct.complex, ptr %arrayidx861, i32 0, i32 1
  %722 = load float, ptr %i862, align 4, !tbaa !13
  %i863 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %722, ptr %i863, align 4, !tbaa !13
  %723 = load i32, ptr %kc, align 4, !tbaa !8
  store i32 %723, ptr %i__1, align 4, !tbaa !8
  %724 = load i32, ptr %kpc, align 4, !tbaa !8
  store i32 %724, ptr %i__2, align 4, !tbaa !8
  %725 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %726 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom864 = sext i32 %726 to i64
  %arrayidx865 = getelementptr inbounds %struct.complex, ptr %725, i64 %idxprom864
  %r866 = getelementptr inbounds %struct.complex, ptr %arrayidx865, i32 0, i32 0
  %727 = load float, ptr %r866, align 4, !tbaa !10
  %728 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %729 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom867 = sext i32 %729 to i64
  %arrayidx868 = getelementptr inbounds %struct.complex, ptr %728, i64 %idxprom867
  %r869 = getelementptr inbounds %struct.complex, ptr %arrayidx868, i32 0, i32 0
  store float %727, ptr %r869, align 4, !tbaa !10
  %730 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %731 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom870 = sext i32 %731 to i64
  %arrayidx871 = getelementptr inbounds %struct.complex, ptr %730, i64 %idxprom870
  %i872 = getelementptr inbounds %struct.complex, ptr %arrayidx871, i32 0, i32 1
  %732 = load float, ptr %i872, align 4, !tbaa !13
  %733 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %734 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom873 = sext i32 %734 to i64
  %arrayidx874 = getelementptr inbounds %struct.complex, ptr %733, i64 %idxprom873
  %i875 = getelementptr inbounds %struct.complex, ptr %arrayidx874, i32 0, i32 1
  store float %732, ptr %i875, align 4, !tbaa !13
  %735 = load i32, ptr %kpc, align 4, !tbaa !8
  store i32 %735, ptr %i__1, align 4, !tbaa !8
  %r876 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %736 = load float, ptr %r876, align 4, !tbaa !10
  %737 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %738 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom877 = sext i32 %738 to i64
  %arrayidx878 = getelementptr inbounds %struct.complex, ptr %737, i64 %idxprom877
  %r879 = getelementptr inbounds %struct.complex, ptr %arrayidx878, i32 0, i32 0
  store float %736, ptr %r879, align 4, !tbaa !10
  %i880 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %739 = load float, ptr %i880, align 4, !tbaa !13
  %740 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %741 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom881 = sext i32 %741 to i64
  %arrayidx882 = getelementptr inbounds %struct.complex, ptr %740, i64 %idxprom881
  %i883 = getelementptr inbounds %struct.complex, ptr %arrayidx882, i32 0, i32 1
  store float %739, ptr %i883, align 4, !tbaa !13
  %742 = load i32, ptr %kstep, align 4, !tbaa !8
  %cmp884 = icmp eq i32 %742, 2
  br i1 %cmp884, label %if.then885, label %if.end926

if.then885:                                       ; preds = %for.end855
  %743 = load i32, ptr %kc, align 4, !tbaa !8
  %744 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %745 = load i32, ptr %744, align 4, !tbaa !8
  %sub886 = sub nsw i32 %743, %745
  %746 = load i32, ptr %k, align 4, !tbaa !8
  %add887 = add nsw i32 %sub886, %746
  %sub888 = sub nsw i32 %add887, 1
  store i32 %sub888, ptr %i__1, align 4, !tbaa !8
  %747 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %748 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom889 = sext i32 %748 to i64
  %arrayidx890 = getelementptr inbounds %struct.complex, ptr %747, i64 %idxprom889
  %r891 = getelementptr inbounds %struct.complex, ptr %arrayidx890, i32 0, i32 0
  %749 = load float, ptr %r891, align 4, !tbaa !10
  %r892 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %749, ptr %r892, align 4, !tbaa !10
  %750 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %751 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom893 = sext i32 %751 to i64
  %arrayidx894 = getelementptr inbounds %struct.complex, ptr %750, i64 %idxprom893
  %i895 = getelementptr inbounds %struct.complex, ptr %arrayidx894, i32 0, i32 1
  %752 = load float, ptr %i895, align 4, !tbaa !13
  %i896 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %752, ptr %i896, align 4, !tbaa !13
  %753 = load i32, ptr %kc, align 4, !tbaa !8
  %754 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %755 = load i32, ptr %754, align 4, !tbaa !8
  %sub897 = sub nsw i32 %753, %755
  %756 = load i32, ptr %k, align 4, !tbaa !8
  %add898 = add nsw i32 %sub897, %756
  %sub899 = sub nsw i32 %add898, 1
  store i32 %sub899, ptr %i__1, align 4, !tbaa !8
  %757 = load i32, ptr %kc, align 4, !tbaa !8
  %758 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %759 = load i32, ptr %758, align 4, !tbaa !8
  %sub900 = sub nsw i32 %757, %759
  %760 = load i32, ptr %kp, align 4, !tbaa !8
  %add901 = add nsw i32 %sub900, %760
  %sub902 = sub nsw i32 %add901, 1
  store i32 %sub902, ptr %i__2, align 4, !tbaa !8
  %761 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %762 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom903 = sext i32 %762 to i64
  %arrayidx904 = getelementptr inbounds %struct.complex, ptr %761, i64 %idxprom903
  %r905 = getelementptr inbounds %struct.complex, ptr %arrayidx904, i32 0, i32 0
  %763 = load float, ptr %r905, align 4, !tbaa !10
  %764 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %765 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom906 = sext i32 %765 to i64
  %arrayidx907 = getelementptr inbounds %struct.complex, ptr %764, i64 %idxprom906
  %r908 = getelementptr inbounds %struct.complex, ptr %arrayidx907, i32 0, i32 0
  store float %763, ptr %r908, align 4, !tbaa !10
  %766 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %767 = load i32, ptr %i__2, align 4, !tbaa !8
  %idxprom909 = sext i32 %767 to i64
  %arrayidx910 = getelementptr inbounds %struct.complex, ptr %766, i64 %idxprom909
  %i911 = getelementptr inbounds %struct.complex, ptr %arrayidx910, i32 0, i32 1
  %768 = load float, ptr %i911, align 4, !tbaa !13
  %769 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %770 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom912 = sext i32 %770 to i64
  %arrayidx913 = getelementptr inbounds %struct.complex, ptr %769, i64 %idxprom912
  %i914 = getelementptr inbounds %struct.complex, ptr %arrayidx913, i32 0, i32 1
  store float %768, ptr %i914, align 4, !tbaa !13
  %771 = load i32, ptr %kc, align 4, !tbaa !8
  %772 = load ptr, ptr %n.addr, align 8, !tbaa !4
  %773 = load i32, ptr %772, align 4, !tbaa !8
  %sub915 = sub nsw i32 %771, %773
  %774 = load i32, ptr %kp, align 4, !tbaa !8
  %add916 = add nsw i32 %sub915, %774
  %sub917 = sub nsw i32 %add916, 1
  store i32 %sub917, ptr %i__1, align 4, !tbaa !8
  %r918 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %775 = load float, ptr %r918, align 4, !tbaa !10
  %776 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %777 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom919 = sext i32 %777 to i64
  %arrayidx920 = getelementptr inbounds %struct.complex, ptr %776, i64 %idxprom919
  %r921 = getelementptr inbounds %struct.complex, ptr %arrayidx920, i32 0, i32 0
  store float %775, ptr %r921, align 4, !tbaa !10
  %i922 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %778 = load float, ptr %i922, align 4, !tbaa !13
  %779 = load ptr, ptr %ap.addr, align 8, !tbaa !4
  %780 = load i32, ptr %i__1, align 4, !tbaa !8
  %idxprom923 = sext i32 %780 to i64
  %arrayidx924 = getelementptr inbounds %struct.complex, ptr %779, i64 %idxprom923
  %i925 = getelementptr inbounds %struct.complex, ptr %arrayidx924, i32 0, i32 1
  store float %778, ptr %i925, align 4, !tbaa !13
  br label %if.end926

if.end926:                                        ; preds = %if.then885, %for.end855
  br label %if.end927

if.end927:                                        ; preds = %if.end926, %cond.end786
  %781 = load i32, ptr %kstep, align 4, !tbaa !8
  %782 = load i32, ptr %k, align 4, !tbaa !8
  %sub928 = sub nsw i32 %782, %781
  store i32 %sub928, ptr %k, align 4, !tbaa !8
  %783 = load i32, ptr %kcnext, align 4, !tbaa !8
  store i32 %783, ptr %kc, align 4, !tbaa !8
  br label %L60

L80:                                              ; preds = %if.then490
  br label %if.end929

if.end929:                                        ; preds = %L80, %L50
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end929, %if.then46, %if.then26, %if.then12, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %kcnext) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kstep) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %akkp1) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %akp1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %npp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kpc) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kx) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %kc) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ak) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %d__) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %q__1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i__1) #4
  %784 = load i32, ptr %retval, align 4
  ret i32 %784
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #2

declare i32 @xerbla_(ptr noundef, ptr noundef) #2

declare void @cladiv_f2c_(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @ccopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @cspmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @cdotu_f2c_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

declare i32 @cswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
