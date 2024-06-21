; ModuleID = 'samples/901.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/csytri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CSYTRI\00", align 1
@c_b1 = internal global %struct.complex { float 1.000000e+00, float 0.000000e+00 }, align 4
@c__1 = internal global i32 1, align 4
@c_b2 = internal global %struct.complex zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @csytri_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %work, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
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
  %q__1 = alloca %struct.complex, align 4
  %q__2 = alloca %struct.complex, align 4
  %q__3 = alloca %struct.complex, align 4
  %d__ = alloca %struct.complex, align 4
  %k = alloca i32, align 4
  %t = alloca %struct.complex, align 4
  %ak = alloca %struct.complex, align 4
  %kp = alloca i32, align 4
  %akp1 = alloca %struct.complex, align 4
  %temp = alloca %struct.complex, align 4
  %akkp1 = alloca %struct.complex, align 4
  %kstep = alloca i32, align 4
  %upper = alloca i32, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
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
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %6 = load ptr, ptr %work.addr, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.complex, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %work.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %uplo.addr, align 8
  %call = call i32 @lsame_(ptr noundef %8, ptr noundef @.str)
  store i32 %call, ptr %upper, align 4
  %9 = load i32, ptr %upper, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %uplo.addr, align 8
  %call2 = call i32 @lsame_(ptr noundef %10, ptr noundef @.str.1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %11, align 4
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %n.addr, align 8
  %13 = load i32, ptr %12, align 4
  %cmp = icmp slt i32 %13, 0
  br i1 %cmp, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %14 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %14, align 4
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %15 = load ptr, ptr %lda.addr, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %n.addr, align 8
  %18 = load i32, ptr %17, align 4
  %cmp6 = icmp sge i32 1, %18
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else5
  br label %cond.end

cond.false:                                       ; preds = %if.else5
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %20, %cond.false ]
  %cmp7 = icmp slt i32 %16, %cond
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %cond.end
  %21 = load ptr, ptr %info.addr, align 8
  store i32 -4, ptr %21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %cond.end
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then
  %22 = load ptr, ptr %info.addr, align 8
  %23 = load i32, ptr %22, align 4
  %cmp11 = icmp ne i32 %23, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %24 = load ptr, ptr %info.addr, align 8
  %25 = load i32, ptr %24, align 4
  %sub = sub nsw i32 0, %25
  store i32 %sub, ptr %i__1, align 4
  %call13 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef %i__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  %26 = load ptr, ptr %n.addr, align 8
  %27 = load i32, ptr %26, align 4
  %cmp15 = icmp eq i32 %27, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end14
  %28 = load i32, ptr %upper, align 4
  %tobool18 = icmp ne i32 %28, 0
  br i1 %tobool18, label %if.then19, label %if.else33

if.then19:                                        ; preds = %if.end17
  %29 = load ptr, ptr %n.addr, align 8
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %info.addr, align 8
  store i32 %30, ptr %31, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then19
  %32 = load ptr, ptr %info.addr, align 8
  %33 = load i32, ptr %32, align 4
  %cmp20 = icmp sge i32 %33, 1
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %info.addr, align 8
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %info.addr, align 8
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %37, %38
  %add21 = add nsw i32 %35, %mul
  store i32 %add21, ptr %i__1, align 4
  %39 = load ptr, ptr %ipiv.addr, align 8
  %40 = load ptr, ptr %info.addr, align 8
  %41 = load i32, ptr %40, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds i32, ptr %39, i64 %idxprom
  %42 = load i32, ptr %arrayidx, align 4
  %cmp22 = icmp sgt i32 %42, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end32

land.lhs.true23:                                  ; preds = %for.body
  %43 = load ptr, ptr %a.addr, align 8
  %44 = load i32, ptr %i__1, align 4
  %idxprom24 = sext i32 %44 to i64
  %arrayidx25 = getelementptr inbounds %struct.complex, ptr %43, i64 %idxprom24
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx25, i32 0, i32 0
  %45 = load float, ptr %r, align 4
  %cmp26 = fcmp oeq float %45, 0.000000e+00
  br i1 %cmp26, label %land.lhs.true27, label %if.end32

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %46 = load ptr, ptr %a.addr, align 8
  %47 = load i32, ptr %i__1, align 4
  %idxprom28 = sext i32 %47 to i64
  %arrayidx29 = getelementptr inbounds %struct.complex, ptr %46, i64 %idxprom28
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx29, i32 0, i32 1
  %48 = load float, ptr %i, align 4
  %cmp30 = fcmp oeq float %48, 0.000000e+00
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true27
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true27, %land.lhs.true23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %49 = load ptr, ptr %info.addr, align 8
  %50 = load i32, ptr %49, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, ptr %49, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end56

if.else33:                                        ; preds = %if.end17
  %51 = load ptr, ptr %n.addr, align 8
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %i__1, align 4
  %53 = load ptr, ptr %info.addr, align 8
  store i32 1, ptr %53, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc54, %if.else33
  %54 = load ptr, ptr %info.addr, align 8
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %i__1, align 4
  %cmp35 = icmp sle i32 %55, %56
  br i1 %cmp35, label %for.body36, label %for.end55

for.body36:                                       ; preds = %for.cond34
  %57 = load ptr, ptr %info.addr, align 8
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %info.addr, align 8
  %60 = load i32, ptr %59, align 4
  %61 = load i32, ptr %a_dim1, align 4
  %mul37 = mul nsw i32 %60, %61
  %add38 = add nsw i32 %58, %mul37
  store i32 %add38, ptr %i__2, align 4
  %62 = load ptr, ptr %ipiv.addr, align 8
  %63 = load ptr, ptr %info.addr, align 8
  %64 = load i32, ptr %63, align 4
  %idxprom39 = sext i32 %64 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %62, i64 %idxprom39
  %65 = load i32, ptr %arrayidx40, align 4
  %cmp41 = icmp sgt i32 %65, 0
  br i1 %cmp41, label %land.lhs.true42, label %if.end53

land.lhs.true42:                                  ; preds = %for.body36
  %66 = load ptr, ptr %a.addr, align 8
  %67 = load i32, ptr %i__2, align 4
  %idxprom43 = sext i32 %67 to i64
  %arrayidx44 = getelementptr inbounds %struct.complex, ptr %66, i64 %idxprom43
  %r45 = getelementptr inbounds %struct.complex, ptr %arrayidx44, i32 0, i32 0
  %68 = load float, ptr %r45, align 4
  %cmp46 = fcmp oeq float %68, 0.000000e+00
  br i1 %cmp46, label %land.lhs.true47, label %if.end53

land.lhs.true47:                                  ; preds = %land.lhs.true42
  %69 = load ptr, ptr %a.addr, align 8
  %70 = load i32, ptr %i__2, align 4
  %idxprom48 = sext i32 %70 to i64
  %arrayidx49 = getelementptr inbounds %struct.complex, ptr %69, i64 %idxprom48
  %i50 = getelementptr inbounds %struct.complex, ptr %arrayidx49, i32 0, i32 1
  %71 = load float, ptr %i50, align 4
  %cmp51 = fcmp oeq float %71, 0.000000e+00
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %land.lhs.true47
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %land.lhs.true47, %land.lhs.true42, %for.body36
  br label %for.inc54

for.inc54:                                        ; preds = %if.end53
  %72 = load ptr, ptr %info.addr, align 8
  %73 = load i32, ptr %72, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %72, align 4
  br label %for.cond34, !llvm.loop !7

for.end55:                                        ; preds = %for.cond34
  br label %if.end56

if.end56:                                         ; preds = %for.end55, %for.end
  %74 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %74, align 4
  %75 = load i32, ptr %upper, align 4
  %tobool57 = icmp ne i32 %75, 0
  br i1 %tobool57, label %if.then58, label %if.else504

if.then58:                                        ; preds = %if.end56
  store i32 1, ptr %k, align 4
  br label %L30

L30:                                              ; preds = %if.end502, %if.then58
  %76 = load i32, ptr %k, align 4
  %77 = load ptr, ptr %n.addr, align 8
  %78 = load i32, ptr %77, align 4
  %cmp59 = icmp sgt i32 %76, %78
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %L30
  br label %L40

if.end61:                                         ; preds = %L30
  %79 = load ptr, ptr %ipiv.addr, align 8
  %80 = load i32, ptr %k, align 4
  %idxprom62 = sext i32 %80 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %79, i64 %idxprom62
  %81 = load i32, ptr %arrayidx63, align 4
  %cmp64 = icmp sgt i32 %81, 0
  br i1 %cmp64, label %if.then65, label %if.else131

if.then65:                                        ; preds = %if.end61
  %82 = load i32, ptr %k, align 4
  %83 = load i32, ptr %k, align 4
  %84 = load i32, ptr %a_dim1, align 4
  %mul66 = mul nsw i32 %83, %84
  %add67 = add nsw i32 %82, %mul66
  store i32 %add67, ptr %i__1, align 4
  %85 = load ptr, ptr %a.addr, align 8
  %86 = load i32, ptr %k, align 4
  %87 = load i32, ptr %k, align 4
  %88 = load i32, ptr %a_dim1, align 4
  %mul68 = mul nsw i32 %87, %88
  %add69 = add nsw i32 %86, %mul68
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds %struct.complex, ptr %85, i64 %idxprom70
  call void @c_div(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx71)
  %r72 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %89 = load float, ptr %r72, align 4
  %90 = load ptr, ptr %a.addr, align 8
  %91 = load i32, ptr %i__1, align 4
  %idxprom73 = sext i32 %91 to i64
  %arrayidx74 = getelementptr inbounds %struct.complex, ptr %90, i64 %idxprom73
  %r75 = getelementptr inbounds %struct.complex, ptr %arrayidx74, i32 0, i32 0
  store float %89, ptr %r75, align 4
  %i76 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %92 = load float, ptr %i76, align 4
  %93 = load ptr, ptr %a.addr, align 8
  %94 = load i32, ptr %i__1, align 4
  %idxprom77 = sext i32 %94 to i64
  %arrayidx78 = getelementptr inbounds %struct.complex, ptr %93, i64 %idxprom77
  %i79 = getelementptr inbounds %struct.complex, ptr %arrayidx78, i32 0, i32 1
  store float %92, ptr %i79, align 4
  %95 = load i32, ptr %k, align 4
  %cmp80 = icmp sgt i32 %95, 1
  br i1 %cmp80, label %if.then81, label %if.end130

if.then81:                                        ; preds = %if.then65
  %96 = load i32, ptr %k, align 4
  %sub82 = sub nsw i32 %96, 1
  store i32 %sub82, ptr %i__1, align 4
  %97 = load ptr, ptr %a.addr, align 8
  %98 = load i32, ptr %k, align 4
  %99 = load i32, ptr %a_dim1, align 4
  %mul83 = mul nsw i32 %98, %99
  %add84 = add nsw i32 %mul83, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds %struct.complex, ptr %97, i64 %idxprom85
  %100 = load ptr, ptr %work.addr, align 8
  %arrayidx87 = getelementptr inbounds %struct.complex, ptr %100, i64 1
  %call88 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx86, ptr noundef @c__1, ptr noundef %arrayidx87, ptr noundef @c__1)
  %101 = load i32, ptr %k, align 4
  %sub89 = sub nsw i32 %101, 1
  store i32 %sub89, ptr %i__1, align 4
  %r90 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r90, align 4
  %i91 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i91, align 4
  %102 = load ptr, ptr %uplo.addr, align 8
  %103 = load ptr, ptr %a.addr, align 8
  %104 = load i32, ptr %a_offset, align 4
  %idxprom92 = sext i32 %104 to i64
  %arrayidx93 = getelementptr inbounds %struct.complex, ptr %103, i64 %idxprom92
  %105 = load ptr, ptr %lda.addr, align 8
  %106 = load ptr, ptr %work.addr, align 8
  %arrayidx94 = getelementptr inbounds %struct.complex, ptr %106, i64 1
  %107 = load ptr, ptr %a.addr, align 8
  %108 = load i32, ptr %k, align 4
  %109 = load i32, ptr %a_dim1, align 4
  %mul95 = mul nsw i32 %108, %109
  %add96 = add nsw i32 %mul95, 1
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds %struct.complex, ptr %107, i64 %idxprom97
  %call99 = call i32 @csymv_(ptr noundef %102, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx93, ptr noundef %105, ptr noundef %arrayidx94, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx98, ptr noundef @c__1)
  %110 = load i32, ptr %k, align 4
  %111 = load i32, ptr %k, align 4
  %112 = load i32, ptr %a_dim1, align 4
  %mul100 = mul nsw i32 %111, %112
  %add101 = add nsw i32 %110, %mul100
  store i32 %add101, ptr %i__1, align 4
  %113 = load i32, ptr %k, align 4
  %114 = load i32, ptr %k, align 4
  %115 = load i32, ptr %a_dim1, align 4
  %mul102 = mul nsw i32 %114, %115
  %add103 = add nsw i32 %113, %mul102
  store i32 %add103, ptr %i__2, align 4
  %116 = load i32, ptr %k, align 4
  %sub104 = sub nsw i32 %116, 1
  store i32 %sub104, ptr %i__3, align 4
  %117 = load ptr, ptr %work.addr, align 8
  %arrayidx105 = getelementptr inbounds %struct.complex, ptr %117, i64 1
  %118 = load ptr, ptr %a.addr, align 8
  %119 = load i32, ptr %k, align 4
  %120 = load i32, ptr %a_dim1, align 4
  %mul106 = mul nsw i32 %119, %120
  %add107 = add nsw i32 %mul106, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds %struct.complex, ptr %118, i64 %idxprom108
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx105, ptr noundef @c__1, ptr noundef %arrayidx109, ptr noundef @c__1)
  %121 = load ptr, ptr %a.addr, align 8
  %122 = load i32, ptr %i__2, align 4
  %idxprom110 = sext i32 %122 to i64
  %arrayidx111 = getelementptr inbounds %struct.complex, ptr %121, i64 %idxprom110
  %r112 = getelementptr inbounds %struct.complex, ptr %arrayidx111, i32 0, i32 0
  %123 = load float, ptr %r112, align 4
  %r113 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %124 = load float, ptr %r113, align 4
  %sub114 = fsub float %123, %124
  %r115 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub114, ptr %r115, align 4
  %125 = load ptr, ptr %a.addr, align 8
  %126 = load i32, ptr %i__2, align 4
  %idxprom116 = sext i32 %126 to i64
  %arrayidx117 = getelementptr inbounds %struct.complex, ptr %125, i64 %idxprom116
  %i118 = getelementptr inbounds %struct.complex, ptr %arrayidx117, i32 0, i32 1
  %127 = load float, ptr %i118, align 4
  %i119 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %128 = load float, ptr %i119, align 4
  %sub120 = fsub float %127, %128
  %i121 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub120, ptr %i121, align 4
  %r122 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %129 = load float, ptr %r122, align 4
  %130 = load ptr, ptr %a.addr, align 8
  %131 = load i32, ptr %i__1, align 4
  %idxprom123 = sext i32 %131 to i64
  %arrayidx124 = getelementptr inbounds %struct.complex, ptr %130, i64 %idxprom123
  %r125 = getelementptr inbounds %struct.complex, ptr %arrayidx124, i32 0, i32 0
  store float %129, ptr %r125, align 4
  %i126 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %132 = load float, ptr %i126, align 4
  %133 = load ptr, ptr %a.addr, align 8
  %134 = load i32, ptr %i__1, align 4
  %idxprom127 = sext i32 %134 to i64
  %arrayidx128 = getelementptr inbounds %struct.complex, ptr %133, i64 %idxprom127
  %i129 = getelementptr inbounds %struct.complex, ptr %arrayidx128, i32 0, i32 1
  store float %132, ptr %i129, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then81, %if.then65
  store i32 1, ptr %kstep, align 4
  br label %if.end389

