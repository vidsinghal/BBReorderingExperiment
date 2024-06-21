; ModuleID = 'samples/336.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/sgetc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@c__1 = internal global i32 1, align 4
@c_b10 = internal global float -1.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i32 @sgetc2_(ptr noundef %n, ptr noundef %a, ptr noundef %lda, ptr noundef %ipiv, ptr noundef %jpiv, ptr noundef %info) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %lda.addr = alloca ptr, align 8
  %ipiv.addr = alloca ptr, align 8
  %jpiv.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %a_dim1 = alloca i32, align 4
  %a_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %ip = alloca i32, align 4
  %jp = alloca i32, align 4
  %eps = alloca float, align 4
  %ipv = alloca i32, align 4
  %jpv = alloca i32, align 4
  %smin = alloca float, align 4
  %xmax = alloca float, align 4
  %bignum = alloca float, align 4
  %smlnum = alloca float, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %lda, ptr %lda.addr, align 8
  store ptr %ipiv, ptr %ipiv.addr, align 8
  store ptr %jpiv, ptr %jpiv.addr, align 8
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
  %6 = load ptr, ptr %jpiv.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, ptr %6, i32 -1
  store ptr %incdec.ptr1, ptr %jpiv.addr, align 8
  %7 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %7, align 4
  %call = call float @slamch_(ptr noundef @.str)
  store float %call, ptr %eps, align 4
  %call2 = call float @slamch_(ptr noundef @.str.1)
  %8 = load float, ptr %eps, align 4
  %div = fdiv float %call2, %8
  store float %div, ptr %smlnum, align 4
  %9 = load float, ptr %smlnum, align 4
  %div3 = fdiv float 1.000000e+00, %9
  store float %div3, ptr %bignum, align 4
  %call4 = call i32 @slabad_(ptr noundef %smlnum, ptr noundef %bignum)
  %10 = load ptr, ptr %n.addr, align 8
  %11 = load i32, ptr %10, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, ptr %i__1, align 4
  store i32 1, ptr %i__, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc114, %entry
  %12 = load i32, ptr %i__, align 4
  %13 = load i32, ptr %i__1, align 4
  %cmp = icmp sle i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end116

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, ptr %xmax, align 4
  %14 = load ptr, ptr %n.addr, align 8
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %i__2, align 4
  %16 = load i32, ptr %i__, align 4
  store i32 %16, ptr %ip, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc24, %for.body
  %17 = load i32, ptr %ip, align 4
  %18 = load i32, ptr %i__2, align 4
  %cmp6 = icmp sle i32 %17, %18
  br i1 %cmp6, label %for.body7, label %for.end26

for.body7:                                        ; preds = %for.cond5
  %19 = load ptr, ptr %n.addr, align 8
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %i__3, align 4
  %21 = load i32, ptr %i__, align 4
  store i32 %21, ptr %jp, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %22 = load i32, ptr %jp, align 4
  %23 = load i32, ptr %i__3, align 4
  %cmp9 = icmp sle i32 %22, %23
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %24 = load ptr, ptr %a.addr, align 8
  %25 = load i32, ptr %ip, align 4
  %26 = load i32, ptr %jp, align 4
  %27 = load i32, ptr %a_dim1, align 4
  %mul = mul nsw i32 %26, %27
  %add11 = add nsw i32 %25, %mul
  %idxprom = sext i32 %add11 to i64
  %arrayidx = getelementptr inbounds float, ptr %24, i64 %idxprom
  %28 = load float, ptr %arrayidx, align 4
  store float %28, ptr %r__1, align 4
  %29 = load float, ptr %r__1, align 4
  %cmp12 = fcmp oge float %29, 0.000000e+00
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body10
  %30 = load float, ptr %r__1, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body10
  %31 = load float, ptr %r__1, align 4
  %fneg = fneg float %31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %30, %cond.true ], [ %fneg, %cond.false ]
  %32 = load float, ptr %xmax, align 4
  %cmp13 = fcmp oge float %cond, %32
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %33 = load ptr, ptr %a.addr, align 8
  %34 = load i32, ptr %ip, align 4
  %35 = load i32, ptr %jp, align 4
  %36 = load i32, ptr %a_dim1, align 4
  %mul14 = mul nsw i32 %35, %36
  %add15 = add nsw i32 %34, %mul14
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds float, ptr %33, i64 %idxprom16
  %37 = load float, ptr %arrayidx17, align 4
  store float %37, ptr %r__1, align 4
  %38 = load float, ptr %r__1, align 4
  %cmp18 = fcmp oge float %38, 0.000000e+00
  br i1 %cmp18, label %cond.true19, label %cond.false20

cond.true19:                                      ; preds = %if.then
  %39 = load float, ptr %r__1, align 4
  br label %cond.end22

