; ModuleID = 'samples/251.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/claqhb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }

@.str = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"U\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @claqhb_(ptr noundef %uplo, ptr noundef %n, ptr noundef %kd, ptr noundef %ab, ptr noundef %ldab, ptr noundef %s, ptr noundef %scond, ptr noundef %amax, ptr noundef %equed) #0 {
entry:
  %retval = alloca i32, align 4
  %uplo.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %kd.addr = alloca ptr, align 8
  %ab.addr = alloca ptr, align 8
  %ldab.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %scond.addr = alloca ptr, align 8
  %amax.addr = alloca ptr, align 8
  %equed.addr = alloca ptr, align 8
  %ab_dim1 = alloca i32, align 4
  %ab_offset = alloca i32, align 4
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %i__4 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %q__1 = alloca %struct.complex, align 4
  %i__ = alloca i32, align 4
  %j = alloca i32, align 4
  %cj = alloca float, align 4
  %large = alloca float, align 4
  %small = alloca float, align 4
  store ptr %uplo, ptr %uplo.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store ptr %kd, ptr %kd.addr, align 8
  store ptr %ab, ptr %ab.addr, align 8
  store ptr %ldab, ptr %ldab.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %scond, ptr %scond.addr, align 8
  store ptr %amax, ptr %amax.addr, align 8
  store ptr %equed, ptr %equed.addr, align 8
  %0 = load ptr, ptr %ldab.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %ab_dim1, align 4
  %2 = load i32, ptr %ab_dim1, align 4
  %add = add nsw i32 1, %2
  store i32 %add, ptr %ab_offset, align 4
  %3 = load i32, ptr %ab_offset, align 4
  %4 = load ptr, ptr %ab.addr, align 8
  %idx.ext = sext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds %struct.complex, ptr %4, i64 %idx.neg
  store ptr %add.ptr, ptr %ab.addr, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %6 = load ptr, ptr %n.addr, align 8
  %7 = load i32, ptr %6, align 4
  %cmp = icmp sle i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %equed.addr, align 8
  store i8 78, ptr %8, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call float @slamch_(ptr noundef @.str)
  %call1 = call float @slamch_(ptr noundef @.str.1)
  %div = fdiv float %call, %call1
  store float %div, ptr %small, align 4
  %9 = load float, ptr %small, align 4
  %div2 = fdiv float 1.000000e+00, %9
  store float %div2, ptr %large, align 4
  %10 = load ptr, ptr %scond.addr, align 8
  %11 = load float, ptr %10, align 4
  %cmp3 = fcmp oge float %11, 0x3FB99999A0000000
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %amax.addr, align 8
  %13 = load float, ptr %12, align 4
  %14 = load float, ptr %small, align 4
  %cmp4 = fcmp oge float %13, %14
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %15 = load ptr, ptr %amax.addr, align 8
  %16 = load float, ptr %15, align 4
  %17 = load float, ptr %large, align 4
  %cmp6 = fcmp ole float %16, %17
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true5
  %18 = load ptr, ptr %equed.addr, align 8
  store i8 78, ptr %18, align 1
  br label %if.end131

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %19 = load ptr, ptr %uplo.addr, align 8
  %call8 = call i32 @lsame_(ptr noundef %19, ptr noundef @.str.2)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then9, label %if.else64