if.else131:                                       ; preds = %if.end61
  %135 = load i32, ptr %k, align 4
  %136 = load i32, ptr %k, align 4
  %add132 = add nsw i32 %136, 1
  %137 = load i32, ptr %a_dim1, align 4
  %mul133 = mul nsw i32 %add132, %137
  %add134 = add nsw i32 %135, %mul133
  store i32 %add134, ptr %i__1, align 4
  %138 = load ptr, ptr %a.addr, align 8
  %139 = load i32, ptr %i__1, align 4
  %idxprom135 = sext i32 %139 to i64
  %arrayidx136 = getelementptr inbounds %struct.complex, ptr %138, i64 %idxprom135
  %r137 = getelementptr inbounds %struct.complex, ptr %arrayidx136, i32 0, i32 0
  %140 = load float, ptr %r137, align 4
  %r138 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %140, ptr %r138, align 4
  %141 = load ptr, ptr %a.addr, align 8
  %142 = load i32, ptr %i__1, align 4
  %idxprom139 = sext i32 %142 to i64
  %arrayidx140 = getelementptr inbounds %struct.complex, ptr %141, i64 %idxprom139
  %i141 = getelementptr inbounds %struct.complex, ptr %arrayidx140, i32 0, i32 1
  %143 = load float, ptr %i141, align 4
  %i142 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %143, ptr %i142, align 4
  %144 = load ptr, ptr %a.addr, align 8
  %145 = load i32, ptr %k, align 4
  %146 = load i32, ptr %k, align 4
  %147 = load i32, ptr %a_dim1, align 4
  %mul143 = mul nsw i32 %146, %147
  %add144 = add nsw i32 %145, %mul143
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds %struct.complex, ptr %144, i64 %idxprom145
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx146, ptr noundef %t)
  %r147 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %148 = load float, ptr %r147, align 4
  %r148 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  store float %148, ptr %r148, align 4
  %i149 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %149 = load float, ptr %i149, align 4
  %i150 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  store float %149, ptr %i150, align 4
  %150 = load ptr, ptr %a.addr, align 8
  %151 = load i32, ptr %k, align 4
  %add151 = add nsw i32 %151, 1
  %152 = load i32, ptr %k, align 4
  %add152 = add nsw i32 %152, 1
  %153 = load i32, ptr %a_dim1, align 4
  %mul153 = mul nsw i32 %add152, %153
  %add154 = add nsw i32 %add151, %mul153
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds %struct.complex, ptr %150, i64 %idxprom155
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx156, ptr noundef %t)
  %r157 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %154 = load float, ptr %r157, align 4
  %r158 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  store float %154, ptr %r158, align 4
  %i159 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %155 = load float, ptr %i159, align 4
  %i160 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  store float %155, ptr %i160, align 4
  %156 = load ptr, ptr %a.addr, align 8
  %157 = load i32, ptr %k, align 4
  %158 = load i32, ptr %k, align 4
  %add161 = add nsw i32 %158, 1
  %159 = load i32, ptr %a_dim1, align 4
  %mul162 = mul nsw i32 %add161, %159
  %add163 = add nsw i32 %157, %mul162
  %idxprom164 = sext i32 %add163 to i64
  %arrayidx165 = getelementptr inbounds %struct.complex, ptr %156, i64 %idxprom164
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx165, ptr noundef %t)
  %r166 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %160 = load float, ptr %r166, align 4
  %r167 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 0
  store float %160, ptr %r167, align 4
  %i168 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %161 = load float, ptr %i168, align 4
  %i169 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 1
  store float %161, ptr %i169, align 4
  %r170 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %162 = load float, ptr %r170, align 4
  %r171 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  %163 = load float, ptr %r171, align 4
  %i173 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %164 = load float, ptr %i173, align 4
  %i174 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  %165 = load float, ptr %i174, align 4
  %mul175 = fmul float %164, %165
  %neg = fneg float %mul175
  %166 = call float @llvm.fmuladd.f32(float %162, float %163, float %neg)
  %r176 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %166, ptr %r176, align 4
  %r177 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %167 = load float, ptr %r177, align 4
  %i178 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  %168 = load float, ptr %i178, align 4
  %i180 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %169 = load float, ptr %i180, align 4
  %r181 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  %170 = load float, ptr %r181, align 4
  %mul182 = fmul float %169, %170
  %171 = call float @llvm.fmuladd.f32(float %167, float %168, float %mul182)
  %i183 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %171, ptr %i183, align 4
  %r184 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %172 = load float, ptr %r184, align 4
  %sub185 = fsub float %172, 1.000000e+00
  %r186 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub185, ptr %r186, align 4
  %i187 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %173 = load float, ptr %i187, align 4
  %sub188 = fsub float %173, 0.000000e+00
  %i189 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub188, ptr %i189, align 4
  %r190 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %174 = load float, ptr %r190, align 4
  %r191 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %175 = load float, ptr %r191, align 4
  %i193 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %176 = load float, ptr %i193, align 4
  %i194 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %177 = load float, ptr %i194, align 4
  %mul195 = fmul float %176, %177
  %neg196 = fneg float %mul195
  %178 = call float @llvm.fmuladd.f32(float %174, float %175, float %neg196)
  %r197 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %178, ptr %r197, align 4
  %r198 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %179 = load float, ptr %r198, align 4
  %i199 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %180 = load float, ptr %i199, align 4
  %i201 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %181 = load float, ptr %i201, align 4
  %r202 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %182 = load float, ptr %r202, align 4
  %mul203 = fmul float %181, %182
  %183 = call float @llvm.fmuladd.f32(float %179, float %180, float %mul203)
  %i204 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %183, ptr %i204, align 4
  %r205 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %184 = load float, ptr %r205, align 4
  %r206 = getelementptr inbounds %struct.complex, ptr %d__, i32 0, i32 0
  store float %184, ptr %r206, align 4
  %i207 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %185 = load float, ptr %i207, align 4
  %i208 = getelementptr inbounds %struct.complex, ptr %d__, i32 0, i32 1
  store float %185, ptr %i208, align 4
  %186 = load i32, ptr %k, align 4
  %187 = load i32, ptr %k, align 4
  %188 = load i32, ptr %a_dim1, align 4
  %mul209 = mul nsw i32 %187, %188
  %add210 = add nsw i32 %186, %mul209
  store i32 %add210, ptr %i__1, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %akp1, ptr noundef %d__)
  %r211 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %189 = load float, ptr %r211, align 4
  %190 = load ptr, ptr %a.addr, align 8
  %191 = load i32, ptr %i__1, align 4
  %idxprom212 = sext i32 %191 to i64
  %arrayidx213 = getelementptr inbounds %struct.complex, ptr %190, i64 %idxprom212
  %r214 = getelementptr inbounds %struct.complex, ptr %arrayidx213, i32 0, i32 0
  store float %189, ptr %r214, align 4
  %i215 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %192 = load float, ptr %i215, align 4
  %193 = load ptr, ptr %a.addr, align 8
  %194 = load i32, ptr %i__1, align 4
  %idxprom216 = sext i32 %194 to i64
  %arrayidx217 = getelementptr inbounds %struct.complex, ptr %193, i64 %idxprom216
  %i218 = getelementptr inbounds %struct.complex, ptr %arrayidx217, i32 0, i32 1
  store float %192, ptr %i218, align 4
  %195 = load i32, ptr %k, align 4
  %add219 = add nsw i32 %195, 1
  %196 = load i32, ptr %k, align 4
  %add220 = add nsw i32 %196, 1
  %197 = load i32, ptr %a_dim1, align 4
  %mul221 = mul nsw i32 %add220, %197
  %add222 = add nsw i32 %add219, %mul221
  store i32 %add222, ptr %i__1, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %ak, ptr noundef %d__)
  %r223 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %198 = load float, ptr %r223, align 4
  %199 = load ptr, ptr %a.addr, align 8
  %200 = load i32, ptr %i__1, align 4
  %idxprom224 = sext i32 %200 to i64
  %arrayidx225 = getelementptr inbounds %struct.complex, ptr %199, i64 %idxprom224
  %r226 = getelementptr inbounds %struct.complex, ptr %arrayidx225, i32 0, i32 0
  store float %198, ptr %r226, align 4
  %i227 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %201 = load float, ptr %i227, align 4
  %202 = load ptr, ptr %a.addr, align 8
  %203 = load i32, ptr %i__1, align 4
  %idxprom228 = sext i32 %203 to i64
  %arrayidx229 = getelementptr inbounds %struct.complex, ptr %202, i64 %idxprom228
  %i230 = getelementptr inbounds %struct.complex, ptr %arrayidx229, i32 0, i32 1
  store float %201, ptr %i230, align 4
  %204 = load i32, ptr %k, align 4
  %205 = load i32, ptr %k, align 4
  %add231 = add nsw i32 %205, 1
  %206 = load i32, ptr %a_dim1, align 4
  %mul232 = mul nsw i32 %add231, %206
  %add233 = add nsw i32 %204, %mul232
  store i32 %add233, ptr %i__1, align 4
  %r234 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 0
  %207 = load float, ptr %r234, align 4
  %fneg = fneg float %207
  %r235 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %fneg, ptr %r235, align 4
  %i236 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 1
  %208 = load float, ptr %i236, align 4
  %fneg237 = fneg float %208
  %i238 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg237, ptr %i238, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %d__)
  %r239 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %209 = load float, ptr %r239, align 4
  %210 = load ptr, ptr %a.addr, align 8
  %211 = load i32, ptr %i__1, align 4
  %idxprom240 = sext i32 %211 to i64
  %arrayidx241 = getelementptr inbounds %struct.complex, ptr %210, i64 %idxprom240
  %r242 = getelementptr inbounds %struct.complex, ptr %arrayidx241, i32 0, i32 0
  store float %209, ptr %r242, align 4
  %i243 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %212 = load float, ptr %i243, align 4
  %213 = load ptr, ptr %a.addr, align 8
  %214 = load i32, ptr %i__1, align 4
  %idxprom244 = sext i32 %214 to i64
  %arrayidx245 = getelementptr inbounds %struct.complex, ptr %213, i64 %idxprom244
  %i246 = getelementptr inbounds %struct.complex, ptr %arrayidx245, i32 0, i32 1
  store float %212, ptr %i246, align 4
  %215 = load i32, ptr %k, align 4
  %cmp247 = icmp sgt i32 %215, 1
  br i1 %cmp247, label %if.then248, label %if.end388

