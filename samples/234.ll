; ModuleID = 'samples/234.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/slaebz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @slaebz_(ptr noundef %ijob, ptr noundef %nitmax, ptr noundef %n, ptr noundef %mmax, ptr noundef %minp, ptr noundef %nbmin, ptr noundef %abstol, ptr noundef %reltol, ptr noundef %pivmin, ptr noundef %d__, ptr noundef %e, ptr noundef %e2, ptr noundef %nval, ptr noundef %ab, ptr noundef %c__, ptr noundef %mout, ptr noundef %nab, ptr noundef %work, ptr noundef %iwork, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %ijob.addr = alloca ptr, align 8
  %nitmax.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %mmax.addr = alloca ptr, align 8
  %minp.addr = alloca ptr, align 8
  %nbmin.addr = alloca ptr, align 8
  %abstol.addr = alloca ptr, align 8
  %reltol.addr = alloca ptr, align 8
  %pivmin.addr = alloca ptr, align 8
  %d__.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %nval.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %c__.addr = alloca ptr, align 8
  %mout.addr = alloca ptr, align 8
  %nab.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  %iwork.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %nab_dim1 = alloca i32, align 4
  %nab_offset = alloca i32, align 4
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %i__5 = alloca i32, align 4
  %i__6 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %r__3 = alloca float, align 4
  %r__4 = alloca float, align 4
  %j = alloca i32, align 4
  %kf = alloca i32, align 4
  %ji = alloca i32, align 4
  %kl = alloca i32, align 4
  %jp = alloca i32, align 4
  %jit = alloca i32, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %itmp1 = alloca i32, align 4
  %itmp2 = alloca i32, align 4
  %kfnew = alloca i32, align 4
  %klnew = alloca i32, align 4
  store ptr %ijob, ptr %ijob.addr, align 8
  store ptr %nitmax, ptr %nitmax.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %mmax, ptr %mmax.addr, align 8
  store ptr %minp, ptr %minp.addr, align 8
  store ptr %nbmin, ptr %nbmin.addr, align 8
  store ptr %abstol, ptr %abstol.addr, align 8
  store ptr %reltol, ptr %reltol.addr, align 8
  store ptr %pivmin, ptr %pivmin.addr, align 8
  store ptr %d__, ptr %d__.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  store ptr %e2, ptr %e2.addr, align 8
  store ptr %nval, ptr %nval.addr, align 8
  store ptr %ab, ptr %ab.addr, align 8
  store ptr %c__, ptr %c__.addr, align 8
  store ptr %mout, ptr %mout.addr, align 8
  store ptr %nab, ptr %nab.addr, align 8
  store ptr %work, ptr %work.addr, align 8
  store ptr %iwork, ptr %iwork.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %mmax.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %nab_dim1, align 4
  %2 = load i32, ptr %nab_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %nab_offset, align 4
  %3 = load i32, ptr %nab_offset, align 4
  %4 = load ptr, ptr %nab.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %nab.addr, align 8
  %5 = load ptr, ptr %mmax.addr, align 8
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %ab_dim1, align 4
  %7 = load i32, ptr %ab_dim1, align 4
  %add1 = add nsw i32 1, %7
  store i32 %add1, ptr %ab_offset, align 4
  %8 = load i32, ptr %ab_offset, align 4
  %9 = load ptr, ptr %ab.addr, align 8
  %idx.ext2 = sext i32 %8 to i64
  %idx.neg3 = sub i64 0, %idx.ext2
  %add.ptr4 = getelementptr inbounds float, ptr %9, i64 %idx.neg3
  store ptr %add.ptr4, ptr %ab.addr, align 8
  %10 = load ptr, ptr %d__.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %10, i32 -1
  store ptr %incdec.ptr, ptr %d__.addr, align 8
  %11 = load ptr, ptr %e.addr, align 8
  %incdec.ptr5 = getelementptr inbounds float, ptr %11, i32 -1
  store ptr %incdec.ptr5, ptr %e.addr, align 8
  %12 = load ptr, ptr %e2.addr, align 8
  %incdec.ptr6 = getelementptr inbounds float, ptr %12, i32 -1
  store ptr %incdec.ptr6, ptr %e2.addr, align 8
  %13 = load ptr, ptr %nval.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i32, ptr %13, i32 -1
  store ptr %incdec.ptr7, ptr %nval.addr, align 8
  %14 = load ptr, ptr %c__.addr, align 8
  %incdec.ptr8 = getelementptr inbounds float, ptr %14, i32 -1
  store ptr %incdec.ptr8, ptr %c__.addr, align 8
  %15 = load ptr, ptr %work.addr, align 8
  %incdec.ptr9 = getelementptr inbounds float, ptr %15, i32 -1
  store ptr %incdec.ptr9, ptr %work.addr, align 8
  %16 = load ptr, ptr %iwork.addr, align 8
  %incdec.ptr10 = getelementptr inbounds i32, ptr %16, i32 -1
  store ptr %incdec.ptr10, ptr %iwork.addr, align 8
  %17 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %17, align 4
  %18 = load ptr, ptr %ijob.addr, align 8
  %19 = load i32, ptr %18, align 4
  %cmp = icmp slt i32 %19, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %20 = load ptr, ptr %ijob.addr, align 8
  %21 = load i32, ptr %20, align 4
  %cmp11 = icmp sgt i32 %21, 3
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %22 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %22, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %23 = load ptr, ptr %ijob.addr, align 8
  %24 = load i32, ptr %23, align 4
  %cmp12 = icmp eq i32 %24, 1
  br i1 %cmp12, label %if.then13, label %if.end82

if.then13:                                        ; preds = %if.end
  %25 = load ptr, ptr %mout.addr, align 8
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %minp.addr, align 8
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %i__1, align 4
  store i32 1, ptr %ji, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc79, %if.then13
  %28 = load i32, ptr %ji, align 4
  %29 = load i32, ptr %i__1, align 4
  %cmp14 = icmp sle i32 %28, %29
  br i1 %cmp14, label %for.body, label %for.end81

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %jp, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc68, %for.body
  %30 = load i32, ptr %jp, align 4
  %cmp16 = icmp sle i32 %30, 2
  br i1 %cmp16, label %for.body17, label %for.end70

for.body17:                                       ; preds = %for.cond15
  %31 = load ptr, ptr %d__.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %31, i64 1
  %32 = load float, ptr %arrayidx, align 4
  %33 = load ptr, ptr %ab.addr, align 8
  %34 = load i32, ptr %ji, align 4
  %35 = load i32, ptr %jp, align 4
  %36 = load i32, ptr %ab_dim1, align 4
  %mul = mul nsw i32 %35, %36
  %add18 = add nsw i32 %34, %mul
  %idxprom = sext i32 %add18 to i64
  %arrayidx19 = getelementptr inbounds float, ptr %33, i64 %idxprom
  %37 = load float, ptr %arrayidx19, align 4
  %sub = fsub float %32, %37
  store float %sub, ptr %tmp1, align 4
  %38 = load float, ptr %tmp1, align 4
  %cmp20 = fcmp oge float %38, 0.000000e+00
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body17
  %39 = load float, ptr %tmp1, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body17
  %40 = load float, ptr %tmp1, align 4
  %fneg = fneg float %40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %39, %cond.true ], [ %fneg, %cond.false ]
  %41 = load ptr, ptr %pivmin.addr, align 8
  %42 = load float, ptr %41, align 4
  %cmp21 = fcmp olt float %cond, %42
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %cond.end
  %43 = load ptr, ptr %pivmin.addr, align 8
  %44 = load float, ptr %43, align 4
  %fneg23 = fneg float %44
  store float %fneg23, ptr %tmp1, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %cond.end
  %45 = load ptr, ptr %nab.addr, align 8
  %46 = load i32, ptr %ji, align 4
  %47 = load i32, ptr %jp, align 4
  %48 = load i32, ptr %nab_dim1, align 4
  %mul25 = mul nsw i32 %47, %48
  %add26 = add nsw i32 %46, %mul25
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %45, i64 %idxprom27
  store i32 0, ptr %arrayidx28, align 4
  %49 = load float, ptr %tmp1, align 4
  %cmp29 = fcmp ole float %49, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end24
  %50 = load ptr, ptr %nab.addr, align 8
  %51 = load i32, ptr %ji, align 4
  %52 = load i32, ptr %jp, align 4
  %53 = load i32, ptr %nab_dim1, align 4
  %mul31 = mul nsw i32 %52, %53
  %add32 = add nsw i32 %51, %mul31
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %50, i64 %idxprom33
  store i32 1, ptr %arrayidx34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end24
  %54 = load ptr, ptr %n.addr, align 8
  %55 = load i32, ptr %54, align 4
  store i32 %55, ptr %i__2, align 4
  store i32 2, ptr %j, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc, %if.end35
  %56 = load i32, ptr %j, align 4
  %57 = load i32, ptr %i__2, align 4
  %cmp37 = icmp sle i32 %56, %57
  br i1 %cmp37, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond36
  %58 = load ptr, ptr %d__.addr, align 8
  %59 = load i32, ptr %j, align 4
  %idxprom39 = sext i32 %59 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %58, i64 %idxprom39
  %60 = load float, ptr %arrayidx40, align 4
  %61 = load ptr, ptr %e2.addr, align 8
  %62 = load i32, ptr %j, align 4
  %sub41 = sub nsw i32 %62, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %61, i64 %idxprom42
  %63 = load float, ptr %arrayidx43, align 4
  %64 = load float, ptr %tmp1, align 4
  %div = fdiv float %63, %64
  %sub44 = fsub float %60, %div
  %65 = load ptr, ptr %ab.addr, align 8
  %66 = load i32, ptr %ji, align 4
  %67 = load i32, ptr %jp, align 4
  %68 = load i32, ptr %ab_dim1, align 4
  %mul45 = mul nsw i32 %67, %68
  %add46 = add nsw i32 %66, %mul45
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds float, ptr %65, i64 %idxprom47
  %69 = load float, ptr %arrayidx48, align 4
  %sub49 = fsub float %sub44, %69
  store float %sub49, ptr %tmp1, align 4
  %70 = load float, ptr %tmp1, align 4
  %cmp50 = fcmp oge float %70, 0.000000e+00
  br i1 %cmp50, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %for.body38
  %71 = load float, ptr %tmp1, align 4
  br label %cond.end54

cond.false52:                                     ; preds = %for.body38
  %72 = load float, ptr %tmp1, align 4
  %fneg53 = fneg float %72
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false52, %cond.true51
  %cond55 = phi float [ %71, %cond.true51 ], [ %fneg53, %cond.false52 ]
  %73 = load ptr, ptr %pivmin.addr, align 8
  %74 = load float, ptr %73, align 4
  %cmp56 = fcmp olt float %cond55, %74
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %cond.end54
  %75 = load ptr, ptr %pivmin.addr, align 8
  %76 = load float, ptr %75, align 4
  %fneg58 = fneg float %76
  store float %fneg58, ptr %tmp1, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %cond.end54
  %77 = load float, ptr %tmp1, align 4
  %cmp60 = fcmp ole float %77, 0.000000e+00
  br i1 %cmp60, label %if.then61, label %if.end66

