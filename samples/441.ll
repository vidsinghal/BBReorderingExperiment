; ModuleID = 'samples/441.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/ssytri_rook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SSYTRI_ROOK\00", align 1
@c__1 = internal global i32 1, align 4
@c_b11 = internal global float -1.000000e+00, align 4
@c_b13 = internal global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ssytri_rook_(ptr noundef %uplo, ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %work, ptr noundef %info) #0 {
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
  %r__1 = alloca float, align 4
  %d__ = alloca float, align 4
  %k = alloca i32, align 4
  %t = alloca float, align 4
  %ak = alloca float, align 4
  %kp = alloca i32, align 4
  %akp1 = alloca float, align 4
  %temp = alloca float, align 4
  %akkp1 = alloca float, align 4
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
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %a.addr, align 8
  %5 = load ptr, ptr %ipiv.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %ipiv.addr, align 8
  %6 = load ptr, ptr %work.addr, align 8
  %incdec.ptr1 = getelementptr inbounds float, ptr %6, i32 -1
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
  br i1 %tobool18, label %if.then19, label %if.else29

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
  %34 = load ptr, ptr %ipiv.addr, align 8
  %35 = load ptr, ptr %info.addr, align 8
  %36 = load i32, ptr %35, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx = getelementptr inbounds i32, ptr %34, i64 %idxprom
  %37 = load i32, ptr %arrayidx, align 4
  %cmp21 = icmp sgt i32 %37, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.end28

land.lhs.true22:                                  ; preds = %for.body
  %38 = load ptr, ptr %a.addr, align 8
  %39 = load ptr, ptr %info.addr, align 8
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %info.addr, align 8
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %42, %43
  %add23 = add nsw i32 %40, %mul
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds float, ptr %38, i64 %idxprom24
  %44 = load float, ptr %arrayidx25, align 4
  %cmp26 = fcmp oeq float %44, 0.000000e+00
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true22
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %45 = load ptr, ptr %info.addr, align 8
  %46 = load i32, ptr %45, align 4
  %dec = add nsw i32 %46, -1
  store i32 %dec, ptr %45, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end46

if.else29:                                        ; preds = %if.end17
  %47 = load ptr, ptr %n.addr, align 8
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %i__1, align 4
  %49 = load ptr, ptr %info.addr, align 8
  store i32 1, ptr %49, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc44, %if.else29
  %50 = load ptr, ptr %info.addr, align 8
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %i__1, align 4
  %cmp31 = icmp sle i32 %51, %52
  br i1 %cmp31, label %for.body32, label %for.end45

for.body32:                                       ; preds = %for.cond30
  %53 = load ptr, ptr %ipiv.addr, align 8
  %54 = load ptr, ptr %info.addr, align 8
  %55 = load i32, ptr %54, align 4
  %idxprom33 = sext i32 %55 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %53, i64 %idxprom33
  %56 = load i32, ptr %arrayidx34, align 4
  %cmp35 = icmp sgt i32 %56, 0
  br i1 %cmp35, label %land.lhs.true36, label %if.end43

land.lhs.true36:                                  ; preds = %for.body32
  %57 = load ptr, ptr %a.addr, align 8
  %58 = load ptr, ptr %info.addr, align 8
  %59 = load i32, ptr %58, align 4
  %60 = load ptr, ptr %info.addr, align 8
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %a_dim1, align 4
  %mul37 = mul nsw i32 %61, %62
  %add38 = add nsw i32 %59, %mul37
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %57, i64 %idxprom39
  %63 = load float, ptr %arrayidx40, align 4
  %cmp41 = fcmp oeq float %63, 0.000000e+00
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true36
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %land.lhs.true36, %for.body32
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %64 = load ptr, ptr %info.addr, align 8
  %65 = load i32, ptr %64, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, ptr %64, align 4
  br label %for.cond30, !llvm.loop !7

for.end45:                                        ; preds = %for.cond30
  br label %if.end46

if.end46:                                         ; preds = %for.end45, %for.end
  %66 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %66, align 4
  %67 = load i32, ptr %upper, align 4
  %tobool47 = icmp ne i32 %67, 0
  br i1 %tobool47, label %if.then48, label %if.else396

if.then48:                                        ; preds = %if.end46
  store i32 1, ptr %k, align 4
  br label %L30

L30:                                              ; preds = %if.end394, %if.then48
  %68 = load i32, ptr %k, align 4
  %69 = load ptr, ptr %n.addr, align 8
  %70 = load i32, ptr %69, align 4
  %cmp49 = icmp sgt i32 %68, %70
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %L30
  br label %L40

if.end51:                                         ; preds = %L30
  %71 = load ptr, ptr %ipiv.addr, align 8
  %72 = load i32, ptr %k, align 4
  %idxprom52 = sext i32 %72 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %71, i64 %idxprom52
  %73 = load i32, ptr %arrayidx53, align 4
  %cmp54 = icmp sgt i32 %73, 0
  br i1 %cmp54, label %if.then55, label %if.else95

if.then55:                                        ; preds = %if.end51
  %74 = load ptr, ptr %a.addr, align 8
  %75 = load i32, ptr %k, align 4
  %76 = load i32, ptr %k, align 4
  %77 = load i32, ptr %a_dim1, align 4
  %mul56 = mul nsw i32 %76, %77
  %add57 = add nsw i32 %75, %mul56
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds float, ptr %74, i64 %idxprom58
  %78 = load float, ptr %arrayidx59, align 4
  %div = fdiv float 1.000000e+00, %78
  %79 = load ptr, ptr %a.addr, align 8
  %80 = load i32, ptr %k, align 4
  %81 = load i32, ptr %k, align 4
  %82 = load i32, ptr %a_dim1, align 4
  %mul60 = mul nsw i32 %81, %82
  %add61 = add nsw i32 %80, %mul60
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds float, ptr %79, i64 %idxprom62
  store float %div, ptr %arrayidx63, align 4
  %83 = load i32, ptr %k, align 4
  %cmp64 = icmp sgt i32 %83, 1
  br i1 %cmp64, label %if.then65, label %if.end94

if.then65:                                        ; preds = %if.then55
  %84 = load i32, ptr %k, align 4
  %sub66 = sub nsw i32 %84, 1
  store i32 %sub66, ptr %i__1, align 4
  %85 = load ptr, ptr %a.addr, align 8
  %86 = load i32, ptr %k, align 4
  %87 = load i32, ptr %a_dim1, align 4
  %mul67 = mul nsw i32 %86, %87
  %add68 = add nsw i32 %mul67, 1
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds float, ptr %85, i64 %idxprom69
  %88 = load ptr, ptr %work.addr, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %88, i64 1
  %call72 = call i32 @scopy_(ptr noundef %i__1, ptr noundef %arrayidx70, ptr noundef @c__1, ptr noundef %arrayidx71, ptr noundef @c__1)
  %89 = load i32, ptr %k, align 4
  %sub73 = sub nsw i32 %89, 1
  store i32 %sub73, ptr %i__1, align 4
  %90 = load ptr, ptr %uplo.addr, align 8
  %91 = load ptr, ptr %a.addr, align 8
  %92 = load i32, ptr %a_offset, align 4
  %idxprom74 = sext i32 %92 to i64
  %arrayidx75 = getelementptr inbounds float, ptr %91, i64 %idxprom74
  %93 = load ptr, ptr %lda.addr, align 8
  %94 = load ptr, ptr %work.addr, align 8
  %arrayidx76 = getelementptr inbounds float, ptr %94, i64 1
  %95 = load ptr, ptr %a.addr, align 8
  %96 = load i32, ptr %k, align 4
  %97 = load i32, ptr %a_dim1, align 4
  %mul77 = mul nsw i32 %96, %97
  %add78 = add nsw i32 %mul77, 1
  %idxprom79 = sext i32 %add78 to i64
  %arrayidx80 = getelementptr inbounds float, ptr %95, i64 %idxprom79
  %call81 = call i32 @ssymv_(ptr noundef %90, ptr noundef %i__1, ptr noundef @c_b11, ptr noundef %arrayidx75, ptr noundef %93, ptr noundef %arrayidx76, ptr noundef @c__1, ptr noundef @c_b13, ptr noundef %arrayidx80, ptr noundef @c__1)
  %98 = load i32, ptr %k, align 4
  %sub82 = sub nsw i32 %98, 1
  store i32 %sub82, ptr %i__1, align 4
  %99 = load ptr, ptr %work.addr, align 8
  %arrayidx83 = getelementptr inbounds float, ptr %99, i64 1
  %100 = load ptr, ptr %a.addr, align 8
  %101 = load i32, ptr %k, align 4
  %102 = load i32, ptr %a_dim1, align 4
  %mul84 = mul nsw i32 %101, %102
  %add85 = add nsw i32 %mul84, 1
  %idxprom86 = sext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds float, ptr %100, i64 %idxprom86
  %call88 = call float @sdot_(ptr noundef %i__1, ptr noundef %arrayidx83, ptr noundef @c__1, ptr noundef %arrayidx87, ptr noundef @c__1)
  %103 = load ptr, ptr %a.addr, align 8
  %104 = load i32, ptr %k, align 4
  %105 = load i32, ptr %k, align 4
  %106 = load i32, ptr %a_dim1, align 4
  %mul89 = mul nsw i32 %105, %106
  %add90 = add nsw i32 %104, %mul89
  %idxprom91 = sext i32 %add90 to i64
  %arrayidx92 = getelementptr inbounds float, ptr %103, i64 %idxprom91
  %107 = load float, ptr %arrayidx92, align 4
  %sub93 = fsub float %107, %call88
  store float %sub93, ptr %arrayidx92, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then65, %if.then55
  store i32 1, ptr %kstep, align 4
  br label %if.end226

if.else95:                                        ; preds = %if.end51
  %108 = load ptr, ptr %a.addr, align 8
  %109 = load i32, ptr %k, align 4
  %110 = load i32, ptr %k, align 4
  %add96 = add nsw i32 %110, 1
  %111 = load i32, ptr %a_dim1, align 4
  %mul97 = mul nsw i32 %add96, %111
  %add98 = add nsw i32 %109, %mul97
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds float, ptr %108, i64 %idxprom99
  %112 = load float, ptr %arrayidx100, align 4
  store float %112, ptr %r__1, align 4
  %113 = load float, ptr %r__1, align 4
  %cmp101 = fcmp oge float %113, 0.000000e+00
  br i1 %cmp101, label %cond.true102, label %cond.false103

cond.true102:                                     ; preds = %if.else95
  %114 = load float, ptr %r__1, align 4
  br label %cond.end104

cond.false103:                                    ; preds = %if.else95
  %115 = load float, ptr %r__1, align 4
  %fneg = fneg float %115
  br label %cond.end104