if.then248:                                       ; preds = %if.else131
  %216 = load i32, ptr %k, align 4
  %sub249 = sub nsw i32 %216, 1
  store i32 %sub249, ptr %i__1, align 4
  %217 = load ptr, ptr %a.addr, align 8
  %218 = load i32, ptr %k, align 4
  %219 = load i32, ptr %a_dim1, align 4
  %mul250 = mul nsw i32 %218, %219
  %add251 = add nsw i32 %mul250, 1
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds %struct.complex, ptr %217, i64 %idxprom252
  %220 = load ptr, ptr %work.addr, align 8
  %arrayidx254 = getelementptr inbounds %struct.complex, ptr %220, i64 1
  %call255 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx253, ptr noundef @c__1, ptr noundef %arrayidx254, ptr noundef @c__1)
  %221 = load i32, ptr %k, align 4
  %sub256 = sub nsw i32 %221, 1
  store i32 %sub256, ptr %i__1, align 4
  %r257 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r257, align 4
  %i258 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i258, align 4
  %222 = load ptr, ptr %uplo.addr, align 8
  %223 = load ptr, ptr %a.addr, align 8
  %224 = load i32, ptr %a_offset, align 4
  %idxprom259 = sext i32 %224 to i64
  %arrayidx260 = getelementptr inbounds %struct.complex, ptr %223, i64 %idxprom259
  %225 = load ptr, ptr %lda.addr, align 8
  %226 = load ptr, ptr %work.addr, align 8
  %arrayidx261 = getelementptr inbounds %struct.complex, ptr %226, i64 1
  %227 = load ptr, ptr %a.addr, align 8
  %228 = load i32, ptr %k, align 4
  %229 = load i32, ptr %a_dim1, align 4
  %mul262 = mul nsw i32 %228, %229
  %add263 = add nsw i32 %mul262, 1
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds %struct.complex, ptr %227, i64 %idxprom264
  %call266 = call i32 @csymv_(ptr noundef %222, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx260, ptr noundef %225, ptr noundef %arrayidx261, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx265, ptr noundef @c__1)
  %230 = load i32, ptr %k, align 4
  %231 = load i32, ptr %k, align 4
  %232 = load i32, ptr %a_dim1, align 4
  %mul267 = mul nsw i32 %231, %232
  %add268 = add nsw i32 %230, %mul267
  store i32 %add268, ptr %i__1, align 4
  %233 = load i32, ptr %k, align 4
  %234 = load i32, ptr %k, align 4
  %235 = load i32, ptr %a_dim1, align 4
  %mul269 = mul nsw i32 %234, %235
  %add270 = add nsw i32 %233, %mul269
  store i32 %add270, ptr %i__2, align 4
  %236 = load i32, ptr %k, align 4
  %sub271 = sub nsw i32 %236, 1
  store i32 %sub271, ptr %i__3, align 4
  %237 = load ptr, ptr %work.addr, align 8
  %arrayidx272 = getelementptr inbounds %struct.complex, ptr %237, i64 1
  %238 = load ptr, ptr %a.addr, align 8
  %239 = load i32, ptr %k, align 4
  %240 = load i32, ptr %a_dim1, align 4
  %mul273 = mul nsw i32 %239, %240
  %add274 = add nsw i32 %mul273, 1
  %idxprom275 = sext i32 %add274 to i64
  %arrayidx276 = getelementptr inbounds %struct.complex, ptr %238, i64 %idxprom275
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx272, ptr noundef @c__1, ptr noundef %arrayidx276, ptr noundef @c__1)
  %241 = load ptr, ptr %a.addr, align 8
  %242 = load i32, ptr %i__2, align 4
  %idxprom277 = sext i32 %242 to i64
  %arrayidx278 = getelementptr inbounds %struct.complex, ptr %241, i64 %idxprom277
  %r279 = getelementptr inbounds %struct.complex, ptr %arrayidx278, i32 0, i32 0
  %243 = load float, ptr %r279, align 4
  %r280 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %244 = load float, ptr %r280, align 4
  %sub281 = fsub float %243, %244
  %r282 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub281, ptr %r282, align 4
  %245 = load ptr, ptr %a.addr, align 8
  %246 = load i32, ptr %i__2, align 4
  %idxprom283 = sext i32 %246 to i64
  %arrayidx284 = getelementptr inbounds %struct.complex, ptr %245, i64 %idxprom283
  %i285 = getelementptr inbounds %struct.complex, ptr %arrayidx284, i32 0, i32 1
  %247 = load float, ptr %i285, align 4
  %i286 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %248 = load float, ptr %i286, align 4
  %sub287 = fsub float %247, %248
  %i288 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub287, ptr %i288, align 4
  %r289 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %249 = load float, ptr %r289, align 4
  %250 = load ptr, ptr %a.addr, align 8
  %251 = load i32, ptr %i__1, align 4
  %idxprom290 = sext i32 %251 to i64
  %arrayidx291 = getelementptr inbounds %struct.complex, ptr %250, i64 %idxprom290
  %r292 = getelementptr inbounds %struct.complex, ptr %arrayidx291, i32 0, i32 0
  store float %249, ptr %r292, align 4
  %i293 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %252 = load float, ptr %i293, align 4
  %253 = load ptr, ptr %a.addr, align 8
  %254 = load i32, ptr %i__1, align 4
  %idxprom294 = sext i32 %254 to i64
  %arrayidx295 = getelementptr inbounds %struct.complex, ptr %253, i64 %idxprom294
  %i296 = getelementptr inbounds %struct.complex, ptr %arrayidx295, i32 0, i32 1
  store float %252, ptr %i296, align 4
  %255 = load i32, ptr %k, align 4
  %256 = load i32, ptr %k, align 4
  %add297 = add nsw i32 %256, 1
  %257 = load i32, ptr %a_dim1, align 4
  %mul298 = mul nsw i32 %add297, %257
  %add299 = add nsw i32 %255, %mul298
  store i32 %add299, ptr %i__1, align 4
  %258 = load i32, ptr %k, align 4
  %259 = load i32, ptr %k, align 4
  %add300 = add nsw i32 %259, 1
  %260 = load i32, ptr %a_dim1, align 4
  %mul301 = mul nsw i32 %add300, %260
  %add302 = add nsw i32 %258, %mul301
  store i32 %add302, ptr %i__2, align 4
  %261 = load i32, ptr %k, align 4
  %sub303 = sub nsw i32 %261, 1
  store i32 %sub303, ptr %i__3, align 4
  %262 = load ptr, ptr %a.addr, align 8
  %263 = load i32, ptr %k, align 4
  %264 = load i32, ptr %a_dim1, align 4
  %mul304 = mul nsw i32 %263, %264
  %add305 = add nsw i32 %mul304, 1
  %idxprom306 = sext i32 %add305 to i64
  %arrayidx307 = getelementptr inbounds %struct.complex, ptr %262, i64 %idxprom306
  %265 = load ptr, ptr %a.addr, align 8
  %266 = load i32, ptr %k, align 4
  %add308 = add nsw i32 %266, 1
  %267 = load i32, ptr %a_dim1, align 4
  %mul309 = mul nsw i32 %add308, %267
  %add310 = add nsw i32 %mul309, 1
  %idxprom311 = sext i32 %add310 to i64
  %arrayidx312 = getelementptr inbounds %struct.complex, ptr %265, i64 %idxprom311
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx307, ptr noundef @c__1, ptr noundef %arrayidx312, ptr noundef @c__1)
  %268 = load ptr, ptr %a.addr, align 8
  %269 = load i32, ptr %i__2, align 4
  %idxprom313 = sext i32 %269 to i64
  %arrayidx314 = getelementptr inbounds %struct.complex, ptr %268, i64 %idxprom313
  %r315 = getelementptr inbounds %struct.complex, ptr %arrayidx314, i32 0, i32 0
  %270 = load float, ptr %r315, align 4
  %r316 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %271 = load float, ptr %r316, align 4
  %sub317 = fsub float %270, %271
  %r318 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub317, ptr %r318, align 4
  %272 = load ptr, ptr %a.addr, align 8
  %273 = load i32, ptr %i__2, align 4
  %idxprom319 = sext i32 %273 to i64
  %arrayidx320 = getelementptr inbounds %struct.complex, ptr %272, i64 %idxprom319
  %i321 = getelementptr inbounds %struct.complex, ptr %arrayidx320, i32 0, i32 1
  %274 = load float, ptr %i321, align 4
  %i322 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %275 = load float, ptr %i322, align 4
  %sub323 = fsub float %274, %275
  %i324 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub323, ptr %i324, align 4
  %r325 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %276 = load float, ptr %r325, align 4
  %277 = load ptr, ptr %a.addr, align 8
  %278 = load i32, ptr %i__1, align 4
  %idxprom326 = sext i32 %278 to i64
  %arrayidx327 = getelementptr inbounds %struct.complex, ptr %277, i64 %idxprom326
  %r328 = getelementptr inbounds %struct.complex, ptr %arrayidx327, i32 0, i32 0
  store float %276, ptr %r328, align 4
  %i329 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %279 = load float, ptr %i329, align 4
  %280 = load ptr, ptr %a.addr, align 8
  %281 = load i32, ptr %i__1, align 4
  %idxprom330 = sext i32 %281 to i64
  %arrayidx331 = getelementptr inbounds %struct.complex, ptr %280, i64 %idxprom330
  %i332 = getelementptr inbounds %struct.complex, ptr %arrayidx331, i32 0, i32 1
  store float %279, ptr %i332, align 4
  %282 = load i32, ptr %k, align 4
  %sub333 = sub nsw i32 %282, 1
  store i32 %sub333, ptr %i__1, align 4
  %283 = load ptr, ptr %a.addr, align 8
  %284 = load i32, ptr %k, align 4
  %add334 = add nsw i32 %284, 1
  %285 = load i32, ptr %a_dim1, align 4
  %mul335 = mul nsw i32 %add334, %285
  %add336 = add nsw i32 %mul335, 1
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds %struct.complex, ptr %283, i64 %idxprom337
  %286 = load ptr, ptr %work.addr, align 8
  %arrayidx339 = getelementptr inbounds %struct.complex, ptr %286, i64 1
  %call340 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx338, ptr noundef @c__1, ptr noundef %arrayidx339, ptr noundef @c__1)
  %287 = load i32, ptr %k, align 4
  %sub341 = sub nsw i32 %287, 1
  store i32 %sub341, ptr %i__1, align 4
  %r342 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r342, align 4
  %i343 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i343, align 4
  %288 = load ptr, ptr %uplo.addr, align 8
  %289 = load ptr, ptr %a.addr, align 8
  %290 = load i32, ptr %a_offset, align 4
  %idxprom344 = sext i32 %290 to i64
  %arrayidx345 = getelementptr inbounds %struct.complex, ptr %289, i64 %idxprom344
  %291 = load ptr, ptr %lda.addr, align 8
  %292 = load ptr, ptr %work.addr, align 8
  %arrayidx346 = getelementptr inbounds %struct.complex, ptr %292, i64 1
  %293 = load ptr, ptr %a.addr, align 8
  %294 = load i32, ptr %k, align 4
  %add347 = add nsw i32 %294, 1
  %295 = load i32, ptr %a_dim1, align 4
  %mul348 = mul nsw i32 %add347, %295
  %add349 = add nsw i32 %mul348, 1
  %idxprom350 = sext i32 %add349 to i64
  %arrayidx351 = getelementptr inbounds %struct.complex, ptr %293, i64 %idxprom350
  %call352 = call i32 @csymv_(ptr noundef %288, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx345, ptr noundef %291, ptr noundef %arrayidx346, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx351, ptr noundef @c__1)
  %296 = load i32, ptr %k, align 4
  %add353 = add nsw i32 %296, 1
  %297 = load i32, ptr %k, align 4
  %add354 = add nsw i32 %297, 1
  %298 = load i32, ptr %a_dim1, align 4
  %mul355 = mul nsw i32 %add354, %298
  %add356 = add nsw i32 %add353, %mul355
  store i32 %add356, ptr %i__1, align 4
  %299 = load i32, ptr %k, align 4
  %add357 = add nsw i32 %299, 1
  %300 = load i32, ptr %k, align 4
  %add358 = add nsw i32 %300, 1
  %301 = load i32, ptr %a_dim1, align 4
  %mul359 = mul nsw i32 %add358, %301
  %add360 = add nsw i32 %add357, %mul359
  store i32 %add360, ptr %i__2, align 4
  %302 = load i32, ptr %k, align 4
  %sub361 = sub nsw i32 %302, 1
  store i32 %sub361, ptr %i__3, align 4
  %303 = load ptr, ptr %work.addr, align 8
  %arrayidx362 = getelementptr inbounds %struct.complex, ptr %303, i64 1
  %304 = load ptr, ptr %a.addr, align 8
  %305 = load i32, ptr %k, align 4
  %add363 = add nsw i32 %305, 1
  %306 = load i32, ptr %a_dim1, align 4
  %mul364 = mul nsw i32 %add363, %306
  %add365 = add nsw i32 %mul364, 1
  %idxprom366 = sext i32 %add365 to i64
  %arrayidx367 = getelementptr inbounds %struct.complex, ptr %304, i64 %idxprom366
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx362, ptr noundef @c__1, ptr noundef %arrayidx367, ptr noundef @c__1)
  %307 = load ptr, ptr %a.addr, align 8
  %308 = load i32, ptr %i__2, align 4
  %idxprom368 = sext i32 %308 to i64
  %arrayidx369 = getelementptr inbounds %struct.complex, ptr %307, i64 %idxprom368
  %r370 = getelementptr inbounds %struct.complex, ptr %arrayidx369, i32 0, i32 0
  %309 = load float, ptr %r370, align 4
  %r371 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %310 = load float, ptr %r371, align 4
  %sub372 = fsub float %309, %310
  %r373 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub372, ptr %r373, align 4
  %311 = load ptr, ptr %a.addr, align 8
  %312 = load i32, ptr %i__2, align 4
  %idxprom374 = sext i32 %312 to i64
  %arrayidx375 = getelementptr inbounds %struct.complex, ptr %311, i64 %idxprom374
  %i376 = getelementptr inbounds %struct.complex, ptr %arrayidx375, i32 0, i32 1
  %313 = load float, ptr %i376, align 4
  %i377 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %314 = load float, ptr %i377, align 4
  %sub378 = fsub float %313, %314
  %i379 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub378, ptr %i379, align 4
  %r380 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %315 = load float, ptr %r380, align 4
  %316 = load ptr, ptr %a.addr, align 8
  %317 = load i32, ptr %i__1, align 4
  %idxprom381 = sext i32 %317 to i64
  %arrayidx382 = getelementptr inbounds %struct.complex, ptr %316, i64 %idxprom381
  %r383 = getelementptr inbounds %struct.complex, ptr %arrayidx382, i32 0, i32 0
  store float %315, ptr %r383, align 4
  %i384 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %318 = load float, ptr %i384, align 4
  %319 = load ptr, ptr %a.addr, align 8
  %320 = load i32, ptr %i__1, align 4
  %idxprom385 = sext i32 %320 to i64
  %arrayidx386 = getelementptr inbounds %struct.complex, ptr %319, i64 %idxprom385
  %i387 = getelementptr inbounds %struct.complex, ptr %arrayidx386, i32 0, i32 1
  store float %318, ptr %i387, align 4
  br label %if.end388

if.end388:                                        ; preds = %if.then248, %if.else131
  store i32 2, ptr %kstep, align 4
  br label %if.end389