cond.false20:                                     ; preds = %if.then
  %40 = load float, ptr %r__1, align 4
  %fneg21 = fneg float %40
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false20, %cond.true19
  %cond23 = phi float [ %39, %cond.true19 ], [ %fneg21, %cond.false20 ]
  store float %cond23, ptr %xmax, align 4
  %41 = load i32, ptr %ip, align 4
  store i32 %41, ptr %ipv, align 4
  %42 = load i32, ptr %jp, align 4
  store i32 %42, ptr %jpv, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end22, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %43 = load i32, ptr %jp, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %jp, align 4
  br label %for.cond8, !llvm.loop !5

for.end:                                          ; preds = %for.cond8
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %44 = load i32, ptr %ip, align 4
  %inc25 = add nsw i32 %44, 1
  store i32 %inc25, ptr %ip, align 4
  br label %for.cond5, !llvm.loop !7

for.end26:                                        ; preds = %for.cond5
  %45 = load i32, ptr %i__, align 4
  %cmp27 = icmp eq i32 %45, 1
  br i1 %cmp27, label %if.then28, label %if.end35

if.then28:                                        ; preds = %for.end26
  %46 = load float, ptr %eps, align 4
  %47 = load float, ptr %xmax, align 4
  %mul29 = fmul float %46, %47
  store float %mul29, ptr %r__1, align 4
  %48 = load float, ptr %r__1, align 4
  %49 = load float, ptr %smlnum, align 4
  %cmp30 = fcmp oge float %48, %49
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %if.then28
  %50 = load float, ptr %r__1, align 4
  br label %cond.end33

cond.false32:                                     ; preds = %if.then28
  %51 = load float, ptr %smlnum, align 4
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.true31
  %cond34 = phi float [ %50, %cond.true31 ], [ %51, %cond.false32 ]
  store float %cond34, ptr %smin, align 4
  br label %if.end35

if.end35:                                         ; preds = %cond.end33, %for.end26
  %52 = load i32, ptr %ipv, align 4
  %53 = load i32, ptr %i__, align 4
  %cmp36 = icmp ne i32 %52, %53
  br i1 %cmp36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end35
  %54 = load ptr, ptr %n.addr, align 8
  %55 = load ptr, ptr %a.addr, align 8
  %56 = load i32, ptr %ipv, align 4
  %57 = load i32, ptr %a_dim1, align 4
  %add38 = add nsw i32 %56, %57
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %55, i64 %idxprom39
  %58 = load ptr, ptr %lda.addr, align 8
  %59 = load ptr, ptr %a.addr, align 8
  %60 = load i32, ptr %i__, align 4
  %61 = load i32, ptr %a_dim1, align 4
  %add41 = add nsw i32 %60, %61
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %59, i64 %idxprom42
  %62 = load ptr, ptr %lda.addr, align 8
  %call44 = call i32 @sswap_(ptr noundef %54, ptr noundef %arrayidx40, ptr noundef %58, ptr noundef %arrayidx43, ptr noundef %62)
  br label %if.end45

if.end45:                                         ; preds = %if.then37, %if.end35
  %63 = load i32, ptr %ipv, align 4
  %64 = load ptr, ptr %ipiv.addr, align 8
  %65 = load i32, ptr %i__, align 4
  %idxprom46 = sext i32 %65 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %64, i64 %idxprom46
  store i32 %63, ptr %arrayidx47, align 4
  %66 = load i32, ptr %jpv, align 4
  %67 = load i32, ptr %i__, align 4
  %cmp48 = icmp ne i32 %66, %67
  br i1 %cmp48, label %if.then49, label %if.end59

if.then49:                                        ; preds = %if.end45
  %68 = load ptr, ptr %n.addr, align 8
  %69 = load ptr, ptr %a.addr, align 8
  %70 = load i32, ptr %jpv, align 4
  %71 = load i32, ptr %a_dim1, align 4
  %mul50 = mul nsw i32 %70, %71
  %add51 = add nsw i32 %mul50, 1
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds float, ptr %69, i64 %idxprom52
  %72 = load ptr, ptr %a.addr, align 8
  %73 = load i32, ptr %i__, align 4
  %74 = load i32, ptr %a_dim1, align 4
  %mul54 = mul nsw i32 %73, %74
  %add55 = add nsw i32 %mul54, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds float, ptr %72, i64 %idxprom56
  %call58 = call i32 @sswap_(ptr noundef %68, ptr noundef %arrayidx53, ptr noundef @c__1, ptr noundef %arrayidx57, ptr noundef @c__1)
  br label %if.end59