cond.end104:                                      ; preds = %cond.false103, %cond.true102
  %cond105 = phi float [ %114, %cond.true102 ], [ %fneg, %cond.false103 ]
  store float %cond105, ptr %t, align 4
  %116 = load ptr, ptr %a.addr, align 8
  %117 = load i32, ptr %k, align 4
  %118 = load i32, ptr %k, align 4
  %119 = load i32, ptr %a_dim1, align 4
  %mul106 = mul nsw i32 %118, %119
  %add107 = add nsw i32 %117, %mul106
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds float, ptr %116, i64 %idxprom108
  %120 = load float, ptr %arrayidx109, align 4
  %121 = load float, ptr %t, align 4
  %div110 = fdiv float %120, %121
  store float %div110, ptr %ak, align 4
  %122 = load ptr, ptr %a.addr, align 8
  %123 = load i32, ptr %k, align 4
  %add111 = add nsw i32 %123, 1
  %124 = load i32, ptr %k, align 4
  %add112 = add nsw i32 %124, 1
  %125 = load i32, ptr %a_dim1, align 4
  %mul113 = mul nsw i32 %add112, %125
  %add114 = add nsw i32 %add111, %mul113
  %idxprom115 = sext i32 %add114 to i64
  %arrayidx116 = getelementptr inbounds float, ptr %122, i64 %idxprom115
  %126 = load float, ptr %arrayidx116, align 4
  %127 = load float, ptr %t, align 4
  %div117 = fdiv float %126, %127
  store float %div117, ptr %akp1, align 4
  %128 = load ptr, ptr %a.addr, align 8
  %129 = load i32, ptr %k, align 4
  %130 = load i32, ptr %k, align 4
  %add118 = add nsw i32 %130, 1
  %131 = load i32, ptr %a_dim1, align 4
  %mul119 = mul nsw i32 %add118, %131
  %add120 = add nsw i32 %129, %mul119
  %idxprom121 = sext i32 %add120 to i64
  %arrayidx122 = getelementptr inbounds float, ptr %128, i64 %idxprom121
  %132 = load float, ptr %arrayidx122, align 4
  %133 = load float, ptr %t, align 4
  %div123 = fdiv float %132, %133
  store float %div123, ptr %akkp1, align 4
  %134 = load float, ptr %t, align 4
  %135 = load float, ptr %ak, align 4
  %136 = load float, ptr %akp1, align 4
  %137 = call float @llvm.fmuladd.f32(float %135, float %136, float -1.000000e+00)
  %mul125 = fmul float %134, %137
  store float %mul125, ptr %d__, align 4
  %138 = load float, ptr %akp1, align 4
  %139 = load float, ptr %d__, align 4
  %div126 = fdiv float %138, %139
  %140 = load ptr, ptr %a.addr, align 8
  %141 = load i32, ptr %k, align 4
  %142 = load i32, ptr %k, align 4
  %143 = load i32, ptr %a_dim1, align 4
  %mul127 = mul nsw i32 %142, %143
  %add128 = add nsw i32 %141, %mul127
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %140, i64 %idxprom129
  store float %div126, ptr %arrayidx130, align 4
  %144 = load float, ptr %ak, align 4
  %145 = load float, ptr %d__, align 4
  %div131 = fdiv float %144, %145
  %146 = load ptr, ptr %a.addr, align 8
  %147 = load i32, ptr %k, align 4
  %add132 = add nsw i32 %147, 1
  %148 = load i32, ptr %k, align 4
  %add133 = add nsw i32 %148, 1
  %149 = load i32, ptr %a_dim1, align 4
  %mul134 = mul nsw i32 %add133, %149
  %add135 = add nsw i32 %add132, %mul134
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds float, ptr %146, i64 %idxprom136
  store float %div131, ptr %arrayidx137, align 4
  %150 = load float, ptr %akkp1, align 4
  %fneg138 = fneg float %150
  %151 = load float, ptr %d__, align 4
  %div139 = fdiv float %fneg138, %151
  %152 = load ptr, ptr %a.addr, align 8
  %153 = load i32, ptr %k, align 4
  %154 = load i32, ptr %k, align 4
  %add140 = add nsw i32 %154, 1
  %155 = load i32, ptr %a_dim1, align 4
  %mul141 = mul nsw i32 %add140, %155
  %add142 = add nsw i32 %153, %mul141
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %152, i64 %idxprom143
  store float %div139, ptr %arrayidx144, align 4
  %156 = load i32, ptr %k, align 4
  %cmp145 = icmp sgt i32 %156, 1
  br i1 %cmp145, label %if.then146, label %if.end225

if.then146:                                       ; preds = %cond.end104
  %157 = load i32, ptr %k, align 4
  %sub147 = sub nsw i32 %157, 1
  store i32 %sub147, ptr %i__1, align 4
  %158 = load ptr, ptr %a.addr, align 8
  %159 = load i32, ptr %k, align 4
  %160 = load i32, ptr %a_dim1, align 4
  %mul148 = mul nsw i32 %159, %160
  %add149 = add nsw i32 %mul148, 1
  %idxprom150 = sext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds float, ptr %158, i64 %idxprom150
  %161 = load ptr, ptr %work.addr, align 8
  %arrayidx152 = getelementptr inbounds float, ptr %161, i64 1
  %call153 = call i32 @scopy_(ptr noundef %i__1, ptr noundef %arrayidx151, ptr noundef @c__1, ptr noundef %arrayidx152, ptr noundef @c__1)
  %162 = load i32, ptr %k, align 4
  %sub154 = sub nsw i32 %162, 1
  store i32 %sub154, ptr %i__1, align 4
  %163 = load ptr, ptr %uplo.addr, align 8
  %164 = load ptr, ptr %a.addr, align 8
  %165 = load i32, ptr %a_offset, align 4
  %idxprom155 = sext i32 %165 to i64
  %arrayidx156 = getelementptr inbounds float, ptr %164, i64 %idxprom155
  %166 = load ptr, ptr %lda.addr, align 8
  %167 = load ptr, ptr %work.addr, align 8
  %arrayidx157 = getelementptr inbounds float, ptr %167, i64 1
  %168 = load ptr, ptr %a.addr, align 8
  %169 = load i32, ptr %k, align 4
  %170 = load i32, ptr %a_dim1, align 4
  %mul158 = mul nsw i32 %169, %170
  %add159 = add nsw i32 %mul158, 1
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds float, ptr %168, i64 %idxprom160
  %call162 = call i32 @ssymv_(ptr noundef %163, ptr noundef %i__1, ptr noundef @c_b11, ptr noundef %arrayidx156, ptr noundef %166, ptr noundef %arrayidx157, ptr noundef @c__1, ptr noundef @c_b13, ptr noundef %arrayidx161, ptr noundef @c__1)
  %171 = load i32, ptr %k, align 4
  %sub163 = sub nsw i32 %171, 1
  store i32 %sub163, ptr %i__1, align 4
  %172 = load ptr, ptr %work.addr, align 8
  %arrayidx164 = getelementptr inbounds float, ptr %172, i64 1
  %173 = load ptr, ptr %a.addr, align 8
  %174 = load i32, ptr %k, align 4
  %175 = load i32, ptr %a_dim1, align 4
  %mul165 = mul nsw i32 %174, %175
  %add166 = add nsw i32 %mul165, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds float, ptr %173, i64 %idxprom167
  %call169 = call float @sdot_(ptr noundef %i__1, ptr noundef %arrayidx164, ptr noundef @c__1, ptr noundef %arrayidx168, ptr noundef @c__1)
  %176 = load ptr, ptr %a.addr, align 8
  %177 = load i32, ptr %k, align 4
  %178 = load i32, ptr %k, align 4
  %179 = load i32, ptr %a_dim1, align 4
  %mul170 = mul nsw i32 %178, %179
  %add171 = add nsw i32 %177, %mul170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds float, ptr %176, i64 %idxprom172
  %180 = load float, ptr %arrayidx173, align 4
  %sub174 = fsub float %180, %call169
  store float %sub174, ptr %arrayidx173, align 4
  %181 = load i32, ptr %k, align 4
  %sub175 = sub nsw i32 %181, 1
  store i32 %sub175, ptr %i__1, align 4
  %182 = load ptr, ptr %a.addr, align 8
  %183 = load i32, ptr %k, align 4
  %184 = load i32, ptr %a_dim1, align 4
  %mul176 = mul nsw i32 %183, %184
  %add177 = add nsw i32 %mul176, 1
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds float, ptr %182, i64 %idxprom178
  %185 = load ptr, ptr %a.addr, align 8
  %186 = load i32, ptr %k, align 4
  %add180 = add nsw i32 %186, 1
  %187 = load i32, ptr %a_dim1, align 4
  %mul181 = mul nsw i32 %add180, %187
  %add182 = add nsw i32 %mul181, 1
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds float, ptr %185, i64 %idxprom183
  %call185 = call float @sdot_(ptr noundef %i__1, ptr noundef %arrayidx179, ptr noundef @c__1, ptr noundef %arrayidx184, ptr noundef @c__1)
  %188 = load ptr, ptr %a.addr, align 8
  %189 = load i32, ptr %k, align 4
  %190 = load i32, ptr %k, align 4
  %add186 = add nsw i32 %190, 1
  %191 = load i32, ptr %a_dim1, align 4
  %mul187 = mul nsw i32 %add186, %191
  %add188 = add nsw i32 %189, %mul187
  %idxprom189 = sext i32 %add188 to i64
  %arrayidx190 = getelementptr inbounds float, ptr %188, i64 %idxprom189
  %192 = load float, ptr %arrayidx190, align 4
  %sub191 = fsub float %192, %call185
  store float %sub191, ptr %arrayidx190, align 4
  %193 = load i32, ptr %k, align 4
  %sub192 = sub nsw i32 %193, 1
  store i32 %sub192, ptr %i__1, align 4
  %194 = load ptr, ptr %a.addr, align 8
  %195 = load i32, ptr %k, align 4
  %add193 = add nsw i32 %195, 1
  %196 = load i32, ptr %a_dim1, align 4
  %mul194 = mul nsw i32 %add193, %196
  %add195 = add nsw i32 %mul194, 1
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds float, ptr %194, i64 %idxprom196
  %197 = load ptr, ptr %work.addr, align 8
  %arrayidx198 = getelementptr inbounds float, ptr %197, i64 1
  %call199 = call i32 @scopy_(ptr noundef %i__1, ptr noundef %arrayidx197, ptr noundef @c__1, ptr noundef %arrayidx198, ptr noundef @c__1)
  %198 = load i32, ptr %k, align 4
  %sub200 = sub nsw i32 %198, 1
  store i32 %sub200, ptr %i__1, align 4
  %199 = load ptr, ptr %uplo.addr, align 8
  %200 = load ptr, ptr %a.addr, align 8
  %201 = load i32, ptr %a_offset, align 4
  %idxprom201 = sext i32 %201 to i64
  %arrayidx202 = getelementptr inbounds float, ptr %200, i64 %idxprom201
  %202 = load ptr, ptr %lda.addr, align 8
  %203 = load ptr, ptr %work.addr, align 8
  %arrayidx203 = getelementptr inbounds float, ptr %203, i64 1
  %204 = load ptr, ptr %a.addr, align 8
  %205 = load i32, ptr %k, align 4
  %add204 = add nsw i32 %205, 1
  %206 = load i32, ptr %a_dim1, align 4
  %mul205 = mul nsw i32 %add204, %206
  %add206 = add nsw i32 %mul205, 1
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds float, ptr %204, i64 %idxprom207
  %call209 = call i32 @ssymv_(ptr noundef %199, ptr noundef %i__1, ptr noundef @c_b11, ptr noundef %arrayidx202, ptr noundef %202, ptr noundef %arrayidx203, ptr noundef @c__1, ptr noundef @c_b13, ptr noundef %arrayidx208, ptr noundef @c__1)
  %207 = load i32, ptr %k, align 4
  %sub210 = sub nsw i32 %207, 1
  store i32 %sub210, ptr %i__1, align 4
  %208 = load ptr, ptr %work.addr, align 8
  %arrayidx211 = getelementptr inbounds float, ptr %208, i64 1
  %209 = load ptr, ptr %a.addr, align 8
  %210 = load i32, ptr %k, align 4
  %add212 = add nsw i32 %210, 1
  %211 = load i32, ptr %a_dim1, align 4
  %mul213 = mul nsw i32 %add212, %211
  %add214 = add nsw i32 %mul213, 1
  %idxprom215 = sext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds float, ptr %209, i64 %idxprom215
  %call217 = call float @sdot_(ptr noundef %i__1, ptr noundef %arrayidx211, ptr noundef @c__1, ptr noundef %arrayidx216, ptr noundef @c__1)
  %212 = load ptr, ptr %a.addr, align 8
  %213 = load i32, ptr %k, align 4
  %add218 = add nsw i32 %213, 1
  %214 = load i32, ptr %k, align 4
  %add219 = add nsw i32 %214, 1
  %215 = load i32, ptr %a_dim1, align 4
  %mul220 = mul nsw i32 %add219, %215
  %add221 = add nsw i32 %add218, %mul220
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds float, ptr %212, i64 %idxprom222
  %216 = load float, ptr %arrayidx223, align 4
  %sub224 = fsub float %216, %call217
  store float %sub224, ptr %arrayidx223, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.then146, %cond.end104
  store i32 2, ptr %kstep, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.end94
  %217 = load i32, ptr %kstep, align 4
  %cmp227 = icmp eq i32 %217, 1
  br i1 %cmp227, label %if.then228, label %if.else276