if.end389:                                        ; preds = %if.end388, %if.end130
  %321 = load ptr, ptr %ipiv.addr, align 8
  %322 = load i32, ptr %k, align 4
  %idxprom390 = sext i32 %322 to i64
  %arrayidx391 = getelementptr inbounds i32, ptr %321, i64 %idxprom390
  %323 = load i32, ptr %arrayidx391, align 4
  store i32 %323, ptr %i__1, align 4
  %324 = load i32, ptr %i__1, align 4
  %cmp392 = icmp sge i32 %324, 0
  br i1 %cmp392, label %cond.true393, label %cond.false394

cond.true393:                                     ; preds = %if.end389
  %325 = load i32, ptr %i__1, align 4
  br label %cond.end396

cond.false394:                                    ; preds = %if.end389
  %326 = load i32, ptr %i__1, align 4
  %sub395 = sub nsw i32 0, %326
  br label %cond.end396

cond.end396:                                      ; preds = %cond.false394, %cond.true393
  %cond397 = phi i32 [ %325, %cond.true393 ], [ %sub395, %cond.false394 ]
  store i32 %cond397, ptr %kp, align 4
  %327 = load i32, ptr %kp, align 4
  %328 = load i32, ptr %k, align 4
  %cmp398 = icmp ne i32 %327, %328
  br i1 %cmp398, label %if.then399, label %if.end502

if.then399:                                       ; preds = %cond.end396
  %329 = load i32, ptr %kp, align 4
  %sub400 = sub nsw i32 %329, 1
  store i32 %sub400, ptr %i__1, align 4
  %330 = load ptr, ptr %a.addr, align 8
  %331 = load i32, ptr %k, align 4
  %332 = load i32, ptr %a_dim1, align 4
  %mul401 = mul nsw i32 %331, %332
  %add402 = add nsw i32 %mul401, 1
  %idxprom403 = sext i32 %add402 to i64
  %arrayidx404 = getelementptr inbounds %struct.complex, ptr %330, i64 %idxprom403
  %333 = load ptr, ptr %a.addr, align 8
  %334 = load i32, ptr %kp, align 4
  %335 = load i32, ptr %a_dim1, align 4
  %mul405 = mul nsw i32 %334, %335
  %add406 = add nsw i32 %mul405, 1
  %idxprom407 = sext i32 %add406 to i64
  %arrayidx408 = getelementptr inbounds %struct.complex, ptr %333, i64 %idxprom407
  %call409 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx404, ptr noundef @c__1, ptr noundef %arrayidx408, ptr noundef @c__1)
  %336 = load i32, ptr %k, align 4
  %337 = load i32, ptr %kp, align 4
  %sub410 = sub nsw i32 %336, %337
  %sub411 = sub nsw i32 %sub410, 1
  store i32 %sub411, ptr %i__1, align 4
  %338 = load ptr, ptr %a.addr, align 8
  %339 = load i32, ptr %kp, align 4
  %add412 = add nsw i32 %339, 1
  %340 = load i32, ptr %k, align 4
  %341 = load i32, ptr %a_dim1, align 4
  %mul413 = mul nsw i32 %340, %341
  %add414 = add nsw i32 %add412, %mul413
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds %struct.complex, ptr %338, i64 %idxprom415
  %342 = load ptr, ptr %a.addr, align 8
  %343 = load i32, ptr %kp, align 4
  %344 = load i32, ptr %kp, align 4
  %add417 = add nsw i32 %344, 1
  %345 = load i32, ptr %a_dim1, align 4
  %mul418 = mul nsw i32 %add417, %345
  %add419 = add nsw i32 %343, %mul418
  %idxprom420 = sext i32 %add419 to i64
  %arrayidx421 = getelementptr inbounds %struct.complex, ptr %342, i64 %idxprom420
  %346 = load ptr, ptr %lda.addr, align 8
  %call422 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx416, ptr noundef @c__1, ptr noundef %arrayidx421, ptr noundef %346)
  %347 = load i32, ptr %k, align 4
  %348 = load i32, ptr %k, align 4
  %349 = load i32, ptr %a_dim1, align 4
  %mul423 = mul nsw i32 %348, %349
  %add424 = add nsw i32 %347, %mul423
  store i32 %add424, ptr %i__1, align 4
  %350 = load ptr, ptr %a.addr, align 8
  %351 = load i32, ptr %i__1, align 4
  %idxprom425 = sext i32 %351 to i64
  %arrayidx426 = getelementptr inbounds %struct.complex, ptr %350, i64 %idxprom425
  %r427 = getelementptr inbounds %struct.complex, ptr %arrayidx426, i32 0, i32 0
  %352 = load float, ptr %r427, align 4
  %r428 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %352, ptr %r428, align 4
  %353 = load ptr, ptr %a.addr, align 8
  %354 = load i32, ptr %i__1, align 4
  %idxprom429 = sext i32 %354 to i64
  %arrayidx430 = getelementptr inbounds %struct.complex, ptr %353, i64 %idxprom429
  %i431 = getelementptr inbounds %struct.complex, ptr %arrayidx430, i32 0, i32 1
  %355 = load float, ptr %i431, align 4
  %i432 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %355, ptr %i432, align 4
  %356 = load i32, ptr %k, align 4
  %357 = load i32, ptr %k, align 4
  %358 = load i32, ptr %a_dim1, align 4
  %mul433 = mul nsw i32 %357, %358
  %add434 = add nsw i32 %356, %mul433
  store i32 %add434, ptr %i__1, align 4
  %359 = load i32, ptr %kp, align 4
  %360 = load i32, ptr %kp, align 4
  %361 = load i32, ptr %a_dim1, align 4
  %mul435 = mul nsw i32 %360, %361
  %add436 = add nsw i32 %359, %mul435
  store i32 %add436, ptr %i__2, align 4
  %362 = load ptr, ptr %a.addr, align 8
  %363 = load i32, ptr %i__2, align 4
  %idxprom437 = sext i32 %363 to i64
  %arrayidx438 = getelementptr inbounds %struct.complex, ptr %362, i64 %idxprom437
  %r439 = getelementptr inbounds %struct.complex, ptr %arrayidx438, i32 0, i32 0
  %364 = load float, ptr %r439, align 4
  %365 = load ptr, ptr %a.addr, align 8
  %366 = load i32, ptr %i__1, align 4
  %idxprom440 = sext i32 %366 to i64
  %arrayidx441 = getelementptr inbounds %struct.complex, ptr %365, i64 %idxprom440
  %r442 = getelementptr inbounds %struct.complex, ptr %arrayidx441, i32 0, i32 0
  store float %364, ptr %r442, align 4
  %367 = load ptr, ptr %a.addr, align 8
  %368 = load i32, ptr %i__2, align 4
  %idxprom443 = sext i32 %368 to i64
  %arrayidx444 = getelementptr inbounds %struct.complex, ptr %367, i64 %idxprom443
  %i445 = getelementptr inbounds %struct.complex, ptr %arrayidx444, i32 0, i32 1
  %369 = load float, ptr %i445, align 4
  %370 = load ptr, ptr %a.addr, align 8
  %371 = load i32, ptr %i__1, align 4
  %idxprom446 = sext i32 %371 to i64
  %arrayidx447 = getelementptr inbounds %struct.complex, ptr %370, i64 %idxprom446
  %i448 = getelementptr inbounds %struct.complex, ptr %arrayidx447, i32 0, i32 1
  store float %369, ptr %i448, align 4
  %372 = load i32, ptr %kp, align 4
  %373 = load i32, ptr %kp, align 4
  %374 = load i32, ptr %a_dim1, align 4
  %mul449 = mul nsw i32 %373, %374
  %add450 = add nsw i32 %372, %mul449
  store i32 %add450, ptr %i__1, align 4
  %r451 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %375 = load float, ptr %r451, align 4
  %376 = load ptr, ptr %a.addr, align 8
  %377 = load i32, ptr %i__1, align 4
  %idxprom452 = sext i32 %377 to i64
  %arrayidx453 = getelementptr inbounds %struct.complex, ptr %376, i64 %idxprom452
  %r454 = getelementptr inbounds %struct.complex, ptr %arrayidx453, i32 0, i32 0
  store float %375, ptr %r454, align 4
  %i455 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %378 = load float, ptr %i455, align 4
  %379 = load ptr, ptr %a.addr, align 8
  %380 = load i32, ptr %i__1, align 4
  %idxprom456 = sext i32 %380 to i64
  %arrayidx457 = getelementptr inbounds %struct.complex, ptr %379, i64 %idxprom456
  %i458 = getelementptr inbounds %struct.complex, ptr %arrayidx457, i32 0, i32 1
  store float %378, ptr %i458, align 4
  %381 = load i32, ptr %kstep, align 4
  %cmp459 = icmp eq i32 %381, 2
  br i1 %cmp459, label %if.then460, label %if.end501

if.then460:                                       ; preds = %if.then399
  %382 = load i32, ptr %k, align 4
  %383 = load i32, ptr %k, align 4
  %add461 = add nsw i32 %383, 1
  %384 = load i32, ptr %a_dim1, align 4
  %mul462 = mul nsw i32 %add461, %384
  %add463 = add nsw i32 %382, %mul462
  store i32 %add463, ptr %i__1, align 4
  %385 = load ptr, ptr %a.addr, align 8
  %386 = load i32, ptr %i__1, align 4
  %idxprom464 = sext i32 %386 to i64
  %arrayidx465 = getelementptr inbounds %struct.complex, ptr %385, i64 %idxprom464
  %r466 = getelementptr inbounds %struct.complex, ptr %arrayidx465, i32 0, i32 0
  %387 = load float, ptr %r466, align 4
  %r467 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %387, ptr %r467, align 4
  %388 = load ptr, ptr %a.addr, align 8
  %389 = load i32, ptr %i__1, align 4
  %idxprom468 = sext i32 %389 to i64
  %arrayidx469 = getelementptr inbounds %struct.complex, ptr %388, i64 %idxprom468
  %i470 = getelementptr inbounds %struct.complex, ptr %arrayidx469, i32 0, i32 1
  %390 = load float, ptr %i470, align 4
  %i471 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %390, ptr %i471, align 4
  %391 = load i32, ptr %k, align 4
  %392 = load i32, ptr %k, align 4
  %add472 = add nsw i32 %392, 1
  %393 = load i32, ptr %a_dim1, align 4
  %mul473 = mul nsw i32 %add472, %393
  %add474 = add nsw i32 %391, %mul473
  store i32 %add474, ptr %i__1, align 4
  %394 = load i32, ptr %kp, align 4
  %395 = load i32, ptr %k, align 4
  %add475 = add nsw i32 %395, 1
  %396 = load i32, ptr %a_dim1, align 4
  %mul476 = mul nsw i32 %add475, %396
  %add477 = add nsw i32 %394, %mul476
  store i32 %add477, ptr %i__2, align 4
  %397 = load ptr, ptr %a.addr, align 8
  %398 = load i32, ptr %i__2, align 4
  %idxprom478 = sext i32 %398 to i64
  %arrayidx479 = getelementptr inbounds %struct.complex, ptr %397, i64 %idxprom478
  %r480 = getelementptr inbounds %struct.complex, ptr %arrayidx479, i32 0, i32 0
  %399 = load float, ptr %r480, align 4
  %400 = load ptr, ptr %a.addr, align 8
  %401 = load i32, ptr %i__1, align 4
  %idxprom481 = sext i32 %401 to i64
  %arrayidx482 = getelementptr inbounds %struct.complex, ptr %400, i64 %idxprom481
  %r483 = getelementptr inbounds %struct.complex, ptr %arrayidx482, i32 0, i32 0
  store float %399, ptr %r483, align 4
  %402 = load ptr, ptr %a.addr, align 8
  %403 = load i32, ptr %i__2, align 4
  %idxprom484 = sext i32 %403 to i64
  %arrayidx485 = getelementptr inbounds %struct.complex, ptr %402, i64 %idxprom484
  %i486 = getelementptr inbounds %struct.complex, ptr %arrayidx485, i32 0, i32 1
  %404 = load float, ptr %i486, align 4
  %405 = load ptr, ptr %a.addr, align 8
  %406 = load i32, ptr %i__1, align 4
  %idxprom487 = sext i32 %406 to i64
  %arrayidx488 = getelementptr inbounds %struct.complex, ptr %405, i64 %idxprom487
  %i489 = getelementptr inbounds %struct.complex, ptr %arrayidx488, i32 0, i32 1
  store float %404, ptr %i489, align 4
  %407 = load i32, ptr %kp, align 4
  %408 = load i32, ptr %k, align 4
  %add490 = add nsw i32 %408, 1
  %409 = load i32, ptr %a_dim1, align 4
  %mul491 = mul nsw i32 %add490, %409
  %add492 = add nsw i32 %407, %mul491
  store i32 %add492, ptr %i__1, align 4
  %r493 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %410 = load float, ptr %r493, align 4
  %411 = load ptr, ptr %a.addr, align 8
  %412 = load i32, ptr %i__1, align 4
  %idxprom494 = sext i32 %412 to i64
  %arrayidx495 = getelementptr inbounds %struct.complex, ptr %411, i64 %idxprom494
  %r496 = getelementptr inbounds %struct.complex, ptr %arrayidx495, i32 0, i32 0
  store float %410, ptr %r496, align 4
  %i497 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %413 = load float, ptr %i497, align 4
  %414 = load ptr, ptr %a.addr, align 8
  %415 = load i32, ptr %i__1, align 4
  %idxprom498 = sext i32 %415 to i64
  %arrayidx499 = getelementptr inbounds %struct.complex, ptr %414, i64 %idxprom498
  %i500 = getelementptr inbounds %struct.complex, ptr %arrayidx499, i32 0, i32 1
  store float %413, ptr %i500, align 4
  br label %if.end501

if.end501:                                        ; preds = %if.then460, %if.then399
  br label %if.end502