if.then61:                                        ; preds = %if.end59
  %78 = load ptr, ptr %nab.addr, align 8
  %79 = load i32, ptr %ji, align 4
  %80 = load i32, ptr %jp, align 4
  %81 = load i32, ptr %nab_dim1, align 4
  %mul62 = mul nsw i32 %80, %81
  %add63 = add nsw i32 %79, %mul62
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %78, i64 %idxprom64
  %82 = load i32, ptr %arrayidx65, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, ptr %arrayidx65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end59
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %83 = load i32, ptr %j, align 4
  %inc67 = add nsw i32 %83, 1
  store i32 %inc67, ptr %j, align 4
  br label %for.cond36, !llvm.loop !5

for.end:                                          ; preds = %for.cond36
  br label %for.inc68

for.inc68:                                        ; preds = %for.end
  %84 = load i32, ptr %jp, align 4
  %inc69 = add nsw i32 %84, 1
  store i32 %inc69, ptr %jp, align 4
  br label %for.cond15, !llvm.loop !7

for.end70:                                        ; preds = %for.cond15
  %85 = load ptr, ptr %mout.addr, align 8
  %86 = load i32, ptr %85, align 4
  %87 = load ptr, ptr %nab.addr, align 8
  %88 = load i32, ptr %ji, align 4
  %89 = load i32, ptr %nab_dim1, align 4
  %shl = shl i32 %89, 1
  %add71 = add nsw i32 %88, %shl
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %87, i64 %idxprom72
  %90 = load i32, ptr %arrayidx73, align 4
  %add74 = add nsw i32 %86, %90
  %91 = load ptr, ptr %nab.addr, align 8
  %92 = load i32, ptr %ji, align 4
  %93 = load i32, ptr %nab_dim1, align 4
  %add75 = add nsw i32 %92, %93
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds i32, ptr %91, i64 %idxprom76
  %94 = load i32, ptr %arrayidx77, align 4
  %sub78 = sub nsw i32 %add74, %94
  %95 = load ptr, ptr %mout.addr, align 8
  store i32 %sub78, ptr %95, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.end70
  %96 = load i32, ptr %ji, align 4
  %inc80 = add nsw i32 %96, 1
  store i32 %inc80, ptr %ji, align 4
  br label %for.cond, !llvm.loop !8

for.end81:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.end
  store i32 1, ptr %kf, align 4
  %97 = load ptr, ptr %minp.addr, align 8
  %98 = load i32, ptr %97, align 4
  store i32 %98, ptr %kl, align 4
  %99 = load ptr, ptr %ijob.addr, align 8
  %100 = load i32, ptr %99, align 4
  %cmp83 = icmp eq i32 %100, 2
  br i1 %cmp83, label %if.then84, label %if.end102

if.then84:                                        ; preds = %if.end82
  %101 = load ptr, ptr %minp.addr, align 8
  %102 = load i32, ptr %101, align 4
  store i32 %102, ptr %i__1, align 4
  store i32 1, ptr %ji, align 4
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc99, %if.then84
  %103 = load i32, ptr %ji, align 4
  %104 = load i32, ptr %i__1, align 4
  %cmp86 = icmp sle i32 %103, %104
  br i1 %cmp86, label %for.body87, label %for.end101

for.body87:                                       ; preds = %for.cond85
  %105 = load ptr, ptr %ab.addr, align 8
  %106 = load i32, ptr %ji, align 4
  %107 = load i32, ptr %ab_dim1, align 4
  %add88 = add nsw i32 %106, %107
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds float, ptr %105, i64 %idxprom89
  %108 = load float, ptr %arrayidx90, align 4
  %109 = load ptr, ptr %ab.addr, align 8
  %110 = load i32, ptr %ji, align 4
  %111 = load i32, ptr %ab_dim1, align 4
  %shl91 = shl i32 %111, 1
  %add92 = add nsw i32 %110, %shl91
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds float, ptr %109, i64 %idxprom93
  %112 = load float, ptr %arrayidx94, align 4
  %add95 = fadd float %108, %112
  %mul96 = fmul float %add95, 5.000000e-01
  %113 = load ptr, ptr %c__.addr, align 8
  %114 = load i32, ptr %ji, align 4
  %idxprom97 = sext i32 %114 to i64
  %arrayidx98 = getelementptr inbounds float, ptr %113, i64 %idxprom97
  store float %mul96, ptr %arrayidx98, align 4
  br label %for.inc99

for.inc99:                                        ; preds = %for.body87
  %115 = load i32, ptr %ji, align 4
  %inc100 = add nsw i32 %115, 1
  store i32 %inc100, ptr %ji, align 4
  br label %for.cond85, !llvm.loop !9

for.end101:                                       ; preds = %for.cond85
  br label %if.end102

if.end102:                                        ; preds = %for.end101, %if.end82
  %116 = load ptr, ptr %nitmax.addr, align 8
  %117 = load i32, ptr %116, align 4
  store i32 %117, ptr %i__1, align 4
  store i32 1, ptr %jit, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc635, %if.end102
  %118 = load i32, ptr %jit, align 4
  %119 = load i32, ptr %i__1, align 4
  %cmp104 = icmp sle i32 %118, %119
  br i1 %cmp104, label %for.body105, label %for.end637

for.body105:                                      ; preds = %for.cond103
  %120 = load i32, ptr %kl, align 4
  %121 = load i32, ptr %kf, align 4
  %sub106 = sub nsw i32 %120, %121
  %add107 = add nsw i32 %sub106, 1
  %122 = load ptr, ptr %nbmin.addr, align 8
  %123 = load i32, ptr %122, align 4
  %cmp108 = icmp sge i32 %add107, %123
  br i1 %cmp108, label %land.lhs.true, label %if.else329

land.lhs.true:                                    ; preds = %for.body105
  %124 = load ptr, ptr %nbmin.addr, align 8
  %125 = load i32, ptr %124, align 4
  %cmp109 = icmp sgt i32 %125, 0
  br i1 %cmp109, label %if.then110, label %if.else329

if.then110:                                       ; preds = %land.lhs.true
  %126 = load i32, ptr %kl, align 4
  store i32 %126, ptr %i__2, align 4
  %127 = load i32, ptr %kf, align 4
  store i32 %127, ptr %ji, align 4
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc177, %if.then110
  %128 = load i32, ptr %ji, align 4
  %129 = load i32, ptr %i__2, align 4
  %cmp112 = icmp sle i32 %128, %129
  br i1 %cmp112, label %for.body113, label %for.end179

for.body113:                                      ; preds = %for.cond111
  %130 = load ptr, ptr %d__.addr, align 8
  %arrayidx114 = getelementptr inbounds float, ptr %130, i64 1
  %131 = load float, ptr %arrayidx114, align 4
  %132 = load ptr, ptr %c__.addr, align 8
  %133 = load i32, ptr %ji, align 4
  %idxprom115 = sext i32 %133 to i64
  %arrayidx116 = getelementptr inbounds float, ptr %132, i64 %idxprom115
  %134 = load float, ptr %arrayidx116, align 4
  %sub117 = fsub float %131, %134
  %135 = load ptr, ptr %work.addr, align 8
  %136 = load i32, ptr %ji, align 4
  %idxprom118 = sext i32 %136 to i64
  %arrayidx119 = getelementptr inbounds float, ptr %135, i64 %idxprom118
  store float %sub117, ptr %arrayidx119, align 4
  %137 = load ptr, ptr %iwork.addr, align 8
  %138 = load i32, ptr %ji, align 4
  %idxprom120 = sext i32 %138 to i64
  %arrayidx121 = getelementptr inbounds i32, ptr %137, i64 %idxprom120
  store i32 0, ptr %arrayidx121, align 4
  %139 = load ptr, ptr %work.addr, align 8
  %140 = load i32, ptr %ji, align 4
  %idxprom122 = sext i32 %140 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %139, i64 %idxprom122
  %141 = load float, ptr %arrayidx123, align 4
  %142 = load ptr, ptr %pivmin.addr, align 8
  %143 = load float, ptr %142, align 4
  %cmp124 = fcmp ole float %141, %143
  br i1 %cmp124, label %if.then125, label %if.end138

if.then125:                                       ; preds = %for.body113
  %144 = load ptr, ptr %iwork.addr, align 8
  %145 = load i32, ptr %ji, align 4
  %idxprom126 = sext i32 %145 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %144, i64 %idxprom126
  store i32 1, ptr %arrayidx127, align 4
  %146 = load ptr, ptr %work.addr, align 8
  %147 = load i32, ptr %ji, align 4
  %idxprom128 = sext i32 %147 to i64
  %arrayidx129 = getelementptr inbounds float, ptr %146, i64 %idxprom128
  %148 = load float, ptr %arrayidx129, align 4
  store float %148, ptr %r__1, align 4
  %149 = load ptr, ptr %pivmin.addr, align 8
  %150 = load float, ptr %149, align 4
  %fneg130 = fneg float %150
  store float %fneg130, ptr %r__2, align 4
  %151 = load float, ptr %r__1, align 4
  %152 = load float, ptr %r__2, align 4
  %cmp131 = fcmp ole float %151, %152
  br i1 %cmp131, label %cond.true132, label %cond.false133

cond.true132:                                     ; preds = %if.then125
  %153 = load float, ptr %r__1, align 4
  br label %cond.end134

cond.false133:                                    ; preds = %if.then125
  %154 = load float, ptr %r__2, align 4
  br label %cond.end134

cond.end134:                                      ; preds = %cond.false133, %cond.true132
  %cond135 = phi float [ %153, %cond.true132 ], [ %154, %cond.false133 ]
  %155 = load ptr, ptr %work.addr, align 8
  %156 = load i32, ptr %ji, align 4
  %idxprom136 = sext i32 %156 to i64
  %arrayidx137 = getelementptr inbounds float, ptr %155, i64 %idxprom136
  store float %cond135, ptr %arrayidx137, align 4
  br label %if.end138

if.end138:                                        ; preds = %cond.end134, %for.body113
  %157 = load ptr, ptr %n.addr, align 8
  %158 = load i32, ptr %157, align 4
  store i32 %158, ptr %i__3, align 4
  store i32 2, ptr %j, align 4
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc174, %if.end138
  %159 = load i32, ptr %j, align 4
  %160 = load i32, ptr %i__3, align 4
  %cmp140 = icmp sle i32 %159, %160
  br i1 %cmp140, label %for.body141, label %for.end176