if.then228:                                       ; preds = %if.end226
  %218 = load ptr, ptr %ipiv.addr, align 8
  %219 = load i32, ptr %k, align 4
  %idxprom229 = sext i32 %219 to i64
  %arrayidx230 = getelementptr inbounds i32, ptr %218, i64 %idxprom229
  %220 = load i32, ptr %arrayidx230, align 4
  store i32 %220, ptr %kp, align 4
  %221 = load i32, ptr %kp, align 4
  %222 = load i32, ptr %k, align 4
  %cmp231 = icmp ne i32 %221, %222
  br i1 %cmp231, label %if.then232, label %if.end275

if.then232:                                       ; preds = %if.then228
  %223 = load i32, ptr %kp, align 4
  %cmp233 = icmp sgt i32 %223, 1
  br i1 %cmp233, label %if.then234, label %if.end245

if.then234:                                       ; preds = %if.then232
  %224 = load i32, ptr %kp, align 4
  %sub235 = sub nsw i32 %224, 1
  store i32 %sub235, ptr %i__1, align 4
  %225 = load ptr, ptr %a.addr, align 8
  %226 = load i32, ptr %k, align 4
  %227 = load i32, ptr %a_dim1, align 4
  %mul236 = mul nsw i32 %226, %227
  %add237 = add nsw i32 %mul236, 1
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx239 = getelementptr inbounds float, ptr %225, i64 %idxprom238
  %228 = load ptr, ptr %a.addr, align 8
  %229 = load i32, ptr %kp, align 4
  %230 = load i32, ptr %a_dim1, align 4
  %mul240 = mul nsw i32 %229, %230
  %add241 = add nsw i32 %mul240, 1
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds float, ptr %228, i64 %idxprom242
  %call244 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx239, ptr noundef @c__1, ptr noundef %arrayidx243, ptr noundef @c__1)
  br label %if.end245

if.end245:                                        ; preds = %if.then234, %if.then232
  %231 = load i32, ptr %k, align 4
  %232 = load i32, ptr %kp, align 4
  %sub246 = sub nsw i32 %231, %232
  %sub247 = sub nsw i32 %sub246, 1
  store i32 %sub247, ptr %i__1, align 4
  %233 = load ptr, ptr %a.addr, align 8
  %234 = load i32, ptr %kp, align 4
  %add248 = add nsw i32 %234, 1
  %235 = load i32, ptr %k, align 4
  %236 = load i32, ptr %a_dim1, align 4
  %mul249 = mul nsw i32 %235, %236
  %add250 = add nsw i32 %add248, %mul249
  %idxprom251 = sext i32 %add250 to i64
  %arrayidx252 = getelementptr inbounds float, ptr %233, i64 %idxprom251
  %237 = load ptr, ptr %a.addr, align 8
  %238 = load i32, ptr %kp, align 4
  %239 = load i32, ptr %kp, align 4
  %add253 = add nsw i32 %239, 1
  %240 = load i32, ptr %a_dim1, align 4
  %mul254 = mul nsw i32 %add253, %240
  %add255 = add nsw i32 %238, %mul254
  %idxprom256 = sext i32 %add255 to i64
  %arrayidx257 = getelementptr inbounds float, ptr %237, i64 %idxprom256
  %241 = load ptr, ptr %lda.addr, align 8
  %call258 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx252, ptr noundef @c__1, ptr noundef %arrayidx257, ptr noundef %241)
  %242 = load ptr, ptr %a.addr, align 8
  %243 = load i32, ptr %k, align 4
  %244 = load i32, ptr %k, align 4
  %245 = load i32, ptr %a_dim1, align 4
  %mul259 = mul nsw i32 %244, %245
  %add260 = add nsw i32 %243, %mul259
  %idxprom261 = sext i32 %add260 to i64
  %arrayidx262 = getelementptr inbounds float, ptr %242, i64 %idxprom261
  %246 = load float, ptr %arrayidx262, align 4
  store float %246, ptr %temp, align 4
  %247 = load ptr, ptr %a.addr, align 8
  %248 = load i32, ptr %kp, align 4
  %249 = load i32, ptr %kp, align 4
  %250 = load i32, ptr %a_dim1, align 4
  %mul263 = mul nsw i32 %249, %250
  %add264 = add nsw i32 %248, %mul263
  %idxprom265 = sext i32 %add264 to i64
  %arrayidx266 = getelementptr inbounds float, ptr %247, i64 %idxprom265
  %251 = load float, ptr %arrayidx266, align 4
  %252 = load ptr, ptr %a.addr, align 8
  %253 = load i32, ptr %k, align 4
  %254 = load i32, ptr %k, align 4
  %255 = load i32, ptr %a_dim1, align 4
  %mul267 = mul nsw i32 %254, %255
  %add268 = add nsw i32 %253, %mul267
  %idxprom269 = sext i32 %add268 to i64
  %arrayidx270 = getelementptr inbounds float, ptr %252, i64 %idxprom269
  store float %251, ptr %arrayidx270, align 4
  %256 = load float, ptr %temp, align 4
  %257 = load ptr, ptr %a.addr, align 8
  %258 = load i32, ptr %kp, align 4
  %259 = load i32, ptr %kp, align 4
  %260 = load i32, ptr %a_dim1, align 4
  %mul271 = mul nsw i32 %259, %260
  %add272 = add nsw i32 %258, %mul271
  %idxprom273 = sext i32 %add272 to i64
  %arrayidx274 = getelementptr inbounds float, ptr %257, i64 %idxprom273
  store float %256, ptr %arrayidx274, align 4
  br label %if.end275

if.end275:                                        ; preds = %if.end245, %if.then228
  br label %if.end394

if.else276:                                       ; preds = %if.end226
  %261 = load ptr, ptr %ipiv.addr, align 8
  %262 = load i32, ptr %k, align 4
  %idxprom277 = sext i32 %262 to i64
  %arrayidx278 = getelementptr inbounds i32, ptr %261, i64 %idxprom277
  %263 = load i32, ptr %arrayidx278, align 4
  %sub279 = sub nsw i32 0, %263
  store i32 %sub279, ptr %kp, align 4
  %264 = load i32, ptr %kp, align 4
  %265 = load i32, ptr %k, align 4
  %cmp280 = icmp ne i32 %264, %265
  br i1 %cmp280, label %if.then281, label %if.end344

if.then281:                                       ; preds = %if.else276
  %266 = load i32, ptr %kp, align 4
  %cmp282 = icmp sgt i32 %266, 1
  br i1 %cmp282, label %if.then283, label %if.end294

if.then283:                                       ; preds = %if.then281
  %267 = load i32, ptr %kp, align 4
  %sub284 = sub nsw i32 %267, 1
  store i32 %sub284, ptr %i__1, align 4
  %268 = load ptr, ptr %a.addr, align 8
  %269 = load i32, ptr %k, align 4
  %270 = load i32, ptr %a_dim1, align 4
  %mul285 = mul nsw i32 %269, %270
  %add286 = add nsw i32 %mul285, 1
  %idxprom287 = sext i32 %add286 to i64
  %arrayidx288 = getelementptr inbounds float, ptr %268, i64 %idxprom287
  %271 = load ptr, ptr %a.addr, align 8
  %272 = load i32, ptr %kp, align 4
  %273 = load i32, ptr %a_dim1, align 4
  %mul289 = mul nsw i32 %272, %273
  %add290 = add nsw i32 %mul289, 1
  %idxprom291 = sext i32 %add290 to i64
  %arrayidx292 = getelementptr inbounds float, ptr %271, i64 %idxprom291
  %call293 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx288, ptr noundef @c__1, ptr noundef %arrayidx292, ptr noundef @c__1)
  br label %if.end294