if.end502:                                        ; preds = %if.end501, %cond.end396
  %416 = load i32, ptr %kstep, align 4
  %417 = load i32, ptr %k, align 4
  %add503 = add nsw i32 %417, %416
  store i32 %add503, ptr %k, align 4
  br label %L30

L40:                                              ; preds = %if.then60
  br label %if.end980

if.else504:                                       ; preds = %if.end56
  %418 = load ptr, ptr %n.addr, align 8
  %419 = load i32, ptr %418, align 4
  store i32 %419, ptr %k, align 4
  br label %L50

L50:                                              ; preds = %if.end978, %if.else504
  %420 = load i32, ptr %k, align 4
  %cmp505 = icmp slt i32 %420, 1
  br i1 %cmp505, label %if.then506, label %if.end507

if.then506:                                       ; preds = %L50
  br label %L60

if.end507:                                        ; preds = %L50
  %421 = load ptr, ptr %ipiv.addr, align 8
  %422 = load i32, ptr %k, align 4
  %idxprom508 = sext i32 %422 to i64
  %arrayidx509 = getelementptr inbounds i32, ptr %421, i64 %idxprom508
  %423 = load i32, ptr %arrayidx509, align 4
  %cmp510 = icmp sgt i32 %423, 0
  br i1 %cmp510, label %if.then511, label %if.else584

if.then511:                                       ; preds = %if.end507
  %424 = load i32, ptr %k, align 4
  %425 = load i32, ptr %k, align 4
  %426 = load i32, ptr %a_dim1, align 4
  %mul512 = mul nsw i32 %425, %426
  %add513 = add nsw i32 %424, %mul512
  store i32 %add513, ptr %i__1, align 4
  %427 = load ptr, ptr %a.addr, align 8
  %428 = load i32, ptr %k, align 4
  %429 = load i32, ptr %k, align 4
  %430 = load i32, ptr %a_dim1, align 4
  %mul514 = mul nsw i32 %429, %430
  %add515 = add nsw i32 %428, %mul514
  %idxprom516 = sext i32 %add515 to i64
  %arrayidx517 = getelementptr inbounds %struct.complex, ptr %427, i64 %idxprom516
  call void @c_div(ptr noundef %q__1, ptr noundef @c_b1, ptr noundef %arrayidx517)
  %r518 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %431 = load float, ptr %r518, align 4
  %432 = load ptr, ptr %a.addr, align 8
  %433 = load i32, ptr %i__1, align 4
  %idxprom519 = sext i32 %433 to i64
  %arrayidx520 = getelementptr inbounds %struct.complex, ptr %432, i64 %idxprom519
  %r521 = getelementptr inbounds %struct.complex, ptr %arrayidx520, i32 0, i32 0
  store float %431, ptr %r521, align 4
  %i522 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %434 = load float, ptr %i522, align 4
  %435 = load ptr, ptr %a.addr, align 8
  %436 = load i32, ptr %i__1, align 4
  %idxprom523 = sext i32 %436 to i64
  %arrayidx524 = getelementptr inbounds %struct.complex, ptr %435, i64 %idxprom523
  %i525 = getelementptr inbounds %struct.complex, ptr %arrayidx524, i32 0, i32 1
  store float %434, ptr %i525, align 4
  %437 = load i32, ptr %k, align 4
  %438 = load ptr, ptr %n.addr, align 8
  %439 = load i32, ptr %438, align 4
  %cmp526 = icmp slt i32 %437, %439
  br i1 %cmp526, label %if.then527, label %if.end583

if.then527:                                       ; preds = %if.then511
  %440 = load ptr, ptr %n.addr, align 8
  %441 = load i32, ptr %440, align 4
  %442 = load i32, ptr %k, align 4
  %sub528 = sub nsw i32 %441, %442
  store i32 %sub528, ptr %i__1, align 4
  %443 = load ptr, ptr %a.addr, align 8
  %444 = load i32, ptr %k, align 4
  %add529 = add nsw i32 %444, 1
  %445 = load i32, ptr %k, align 4
  %446 = load i32, ptr %a_dim1, align 4
  %mul530 = mul nsw i32 %445, %446
  %add531 = add nsw i32 %add529, %mul530
  %idxprom532 = sext i32 %add531 to i64
  %arrayidx533 = getelementptr inbounds %struct.complex, ptr %443, i64 %idxprom532
  %447 = load ptr, ptr %work.addr, align 8
  %arrayidx534 = getelementptr inbounds %struct.complex, ptr %447, i64 1
  %call535 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx533, ptr noundef @c__1, ptr noundef %arrayidx534, ptr noundef @c__1)
  %448 = load ptr, ptr %n.addr, align 8
  %449 = load i32, ptr %448, align 4
  %450 = load i32, ptr %k, align 4
  %sub536 = sub nsw i32 %449, %450
  store i32 %sub536, ptr %i__1, align 4
  %r537 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r537, align 4
  %i538 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i538, align 4
  %451 = load ptr, ptr %uplo.addr, align 8
  %452 = load ptr, ptr %a.addr, align 8
  %453 = load i32, ptr %k, align 4
  %add539 = add nsw i32 %453, 1
  %454 = load i32, ptr %k, align 4
  %add540 = add nsw i32 %454, 1
  %455 = load i32, ptr %a_dim1, align 4
  %mul541 = mul nsw i32 %add540, %455
  %add542 = add nsw i32 %add539, %mul541
  %idxprom543 = sext i32 %add542 to i64
  %arrayidx544 = getelementptr inbounds %struct.complex, ptr %452, i64 %idxprom543
  %456 = load ptr, ptr %lda.addr, align 8
  %457 = load ptr, ptr %work.addr, align 8
  %arrayidx545 = getelementptr inbounds %struct.complex, ptr %457, i64 1
  %458 = load ptr, ptr %a.addr, align 8
  %459 = load i32, ptr %k, align 4
  %add546 = add nsw i32 %459, 1
  %460 = load i32, ptr %k, align 4
  %461 = load i32, ptr %a_dim1, align 4
  %mul547 = mul nsw i32 %460, %461
  %add548 = add nsw i32 %add546, %mul547
  %idxprom549 = sext i32 %add548 to i64
  %arrayidx550 = getelementptr inbounds %struct.complex, ptr %458, i64 %idxprom549
  %call551 = call i32 @csymv_(ptr noundef %451, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx544, ptr noundef %456, ptr noundef %arrayidx545, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx550, ptr noundef @c__1)
  %462 = load i32, ptr %k, align 4
  %463 = load i32, ptr %k, align 4
  %464 = load i32, ptr %a_dim1, align 4
  %mul552 = mul nsw i32 %463, %464
  %add553 = add nsw i32 %462, %mul552
  store i32 %add553, ptr %i__1, align 4
  %465 = load i32, ptr %k, align 4
  %466 = load i32, ptr %k, align 4
  %467 = load i32, ptr %a_dim1, align 4
  %mul554 = mul nsw i32 %466, %467
  %add555 = add nsw i32 %465, %mul554
  store i32 %add555, ptr %i__2, align 4
  %468 = load ptr, ptr %n.addr, align 8
  %469 = load i32, ptr %468, align 4
  %470 = load i32, ptr %k, align 4
  %sub556 = sub nsw i32 %469, %470
  store i32 %sub556, ptr %i__3, align 4
  %471 = load ptr, ptr %work.addr, align 8
  %arrayidx557 = getelementptr inbounds %struct.complex, ptr %471, i64 1
  %472 = load ptr, ptr %a.addr, align 8
  %473 = load i32, ptr %k, align 4
  %add558 = add nsw i32 %473, 1
  %474 = load i32, ptr %k, align 4
  %475 = load i32, ptr %a_dim1, align 4
  %mul559 = mul nsw i32 %474, %475
  %add560 = add nsw i32 %add558, %mul559
  %idxprom561 = sext i32 %add560 to i64
  %arrayidx562 = getelementptr inbounds %struct.complex, ptr %472, i64 %idxprom561
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx557, ptr noundef @c__1, ptr noundef %arrayidx562, ptr noundef @c__1)
  %476 = load ptr, ptr %a.addr, align 8
  %477 = load i32, ptr %i__2, align 4
  %idxprom563 = sext i32 %477 to i64
  %arrayidx564 = getelementptr inbounds %struct.complex, ptr %476, i64 %idxprom563
  %r565 = getelementptr inbounds %struct.complex, ptr %arrayidx564, i32 0, i32 0
  %478 = load float, ptr %r565, align 4
  %r566 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %479 = load float, ptr %r566, align 4
  %sub567 = fsub float %478, %479
  %r568 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub567, ptr %r568, align 4
  %480 = load ptr, ptr %a.addr, align 8
  %481 = load i32, ptr %i__2, align 4
  %idxprom569 = sext i32 %481 to i64
  %arrayidx570 = getelementptr inbounds %struct.complex, ptr %480, i64 %idxprom569
  %i571 = getelementptr inbounds %struct.complex, ptr %arrayidx570, i32 0, i32 1
  %482 = load float, ptr %i571, align 4
  %i572 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %483 = load float, ptr %i572, align 4
  %sub573 = fsub float %482, %483
  %i574 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub573, ptr %i574, align 4
  %r575 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %484 = load float, ptr %r575, align 4
  %485 = load ptr, ptr %a.addr, align 8
  %486 = load i32, ptr %i__1, align 4
  %idxprom576 = sext i32 %486 to i64
  %arrayidx577 = getelementptr inbounds %struct.complex, ptr %485, i64 %idxprom576
  %r578 = getelementptr inbounds %struct.complex, ptr %arrayidx577, i32 0, i32 0
  store float %484, ptr %r578, align 4
  %i579 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %487 = load float, ptr %i579, align 4
  %488 = load ptr, ptr %a.addr, align 8
  %489 = load i32, ptr %i__1, align 4
  %idxprom580 = sext i32 %489 to i64
  %arrayidx581 = getelementptr inbounds %struct.complex, ptr %488, i64 %idxprom580
  %i582 = getelementptr inbounds %struct.complex, ptr %arrayidx581, i32 0, i32 1
  store float %487, ptr %i582, align 4
  br label %if.end583

if.end583:                                        ; preds = %if.then527, %if.then511
  store i32 1, ptr %kstep, align 4
  br label %if.end860