for.body141:                                      ; preds = %for.cond139
  %161 = load ptr, ptr %d__.addr, align 8
  %162 = load i32, ptr %j, align 4
  %idxprom142 = sext i32 %162 to i64
  %arrayidx143 = getelementptr inbounds float, ptr %161, i64 %idxprom142
  %163 = load float, ptr %arrayidx143, align 4
  %164 = load ptr, ptr %e2.addr, align 8
  %165 = load i32, ptr %j, align 4
  %sub144 = sub nsw i32 %165, 1
  %idxprom145 = sext i32 %sub144 to i64
  %arrayidx146 = getelementptr inbounds float, ptr %164, i64 %idxprom145
  %166 = load float, ptr %arrayidx146, align 4
  %167 = load ptr, ptr %work.addr, align 8
  %168 = load i32, ptr %ji, align 4
  %idxprom147 = sext i32 %168 to i64
  %arrayidx148 = getelementptr inbounds float, ptr %167, i64 %idxprom147
  %169 = load float, ptr %arrayidx148, align 4
  %div149 = fdiv float %166, %169
  %sub150 = fsub float %163, %div149
  %170 = load ptr, ptr %c__.addr, align 8
  %171 = load i32, ptr %ji, align 4
  %idxprom151 = sext i32 %171 to i64
  %arrayidx152 = getelementptr inbounds float, ptr %170, i64 %idxprom151
  %172 = load float, ptr %arrayidx152, align 4
  %sub153 = fsub float %sub150, %172
  %173 = load ptr, ptr %work.addr, align 8
  %174 = load i32, ptr %ji, align 4
  %idxprom154 = sext i32 %174 to i64
  %arrayidx155 = getelementptr inbounds float, ptr %173, i64 %idxprom154
  store float %sub153, ptr %arrayidx155, align 4
  %175 = load ptr, ptr %work.addr, align 8
  %176 = load i32, ptr %ji, align 4
  %idxprom156 = sext i32 %176 to i64
  %arrayidx157 = getelementptr inbounds float, ptr %175, i64 %idxprom156
  %177 = load float, ptr %arrayidx157, align 4
  %178 = load ptr, ptr %pivmin.addr, align 8
  %179 = load float, ptr %178, align 4
  %cmp158 = fcmp ole float %177, %179
  br i1 %cmp158, label %if.then159, label %if.end173

if.then159:                                       ; preds = %for.body141
  %180 = load ptr, ptr %iwork.addr, align 8
  %181 = load i32, ptr %ji, align 4
  %idxprom160 = sext i32 %181 to i64
  %arrayidx161 = getelementptr inbounds i32, ptr %180, i64 %idxprom160
  %182 = load i32, ptr %arrayidx161, align 4
  %inc162 = add nsw i32 %182, 1
  store i32 %inc162, ptr %arrayidx161, align 4
  %183 = load ptr, ptr %work.addr, align 8
  %184 = load i32, ptr %ji, align 4
  %idxprom163 = sext i32 %184 to i64
  %arrayidx164 = getelementptr inbounds float, ptr %183, i64 %idxprom163
  %185 = load float, ptr %arrayidx164, align 4
  store float %185, ptr %r__1, align 4
  %186 = load ptr, ptr %pivmin.addr, align 8
  %187 = load float, ptr %186, align 4
  %fneg165 = fneg float %187
  store float %fneg165, ptr %r__2, align 4
  %188 = load float, ptr %r__1, align 4
  %189 = load float, ptr %r__2, align 4
  %cmp166 = fcmp ole float %188, %189
  br i1 %cmp166, label %cond.true167, label %cond.false168

cond.true167:                                     ; preds = %if.then159
  %190 = load float, ptr %r__1, align 4
  br label %cond.end169

cond.false168:                                    ; preds = %if.then159
  %191 = load float, ptr %r__2, align 4
  br label %cond.end169

cond.end169:                                      ; preds = %cond.false168, %cond.true167
  %cond170 = phi float [ %190, %cond.true167 ], [ %191, %cond.false168 ]
  %192 = load ptr, ptr %work.addr, align 8
  %193 = load i32, ptr %ji, align 4
  %idxprom171 = sext i32 %193 to i64
  %arrayidx172 = getelementptr inbounds float, ptr %192, i64 %idxprom171
  store float %cond170, ptr %arrayidx172, align 4
  br label %if.end173

if.end173:                                        ; preds = %cond.end169, %for.body141
  br label %for.inc174

for.inc174:                                       ; preds = %if.end173
  %194 = load i32, ptr %j, align 4
  %inc175 = add nsw i32 %194, 1
  store i32 %inc175, ptr %j, align 4
  br label %for.cond139, !llvm.loop !10

for.end176:                                       ; preds = %for.cond139
  br label %for.inc177

for.inc177:                                       ; preds = %for.end176
  %195 = load i32, ptr %ji, align 4
  %inc178 = add nsw i32 %195, 1
  store i32 %inc178, ptr %ji, align 4
  br label %for.cond111, !llvm.loop !11

for.end179:                                       ; preds = %for.cond111
  %196 = load ptr, ptr %ijob.addr, align 8
  %197 = load i32, ptr %196, align 4
  %cmp180 = icmp sle i32 %197, 2
  br i1 %cmp180, label %if.then181, label %if.else285

if.then181:                                       ; preds = %for.end179
  %198 = load i32, ptr %kl, align 4
  store i32 %198, ptr %klnew, align 4
  %199 = load i32, ptr %kl, align 4
  store i32 %199, ptr %i__2, align 4
  %200 = load i32, ptr %kf, align 4
  store i32 %200, ptr %ji, align 4
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc279, %if.then181
  %201 = load i32, ptr %ji, align 4
  %202 = load i32, ptr %i__2, align 4
  %cmp183 = icmp sle i32 %201, %202
  br i1 %cmp183, label %for.body184, label %for.end281

for.body184:                                      ; preds = %for.cond182
  %203 = load ptr, ptr %nab.addr, align 8
  %204 = load i32, ptr %ji, align 4
  %205 = load i32, ptr %nab_dim1, align 4
  %add185 = add nsw i32 %204, %205
  %idxprom186 = sext i32 %add185 to i64
  %arrayidx187 = getelementptr inbounds i32, ptr %203, i64 %idxprom186
  %206 = load i32, ptr %arrayidx187, align 4
  store i32 %206, ptr %i__5, align 4
  %207 = load ptr, ptr %iwork.addr, align 8
  %208 = load i32, ptr %ji, align 4
  %idxprom188 = sext i32 %208 to i64
  %arrayidx189 = getelementptr inbounds i32, ptr %207, i64 %idxprom188
  %209 = load i32, ptr %arrayidx189, align 4
  store i32 %209, ptr %i__6, align 4
  %210 = load ptr, ptr %nab.addr, align 8
  %211 = load i32, ptr %ji, align 4
  %212 = load i32, ptr %nab_dim1, align 4
  %shl190 = shl i32 %212, 1
  %add191 = add nsw i32 %211, %shl190
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds i32, ptr %210, i64 %idxprom192
  %213 = load i32, ptr %arrayidx193, align 4
  store i32 %213, ptr %i__3, align 4
  %214 = load i32, ptr %i__5, align 4
  %215 = load i32, ptr %i__6, align 4
  %cmp194 = icmp sge i32 %214, %215
  br i1 %cmp194, label %cond.true195, label %cond.false196

cond.true195:                                     ; preds = %for.body184
  %216 = load i32, ptr %i__5, align 4
  br label %cond.end197

cond.false196:                                    ; preds = %for.body184
  %217 = load i32, ptr %i__6, align 4
  br label %cond.end197

cond.end197:                                      ; preds = %cond.false196, %cond.true195
  %cond198 = phi i32 [ %216, %cond.true195 ], [ %217, %cond.false196 ]
  store i32 %cond198, ptr %i__4, align 4
  %218 = load i32, ptr %i__3, align 4
  %219 = load i32, ptr %i__4, align 4
  %cmp199 = icmp sle i32 %218, %219
  br i1 %cmp199, label %cond.true200, label %cond.false201

cond.true200:                                     ; preds = %cond.end197
  %220 = load i32, ptr %i__3, align 4
  br label %cond.end202

cond.false201:                                    ; preds = %cond.end197
  %221 = load i32, ptr %i__4, align 4
  br label %cond.end202

cond.end202:                                      ; preds = %cond.false201, %cond.true200
  %cond203 = phi i32 [ %220, %cond.true200 ], [ %221, %cond.false201 ]
  %222 = load ptr, ptr %iwork.addr, align 8
  %223 = load i32, ptr %ji, align 4
  %idxprom204 = sext i32 %223 to i64
  %arrayidx205 = getelementptr inbounds i32, ptr %222, i64 %idxprom204
  store i32 %cond203, ptr %arrayidx205, align 4
  %224 = load ptr, ptr %iwork.addr, align 8
  %225 = load i32, ptr %ji, align 4
  %idxprom206 = sext i32 %225 to i64
  %arrayidx207 = getelementptr inbounds i32, ptr %224, i64 %idxprom206
  %226 = load i32, ptr %arrayidx207, align 4
  %227 = load ptr, ptr %nab.addr, align 8
  %228 = load i32, ptr %ji, align 4
  %229 = load i32, ptr %nab_dim1, align 4
  %shl208 = shl i32 %229, 1
  %add209 = add nsw i32 %228, %shl208
  %idxprom210 = sext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds i32, ptr %227, i64 %idxprom210
  %230 = load i32, ptr %arrayidx211, align 4
  %cmp212 = icmp eq i32 %226, %230
  br i1 %cmp212, label %if.then213, label %if.else

if.then213:                                       ; preds = %cond.end202
  %231 = load ptr, ptr %c__.addr, align 8
  %232 = load i32, ptr %ji, align 4
  %idxprom214 = sext i32 %232 to i64
  %arrayidx215 = getelementptr inbounds float, ptr %231, i64 %idxprom214
  %233 = load float, ptr %arrayidx215, align 4
  %234 = load ptr, ptr %ab.addr, align 8
  %235 = load i32, ptr %ji, align 4
  %236 = load i32, ptr %ab_dim1, align 4
  %shl216 = shl i32 %236, 1
  %add217 = add nsw i32 %235, %shl216
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds float, ptr %234, i64 %idxprom218
  store float %233, ptr %arrayidx219, align 4
  br label %if.end278

if.else:                                          ; preds = %cond.end202
  %237 = load ptr, ptr %iwork.addr, align 8
  %238 = load i32, ptr %ji, align 4
  %idxprom220 = sext i32 %238 to i64
  %arrayidx221 = getelementptr inbounds i32, ptr %237, i64 %idxprom220
  %239 = load i32, ptr %arrayidx221, align 4
  %240 = load ptr, ptr %nab.addr, align 8
  %241 = load i32, ptr %ji, align 4
  %242 = load i32, ptr %nab_dim1, align 4
  %add222 = add nsw i32 %241, %242
  %idxprom223 = sext i32 %add222 to i64
  %arrayidx224 = getelementptr inbounds i32, ptr %240, i64 %idxprom223
  %243 = load i32, ptr %arrayidx224, align 4
  %cmp225 = icmp eq i32 %239, %243
  br i1 %cmp225, label %if.then226, label %if.else232