if.then9:                                         ; preds = %if.else
  %20 = load ptr, ptr %n.addr, align 8
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc61, %if.then9
  %22 = load i32, ptr %j, align 4
  %23 = load i32, ptr %i__1, align 4
  %cmp10 = icmp sle i32 %22, %23
  br i1 %cmp10, label %for.body, label %for.end63

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %s.addr, align 8
  %25 = load i32, ptr %j, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds float, ptr %24, i64 %idxprom
  %26 = load float, ptr %arrayidx, align 4
  store float %26, ptr %cj, align 4
  store i32 1, ptr %i__2, align 4
  %27 = load i32, ptr %j, align 4
  %28 = load ptr, ptr %kd.addr, align 8
  %29 = load i32, ptr %28, align 4
  %sub = sub nsw i32 %27, %29
  store i32 %sub, ptr %i__3, align 4
  %30 = load i32, ptr %j, align 4
  %sub11 = sub nsw i32 %30, 1
  store i32 %sub11, ptr %i__4, align 4
  %31 = load i32, ptr %i__2, align 4
  %32 = load i32, ptr %i__3, align 4
  %cmp12 = icmp sge i32 %31, %32
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %33 = load i32, ptr %i__2, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %34 = load i32, ptr %i__3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ]
  store i32 %cond, ptr %i__, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %cond.end
  %35 = load i32, ptr %i__, align 4
  %36 = load i32, ptr %i__4, align 4
  %cmp14 = icmp sle i32 %35, %36
  br i1 %cmp14, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond13
  %37 = load ptr, ptr %kd.addr, align 8
  %38 = load i32, ptr %37, align 4
  %add16 = add nsw i32 %38, 1
  %39 = load i32, ptr %i__, align 4
  %add17 = add nsw i32 %add16, %39
  %40 = load i32, ptr %j, align 4
  %sub18 = sub nsw i32 %add17, %40
  %41 = load i32, ptr %j, align 4
  %42 = load i32, ptr %ab_dim1, align 4
  %mul = mul nsw i32 %41, %42
  %add19 = add nsw i32 %sub18, %mul
  store i32 %add19, ptr %i__2, align 4
  %43 = load float, ptr %cj, align 4
  %44 = load ptr, ptr %s.addr, align 8
  %45 = load i32, ptr %i__, align 4
  %idxprom20 = sext i32 %45 to i64
  %arrayidx21 = getelementptr inbounds float, ptr %44, i64 %idxprom20
  %46 = load float, ptr %arrayidx21, align 4
  %mul22 = fmul float %43, %46
  store float %mul22, ptr %r__1, align 4
  %47 = load ptr, ptr %kd.addr, align 8
  %48 = load i32, ptr %47, align 4
  %add23 = add nsw i32 %48, 1
  %49 = load i32, ptr %i__, align 4
  %add24 = add nsw i32 %add23, %49
  %50 = load i32, ptr %j, align 4
  %sub25 = sub nsw i32 %add24, %50
  %51 = load i32, ptr %j, align 4
  %52 = load i32, ptr %ab_dim1, align 4
  %mul26 = mul nsw i32 %51, %52
  %add27 = add nsw i32 %sub25, %mul26
  store i32 %add27, ptr %i__3, align 4
  %53 = load float, ptr %r__1, align 4
  %54 = load ptr, ptr %ab.addr, align 8
  %55 = load i32, ptr %i__3, align 4
  %idxprom28 = sext i32 %55 to i64
  %arrayidx29 = getelementptr inbounds %struct.complex, ptr %54, i64 %idxprom28
  %r = getelementptr inbounds %struct.complex, ptr %arrayidx29, i32 0, i32 0
  %56 = load float, ptr %r, align 4
  %mul30 = fmul float %53, %56
  %r31 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul30, ptr %r31, align 4
  %57 = load float, ptr %r__1, align 4
  %58 = load ptr, ptr %ab.addr, align 8
  %59 = load i32, ptr %i__3, align 4
  %idxprom32 = sext i32 %59 to i64
  %arrayidx33 = getelementptr inbounds %struct.complex, ptr %58, i64 %idxprom32
  %i = getelementptr inbounds %struct.complex, ptr %arrayidx33, i32 0, i32 1
  %60 = load float, ptr %i, align 4
  %mul34 = fmul float %57, %60
  %i35 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul34, ptr %i35, align 4
  %r36 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %61 = load float, ptr %r36, align 4
  %62 = load ptr, ptr %ab.addr, align 8
  %63 = load i32, ptr %i__2, align 4
  %idxprom37 = sext i32 %63 to i64
  %arrayidx38 = getelementptr inbounds %struct.complex, ptr %62, i64 %idxprom37
  %r39 = getelementptr inbounds %struct.complex, ptr %arrayidx38, i32 0, i32 0
  store float %61, ptr %r39, align 4
  %i40 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %64 = load float, ptr %i40, align 4
  %65 = load ptr, ptr %ab.addr, align 8
  %66 = load i32, ptr %i__2, align 4
  %idxprom41 = sext i32 %66 to i64
  %arrayidx42 = getelementptr inbounds %struct.complex, ptr %65, i64 %idxprom41
  %i43 = getelementptr inbounds %struct.complex, ptr %arrayidx42, i32 0, i32 1
  store float %64, ptr %i43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %67 = load i32, ptr %i__, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %i__, align 4
  br label %for.cond13, !llvm.loop !5