if.end294:                                        ; preds = %if.then283, %if.then281
  %274 = load i32, ptr %k, align 4
  %275 = load i32, ptr %kp, align 4
  %sub295 = sub nsw i32 %274, %275
  %sub296 = sub nsw i32 %sub295, 1
  store i32 %sub296, ptr %i__1, align 4
  %276 = load ptr, ptr %a.addr, align 8
  %277 = load i32, ptr %kp, align 4
  %add297 = add nsw i32 %277, 1
  %278 = load i32, ptr %k, align 4
  %279 = load i32, ptr %a_dim1, align 4
  %mul298 = mul nsw i32 %278, %279
  %add299 = add nsw i32 %add297, %mul298
  %idxprom300 = sext i32 %add299 to i64
  %arrayidx301 = getelementptr inbounds float, ptr %276, i64 %idxprom300
  %280 = load ptr, ptr %a.addr, align 8
  %281 = load i32, ptr %kp, align 4
  %282 = load i32, ptr %kp, align 4
  %add302 = add nsw i32 %282, 1
  %283 = load i32, ptr %a_dim1, align 4
  %mul303 = mul nsw i32 %add302, %283
  %add304 = add nsw i32 %281, %mul303
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds float, ptr %280, i64 %idxprom305
  %284 = load ptr, ptr %lda.addr, align 8
  %call307 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx301, ptr noundef @c__1, ptr noundef %arrayidx306, ptr noundef %284)
  %285 = load ptr, ptr %a.addr, align 8
  %286 = load i32, ptr %k, align 4
  %287 = load i32, ptr %k, align 4
  %288 = load i32, ptr %a_dim1, align 4
  %mul308 = mul nsw i32 %287, %288
  %add309 = add nsw i32 %286, %mul308
  %idxprom310 = sext i32 %add309 to i64
  %arrayidx311 = getelementptr inbounds float, ptr %285, i64 %idxprom310
  %289 = load float, ptr %arrayidx311, align 4
  store float %289, ptr %temp, align 4
  %290 = load ptr, ptr %a.addr, align 8
  %291 = load i32, ptr %kp, align 4
  %292 = load i32, ptr %kp, align 4
  %293 = load i32, ptr %a_dim1, align 4
  %mul312 = mul nsw i32 %292, %293
  %add313 = add nsw i32 %291, %mul312
  %idxprom314 = sext i32 %add313 to i64
  %arrayidx315 = getelementptr inbounds float, ptr %290, i64 %idxprom314
  %294 = load float, ptr %arrayidx315, align 4
  %295 = load ptr, ptr %a.addr, align 8
  %296 = load i32, ptr %k, align 4
  %297 = load i32, ptr %k, align 4
  %298 = load i32, ptr %a_dim1, align 4
  %mul316 = mul nsw i32 %297, %298
  %add317 = add nsw i32 %296, %mul316
  %idxprom318 = sext i32 %add317 to i64
  %arrayidx319 = getelementptr inbounds float, ptr %295, i64 %idxprom318
  store float %294, ptr %arrayidx319, align 4
  %299 = load float, ptr %temp, align 4
  %300 = load ptr, ptr %a.addr, align 8
  %301 = load i32, ptr %kp, align 4
  %302 = load i32, ptr %kp, align 4
  %303 = load i32, ptr %a_dim1, align 4
  %mul320 = mul nsw i32 %302, %303
  %add321 = add nsw i32 %301, %mul320
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds float, ptr %300, i64 %idxprom322
  store float %299, ptr %arrayidx323, align 4
  %304 = load ptr, ptr %a.addr, align 8
  %305 = load i32, ptr %k, align 4
  %306 = load i32, ptr %k, align 4
  %add324 = add nsw i32 %306, 1
  %307 = load i32, ptr %a_dim1, align 4
  %mul325 = mul nsw i32 %add324, %307
  %add326 = add nsw i32 %305, %mul325
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds float, ptr %304, i64 %idxprom327
  %308 = load float, ptr %arrayidx328, align 4
  store float %308, ptr %temp, align 4
  %309 = load ptr, ptr %a.addr, align 8
  %310 = load i32, ptr %kp, align 4
  %311 = load i32, ptr %k, align 4
  %add329 = add nsw i32 %311, 1
  %312 = load i32, ptr %a_dim1, align 4
  %mul330 = mul nsw i32 %add329, %312
  %add331 = add nsw i32 %310, %mul330
  %idxprom332 = sext i32 %add331 to i64
  %arrayidx333 = getelementptr inbounds float, ptr %309, i64 %idxprom332
  %313 = load float, ptr %arrayidx333, align 4
  %314 = load ptr, ptr %a.addr, align 8
  %315 = load i32, ptr %k, align 4
  %316 = load i32, ptr %k, align 4
  %add334 = add nsw i32 %316, 1
  %317 = load i32, ptr %a_dim1, align 4
  %mul335 = mul nsw i32 %add334, %317
  %add336 = add nsw i32 %315, %mul335
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds float, ptr %314, i64 %idxprom337
  store float %313, ptr %arrayidx338, align 4
  %318 = load float, ptr %temp, align 4
  %319 = load ptr, ptr %a.addr, align 8
  %320 = load i32, ptr %kp, align 4
  %321 = load i32, ptr %k, align 4
  %add339 = add nsw i32 %321, 1
  %322 = load i32, ptr %a_dim1, align 4
  %mul340 = mul nsw i32 %add339, %322
  %add341 = add nsw i32 %320, %mul340
  %idxprom342 = sext i32 %add341 to i64
  %arrayidx343 = getelementptr inbounds float, ptr %319, i64 %idxprom342
  store float %318, ptr %arrayidx343, align 4
  br label %if.end344

if.end344:                                        ; preds = %if.end294, %if.else276
  %323 = load i32, ptr %k, align 4
  %inc345 = add nsw i32 %323, 1
  store i32 %inc345, ptr %k, align 4
  %324 = load ptr, ptr %ipiv.addr, align 8
  %325 = load i32, ptr %k, align 4
  %idxprom346 = sext i32 %325 to i64
  %arrayidx347 = getelementptr inbounds i32, ptr %324, i64 %idxprom346
  %326 = load i32, ptr %arrayidx347, align 4
  %sub348 = sub nsw i32 0, %326
  store i32 %sub348, ptr %kp, align 4
  %327 = load i32, ptr %kp, align 4
  %328 = load i32, ptr %k, align 4
  %cmp349 = icmp ne i32 %327, %328
  br i1 %cmp349, label %if.then350, label %if.end393

if.then350:                                       ; preds = %if.end344
  %329 = load i32, ptr %kp, align 4
  %cmp351 = icmp sgt i32 %329, 1
  br i1 %cmp351, label %if.then352, label %if.end363

if.then352:                                       ; preds = %if.then350
  %330 = load i32, ptr %kp, align 4
  %sub353 = sub nsw i32 %330, 1
  store i32 %sub353, ptr %i__1, align 4
  %331 = load ptr, ptr %a.addr, align 8
  %332 = load i32, ptr %k, align 4
  %333 = load i32, ptr %a_dim1, align 4
  %mul354 = mul nsw i32 %332, %333
  %add355 = add nsw i32 %mul354, 1
  %idxprom356 = sext i32 %add355 to i64
  %arrayidx357 = getelementptr inbounds float, ptr %331, i64 %idxprom356
  %334 = load ptr, ptr %a.addr, align 8
  %335 = load i32, ptr %kp, align 4
  %336 = load i32, ptr %a_dim1, align 4
  %mul358 = mul nsw i32 %335, %336
  %add359 = add nsw i32 %mul358, 1
  %idxprom360 = sext i32 %add359 to i64
  %arrayidx361 = getelementptr inbounds float, ptr %334, i64 %idxprom360
  %call362 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx357, ptr noundef @c__1, ptr noundef %arrayidx361, ptr noundef @c__1)
  br label %if.end363

if.end363:                                        ; preds = %if.then352, %if.then350
  %337 = load i32, ptr %k, align 4
  %338 = load i32, ptr %kp, align 4
  %sub364 = sub nsw i32 %337, %338
  %sub365 = sub nsw i32 %sub364, 1
  store i32 %sub365, ptr %i__1, align 4
  %339 = load ptr, ptr %a.addr, align 8
  %340 = load i32, ptr %kp, align 4
  %add366 = add nsw i32 %340, 1
  %341 = load i32, ptr %k, align 4
  %342 = load i32, ptr %a_dim1, align 4
  %mul367 = mul nsw i32 %341, %342
  %add368 = add nsw i32 %add366, %mul367
  %idxprom369 = sext i32 %add368 to i64
  %arrayidx370 = getelementptr inbounds float, ptr %339, i64 %idxprom369
  %343 = load ptr, ptr %a.addr, align 8
  %344 = load i32, ptr %kp, align 4
  %345 = load i32, ptr %kp, align 4
  %add371 = add nsw i32 %345, 1
  %346 = load i32, ptr %a_dim1, align 4
  %mul372 = mul nsw i32 %add371, %346
  %add373 = add nsw i32 %344, %mul372
  %idxprom374 = sext i32 %add373 to i64
  %arrayidx375 = getelementptr inbounds float, ptr %343, i64 %idxprom374
  %347 = load ptr, ptr %lda.addr, align 8
  %call376 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx370, ptr noundef @c__1, ptr noundef %arrayidx375, ptr noundef %347)
  %348 = load ptr, ptr %a.addr, align 8
  %349 = load i32, ptr %k, align 4
  %350 = load i32, ptr %k, align 4
  %351 = load i32, ptr %a_dim1, align 4
  %mul377 = mul nsw i32 %350, %351
  %add378 = add nsw i32 %349, %mul377
  %idxprom379 = sext i32 %add378 to i64
  %arrayidx380 = getelementptr inbounds float, ptr %348, i64 %idxprom379
  %352 = load float, ptr %arrayidx380, align 4
  store float %352, ptr %temp, align 4
  %353 = load ptr, ptr %a.addr, align 8
  %354 = load i32, ptr %kp, align 4
  %355 = load i32, ptr %kp, align 4
  %356 = load i32, ptr %a_dim1, align 4
  %mul381 = mul nsw i32 %355, %356
  %add382 = add nsw i32 %354, %mul381
  %idxprom383 = sext i32 %add382 to i64
  %arrayidx384 = getelementptr inbounds float, ptr %353, i64 %idxprom383
  %357 = load float, ptr %arrayidx384, align 4
  %358 = load ptr, ptr %a.addr, align 8
  %359 = load i32, ptr %k, align 4
  %360 = load i32, ptr %k, align 4
  %361 = load i32, ptr %a_dim1, align 4
  %mul385 = mul nsw i32 %360, %361
  %add386 = add nsw i32 %359, %mul385
  %idxprom387 = sext i32 %add386 to i64
  %arrayidx388 = getelementptr inbounds float, ptr %358, i64 %idxprom387
  store float %357, ptr %arrayidx388, align 4
  %362 = load float, ptr %temp, align 4
  %363 = load ptr, ptr %a.addr, align 8
  %364 = load i32, ptr %kp, align 4
  %365 = load i32, ptr %kp, align 4
  %366 = load i32, ptr %a_dim1, align 4
  %mul389 = mul nsw i32 %365, %366
  %add390 = add nsw i32 %364, %mul389
  %idxprom391 = sext i32 %add390 to i64
  %arrayidx392 = getelementptr inbounds float, ptr %363, i64 %idxprom391
  store float %362, ptr %arrayidx392, align 4
  br label %if.end393

if.end393:                                        ; preds = %if.end363, %if.end344
  br label %if.end394

if.end394:                                        ; preds = %if.end393, %if.end275
  %367 = load i32, ptr %k, align 4
  %inc395 = add nsw i32 %367, 1
  store i32 %inc395, ptr %k, align 4
  br label %L30

L40:                                              ; preds = %if.then50
  br label %if.end775

if.else396:                                       ; preds = %if.end46
  %368 = load ptr, ptr %n.addr, align 8
  %369 = load i32, ptr %368, align 4
  store i32 %369, ptr %k, align 4
  br label %L50

L50:                                              ; preds = %if.end773, %if.else396
  %370 = load i32, ptr %k, align 4
  %cmp397 = icmp slt i32 %370, 1
  br i1 %cmp397, label %if.then398, label %if.end399

if.then398:                                       ; preds = %L50
  br label %L60

if.end399:                                        ; preds = %L50
  %371 = load ptr, ptr %ipiv.addr, align 8
  %372 = load i32, ptr %k, align 4
  %idxprom400 = sext i32 %372 to i64
  %arrayidx401 = getelementptr inbounds i32, ptr %371, i64 %idxprom400
  %373 = load i32, ptr %arrayidx401, align 4
  %cmp402 = icmp sgt i32 %373, 0
  br i1 %cmp402, label %if.then403, label %if.else451