if.then226:                                       ; preds = %if.else
  %244 = load ptr, ptr %c__.addr, align 8
  %245 = load i32, ptr %ji, align 4
  %idxprom227 = sext i32 %245 to i64
  %arrayidx228 = getelementptr inbounds float, ptr %244, i64 %idxprom227
  %246 = load float, ptr %arrayidx228, align 4
  %247 = load ptr, ptr %ab.addr, align 8
  %248 = load i32, ptr %ji, align 4
  %249 = load i32, ptr %ab_dim1, align 4
  %add229 = add nsw i32 %248, %249
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds float, ptr %247, i64 %idxprom230
  store float %246, ptr %arrayidx231, align 4
  br label %if.end277

if.else232:                                       ; preds = %if.else
  %250 = load i32, ptr %klnew, align 4
  %inc233 = add nsw i32 %250, 1
  store i32 %inc233, ptr %klnew, align 4
  %251 = load i32, ptr %klnew, align 4
  %252 = load ptr, ptr %mmax.addr, align 8
  %253 = load i32, ptr %252, align 4
  %cmp234 = icmp sle i32 %251, %253
  br i1 %cmp234, label %if.then235, label %if.else274

if.then235:                                       ; preds = %if.else232
  %254 = load ptr, ptr %ab.addr, align 8
  %255 = load i32, ptr %ji, align 4
  %256 = load i32, ptr %ab_dim1, align 4
  %shl236 = shl i32 %256, 1
  %add237 = add nsw i32 %255, %shl236
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx239 = getelementptr inbounds float, ptr %254, i64 %idxprom238
  %257 = load float, ptr %arrayidx239, align 4
  %258 = load ptr, ptr %ab.addr, align 8
  %259 = load i32, ptr %klnew, align 4
  %260 = load i32, ptr %ab_dim1, align 4
  %shl240 = shl i32 %260, 1
  %add241 = add nsw i32 %259, %shl240
  %idxprom242 = sext i32 %add241 to i64
  %arrayidx243 = getelementptr inbounds float, ptr %258, i64 %idxprom242
  store float %257, ptr %arrayidx243, align 4
  %261 = load ptr, ptr %nab.addr, align 8
  %262 = load i32, ptr %ji, align 4
  %263 = load i32, ptr %nab_dim1, align 4
  %shl244 = shl i32 %263, 1
  %add245 = add nsw i32 %262, %shl244
  %idxprom246 = sext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds i32, ptr %261, i64 %idxprom246
  %264 = load i32, ptr %arrayidx247, align 4
  %265 = load ptr, ptr %nab.addr, align 8
  %266 = load i32, ptr %klnew, align 4
  %267 = load i32, ptr %nab_dim1, align 4
  %shl248 = shl i32 %267, 1
  %add249 = add nsw i32 %266, %shl248
  %idxprom250 = sext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds i32, ptr %265, i64 %idxprom250
  store i32 %264, ptr %arrayidx251, align 4
  %268 = load ptr, ptr %c__.addr, align 8
  %269 = load i32, ptr %ji, align 4
  %idxprom252 = sext i32 %269 to i64
  %arrayidx253 = getelementptr inbounds float, ptr %268, i64 %idxprom252
  %270 = load float, ptr %arrayidx253, align 4
  %271 = load ptr, ptr %ab.addr, align 8
  %272 = load i32, ptr %klnew, align 4
  %273 = load i32, ptr %ab_dim1, align 4
  %add254 = add nsw i32 %272, %273
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds float, ptr %271, i64 %idxprom255
  store float %270, ptr %arrayidx256, align 4
  %274 = load ptr, ptr %iwork.addr, align 8
  %275 = load i32, ptr %ji, align 4
  %idxprom257 = sext i32 %275 to i64
  %arrayidx258 = getelementptr inbounds i32, ptr %274, i64 %idxprom257
  %276 = load i32, ptr %arrayidx258, align 4
  %277 = load ptr, ptr %nab.addr, align 8
  %278 = load i32, ptr %klnew, align 4
  %279 = load i32, ptr %nab_dim1, align 4
  %add259 = add nsw i32 %278, %279
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds i32, ptr %277, i64 %idxprom260
  store i32 %276, ptr %arrayidx261, align 4
  %280 = load ptr, ptr %c__.addr, align 8
  %281 = load i32, ptr %ji, align 4
  %idxprom262 = sext i32 %281 to i64
  %arrayidx263 = getelementptr inbounds float, ptr %280, i64 %idxprom262
  %282 = load float, ptr %arrayidx263, align 4
  %283 = load ptr, ptr %ab.addr, align 8
  %284 = load i32, ptr %ji, align 4
  %285 = load i32, ptr %ab_dim1, align 4
  %shl264 = shl i32 %285, 1
  %add265 = add nsw i32 %284, %shl264
  %idxprom266 = sext i32 %add265 to i64
  %arrayidx267 = getelementptr inbounds float, ptr %283, i64 %idxprom266
  store float %282, ptr %arrayidx267, align 4
  %286 = load ptr, ptr %iwork.addr, align 8
  %287 = load i32, ptr %ji, align 4
  %idxprom268 = sext i32 %287 to i64
  %arrayidx269 = getelementptr inbounds i32, ptr %286, i64 %idxprom268
  %288 = load i32, ptr %arrayidx269, align 4
  %289 = load ptr, ptr %nab.addr, align 8
  %290 = load i32, ptr %ji, align 4
  %291 = load i32, ptr %nab_dim1, align 4
  %shl270 = shl i32 %291, 1
  %add271 = add nsw i32 %290, %shl270
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds i32, ptr %289, i64 %idxprom272
  store i32 %288, ptr %arrayidx273, align 4
  br label %if.end276

if.else274:                                       ; preds = %if.else232
  %292 = load ptr, ptr %mmax.addr, align 8
  %293 = load i32, ptr %292, align 4
  %add275 = add nsw i32 %293, 1
  %294 = load ptr, ptr %info.addr, align 8
  store i32 %add275, ptr %294, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.else274, %if.then235
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %if.then226
  br label %if.end278

if.end278:                                        ; preds = %if.end277, %if.then213
  br label %for.inc279

for.inc279:                                       ; preds = %if.end278
  %295 = load i32, ptr %ji, align 4
  %inc280 = add nsw i32 %295, 1
  store i32 %inc280, ptr %ji, align 4
  br label %for.cond182, !llvm.loop !12

for.end281:                                       ; preds = %for.cond182
  %296 = load ptr, ptr %info.addr, align 8
  %297 = load i32, ptr %296, align 4
  %cmp282 = icmp ne i32 %297, 0
  br i1 %cmp282, label %if.then283, label %if.end284

if.then283:                                       ; preds = %for.end281
  store i32 0, ptr %retval, align 4
  br label %return

if.end284:                                        ; preds = %for.end281
  %298 = load i32, ptr %klnew, align 4
  store i32 %298, ptr %kl, align 4
  br label %if.end328

if.else285:                                       ; preds = %for.end179
  %299 = load i32, ptr %kl, align 4
  store i32 %299, ptr %i__2, align 4
  %300 = load i32, ptr %kf, align 4
  store i32 %300, ptr %ji, align 4
  br label %for.cond286

for.cond286:                                      ; preds = %for.inc325, %if.else285
  %301 = load i32, ptr %ji, align 4
  %302 = load i32, ptr %i__2, align 4
  %cmp287 = icmp sle i32 %301, %302
  br i1 %cmp287, label %for.body288, label %for.end327

for.body288:                                      ; preds = %for.cond286
  %303 = load ptr, ptr %iwork.addr, align 8
  %304 = load i32, ptr %ji, align 4
  %idxprom289 = sext i32 %304 to i64
  %arrayidx290 = getelementptr inbounds i32, ptr %303, i64 %idxprom289
  %305 = load i32, ptr %arrayidx290, align 4
  %306 = load ptr, ptr %nval.addr, align 8
  %307 = load i32, ptr %ji, align 4
  %idxprom291 = sext i32 %307 to i64
  %arrayidx292 = getelementptr inbounds i32, ptr %306, i64 %idxprom291
  %308 = load i32, ptr %arrayidx292, align 4
  %cmp293 = icmp sle i32 %305, %308
  br i1 %cmp293, label %if.then294, label %if.end305

if.then294:                                       ; preds = %for.body288
  %309 = load ptr, ptr %c__.addr, align 8
  %310 = load i32, ptr %ji, align 4
  %idxprom295 = sext i32 %310 to i64
  %arrayidx296 = getelementptr inbounds float, ptr %309, i64 %idxprom295
  %311 = load float, ptr %arrayidx296, align 4
  %312 = load ptr, ptr %ab.addr, align 8
  %313 = load i32, ptr %ji, align 4
  %314 = load i32, ptr %ab_dim1, align 4
  %add297 = add nsw i32 %313, %314
  %idxprom298 = sext i32 %add297 to i64
  %arrayidx299 = getelementptr inbounds float, ptr %312, i64 %idxprom298
  store float %311, ptr %arrayidx299, align 4
  %315 = load ptr, ptr %iwork.addr, align 8
  %316 = load i32, ptr %ji, align 4
  %idxprom300 = sext i32 %316 to i64
  %arrayidx301 = getelementptr inbounds i32, ptr %315, i64 %idxprom300
  %317 = load i32, ptr %arrayidx301, align 4
  %318 = load ptr, ptr %nab.addr, align 8
  %319 = load i32, ptr %ji, align 4
  %320 = load i32, ptr %nab_dim1, align 4
  %add302 = add nsw i32 %319, %320
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds i32, ptr %318, i64 %idxprom303
  store i32 %317, ptr %arrayidx304, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.then294, %for.body288
  %321 = load ptr, ptr %iwork.addr, align 8
  %322 = load i32, ptr %ji, align 4
  %idxprom306 = sext i32 %322 to i64
  %arrayidx307 = getelementptr inbounds i32, ptr %321, i64 %idxprom306
  %323 = load i32, ptr %arrayidx307, align 4
  %324 = load ptr, ptr %nval.addr, align 8
  %325 = load i32, ptr %ji, align 4
  %idxprom308 = sext i32 %325 to i64
  %arrayidx309 = getelementptr inbounds i32, ptr %324, i64 %idxprom308
  %326 = load i32, ptr %arrayidx309, align 4
  %cmp310 = icmp sge i32 %323, %326
  br i1 %cmp310, label %if.then311, label %if.end324