for.end:                                          ; preds = %for.cond13
  %68 = load ptr, ptr %kd.addr, align 8
  %69 = load i32, ptr %68, align 4
  %add44 = add nsw i32 %69, 1
  %70 = load i32, ptr %j, align 4
  %71 = load i32, ptr %ab_dim1, align 4
  %mul45 = mul nsw i32 %70, %71
  %add46 = add nsw i32 %add44, %mul45
  store i32 %add46, ptr %i__4, align 4
  %72 = load ptr, ptr %kd.addr, align 8
  %73 = load i32, ptr %72, align 4
  %add47 = add nsw i32 %73, 1
  %74 = load i32, ptr %j, align 4
  %75 = load i32, ptr %ab_dim1, align 4
  %mul48 = mul nsw i32 %74, %75
  %add49 = add nsw i32 %add47, %mul48
  store i32 %add49, ptr %i__2, align 4
  %76 = load float, ptr %cj, align 4
  %77 = load float, ptr %cj, align 4
  %mul50 = fmul float %76, %77
  %78 = load ptr, ptr %ab.addr, align 8
  %79 = load i32, ptr %i__2, align 4
  %idxprom51 = sext i32 %79 to i64
  %arrayidx52 = getelementptr inbounds %struct.complex, ptr %78, i64 %idxprom51
  %r53 = getelementptr inbounds %struct.complex, ptr %arrayidx52, i32 0, i32 0
  %80 = load float, ptr %r53, align 4
  %mul54 = fmul float %mul50, %80
  store float %mul54, ptr %r__1, align 4
  %81 = load float, ptr %r__1, align 4
  %82 = load ptr, ptr %ab.addr, align 8
  %83 = load i32, ptr %i__4, align 4
  %idxprom55 = sext i32 %83 to i64
  %arrayidx56 = getelementptr inbounds %struct.complex, ptr %82, i64 %idxprom55
  %r57 = getelementptr inbounds %struct.complex, ptr %arrayidx56, i32 0, i32 0
  store float %81, ptr %r57, align 4
  %84 = load ptr, ptr %ab.addr, align 8
  %85 = load i32, ptr %i__4, align 4
  %idxprom58 = sext i32 %85 to i64
  %arrayidx59 = getelementptr inbounds %struct.complex, ptr %84, i64 %idxprom58
  %i60 = getelementptr inbounds %struct.complex, ptr %arrayidx59, i32 0, i32 1
  store float 0.000000e+00, ptr %i60, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %for.end
  %86 = load i32, ptr %j, align 4
  %inc62 = add nsw i32 %86, 1
  store i32 %inc62, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end63:                                        ; preds = %for.cond
  br label %if.end130

if.else64:                                        ; preds = %if.else
  %87 = load ptr, ptr %n.addr, align 8
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %i__1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc127, %if.else64
  %89 = load i32, ptr %j, align 4
  %90 = load i32, ptr %i__1, align 4
  %cmp66 = icmp sle i32 %89, %90
  br i1 %cmp66, label %for.body67, label %for.end129