if.then403:                                       ; preds = %if.end399
  %374 = load ptr, ptr %a.addr, align 8
  %375 = load i32, ptr %k, align 4
  %376 = load i32, ptr %k, align 4
  %377 = load i32, ptr %a_dim1, align 4
  %mul404 = mul nsw i32 %376, %377
  %add405 = add nsw i32 %375, %mul404
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds float, ptr %374, i64 %idxprom406
  %378 = load float, ptr %arrayidx407, align 4
  %div408 = fdiv float 1.000000e+00, %378
  %379 = load ptr, ptr %a.addr, align 8
  %380 = load i32, ptr %k, align 4
  %381 = load i32, ptr %k, align 4
  %382 = load i32, ptr %a_dim1, align 4
  %mul409 = mul nsw i32 %381, %382
  %add410 = add nsw i32 %380, %mul409
  %idxprom411 = sext i32 %add410 to i64
  %arrayidx412 = getelementptr inbounds float, ptr %379, i64 %idxprom411
  store float %div408, ptr %arrayidx412, align 4
  %383 = load i32, ptr %k, align 4
  %384 = load ptr, ptr %n.addr, align 8
  %385 = load i32, ptr %384, align 4
  %cmp413 = icmp slt i32 %383, %385
  br i1 %cmp413, label %if.then414, label %if.end450

if.then414:                                       ; preds = %if.then403
  %386 = load ptr, ptr %n.addr, align 8
  %387 = load i32, ptr %386, align 4
  %388 = load i32, ptr %k, align 4
  %sub415 = sub nsw i32 %387, %388
  store i32 %sub415, ptr %i__1, align 4
  %389 = load ptr, ptr %a.addr, align 8
  %390 = load i32, ptr %k, align 4
  %add416 = add nsw i32 %390, 1
  %391 = load i32, ptr %k, align 4
  %392 = load i32, ptr %a_dim1, align 4
  %mul417 = mul nsw i32 %391, %392
  %add418 = add nsw i32 %add416, %mul417
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds float, ptr %389, i64 %idxprom419
  %393 = load ptr, ptr %work.addr, align 8
  %arrayidx421 = getelementptr inbounds float, ptr %393, i64 1
  %call422 = call i32 @scopy_(ptr noundef %i__1, ptr noundef %arrayidx420, ptr noundef @c__1, ptr noundef %arrayidx421, ptr noundef @c__1)
  %394 = load ptr, ptr %n.addr, align 8
  %395 = load i32, ptr %394, align 4
  %396 = load i32, ptr %k, align 4
  %sub423 = sub nsw i32 %395, %396
  store i32 %sub423, ptr %i__1, align 4
  %397 = load ptr, ptr %uplo.addr, align 8
  %398 = load ptr, ptr %a.addr, align 8
  %399 = load i32, ptr %k, align 4
  %add424 = add nsw i32 %399, 1
  %400 = load i32, ptr %k, align 4
  %add425 = add nsw i32 %400, 1
  %401 = load i32, ptr %a_dim1, align 4
  %mul426 = mul nsw i32 %add425, %401
  %add427 = add nsw i32 %add424, %mul426
  %idxprom428 = sext i32 %add427 to i64
  %arrayidx429 = getelementptr inbounds float, ptr %398, i64 %idxprom428
  %402 = load ptr, ptr %lda.addr, align 8
  %403 = load ptr, ptr %work.addr, align 8
  %arrayidx430 = getelementptr inbounds float, ptr %403, i64 1
  %404 = load ptr, ptr %a.addr, align 8
  %405 = load i32, ptr %k, align 4
  %add431 = add nsw i32 %405, 1
  %406 = load i32, ptr %k, align 4
  %407 = load i32, ptr %a_dim1, align 4
  %mul432 = mul nsw i32 %406, %407
  %add433 = add nsw i32 %add431, %mul432
  %idxprom434 = sext i32 %add433 to i64
  %arrayidx435 = getelementptr inbounds float, ptr %404, i64 %idxprom434
  %call436 = call i32 @ssymv_(ptr noundef %397, ptr noundef %i__1, ptr noundef @c_b11, ptr noundef %arrayidx429, ptr noundef %402, ptr noundef %arrayidx430, ptr noundef @c__1, ptr noundef @c_b13, ptr noundef %arrayidx435, ptr noundef @c__1)
  %408 = load ptr, ptr %n.addr, align 8
  %409 = load i32, ptr %408, align 4
  %410 = load i32, ptr %k, align 4
  %sub437 = sub nsw i32 %409, %410
  store i32 %sub437, ptr %i__1, align 4
  %411 = load ptr, ptr %work.addr, align 8
  %arrayidx438 = getelementptr inbounds float, ptr %411, i64 1
  %412 = load ptr, ptr %a.addr, align 8
  %413 = load i32, ptr %k, align 4
  %add439 = add nsw i32 %413, 1
  %414 = load i32, ptr %k, align 4
  %415 = load i32, ptr %a_dim1, align 4
  %mul440 = mul nsw i32 %414, %415
  %add441 = add nsw i32 %add439, %mul440
  %idxprom442 = sext i32 %add441 to i64
  %arrayidx443 = getelementptr inbounds float, ptr %412, i64 %idxprom442
  %call444 = call float @sdot_(ptr noundef %i__1, ptr noundef %arrayidx438, ptr noundef @c__1, ptr noundef %arrayidx443, ptr noundef @c__1)
  %416 = load ptr, ptr %a.addr, align 8
  %417 = load i32, ptr %k, align 4
  %418 = load i32, ptr %k, align 4
  %419 = load i32, ptr %a_dim1, align 4
  %mul445 = mul nsw i32 %418, %419
  %add446 = add nsw i32 %417, %mul445
  %idxprom447 = sext i32 %add446 to i64
  %arrayidx448 = getelementptr inbounds float, ptr %416, i64 %idxprom447
  %420 = load float, ptr %arrayidx448, align 4
  %sub449 = fsub float %420, %call444
  store float %sub449, ptr %arrayidx448, align 4
  br label %if.end450

if.end450:                                        ; preds = %if.then414, %if.then403
  store i32 1, ptr %kstep, align 4
  br label %if.end599

if.else451:                                       ; preds = %if.end399
  %421 = load ptr, ptr %a.addr, align 8
  %422 = load i32, ptr %k, align 4
  %423 = load i32, ptr %k, align 4
  %sub452 = sub nsw i32 %423, 1
  %424 = load i32, ptr %a_dim1, align 4
  %mul453 = mul nsw i32 %sub452, %424
  %add454 = add nsw i32 %422, %mul453
  %idxprom455 = sext i32 %add454 to i64
  %arrayidx456 = getelementptr inbounds float, ptr %421, i64 %idxprom455
  %425 = load float, ptr %arrayidx456, align 4
  store float %425, ptr %r__1, align 4
  %426 = load float, ptr %r__1, align 4
  %cmp457 = fcmp oge float %426, 0.000000e+00
  br i1 %cmp457, label %cond.true458, label %cond.false459

cond.true458:                                     ; preds = %if.else451
  %427 = load float, ptr %r__1, align 4
  br label %cond.end461

cond.false459:                                    ; preds = %if.else451
  %428 = load float, ptr %r__1, align 4
  %fneg460 = fneg float %428
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false459, %cond.true458
  %cond462 = phi float [ %427, %cond.true458 ], [ %fneg460, %cond.false459 ]
  store float %cond462, ptr %t, align 4
  %429 = load ptr, ptr %a.addr, align 8
  %430 = load i32, ptr %k, align 4
  %sub463 = sub nsw i32 %430, 1
  %431 = load i32, ptr %k, align 4
  %sub464 = sub nsw i32 %431, 1
  %432 = load i32, ptr %a_dim1, align 4
  %mul465 = mul nsw i32 %sub464, %432
  %add466 = add nsw i32 %sub463, %mul465
  %idxprom467 = sext i32 %add466 to i64
  %arrayidx468 = getelementptr inbounds float, ptr %429, i64 %idxprom467
  %433 = load float, ptr %arrayidx468, align 4
  %434 = load float, ptr %t, align 4
  %div469 = fdiv float %433, %434
  store float %div469, ptr %ak, align 4
  %435 = load ptr, ptr %a.addr, align 8
  %436 = load i32, ptr %k, align 4
  %437 = load i32, ptr %k, align 4
  %438 = load i32, ptr %a_dim1, align 4
  %mul470 = mul nsw i32 %437, %438
  %add471 = add nsw i32 %436, %mul470
  %idxprom472 = sext i32 %add471 to i64
  %arrayidx473 = getelementptr inbounds float, ptr %435, i64 %idxprom472
  %439 = load float, ptr %arrayidx473, align 4
  %440 = load float, ptr %t, align 4
  %div474 = fdiv float %439, %440
  store float %div474, ptr %akp1, align 4
  %441 = load ptr, ptr %a.addr, align 8
  %442 = load i32, ptr %k, align 4
  %443 = load i32, ptr %k, align 4
  %sub475 = sub nsw i32 %443, 1
  %444 = load i32, ptr %a_dim1, align 4
  %mul476 = mul nsw i32 %sub475, %444
  %add477 = add nsw i32 %442, %mul476
  %idxprom478 = sext i32 %add477 to i64
  %arrayidx479 = getelementptr inbounds float, ptr %441, i64 %idxprom478
  %445 = load float, ptr %arrayidx479, align 4
  %446 = load float, ptr %t, align 4
  %div480 = fdiv float %445, %446
  store float %div480, ptr %akkp1, align 4
  %447 = load float, ptr %t, align 4
  %448 = load float, ptr %ak, align 4
  %449 = load float, ptr %akp1, align 4
  %450 = call float @llvm.fmuladd.f32(float %448, float %449, float -1.000000e+00)
  %mul482 = fmul float %447, %450
  store float %mul482, ptr %d__, align 4
  %451 = load float, ptr %akp1, align 4
  %452 = load float, ptr %d__, align 4
  %div483 = fdiv float %451, %452
  %453 = load ptr, ptr %a.addr, align 8
  %454 = load i32, ptr %k, align 4
  %sub484 = sub nsw i32 %454, 1
  %455 = load i32, ptr %k, align 4
  %sub485 = sub nsw i32 %455, 1
  %456 = load i32, ptr %a_dim1, align 4
  %mul486 = mul nsw i32 %sub485, %456
  %add487 = add nsw i32 %sub484, %mul486
  %idxprom488 = sext i32 %add487 to i64
  %arrayidx489 = getelementptr inbounds float, ptr %453, i64 %idxprom488
  store float %div483, ptr %arrayidx489, align 4
  %457 = load float, ptr %ak, align 4
  %458 = load float, ptr %d__, align 4
  %div490 = fdiv float %457, %458
  %459 = load ptr, ptr %a.addr, align 8
  %460 = load i32, ptr %k, align 4
  %461 = load i32, ptr %k, align 4
  %462 = load i32, ptr %a_dim1, align 4
  %mul491 = mul nsw i32 %461, %462
  %add492 = add nsw i32 %460, %mul491
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds float, ptr %459, i64 %idxprom493
  store float %div490, ptr %arrayidx494, align 4
  %463 = load float, ptr %akkp1, align 4
  %fneg495 = fneg float %463
  %464 = load float, ptr %d__, align 4
  %div496 = fdiv float %fneg495, %464
  %465 = load ptr, ptr %a.addr, align 8
  %466 = load i32, ptr %k, align 4
  %467 = load i32, ptr %k, align 4
  %sub497 = sub nsw i32 %467, 1
  %468 = load i32, ptr %a_dim1, align 4
  %mul498 = mul nsw i32 %sub497, %468
  %add499 = add nsw i32 %466, %mul498
  %idxprom500 = sext i32 %add499 to i64
  %arrayidx501 = getelementptr inbounds float, ptr %465, i64 %idxprom500
  store float %div496, ptr %arrayidx501, align 4
  %469 = load i32, ptr %k, align 4
  %470 = load ptr, ptr %n.addr, align 8
  %471 = load i32, ptr %470, align 4
  %cmp502 = icmp slt i32 %469, %471
  br i1 %cmp502, label %if.then503, label %if.end598

