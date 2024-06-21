; ModuleID = 'samples/182.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/zsyconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doublecomplex = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ZSYCONV\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @zsyconv_(ptr noundef %uplo, ptr noundef %way, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %way.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %ip = alloca i32, align 4
  %temp = alloca %struct.doublecomplex, align 8
  %upper = alloca i32, align 4
  %convert = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %way, ptr %way.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %lda.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %a_dim1, align 4
  %2 = load i32, ptr %a_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %a_offset, align 4
  %3 = load i32, ptr %a_offset, align 4
  %4 = load ptr, ptr %a.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.doublecomplex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %6 = load ptr, ptr %work.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.doublecomplex, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %9 = load ptr, ptr %way.addr, align 8
  %call2 = call i32 @lsame_(ptr noundef %9, ptr noundef @.str.1)
  store i32 %call2, ptr %convert, align 4
  %10 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %uplo.addr, align 8
  %call3 = call i32 @lsame_(ptr noundef %11, ptr noundef @.str.2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %12, align 4
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load i32, ptr %convert, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.else10, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.else
  %14 = load ptr, ptr %way.addr, align 8
  %call7 = call i32 @lsame_(ptr noundef %14, ptr noundef @.str.3)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true6
  %15 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %15, align 4
  br label %if.end17

if.else10:                                        ; preds = %land.lhs.true6, %if.else
  %16 = load ptr, ptr %n.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp = icmp slt i32 %17, 0
  br i1 %cmp, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else10
  %18 = load ptr, ptr %info.addr, align 8
  store i32 -3, ptr %18, align 4
  br label %if.end16

if.else12:                                        ; preds = %if.else10
  %19 = load ptr, ptr %lda.addr, align 8
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %n.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp13 = icmp sge i32 1, %22
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else12
  br label %cond.end

cond.false:                                       ; preds = %if.else12
  %23 = load ptr, ptr %n.addr, align 8
  %24 = load i32, ptr %23, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %24, %cond.false ]
  %cmp14 = icmp slt i32 %20, %cond
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %cond.end
  %25 = load ptr, ptr %info.addr, align 8
  store i32 -5, ptr %25, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %cond.end
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  %26 = load ptr, ptr %info.addr, align 8
  %27 = load i32, ptr %26, align 4
  %cmp19 = icmp ne i32 %27, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %28 = load ptr, ptr %info.addr, align 8
  %29 = load i32, ptr %28, align 4
  %sub = sub nsw i32 0, %29
  store i32 %sub, ptr %i__1, align 4
  %call21 = call i32 @xerbla_(ptr noundef @.str.4, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end18
  %30 = load ptr, ptr %n.addr, align 8
  %31 = load i32, ptr %30, align 4
  %cmp23 = icmp eq i32 %31, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end22
  %32 = load i32, ptr %upper, align 4
  %tobool26 = icmp ne i32 %32, 0
  br i1 %tobool26, label %if.then27, label %if.else312

if.then27:                                        ; preds = %if.end25
  %33 = load i32, ptr %convert, align 4
  %tobool28 = icmp ne i32 %33, 0
  br i1 %tobool28, label %if.then29, label %if.else173

if.then29:                                        ; preds = %if.then27
  %34 = load ptr, ptr %n.addr, align 8
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %i__, align 4
  %36 = load ptr, ptr %work.addr, align 8
  %arrayidx = getelementptr inbounds %struct.doublecomplex, ptr %36, i64 1
  %r = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx, i32 0, i32 0
  store double 0.000000e+00, ptr %r, align 8
  %37 = load ptr, ptr %work.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.doublecomplex, ptr %37, i64 1
  %i = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx30, i32 0, i32 1
  store double 0.000000e+00, ptr %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end65, %if.then29
  %38 = load i32, ptr %i__, align 4
  %cmp31 = icmp sgt i32 %38, 1
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %ipiv.addr, align 8
  %40 = load i32, ptr %i__, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %39, i64 %idxprom
  %41 = load i32, ptr %arrayidx32, align 4
  %cmp33 = icmp slt i32 %41, 0
  br i1 %cmp33, label %if.then34, label %if.else58

if.then34:                                        ; preds = %while.body
  %42 = load i32, ptr %i__, align 4
  store i32 %42, ptr %i__1, align 4
  %43 = load i32, ptr %i__, align 4
  %sub35 = sub nsw i32 %43, 1
  %44 = load i32, ptr %i__, align 4
  %45 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %44, %45
  %add36 = add nsw i32 %sub35, %mul
  store i32 %add36, ptr %i__2, align 4
  %46 = load ptr, ptr %a.addr, align 8
  %47 = load i32, ptr %i__2, align 4
  %idxprom37 = sext i32 %47 to i64
  %arrayidx38 = getelementptr inbounds %struct.doublecomplex, ptr %46, i64 %idxprom37
  %r39 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx38, i32 0, i32 0
  %48 = load double, ptr %r39, align 8
  %49 = load ptr, ptr %work.addr, align 8
  %50 = load i32, ptr %i__1, align 4
  %idxprom40 = sext i32 %50 to i64
  %arrayidx41 = getelementptr inbounds %struct.doublecomplex, ptr %49, i64 %idxprom40
  %r42 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx41, i32 0, i32 0
  store double %48, ptr %r42, align 8
  %51 = load ptr, ptr %a.addr, align 8
  %52 = load i32, ptr %i__2, align 4
  %idxprom43 = sext i32 %52 to i64
  %arrayidx44 = getelementptr inbounds %struct.doublecomplex, ptr %51, i64 %idxprom43
  %i45 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx44, i32 0, i32 1
  %53 = load double, ptr %i45, align 8
  %54 = load ptr, ptr %work.addr, align 8
  %55 = load i32, ptr %i__1, align 4
  %idxprom46 = sext i32 %55 to i64
  %arrayidx47 = getelementptr inbounds %struct.doublecomplex, ptr %54, i64 %idxprom46
  %i48 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx47, i32 0, i32 1
  store double %53, ptr %i48, align 8
  %56 = load i32, ptr %i__, align 4
  %sub49 = sub nsw i32 %56, 1
  %57 = load i32, ptr %i__, align 4
  %58 = load i32, ptr %a_dim1, align 4
  %mul50 = mul nsw i32 %57, %58
  %add51 = add nsw i32 %sub49, %mul50
  store i32 %add51, ptr %i__1, align 4
  %59 = load ptr, ptr %a.addr, align 8
  %60 = load i32, ptr %i__1, align 4
  %idxprom52 = sext i32 %60 to i64
  %arrayidx53 = getelementptr inbounds %struct.doublecomplex, ptr %59, i64 %idxprom52
  %r54 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx53, i32 0, i32 0
  store double 0.000000e+00, ptr %r54, align 8
  %61 = load ptr, ptr %a.addr, align 8
  %62 = load i32, ptr %i__1, align 4
  %idxprom55 = sext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds %struct.doublecomplex, ptr %61, i64 %idxprom55
  %i57 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx56, i32 0, i32 1
  store double 0.000000e+00, ptr %i57, align 8
  %63 = load i32, ptr %i__, align 4
  %dec = add nsw i32 %63, -1
  store i32 %dec, ptr %i__, align 4
  br label %if.end65

if.else58:                                        ; preds = %while.body
  %64 = load i32, ptr %i__, align 4
  store i32 %64, ptr %i__1, align 4
  %65 = load ptr, ptr %work.addr, align 8
  %66 = load i32, ptr %i__1, align 4
  %idxprom59 = sext i32 %66 to i64
  %arrayidx60 = getelementptr inbounds %struct.doublecomplex, ptr %65, i64 %idxprom59
  %r61 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx60, i32 0, i32 0
  store double 0.000000e+00, ptr %r61, align 8
  %67 = load ptr, ptr %work.addr, align 8
  %68 = load i32, ptr %i__1, align 4
  %idxprom62 = sext i32 %68 to i64
  %arrayidx63 = getelementptr inbounds %struct.doublecomplex, ptr %67, i64 %idxprom62
  %i64 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx63, i32 0, i32 1
  store double 0.000000e+00, ptr %i64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else58, %if.then34
  %69 = load i32, ptr %i__, align 4
  %dec66 = add nsw i32 %69, -1
  store i32 %dec66, ptr %i__, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %70 = load ptr, ptr %n.addr, align 8
  %71 = load i32, ptr %70, align 4
  store i32 %71, ptr %i__, align 4
  br label %while.cond67

while.cond67:                                     ; preds = %if.end170, %while.end
  %72 = load i32, ptr %i__, align 4
  %cmp68 = icmp sge i32 %72, 1
  br i1 %cmp68, label %while.body69, label %while.end172

while.body69:                                     ; preds = %while.cond67
  %73 = load ptr, ptr %ipiv.addr, align 8
  %74 = load i32, ptr %i__, align 4
  %idxprom70 = sext i32 %74 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %73, i64 %idxprom70
  %75 = load i32, ptr %arrayidx71, align 4
  %cmp72 = icmp sgt i32 %75, 0
  br i1 %cmp72, label %if.then73, label %if.else117

if.then73:                                        ; preds = %while.body69
  %76 = load ptr, ptr %ipiv.addr, align 8
  %77 = load i32, ptr %i__, align 4
  %idxprom74 = sext i32 %77 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %76, i64 %idxprom74
  %78 = load i32, ptr %arrayidx75, align 4
  store i32 %78, ptr %ip, align 4
  %79 = load i32, ptr %i__, align 4
  %80 = load ptr, ptr %n.addr, align 8
  %81 = load i32, ptr %80, align 4
  %cmp76 = icmp slt i32 %79, %81
  br i1 %cmp76, label %if.then77, label %if.end116

if.then77:                                        ; preds = %if.then73
  %82 = load ptr, ptr %n.addr, align 8
  %83 = load i32, ptr %82, align 4
  store i32 %83, ptr %i__1, align 4
  %84 = load i32, ptr %i__, align 4
  %add78 = add nsw i32 %84, 1
  store i32 %add78, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then77
  %85 = load i32, ptr %j, align 4
  %86 = load i32, ptr %i__1, align 4
  %cmp79 = icmp sle i32 %85, %86
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load i32, ptr %ip, align 4
  %88 = load i32, ptr %j, align 4
  %89 = load i32, ptr %a_dim1, align 4
  %mul80 = mul nsw i32 %88, %89
  %add81 = add nsw i32 %87, %mul80
  store i32 %add81, ptr %i__2, align 4
  %90 = load ptr, ptr %a.addr, align 8
  %91 = load i32, ptr %i__2, align 4
  %idxprom82 = sext i32 %91 to i64
  %arrayidx83 = getelementptr inbounds %struct.doublecomplex, ptr %90, i64 %idxprom82
  %r84 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx83, i32 0, i32 0
  %92 = load double, ptr %r84, align 8
  %r85 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %92, ptr %r85, align 8
  %93 = load ptr, ptr %a.addr, align 8
  %94 = load i32, ptr %i__2, align 4
  %idxprom86 = sext i32 %94 to i64
  %arrayidx87 = getelementptr inbounds %struct.doublecomplex, ptr %93, i64 %idxprom86
  %i88 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx87, i32 0, i32 1
  %95 = load double, ptr %i88, align 8
  %i89 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %95, ptr %i89, align 8
  %96 = load i32, ptr %ip, align 4
  %97 = load i32, ptr %j, align 4
  %98 = load i32, ptr %a_dim1, align 4
  %mul90 = mul nsw i32 %97, %98
  %add91 = add nsw i32 %96, %mul90
  store i32 %add91, ptr %i__2, align 4
  %99 = load i32, ptr %i__, align 4
  %100 = load i32, ptr %j, align 4
  %101 = load i32, ptr %a_dim1, align 4
  %mul92 = mul nsw i32 %100, %101
  %add93 = add nsw i32 %99, %mul92
  store i32 %add93, ptr %i__3, align 4
  %102 = load ptr, ptr %a.addr, align 8
  %103 = load i32, ptr %i__3, align 4
  %idxprom94 = sext i32 %103 to i64
  %arrayidx95 = getelementptr inbounds %struct.doublecomplex, ptr %102, i64 %idxprom94
  %r96 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx95, i32 0, i32 0
  %104 = load double, ptr %r96, align 8
  %105 = load ptr, ptr %a.addr, align 8
  %106 = load i32, ptr %i__2, align 4
  %idxprom97 = sext i32 %106 to i64
  %arrayidx98 = getelementptr inbounds %struct.doublecomplex, ptr %105, i64 %idxprom97
  %r99 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx98, i32 0, i32 0
  store double %104, ptr %r99, align 8
  %107 = load ptr, ptr %a.addr, align 8
  %108 = load i32, ptr %i__3, align 4
  %idxprom100 = sext i32 %108 to i64
  %arrayidx101 = getelementptr inbounds %struct.doublecomplex, ptr %107, i64 %idxprom100
  %i102 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx101, i32 0, i32 1
  %109 = load double, ptr %i102, align 8
  %110 = load ptr, ptr %a.addr, align 8
  %111 = load i32, ptr %i__2, align 4
  %idxprom103 = sext i32 %111 to i64
  %arrayidx104 = getelementptr inbounds %struct.doublecomplex, ptr %110, i64 %idxprom103
  %i105 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx104, i32 0, i32 1
  store double %109, ptr %i105, align 8
  %112 = load i32, ptr %i__, align 4
  %113 = load i32, ptr %j, align 4
  %114 = load i32, ptr %a_dim1, align 4
  %mul106 = mul nsw i32 %113, %114
  %add107 = add nsw i32 %112, %mul106
  store i32 %add107, ptr %i__2, align 4
  %r108 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %115 = load double, ptr %r108, align 8
  %116 = load ptr, ptr %a.addr, align 8
  %117 = load i32, ptr %i__2, align 4
  %idxprom109 = sext i32 %117 to i64
  %arrayidx110 = getelementptr inbounds %struct.doublecomplex, ptr %116, i64 %idxprom109
  %r111 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx110, i32 0, i32 0
  store double %115, ptr %r111, align 8
  %i112 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %118 = load double, ptr %i112, align 8
  %119 = load ptr, ptr %a.addr, align 8
  %120 = load i32, ptr %i__2, align 4
  %idxprom113 = sext i32 %120 to i64
  %arrayidx114 = getelementptr inbounds %struct.doublecomplex, ptr %119, i64 %idxprom113
  %i115 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx114, i32 0, i32 1
  store double %118, ptr %i115, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %121 = load i32, ptr %j, align 4
  %inc = add nsw i32 %121, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %if.end116

if.end116:                                        ; preds = %for.end, %if.then73
  br label %if.end170

if.else117:                                       ; preds = %while.body69
  %122 = load ptr, ptr %ipiv.addr, align 8
  %123 = load i32, ptr %i__, align 4
  %idxprom118 = sext i32 %123 to i64
  %arrayidx119 = getelementptr inbounds i32, ptr %122, i64 %idxprom118
  %124 = load i32, ptr %arrayidx119, align 4
  %sub120 = sub nsw i32 0, %124
  store i32 %sub120, ptr %ip, align 4
  %125 = load i32, ptr %i__, align 4
  %126 = load ptr, ptr %n.addr, align 8
  %127 = load i32, ptr %126, align 4
  %cmp121 = icmp slt i32 %125, %127
  br i1 %cmp121, label %if.then122, label %if.end168

if.then122:                                       ; preds = %if.else117
  %128 = load ptr, ptr %n.addr, align 8
  %129 = load i32, ptr %128, align 4
  store i32 %129, ptr %i__1, align 4
  %130 = load i32, ptr %i__, align 4
  %add123 = add nsw i32 %130, 1
  store i32 %add123, ptr %j, align 4
  br label %for.cond124

for.cond124:                                      ; preds = %for.inc165, %if.then122
  %131 = load i32, ptr %j, align 4
  %132 = load i32, ptr %i__1, align 4
  %cmp125 = icmp sle i32 %131, %132
  br i1 %cmp125, label %for.body126, label %for.end167

for.body126:                                      ; preds = %for.cond124
  %133 = load i32, ptr %ip, align 4
  %134 = load i32, ptr %j, align 4
  %135 = load i32, ptr %a_dim1, align 4
  %mul127 = mul nsw i32 %134, %135
  %add128 = add nsw i32 %133, %mul127
  store i32 %add128, ptr %i__2, align 4
  %136 = load ptr, ptr %a.addr, align 8
  %137 = load i32, ptr %i__2, align 4
  %idxprom129 = sext i32 %137 to i64
  %arrayidx130 = getelementptr inbounds %struct.doublecomplex, ptr %136, i64 %idxprom129
  %r131 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx130, i32 0, i32 0
  %138 = load double, ptr %r131, align 8
  %r132 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %138, ptr %r132, align 8
  %139 = load ptr, ptr %a.addr, align 8
  %140 = load i32, ptr %i__2, align 4
  %idxprom133 = sext i32 %140 to i64
  %arrayidx134 = getelementptr inbounds %struct.doublecomplex, ptr %139, i64 %idxprom133
  %i135 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx134, i32 0, i32 1
  %141 = load double, ptr %i135, align 8
  %i136 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %141, ptr %i136, align 8
  %142 = load i32, ptr %ip, align 4
  %143 = load i32, ptr %j, align 4
  %144 = load i32, ptr %a_dim1, align 4
  %mul137 = mul nsw i32 %143, %144
  %add138 = add nsw i32 %142, %mul137
  store i32 %add138, ptr %i__2, align 4
  %145 = load i32, ptr %i__, align 4
  %sub139 = sub nsw i32 %145, 1
  %146 = load i32, ptr %j, align 4
  %147 = load i32, ptr %a_dim1, align 4
  %mul140 = mul nsw i32 %146, %147
  %add141 = add nsw i32 %sub139, %mul140
  store i32 %add141, ptr %i__3, align 4
  %148 = load ptr, ptr %a.addr, align 8
  %149 = load i32, ptr %i__3, align 4
  %idxprom142 = sext i32 %149 to i64
  %arrayidx143 = getelementptr inbounds %struct.doublecomplex, ptr %148, i64 %idxprom142
  %r144 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx143, i32 0, i32 0
  %150 = load double, ptr %r144, align 8
  %151 = load ptr, ptr %a.addr, align 8
  %152 = load i32, ptr %i__2, align 4
  %idxprom145 = sext i32 %152 to i64
  %arrayidx146 = getelementptr inbounds %struct.doublecomplex, ptr %151, i64 %idxprom145
  %r147 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx146, i32 0, i32 0
  store double %150, ptr %r147, align 8
  %153 = load ptr, ptr %a.addr, align 8
  %154 = load i32, ptr %i__3, align 4
  %idxprom148 = sext i32 %154 to i64
  %arrayidx149 = getelementptr inbounds %struct.doublecomplex, ptr %153, i64 %idxprom148
  %i150 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx149, i32 0, i32 1
  %155 = load double, ptr %i150, align 8
  %156 = load ptr, ptr %a.addr, align 8
  %157 = load i32, ptr %i__2, align 4
  %idxprom151 = sext i32 %157 to i64
  %arrayidx152 = getelementptr inbounds %struct.doublecomplex, ptr %156, i64 %idxprom151
  %i153 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx152, i32 0, i32 1
  store double %155, ptr %i153, align 8
  %158 = load i32, ptr %i__, align 4
  %sub154 = sub nsw i32 %158, 1
  %159 = load i32, ptr %j, align 4
  %160 = load i32, ptr %a_dim1, align 4
  %mul155 = mul nsw i32 %159, %160
  %add156 = add nsw i32 %sub154, %mul155
  store i32 %add156, ptr %i__2, align 4
  %r157 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %161 = load double, ptr %r157, align 8
  %162 = load ptr, ptr %a.addr, align 8
  %163 = load i32, ptr %i__2, align 4
  %idxprom158 = sext i32 %163 to i64
  %arrayidx159 = getelementptr inbounds %struct.doublecomplex, ptr %162, i64 %idxprom158
  %r160 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx159, i32 0, i32 0
  store double %161, ptr %r160, align 8
  %i161 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %164 = load double, ptr %i161, align 8
  %165 = load ptr, ptr %a.addr, align 8
  %166 = load i32, ptr %i__2, align 4
  %idxprom162 = sext i32 %166 to i64
  %arrayidx163 = getelementptr inbounds %struct.doublecomplex, ptr %165, i64 %idxprom162
  %i164 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx163, i32 0, i32 1
  store double %164, ptr %i164, align 8
  br label %for.inc165

for.inc165:                                       ; preds = %for.body126
  %167 = load i32, ptr %j, align 4
  %inc166 = add nsw i32 %167, 1
  store i32 %inc166, ptr %j, align 4
  br label %for.cond124, !llvm.loop !8

for.end167:                                       ; preds = %for.cond124
  br label %if.end168

if.end168:                                        ; preds = %for.end167, %if.else117
  %168 = load i32, ptr %i__, align 4
  %dec169 = add nsw i32 %168, -1
  store i32 %dec169, ptr %i__, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.end168, %if.end116
  %169 = load i32, ptr %i__, align 4
  %dec171 = add nsw i32 %169, -1
  store i32 %dec171, ptr %i__, align 4
  br label %while.cond67, !llvm.loop !9

while.end172:                                     ; preds = %while.cond67
  br label %if.end311

if.else173:                                       ; preds = %if.then27
  store i32 1, ptr %i__, align 4
  br label %while.cond174

while.cond174:                                    ; preds = %if.end282, %if.else173
  %170 = load i32, ptr %i__, align 4
  %171 = load ptr, ptr %n.addr, align 8
  %172 = load i32, ptr %171, align 4
  %cmp175 = icmp sle i32 %170, %172
  br i1 %cmp175, label %while.body176, label %while.end284

while.body176:                                    ; preds = %while.cond174
  %173 = load ptr, ptr %ipiv.addr, align 8
  %174 = load i32, ptr %i__, align 4
  %idxprom177 = sext i32 %174 to i64
  %arrayidx178 = getelementptr inbounds i32, ptr %173, i64 %idxprom177
  %175 = load i32, ptr %arrayidx178, align 4
  %cmp179 = icmp sgt i32 %175, 0
  br i1 %cmp179, label %if.then180, label %if.else229

if.then180:                                       ; preds = %while.body176
  %176 = load ptr, ptr %ipiv.addr, align 8
  %177 = load i32, ptr %i__, align 4
  %idxprom181 = sext i32 %177 to i64
  %arrayidx182 = getelementptr inbounds i32, ptr %176, i64 %idxprom181
  %178 = load i32, ptr %arrayidx182, align 4
  store i32 %178, ptr %ip, align 4
  %179 = load i32, ptr %i__, align 4
  %180 = load ptr, ptr %n.addr, align 8
  %181 = load i32, ptr %180, align 4
  %cmp183 = icmp slt i32 %179, %181
  br i1 %cmp183, label %if.then184, label %if.end228

if.then184:                                       ; preds = %if.then180
  %182 = load ptr, ptr %n.addr, align 8
  %183 = load i32, ptr %182, align 4
  store i32 %183, ptr %i__1, align 4
  %184 = load i32, ptr %i__, align 4
  %add185 = add nsw i32 %184, 1
  store i32 %add185, ptr %j, align 4
  br label %for.cond186

for.cond186:                                      ; preds = %for.inc225, %if.then184
  %185 = load i32, ptr %j, align 4
  %186 = load i32, ptr %i__1, align 4
  %cmp187 = icmp sle i32 %185, %186
  br i1 %cmp187, label %for.body188, label %for.end227

for.body188:                                      ; preds = %for.cond186
  %187 = load i32, ptr %ip, align 4
  %188 = load i32, ptr %j, align 4
  %189 = load i32, ptr %a_dim1, align 4
  %mul189 = mul nsw i32 %188, %189
  %add190 = add nsw i32 %187, %mul189
  store i32 %add190, ptr %i__2, align 4
  %190 = load ptr, ptr %a.addr, align 8
  %191 = load i32, ptr %i__2, align 4
  %idxprom191 = sext i32 %191 to i64
  %arrayidx192 = getelementptr inbounds %struct.doublecomplex, ptr %190, i64 %idxprom191
  %r193 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx192, i32 0, i32 0
  %192 = load double, ptr %r193, align 8
  %r194 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %192, ptr %r194, align 8
  %193 = load ptr, ptr %a.addr, align 8
  %194 = load i32, ptr %i__2, align 4
  %idxprom195 = sext i32 %194 to i64
  %arrayidx196 = getelementptr inbounds %struct.doublecomplex, ptr %193, i64 %idxprom195
  %i197 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx196, i32 0, i32 1
  %195 = load double, ptr %i197, align 8
  %i198 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %195, ptr %i198, align 8
  %196 = load i32, ptr %ip, align 4
  %197 = load i32, ptr %j, align 4
  %198 = load i32, ptr %a_dim1, align 4
  %mul199 = mul nsw i32 %197, %198
  %add200 = add nsw i32 %196, %mul199
  store i32 %add200, ptr %i__2, align 4
  %199 = load i32, ptr %i__, align 4
  %200 = load i32, ptr %j, align 4
  %201 = load i32, ptr %a_dim1, align 4
  %mul201 = mul nsw i32 %200, %201
  %add202 = add nsw i32 %199, %mul201
  store i32 %add202, ptr %i__3, align 4
  %202 = load ptr, ptr %a.addr, align 8
  %203 = load i32, ptr %i__3, align 4
  %idxprom203 = sext i32 %203 to i64
  %arrayidx204 = getelementptr inbounds %struct.doublecomplex, ptr %202, i64 %idxprom203
  %r205 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx204, i32 0, i32 0
  %204 = load double, ptr %r205, align 8
  %205 = load ptr, ptr %a.addr, align 8
  %206 = load i32, ptr %i__2, align 4
  %idxprom206 = sext i32 %206 to i64
  %arrayidx207 = getelementptr inbounds %struct.doublecomplex, ptr %205, i64 %idxprom206
  %r208 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx207, i32 0, i32 0
  store double %204, ptr %r208, align 8
  %207 = load ptr, ptr %a.addr, align 8
  %208 = load i32, ptr %i__3, align 4
  %idxprom209 = sext i32 %208 to i64
  %arrayidx210 = getelementptr inbounds %struct.doublecomplex, ptr %207, i64 %idxprom209
  %i211 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx210, i32 0, i32 1
  %209 = load double, ptr %i211, align 8
  %210 = load ptr, ptr %a.addr, align 8
  %211 = load i32, ptr %i__2, align 4
  %idxprom212 = sext i32 %211 to i64
  %arrayidx213 = getelementptr inbounds %struct.doublecomplex, ptr %210, i64 %idxprom212
  %i214 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx213, i32 0, i32 1
  store double %209, ptr %i214, align 8
  %212 = load i32, ptr %i__, align 4
  %213 = load i32, ptr %j, align 4
  %214 = load i32, ptr %a_dim1, align 4
  %mul215 = mul nsw i32 %213, %214
  %add216 = add nsw i32 %212, %mul215
  store i32 %add216, ptr %i__2, align 4
  %r217 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %215 = load double, ptr %r217, align 8
  %216 = load ptr, ptr %a.addr, align 8
  %217 = load i32, ptr %i__2, align 4
  %idxprom218 = sext i32 %217 to i64
  %arrayidx219 = getelementptr inbounds %struct.doublecomplex, ptr %216, i64 %idxprom218
  %r220 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx219, i32 0, i32 0
  store double %215, ptr %r220, align 8
  %i221 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %218 = load double, ptr %i221, align 8
  %219 = load ptr, ptr %a.addr, align 8
  %220 = load i32, ptr %i__2, align 4
  %idxprom222 = sext i32 %220 to i64
  %arrayidx223 = getelementptr inbounds %struct.doublecomplex, ptr %219, i64 %idxprom222
  %i224 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx223, i32 0, i32 1
  store double %218, ptr %i224, align 8
  br label %for.inc225

for.inc225:                                       ; preds = %for.body188
  %221 = load i32, ptr %j, align 4
  %inc226 = add nsw i32 %221, 1
  store i32 %inc226, ptr %j, align 4
  br label %for.cond186, !llvm.loop !10

for.end227:                                       ; preds = %for.cond186
  br label %if.end228

if.end228:                                        ; preds = %for.end227, %if.then180
  br label %if.end282

if.else229:                                       ; preds = %while.body176
  %222 = load ptr, ptr %ipiv.addr, align 8
  %223 = load i32, ptr %i__, align 4
  %idxprom230 = sext i32 %223 to i64
  %arrayidx231 = getelementptr inbounds i32, ptr %222, i64 %idxprom230
  %224 = load i32, ptr %arrayidx231, align 4
  %sub232 = sub nsw i32 0, %224
  store i32 %sub232, ptr %ip, align 4
  %225 = load i32, ptr %i__, align 4
  %inc233 = add nsw i32 %225, 1
  store i32 %inc233, ptr %i__, align 4
  %226 = load i32, ptr %i__, align 4
  %227 = load ptr, ptr %n.addr, align 8
  %228 = load i32, ptr %227, align 4
  %cmp234 = icmp slt i32 %226, %228
  br i1 %cmp234, label %if.then235, label %if.end281

if.then235:                                       ; preds = %if.else229
  %229 = load ptr, ptr %n.addr, align 8
  %230 = load i32, ptr %229, align 4
  store i32 %230, ptr %i__1, align 4
  %231 = load i32, ptr %i__, align 4
  %add236 = add nsw i32 %231, 1
  store i32 %add236, ptr %j, align 4
  br label %for.cond237

for.cond237:                                      ; preds = %for.inc278, %if.then235
  %232 = load i32, ptr %j, align 4
  %233 = load i32, ptr %i__1, align 4
  %cmp238 = icmp sle i32 %232, %233
  br i1 %cmp238, label %for.body239, label %for.end280

for.body239:                                      ; preds = %for.cond237
  %234 = load i32, ptr %ip, align 4
  %235 = load i32, ptr %j, align 4
  %236 = load i32, ptr %a_dim1, align 4
  %mul240 = mul nsw i32 %235, %236
  %add241 = add nsw i32 %234, %mul240
  store i32 %add241, ptr %i__2, align 4
  %237 = load ptr, ptr %a.addr, align 8
  %238 = load i32, ptr %i__2, align 4
  %idxprom242 = sext i32 %238 to i64
  %arrayidx243 = getelementptr inbounds %struct.doublecomplex, ptr %237, i64 %idxprom242
  %r244 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx243, i32 0, i32 0
  %239 = load double, ptr %r244, align 8
  %r245 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %239, ptr %r245, align 8
  %240 = load ptr, ptr %a.addr, align 8
  %241 = load i32, ptr %i__2, align 4
  %idxprom246 = sext i32 %241 to i64
  %arrayidx247 = getelementptr inbounds %struct.doublecomplex, ptr %240, i64 %idxprom246
  %i248 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx247, i32 0, i32 1
  %242 = load double, ptr %i248, align 8
  %i249 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %242, ptr %i249, align 8
  %243 = load i32, ptr %ip, align 4
  %244 = load i32, ptr %j, align 4
  %245 = load i32, ptr %a_dim1, align 4
  %mul250 = mul nsw i32 %244, %245
  %add251 = add nsw i32 %243, %mul250
  store i32 %add251, ptr %i__2, align 4
  %246 = load i32, ptr %i__, align 4
  %sub252 = sub nsw i32 %246, 1
  %247 = load i32, ptr %j, align 4
  %248 = load i32, ptr %a_dim1, align 4
  %mul253 = mul nsw i32 %247, %248
  %add254 = add nsw i32 %sub252, %mul253
  store i32 %add254, ptr %i__3, align 4
  %249 = load ptr, ptr %a.addr, align 8
  %250 = load i32, ptr %i__3, align 4
  %idxprom255 = sext i32 %250 to i64
  %arrayidx256 = getelementptr inbounds %struct.doublecomplex, ptr %249, i64 %idxprom255
  %r257 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx256, i32 0, i32 0
  %251 = load double, ptr %r257, align 8
  %252 = load ptr, ptr %a.addr, align 8
  %253 = load i32, ptr %i__2, align 4
  %idxprom258 = sext i32 %253 to i64
  %arrayidx259 = getelementptr inbounds %struct.doublecomplex, ptr %252, i64 %idxprom258
  %r260 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx259, i32 0, i32 0
  store double %251, ptr %r260, align 8
  %254 = load ptr, ptr %a.addr, align 8
  %255 = load i32, ptr %i__3, align 4
  %idxprom261 = sext i32 %255 to i64
  %arrayidx262 = getelementptr inbounds %struct.doublecomplex, ptr %254, i64 %idxprom261
  %i263 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx262, i32 0, i32 1
  %256 = load double, ptr %i263, align 8
  %257 = load ptr, ptr %a.addr, align 8
  %258 = load i32, ptr %i__2, align 4
  %idxprom264 = sext i32 %258 to i64
  %arrayidx265 = getelementptr inbounds %struct.doublecomplex, ptr %257, i64 %idxprom264
  %i266 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx265, i32 0, i32 1
  store double %256, ptr %i266, align 8
  %259 = load i32, ptr %i__, align 4
  %sub267 = sub nsw i32 %259, 1
  %260 = load i32, ptr %j, align 4
  %261 = load i32, ptr %a_dim1, align 4
  %mul268 = mul nsw i32 %260, %261
  %add269 = add nsw i32 %sub267, %mul268
  store i32 %add269, ptr %i__2, align 4
  %r270 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %262 = load double, ptr %r270, align 8
  %263 = load ptr, ptr %a.addr, align 8
  %264 = load i32, ptr %i__2, align 4
  %idxprom271 = sext i32 %264 to i64
  %arrayidx272 = getelementptr inbounds %struct.doublecomplex, ptr %263, i64 %idxprom271
  %r273 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx272, i32 0, i32 0
  store double %262, ptr %r273, align 8
  %i274 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %265 = load double, ptr %i274, align 8
  %266 = load ptr, ptr %a.addr, align 8
  %267 = load i32, ptr %i__2, align 4
  %idxprom275 = sext i32 %267 to i64
  %arrayidx276 = getelementptr inbounds %struct.doublecomplex, ptr %266, i64 %idxprom275
  %i277 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx276, i32 0, i32 1
  store double %265, ptr %i277, align 8
  br label %for.inc278

for.inc278:                                       ; preds = %for.body239
  %268 = load i32, ptr %j, align 4
  %inc279 = add nsw i32 %268, 1
  store i32 %inc279, ptr %j, align 4
  br label %for.cond237, !llvm.loop !11

for.end280:                                       ; preds = %for.cond237
  br label %if.end281

if.end281:                                        ; preds = %for.end280, %if.else229
  br label %if.end282

if.end282:                                        ; preds = %if.end281, %if.end228
  %269 = load i32, ptr %i__, align 4
  %inc283 = add nsw i32 %269, 1
  store i32 %inc283, ptr %i__, align 4
  br label %while.cond174, !llvm.loop !12

while.end284:                                     ; preds = %while.cond174
  %270 = load ptr, ptr %n.addr, align 8
  %271 = load i32, ptr %270, align 4
  store i32 %271, ptr %i__, align 4
  br label %while.cond285

while.cond285:                                    ; preds = %if.end308, %while.end284
  %272 = load i32, ptr %i__, align 4
  %cmp286 = icmp sgt i32 %272, 1
  br i1 %cmp286, label %while.body287, label %while.end310

while.body287:                                    ; preds = %while.cond285
  %273 = load ptr, ptr %ipiv.addr, align 8
  %274 = load i32, ptr %i__, align 4
  %idxprom288 = sext i32 %274 to i64
  %arrayidx289 = getelementptr inbounds i32, ptr %273, i64 %idxprom288
  %275 = load i32, ptr %arrayidx289, align 4
  %cmp290 = icmp slt i32 %275, 0
  br i1 %cmp290, label %if.then291, label %if.end308

if.then291:                                       ; preds = %while.body287
  %276 = load i32, ptr %i__, align 4
  %sub292 = sub nsw i32 %276, 1
  %277 = load i32, ptr %i__, align 4
  %278 = load i32, ptr %a_dim1, align 4
  %mul293 = mul nsw i32 %277, %278
  %add294 = add nsw i32 %sub292, %mul293
  store i32 %add294, ptr %i__1, align 4
  %279 = load i32, ptr %i__, align 4
  store i32 %279, ptr %i__2, align 4
  %280 = load ptr, ptr %work.addr, align 8
  %281 = load i32, ptr %i__2, align 4
  %idxprom295 = sext i32 %281 to i64
  %arrayidx296 = getelementptr inbounds %struct.doublecomplex, ptr %280, i64 %idxprom295
  %r297 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx296, i32 0, i32 0
  %282 = load double, ptr %r297, align 8
  %283 = load ptr, ptr %a.addr, align 8
  %284 = load i32, ptr %i__1, align 4
  %idxprom298 = sext i32 %284 to i64
  %arrayidx299 = getelementptr inbounds %struct.doublecomplex, ptr %283, i64 %idxprom298
  %r300 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx299, i32 0, i32 0
  store double %282, ptr %r300, align 8
  %285 = load ptr, ptr %work.addr, align 8
  %286 = load i32, ptr %i__2, align 4
  %idxprom301 = sext i32 %286 to i64
  %arrayidx302 = getelementptr inbounds %struct.doublecomplex, ptr %285, i64 %idxprom301
  %i303 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx302, i32 0, i32 1
  %287 = load double, ptr %i303, align 8
  %288 = load ptr, ptr %a.addr, align 8
  %289 = load i32, ptr %i__1, align 4
  %idxprom304 = sext i32 %289 to i64
  %arrayidx305 = getelementptr inbounds %struct.doublecomplex, ptr %288, i64 %idxprom304
  %i306 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx305, i32 0, i32 1
  store double %287, ptr %i306, align 8
  %290 = load i32, ptr %i__, align 4
  %dec307 = add nsw i32 %290, -1
  store i32 %dec307, ptr %i__, align 4
  br label %if.end308

if.end308:                                        ; preds = %if.then291, %while.body287
  %291 = load i32, ptr %i__, align 4
  %dec309 = add nsw i32 %291, -1
  store i32 %dec309, ptr %i__, align 4
  br label %while.cond285, !llvm.loop !13

while.end310:                                     ; preds = %while.cond285
  br label %if.end311

if.end311:                                        ; preds = %while.end310, %while.end172
  br label %if.end616

if.else312:                                       ; preds = %if.end25
  %292 = load i32, ptr %convert, align 4
  %tobool313 = icmp ne i32 %292, 0
  br i1 %tobool313, label %if.then314, label %if.else476

if.then314:                                       ; preds = %if.else312
  store i32 1, ptr %i__, align 4
  %293 = load ptr, ptr %n.addr, align 8
  %294 = load i32, ptr %293, align 4
  store i32 %294, ptr %i__1, align 4
  %295 = load ptr, ptr %work.addr, align 8
  %296 = load i32, ptr %i__1, align 4
  %idxprom315 = sext i32 %296 to i64
  %arrayidx316 = getelementptr inbounds %struct.doublecomplex, ptr %295, i64 %idxprom315
  %r317 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx316, i32 0, i32 0
  store double 0.000000e+00, ptr %r317, align 8
  %297 = load ptr, ptr %work.addr, align 8
  %298 = load i32, ptr %i__1, align 4
  %idxprom318 = sext i32 %298 to i64
  %arrayidx319 = getelementptr inbounds %struct.doublecomplex, ptr %297, i64 %idxprom318
  %i320 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx319, i32 0, i32 1
  store double 0.000000e+00, ptr %i320, align 8
  br label %while.cond321

while.cond321:                                    ; preds = %if.end362, %if.then314
  %299 = load i32, ptr %i__, align 4
  %300 = load ptr, ptr %n.addr, align 8
  %301 = load i32, ptr %300, align 4
  %cmp322 = icmp sle i32 %299, %301
  br i1 %cmp322, label %while.body323, label %while.end364

while.body323:                                    ; preds = %while.cond321
  %302 = load i32, ptr %i__, align 4
  %303 = load ptr, ptr %n.addr, align 8
  %304 = load i32, ptr %303, align 4
  %cmp324 = icmp slt i32 %302, %304
  br i1 %cmp324, label %land.lhs.true325, label %if.else355

land.lhs.true325:                                 ; preds = %while.body323
  %305 = load ptr, ptr %ipiv.addr, align 8
  %306 = load i32, ptr %i__, align 4
  %idxprom326 = sext i32 %306 to i64
  %arrayidx327 = getelementptr inbounds i32, ptr %305, i64 %idxprom326
  %307 = load i32, ptr %arrayidx327, align 4
  %cmp328 = icmp slt i32 %307, 0
  br i1 %cmp328, label %if.then329, label %if.else355

if.then329:                                       ; preds = %land.lhs.true325
  %308 = load i32, ptr %i__, align 4
  store i32 %308, ptr %i__1, align 4
  %309 = load i32, ptr %i__, align 4
  %add330 = add nsw i32 %309, 1
  %310 = load i32, ptr %i__, align 4
  %311 = load i32, ptr %a_dim1, align 4
  %mul331 = mul nsw i32 %310, %311
  %add332 = add nsw i32 %add330, %mul331
  store i32 %add332, ptr %i__2, align 4
  %312 = load ptr, ptr %a.addr, align 8
  %313 = load i32, ptr %i__2, align 4
  %idxprom333 = sext i32 %313 to i64
  %arrayidx334 = getelementptr inbounds %struct.doublecomplex, ptr %312, i64 %idxprom333
  %r335 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx334, i32 0, i32 0
  %314 = load double, ptr %r335, align 8
  %315 = load ptr, ptr %work.addr, align 8
  %316 = load i32, ptr %i__1, align 4
  %idxprom336 = sext i32 %316 to i64
  %arrayidx337 = getelementptr inbounds %struct.doublecomplex, ptr %315, i64 %idxprom336
  %r338 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx337, i32 0, i32 0
  store double %314, ptr %r338, align 8
  %317 = load ptr, ptr %a.addr, align 8
  %318 = load i32, ptr %i__2, align 4
  %idxprom339 = sext i32 %318 to i64
  %arrayidx340 = getelementptr inbounds %struct.doublecomplex, ptr %317, i64 %idxprom339
  %i341 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx340, i32 0, i32 1
  %319 = load double, ptr %i341, align 8
  %320 = load ptr, ptr %work.addr, align 8
  %321 = load i32, ptr %i__1, align 4
  %idxprom342 = sext i32 %321 to i64
  %arrayidx343 = getelementptr inbounds %struct.doublecomplex, ptr %320, i64 %idxprom342
  %i344 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx343, i32 0, i32 1
  store double %319, ptr %i344, align 8
  %322 = load i32, ptr %i__, align 4
  %add345 = add nsw i32 %322, 1
  %323 = load i32, ptr %i__, align 4
  %324 = load i32, ptr %a_dim1, align 4
  %mul346 = mul nsw i32 %323, %324
  %add347 = add nsw i32 %add345, %mul346
  store i32 %add347, ptr %i__1, align 4
  %325 = load ptr, ptr %a.addr, align 8
  %326 = load i32, ptr %i__1, align 4
  %idxprom348 = sext i32 %326 to i64
  %arrayidx349 = getelementptr inbounds %struct.doublecomplex, ptr %325, i64 %idxprom348
  %r350 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx349, i32 0, i32 0
  store double 0.000000e+00, ptr %r350, align 8
  %327 = load ptr, ptr %a.addr, align 8
  %328 = load i32, ptr %i__1, align 4
  %idxprom351 = sext i32 %328 to i64
  %arrayidx352 = getelementptr inbounds %struct.doublecomplex, ptr %327, i64 %idxprom351
  %i353 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx352, i32 0, i32 1
  store double 0.000000e+00, ptr %i353, align 8
  %329 = load i32, ptr %i__, align 4
  %inc354 = add nsw i32 %329, 1
  store i32 %inc354, ptr %i__, align 4
  br label %if.end362

if.else355:                                       ; preds = %land.lhs.true325, %while.body323
  %330 = load i32, ptr %i__, align 4
  store i32 %330, ptr %i__1, align 4
  %331 = load ptr, ptr %work.addr, align 8
  %332 = load i32, ptr %i__1, align 4
  %idxprom356 = sext i32 %332 to i64
  %arrayidx357 = getelementptr inbounds %struct.doublecomplex, ptr %331, i64 %idxprom356
  %r358 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx357, i32 0, i32 0
  store double 0.000000e+00, ptr %r358, align 8
  %333 = load ptr, ptr %work.addr, align 8
  %334 = load i32, ptr %i__1, align 4
  %idxprom359 = sext i32 %334 to i64
  %arrayidx360 = getelementptr inbounds %struct.doublecomplex, ptr %333, i64 %idxprom359
  %i361 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx360, i32 0, i32 1
  store double 0.000000e+00, ptr %i361, align 8
  br label %if.end362

if.end362:                                        ; preds = %if.else355, %if.then329
  %335 = load i32, ptr %i__, align 4
  %inc363 = add nsw i32 %335, 1
  store i32 %inc363, ptr %i__, align 4
  br label %while.cond321, !llvm.loop !14

while.end364:                                     ; preds = %while.cond321
  store i32 1, ptr %i__, align 4
  br label %while.cond365

while.cond365:                                    ; preds = %if.end473, %while.end364
  %336 = load i32, ptr %i__, align 4
  %337 = load ptr, ptr %n.addr, align 8
  %338 = load i32, ptr %337, align 4
  %cmp366 = icmp sle i32 %336, %338
  br i1 %cmp366, label %while.body367, label %while.end475

while.body367:                                    ; preds = %while.cond365
  %339 = load ptr, ptr %ipiv.addr, align 8
  %340 = load i32, ptr %i__, align 4
  %idxprom368 = sext i32 %340 to i64
  %arrayidx369 = getelementptr inbounds i32, ptr %339, i64 %idxprom368
  %341 = load i32, ptr %arrayidx369, align 4
  %cmp370 = icmp sgt i32 %341, 0
  br i1 %cmp370, label %if.then371, label %if.else420

if.then371:                                       ; preds = %while.body367
  %342 = load ptr, ptr %ipiv.addr, align 8
  %343 = load i32, ptr %i__, align 4
  %idxprom372 = sext i32 %343 to i64
  %arrayidx373 = getelementptr inbounds i32, ptr %342, i64 %idxprom372
  %344 = load i32, ptr %arrayidx373, align 4
  store i32 %344, ptr %ip, align 4
  %345 = load i32, ptr %i__, align 4
  %cmp374 = icmp sgt i32 %345, 1
  br i1 %cmp374, label %if.then375, label %if.end419

if.then375:                                       ; preds = %if.then371
  %346 = load i32, ptr %i__, align 4
  %sub376 = sub nsw i32 %346, 1
  store i32 %sub376, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond377

for.cond377:                                      ; preds = %for.inc416, %if.then375
  %347 = load i32, ptr %j, align 4
  %348 = load i32, ptr %i__1, align 4
  %cmp378 = icmp sle i32 %347, %348
  br i1 %cmp378, label %for.body379, label %for.end418

for.body379:                                      ; preds = %for.cond377
  %349 = load i32, ptr %ip, align 4
  %350 = load i32, ptr %j, align 4
  %351 = load i32, ptr %a_dim1, align 4
  %mul380 = mul nsw i32 %350, %351
  %add381 = add nsw i32 %349, %mul380
  store i32 %add381, ptr %i__2, align 4
  %352 = load ptr, ptr %a.addr, align 8
  %353 = load i32, ptr %i__2, align 4
  %idxprom382 = sext i32 %353 to i64
  %arrayidx383 = getelementptr inbounds %struct.doublecomplex, ptr %352, i64 %idxprom382
  %r384 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx383, i32 0, i32 0
  %354 = load double, ptr %r384, align 8
  %r385 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %354, ptr %r385, align 8
  %355 = load ptr, ptr %a.addr, align 8
  %356 = load i32, ptr %i__2, align 4
  %idxprom386 = sext i32 %356 to i64
  %arrayidx387 = getelementptr inbounds %struct.doublecomplex, ptr %355, i64 %idxprom386
  %i388 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx387, i32 0, i32 1
  %357 = load double, ptr %i388, align 8
  %i389 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %357, ptr %i389, align 8
  %358 = load i32, ptr %ip, align 4
  %359 = load i32, ptr %j, align 4
  %360 = load i32, ptr %a_dim1, align 4
  %mul390 = mul nsw i32 %359, %360
  %add391 = add nsw i32 %358, %mul390
  store i32 %add391, ptr %i__2, align 4
  %361 = load i32, ptr %i__, align 4
  %362 = load i32, ptr %j, align 4
  %363 = load i32, ptr %a_dim1, align 4
  %mul392 = mul nsw i32 %362, %363
  %add393 = add nsw i32 %361, %mul392
  store i32 %add393, ptr %i__3, align 4
  %364 = load ptr, ptr %a.addr, align 8
  %365 = load i32, ptr %i__3, align 4
  %idxprom394 = sext i32 %365 to i64
  %arrayidx395 = getelementptr inbounds %struct.doublecomplex, ptr %364, i64 %idxprom394
  %r396 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx395, i32 0, i32 0
  %366 = load double, ptr %r396, align 8
  %367 = load ptr, ptr %a.addr, align 8
  %368 = load i32, ptr %i__2, align 4
  %idxprom397 = sext i32 %368 to i64
  %arrayidx398 = getelementptr inbounds %struct.doublecomplex, ptr %367, i64 %idxprom397
  %r399 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx398, i32 0, i32 0
  store double %366, ptr %r399, align 8
  %369 = load ptr, ptr %a.addr, align 8
  %370 = load i32, ptr %i__3, align 4
  %idxprom400 = sext i32 %370 to i64
  %arrayidx401 = getelementptr inbounds %struct.doublecomplex, ptr %369, i64 %idxprom400
  %i402 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx401, i32 0, i32 1
  %371 = load double, ptr %i402, align 8
  %372 = load ptr, ptr %a.addr, align 8
  %373 = load i32, ptr %i__2, align 4
  %idxprom403 = sext i32 %373 to i64
  %arrayidx404 = getelementptr inbounds %struct.doublecomplex, ptr %372, i64 %idxprom403
  %i405 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx404, i32 0, i32 1
  store double %371, ptr %i405, align 8
  %374 = load i32, ptr %i__, align 4
  %375 = load i32, ptr %j, align 4
  %376 = load i32, ptr %a_dim1, align 4
  %mul406 = mul nsw i32 %375, %376
  %add407 = add nsw i32 %374, %mul406
  store i32 %add407, ptr %i__2, align 4
  %r408 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %377 = load double, ptr %r408, align 8
  %378 = load ptr, ptr %a.addr, align 8
  %379 = load i32, ptr %i__2, align 4
  %idxprom409 = sext i32 %379 to i64
  %arrayidx410 = getelementptr inbounds %struct.doublecomplex, ptr %378, i64 %idxprom409
  %r411 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx410, i32 0, i32 0
  store double %377, ptr %r411, align 8
  %i412 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %380 = load double, ptr %i412, align 8
  %381 = load ptr, ptr %a.addr, align 8
  %382 = load i32, ptr %i__2, align 4
  %idxprom413 = sext i32 %382 to i64
  %arrayidx414 = getelementptr inbounds %struct.doublecomplex, ptr %381, i64 %idxprom413
  %i415 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx414, i32 0, i32 1
  store double %380, ptr %i415, align 8
  br label %for.inc416

for.inc416:                                       ; preds = %for.body379
  %383 = load i32, ptr %j, align 4
  %inc417 = add nsw i32 %383, 1
  store i32 %inc417, ptr %j, align 4
  br label %for.cond377, !llvm.loop !15

for.end418:                                       ; preds = %for.cond377
  br label %if.end419

if.end419:                                        ; preds = %for.end418, %if.then371
  br label %if.end473

if.else420:                                       ; preds = %while.body367
  %384 = load ptr, ptr %ipiv.addr, align 8
  %385 = load i32, ptr %i__, align 4
  %idxprom421 = sext i32 %385 to i64
  %arrayidx422 = getelementptr inbounds i32, ptr %384, i64 %idxprom421
  %386 = load i32, ptr %arrayidx422, align 4
  %sub423 = sub nsw i32 0, %386
  store i32 %sub423, ptr %ip, align 4
  %387 = load i32, ptr %i__, align 4
  %cmp424 = icmp sgt i32 %387, 1
  br i1 %cmp424, label %if.then425, label %if.end471

if.then425:                                       ; preds = %if.else420
  %388 = load i32, ptr %i__, align 4
  %sub426 = sub nsw i32 %388, 1
  store i32 %sub426, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond427

for.cond427:                                      ; preds = %for.inc468, %if.then425
  %389 = load i32, ptr %j, align 4
  %390 = load i32, ptr %i__1, align 4
  %cmp428 = icmp sle i32 %389, %390
  br i1 %cmp428, label %for.body429, label %for.end470

for.body429:                                      ; preds = %for.cond427
  %391 = load i32, ptr %ip, align 4
  %392 = load i32, ptr %j, align 4
  %393 = load i32, ptr %a_dim1, align 4
  %mul430 = mul nsw i32 %392, %393
  %add431 = add nsw i32 %391, %mul430
  store i32 %add431, ptr %i__2, align 4
  %394 = load ptr, ptr %a.addr, align 8
  %395 = load i32, ptr %i__2, align 4
  %idxprom432 = sext i32 %395 to i64
  %arrayidx433 = getelementptr inbounds %struct.doublecomplex, ptr %394, i64 %idxprom432
  %r434 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx433, i32 0, i32 0
  %396 = load double, ptr %r434, align 8
  %r435 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %396, ptr %r435, align 8
  %397 = load ptr, ptr %a.addr, align 8
  %398 = load i32, ptr %i__2, align 4
  %idxprom436 = sext i32 %398 to i64
  %arrayidx437 = getelementptr inbounds %struct.doublecomplex, ptr %397, i64 %idxprom436
  %i438 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx437, i32 0, i32 1
  %399 = load double, ptr %i438, align 8
  %i439 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %399, ptr %i439, align 8
  %400 = load i32, ptr %ip, align 4
  %401 = load i32, ptr %j, align 4
  %402 = load i32, ptr %a_dim1, align 4
  %mul440 = mul nsw i32 %401, %402
  %add441 = add nsw i32 %400, %mul440
  store i32 %add441, ptr %i__2, align 4
  %403 = load i32, ptr %i__, align 4
  %add442 = add nsw i32 %403, 1
  %404 = load i32, ptr %j, align 4
  %405 = load i32, ptr %a_dim1, align 4
  %mul443 = mul nsw i32 %404, %405
  %add444 = add nsw i32 %add442, %mul443
  store i32 %add444, ptr %i__3, align 4
  %406 = load ptr, ptr %a.addr, align 8
  %407 = load i32, ptr %i__3, align 4
  %idxprom445 = sext i32 %407 to i64
  %arrayidx446 = getelementptr inbounds %struct.doublecomplex, ptr %406, i64 %idxprom445
  %r447 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx446, i32 0, i32 0
  %408 = load double, ptr %r447, align 8
  %409 = load ptr, ptr %a.addr, align 8
  %410 = load i32, ptr %i__2, align 4
  %idxprom448 = sext i32 %410 to i64
  %arrayidx449 = getelementptr inbounds %struct.doublecomplex, ptr %409, i64 %idxprom448
  %r450 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx449, i32 0, i32 0
  store double %408, ptr %r450, align 8
  %411 = load ptr, ptr %a.addr, align 8
  %412 = load i32, ptr %i__3, align 4
  %idxprom451 = sext i32 %412 to i64
  %arrayidx452 = getelementptr inbounds %struct.doublecomplex, ptr %411, i64 %idxprom451
  %i453 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx452, i32 0, i32 1
  %413 = load double, ptr %i453, align 8
  %414 = load ptr, ptr %a.addr, align 8
  %415 = load i32, ptr %i__2, align 4
  %idxprom454 = sext i32 %415 to i64
  %arrayidx455 = getelementptr inbounds %struct.doublecomplex, ptr %414, i64 %idxprom454
  %i456 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx455, i32 0, i32 1
  store double %413, ptr %i456, align 8
  %416 = load i32, ptr %i__, align 4
  %add457 = add nsw i32 %416, 1
  %417 = load i32, ptr %j, align 4
  %418 = load i32, ptr %a_dim1, align 4
  %mul458 = mul nsw i32 %417, %418
  %add459 = add nsw i32 %add457, %mul458
  store i32 %add459, ptr %i__2, align 4
  %r460 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %419 = load double, ptr %r460, align 8
  %420 = load ptr, ptr %a.addr, align 8
  %421 = load i32, ptr %i__2, align 4
  %idxprom461 = sext i32 %421 to i64
  %arrayidx462 = getelementptr inbounds %struct.doublecomplex, ptr %420, i64 %idxprom461
  %r463 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx462, i32 0, i32 0
  store double %419, ptr %r463, align 8
  %i464 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %422 = load double, ptr %i464, align 8
  %423 = load ptr, ptr %a.addr, align 8
  %424 = load i32, ptr %i__2, align 4
  %idxprom465 = sext i32 %424 to i64
  %arrayidx466 = getelementptr inbounds %struct.doublecomplex, ptr %423, i64 %idxprom465
  %i467 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx466, i32 0, i32 1
  store double %422, ptr %i467, align 8
  br label %for.inc468

for.inc468:                                       ; preds = %for.body429
  %425 = load i32, ptr %j, align 4
  %inc469 = add nsw i32 %425, 1
  store i32 %inc469, ptr %j, align 4
  br label %for.cond427, !llvm.loop !16

for.end470:                                       ; preds = %for.cond427
  br label %if.end471

if.end471:                                        ; preds = %for.end470, %if.else420
  %426 = load i32, ptr %i__, align 4
  %inc472 = add nsw i32 %426, 1
  store i32 %inc472, ptr %i__, align 4
  br label %if.end473

if.end473:                                        ; preds = %if.end471, %if.end419
  %427 = load i32, ptr %i__, align 4
  %inc474 = add nsw i32 %427, 1
  store i32 %inc474, ptr %i__, align 4
  br label %while.cond365, !llvm.loop !17

while.end475:                                     ; preds = %while.cond365
  br label %if.end615

if.else476:                                       ; preds = %if.else312
  %428 = load ptr, ptr %n.addr, align 8
  %429 = load i32, ptr %428, align 4
  store i32 %429, ptr %i__, align 4
  br label %while.cond477

while.cond477:                                    ; preds = %if.end585, %if.else476
  %430 = load i32, ptr %i__, align 4
  %cmp478 = icmp sge i32 %430, 1
  br i1 %cmp478, label %while.body479, label %while.end587

while.body479:                                    ; preds = %while.cond477
  %431 = load ptr, ptr %ipiv.addr, align 8
  %432 = load i32, ptr %i__, align 4
  %idxprom480 = sext i32 %432 to i64
  %arrayidx481 = getelementptr inbounds i32, ptr %431, i64 %idxprom480
  %433 = load i32, ptr %arrayidx481, align 4
  %cmp482 = icmp sgt i32 %433, 0
  br i1 %cmp482, label %if.then483, label %if.else532

if.then483:                                       ; preds = %while.body479
  %434 = load ptr, ptr %ipiv.addr, align 8
  %435 = load i32, ptr %i__, align 4
  %idxprom484 = sext i32 %435 to i64
  %arrayidx485 = getelementptr inbounds i32, ptr %434, i64 %idxprom484
  %436 = load i32, ptr %arrayidx485, align 4
  store i32 %436, ptr %ip, align 4
  %437 = load i32, ptr %i__, align 4
  %cmp486 = icmp sgt i32 %437, 1
  br i1 %cmp486, label %if.then487, label %if.end531

if.then487:                                       ; preds = %if.then483
  %438 = load i32, ptr %i__, align 4
  %sub488 = sub nsw i32 %438, 1
  store i32 %sub488, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond489

for.cond489:                                      ; preds = %for.inc528, %if.then487
  %439 = load i32, ptr %j, align 4
  %440 = load i32, ptr %i__1, align 4
  %cmp490 = icmp sle i32 %439, %440
  br i1 %cmp490, label %for.body491, label %for.end530

for.body491:                                      ; preds = %for.cond489
  %441 = load i32, ptr %i__, align 4
  %442 = load i32, ptr %j, align 4
  %443 = load i32, ptr %a_dim1, align 4
  %mul492 = mul nsw i32 %442, %443
  %add493 = add nsw i32 %441, %mul492
  store i32 %add493, ptr %i__2, align 4
  %444 = load ptr, ptr %a.addr, align 8
  %445 = load i32, ptr %i__2, align 4
  %idxprom494 = sext i32 %445 to i64
  %arrayidx495 = getelementptr inbounds %struct.doublecomplex, ptr %444, i64 %idxprom494
  %r496 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx495, i32 0, i32 0
  %446 = load double, ptr %r496, align 8
  %r497 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %446, ptr %r497, align 8
  %447 = load ptr, ptr %a.addr, align 8
  %448 = load i32, ptr %i__2, align 4
  %idxprom498 = sext i32 %448 to i64
  %arrayidx499 = getelementptr inbounds %struct.doublecomplex, ptr %447, i64 %idxprom498
  %i500 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx499, i32 0, i32 1
  %449 = load double, ptr %i500, align 8
  %i501 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %449, ptr %i501, align 8
  %450 = load i32, ptr %i__, align 4
  %451 = load i32, ptr %j, align 4
  %452 = load i32, ptr %a_dim1, align 4
  %mul502 = mul nsw i32 %451, %452
  %add503 = add nsw i32 %450, %mul502
  store i32 %add503, ptr %i__2, align 4
  %453 = load i32, ptr %ip, align 4
  %454 = load i32, ptr %j, align 4
  %455 = load i32, ptr %a_dim1, align 4
  %mul504 = mul nsw i32 %454, %455
  %add505 = add nsw i32 %453, %mul504
  store i32 %add505, ptr %i__3, align 4
  %456 = load ptr, ptr %a.addr, align 8
  %457 = load i32, ptr %i__3, align 4
  %idxprom506 = sext i32 %457 to i64
  %arrayidx507 = getelementptr inbounds %struct.doublecomplex, ptr %456, i64 %idxprom506
  %r508 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx507, i32 0, i32 0
  %458 = load double, ptr %r508, align 8
  %459 = load ptr, ptr %a.addr, align 8
  %460 = load i32, ptr %i__2, align 4
  %idxprom509 = sext i32 %460 to i64
  %arrayidx510 = getelementptr inbounds %struct.doublecomplex, ptr %459, i64 %idxprom509
  %r511 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx510, i32 0, i32 0
  store double %458, ptr %r511, align 8
  %461 = load ptr, ptr %a.addr, align 8
  %462 = load i32, ptr %i__3, align 4
  %idxprom512 = sext i32 %462 to i64
  %arrayidx513 = getelementptr inbounds %struct.doublecomplex, ptr %461, i64 %idxprom512
  %i514 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx513, i32 0, i32 1
  %463 = load double, ptr %i514, align 8
  %464 = load ptr, ptr %a.addr, align 8
  %465 = load i32, ptr %i__2, align 4
  %idxprom515 = sext i32 %465 to i64
  %arrayidx516 = getelementptr inbounds %struct.doublecomplex, ptr %464, i64 %idxprom515
  %i517 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx516, i32 0, i32 1
  store double %463, ptr %i517, align 8
  %466 = load i32, ptr %ip, align 4
  %467 = load i32, ptr %j, align 4
  %468 = load i32, ptr %a_dim1, align 4
  %mul518 = mul nsw i32 %467, %468
  %add519 = add nsw i32 %466, %mul518
  store i32 %add519, ptr %i__2, align 4
  %r520 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %469 = load double, ptr %r520, align 8
  %470 = load ptr, ptr %a.addr, align 8
  %471 = load i32, ptr %i__2, align 4
  %idxprom521 = sext i32 %471 to i64
  %arrayidx522 = getelementptr inbounds %struct.doublecomplex, ptr %470, i64 %idxprom521
  %r523 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx522, i32 0, i32 0
  store double %469, ptr %r523, align 8
  %i524 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %472 = load double, ptr %i524, align 8
  %473 = load ptr, ptr %a.addr, align 8
  %474 = load i32, ptr %i__2, align 4
  %idxprom525 = sext i32 %474 to i64
  %arrayidx526 = getelementptr inbounds %struct.doublecomplex, ptr %473, i64 %idxprom525
  %i527 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx526, i32 0, i32 1
  store double %472, ptr %i527, align 8
  br label %for.inc528

for.inc528:                                       ; preds = %for.body491
  %475 = load i32, ptr %j, align 4
  %inc529 = add nsw i32 %475, 1
  store i32 %inc529, ptr %j, align 4
  br label %for.cond489, !llvm.loop !18

for.end530:                                       ; preds = %for.cond489
  br label %if.end531

if.end531:                                        ; preds = %for.end530, %if.then483
  br label %if.end585

if.else532:                                       ; preds = %while.body479
  %476 = load ptr, ptr %ipiv.addr, align 8
  %477 = load i32, ptr %i__, align 4
  %idxprom533 = sext i32 %477 to i64
  %arrayidx534 = getelementptr inbounds i32, ptr %476, i64 %idxprom533
  %478 = load i32, ptr %arrayidx534, align 4
  %sub535 = sub nsw i32 0, %478
  store i32 %sub535, ptr %ip, align 4
  %479 = load i32, ptr %i__, align 4
  %dec536 = add nsw i32 %479, -1
  store i32 %dec536, ptr %i__, align 4
  %480 = load i32, ptr %i__, align 4
  %cmp537 = icmp sgt i32 %480, 1
  br i1 %cmp537, label %if.then538, label %if.end584

if.then538:                                       ; preds = %if.else532
  %481 = load i32, ptr %i__, align 4
  %sub539 = sub nsw i32 %481, 1
  store i32 %sub539, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond540

for.cond540:                                      ; preds = %for.inc581, %if.then538
  %482 = load i32, ptr %j, align 4
  %483 = load i32, ptr %i__1, align 4
  %cmp541 = icmp sle i32 %482, %483
  br i1 %cmp541, label %for.body542, label %for.end583

for.body542:                                      ; preds = %for.cond540
  %484 = load i32, ptr %i__, align 4
  %add543 = add nsw i32 %484, 1
  %485 = load i32, ptr %j, align 4
  %486 = load i32, ptr %a_dim1, align 4
  %mul544 = mul nsw i32 %485, %486
  %add545 = add nsw i32 %add543, %mul544
  store i32 %add545, ptr %i__2, align 4
  %487 = load ptr, ptr %a.addr, align 8
  %488 = load i32, ptr %i__2, align 4
  %idxprom546 = sext i32 %488 to i64
  %arrayidx547 = getelementptr inbounds %struct.doublecomplex, ptr %487, i64 %idxprom546
  %r548 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx547, i32 0, i32 0
  %489 = load double, ptr %r548, align 8
  %r549 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  store double %489, ptr %r549, align 8
  %490 = load ptr, ptr %a.addr, align 8
  %491 = load i32, ptr %i__2, align 4
  %idxprom550 = sext i32 %491 to i64
  %arrayidx551 = getelementptr inbounds %struct.doublecomplex, ptr %490, i64 %idxprom550
  %i552 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx551, i32 0, i32 1
  %492 = load double, ptr %i552, align 8
  %i553 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  store double %492, ptr %i553, align 8
  %493 = load i32, ptr %i__, align 4
  %add554 = add nsw i32 %493, 1
  %494 = load i32, ptr %j, align 4
  %495 = load i32, ptr %a_dim1, align 4
  %mul555 = mul nsw i32 %494, %495
  %add556 = add nsw i32 %add554, %mul555
  store i32 %add556, ptr %i__2, align 4
  %496 = load i32, ptr %ip, align 4
  %497 = load i32, ptr %j, align 4
  %498 = load i32, ptr %a_dim1, align 4
  %mul557 = mul nsw i32 %497, %498
  %add558 = add nsw i32 %496, %mul557
  store i32 %add558, ptr %i__3, align 4
  %499 = load ptr, ptr %a.addr, align 8
  %500 = load i32, ptr %i__3, align 4
  %idxprom559 = sext i32 %500 to i64
  %arrayidx560 = getelementptr inbounds %struct.doublecomplex, ptr %499, i64 %idxprom559
  %r561 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx560, i32 0, i32 0
  %501 = load double, ptr %r561, align 8
  %502 = load ptr, ptr %a.addr, align 8
  %503 = load i32, ptr %i__2, align 4
  %idxprom562 = sext i32 %503 to i64
  %arrayidx563 = getelementptr inbounds %struct.doublecomplex, ptr %502, i64 %idxprom562
  %r564 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx563, i32 0, i32 0
  store double %501, ptr %r564, align 8
  %504 = load ptr, ptr %a.addr, align 8
  %505 = load i32, ptr %i__3, align 4
  %idxprom565 = sext i32 %505 to i64
  %arrayidx566 = getelementptr inbounds %struct.doublecomplex, ptr %504, i64 %idxprom565
  %i567 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx566, i32 0, i32 1
  %506 = load double, ptr %i567, align 8
  %507 = load ptr, ptr %a.addr, align 8
  %508 = load i32, ptr %i__2, align 4
  %idxprom568 = sext i32 %508 to i64
  %arrayidx569 = getelementptr inbounds %struct.doublecomplex, ptr %507, i64 %idxprom568
  %i570 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx569, i32 0, i32 1
  store double %506, ptr %i570, align 8
  %509 = load i32, ptr %ip, align 4
  %510 = load i32, ptr %j, align 4
  %511 = load i32, ptr %a_dim1, align 4
  %mul571 = mul nsw i32 %510, %511
  %add572 = add nsw i32 %509, %mul571
  store i32 %add572, ptr %i__2, align 4
  %r573 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 0
  %512 = load double, ptr %r573, align 8
  %513 = load ptr, ptr %a.addr, align 8
  %514 = load i32, ptr %i__2, align 4
  %idxprom574 = sext i32 %514 to i64
  %arrayidx575 = getelementptr inbounds %struct.doublecomplex, ptr %513, i64 %idxprom574
  %r576 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx575, i32 0, i32 0
  store double %512, ptr %r576, align 8
  %i577 = getelementptr inbounds %struct.doublecomplex, ptr %temp, i32 0, i32 1
  %515 = load double, ptr %i577, align 8
  %516 = load ptr, ptr %a.addr, align 8
  %517 = load i32, ptr %i__2, align 4
  %idxprom578 = sext i32 %517 to i64
  %arrayidx579 = getelementptr inbounds %struct.doublecomplex, ptr %516, i64 %idxprom578
  %i580 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx579, i32 0, i32 1
  store double %515, ptr %i580, align 8
  br label %for.inc581

for.inc581:                                       ; preds = %for.body542
  %518 = load i32, ptr %j, align 4
  %inc582 = add nsw i32 %518, 1
  store i32 %inc582, ptr %j, align 4
  br label %for.cond540, !llvm.loop !19

for.end583:                                       ; preds = %for.cond540
  br label %if.end584

if.end584:                                        ; preds = %for.end583, %if.else532
  br label %if.end585

if.end585:                                        ; preds = %if.end584, %if.end531
  %519 = load i32, ptr %i__, align 4
  %dec586 = add nsw i32 %519, -1
  store i32 %dec586, ptr %i__, align 4
  br label %while.cond477, !llvm.loop !20

while.end587:                                     ; preds = %while.cond477
  store i32 1, ptr %i__, align 4
  br label %while.cond588

while.cond588:                                    ; preds = %if.end612, %while.end587
  %520 = load i32, ptr %i__, align 4
  %521 = load ptr, ptr %n.addr, align 8
  %522 = load i32, ptr %521, align 4
  %sub589 = sub nsw i32 %522, 1
  %cmp590 = icmp sle i32 %520, %sub589
  br i1 %cmp590, label %while.body591, label %while.end614

while.body591:                                    ; preds = %while.cond588
  %523 = load ptr, ptr %ipiv.addr, align 8
  %524 = load i32, ptr %i__, align 4
  %idxprom592 = sext i32 %524 to i64
  %arrayidx593 = getelementptr inbounds i32, ptr %523, i64 %idxprom592
  %525 = load i32, ptr %arrayidx593, align 4
  %cmp594 = icmp slt i32 %525, 0
  br i1 %cmp594, label %if.then595, label %if.end612

if.then595:                                       ; preds = %while.body591
  %526 = load i32, ptr %i__, align 4
  %add596 = add nsw i32 %526, 1
  %527 = load i32, ptr %i__, align 4
  %528 = load i32, ptr %a_dim1, align 4
  %mul597 = mul nsw i32 %527, %528
  %add598 = add nsw i32 %add596, %mul597
  store i32 %add598, ptr %i__1, align 4
  %529 = load i32, ptr %i__, align 4
  store i32 %529, ptr %i__2, align 4
  %530 = load ptr, ptr %work.addr, align 8
  %531 = load i32, ptr %i__2, align 4
  %idxprom599 = sext i32 %531 to i64
  %arrayidx600 = getelementptr inbounds %struct.doublecomplex, ptr %530, i64 %idxprom599
  %r601 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx600, i32 0, i32 0
  %532 = load double, ptr %r601, align 8
  %533 = load ptr, ptr %a.addr, align 8
  %534 = load i32, ptr %i__1, align 4
  %idxprom602 = sext i32 %534 to i64
  %arrayidx603 = getelementptr inbounds %struct.doublecomplex, ptr %533, i64 %idxprom602
  %r604 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx603, i32 0, i32 0
  store double %532, ptr %r604, align 8
  %535 = load ptr, ptr %work.addr, align 8
  %536 = load i32, ptr %i__2, align 4
  %idxprom605 = sext i32 %536 to i64
  %arrayidx606 = getelementptr inbounds %struct.doublecomplex, ptr %535, i64 %idxprom605
  %i607 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx606, i32 0, i32 1
  %537 = load double, ptr %i607, align 8
  %538 = load ptr, ptr %a.addr, align 8
  %539 = load i32, ptr %i__1, align 4
  %idxprom608 = sext i32 %539 to i64
  %arrayidx609 = getelementptr inbounds %struct.doublecomplex, ptr %538, i64 %idxprom608
  %i610 = getelementptr inbounds %struct.doublecomplex, ptr %arrayidx609, i32 0, i32 1
  store double %537, ptr %i610, align 8
  %540 = load i32, ptr %i__, align 4
  %inc611 = add nsw i32 %540, 1
  store i32 %inc611, ptr %i__, align 4
  br label %if.end612

if.end612:                                        ; preds = %if.then595, %while.body591
  %541 = load i32, ptr %i__, align 4
  %inc613 = add nsw i32 %541, 1
  store i32 %inc613, ptr %i__, align 4
  br label %while.cond588, !llvm.loop !21

while.end614:                                     ; preds = %while.cond588
  br label %if.end615

if.end615:                                        ; preds = %while.end614, %while.end475
  br label %if.end616

if.end616:                                        ; preds = %if.end615, %if.end311
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end616, %if.then24, %if.then20
  %542 = load i32, ptr %retval, align 4
  ret i32 %542
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