if.then311:                                       ; preds = %if.end305
  %327 = load ptr, ptr %c__.addr, align 8
  %328 = load i32, ptr %ji, align 4
  %idxprom312 = sext i32 %328 to i64
  %arrayidx313 = getelementptr inbounds float, ptr %327, i64 %idxprom312
  %329 = load float, ptr %arrayidx313, align 4
  %330 = load ptr, ptr %ab.addr, align 8
  %331 = load i32, ptr %ji, align 4
  %332 = load i32, ptr %ab_dim1, align 4
  %shl314 = shl i32 %332, 1
  %add315 = add nsw i32 %331, %shl314
  %idxprom316 = sext i32 %add315 to i64
  %arrayidx317 = getelementptr inbounds float, ptr %330, i64 %idxprom316
  store float %329, ptr %arrayidx317, align 4
  %333 = load ptr, ptr %iwork.addr, align 8
  %334 = load i32, ptr %ji, align 4
  %idxprom318 = sext i32 %334 to i64
  %arrayidx319 = getelementptr inbounds i32, ptr %333, i64 %idxprom318
  %335 = load i32, ptr %arrayidx319, align 4
  %336 = load ptr, ptr %nab.addr, align 8
  %337 = load i32, ptr %ji, align 4
  %338 = load i32, ptr %nab_dim1, align 4
  %shl320 = shl i32 %338, 1
  %add321 = add nsw i32 %337, %shl320
  %idxprom322 = sext i32 %add321 to i64
  %arrayidx323 = getelementptr inbounds i32, ptr %336, i64 %idxprom322
  store i32 %335, ptr %arrayidx323, align 4
  br label %if.end324

if.end324:                                        ; preds = %if.then311, %if.end305
  br label %for.inc325

for.inc325:                                       ; preds = %if.end324
  %339 = load i32, ptr %ji, align 4
  %inc326 = add nsw i32 %339, 1
  store i32 %inc326, ptr %ji, align 4
  br label %for.cond286, !llvm.loop !13

for.end327:                                       ; preds = %for.cond286
  br label %if.end328

if.end328:                                        ; preds = %for.end327, %if.end284
  br label %if.end476

if.else329:                                       ; preds = %land.lhs.true, %for.body105
  %340 = load i32, ptr %kl, align 4
  store i32 %340, ptr %klnew, align 4
  %341 = load i32, ptr %kl, align 4
  store i32 %341, ptr %i__2, align 4
  %342 = load i32, ptr %kf, align 4
  store i32 %342, ptr %ji, align 4
  br label %for.cond330

for.cond330:                                      ; preds = %for.inc473, %if.else329
  %343 = load i32, ptr %ji, align 4
  %344 = load i32, ptr %i__2, align 4
  %cmp331 = icmp sle i32 %343, %344
  br i1 %cmp331, label %for.body332, label %for.end475

for.body332:                                      ; preds = %for.cond330
  %345 = load ptr, ptr %c__.addr, align 8
  %346 = load i32, ptr %ji, align 4
  %idxprom333 = sext i32 %346 to i64
  %arrayidx334 = getelementptr inbounds float, ptr %345, i64 %idxprom333
  %347 = load float, ptr %arrayidx334, align 4
  store float %347, ptr %tmp1, align 4
  %348 = load ptr, ptr %d__.addr, align 8
  %arrayidx335 = getelementptr inbounds float, ptr %348, i64 1
  %349 = load float, ptr %arrayidx335, align 4
  %350 = load float, ptr %tmp1, align 4
  %sub336 = fsub float %349, %350
  store float %sub336, ptr %tmp2, align 4
  store i32 0, ptr %itmp1, align 4
  %351 = load float, ptr %tmp2, align 4
  %352 = load ptr, ptr %pivmin.addr, align 8
  %353 = load float, ptr %352, align 4
  %cmp337 = fcmp ole float %351, %353
  br i1 %cmp337, label %if.then338, label %if.end345

if.then338:                                       ; preds = %for.body332
  store i32 1, ptr %itmp1, align 4
  %354 = load float, ptr %tmp2, align 4
  store float %354, ptr %r__1, align 4
  %355 = load ptr, ptr %pivmin.addr, align 8
  %356 = load float, ptr %355, align 4
  %fneg339 = fneg float %356
  store float %fneg339, ptr %r__2, align 4
  %357 = load float, ptr %r__1, align 4
  %358 = load float, ptr %r__2, align 4
  %cmp340 = fcmp ole float %357, %358
  br i1 %cmp340, label %cond.true341, label %cond.false342

cond.true341:                                     ; preds = %if.then338
  %359 = load float, ptr %r__1, align 4
  br label %cond.end343

cond.false342:                                    ; preds = %if.then338
  %360 = load float, ptr %r__2, align 4
  br label %cond.end343

cond.end343:                                      ; preds = %cond.false342, %cond.true341
  %cond344 = phi float [ %359, %cond.true341 ], [ %360, %cond.false342 ]
  store float %cond344, ptr %tmp2, align 4
  br label %if.end345

if.end345:                                        ; preds = %cond.end343, %for.body332
  %361 = load ptr, ptr %n.addr, align 8
  %362 = load i32, ptr %361, align 4
  store i32 %362, ptr %i__3, align 4
  store i32 2, ptr %j, align 4
  br label %for.cond346

for.cond346:                                      ; preds = %for.inc367, %if.end345
  %363 = load i32, ptr %j, align 4
  %364 = load i32, ptr %i__3, align 4
  %cmp347 = icmp sle i32 %363, %364
  br i1 %cmp347, label %for.body348, label %for.end369

for.body348:                                      ; preds = %for.cond346
  %365 = load ptr, ptr %d__.addr, align 8
  %366 = load i32, ptr %j, align 4
  %idxprom349 = sext i32 %366 to i64
  %arrayidx350 = getelementptr inbounds float, ptr %365, i64 %idxprom349
  %367 = load float, ptr %arrayidx350, align 4
  %368 = load ptr, ptr %e2.addr, align 8
  %369 = load i32, ptr %j, align 4
  %sub351 = sub nsw i32 %369, 1
  %idxprom352 = sext i32 %sub351 to i64
  %arrayidx353 = getelementptr inbounds float, ptr %368, i64 %idxprom352
  %370 = load float, ptr %arrayidx353, align 4
  %371 = load float, ptr %tmp2, align 4
  %div354 = fdiv float %370, %371
  %sub355 = fsub float %367, %div354
  %372 = load float, ptr %tmp1, align 4
  %sub356 = fsub float %sub355, %372
  store float %sub356, ptr %tmp2, align 4
  %373 = load float, ptr %tmp2, align 4
  %374 = load ptr, ptr %pivmin.addr, align 8
  %375 = load float, ptr %374, align 4
  %cmp357 = fcmp ole float %373, %375
  br i1 %cmp357, label %if.then358, label %if.end366

if.then358:                                       ; preds = %for.body348
  %376 = load i32, ptr %itmp1, align 4
  %inc359 = add nsw i32 %376, 1
  store i32 %inc359, ptr %itmp1, align 4
  %377 = load float, ptr %tmp2, align 4
  store float %377, ptr %r__1, align 4
  %378 = load ptr, ptr %pivmin.addr, align 8
  %379 = load float, ptr %378, align 4
  %fneg360 = fneg float %379
  store float %fneg360, ptr %r__2, align 4
  %380 = load float, ptr %r__1, align 4
  %381 = load float, ptr %r__2, align 4
  %cmp361 = fcmp ole float %380, %381
  br i1 %cmp361, label %cond.true362, label %cond.false363

cond.true362:                                     ; preds = %if.then358
  %382 = load float, ptr %r__1, align 4
  br label %cond.end364

cond.false363:                                    ; preds = %if.then358
  %383 = load float, ptr %r__2, align 4
  br label %cond.end364

cond.end364:                                      ; preds = %cond.false363, %cond.true362
  %cond365 = phi float [ %382, %cond.true362 ], [ %383, %cond.false363 ]
  store float %cond365, ptr %tmp2, align 4
  br label %if.end366

if.end366:                                        ; preds = %cond.end364, %for.body348
  br label %for.inc367

for.inc367:                                       ; preds = %if.end366
  %384 = load i32, ptr %j, align 4
  %inc368 = add nsw i32 %384, 1
  store i32 %inc368, ptr %j, align 4
  br label %for.cond346, !llvm.loop !14

for.end369:                                       ; preds = %for.cond346
  %385 = load ptr, ptr %ijob.addr, align 8
  %386 = load i32, ptr %385, align 4
  %cmp370 = icmp sle i32 %386, 2
  br i1 %cmp370, label %if.then371, label %if.else447

if.then371:                                       ; preds = %for.end369
  %387 = load ptr, ptr %nab.addr, align 8
  %388 = load i32, ptr %ji, align 4
  %389 = load i32, ptr %nab_dim1, align 4
  %add372 = add nsw i32 %388, %389
  %idxprom373 = sext i32 %add372 to i64
  %arrayidx374 = getelementptr inbounds i32, ptr %387, i64 %idxprom373
  %390 = load i32, ptr %arrayidx374, align 4
  store i32 %390, ptr %i__5, align 4
  %391 = load ptr, ptr %nab.addr, align 8
  %392 = load i32, ptr %ji, align 4
  %393 = load i32, ptr %nab_dim1, align 4
  %shl375 = shl i32 %393, 1
  %add376 = add nsw i32 %392, %shl375
  %idxprom377 = sext i32 %add376 to i64
  %arrayidx378 = getelementptr inbounds i32, ptr %391, i64 %idxprom377
  %394 = load i32, ptr %arrayidx378, align 4
  store i32 %394, ptr %i__3, align 4
  %395 = load i32, ptr %i__5, align 4
  %396 = load i32, ptr %itmp1, align 4
  %cmp379 = icmp sge i32 %395, %396
  br i1 %cmp379, label %cond.true380, label %cond.false381

cond.true380:                                     ; preds = %if.then371
  %397 = load i32, ptr %i__5, align 4
  br label %cond.end382

cond.false381:                                    ; preds = %if.then371
  %398 = load i32, ptr %itmp1, align 4
  br label %cond.end382

cond.end382:                                      ; preds = %cond.false381, %cond.true380
  %cond383 = phi i32 [ %397, %cond.true380 ], [ %398, %cond.false381 ]
  store i32 %cond383, ptr %i__4, align 4
  %399 = load i32, ptr %i__3, align 4
  %400 = load i32, ptr %i__4, align 4
  %cmp384 = icmp sle i32 %399, %400
  br i1 %cmp384, label %cond.true385, label %cond.false386

cond.true385:                                     ; preds = %cond.end382
  %401 = load i32, ptr %i__3, align 4
  br label %cond.end387

cond.false386:                                    ; preds = %cond.end382
  %402 = load i32, ptr %i__4, align 4
  br label %cond.end387

cond.end387:                                      ; preds = %cond.false386, %cond.true385
  %cond388 = phi i32 [ %401, %cond.true385 ], [ %402, %cond.false386 ]
  store i32 %cond388, ptr %itmp1, align 4
  %403 = load i32, ptr %itmp1, align 4
  %404 = load ptr, ptr %nab.addr, align 8
  %405 = load i32, ptr %ji, align 4
  %406 = load i32, ptr %nab_dim1, align 4
  %shl389 = shl i32 %406, 1
  %add390 = add nsw i32 %405, %shl389
  %idxprom391 = sext i32 %add390 to i64
  %arrayidx392 = getelementptr inbounds i32, ptr %404, i64 %idxprom391
  %407 = load i32, ptr %arrayidx392, align 4
  %cmp393 = icmp eq i32 %403, %407
  br i1 %cmp393, label %if.then394, label %if.else399