if.then503:                                       ; preds = %cond.end461
  %472 = load ptr, ptr %n.addr, align 8
  %473 = load i32, ptr %472, align 4
  %474 = load i32, ptr %k, align 4
  %sub504 = sub nsw i32 %473, %474
  store i32 %sub504, ptr %i__1, align 4
  %475 = load ptr, ptr %a.addr, align 8
  %476 = load i32, ptr %k, align 4
  %add505 = add nsw i32 %476, 1
  %477 = load i32, ptr %k, align 4
  %478 = load i32, ptr %a_dim1, align 4
  %mul506 = mul nsw i32 %477, %478
  %add507 = add nsw i32 %add505, %mul506
  %idxprom508 = sext i32 %add507 to i64
  %arrayidx509 = getelementptr inbounds float, ptr %475, i64 %idxprom508
  %479 = load ptr, ptr %work.addr, align 8
  %arrayidx510 = getelementptr inbounds float, ptr %479, i64 1
  %call511 = call i32 @scopy_(ptr noundef %i__1, ptr noundef %arrayidx509, ptr noundef @c__1, ptr noundef %arrayidx510, ptr noundef @c__1)
  %480 = load ptr, ptr %n.addr, align 8
  %481 = load i32, ptr %480, align 4
  %482 = load i32, ptr %k, align 4
  %sub512 = sub nsw i32 %481, %482
  store i32 %sub512, ptr %i__1, align 4
  %483 = load ptr, ptr %uplo.addr, align 8
  %484 = load ptr, ptr %a.addr, align 8
  %485 = load i32, ptr %k, align 4
  %add513 = add nsw i32 %485, 1
  %486 = load i32, ptr %k, align 4
  %add514 = add nsw i32 %486, 1
  %487 = load i32, ptr %a_dim1, align 4
  %mul515 = mul nsw i32 %add514, %487
  %add516 = add nsw i32 %add513, %mul515
  %idxprom517 = sext i32 %add516 to i64
  %arrayidx518 = getelementptr inbounds float, ptr %484, i64 %idxprom517
  %488 = load ptr, ptr %lda.addr, align 8
  %489 = load ptr, ptr %work.addr, align 8
  %arrayidx519 = getelementptr inbounds float, ptr %489, i64 1
  %490 = load ptr, ptr %a.addr, align 8
  %491 = load i32, ptr %k, align 4
  %add520 = add nsw i32 %491, 1
  %492 = load i32, ptr %k, align 4
  %493 = load i32, ptr %a_dim1, align 4
  %mul521 = mul nsw i32 %492, %493
  %add522 = add nsw i32 %add520, %mul521
  %idxprom523 = sext i32 %add522 to i64
  %arrayidx524 = getelementptr inbounds float, ptr %490, i64 %idxprom523
  %call525 = call i32 @ssymv_(ptr noundef %483, ptr noundef %i__1, ptr noundef @c_b11, ptr noundef %arrayidx518, ptr noundef %488, ptr noundef %arrayidx519, ptr noundef @c__1, ptr noundef @c_b13, ptr noundef %arrayidx524, ptr noundef @c__1)
  %494 = load ptr, ptr %n.addr, align 8
  %495 = load i32, ptr %494, align 4
  %496 = load i32, ptr %k, align 4
  %sub526 = sub nsw i32 %495, %496
  store i32 %sub526, ptr %i__1, align 4
  %497 = load ptr, ptr %work.addr, align 8
  %arrayidx527 = getelementptr inbounds float, ptr %497, i64 1
  %498 = load ptr, ptr %a.addr, align 8
  %499 = load i32, ptr %k, align 4
  %add528 = add nsw i32 %499, 1
  %500 = load i32, ptr %k, align 4
  %501 = load i32, ptr %a_dim1, align 4
  %mul529 = mul nsw i32 %500, %501
  %add530 = add nsw i32 %add528, %mul529
  %idxprom531 = sext i32 %add530 to i64
  %arrayidx532 = getelementptr inbounds float, ptr %498, i64 %idxprom531
  %call533 = call float @sdot_(ptr noundef %i__1, ptr noundef %arrayidx527, ptr noundef @c__1, ptr noundef %arrayidx532, ptr noundef @c__1)
  %502 = load ptr, ptr %a.addr, align 8
  %503 = load i32, ptr %k, align 4
  %504 = load i32, ptr %k, align 4
  %505 = load i32, ptr %a_dim1, align 4
  %mul534 = mul nsw i32 %504, %505
  %add535 = add nsw i32 %503, %mul534
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds float, ptr %502, i64 %idxprom536
  %506 = load float, ptr %arrayidx537, align 4
  %sub538 = fsub float %506, %call533
  store float %sub538, ptr %arrayidx537, align 4
  %507 = load ptr, ptr %n.addr, align 8
  %508 = load i32, ptr %507, align 4
  %509 = load i32, ptr %k, align 4
  %sub539 = sub nsw i32 %508, %509
  store i32 %sub539, ptr %i__1, align 4
  %510 = load ptr, ptr %a.addr, align 8
  %511 = load i32, ptr %k, align 4
  %add540 = add nsw i32 %511, 1
  %512 = load i32, ptr %k, align 4
  %513 = load i32, ptr %a_dim1, align 4
  %mul541 = mul nsw i32 %512, %513
  %add542 = add nsw i32 %add540, %mul541
  %idxprom543 = sext i32 %add542 to i64
  %arrayidx544 = getelementptr inbounds float, ptr %510, i64 %idxprom543
  %514 = load ptr, ptr %a.addr, align 8
  %515 = load i32, ptr %k, align 4
  %add545 = add nsw i32 %515, 1
  %516 = load i32, ptr %k, align 4
  %sub546 = sub nsw i32 %516, 1
  %517 = load i32, ptr %a_dim1, align 4
  %mul547 = mul nsw i32 %sub546, %517
  %add548 = add nsw i32 %add545, %mul547
  %idxprom549 = sext i32 %add548 to i64
  %arrayidx550 = getelementptr inbounds float, ptr %514, i64 %idxprom549
  %call551 = call float @sdot_(ptr noundef %i__1, ptr noundef %arrayidx544, ptr noundef @c__1, ptr noundef %arrayidx550, ptr noundef @c__1)
  %518 = load ptr, ptr %a.addr, align 8
  %519 = load i32, ptr %k, align 4
  %520 = load i32, ptr %k, align 4
  %sub552 = sub nsw i32 %520, 1
  %521 = load i32, ptr %a_dim1, align 4
  %mul553 = mul nsw i32 %sub552, %521
  %add554 = add nsw i32 %519, %mul553
  %idxprom555 = sext i32 %add554 to i64
  %arrayidx556 = getelementptr inbounds float, ptr %518, i64 %idxprom555
  %522 = load float, ptr %arrayidx556, align 4
  %sub557 = fsub float %522, %call551
  store float %sub557, ptr %arrayidx556, align 4
  %523 = load ptr, ptr %n.addr, align 8
  %524 = load i32, ptr %523, align 4
  %525 = load i32, ptr %k, align 4
  %sub558 = sub nsw i32 %524, %525
  store i32 %sub558, ptr %i__1, align 4
  %526 = load ptr, ptr %a.addr, align 8
  %527 = load i32, ptr %k, align 4
  %add559 = add nsw i32 %527, 1
  %528 = load i32, ptr %k, align 4
  %sub560 = sub nsw i32 %528, 1
  %529 = load i32, ptr %a_dim1, align 4
  %mul561 = mul nsw i32 %sub560, %529
  %add562 = add nsw i32 %add559, %mul561
  %idxprom563 = sext i32 %add562 to i64
  %arrayidx564 = getelementptr inbounds float, ptr %526, i64 %idxprom563
  %530 = load ptr, ptr %work.addr, align 8
  %arrayidx565 = getelementptr inbounds float, ptr %530, i64 1
  %call566 = call i32 @scopy_(ptr noundef %i__1, ptr noundef %arrayidx564, ptr noundef @c__1, ptr noundef %arrayidx565, ptr noundef @c__1)
  %531 = load ptr, ptr %n.addr, align 8
  %532 = load i32, ptr %531, align 4
  %533 = load i32, ptr %k, align 4
  %sub567 = sub nsw i32 %532, %533
  store i32 %sub567, ptr %i__1, align 4
  %534 = load ptr, ptr %uplo.addr, align 8
  %535 = load ptr, ptr %a.addr, align 8
  %536 = load i32, ptr %k, align 4
  %add568 = add nsw i32 %536, 1
  %537 = load i32, ptr %k, align 4
  %add569 = add nsw i32 %537, 1
  %538 = load i32, ptr %a_dim1, align 4
  %mul570 = mul nsw i32 %add569, %538
  %add571 = add nsw i32 %add568, %mul570
  %idxprom572 = sext i32 %add571 to i64
  %arrayidx573 = getelementptr inbounds float, ptr %535, i64 %idxprom572
  %539 = load ptr, ptr %lda.addr, align 8
  %540 = load ptr, ptr %work.addr, align 8
  %arrayidx574 = getelementptr inbounds float, ptr %540, i64 1
  %541 = load ptr, ptr %a.addr, align 8
  %542 = load i32, ptr %k, align 4
  %add575 = add nsw i32 %542, 1
  %543 = load i32, ptr %k, align 4
  %sub576 = sub nsw i32 %543, 1
  %544 = load i32, ptr %a_dim1, align 4
  %mul577 = mul nsw i32 %sub576, %544
  %add578 = add nsw i32 %add575, %mul577
  %idxprom579 = sext i32 %add578 to i64
  %arrayidx580 = getelementptr inbounds float, ptr %541, i64 %idxprom579
  %call581 = call i32 @ssymv_(ptr noundef %534, ptr noundef %i__1, ptr noundef @c_b11, ptr noundef %arrayidx573, ptr noundef %539, ptr noundef %arrayidx574, ptr noundef @c__1, ptr noundef @c_b13, ptr noundef %arrayidx580, ptr noundef @c__1)
  %545 = load ptr, ptr %n.addr, align 8
  %546 = load i32, ptr %545, align 4
  %547 = load i32, ptr %k, align 4
  %sub582 = sub nsw i32 %546, %547
  store i32 %sub582, ptr %i__1, align 4
  %548 = load ptr, ptr %work.addr, align 8
  %arrayidx583 = getelementptr inbounds float, ptr %548, i64 1
  %549 = load ptr, ptr %a.addr, align 8
  %550 = load i32, ptr %k, align 4
  %add584 = add nsw i32 %550, 1
  %551 = load i32, ptr %k, align 4
  %sub585 = sub nsw i32 %551, 1
  %552 = load i32, ptr %a_dim1, align 4
  %mul586 = mul nsw i32 %sub585, %552
  %add587 = add nsw i32 %add584, %mul586
  %idxprom588 = sext i32 %add587 to i64
  %arrayidx589 = getelementptr inbounds float, ptr %549, i64 %idxprom588
  %call590 = call float @sdot_(ptr noundef %i__1, ptr noundef %arrayidx583, ptr noundef @c__1, ptr noundef %arrayidx589, ptr noundef @c__1)
  %553 = load ptr, ptr %a.addr, align 8
  %554 = load i32, ptr %k, align 4
  %sub591 = sub nsw i32 %554, 1
  %555 = load i32, ptr %k, align 4
  %sub592 = sub nsw i32 %555, 1
  %556 = load i32, ptr %a_dim1, align 4
  %mul593 = mul nsw i32 %sub592, %556
  %add594 = add nsw i32 %sub591, %mul593
  %idxprom595 = sext i32 %add594 to i64
  %arrayidx596 = getelementptr inbounds float, ptr %553, i64 %idxprom595
  %557 = load float, ptr %arrayidx596, align 4
  %sub597 = fsub float %557, %call590
  store float %sub597, ptr %arrayidx596, align 4
  br label %if.end598