if.end59:                                         ; preds = %if.then49, %if.end45
  %75 = load i32, ptr %jpv, align 4
  %76 = load ptr, ptr %jpiv.addr, align 8
  %77 = load i32, ptr %i__, align 4
  %idxprom60 = sext i32 %77 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %76, i64 %idxprom60
  store i32 %75, ptr %arrayidx61, align 4
  %78 = load ptr, ptr %a.addr, align 8
  %79 = load i32, ptr %i__, align 4
  %80 = load i32, ptr %i__, align 4
  %81 = load i32, ptr %a_dim1, align 4
  %mul62 = mul nsw i32 %80, %81
  %add63 = add nsw i32 %79, %mul62
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %78, i64 %idxprom64
  %82 = load float, ptr %arrayidx65, align 4
  store float %82, ptr %r__1, align 4
  %83 = load float, ptr %r__1, align 4
  %cmp66 = fcmp oge float %83, 0.000000e+00
  br i1 %cmp66, label %cond.true67, label %cond.false68

cond.true67:                                      ; preds = %if.end59
  %84 = load float, ptr %r__1, align 4
  br label %cond.end70

cond.false68:                                     ; preds = %if.end59
  %85 = load float, ptr %r__1, align 4
  %fneg69 = fneg float %85
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false68, %cond.true67
  %cond71 = phi float [ %84, %cond.true67 ], [ %fneg69, %cond.false68 ]
  %86 = load float, ptr %smin, align 4
  %cmp72 = fcmp olt float %cond71, %86
  br i1 %cmp72, label %if.then73, label %if.end78

if.then73:                                        ; preds = %cond.end70
  %87 = load i32, ptr %i__, align 4
  %88 = load ptr, ptr %info.addr, align 8
  store i32 %87, ptr %88, align 4
  %89 = load float, ptr %smin, align 4
  %90 = load ptr, ptr %a.addr, align 8
  %91 = load i32, ptr %i__, align 4
  %92 = load i32, ptr %i__, align 4
  %93 = load i32, ptr %a_dim1, align 4
  %mul74 = mul nsw i32 %92, %93
  %add75 = add nsw i32 %91, %mul74
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds float, ptr %90, i64 %idxprom76
  store float %89, ptr %arrayidx77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %cond.end70
  %94 = load ptr, ptr %n.addr, align 8
  %95 = load i32, ptr %94, align 4
  store i32 %95, ptr %i__2, align 4
  %96 = load i32, ptr %i__, align 4
  %add79 = add nsw i32 %96, 1
  store i32 %add79, ptr %j, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc92, %if.end78
  %97 = load i32, ptr %j, align 4
  %98 = load i32, ptr %i__2, align 4
  %cmp81 = icmp sle i32 %97, %98
  br i1 %cmp81, label %for.body82, label %for.end94

for.body82:                                       ; preds = %for.cond80
  %99 = load ptr, ptr %a.addr, align 8
  %100 = load i32, ptr %i__, align 4
  %101 = load i32, ptr %i__, align 4
  %102 = load i32, ptr %a_dim1, align 4
  %mul83 = mul nsw i32 %101, %102
  %add84 = add nsw i32 %100, %mul83
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds float, ptr %99, i64 %idxprom85
  %103 = load float, ptr %arrayidx86, align 4
  %104 = load ptr, ptr %a.addr, align 8
  %105 = load i32, ptr %j, align 4
  %106 = load i32, ptr %i__, align 4
  %107 = load i32, ptr %a_dim1, align 4
  %mul87 = mul nsw i32 %106, %107
  %add88 = add nsw i32 %105, %mul87
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds float, ptr %104, i64 %idxprom89
  %108 = load float, ptr %arrayidx90, align 4
  %div91 = fdiv float %108, %103
  store float %div91, ptr %arrayidx90, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %for.body82
  %109 = load i32, ptr %j, align 4
  %inc93 = add nsw i32 %109, 1
  store i32 %inc93, ptr %j, align 4
  br label %for.cond80, !llvm.loop !8