for.body67:                                       ; preds = %for.cond65
  %91 = load ptr, ptr %s.addr, align 8
  %92 = load i32, ptr %j, align 4
  %idxprom68 = sext i32 %92 to i64
  %arrayidx69 = getelementptr inbounds float, ptr %91, i64 %idxprom68
  %93 = load float, ptr %arrayidx69, align 4
  store float %93, ptr %cj, align 4
  %94 = load i32, ptr %j, align 4
  %95 = load i32, ptr %ab_dim1, align 4
  %mul70 = mul nsw i32 %94, %95
  %add71 = add nsw i32 %mul70, 1
  store i32 %add71, ptr %i__4, align 4
  %96 = load i32, ptr %j, align 4
  %97 = load i32, ptr %ab_dim1, align 4
  %mul72 = mul nsw i32 %96, %97
  %add73 = add nsw i32 %mul72, 1
  store i32 %add73, ptr %i__2, align 4
  %98 = load float, ptr %cj, align 4
  %99 = load float, ptr %cj, align 4
  %mul74 = fmul float %98, %99
  %100 = load ptr, ptr %ab.addr, align 8
  %101 = load i32, ptr %i__2, align 4
  %idxprom75 = sext i32 %101 to i64
  %arrayidx76 = getelementptr inbounds %struct.complex, ptr %100, i64 %idxprom75
  %r77 = getelementptr inbounds %struct.complex, ptr %arrayidx76, i32 0, i32 0
  %102 = load float, ptr %r77, align 4
  %mul78 = fmul float %mul74, %102
  store float %mul78, ptr %r__1, align 4
  %103 = load float, ptr %r__1, align 4
  %104 = load ptr, ptr %ab.addr, align 8
  %105 = load i32, ptr %i__4, align 4
  %idxprom79 = sext i32 %105 to i64
  %arrayidx80 = getelementptr inbounds %struct.complex, ptr %104, i64 %idxprom79
  %r81 = getelementptr inbounds %struct.complex, ptr %arrayidx80, i32 0, i32 0
  store float %103, ptr %r81, align 4
  %106 = load ptr, ptr %ab.addr, align 8
  %107 = load i32, ptr %i__4, align 4
  %idxprom82 = sext i32 %107 to i64
  %arrayidx83 = getelementptr inbounds %struct.complex, ptr %106, i64 %idxprom82
  %i84 = getelementptr inbounds %struct.complex, ptr %arrayidx83, i32 0, i32 1
  store float 0.000000e+00, ptr %i84, align 4
  %108 = load ptr, ptr %n.addr, align 8
  %109 = load i32, ptr %108, align 4
  store i32 %109, ptr %i__2, align 4
  %110 = load i32, ptr %j, align 4
  %111 = load ptr, ptr %kd.addr, align 8
  %112 = load i32, ptr %111, align 4
  %add85 = add nsw i32 %110, %112
  store i32 %add85, ptr %i__3, align 4
  %113 = load i32, ptr %i__2, align 4
  %114 = load i32, ptr %i__3, align 4
  %cmp86 = icmp sle i32 %113, %114
  br i1 %cmp86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %for.body67
  %115 = load i32, ptr %i__2, align 4
  br label %cond.end89

cond.false88:                                     ; preds = %for.body67
  %116 = load i32, ptr %i__3, align 4
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %cond.true87
  %cond90 = phi i32 [ %115, %cond.true87 ], [ %116, %cond.false88 ]
  store i32 %cond90, ptr %i__4, align 4
  %117 = load i32, ptr %j, align 4
  %add91 = add nsw i32 %117, 1
  store i32 %add91, ptr %i__, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc124, %cond.end89
  %118 = load i32, ptr %i__, align 4
  %119 = load i32, ptr %i__4, align 4
  %cmp93 = icmp sle i32 %118, %119
  br i1 %cmp93, label %for.body94, label %for.end126