if.end598:                                        ; preds = %if.then503, %cond.end461
  store i32 2, ptr %kstep, align 4
  br label %if.end599

if.end599:                                        ; preds = %if.end598, %if.end450
  %558 = load i32, ptr %kstep, align 4
  %cmp600 = icmp eq i32 %558, 1
  br i1 %cmp600, label %if.then601, label %if.else651

if.then601:                                       ; preds = %if.end599
  %559 = load ptr, ptr %ipiv.addr, align 8
  %560 = load i32, ptr %k, align 4
  %idxprom602 = sext i32 %560 to i64
  %arrayidx603 = getelementptr inbounds i32, ptr %559, i64 %idxprom602
  %561 = load i32, ptr %arrayidx603, align 4
  store i32 %561, ptr %kp, align 4
  %562 = load i32, ptr %kp, align 4
  %563 = load i32, ptr %k, align 4
  %cmp604 = icmp ne i32 %562, %563
  br i1 %cmp604, label %if.then605, label %if.end650

if.then605:                                       ; preds = %if.then601
  %564 = load i32, ptr %kp, align 4
  %565 = load ptr, ptr %n.addr, align 8
  %566 = load i32, ptr %565, align 4
  %cmp606 = icmp slt i32 %564, %566
  br i1 %cmp606, label %if.then607, label %if.end620

if.then607:                                       ; preds = %if.then605
  %567 = load ptr, ptr %n.addr, align 8
  %568 = load i32, ptr %567, align 4
  %569 = load i32, ptr %kp, align 4
  %sub608 = sub nsw i32 %568, %569
  store i32 %sub608, ptr %i__1, align 4
  %570 = load ptr, ptr %a.addr, align 8
  %571 = load i32, ptr %kp, align 4
  %add609 = add nsw i32 %571, 1
  %572 = load i32, ptr %k, align 4
  %573 = load i32, ptr %a_dim1, align 4
  %mul610 = mul nsw i32 %572, %573
  %add611 = add nsw i32 %add609, %mul610
  %idxprom612 = sext i32 %add611 to i64
  %arrayidx613 = getelementptr inbounds float, ptr %570, i64 %idxprom612
  %574 = load ptr, ptr %a.addr, align 8
  %575 = load i32, ptr %kp, align 4
  %add614 = add nsw i32 %575, 1
  %576 = load i32, ptr %kp, align 4
  %577 = load i32, ptr %a_dim1, align 4
  %mul615 = mul nsw i32 %576, %577
  %add616 = add nsw i32 %add614, %mul615
  %idxprom617 = sext i32 %add616 to i64
  %arrayidx618 = getelementptr inbounds float, ptr %574, i64 %idxprom617
  %call619 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx613, ptr noundef @c__1, ptr noundef %arrayidx618, ptr noundef @c__1)
  br label %if.end620

if.end620:                                        ; preds = %if.then607, %if.then605
  %578 = load i32, ptr %kp, align 4
  %579 = load i32, ptr %k, align 4
  %sub621 = sub nsw i32 %578, %579
  %sub622 = sub nsw i32 %sub621, 1
  store i32 %sub622, ptr %i__1, align 4
  %580 = load ptr, ptr %a.addr, align 8
  %581 = load i32, ptr %k, align 4
  %add623 = add nsw i32 %581, 1
  %582 = load i32, ptr %k, align 4
  %583 = load i32, ptr %a_dim1, align 4
  %mul624 = mul nsw i32 %582, %583
  %add625 = add nsw i32 %add623, %mul624
  %idxprom626 = sext i32 %add625 to i64
  %arrayidx627 = getelementptr inbounds float, ptr %580, i64 %idxprom626
  %584 = load ptr, ptr %a.addr, align 8
  %585 = load i32, ptr %kp, align 4
  %586 = load i32, ptr %k, align 4
  %add628 = add nsw i32 %586, 1
  %587 = load i32, ptr %a_dim1, align 4
  %mul629 = mul nsw i32 %add628, %587
  %add630 = add nsw i32 %585, %mul629
  %idxprom631 = sext i32 %add630 to i64
  %arrayidx632 = getelementptr inbounds float, ptr %584, i64 %idxprom631
  %588 = load ptr, ptr %lda.addr, align 8
  %call633 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx627, ptr noundef @c__1, ptr noundef %arrayidx632, ptr noundef %588)
  %589 = load ptr, ptr %a.addr, align 8
  %590 = load i32, ptr %k, align 4
  %591 = load i32, ptr %k, align 4
  %592 = load i32, ptr %a_dim1, align 4
  %mul634 = mul nsw i32 %591, %592
  %add635 = add nsw i32 %590, %mul634
  %idxprom636 = sext i32 %add635 to i64
  %arrayidx637 = getelementptr inbounds float, ptr %589, i64 %idxprom636
  %593 = load float, ptr %arrayidx637, align 4
  store float %593, ptr %temp, align 4
  %594 = load ptr, ptr %a.addr, align 8
  %595 = load i32, ptr %kp, align 4
  %596 = load i32, ptr %kp, align 4
  %597 = load i32, ptr %a_dim1, align 4
  %mul638 = mul nsw i32 %596, %597
  %add639 = add nsw i32 %595, %mul638
  %idxprom640 = sext i32 %add639 to i64
  %arrayidx641 = getelementptr inbounds float, ptr %594, i64 %idxprom640
  %598 = load float, ptr %arrayidx641, align 4
  %599 = load ptr, ptr %a.addr, align 8
  %600 = load i32, ptr %k, align 4
  %601 = load i32, ptr %k, align 4
  %602 = load i32, ptr %a_dim1, align 4
  %mul642 = mul nsw i32 %601, %602
  %add643 = add nsw i32 %600, %mul642
  %idxprom644 = sext i32 %add643 to i64
  %arrayidx645 = getelementptr inbounds float, ptr %599, i64 %idxprom644
  store float %598, ptr %arrayidx645, align 4
  %603 = load float, ptr %temp, align 4
  %604 = load ptr, ptr %a.addr, align 8
  %605 = load i32, ptr %kp, align 4
  %606 = load i32, ptr %kp, align 4
  %607 = load i32, ptr %a_dim1, align 4
  %mul646 = mul nsw i32 %606, %607
  %add647 = add nsw i32 %605, %mul646
  %idxprom648 = sext i32 %add647 to i64
  %arrayidx649 = getelementptr inbounds float, ptr %604, i64 %idxprom648
  store float %603, ptr %arrayidx649, align 4
  br label %if.end650

if.end650:                                        ; preds = %if.end620, %if.then601
  br label %if.end773

if.else651:                                       ; preds = %if.end599
  %608 = load ptr, ptr %ipiv.addr, align 8
  %609 = load i32, ptr %k, align 4
  %idxprom652 = sext i32 %609 to i64
  %arrayidx653 = getelementptr inbounds i32, ptr %608, i64 %idxprom652
  %610 = load i32, ptr %arrayidx653, align 4
  %sub654 = sub nsw i32 0, %610
  store i32 %sub654, ptr %kp, align 4
  %611 = load i32, ptr %kp, align 4
  %612 = load i32, ptr %k, align 4
  %cmp655 = icmp ne i32 %611, %612
  br i1 %cmp655, label %if.then656, label %if.end721

if.then656:                                       ; preds = %if.else651
  %613 = load i32, ptr %kp, align 4
  %614 = load ptr, ptr %n.addr, align 8
  %615 = load i32, ptr %614, align 4
  %cmp657 = icmp slt i32 %613, %615
  br i1 %cmp657, label %if.then658, label %if.end671

if.then658:                                       ; preds = %if.then656
  %616 = load ptr, ptr %n.addr, align 8
  %617 = load i32, ptr %616, align 4
  %618 = load i32, ptr %kp, align 4
  %sub659 = sub nsw i32 %617, %618
  store i32 %sub659, ptr %i__1, align 4
  %619 = load ptr, ptr %a.addr, align 8
  %620 = load i32, ptr %kp, align 4
  %add660 = add nsw i32 %620, 1
  %621 = load i32, ptr %k, align 4
  %622 = load i32, ptr %a_dim1, align 4
  %mul661 = mul nsw i32 %621, %622
  %add662 = add nsw i32 %add660, %mul661
  %idxprom663 = sext i32 %add662 to i64
  %arrayidx664 = getelementptr inbounds float, ptr %619, i64 %idxprom663
  %623 = load ptr, ptr %a.addr, align 8
  %624 = load i32, ptr %kp, align 4
  %add665 = add nsw i32 %624, 1
  %625 = load i32, ptr %kp, align 4
  %626 = load i32, ptr %a_dim1, align 4
  %mul666 = mul nsw i32 %625, %626
  %add667 = add nsw i32 %add665, %mul666
  %idxprom668 = sext i32 %add667 to i64
  %arrayidx669 = getelementptr inbounds float, ptr %623, i64 %idxprom668
  %call670 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx664, ptr noundef @c__1, ptr noundef %arrayidx669, ptr noundef @c__1)
  br label %if.end671