for.end94:                                        ; preds = %for.cond80
  %110 = load ptr, ptr %n.addr, align 8
  %111 = load i32, ptr %110, align 4
  %112 = load i32, ptr %i__, align 4
  %sub95 = sub nsw i32 %111, %112
  store i32 %sub95, ptr %i__2, align 4
  %113 = load ptr, ptr %n.addr, align 8
  %114 = load i32, ptr %113, align 4
  %115 = load i32, ptr %i__, align 4
  %sub96 = sub nsw i32 %114, %115
  store i32 %sub96, ptr %i__3, align 4
  %116 = load ptr, ptr %a.addr, align 8
  %117 = load i32, ptr %i__, align 4
  %add97 = add nsw i32 %117, 1
  %118 = load i32, ptr %i__, align 4
  %119 = load i32, ptr %a_dim1, align 4
  %mul98 = mul nsw i32 %118, %119
  %add99 = add nsw i32 %add97, %mul98
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %116, i64 %idxprom100
  %120 = load ptr, ptr %a.addr, align 8
  %121 = load i32, ptr %i__, align 4
  %122 = load i32, ptr %i__, align 4
  %add102 = add nsw i32 %122, 1
  %123 = load i32, ptr %a_dim1, align 4
  %mul103 = mul nsw i32 %add102, %123
  %add104 = add nsw i32 %121, %mul103
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds float, ptr %120, i64 %idxprom105
  %124 = load ptr, ptr %lda.addr, align 8
  %125 = load ptr, ptr %a.addr, align 8
  %126 = load i32, ptr %i__, align 4
  %add107 = add nsw i32 %126, 1
  %127 = load i32, ptr %i__, align 4
  %add108 = add nsw i32 %127, 1
  %128 = load i32, ptr %a_dim1, align 4
  %mul109 = mul nsw i32 %add108, %128
  %add110 = add nsw i32 %add107, %mul109
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds float, ptr %125, i64 %idxprom111
  %129 = load ptr, ptr %lda.addr, align 8
  %call113 = call i32 @sger_(ptr noundef %i__2, ptr noundef %i__3, ptr noundef @c_b10, ptr noundef %arrayidx101, ptr noundef @c__1, ptr noundef %arrayidx106, ptr noundef %124, ptr noundef %arrayidx112, ptr noundef %129)
  br label %for.inc114

for.inc114:                                       ; preds = %for.end94
  %130 = load i32, ptr %i__, align 4
  %inc115 = add nsw i32 %130, 1
  store i32 %inc115, ptr %i__, align 4
  br label %for.cond, !llvm.loop !9

for.end116:                                       ; preds = %for.cond
  %131 = load ptr, ptr %a.addr, align 8
  %132 = load ptr, ptr %n.addr, align 8
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %n.addr, align 8
  %135 = load i32, ptr %134, align 4
  %136 = load i32, ptr %a_dim1, align 4
  %mul117 = mul nsw i32 %135, %136
  %add118 = add nsw i32 %133, %mul117
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds float, ptr %131, i64 %idxprom119
  %137 = load float, ptr %arrayidx120, align 4
  store float %137, ptr %r__1, align 4
  %138 = load float, ptr %r__1, align 4
  %cmp121 = fcmp oge float %138, 0.000000e+00
  br i1 %cmp121, label %cond.true122, label %cond.false123

cond.true122:                                     ; preds = %for.end116
  %139 = load float, ptr %r__1, align 4
  br label %cond.end125

cond.false123:                                    ; preds = %for.end116
  %140 = load float, ptr %r__1, align 4
  %fneg124 = fneg float %140
  br label %cond.end125

cond.end125:                                      ; preds = %cond.false123, %cond.true122
  %cond126 = phi float [ %139, %cond.true122 ], [ %fneg124, %cond.false123 ]
  %141 = load float, ptr %smin, align 4
  %cmp127 = fcmp olt float %cond126, %141
  br i1 %cmp127, label %if.then128, label %if.end133

if.then128:                                       ; preds = %cond.end125
  %142 = load ptr, ptr %n.addr, align 8
  %143 = load i32, ptr %142, align 4
  %144 = load ptr, ptr %info.addr, align 8
  store i32 %143, ptr %144, align 4
  %145 = load float, ptr %smin, align 4
  %146 = load ptr, ptr %a.addr, align 8
  %147 = load ptr, ptr %n.addr, align 8
  %148 = load i32, ptr %147, align 4
  %149 = load ptr, ptr %n.addr, align 8
  %150 = load i32, ptr %149, align 4
  %151 = load i32, ptr %a_dim1, align 4
  %mul129 = mul nsw i32 %150, %151
  %add130 = add nsw i32 %148, %mul129
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %146, i64 %idxprom131
  store float %145, ptr %arrayidx132, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then128, %cond.end125
  %152 = load ptr, ptr %n.addr, align 8
  %153 = load i32, ptr %152, align 4
  %154 = load ptr, ptr %ipiv.addr, align 8
  %155 = load ptr, ptr %n.addr, align 8
  %156 = load i32, ptr %155, align 4
  %idxprom134 = sext i32 %156 to i64
  %arrayidx135 = getelementptr inbounds i32, ptr %154, i64 %idxprom134
  store i32 %153, ptr %arrayidx135, align 4
  %157 = load ptr, ptr %n.addr, align 8
  %158 = load i32, ptr %157, align 4
  %159 = load ptr, ptr %jpiv.addr, align 8
  %160 = load ptr, ptr %n.addr, align 8
  %161 = load i32, ptr %160, align 4
  %idxprom136 = sext i32 %161 to i64
  %arrayidx137 = getelementptr inbounds i32, ptr %159, i64 %idxprom136
  store i32 %158, ptr %arrayidx137, align 4
  ret i32 0
}

declare float @slamch_(ptr noundef) #1

declare i32 @slabad_(ptr noundef, ptr noundef) #1

declare i32 @sswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @sger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