for.body94:                                       ; preds = %for.cond92
  %120 = load i32, ptr %i__, align 4
  %add95 = add nsw i32 %120, 1
  %121 = load i32, ptr %j, align 4
  %sub96 = sub nsw i32 %add95, %121
  %122 = load i32, ptr %j, align 4
  %123 = load i32, ptr %ab_dim1, align 4
  %mul97 = mul nsw i32 %122, %123
  %add98 = add nsw i32 %sub96, %mul97
  store i32 %add98, ptr %i__2, align 4
  %124 = load float, ptr %cj, align 4
  %125 = load ptr, ptr %s.addr, align 8
  %126 = load i32, ptr %i__, align 4
  %idxprom99 = sext i32 %126 to i64
  %arrayidx100 = getelementptr inbounds float, ptr %125, i64 %idxprom99
  %127 = load float, ptr %arrayidx100, align 4
  %mul101 = fmul float %124, %127
  store float %mul101, ptr %r__1, align 4
  %128 = load i32, ptr %i__, align 4
  %add102 = add nsw i32 %128, 1
  %129 = load i32, ptr %j, align 4
  %sub103 = sub nsw i32 %add102, %129
  %130 = load i32, ptr %j, align 4
  %131 = load i32, ptr %ab_dim1, align 4
  %mul104 = mul nsw i32 %130, %131
  %add105 = add nsw i32 %sub103, %mul104
  store i32 %add105, ptr %i__3, align 4
  %132 = load float, ptr %r__1, align 4
  %133 = load ptr, ptr %ab.addr, align 8
  %134 = load i32, ptr %i__3, align 4
  %idxprom106 = sext i32 %134 to i64
  %arrayidx107 = getelementptr inbounds %struct.complex, ptr %133, i64 %idxprom106
  %r108 = getelementptr inbounds %struct.complex, ptr %arrayidx107, i32 0, i32 0
  %135 = load float, ptr %r108, align 4
  %mul109 = fmul float %132, %135
  %r110 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  store float %mul109, ptr %r110, align 4
  %136 = load float, ptr %r__1, align 4
  %137 = load ptr, ptr %ab.addr, align 8
  %138 = load i32, ptr %i__3, align 4
  %idxprom111 = sext i32 %138 to i64
  %arrayidx112 = getelementptr inbounds %struct.complex, ptr %137, i64 %idxprom111
  %i113 = getelementptr inbounds %struct.complex, ptr %arrayidx112, i32 0, i32 1
  %139 = load float, ptr %i113, align 4
  %mul114 = fmul float %136, %139
  %i115 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  store float %mul114, ptr %i115, align 4
  %r116 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 0
  %140 = load float, ptr %r116, align 4
  %141 = load ptr, ptr %ab.addr, align 8
  %142 = load i32, ptr %i__2, align 4
  %idxprom117 = sext i32 %142 to i64
  %arrayidx118 = getelementptr inbounds %struct.complex, ptr %141, i64 %idxprom117
  %r119 = getelementptr inbounds %struct.complex, ptr %arrayidx118, i32 0, i32 0
  store float %140, ptr %r119, align 4
  %i120 = getelementptr inbounds %struct.complex, ptr %q__1, i32 0, i32 1
  %143 = load float, ptr %i120, align 4
  %144 = load ptr, ptr %ab.addr, align 8
  %145 = load i32, ptr %i__2, align 4
  %idxprom121 = sext i32 %145 to i64
  %arrayidx122 = getelementptr inbounds %struct.complex, ptr %144, i64 %idxprom121
  %i123 = getelementptr inbounds %struct.complex, ptr %arrayidx122, i32 0, i32 1
  store float %143, ptr %i123, align 4
  br label %for.inc124

for.inc124:                                       ; preds = %for.body94
  %146 = load i32, ptr %i__, align 4
  %inc125 = add nsw i32 %146, 1
  store i32 %inc125, ptr %i__, align 4
  br label %for.cond92, !llvm.loop !8

for.end126:                                       ; preds = %for.cond92
  br label %for.inc127

for.inc127:                                       ; preds = %for.end126
  %147 = load i32, ptr %j, align 4
  %inc128 = add nsw i32 %147, 1
  store i32 %inc128, ptr %j, align 4
  br label %for.cond65, !llvm.loop !9

for.end129:                                       ; preds = %for.cond65
  br label %if.end130

if.end130:                                        ; preds = %for.end129, %for.end63
  %148 = load ptr, ptr %equed.addr, align 8
  store i8 89, ptr %148, align 1
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %if.then7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end131, %if.then
  %149 = load i32, ptr %retval, align 4
  ret i32 %149
}

declare float @slamch_(ptr noundef) #1

declare i32 @lsame_(ptr noundef, ptr noundef) #1

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