if.end671:                                        ; preds = %if.then658, %if.then656
  %627 = load i32, ptr %kp, align 4
  %628 = load i32, ptr %k, align 4
  %sub672 = sub nsw i32 %627, %628
  %sub673 = sub nsw i32 %sub672, 1
  store i32 %sub673, ptr %i__1, align 4
  %629 = load ptr, ptr %a.addr, align 8
  %630 = load i32, ptr %k, align 4
  %add674 = add nsw i32 %630, 1
  %631 = load i32, ptr %k, align 4
  %632 = load i32, ptr %a_dim1, align 4
  %mul675 = mul nsw i32 %631, %632
  %add676 = add nsw i32 %add674, %mul675
  %idxprom677 = sext i32 %add676 to i64
  %arrayidx678 = getelementptr inbounds float, ptr %629, i64 %idxprom677
  %633 = load ptr, ptr %a.addr, align 8
  %634 = load i32, ptr %kp, align 4
  %635 = load i32, ptr %k, align 4
  %add679 = add nsw i32 %635, 1
  %636 = load i32, ptr %a_dim1, align 4
  %mul680 = mul nsw i32 %add679, %636
  %add681 = add nsw i32 %634, %mul680
  %idxprom682 = sext i32 %add681 to i64
  %arrayidx683 = getelementptr inbounds float, ptr %633, i64 %idxprom682
  %637 = load ptr, ptr %lda.addr, align 8
  %call684 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx678, ptr noundef @c__1, ptr noundef %arrayidx683, ptr noundef %637)
  %638 = load ptr, ptr %a.addr, align 8
  %639 = load i32, ptr %k, align 4
  %640 = load i32, ptr %k, align 4
  %641 = load i32, ptr %a_dim1, align 4
  %mul685 = mul nsw i32 %640, %641
  %add686 = add nsw i32 %639, %mul685
  %idxprom687 = sext i32 %add686 to i64
  %arrayidx688 = getelementptr inbounds float, ptr %638, i64 %idxprom687
  %642 = load float, ptr %arrayidx688, align 4
  store float %642, ptr %temp, align 4
  %643 = load ptr, ptr %a.addr, align 8
  %644 = load i32, ptr %kp, align 4
  %645 = load i32, ptr %kp, align 4
  %646 = load i32, ptr %a_dim1, align 4
  %mul689 = mul nsw i32 %645, %646
  %add690 = add nsw i32 %644, %mul689
  %idxprom691 = sext i32 %add690 to i64
  %arrayidx692 = getelementptr inbounds float, ptr %643, i64 %idxprom691
  %647 = load float, ptr %arrayidx692, align 4
  %648 = load ptr, ptr %a.addr, align 8
  %649 = load i32, ptr %k, align 4
  %650 = load i32, ptr %k, align 4
  %651 = load i32, ptr %a_dim1, align 4
  %mul693 = mul nsw i32 %650, %651
  %add694 = add nsw i32 %649, %mul693
  %idxprom695 = sext i32 %add694 to i64
  %arrayidx696 = getelementptr inbounds float, ptr %648, i64 %idxprom695
  store float %647, ptr %arrayidx696, align 4
  %652 = load float, ptr %temp, align 4
  %653 = load ptr, ptr %a.addr, align 8
  %654 = load i32, ptr %kp, align 4
  %655 = load i32, ptr %kp, align 4
  %656 = load i32, ptr %a_dim1, align 4
  %mul697 = mul nsw i32 %655, %656
  %add698 = add nsw i32 %654, %mul697
  %idxprom699 = sext i32 %add698 to i64
  %arrayidx700 = getelementptr inbounds float, ptr %653, i64 %idxprom699
  store float %652, ptr %arrayidx700, align 4
  %657 = load ptr, ptr %a.addr, align 8
  %658 = load i32, ptr %k, align 4
  %659 = load i32, ptr %k, align 4
  %sub701 = sub nsw i32 %659, 1
  %660 = load i32, ptr %a_dim1, align 4
  %mul702 = mul nsw i32 %sub701, %660
  %add703 = add nsw i32 %658, %mul702
  %idxprom704 = sext i32 %add703 to i64
  %arrayidx705 = getelementptr inbounds float, ptr %657, i64 %idxprom704
  %661 = load float, ptr %arrayidx705, align 4
  store float %661, ptr %temp, align 4
  %662 = load ptr, ptr %a.addr, align 8
  %663 = load i32, ptr %kp, align 4
  %664 = load i32, ptr %k, align 4
  %sub706 = sub nsw i32 %664, 1
  %665 = load i32, ptr %a_dim1, align 4
  %mul707 = mul nsw i32 %sub706, %665
  %add708 = add nsw i32 %663, %mul707
  %idxprom709 = sext i32 %add708 to i64
  %arrayidx710 = getelementptr inbounds float, ptr %662, i64 %idxprom709
  %666 = load float, ptr %arrayidx710, align 4
  %667 = load ptr, ptr %a.addr, align 8
  %668 = load i32, ptr %k, align 4
  %669 = load i32, ptr %k, align 4
  %sub711 = sub nsw i32 %669, 1
  %670 = load i32, ptr %a_dim1, align 4
  %mul712 = mul nsw i32 %sub711, %670
  %add713 = add nsw i32 %668, %mul712
  %idxprom714 = sext i32 %add713 to i64
  %arrayidx715 = getelementptr inbounds float, ptr %667, i64 %idxprom714
  store float %666, ptr %arrayidx715, align 4
  %671 = load float, ptr %temp, align 4
  %672 = load ptr, ptr %a.addr, align 8
  %673 = load i32, ptr %kp, align 4
  %674 = load i32, ptr %k, align 4
  %sub716 = sub nsw i32 %674, 1
  %675 = load i32, ptr %a_dim1, align 4
  %mul717 = mul nsw i32 %sub716, %675
  %add718 = add nsw i32 %673, %mul717
  %idxprom719 = sext i32 %add718 to i64
  %arrayidx720 = getelementptr inbounds float, ptr %672, i64 %idxprom719
  store float %671, ptr %arrayidx720, align 4
  br label %if.end721

if.end721:                                        ; preds = %if.end671, %if.else651
  %676 = load i32, ptr %k, align 4
  %dec722 = add nsw i32 %676, -1
  store i32 %dec722, ptr %k, align 4
  %677 = load ptr, ptr %ipiv.addr, align 8
  %678 = load i32, ptr %k, align 4
  %idxprom723 = sext i32 %678 to i64
  %arrayidx724 = getelementptr inbounds i32, ptr %677, i64 %idxprom723
  %679 = load i32, ptr %arrayidx724, align 4
  %sub725 = sub nsw i32 0, %679
  store i32 %sub725, ptr %kp, align 4
  %680 = load i32, ptr %kp, align 4
  %681 = load i32, ptr %k, align 4
  %cmp726 = icmp ne i32 %680, %681
  br i1 %cmp726, label %if.then727, label %if.end772

if.then727:                                       ; preds = %if.end721
  %682 = load i32, ptr %kp, align 4
  %683 = load ptr, ptr %n.addr, align 8
  %684 = load i32, ptr %683, align 4
  %cmp728 = icmp slt i32 %682, %684
  br i1 %cmp728, label %if.then729, label %if.end742

if.then729:                                       ; preds = %if.then727
  %685 = load ptr, ptr %n.addr, align 8
  %686 = load i32, ptr %685, align 4
  %687 = load i32, ptr %kp, align 4
  %sub730 = sub nsw i32 %686, %687
  store i32 %sub730, ptr %i__1, align 4
  %688 = load ptr, ptr %a.addr, align 8
  %689 = load i32, ptr %kp, align 4
  %add731 = add nsw i32 %689, 1
  %690 = load i32, ptr %k, align 4
  %691 = load i32, ptr %a_dim1, align 4
  %mul732 = mul nsw i32 %690, %691
  %add733 = add nsw i32 %add731, %mul732
  %idxprom734 = sext i32 %add733 to i64
  %arrayidx735 = getelementptr inbounds float, ptr %688, i64 %idxprom734
  %692 = load ptr, ptr %a.addr, align 8
  %693 = load i32, ptr %kp, align 4
  %add736 = add nsw i32 %693, 1
  %694 = load i32, ptr %kp, align 4
  %695 = load i32, ptr %a_dim1, align 4
  %mul737 = mul nsw i32 %694, %695
  %add738 = add nsw i32 %add736, %mul737
  %idxprom739 = sext i32 %add738 to i64
  %arrayidx740 = getelementptr inbounds float, ptr %692, i64 %idxprom739
  %call741 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx735, ptr noundef @c__1, ptr noundef %arrayidx740, ptr noundef @c__1)
  br label %if.end742

if.end742:                                        ; preds = %if.then729, %if.then727
  %696 = load i32, ptr %kp, align 4
  %697 = load i32, ptr %k, align 4
  %sub743 = sub nsw i32 %696, %697
  %sub744 = sub nsw i32 %sub743, 1
  store i32 %sub744, ptr %i__1, align 4
  %698 = load ptr, ptr %a.addr, align 8
  %699 = load i32, ptr %k, align 4
  %add745 = add nsw i32 %699, 1
  %700 = load i32, ptr %k, align 4
  %701 = load i32, ptr %a_dim1, align 4
  %mul746 = mul nsw i32 %700, %701
  %add747 = add nsw i32 %add745, %mul746
  %idxprom748 = sext i32 %add747 to i64
  %arrayidx749 = getelementptr inbounds float, ptr %698, i64 %idxprom748
  %702 = load ptr, ptr %a.addr, align 8
  %703 = load i32, ptr %kp, align 4
  %704 = load i32, ptr %k, align 4
  %add750 = add nsw i32 %704, 1
  %705 = load i32, ptr %a_dim1, align 4
  %mul751 = mul nsw i32 %add750, %705
  %add752 = add nsw i32 %703, %mul751
  %idxprom753 = sext i32 %add752 to i64
  %arrayidx754 = getelementptr inbounds float, ptr %702, i64 %idxprom753
  %706 = load ptr, ptr %lda.addr, align 8
  %call755 = call i32 @sswap_(ptr noundef %i__1, ptr noundef %arrayidx749, ptr noundef @c__1, ptr noundef %arrayidx754, ptr noundef %706)
  %707 = load ptr, ptr %a.addr, align 8
  %708 = load i32, ptr %k, align 4
  %709 = load i32, ptr %k, align 4
  %710 = load i32, ptr %a_dim1, align 4
  %mul756 = mul nsw i32 %709, %710
  %add757 = add nsw i32 %708, %mul756
  %idxprom758 = sext i32 %add757 to i64
  %arrayidx759 = getelementptr inbounds float, ptr %707, i64 %idxprom758
  %711 = load float, ptr %arrayidx759, align 4
  store float %711, ptr %temp, align 4
  %712 = load ptr, ptr %a.addr, align 8
  %713 = load i32, ptr %kp, align 4
  %714 = load i32, ptr %kp, align 4
  %715 = load i32, ptr %a_dim1, align 4
  %mul760 = mul nsw i32 %714, %715
  %add761 = add nsw i32 %713, %mul760
  %idxprom762 = sext i32 %add761 to i64
  %arrayidx763 = getelementptr inbounds float, ptr %712, i64 %idxprom762
  %716 = load float, ptr %arrayidx763, align 4
  %717 = load ptr, ptr %a.addr, align 8
  %718 = load i32, ptr %k, align 4
  %719 = load i32, ptr %k, align 4
  %720 = load i32, ptr %a_dim1, align 4
  %mul764 = mul nsw i32 %719, %720
  %add765 = add nsw i32 %718, %mul764
  %idxprom766 = sext i32 %add765 to i64
  %arrayidx767 = getelementptr inbounds float, ptr %717, i64 %idxprom766
  store float %716, ptr %arrayidx767, align 4
  %721 = load float, ptr %temp, align 4
  %722 = load ptr, ptr %a.addr, align 8
  %723 = load i32, ptr %kp, align 4
  %724 = load i32, ptr %kp, align 4
  %725 = load i32, ptr %a_dim1, align 4
  %mul768 = mul nsw i32 %724, %725
  %add769 = add nsw i32 %723, %mul768
  %idxprom770 = sext i32 %add769 to i64
  %arrayidx771 = getelementptr inbounds float, ptr %722, i64 %idxprom770
  store float %721, ptr %arrayidx771, align 4
  br label %if.end772

if.end772:                                        ; preds = %if.end742, %if.end721
  br label %if.end773

if.end773:                                        ; preds = %if.end772, %if.end650
  %726 = load i32, ptr %k, align 4
  %dec774 = add nsw i32 %726, -1
  store i32 %dec774, ptr %k, align 4
  br label %L50

L60:                                              ; preds = %if.then398
  br label %if.end775

if.end775:                                        ; preds = %L60, %L40
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end775, %if.then42, %if.then27, %if.then16, %if.then12
  %727 = load i32, ptr %retval, align 4
  ret i32 %727
}

declare i32 @lsame_(ptr noundef, ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

declare i32 @scopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ssymv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare float @sdot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare i32 @sswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