if.else584:                                       ; preds = %if.end507
  %490 = load i32, ptr %k, align 4
  %491 = load i32, ptr %k, align 4
  %sub585 = sub nsw i32 %491, 1
  %492 = load i32, ptr %a_dim1, align 4
  %mul586 = mul nsw i32 %sub585, %492
  %add587 = add nsw i32 %490, %mul586
  store i32 %add587, ptr %i__1, align 4
  %493 = load ptr, ptr %a.addr, align 8
  %494 = load i32, ptr %i__1, align 4
  %idxprom588 = sext i32 %494 to i64
  %arrayidx589 = getelementptr inbounds %struct.complex, ptr %493, i64 %idxprom588
  %r590 = getelementptr inbounds %struct.complex, ptr %arrayidx589, i32 0, i32 0
  %495 = load float, ptr %r590, align 4
  %r591 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  store float %495, ptr %r591, align 4
  %496 = load ptr, ptr %a.addr, align 8
  %497 = load i32, ptr %i__1, align 4
  %idxprom592 = sext i32 %497 to i64
  %arrayidx593 = getelementptr inbounds %struct.complex, ptr %496, i64 %idxprom592
  %i594 = getelementptr inbounds %struct.complex, ptr %arrayidx593, i32 0, i32 1
  %498 = load float, ptr %i594, align 4
  %i595 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  store float %498, ptr %i595, align 4
  %499 = load ptr, ptr %a.addr, align 8
  %500 = load i32, ptr %k, align 4
  %sub596 = sub nsw i32 %500, 1
  %501 = load i32, ptr %k, align 4
  %sub597 = sub nsw i32 %501, 1
  %502 = load i32, ptr %a_dim1, align 4
  %mul598 = mul nsw i32 %sub597, %502
  %add599 = add nsw i32 %sub596, %mul598
  %idxprom600 = sext i32 %add599 to i64
  %arrayidx601 = getelementptr inbounds %struct.complex, ptr %499, i64 %idxprom600
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx601, ptr noundef %t)
  %r602 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %503 = load float, ptr %r602, align 4
  %r603 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  store float %503, ptr %r603, align 4
  %i604 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %504 = load float, ptr %i604, align 4
  %i605 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  store float %504, ptr %i605, align 4
  %505 = load ptr, ptr %a.addr, align 8
  %506 = load i32, ptr %k, align 4
  %507 = load i32, ptr %k, align 4
  %508 = load i32, ptr %a_dim1, align 4
  %mul606 = mul nsw i32 %507, %508
  %add607 = add nsw i32 %506, %mul606
  %idxprom608 = sext i32 %add607 to i64
  %arrayidx609 = getelementptr inbounds %struct.complex, ptr %505, i64 %idxprom608
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx609, ptr noundef %t)
  %r610 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %509 = load float, ptr %r610, align 4
  %r611 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  store float %509, ptr %r611, align 4
  %i612 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %510 = load float, ptr %i612, align 4
  %i613 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  store float %510, ptr %i613, align 4
  %511 = load ptr, ptr %a.addr, align 8
  %512 = load i32, ptr %k, align 4
  %513 = load i32, ptr %k, align 4
  %sub614 = sub nsw i32 %513, 1
  %514 = load i32, ptr %a_dim1, align 4
  %mul615 = mul nsw i32 %sub614, %514
  %add616 = add nsw i32 %512, %mul615
  %idxprom617 = sext i32 %add616 to i64
  %arrayidx618 = getelementptr inbounds %struct.complex, ptr %511, i64 %idxprom617
  call void @c_div(ptr noundef %q__1, ptr noundef %arrayidx618, ptr noundef %t)
  %r619 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %515 = load float, ptr %r619, align 4
  %r620 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 0
  store float %515, ptr %r620, align 4
  %i621 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %516 = load float, ptr %i621, align 4
  %i622 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 1
  store float %516, ptr %i622, align 4
  %r623 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %517 = load float, ptr %r623, align 4
  %r624 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  %518 = load float, ptr %r624, align 4
  %i626 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %519 = load float, ptr %i626, align 4
  %i627 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  %520 = load float, ptr %i627, align 4
  %mul628 = fmul float %519, %520
  %neg629 = fneg float %mul628
  %521 = call float @llvm.fmuladd.f32(float %517, float %518, float %neg629)
  %r630 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  store float %521, ptr %r630, align 4
  %r631 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 0
  %522 = load float, ptr %r631, align 4
  %i632 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 1
  %523 = load float, ptr %i632, align 4
  %i634 = getelementptr inbounds %struct.complex, ptr %ak, i32 0, i32 1
  %524 = load float, ptr %i634, align 4
  %r635 = getelementptr inbounds %struct.complex, ptr %akp1, i32 0, i32 0
  %525 = load float, ptr %r635, align 4
  %mul636 = fmul float %524, %525
  %526 = call float @llvm.fmuladd.f32(float %522, float %523, float %mul636)
  %i637 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  store float %526, ptr %i637, align 4
  %r638 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 0
  %527 = load float, ptr %r638, align 4
  %sub639 = fsub float %527, 1.000000e+00
  %r640 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %sub639, ptr %r640, align 4
  %i641 = getelementptr inbounds %struct.complex, ptr %q__3, i32 0, i32 1
  %528 = load float, ptr %i641, align 4
  %sub642 = fsub float %528, 0.000000e+00
  %i643 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %sub642, ptr %i643, align 4
  %r644 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %529 = load float, ptr %r644, align 4
  %r645 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %530 = load float, ptr %r645, align 4
  %i647 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %531 = load float, ptr %i647, align 4
  %i648 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %532 = load float, ptr %i648, align 4
  %mul649 = fmul float %531, %532
  %neg650 = fneg float %mul649
  %533 = call float @llvm.fmuladd.f32(float %529, float %530, float %neg650)
  %r651 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %533, ptr %r651, align 4
  %r652 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 0
  %534 = load float, ptr %r652, align 4
  %i653 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %535 = load float, ptr %i653, align 4
  %i655 = getelementptr inbounds %struct.complex, ptr %t, i32 0, i32 1
  %536 = load float, ptr %i655, align 4
  %r656 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %537 = load float, ptr %r656, align 4
  %mul657 = fmul float %536, %537
  %538 = call float @llvm.fmuladd.f32(float %534, float %535, float %mul657)
  %i658 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %538, ptr %i658, align 4
  %r659 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %539 = load float, ptr %r659, align 4
  %r660 = getelementptr inbounds %struct.complex, ptr %d__, i32 0, i32 0
  store float %539, ptr %r660, align 4
  %i661 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %540 = load float, ptr %i661, align 4
  %i662 = getelementptr inbounds %struct.complex, ptr %d__, i32 0, i32 1
  store float %540, ptr %i662, align 4
  %541 = load i32, ptr %k, align 4
  %sub663 = sub nsw i32 %541, 1
  %542 = load i32, ptr %k, align 4
  %sub664 = sub nsw i32 %542, 1
  %543 = load i32, ptr %a_dim1, align 4
  %mul665 = mul nsw i32 %sub664, %543
  %add666 = add nsw i32 %sub663, %mul665
  store i32 %add666, ptr %i__1, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %akp1, ptr noundef %d__)
  %r667 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %544 = load float, ptr %r667, align 4
  %545 = load ptr, ptr %a.addr, align 8
  %546 = load i32, ptr %i__1, align 4
  %idxprom668 = sext i32 %546 to i64
  %arrayidx669 = getelementptr inbounds %struct.complex, ptr %545, i64 %idxprom668
  %r670 = getelementptr inbounds %struct.complex, ptr %arrayidx669, i32 0, i32 0
  store float %544, ptr %r670, align 4
  %i671 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %547 = load float, ptr %i671, align 4
  %548 = load ptr, ptr %a.addr, align 8
  %549 = load i32, ptr %i__1, align 4
  %idxprom672 = sext i32 %549 to i64
  %arrayidx673 = getelementptr inbounds %struct.complex, ptr %548, i64 %idxprom672
  %i674 = getelementptr inbounds %struct.complex, ptr %arrayidx673, i32 0, i32 1
  store float %547, ptr %i674, align 4
  %550 = load i32, ptr %k, align 4
  %551 = load i32, ptr %k, align 4
  %552 = load i32, ptr %a_dim1, align 4
  %mul675 = mul nsw i32 %551, %552
  %add676 = add nsw i32 %550, %mul675
  store i32 %add676, ptr %i__1, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %ak, ptr noundef %d__)
  %r677 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %553 = load float, ptr %r677, align 4
  %554 = load ptr, ptr %a.addr, align 8
  %555 = load i32, ptr %i__1, align 4
  %idxprom678 = sext i32 %555 to i64
  %arrayidx679 = getelementptr inbounds %struct.complex, ptr %554, i64 %idxprom678
  %r680 = getelementptr inbounds %struct.complex, ptr %arrayidx679, i32 0, i32 0
  store float %553, ptr %r680, align 4
  %i681 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %556 = load float, ptr %i681, align 4
  %557 = load ptr, ptr %a.addr, align 8
  %558 = load i32, ptr %i__1, align 4
  %idxprom682 = sext i32 %558 to i64
  %arrayidx683 = getelementptr inbounds %struct.complex, ptr %557, i64 %idxprom682
  %i684 = getelementptr inbounds %struct.complex, ptr %arrayidx683, i32 0, i32 1
  store float %556, ptr %i684, align 4
  %559 = load i32, ptr %k, align 4
  %560 = load i32, ptr %k, align 4
  %sub685 = sub nsw i32 %560, 1
  %561 = load i32, ptr %a_dim1, align 4
  %mul686 = mul nsw i32 %sub685, %561
  %add687 = add nsw i32 %559, %mul686
  store i32 %add687, ptr %i__1, align 4
  %r688 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 0
  %562 = load float, ptr %r688, align 4
  %fneg689 = fneg float %562
  %r690 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  store float %fneg689, ptr %r690, align 4
  %i691 = getelementptr inbounds %struct.complex, ptr %akkp1, i32 0, i32 1
  %563 = load float, ptr %i691, align 4
  %fneg692 = fneg float %563
  %i693 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  store float %fneg692, ptr %i693, align 4
  call void @c_div(ptr noundef %q__1, ptr noundef %q__2, ptr noundef %d__)
  %r694 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %564 = load float, ptr %r694, align 4
  %565 = load ptr, ptr %a.addr, align 8
  %566 = load i32, ptr %i__1, align 4
  %idxprom695 = sext i32 %566 to i64
  %arrayidx696 = getelementptr inbounds %struct.complex, ptr %565, i64 %idxprom695
  %r697 = getelementptr inbounds %struct.complex, ptr %arrayidx696, i32 0, i32 0
  store float %564, ptr %r697, align 4
  %i698 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %567 = load float, ptr %i698, align 4
  %568 = load ptr, ptr %a.addr, align 8
  %569 = load i32, ptr %i__1, align 4
  %idxprom699 = sext i32 %569 to i64
  %arrayidx700 = getelementptr inbounds %struct.complex, ptr %568, i64 %idxprom699
  %i701 = getelementptr inbounds %struct.complex, ptr %arrayidx700, i32 0, i32 1
  store float %567, ptr %i701, align 4
  %570 = load i32, ptr %k, align 4
  %571 = load ptr, ptr %n.addr, align 8
  %572 = load i32, ptr %571, align 4
  %cmp702 = icmp slt i32 %570, %572
  br i1 %cmp702, label %if.then703, label %if.end859

