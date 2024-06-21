; ModuleID = 'samples/580.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/dsptrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DSPTRD\00", align 1
@c__1 = internal global i32 1, align 4
@c_b8 = internal global double 0.000000e+00, align 8
@c_b14 = internal global double -1.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define i32 @dsptrd_(ptr noundef %uplo, ptr noundef %n, ptr noundef %ap, ptr noundef %d__, ptr noundef %e, ptr noundef %tau, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %tau.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %i1 = alloca i32, align 4
  %ii = alloca i32, align 4
  %i1i1 = alloca i32, align 4
  %taui = alloca double, align 8
  %alpha = alloca double, align 8
  %upper = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %tau, ptr %tau.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %tau.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %tau.addr, align 8
  %1 = load ptr, ptr %e.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %1, i32 -1
  store ptr %incdec.ptr1, ptr %e.addr, align 8
  %2 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr2 = getelementptr inbounds double, ptr %2, i32 -1
  store ptr %incdec.ptr2, ptr %d__.addr, align 8
  %3 = load ptr, ptr %ap.addr, align 8
  %incdec.ptr3 = getelementptr inbounds double, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %ap.addr, align 8
  %4 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %4, align 4
  %5 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %5, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %6 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %uplo.addr, align 8
  %call4 = call i32 @lsame_(ptr noundef %7, ptr noundef @.str.1)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %8, align 4
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %n.addr, align 8
  %10 = load i32, ptr %9, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %11 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %12 = load ptr, ptr %info.addr, align 8
  %13 = load i32, ptr %12, align 4
  %cmp8 = icmp ne i32 %13, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %14 = load ptr, ptr %info.addr, align 8
  %15 = load i32, ptr %14, align 4
  %sub = sub nsw i32 0, %15
  store i32 %sub, ptr %i__1, align 4
  %call10 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  %16 = load ptr, ptr %n.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp12 = icmp sle i32 %17, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end11
  %18 = load i32, ptr %upper, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.then16, label %if.else75

if.then16:                                        ; preds = %if.end14
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  %sub17 = sub nsw i32 %22, 1
  %mul = mul nsw i32 %20, %sub17
  %div = sdiv i32 %mul, 2
  %add = add nsw i32 %div, 1
  store i32 %add, ptr %i1, align 4
  %23 = load ptr, ptr %n.addr, align 8
  %24 = load i32, ptr %23, align 4
  %sub18 = sub nsw i32 %24, 1
  store i32 %sub18, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then16
  %25 = load i32, ptr %i__, align 4
  %cmp19 = icmp sge i32 %25, 1
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %ap.addr, align 8
  %27 = load i32, ptr %i1, align 4
  %28 = load i32, ptr %i__, align 4
  %add20 = add nsw i32 %27, %28
  %sub21 = sub nsw i32 %add20, 1
  %idxprom = sext i32 %sub21 to i64
  %arrayidx = getelementptr inbounds double, ptr %26, i64 %idxprom
  %29 = load ptr, ptr %ap.addr, align 8
  %30 = load i32, ptr %i1, align 4
  %idxprom22 = sext i32 %30 to i64
  %arrayidx23 = getelementptr inbounds double, ptr %29, i64 %idxprom22
  %call24 = call i32 @dlarfg_(ptr noundef %i__, ptr noundef %arrayidx, ptr noundef %arrayidx23, ptr noundef @c__1, ptr noundef %taui)
  %31 = load ptr, ptr %ap.addr, align 8
  %32 = load i32, ptr %i1, align 4
  %33 = load i32, ptr %i__, align 4
  %add25 = add nsw i32 %32, %33
  %sub26 = sub nsw i32 %add25, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds double, ptr %31, i64 %idxprom27
  %34 = load double, ptr %arrayidx28, align 8
  %35 = load ptr, ptr %e.addr, align 8
  %36 = load i32, ptr %i__, align 4
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds double, ptr %35, i64 %idxprom29
  store double %34, ptr %arrayidx30, align 8
  %37 = load double, ptr %taui, align 8
  %cmp31 = fcmp une double %37, 0.000000e+00
  br i1 %cmp31, label %if.then32, label %if.end63

if.then32:                                        ; preds = %for.body
  %38 = load ptr, ptr %ap.addr, align 8
  %39 = load i32, ptr %i1, align 4
  %40 = load i32, ptr %i__, align 4
  %add33 = add nsw i32 %39, %40
  %sub34 = sub nsw i32 %add33, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds double, ptr %38, i64 %idxprom35
  store double 1.000000e+00, ptr %arrayidx36, align 8
  %41 = load ptr, ptr %uplo.addr, align 8
  %42 = load ptr, ptr %ap.addr, align 8
  %arrayidx37 = getelementptr inbounds double, ptr %42, i64 1
  %43 = load ptr, ptr %ap.addr, align 8
  %44 = load i32, ptr %i1, align 4
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds double, ptr %43, i64 %idxprom38
  %45 = load ptr, ptr %tau.addr, align 8
  %arrayidx40 = getelementptr inbounds double, ptr %45, i64 1
  %call41 = call i32 @dspmv_(ptr noundef %41, ptr noundef %i__, ptr noundef %taui, ptr noundef %arrayidx37, ptr noundef %arrayidx39, ptr noundef @c__1, ptr noundef @c_b8, ptr noundef %arrayidx40, ptr noundef @c__1)
  %46 = load double, ptr %taui, align 8
  %mul42 = fmul double %46, -5.000000e-01
  %47 = load ptr, ptr %tau.addr, align 8
  %arrayidx43 = getelementptr inbounds double, ptr %47, i64 1
  %48 = load ptr, ptr %ap.addr, align 8
  %49 = load i32, ptr %i1, align 4
  %idxprom44 = sext i32 %49 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %48, i64 %idxprom44
  %call46 = call double @ddot_(ptr noundef %i__, ptr noundef %arrayidx43, ptr noundef @c__1, ptr noundef %arrayidx45, ptr noundef @c__1)
  %mul47 = fmul double %mul42, %call46
  store double %mul47, ptr %alpha, align 8
  %50 = load ptr, ptr %ap.addr, align 8
  %51 = load i32, ptr %i1, align 4
  %idxprom48 = sext i32 %51 to i64
  %arrayidx49 = getelementptr inbounds double, ptr %50, i64 %idxprom48
  %52 = load ptr, ptr %tau.addr, align 8
  %arrayidx50 = getelementptr inbounds double, ptr %52, i64 1
  %call51 = call i32 @daxpy_(ptr noundef %i__, ptr noundef %alpha, ptr noundef %arrayidx49, ptr noundef @c__1, ptr noundef %arrayidx50, ptr noundef @c__1)
  %53 = load ptr, ptr %uplo.addr, align 8
  %54 = load ptr, ptr %ap.addr, align 8
  %55 = load i32, ptr %i1, align 4
  %idxprom52 = sext i32 %55 to i64
  %arrayidx53 = getelementptr inbounds double, ptr %54, i64 %idxprom52
  %56 = load ptr, ptr %tau.addr, align 8
  %arrayidx54 = getelementptr inbounds double, ptr %56, i64 1
  %57 = load ptr, ptr %ap.addr, align 8
  %arrayidx55 = getelementptr inbounds double, ptr %57, i64 1
  %call56 = call i32 @dspr2_(ptr noundef %53, ptr noundef %i__, ptr noundef @c_b14, ptr noundef %arrayidx53, ptr noundef @c__1, ptr noundef %arrayidx54, ptr noundef @c__1, ptr noundef %arrayidx55)
  %58 = load ptr, ptr %e.addr, align 8
  %59 = load i32, ptr %i__, align 4
  %idxprom57 = sext i32 %59 to i64
  %arrayidx58 = getelementptr inbounds double, ptr %58, i64 %idxprom57
  %60 = load double, ptr %arrayidx58, align 8
  %61 = load ptr, ptr %ap.addr, align 8
  %62 = load i32, ptr %i1, align 4
  %63 = load i32, ptr %i__, align 4
  %add59 = add nsw i32 %62, %63
  %sub60 = sub nsw i32 %add59, 1
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds double, ptr %61, i64 %idxprom61
  store double %60, ptr %arrayidx62, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then32, %for.body
  %64 = load ptr, ptr %ap.addr, align 8
  %65 = load i32, ptr %i1, align 4
  %66 = load i32, ptr %i__, align 4
  %add64 = add nsw i32 %65, %66
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds double, ptr %64, i64 %idxprom65
  %67 = load double, ptr %arrayidx66, align 8
  %68 = load ptr, ptr %d__.addr, align 8
  %69 = load i32, ptr %i__, align 4
  %add67 = add nsw i32 %69, 1
  %idxprom68 = sext i32 %add67 to i64
  %arrayidx69 = getelementptr inbounds double, ptr %68, i64 %idxprom68
  store double %67, ptr %arrayidx69, align 8
  %70 = load double, ptr %taui, align 8
  %71 = load ptr, ptr %tau.addr, align 8
  %72 = load i32, ptr %i__, align 4
  %idxprom70 = sext i32 %72 to i64
  %arrayidx71 = getelementptr inbounds double, ptr %71, i64 %idxprom70
  store double %70, ptr %arrayidx71, align 8
  %73 = load i32, ptr %i__, align 4
  %74 = load i32, ptr %i1, align 4
  %sub72 = sub nsw i32 %74, %73
  store i32 %sub72, ptr %i1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end63
  %75 = load i32, ptr %i__, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, ptr %i__, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %76 = load ptr, ptr %ap.addr, align 8
  %arrayidx73 = getelementptr inbounds double, ptr %76, i64 1
  %77 = load double, ptr %arrayidx73, align 8
  %78 = load ptr, ptr %d__.addr, align 8
  %arrayidx74 = getelementptr inbounds double, ptr %78, i64 1
  store double %77, ptr %arrayidx74, align 8
  br label %if.end153

if.else75:                                        ; preds = %if.end14
  store i32 1, ptr %ii, align 4
  %79 = load ptr, ptr %n.addr, align 8
  %80 = load i32, ptr %79, align 4
  %sub76 = sub nsw i32 %80, 1
  store i32 %sub76, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc147, %if.else75
  %81 = load i32, ptr %i__, align 4
  %82 = load i32, ptr %i__1, align 4
  %cmp78 = icmp sle i32 %81, %82
  br i1 %cmp78, label %for.body79, label %for.end148

for.body79:                                       ; preds = %for.cond77
  %83 = load i32, ptr %ii, align 4
  %84 = load ptr, ptr %n.addr, align 8
  %85 = load i32, ptr %84, align 4
  %add80 = add nsw i32 %83, %85
  %86 = load i32, ptr %i__, align 4
  %sub81 = sub nsw i32 %add80, %86
  %add82 = add nsw i32 %sub81, 1
  store i32 %add82, ptr %i1i1, align 4
  %87 = load ptr, ptr %n.addr, align 8
  %88 = load i32, ptr %87, align 4
  %89 = load i32, ptr %i__, align 4
  %sub83 = sub nsw i32 %88, %89
  store i32 %sub83, ptr %i__2, align 4
  %90 = load ptr, ptr %ap.addr, align 8
  %91 = load i32, ptr %ii, align 4
  %add84 = add nsw i32 %91, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds double, ptr %90, i64 %idxprom85
  %92 = load ptr, ptr %ap.addr, align 8
  %93 = load i32, ptr %ii, align 4
  %add87 = add nsw i32 %93, 2
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %92, i64 %idxprom88
  %call90 = call i32 @dlarfg_(ptr noundef %i__2, ptr noundef %arrayidx86, ptr noundef %arrayidx89, ptr noundef @c__1, ptr noundef %taui)
  %94 = load ptr, ptr %ap.addr, align 8
  %95 = load i32, ptr %ii, align 4
  %add91 = add nsw i32 %95, 1
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds double, ptr %94, i64 %idxprom92
  %96 = load double, ptr %arrayidx93, align 8
  %97 = load ptr, ptr %e.addr, align 8
  %98 = load i32, ptr %i__, align 4
  %idxprom94 = sext i32 %98 to i64
  %arrayidx95 = getelementptr inbounds double, ptr %97, i64 %idxprom94
  store double %96, ptr %arrayidx95, align 8
  %99 = load double, ptr %taui, align 8
  %cmp96 = fcmp une double %99, 0.000000e+00
  br i1 %cmp96, label %if.then97, label %if.end140

if.then97:                                        ; preds = %for.body79
  %100 = load ptr, ptr %ap.addr, align 8
  %101 = load i32, ptr %ii, align 4
  %add98 = add nsw i32 %101, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds double, ptr %100, i64 %idxprom99
  store double 1.000000e+00, ptr %arrayidx100, align 8
  %102 = load ptr, ptr %n.addr, align 8
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %i__, align 4
  %sub101 = sub nsw i32 %103, %104
  store i32 %sub101, ptr %i__2, align 4
  %105 = load ptr, ptr %uplo.addr, align 8
  %106 = load ptr, ptr %ap.addr, align 8
  %107 = load i32, ptr %i1i1, align 4
  %idxprom102 = sext i32 %107 to i64
  %arrayidx103 = getelementptr inbounds double, ptr %106, i64 %idxprom102
  %108 = load ptr, ptr %ap.addr, align 8
  %109 = load i32, ptr %ii, align 4
  %add104 = add nsw i32 %109, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds double, ptr %108, i64 %idxprom105
  %110 = load ptr, ptr %tau.addr, align 8
  %111 = load i32, ptr %i__, align 4
  %idxprom107 = sext i32 %111 to i64
  %arrayidx108 = getelementptr inbounds double, ptr %110, i64 %idxprom107
  %call109 = call i32 @dspmv_(ptr noundef %105, ptr noundef %i__2, ptr noundef %taui, ptr noundef %arrayidx103, ptr noundef %arrayidx106, ptr noundef @c__1, ptr noundef @c_b8, ptr noundef %arrayidx108, ptr noundef @c__1)
  %112 = load ptr, ptr %n.addr, align 8
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %i__, align 4
  %sub110 = sub nsw i32 %113, %114
  store i32 %sub110, ptr %i__2, align 4
  %115 = load double, ptr %taui, align 8
  %mul111 = fmul double %115, -5.000000e-01
  %116 = load ptr, ptr %tau.addr, align 8
  %117 = load i32, ptr %i__, align 4
  %idxprom112 = sext i32 %117 to i64
  %arrayidx113 = getelementptr inbounds double, ptr %116, i64 %idxprom112
  %118 = load ptr, ptr %ap.addr, align 8
  %119 = load i32, ptr %ii, align 4
  %add114 = add nsw i32 %119, 1
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds double, ptr %118, i64 %idxprom115
  %call117 = call double @ddot_(ptr noundef %i__2, ptr noundef %arrayidx113, ptr noundef @c__1, ptr noundef %arrayidx116, ptr noundef @c__1)
  %mul118 = fmul double %mul111, %call117
  store double %mul118, ptr %alpha, align 8
  %120 = load ptr, ptr %n.addr, align 8
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %i__, align 4
  %sub119 = sub nsw i32 %121, %122
  store i32 %sub119, ptr %i__2, align 4
  %123 = load ptr, ptr %ap.addr, align 8
  %124 = load i32, ptr %ii, align 4
  %add120 = add nsw i32 %124, 1
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds double, ptr %123, i64 %idxprom121
  %125 = load ptr, ptr %tau.addr, align 8
  %126 = load i32, ptr %i__, align 4
  %idxprom123 = sext i32 %126 to i64
  %arrayidx124 = getelementptr inbounds double, ptr %125, i64 %idxprom123
  %call125 = call i32 @daxpy_(ptr noundef %i__2, ptr noundef %alpha, ptr noundef %arrayidx122, ptr noundef @c__1, ptr noundef %arrayidx124, ptr noundef @c__1)
  %127 = load ptr, ptr %n.addr, align 8
  %128 = load i32, ptr %127, align 4
  %129 = load i32, ptr %i__, align 4
  %sub126 = sub nsw i32 %128, %129
  store i32 %sub126, ptr %i__2, align 4
  %130 = load ptr, ptr %uplo.addr, align 8
  %131 = load ptr, ptr %ap.addr, align 8
  %132 = load i32, ptr %ii, align 4
  %add127 = add nsw i32 %132, 1
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds double, ptr %131, i64 %idxprom128
  %133 = load ptr, ptr %tau.addr, align 8
  %134 = load i32, ptr %i__, align 4
  %idxprom130 = sext i32 %134 to i64
  %arrayidx131 = getelementptr inbounds double, ptr %133, i64 %idxprom130
  %135 = load ptr, ptr %ap.addr, align 8
  %136 = load i32, ptr %i1i1, align 4
  %idxprom132 = sext i32 %136 to i64
  %arrayidx133 = getelementptr inbounds double, ptr %135, i64 %idxprom132
  %call134 = call i32 @dspr2_(ptr noundef %130, ptr noundef %i__2, ptr noundef @c_b14, ptr noundef %arrayidx129, ptr noundef @c__1, ptr noundef %arrayidx131, ptr noundef @c__1, ptr noundef %arrayidx133)
  %137 = load ptr, ptr %e.addr, align 8
  %138 = load i32, ptr %i__, align 4
  %idxprom135 = sext i32 %138 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %137, i64 %idxprom135
  %139 = load double, ptr %arrayidx136, align 8
  %140 = load ptr, ptr %ap.addr, align 8
  %141 = load i32, ptr %ii, align 4
  %add137 = add nsw i32 %141, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds double, ptr %140, i64 %idxprom138
  store double %139, ptr %arrayidx139, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then97, %for.body79
  %142 = load ptr, ptr %ap.addr, align 8
  %143 = load i32, ptr %ii, align 4
  %idxprom141 = sext i32 %143 to i64
  %arrayidx142 = getelementptr inbounds double, ptr %142, i64 %idxprom141
  %144 = load double, ptr %arrayidx142, align 8
  %145 = load ptr, ptr %d__.addr, align 8
  %146 = load i32, ptr %i__, align 4
  %idxprom143 = sext i32 %146 to i64
  %arrayidx144 = getelementptr inbounds double, ptr %145, i64 %idxprom143
  store double %144, ptr %arrayidx144, align 8
  %147 = load double, ptr %taui, align 8
  %148 = load ptr, ptr %tau.addr, align 8
  %149 = load i32, ptr %i__, align 4
  %idxprom145 = sext i32 %149 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %148, i64 %idxprom145
  store double %147, ptr %arrayidx146, align 8
  %150 = load i32, ptr %i1i1, align 4
  store i32 %150, ptr %ii, align 4
  br label %for.inc147

for.inc147:                                       ; preds = %if.end140
  %151 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %151, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond77, !llvm.loop !7

for.end148:                                       ; preds = %for.cond77
  %152 = load ptr, ptr %ap.addr, align 8
  %153 = load i32, ptr %ii, align 4
  %idxprom149 = sext i32 %153 to i64
  %arrayidx150 = getelementptr inbounds double, ptr %152, i64 %idxprom149
  %154 = load double, ptr %arrayidx150, align 8
  %155 = load ptr, ptr %d__.addr, align 8
  %156 = load ptr, ptr %n.addr, align 8
  %157 = load i32, ptr %156, align 4
  %idxprom151 = sext i32 %157 to i64
  %arrayidx152 = getelementptr inbounds double, ptr %155, i64 %idxprom151
  store double %154, ptr %arrayidx152, align 8
  br label %if.end153

if.end153:                                        ; preds = %for.end148, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end153, %if.then13, %if.then9
  %158 = load i32, ptr %retval, align 4
  ret i32 %158
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @dlarfg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dspmv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare double @ddot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @dspr2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