if.then394:                                       ; preds = %cond.end387
  %408 = load float, ptr %tmp1, align 4
  %409 = load ptr, ptr %ab.addr, align 8
  %410 = load i32, ptr %ji, align 4
  %411 = load i32, ptr %ab_dim1, align 4
  %shl395 = shl i32 %411, 1
  %add396 = add nsw i32 %410, %shl395
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds float, ptr %409, i64 %idxprom397
  store float %408, ptr %arrayidx398, align 4
  br label %if.end446

if.else399:                                       ; preds = %cond.end387
  %412 = load i32, ptr %itmp1, align 4
  %413 = load ptr, ptr %nab.addr, align 8
  %414 = load i32, ptr %ji, align 4
  %415 = load i32, ptr %nab_dim1, align 4
  %add400 = add nsw i32 %414, %415
  %idxprom401 = sext i32 %add400 to i64
  %arrayidx402 = getelementptr inbounds i32, ptr %413, i64 %idxprom401
  %416 = load i32, ptr %arrayidx402, align 4
  %cmp403 = icmp eq i32 %412, %416
  br i1 %cmp403, label %if.then404, label %if.else408

if.then404:                                       ; preds = %if.else399
  %417 = load float, ptr %tmp1, align 4
  %418 = load ptr, ptr %ab.addr, align 8
  %419 = load i32, ptr %ji, align 4
  %420 = load i32, ptr %ab_dim1, align 4
  %add405 = add nsw i32 %419, %420
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds float, ptr %418, i64 %idxprom406
  store float %417, ptr %arrayidx407, align 4
  br label %if.end445

if.else408:                                       ; preds = %if.else399
  %421 = load i32, ptr %klnew, align 4
  %422 = load ptr, ptr %mmax.addr, align 8
  %423 = load i32, ptr %422, align 4
  %cmp409 = icmp slt i32 %421, %423
  br i1 %cmp409, label %if.then410, label %if.else442

if.then410:                                       ; preds = %if.else408
  %424 = load i32, ptr %klnew, align 4
  %inc411 = add nsw i32 %424, 1
  store i32 %inc411, ptr %klnew, align 4
  %425 = load ptr, ptr %ab.addr, align 8
  %426 = load i32, ptr %ji, align 4
  %427 = load i32, ptr %ab_dim1, align 4
  %shl412 = shl i32 %427, 1
  %add413 = add nsw i32 %426, %shl412
  %idxprom414 = sext i32 %add413 to i64
  %arrayidx415 = getelementptr inbounds float, ptr %425, i64 %idxprom414
  %428 = load float, ptr %arrayidx415, align 4
  %429 = load ptr, ptr %ab.addr, align 8
  %430 = load i32, ptr %klnew, align 4
  %431 = load i32, ptr %ab_dim1, align 4
  %shl416 = shl i32 %431, 1
  %add417 = add nsw i32 %430, %shl416
  %idxprom418 = sext i32 %add417 to i64
  %arrayidx419 = getelementptr inbounds float, ptr %429, i64 %idxprom418
  store float %428, ptr %arrayidx419, align 4
  %432 = load ptr, ptr %nab.addr, align 8
  %433 = load i32, ptr %ji, align 4
  %434 = load i32, ptr %nab_dim1, align 4
  %shl420 = shl i32 %434, 1
  %add421 = add nsw i32 %433, %shl420
  %idxprom422 = sext i32 %add421 to i64
  %arrayidx423 = getelementptr inbounds i32, ptr %432, i64 %idxprom422
  %435 = load i32, ptr %arrayidx423, align 4
  %436 = load ptr, ptr %nab.addr, align 8
  %437 = load i32, ptr %klnew, align 4
  %438 = load i32, ptr %nab_dim1, align 4
  %shl424 = shl i32 %438, 1
  %add425 = add nsw i32 %437, %shl424
  %idxprom426 = sext i32 %add425 to i64
  %arrayidx427 = getelementptr inbounds i32, ptr %436, i64 %idxprom426
  store i32 %435, ptr %arrayidx427, align 4
  %439 = load float, ptr %tmp1, align 4
  %440 = load ptr, ptr %ab.addr, align 8
  %441 = load i32, ptr %klnew, align 4
  %442 = load i32, ptr %ab_dim1, align 4
  %add428 = add nsw i32 %441, %442
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds float, ptr %440, i64 %idxprom429
  store float %439, ptr %arrayidx430, align 4
  %443 = load i32, ptr %itmp1, align 4
  %444 = load ptr, ptr %nab.addr, align 8
  %445 = load i32, ptr %klnew, align 4
  %446 = load i32, ptr %nab_dim1, align 4
  %add431 = add nsw i32 %445, %446
  %idxprom432 = sext i32 %add431 to i64
  %arrayidx433 = getelementptr inbounds i32, ptr %444, i64 %idxprom432
  store i32 %443, ptr %arrayidx433, align 4
  %447 = load float, ptr %tmp1, align 4
  %448 = load ptr, ptr %ab.addr, align 8
  %449 = load i32, ptr %ji, align 4
  %450 = load i32, ptr %ab_dim1, align 4
  %shl434 = shl i32 %450, 1
  %add435 = add nsw i32 %449, %shl434
  %idxprom436 = sext i32 %add435 to i64
  %arrayidx437 = getelementptr inbounds float, ptr %448, i64 %idxprom436
  store float %447, ptr %arrayidx437, align 4
  %451 = load i32, ptr %itmp1, align 4
  %452 = load ptr, ptr %nab.addr, align 8
  %453 = load i32, ptr %ji, align 4
  %454 = load i32, ptr %nab_dim1, align 4
  %shl438 = shl i32 %454, 1
  %add439 = add nsw i32 %453, %shl438
  %idxprom440 = sext i32 %add439 to i64
  %arrayidx441 = getelementptr inbounds i32, ptr %452, i64 %idxprom440
  store i32 %451, ptr %arrayidx441, align 4
  br label %if.end444

if.else442:                                       ; preds = %if.else408
  %455 = load ptr, ptr %mmax.addr, align 8
  %456 = load i32, ptr %455, align 4
  %add443 = add nsw i32 %456, 1
  %457 = load ptr, ptr %info.addr, align 8
  store i32 %add443, ptr %457, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end444:                                        ; preds = %if.then410
  br label %if.end445

if.end445:                                        ; preds = %if.end444, %if.then404
  br label %if.end446

if.end446:                                        ; preds = %if.end445, %if.then394
  br label %if.end472

if.else447:                                       ; preds = %for.end369
  %458 = load i32, ptr %itmp1, align 4
  %459 = load ptr, ptr %nval.addr, align 8
  %460 = load i32, ptr %ji, align 4
  %idxprom448 = sext i32 %460 to i64
  %arrayidx449 = getelementptr inbounds i32, ptr %459, i64 %idxprom448
  %461 = load i32, ptr %arrayidx449, align 4
  %cmp450 = icmp sle i32 %458, %461
  br i1 %cmp450, label %if.then451, label %if.end458

if.then451:                                       ; preds = %if.else447
  %462 = load float, ptr %tmp1, align 4
  %463 = load ptr, ptr %ab.addr, align 8
  %464 = load i32, ptr %ji, align 4
  %465 = load i32, ptr %ab_dim1, align 4
  %add452 = add nsw i32 %464, %465
  %idxprom453 = sext i32 %add452 to i64
  %arrayidx454 = getelementptr inbounds float, ptr %463, i64 %idxprom453
  store float %462, ptr %arrayidx454, align 4
  %466 = load i32, ptr %itmp1, align 4
  %467 = load ptr, ptr %nab.addr, align 8
  %468 = load i32, ptr %ji, align 4
  %469 = load i32, ptr %nab_dim1, align 4
  %add455 = add nsw i32 %468, %469
  %idxprom456 = sext i32 %add455 to i64
  %arrayidx457 = getelementptr inbounds i32, ptr %467, i64 %idxprom456
  store i32 %466, ptr %arrayidx457, align 4
  br label %if.end458

if.end458:                                        ; preds = %if.then451, %if.else447
  %470 = load i32, ptr %itmp1, align 4
  %471 = load ptr, ptr %nval.addr, align 8
  %472 = load i32, ptr %ji, align 4
  %idxprom459 = sext i32 %472 to i64
  %arrayidx460 = getelementptr inbounds i32, ptr %471, i64 %idxprom459
  %473 = load i32, ptr %arrayidx460, align 4
  %cmp461 = icmp sge i32 %470, %473
  br i1 %cmp461, label %if.then462, label %if.end471

if.then462:                                       ; preds = %if.end458
  %474 = load float, ptr %tmp1, align 4
  %475 = load ptr, ptr %ab.addr, align 8
  %476 = load i32, ptr %ji, align 4
  %477 = load i32, ptr %ab_dim1, align 4
  %shl463 = shl i32 %477, 1
  %add464 = add nsw i32 %476, %shl463
  %idxprom465 = sext i32 %add464 to i64
  %arrayidx466 = getelementptr inbounds float, ptr %475, i64 %idxprom465
  store float %474, ptr %arrayidx466, align 4
  %478 = load i32, ptr %itmp1, align 4
  %479 = load ptr, ptr %nab.addr, align 8
  %480 = load i32, ptr %ji, align 4
  %481 = load i32, ptr %nab_dim1, align 4
  %shl467 = shl i32 %481, 1
  %add468 = add nsw i32 %480, %shl467
  %idxprom469 = sext i32 %add468 to i64
  %arrayidx470 = getelementptr inbounds i32, ptr %479, i64 %idxprom469
  store i32 %478, ptr %arrayidx470, align 4
  br label %if.end471

if.end471:                                        ; preds = %if.then462, %if.end458
  br label %if.end472

if.end472:                                        ; preds = %if.end471, %if.end446
  br label %for.inc473

for.inc473:                                       ; preds = %if.end472
  %482 = load i32, ptr %ji, align 4
  %inc474 = add nsw i32 %482, 1
  store i32 %inc474, ptr %ji, align 4
  br label %for.cond330, !llvm.loop !15

for.end475:                                       ; preds = %for.cond330
  %483 = load i32, ptr %klnew, align 4
  store i32 %483, ptr %kl, align 4
  br label %if.end476

if.end476:                                        ; preds = %for.end475, %if.end328
  %484 = load i32, ptr %kf, align 4
  store i32 %484, ptr %kfnew, align 4
  %485 = load i32, ptr %kl, align 4
  store i32 %485, ptr %i__2, align 4
  %486 = load i32, ptr %kf, align 4
  store i32 %486, ptr %ji, align 4
  br label %for.cond477

for.cond477:                                      ; preds = %for.inc612, %if.end476
  %487 = load i32, ptr %ji, align 4
  %488 = load i32, ptr %i__2, align 4
  %cmp478 = icmp sle i32 %487, %488
  br i1 %cmp478, label %for.body479, label %for.end614