if.then703:                                       ; preds = %if.else584
  %573 = load ptr, ptr %n.addr, align 8
  %574 = load i32, ptr %573, align 4
  %575 = load i32, ptr %k, align 4
  %sub704 = sub nsw i32 %574, %575
  store i32 %sub704, ptr %i__1, align 4
  %576 = load ptr, ptr %a.addr, align 8
  %577 = load i32, ptr %k, align 4
  %add705 = add nsw i32 %577, 1
  %578 = load i32, ptr %k, align 4
  %579 = load i32, ptr %a_dim1, align 4
  %mul706 = mul nsw i32 %578, %579
  %add707 = add nsw i32 %add705, %mul706
  %idxprom708 = sext i32 %add707 to i64
  %arrayidx709 = getelementptr inbounds %struct.complex, ptr %576, i64 %idxprom708
  %580 = load ptr, ptr %work.addr, align 8
  %arrayidx710 = getelementptr inbounds %struct.complex, ptr %580, i64 1
  %call711 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx709, ptr noundef @c__1, ptr noundef %arrayidx710, ptr noundef @c__1)
  %581 = load ptr, ptr %n.addr, align 8
  %582 = load i32, ptr %581, align 4
  %583 = load i32, ptr %k, align 4
  %sub712 = sub nsw i32 %582, %583
  store i32 %sub712, ptr %i__1, align 4
  %r713 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r713, align 4
  %i714 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i714, align 4
  %584 = load ptr, ptr %uplo.addr, align 8
  %585 = load ptr, ptr %a.addr, align 8
  %586 = load i32, ptr %k, align 4
  %add715 = add nsw i32 %586, 1
  %587 = load i32, ptr %k, align 4
  %add716 = add nsw i32 %587, 1
  %588 = load i32, ptr %a_dim1, align 4
  %mul717 = mul nsw i32 %add716, %588
  %add718 = add nsw i32 %add715, %mul717
  %idxprom719 = sext i32 %add718 to i64
  %arrayidx720 = getelementptr inbounds %struct.complex, ptr %585, i64 %idxprom719
  %589 = load ptr, ptr %lda.addr, align 8
  %590 = load ptr, ptr %work.addr, align 8
  %arrayidx721 = getelementptr inbounds %struct.complex, ptr %590, i64 1
  %591 = load ptr, ptr %a.addr, align 8
  %592 = load i32, ptr %k, align 4
  %add722 = add nsw i32 %592, 1
  %593 = load i32, ptr %k, align 4
  %594 = load i32, ptr %a_dim1, align 4
  %mul723 = mul nsw i32 %593, %594
  %add724 = add nsw i32 %add722, %mul723
  %idxprom725 = sext i32 %add724 to i64
  %arrayidx726 = getelementptr inbounds %struct.complex, ptr %591, i64 %idxprom725
  %call727 = call i32 @csymv_(ptr noundef %584, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx720, ptr noundef %589, ptr noundef %arrayidx721, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx726, ptr noundef @c__1)
  %595 = load i32, ptr %k, align 4
  %596 = load i32, ptr %k, align 4
  %597 = load i32, ptr %a_dim1, align 4
  %mul728 = mul nsw i32 %596, %597
  %add729 = add nsw i32 %595, %mul728
  store i32 %add729, ptr %i__1, align 4
  %598 = load i32, ptr %k, align 4
  %599 = load i32, ptr %k, align 4
  %600 = load i32, ptr %a_dim1, align 4
  %mul730 = mul nsw i32 %599, %600
  %add731 = add nsw i32 %598, %mul730
  store i32 %add731, ptr %i__2, align 4
  %601 = load ptr, ptr %n.addr, align 8
  %602 = load i32, ptr %601, align 4
  %603 = load i32, ptr %k, align 4
  %sub732 = sub nsw i32 %602, %603
  store i32 %sub732, ptr %i__3, align 4
  %604 = load ptr, ptr %work.addr, align 8
  %arrayidx733 = getelementptr inbounds %struct.complex, ptr %604, i64 1
  %605 = load ptr, ptr %a.addr, align 8
  %606 = load i32, ptr %k, align 4
  %add734 = add nsw i32 %606, 1
  %607 = load i32, ptr %k, align 4
  %608 = load i32, ptr %a_dim1, align 4
  %mul735 = mul nsw i32 %607, %608
  %add736 = add nsw i32 %add734, %mul735
  %idxprom737 = sext i32 %add736 to i64
  %arrayidx738 = getelementptr inbounds %struct.complex, ptr %605, i64 %idxprom737
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx733, ptr noundef @c__1, ptr noundef %arrayidx738, ptr noundef @c__1)
  %609 = load ptr, ptr %a.addr, align 8
  %610 = load i32, ptr %i__2, align 4
  %idxprom739 = sext i32 %610 to i64
  %arrayidx740 = getelementptr inbounds %struct.complex, ptr %609, i64 %idxprom739
  %r741 = getelementptr inbounds %struct.complex, ptr %arrayidx740, i32 0, i32 0
  %611 = load float, ptr %r741, align 4
  %r742 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %612 = load float, ptr %r742, align 4
  %sub743 = fsub float %611, %612
  %r744 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub743, ptr %r744, align 4
  %613 = load ptr, ptr %a.addr, align 8
  %614 = load i32, ptr %i__2, align 4
  %idxprom745 = sext i32 %614 to i64
  %arrayidx746 = getelementptr inbounds %struct.complex, ptr %613, i64 %idxprom745
  %i747 = getelementptr inbounds %struct.complex, ptr %arrayidx746, i32 0, i32 1
  %615 = load float, ptr %i747, align 4
  %i748 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %616 = load float, ptr %i748, align 4
  %sub749 = fsub float %615, %616
  %i750 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub749, ptr %i750, align 4
  %r751 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %617 = load float, ptr %r751, align 4
  %618 = load ptr, ptr %a.addr, align 8
  %619 = load i32, ptr %i__1, align 4
  %idxprom752 = sext i32 %619 to i64
  %arrayidx753 = getelementptr inbounds %struct.complex, ptr %618, i64 %idxprom752
  %r754 = getelementptr inbounds %struct.complex, ptr %arrayidx753, i32 0, i32 0
  store float %617, ptr %r754, align 4
  %i755 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %620 = load float, ptr %i755, align 4
  %621 = load ptr, ptr %a.addr, align 8
  %622 = load i32, ptr %i__1, align 4
  %idxprom756 = sext i32 %622 to i64
  %arrayidx757 = getelementptr inbounds %struct.complex, ptr %621, i64 %idxprom756
  %i758 = getelementptr inbounds %struct.complex, ptr %arrayidx757, i32 0, i32 1
  store float %620, ptr %i758, align 4
  %623 = load i32, ptr %k, align 4
  %624 = load i32, ptr %k, align 4
  %sub759 = sub nsw i32 %624, 1
  %625 = load i32, ptr %a_dim1, align 4
  %mul760 = mul nsw i32 %sub759, %625
  %add761 = add nsw i32 %623, %mul760
  store i32 %add761, ptr %i__1, align 4
  %626 = load i32, ptr %k, align 4
  %627 = load i32, ptr %k, align 4
  %sub762 = sub nsw i32 %627, 1
  %628 = load i32, ptr %a_dim1, align 4
  %mul763 = mul nsw i32 %sub762, %628
  %add764 = add nsw i32 %626, %mul763
  store i32 %add764, ptr %i__2, align 4
  %629 = load ptr, ptr %n.addr, align 8
  %630 = load i32, ptr %629, align 4
  %631 = load i32, ptr %k, align 4
  %sub765 = sub nsw i32 %630, %631
  store i32 %sub765, ptr %i__3, align 4
  %632 = load ptr, ptr %a.addr, align 8
  %633 = load i32, ptr %k, align 4
  %add766 = add nsw i32 %633, 1
  %634 = load i32, ptr %k, align 4
  %635 = load i32, ptr %a_dim1, align 4
  %mul767 = mul nsw i32 %634, %635
  %add768 = add nsw i32 %add766, %mul767
  %idxprom769 = sext i32 %add768 to i64
  %arrayidx770 = getelementptr inbounds %struct.complex, ptr %632, i64 %idxprom769
  %636 = load ptr, ptr %a.addr, align 8
  %637 = load i32, ptr %k, align 4
  %add771 = add nsw i32 %637, 1
  %638 = load i32, ptr %k, align 4
  %sub772 = sub nsw i32 %638, 1
  %639 = load i32, ptr %a_dim1, align 4
  %mul773 = mul nsw i32 %sub772, %639
  %add774 = add nsw i32 %add771, %mul773
  %idxprom775 = sext i32 %add774 to i64
  %arrayidx776 = getelementptr inbounds %struct.complex, ptr %636, i64 %idxprom775
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx770, ptr noundef @c__1, ptr noundef %arrayidx776, ptr noundef @c__1)
  %640 = load ptr, ptr %a.addr, align 8
  %641 = load i32, ptr %i__2, align 4
  %idxprom777 = sext i32 %641 to i64
  %arrayidx778 = getelementptr inbounds %struct.complex, ptr %640, i64 %idxprom777
  %r779 = getelementptr inbounds %struct.complex, ptr %arrayidx778, i32 0, i32 0
  %642 = load float, ptr %r779, align 4
  %r780 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %643 = load float, ptr %r780, align 4
  %sub781 = fsub float %642, %643
  %r782 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub781, ptr %r782, align 4
  %644 = load ptr, ptr %a.addr, align 8
  %645 = load i32, ptr %i__2, align 4
  %idxprom783 = sext i32 %645 to i64
  %arrayidx784 = getelementptr inbounds %struct.complex, ptr %644, i64 %idxprom783
  %i785 = getelementptr inbounds %struct.complex, ptr %arrayidx784, i32 0, i32 1
  %646 = load float, ptr %i785, align 4
  %i786 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %647 = load float, ptr %i786, align 4
  %sub787 = fsub float %646, %647
  %i788 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub787, ptr %i788, align 4
  %r789 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %648 = load float, ptr %r789, align 4
  %649 = load ptr, ptr %a.addr, align 8
  %650 = load i32, ptr %i__1, align 4
  %idxprom790 = sext i32 %650 to i64
  %arrayidx791 = getelementptr inbounds %struct.complex, ptr %649, i64 %idxprom790
  %r792 = getelementptr inbounds %struct.complex, ptr %arrayidx791, i32 0, i32 0
  store float %648, ptr %r792, align 4
  %i793 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %651 = load float, ptr %i793, align 4
  %652 = load ptr, ptr %a.addr, align 8
  %653 = load i32, ptr %i__1, align 4
  %idxprom794 = sext i32 %653 to i64
  %arrayidx795 = getelementptr inbounds %struct.complex, ptr %652, i64 %idxprom794
  %i796 = getelementptr inbounds %struct.complex, ptr %arrayidx795, i32 0, i32 1
  store float %651, ptr %i796, align 4
  %654 = load ptr, ptr %n.addr, align 8
  %655 = load i32, ptr %654, align 4
  %656 = load i32, ptr %k, align 4
  %sub797 = sub nsw i32 %655, %656
  store i32 %sub797, ptr %i__1, align 4
  %657 = load ptr, ptr %a.addr, align 8
  %658 = load i32, ptr %k, align 4
  %add798 = add nsw i32 %658, 1
  %659 = load i32, ptr %k, align 4
  %sub799 = sub nsw i32 %659, 1
  %660 = load i32, ptr %a_dim1, align 4
  %mul800 = mul nsw i32 %sub799, %660
  %add801 = add nsw i32 %add798, %mul800
  %idxprom802 = sext i32 %add801 to i64
  %arrayidx803 = getelementptr inbounds %struct.complex, ptr %657, i64 %idxprom802
  %661 = load ptr, ptr %work.addr, align 8
  %arrayidx804 = getelementptr inbounds %struct.complex, ptr %661, i64 1
  %call805 = call i32 @ccopy_(ptr noundef %i__1, ptr noundef %arrayidx803, ptr noundef @c__1, ptr noundef %arrayidx804, ptr noundef @c__1)
  %662 = load ptr, ptr %n.addr, align 8
  %663 = load i32, ptr %662, align 4
  %664 = load i32, ptr %k, align 4
  %sub806 = sub nsw i32 %663, %664
  store i32 %sub806, ptr %i__1, align 4
  %r807 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float -1.000000e+00, ptr %r807, align 4
  %i808 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float -0.000000e+00, ptr %i808, align 4
  %665 = load ptr, ptr %uplo.addr, align 8
  %666 = load ptr, ptr %a.addr, align 8
  %667 = load i32, ptr %k, align 4
  %add809 = add nsw i32 %667, 1
  %668 = load i32, ptr %k, align 4
  %add810 = add nsw i32 %668, 1
  %669 = load i32, ptr %a_dim1, align 4
  %mul811 = mul nsw i32 %add810, %669
  %add812 = add nsw i32 %add809, %mul811
  %idxprom813 = sext i32 %add812 to i64
  %arrayidx814 = getelementptr inbounds %struct.complex, ptr %666, i64 %idxprom813
  %670 = load ptr, ptr %lda.addr, align 8
  %671 = load ptr, ptr %work.addr, align 8
  %arrayidx815 = getelementptr inbounds %struct.complex, ptr %671, i64 1
  %672 = load ptr, ptr %a.addr, align 8
  %673 = load i32, ptr %k, align 4
  %add816 = add nsw i32 %673, 1
  %674 = load i32, ptr %k, align 4
  %sub817 = sub nsw i32 %674, 1
  %675 = load i32, ptr %a_dim1, align 4
  %mul818 = mul nsw i32 %sub817, %675
  %add819 = add nsw i32 %add816, %mul818
  %idxprom820 = sext i32 %add819 to i64
  %arrayidx821 = getelementptr inbounds %struct.complex, ptr %672, i64 %idxprom820
  %call822 = call i32 @csymv_(ptr noundef %665, ptr noundef %i__1, ptr noundef %q__1, ptr noundef %arrayidx814, ptr noundef %670, ptr noundef %arrayidx815, ptr noundef @c__1, ptr noundef @c_b2, ptr noundef %arrayidx821, ptr noundef @c__1)
  %676 = load i32, ptr %k, align 4
  %sub823 = sub nsw i32 %676, 1
  %677 = load i32, ptr %k, align 4
  %sub824 = sub nsw i32 %677, 1
  %678 = load i32, ptr %a_dim1, align 4
  %mul825 = mul nsw i32 %sub824, %678
  %add826 = add nsw i32 %sub823, %mul825
  store i32 %add826, ptr %i__1, align 4
  %679 = load i32, ptr %k, align 4
  %sub827 = sub nsw i32 %679, 1
  %680 = load i32, ptr %k, align 4
  %sub828 = sub nsw i32 %680, 1
  %681 = load i32, ptr %a_dim1, align 4
  %mul829 = mul nsw i32 %sub828, %681
  %add830 = add nsw i32 %sub827, %mul829
  store i32 %add830, ptr %i__2, align 4
  %682 = load ptr, ptr %n.addr, align 8
  %683 = load i32, ptr %682, align 4
  %684 = load i32, ptr %k, align 4
  %sub831 = sub nsw i32 %683, %684
  store i32 %sub831, ptr %i__3, align 4
  %685 = load ptr, ptr %work.addr, align 8
  %arrayidx832 = getelementptr inbounds %struct.complex, ptr %685, i64 1
  %686 = load ptr, ptr %a.addr, align 8
  %687 = load i32, ptr %k, align 4
  %add833 = add nsw i32 %687, 1
  %688 = load i32, ptr %k, align 4
  %sub834 = sub nsw i32 %688, 1
  %689 = load i32, ptr %a_dim1, align 4
  %mul835 = mul nsw i32 %sub834, %689
  %add836 = add nsw i32 %add833, %mul835
  %idxprom837 = sext i32 %add836 to i64
  %arrayidx838 = getelementptr inbounds %struct.complex, ptr %686, i64 %idxprom837
  call void @cdotu_f2c_(ptr noundef %q__2, ptr noundef %i__3, ptr noundef %arrayidx832, ptr noundef @c__1, ptr noundef %arrayidx838, ptr noundef @c__1)
  %690 = load ptr, ptr %a.addr, align 8
  %691 = load i32, ptr %i__2, align 4
  %idxprom839 = sext i32 %691 to i64
  %arrayidx840 = getelementptr inbounds %struct.complex, ptr %690, i64 %idxprom839
  %r841 = getelementptr inbounds %struct.complex, ptr %arrayidx840, i32 0, i32 0
  %692 = load float, ptr %r841, align 4
  %r842 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 0
  %693 = load float, ptr %r842, align 4
  %sub843 = fsub float %692, %693
  %r844 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %sub843, ptr %r844, align 4
  %694 = load ptr, ptr %a.addr, align 8
  %695 = load i32, ptr %i__2, align 4
  %idxprom845 = sext i32 %695 to i64
  %arrayidx846 = getelementptr inbounds %struct.complex, ptr %694, i64 %idxprom845
  %i847 = getelementptr inbounds %struct.complex, ptr %arrayidx846, i32 0, i32 1
  %696 = load float, ptr %i847, align 4
  %i848 = getelementptr inbounds %struct.complex, ptr %q__2, i32 0, i32 1
  %697 = load float, ptr %i848, align 4
  %sub849 = fsub float %696, %697
  %i850 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %sub849, ptr %i850, align 4
  %r851 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %698 = load float, ptr %r851, align 4
  %699 = load ptr, ptr %a.addr, align 8
  %700 = load i32, ptr %i__1, align 4
  %idxprom852 = sext i32 %700 to i64
  %arrayidx853 = getelementptr inbounds %struct.complex, ptr %699, i64 %idxprom852
  %r854 = getelementptr inbounds %struct.complex, ptr %arrayidx853, i32 0, i32 0
  store float %698, ptr %r854, align 4
  %i855 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %701 = load float, ptr %i855, align 4
  %702 = load ptr, ptr %a.addr, align 8
  %703 = load i32, ptr %i__1, align 4
  %idxprom856 = sext i32 %703 to i64
  %arrayidx857 = getelementptr inbounds %struct.complex, ptr %702, i64 %idxprom856
  %i858 = getelementptr inbounds %struct.complex, ptr %arrayidx857, i32 0, i32 1
  store float %701, ptr %i858, align 4
  br label %if.end859

if.end859:                                        ; preds = %if.then703, %if.else584
  store i32 2, ptr %kstep, align 4
  br label %if.end860

if.end860:                                        ; preds = %if.end859, %if.end583
  %704 = load ptr, ptr %ipiv.addr, align 8
  %705 = load i32, ptr %k, align 4
  %idxprom861 = sext i32 %705 to i64
  %arrayidx862 = getelementptr inbounds i32, ptr %704, i64 %idxprom861
  %706 = load i32, ptr %arrayidx862, align 4
  store i32 %706, ptr %i__1, align 4
  %707 = load i32, ptr %i__1, align 4
  %cmp863 = icmp sge i32 %707, 0
  br i1 %cmp863, label %cond.true864, label %cond.false865

cond.true864:                                     ; preds = %if.end860
  %708 = load i32, ptr %i__1, align 4
  br label %cond.end867

cond.false865:                                    ; preds = %if.end860
  %709 = load i32, ptr %i__1, align 4
  %sub866 = sub nsw i32 0, %709
  br label %cond.end867

cond.end867:                                      ; preds = %cond.false865, %cond.true864
  %cond868 = phi i32 [ %708, %cond.true864 ], [ %sub866, %cond.false865 ]
  store i32 %cond868, ptr %kp, align 4
  %710 = load i32, ptr %kp, align 4
  %711 = load i32, ptr %k, align 4
  %cmp869 = icmp ne i32 %710, %711
  br i1 %cmp869, label %if.then870, label %if.end978

if.then870:                                       ; preds = %cond.end867
  %712 = load i32, ptr %kp, align 4
  %713 = load ptr, ptr %n.addr, align 8
  %714 = load i32, ptr %713, align 4
  %cmp871 = icmp slt i32 %712, %714
  br i1 %cmp871, label %if.then872, label %if.end885

if.then872:                                       ; preds = %if.then870
  %715 = load ptr, ptr %n.addr, align 8
  %716 = load i32, ptr %715, align 4
  %717 = load i32, ptr %kp, align 4
  %sub873 = sub nsw i32 %716, %717
  store i32 %sub873, ptr %i__1, align 4
  %718 = load ptr, ptr %a.addr, align 8
  %719 = load i32, ptr %kp, align 4
  %add874 = add nsw i32 %719, 1
  %720 = load i32, ptr %k, align 4
  %721 = load i32, ptr %a_dim1, align 4
  %mul875 = mul nsw i32 %720, %721
  %add876 = add nsw i32 %add874, %mul875
  %idxprom877 = sext i32 %add876 to i64
  %arrayidx878 = getelementptr inbounds %struct.complex, ptr %718, i64 %idxprom877
  %722 = load ptr, ptr %a.addr, align 8
  %723 = load i32, ptr %kp, align 4
  %add879 = add nsw i32 %723, 1
  %724 = load i32, ptr %kp, align 4
  %725 = load i32, ptr %a_dim1, align 4
  %mul880 = mul nsw i32 %724, %725
  %add881 = add nsw i32 %add879, %mul880
  %idxprom882 = sext i32 %add881 to i64
  %arrayidx883 = getelementptr inbounds %struct.complex, ptr %722, i64 %idxprom882
  %call884 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx878, ptr noundef @c__1, ptr noundef %arrayidx883, ptr noundef @c__1)
  br label %if.end885

if.end885:                                        ; preds = %if.then872, %if.then870
  %726 = load i32, ptr %kp, align 4
  %727 = load i32, ptr %k, align 4
  %sub886 = sub nsw i32 %726, %727
  %sub887 = sub nsw i32 %sub886, 1
  store i32 %sub887, ptr %i__1, align 4
  %728 = load ptr, ptr %a.addr, align 8
  %729 = load i32, ptr %k, align 4
  %add888 = add nsw i32 %729, 1
  %730 = load i32, ptr %k, align 4
  %731 = load i32, ptr %a_dim1, align 4
  %mul889 = mul nsw i32 %730, %731
  %add890 = add nsw i32 %add888, %mul889
  %idxprom891 = sext i32 %add890 to i64
  %arrayidx892 = getelementptr inbounds %struct.complex, ptr %728, i64 %idxprom891
  %732 = load ptr, ptr %a.addr, align 8
  %733 = load i32, ptr %kp, align 4
  %734 = load i32, ptr %k, align 4
  %add893 = add nsw i32 %734, 1
  %735 = load i32, ptr %a_dim1, align 4
  %mul894 = mul nsw i32 %add893, %735
  %add895 = add nsw i32 %733, %mul894
  %idxprom896 = sext i32 %add895 to i64
  %arrayidx897 = getelementptr inbounds %struct.complex, ptr %732, i64 %idxprom896
  %736 = load ptr, ptr %lda.addr, align 8
  %call898 = call i32 @cswap_(ptr noundef %i__1, ptr noundef %arrayidx892, ptr noundef @c__1, ptr noundef %arrayidx897, ptr noundef %736)
  %737 = load i32, ptr %k, align 4
  %738 = load i32, ptr %k, align 4
  %739 = load i32, ptr %a_dim1, align 4
  %mul899 = mul nsw i32 %738, %739
  %add900 = add nsw i32 %737, %mul899
  store i32 %add900, ptr %i__1, align 4
  %740 = load ptr, ptr %a.addr, align 8
  %741 = load i32, ptr %i__1, align 4
  %idxprom901 = sext i32 %741 to i64
  %arrayidx902 = getelementptr inbounds %struct.complex, ptr %740, i64 %idxprom901
  %r903 = getelementptr inbounds %struct.complex, ptr %arrayidx902, i32 0, i32 0
  %742 = load float, ptr %r903, align 4
  %r904 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %742, ptr %r904, align 4
  %743 = load ptr, ptr %a.addr, align 8
  %744 = load i32, ptr %i__1, align 4
  %idxprom905 = sext i32 %744 to i64
  %arrayidx906 = getelementptr inbounds %struct.complex, ptr %743, i64 %idxprom905
  %i907 = getelementptr inbounds %struct.complex, ptr %arrayidx906, i32 0, i32 1
  %745 = load float, ptr %i907, align 4
  %i908 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %745, ptr %i908, align 4
  %746 = load i32, ptr %k, align 4
  %747 = load i32, ptr %k, align 4
  %748 = load i32, ptr %a_dim1, align 4
  %mul909 = mul nsw i32 %747, %748
  %add910 = add nsw i32 %746, %mul909
  store i32 %add910, ptr %i__1, align 4
  %749 = load i32, ptr %kp, align 4
  %750 = load i32, ptr %kp, align 4
  %751 = load i32, ptr %a_dim1, align 4
  %mul911 = mul nsw i32 %750, %751
  %add912 = add nsw i32 %749, %mul911
  store i32 %add912, ptr %i__2, align 4
  %752 = load ptr, ptr %a.addr, align 8
  %753 = load i32, ptr %i__2, align 4
  %idxprom913 = sext i32 %753 to i64
  %arrayidx914 = getelementptr inbounds %struct.complex, ptr %752, i64 %idxprom913
  %r915 = getelementptr inbounds %struct.complex, ptr %arrayidx914, i32 0, i32 0
  %754 = load float, ptr %r915, align 4
  %755 = load ptr, ptr %a.addr, align 8
  %756 = load i32, ptr %i__1, align 4
  %idxprom916 = sext i32 %756 to i64
  %arrayidx917 = getelementptr inbounds %struct.complex, ptr %755, i64 %idxprom916
  %r918 = getelementptr inbounds %struct.complex, ptr %arrayidx917, i32 0, i32 0
  store float %754, ptr %r918, align 4
  %757 = load ptr, ptr %a.addr, align 8
  %758 = load i32, ptr %i__2, align 4
  %idxprom919 = sext i32 %758 to i64
  %arrayidx920 = getelementptr inbounds %struct.complex, ptr %757, i64 %idxprom919
  %i921 = getelementptr inbounds %struct.complex, ptr %arrayidx920, i32 0, i32 1
  %759 = load float, ptr %i921, align 4
  %760 = load ptr, ptr %a.addr, align 8
  %761 = load i32, ptr %i__1, align 4
  %idxprom922 = sext i32 %761 to i64
  %arrayidx923 = getelementptr inbounds %struct.complex, ptr %760, i64 %idxprom922
  %i924 = getelementptr inbounds %struct.complex, ptr %arrayidx923, i32 0, i32 1
  store float %759, ptr %i924, align 4
  %762 = load i32, ptr %kp, align 4
  %763 = load i32, ptr %kp, align 4
  %764 = load i32, ptr %a_dim1, align 4
  %mul925 = mul nsw i32 %763, %764
  %add926 = add nsw i32 %762, %mul925
  store i32 %add926, ptr %i__1, align 4
  %r927 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %765 = load float, ptr %r927, align 4
  %766 = load ptr, ptr %a.addr, align 8
  %767 = load i32, ptr %i__1, align 4
  %idxprom928 = sext i32 %767 to i64
  %arrayidx929 = getelementptr inbounds %struct.complex, ptr %766, i64 %idxprom928
  %r930 = getelementptr inbounds %struct.complex, ptr %arrayidx929, i32 0, i32 0
  store float %765, ptr %r930, align 4
  %i931 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %768 = load float, ptr %i931, align 4
  %769 = load ptr, ptr %a.addr, align 8
  %770 = load i32, ptr %i__1, align 4
  %idxprom932 = sext i32 %770 to i64
  %arrayidx933 = getelementptr inbounds %struct.complex, ptr %769, i64 %idxprom932
  %i934 = getelementptr inbounds %struct.complex, ptr %arrayidx933, i32 0, i32 1
  store float %768, ptr %i934, align 4
  %771 = load i32, ptr %kstep, align 4
  %cmp935 = icmp eq i32 %771, 2
  br i1 %cmp935, label %if.then936, label %if.end977

if.then936:                                       ; preds = %if.end885
  %772 = load i32, ptr %k, align 4
  %773 = load i32, ptr %k, align 4
  %sub937 = sub nsw i32 %773, 1
  %774 = load i32, ptr %a_dim1, align 4
  %mul938 = mul nsw i32 %sub937, %774
  %add939 = add nsw i32 %772, %mul938
  store i32 %add939, ptr %i__1, align 4
  %775 = load ptr, ptr %a.addr, align 8
  %776 = load i32, ptr %i__1, align 4
  %idxprom940 = sext i32 %776 to i64
  %arrayidx941 = getelementptr inbounds %struct.complex, ptr %775, i64 %idxprom940
  %r942 = getelementptr inbounds %struct.complex, ptr %arrayidx941, i32 0, i32 0
  %777 = load float, ptr %r942, align 4
  %r943 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  store float %777, ptr %r943, align 4
  %778 = load ptr, ptr %a.addr, align 8
  %779 = load i32, ptr %i__1, align 4
  %idxprom944 = sext i32 %779 to i64
  %arrayidx945 = getelementptr inbounds %struct.complex, ptr %778, i64 %idxprom944
  %i946 = getelementptr inbounds %struct.complex, ptr %arrayidx945, i32 0, i32 1
  %780 = load float, ptr %i946, align 4
  %i947 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  store float %780, ptr %i947, align 4
  %781 = load i32, ptr %k, align 4
  %782 = load i32, ptr %k, align 4
  %sub948 = sub nsw i32 %782, 1
  %783 = load i32, ptr %a_dim1, align 4
  %mul949 = mul nsw i32 %sub948, %783
  %add950 = add nsw i32 %781, %mul949
  store i32 %add950, ptr %i__1, align 4
  %784 = load i32, ptr %kp, align 4
  %785 = load i32, ptr %k, align 4
  %sub951 = sub nsw i32 %785, 1
  %786 = load i32, ptr %a_dim1, align 4
  %mul952 = mul nsw i32 %sub951, %786
  %add953 = add nsw i32 %784, %mul952
  store i32 %add953, ptr %i__2, align 4
  %787 = load ptr, ptr %a.addr, align 8
  %788 = load i32, ptr %i__2, align 4
  %idxprom954 = sext i32 %788 to i64
  %arrayidx955 = getelementptr inbounds %struct.complex, ptr %787, i64 %idxprom954
  %r956 = getelementptr inbounds %struct.complex, ptr %arrayidx955, i32 0, i32 0
  %789 = load float, ptr %r956, align 4
  %790 = load ptr, ptr %a.addr, align 8
  %791 = load i32, ptr %i__1, align 4
  %idxprom957 = sext i32 %791 to i64
  %arrayidx958 = getelementptr inbounds %struct.complex, ptr %790, i64 %idxprom957
  %r959 = getelementptr inbounds %struct.complex, ptr %arrayidx958, i32 0, i32 0
  store float %789, ptr %r959, align 4
  %792 = load ptr, ptr %a.addr, align 8
  %793 = load i32, ptr %i__2, align 4
  %idxprom960 = sext i32 %793 to i64
  %arrayidx961 = getelementptr inbounds %struct.complex, ptr %792, i64 %idxprom960
  %i962 = getelementptr inbounds %struct.complex, ptr %arrayidx961, i32 0, i32 1
  %794 = load float, ptr %i962, align 4
  %795 = load ptr, ptr %a.addr, align 8
  %796 = load i32, ptr %i__1, align 4
  %idxprom963 = sext i32 %796 to i64
  %arrayidx964 = getelementptr inbounds %struct.complex, ptr %795, i64 %idxprom963
  %i965 = getelementptr inbounds %struct.complex, ptr %arrayidx964, i32 0, i32 1
  store float %794, ptr %i965, align 4
  %797 = load i32, ptr %kp, align 4
  %798 = load i32, ptr %k, align 4
  %sub966 = sub nsw i32 %798, 1
  %799 = load i32, ptr %a_dim1, align 4
  %mul967 = mul nsw i32 %sub966, %799
  %add968 = add nsw i32 %797, %mul967
  store i32 %add968, ptr %i__1, align 4
  %r969 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 0
  %800 = load float, ptr %r969, align 4
  %801 = load ptr, ptr %a.addr, align 8
  %802 = load i32, ptr %i__1, align 4
  %idxprom970 = sext i32 %802 to i64
  %arrayidx971 = getelementptr inbounds %struct.complex, ptr %801, i64 %idxprom970
  %r972 = getelementptr inbounds %struct.complex, ptr %arrayidx971, i32 0, i32 0
  store float %800, ptr %r972, align 4
  %i973 = getelementptr inbounds %struct.complex, ptr %temp, i32 0, i32 1
  %803 = load float, ptr %i973, align 4
  %804 = load ptr, ptr %a.addr, align 8
  %805 = load i32, ptr %i__1, align 4
  %idxprom974 = sext i32 %805 to i64
  %arrayidx975 = getelementptr inbounds %struct.complex, ptr %804, i64 %idxprom974
  %i976 = getelementptr inbounds %struct.complex, ptr %arrayidx975, i32 0, i32 1
  store float %803, ptr %i976, align 4
  br label %if.end977

if.end977:                                        ; preds = %if.then936, %if.end885
  br label %if.end978

if.end978:                                        ; preds = %if.end977, %cond.end867
  %806 = load i32, ptr %kstep, align 4
  %807 = load i32, ptr %k, align 4
  %sub979 = sub nsw i32 %807, %806
  store i32 %sub979, ptr %k, align 4
  br label %L50

L60:                                              ; preds = %if.then506
  br label %if.end980

if.end980:                                        ; preds = %L60, %L40
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end980, %if.then52, %if.then31, %if.then16, %if.then12
  %808 = load i32, ptr %retval, align 4
  ret i32 %808
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare void @c_div(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ccopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @csymv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare void @cdotu_f2c_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare i32 @cswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