for.body479:                                      ; preds = %for.cond477
  %489 = load ptr, ptr %ab.addr, align 8
  %490 = load i32, ptr %ji, align 4
  %491 = load i32, ptr %ab_dim1, align 4
  %shl480 = shl i32 %491, 1
  %add481 = add nsw i32 %490, %shl480
  %idxprom482 = sext i32 %add481 to i64
  %arrayidx483 = getelementptr inbounds float, ptr %489, i64 %idxprom482
  %492 = load float, ptr %arrayidx483, align 4
  %493 = load ptr, ptr %ab.addr, align 8
  %494 = load i32, ptr %ji, align 4
  %495 = load i32, ptr %ab_dim1, align 4
  %add484 = add nsw i32 %494, %495
  %idxprom485 = sext i32 %add484 to i64
  %arrayidx486 = getelementptr inbounds float, ptr %493, i64 %idxprom485
  %496 = load float, ptr %arrayidx486, align 4
  %sub487 = fsub float %492, %496
  store float %sub487, ptr %r__1, align 4
  %497 = load float, ptr %r__1, align 4
  %cmp488 = fcmp oge float %497, 0.000000e+00
  br i1 %cmp488, label %cond.true489, label %cond.false490

cond.true489:                                     ; preds = %for.body479
  %498 = load float, ptr %r__1, align 4
  br label %cond.end492

cond.false490:                                    ; preds = %for.body479
  %499 = load float, ptr %r__1, align 4
  %fneg491 = fneg float %499
  br label %cond.end492

cond.end492:                                      ; preds = %cond.false490, %cond.true489
  %cond493 = phi float [ %498, %cond.true489 ], [ %fneg491, %cond.false490 ]
  store float %cond493, ptr %tmp1, align 4
  %500 = load ptr, ptr %ab.addr, align 8
  %501 = load i32, ptr %ji, align 4
  %502 = load i32, ptr %ab_dim1, align 4
  %shl494 = shl i32 %502, 1
  %add495 = add nsw i32 %501, %shl494
  %idxprom496 = sext i32 %add495 to i64
  %arrayidx497 = getelementptr inbounds float, ptr %500, i64 %idxprom496
  %503 = load float, ptr %arrayidx497, align 4
  store float %503, ptr %r__1, align 4
  %504 = load float, ptr %r__1, align 4
  %cmp498 = fcmp oge float %504, 0.000000e+00
  br i1 %cmp498, label %cond.true499, label %cond.false500

cond.true499:                                     ; preds = %cond.end492
  %505 = load float, ptr %r__1, align 4
  br label %cond.end502

cond.false500:                                    ; preds = %cond.end492
  %506 = load float, ptr %r__1, align 4
  %fneg501 = fneg float %506
  br label %cond.end502

cond.end502:                                      ; preds = %cond.false500, %cond.true499
  %cond503 = phi float [ %505, %cond.true499 ], [ %fneg501, %cond.false500 ]
  store float %cond503, ptr %r__3, align 4
  %507 = load ptr, ptr %ab.addr, align 8
  %508 = load i32, ptr %ji, align 4
  %509 = load i32, ptr %ab_dim1, align 4
  %add504 = add nsw i32 %508, %509
  %idxprom505 = sext i32 %add504 to i64
  %arrayidx506 = getelementptr inbounds float, ptr %507, i64 %idxprom505
  %510 = load float, ptr %arrayidx506, align 4
  store float %510, ptr %r__2, align 4
  %511 = load float, ptr %r__2, align 4
  %cmp507 = fcmp oge float %511, 0.000000e+00
  br i1 %cmp507, label %cond.true508, label %cond.false509

cond.true508:                                     ; preds = %cond.end502
  %512 = load float, ptr %r__2, align 4
  br label %cond.end511

cond.false509:                                    ; preds = %cond.end502
  %513 = load float, ptr %r__2, align 4
  %fneg510 = fneg float %513
  br label %cond.end511

cond.end511:                                      ; preds = %cond.false509, %cond.true508
  %cond512 = phi float [ %512, %cond.true508 ], [ %fneg510, %cond.false509 ]
  store float %cond512, ptr %r__4, align 4
  %514 = load float, ptr %r__3, align 4
  %515 = load float, ptr %r__4, align 4
  %cmp513 = fcmp oge float %514, %515
  br i1 %cmp513, label %cond.true514, label %cond.false515

cond.true514:                                     ; preds = %cond.end511
  %516 = load float, ptr %r__3, align 4
  br label %cond.end516

cond.false515:                                    ; preds = %cond.end511
  %517 = load float, ptr %r__4, align 4
  br label %cond.end516

cond.end516:                                      ; preds = %cond.false515, %cond.true514
  %cond517 = phi float [ %516, %cond.true514 ], [ %517, %cond.false515 ]
  store float %cond517, ptr %tmp2, align 4
  %518 = load ptr, ptr %abstol.addr, align 8
  %519 = load float, ptr %518, align 4
  %520 = load ptr, ptr %pivmin.addr, align 8
  %521 = load float, ptr %520, align 4
  %cmp518 = fcmp oge float %519, %521
  br i1 %cmp518, label %cond.true519, label %cond.false520

cond.true519:                                     ; preds = %cond.end516
  %522 = load ptr, ptr %abstol.addr, align 8
  %523 = load float, ptr %522, align 4
  br label %cond.end521

cond.false520:                                    ; preds = %cond.end516
  %524 = load ptr, ptr %pivmin.addr, align 8
  %525 = load float, ptr %524, align 4
  br label %cond.end521

cond.end521:                                      ; preds = %cond.false520, %cond.true519
  %cond522 = phi float [ %523, %cond.true519 ], [ %525, %cond.false520 ]
  store float %cond522, ptr %r__1, align 4
  %526 = load ptr, ptr %reltol.addr, align 8
  %527 = load float, ptr %526, align 4
  %528 = load float, ptr %tmp2, align 4
  %mul523 = fmul float %527, %528
  store float %mul523, ptr %r__2, align 4
  %529 = load float, ptr %tmp1, align 4
  %530 = load float, ptr %r__1, align 4
  %531 = load float, ptr %r__2, align 4
  %cmp524 = fcmp oge float %530, %531
  br i1 %cmp524, label %cond.true525, label %cond.false526

cond.true525:                                     ; preds = %cond.end521
  %532 = load float, ptr %r__1, align 4
  br label %cond.end527

cond.false526:                                    ; preds = %cond.end521
  %533 = load float, ptr %r__2, align 4
  br label %cond.end527

cond.end527:                                      ; preds = %cond.false526, %cond.true525
  %cond528 = phi float [ %532, %cond.true525 ], [ %533, %cond.false526 ]
  %cmp529 = fcmp olt float %529, %cond528
  br i1 %cmp529, label %if.then539, label %lor.lhs.false530

lor.lhs.false530:                                 ; preds = %cond.end527
  %534 = load ptr, ptr %nab.addr, align 8
  %535 = load i32, ptr %ji, align 4
  %536 = load i32, ptr %nab_dim1, align 4
  %add531 = add nsw i32 %535, %536
  %idxprom532 = sext i32 %add531 to i64
  %arrayidx533 = getelementptr inbounds i32, ptr %534, i64 %idxprom532
  %537 = load i32, ptr %arrayidx533, align 4
  %538 = load ptr, ptr %nab.addr, align 8
  %539 = load i32, ptr %ji, align 4
  %540 = load i32, ptr %nab_dim1, align 4
  %shl534 = shl i32 %540, 1
  %add535 = add nsw i32 %539, %shl534
  %idxprom536 = sext i32 %add535 to i64
  %arrayidx537 = getelementptr inbounds i32, ptr %538, i64 %idxprom536
  %541 = load i32, ptr %arrayidx537, align 4
  %cmp538 = icmp sge i32 %537, %541
  br i1 %cmp538, label %if.then539, label %if.end611

if.then539:                                       ; preds = %lor.lhs.false530, %cond.end527
  %542 = load i32, ptr %ji, align 4
  %543 = load i32, ptr %kfnew, align 4
  %cmp540 = icmp sgt i32 %542, %543
  br i1 %cmp540, label %if.then541, label %if.end609

if.then541:                                       ; preds = %if.then539
  %544 = load ptr, ptr %ab.addr, align 8
  %545 = load i32, ptr %ji, align 4
  %546 = load i32, ptr %ab_dim1, align 4
  %add542 = add nsw i32 %545, %546
  %idxprom543 = sext i32 %add542 to i64
  %arrayidx544 = getelementptr inbounds float, ptr %544, i64 %idxprom543
  %547 = load float, ptr %arrayidx544, align 4
  store float %547, ptr %tmp1, align 4
  %548 = load ptr, ptr %ab.addr, align 8
  %549 = load i32, ptr %ji, align 4
  %550 = load i32, ptr %ab_dim1, align 4
  %shl545 = shl i32 %550, 1
  %add546 = add nsw i32 %549, %shl545
  %idxprom547 = sext i32 %add546 to i64
  %arrayidx548 = getelementptr inbounds float, ptr %548, i64 %idxprom547
  %551 = load float, ptr %arrayidx548, align 4
  store float %551, ptr %tmp2, align 4
  %552 = load ptr, ptr %nab.addr, align 8
  %553 = load i32, ptr %ji, align 4
  %554 = load i32, ptr %nab_dim1, align 4
  %add549 = add nsw i32 %553, %554
  %idxprom550 = sext i32 %add549 to i64
  %arrayidx551 = getelementptr inbounds i32, ptr %552, i64 %idxprom550
  %555 = load i32, ptr %arrayidx551, align 4
  store i32 %555, ptr %itmp1, align 4
  %556 = load ptr, ptr %nab.addr, align 8
  %557 = load i32, ptr %ji, align 4
  %558 = load i32, ptr %nab_dim1, align 4
  %shl552 = shl i32 %558, 1
  %add553 = add nsw i32 %557, %shl552
  %idxprom554 = sext i32 %add553 to i64
  %arrayidx555 = getelementptr inbounds i32, ptr %556, i64 %idxprom554
  %559 = load i32, ptr %arrayidx555, align 4
  store i32 %559, ptr %itmp2, align 4
  %560 = load ptr, ptr %ab.addr, align 8
  %561 = load i32, ptr %kfnew, align 4
  %562 = load i32, ptr %ab_dim1, align 4
  %add556 = add nsw i32 %561, %562
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds float, ptr %560, i64 %idxprom557
  %563 = load float, ptr %arrayidx558, align 4
  %564 = load ptr, ptr %ab.addr, align 8
  %565 = load i32, ptr %ji, align 4
  %566 = load i32, ptr %ab_dim1, align 4
  %add559 = add nsw i32 %565, %566
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx561 = getelementptr inbounds float, ptr %564, i64 %idxprom560
  store float %563, ptr %arrayidx561, align 4
  %567 = load ptr, ptr %ab.addr, align 8
  %568 = load i32, ptr %kfnew, align 4
  %569 = load i32, ptr %ab_dim1, align 4
  %shl562 = shl i32 %569, 1
  %add563 = add nsw i32 %568, %shl562
  %idxprom564 = sext i32 %add563 to i64
  %arrayidx565 = getelementptr inbounds float, ptr %567, i64 %idxprom564
  %570 = load float, ptr %arrayidx565, align 4
  %571 = load ptr, ptr %ab.addr, align 8
  %572 = load i32, ptr %ji, align 4
  %573 = load i32, ptr %ab_dim1, align 4
  %shl566 = shl i32 %573, 1
  %add567 = add nsw i32 %572, %shl566
  %idxprom568 = sext i32 %add567 to i64
  %arrayidx569 = getelementptr inbounds float, ptr %571, i64 %idxprom568
  store float %570, ptr %arrayidx569, align 4
  %574 = load ptr, ptr %nab.addr, align 8
  %575 = load i32, ptr %kfnew, align 4
  %576 = load i32, ptr %nab_dim1, align 4
  %add570 = add nsw i32 %575, %576
  %idxprom571 = sext i32 %add570 to i64
  %arrayidx572 = getelementptr inbounds i32, ptr %574, i64 %idxprom571
  %577 = load i32, ptr %arrayidx572, align 4
  %578 = load ptr, ptr %nab.addr, align 8
  %579 = load i32, ptr %ji, align 4
  %580 = load i32, ptr %nab_dim1, align 4
  %add573 = add nsw i32 %579, %580
  %idxprom574 = sext i32 %add573 to i64
  %arrayidx575 = getelementptr inbounds i32, ptr %578, i64 %idxprom574
  store i32 %577, ptr %arrayidx575, align 4
  %581 = load ptr, ptr %nab.addr, align 8
  %582 = load i32, ptr %kfnew, align 4
  %583 = load i32, ptr %nab_dim1, align 4
  %shl576 = shl i32 %583, 1
  %add577 = add nsw i32 %582, %shl576
  %idxprom578 = sext i32 %add577 to i64
  %arrayidx579 = getelementptr inbounds i32, ptr %581, i64 %idxprom578
  %584 = load i32, ptr %arrayidx579, align 4
  %585 = load ptr, ptr %nab.addr, align 8
  %586 = load i32, ptr %ji, align 4
  %587 = load i32, ptr %nab_dim1, align 4
  %shl580 = shl i32 %587, 1
  %add581 = add nsw i32 %586, %shl580
  %idxprom582 = sext i32 %add581 to i64
  %arrayidx583 = getelementptr inbounds i32, ptr %585, i64 %idxprom582
  store i32 %584, ptr %arrayidx583, align 4
  %588 = load float, ptr %tmp1, align 4
  %589 = load ptr, ptr %ab.addr, align 8
  %590 = load i32, ptr %kfnew, align 4
  %591 = load i32, ptr %ab_dim1, align 4
  %add584 = add nsw i32 %590, %591
  %idxprom585 = sext i32 %add584 to i64
  %arrayidx586 = getelementptr inbounds float, ptr %589, i64 %idxprom585
  store float %588, ptr %arrayidx586, align 4
  %592 = load float, ptr %tmp2, align 4
  %593 = load ptr, ptr %ab.addr, align 8
  %594 = load i32, ptr %kfnew, align 4
  %595 = load i32, ptr %ab_dim1, align 4
  %shl587 = shl i32 %595, 1
  %add588 = add nsw i32 %594, %shl587
  %idxprom589 = sext i32 %add588 to i64
  %arrayidx590 = getelementptr inbounds float, ptr %593, i64 %idxprom589
  store float %592, ptr %arrayidx590, align 4
  %596 = load i32, ptr %itmp1, align 4
  %597 = load ptr, ptr %nab.addr, align 8
  %598 = load i32, ptr %kfnew, align 4
  %599 = load i32, ptr %nab_dim1, align 4
  %add591 = add nsw i32 %598, %599
  %idxprom592 = sext i32 %add591 to i64
  %arrayidx593 = getelementptr inbounds i32, ptr %597, i64 %idxprom592
  store i32 %596, ptr %arrayidx593, align 4
  %600 = load i32, ptr %itmp2, align 4
  %601 = load ptr, ptr %nab.addr, align 8
  %602 = load i32, ptr %kfnew, align 4
  %603 = load i32, ptr %nab_dim1, align 4
  %shl594 = shl i32 %603, 1
  %add595 = add nsw i32 %602, %shl594
  %idxprom596 = sext i32 %add595 to i64
  %arrayidx597 = getelementptr inbounds i32, ptr %601, i64 %idxprom596
  store i32 %600, ptr %arrayidx597, align 4
  %604 = load ptr, ptr %ijob.addr, align 8
  %605 = load i32, ptr %604, align 4
  %cmp598 = icmp eq i32 %605, 3
  br i1 %cmp598, label %if.then599, label %if.end608

if.then599:                                       ; preds = %if.then541
  %606 = load ptr, ptr %nval.addr, align 8
  %607 = load i32, ptr %ji, align 4
  %idxprom600 = sext i32 %607 to i64
  %arrayidx601 = getelementptr inbounds i32, ptr %606, i64 %idxprom600
  %608 = load i32, ptr %arrayidx601, align 4
  store i32 %608, ptr %itmp1, align 4
  %609 = load ptr, ptr %nval.addr, align 8
  %610 = load i32, ptr %kfnew, align 4
  %idxprom602 = sext i32 %610 to i64
  %arrayidx603 = getelementptr inbounds i32, ptr %609, i64 %idxprom602
  %611 = load i32, ptr %arrayidx603, align 4
  %612 = load ptr, ptr %nval.addr, align 8
  %613 = load i32, ptr %ji, align 4
  %idxprom604 = sext i32 %613 to i64
  %arrayidx605 = getelementptr inbounds i32, ptr %612, i64 %idxprom604
  store i32 %611, ptr %arrayidx605, align 4
  %614 = load i32, ptr %itmp1, align 4
  %615 = load ptr, ptr %nval.addr, align 8
  %616 = load i32, ptr %kfnew, align 4
  %idxprom606 = sext i32 %616 to i64
  %arrayidx607 = getelementptr inbounds i32, ptr %615, i64 %idxprom606
  store i32 %614, ptr %arrayidx607, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.then599, %if.then541
  br label %if.end609

if.end609:                                        ; preds = %if.end608, %if.then539
  %617 = load i32, ptr %kfnew, align 4
  %inc610 = add nsw i32 %617, 1
  store i32 %inc610, ptr %kfnew, align 4
  br label %if.end611

if.end611:                                        ; preds = %if.end609, %lor.lhs.false530
  br label %for.inc612

for.inc612:                                       ; preds = %if.end611
  %618 = load i32, ptr %ji, align 4
  %inc613 = add nsw i32 %618, 1
  store i32 %inc613, ptr %ji, align 4
  br label %for.cond477, !llvm.loop !16

for.end614:                                       ; preds = %for.cond477
  %619 = load i32, ptr %kfnew, align 4
  store i32 %619, ptr %kf, align 4
  %620 = load i32, ptr %kl, align 4
  store i32 %620, ptr %i__2, align 4
  %621 = load i32, ptr %kf, align 4
  store i32 %621, ptr %ji, align 4
  br label %for.cond615

for.cond615:                                      ; preds = %for.inc629, %for.end614
  %622 = load i32, ptr %ji, align 4
  %623 = load i32, ptr %i__2, align 4
  %cmp616 = icmp sle i32 %622, %623
  br i1 %cmp616, label %for.body617, label %for.end631

for.body617:                                      ; preds = %for.cond615
  %624 = load ptr, ptr %ab.addr, align 8
  %625 = load i32, ptr %ji, align 4
  %626 = load i32, ptr %ab_dim1, align 4
  %add618 = add nsw i32 %625, %626
  %idxprom619 = sext i32 %add618 to i64
  %arrayidx620 = getelementptr inbounds float, ptr %624, i64 %idxprom619
  %627 = load float, ptr %arrayidx620, align 4
  %628 = load ptr, ptr %ab.addr, align 8
  %629 = load i32, ptr %ji, align 4
  %630 = load i32, ptr %ab_dim1, align 4
  %shl621 = shl i32 %630, 1
  %add622 = add nsw i32 %629, %shl621
  %idxprom623 = sext i32 %add622 to i64
  %arrayidx624 = getelementptr inbounds float, ptr %628, i64 %idxprom623
  %631 = load float, ptr %arrayidx624, align 4
  %add625 = fadd float %627, %631
  %mul626 = fmul float %add625, 5.000000e-01
  %632 = load ptr, ptr %c__.addr, align 8
  %633 = load i32, ptr %ji, align 4
  %idxprom627 = sext i32 %633 to i64
  %arrayidx628 = getelementptr inbounds float, ptr %632, i64 %idxprom627
  store float %mul626, ptr %arrayidx628, align 4
  br label %for.inc629

for.inc629:                                       ; preds = %for.body617
  %634 = load i32, ptr %ji, align 4
  %inc630 = add nsw i32 %634, 1
  store i32 %inc630, ptr %ji, align 4
  br label %for.cond615, !llvm.loop !17

for.end631:                                       ; preds = %for.cond615
  %635 = load i32, ptr %kf, align 4
  %636 = load i32, ptr %kl, align 4
  %cmp632 = icmp sgt i32 %635, %636
  br i1 %cmp632, label %if.then633, label %if.end634

if.then633:                                       ; preds = %for.end631
  br label %L140

if.end634:                                        ; preds = %for.end631
  br label %for.inc635

for.inc635:                                       ; preds = %if.end634
  %637 = load i32, ptr %jit, align 4
  %inc636 = add nsw i32 %637, 1
  store i32 %inc636, ptr %jit, align 4
  br label %for.cond103, !llvm.loop !18

for.end637:                                       ; preds = %for.cond103
  br label %L140

L140:                                             ; preds = %for.end637, %if.then633
  %638 = load i32, ptr %kl, align 4
  %add638 = add nsw i32 %638, 1
  %639 = load i32, ptr %kf, align 4
  %sub639 = sub nsw i32 %add638, %639
  store i32 %sub639, ptr %i__1, align 4
  %640 = load i32, ptr %i__1, align 4
  %cmp640 = icmp sge i32 %640, 0
  br i1 %cmp640, label %cond.true641, label %cond.false642

cond.true641:                                     ; preds = %L140
  %641 = load i32, ptr %i__1, align 4
  br label %cond.end643

cond.false642:                                    ; preds = %L140
  br label %cond.end643

cond.end643:                                      ; preds = %cond.false642, %cond.true641
  %cond644 = phi i32 [ %641, %cond.true641 ], [ 0, %cond.false642 ]
  %642 = load ptr, ptr %info.addr, align 8
  store i32 %cond644, ptr %642, align 4
  %643 = load i32, ptr %kl, align 4
  %644 = load ptr, ptr %mout.addr, align 8
  store i32 %643, ptr %644, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end643, %if.else442, %if.then283, %for.end81, %if.then
  %645 = load i32, ptr %retval, align 4
  ret i32 %645
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
