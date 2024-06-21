; ModuleID = 'samples/787.bc'
source_filename = "/local-ssd/libflame-e5nfvhftngyb7czajtt6ztnesna24ye7-build/aidengro/spack-stage-libflame-5.2.0-e5nfvhftngyb7czajtt6ztnesna24ye7/spack-src/src/map/lapack2flamec/f2c/c/slasq2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Precision\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SLASQ2\00", align 1
@c__1 = internal global i32 1, align 4
@c__2 = internal global i32 2, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @slasq2_(ptr noundef %n, ptr noundef %z__, ptr noundef %info) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca ptr, align 8
  %z__.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %i__1 = alloca i32, align 4
  %i__2 = alloca i32, align 4
  %i__3 = alloca i32, align 4
  %r__1 = alloca float, align 4
  %r__2 = alloca float, align 4
  %d__ = alloca float, align 4
  %e = alloca float, align 4
  %g = alloca float, align 4
  %k = alloca i32, align 4
  %s = alloca float, align 4
  %t = alloca float, align 4
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %dn = alloca float, align 4
  %pp = alloca i32, align 4
  %dn1 = alloca float, align 4
  %dn2 = alloca float, align 4
  %dee = alloca float, align 4
  %eps = alloca float, align 4
  %tau = alloca float, align 4
  %tol = alloca float, align 4
  %ipn4 = alloca i32, align 4
  %tol2 = alloca float, align 4
  %ieee = alloca i32, align 4
  %nbig = alloca i32, align 4
  %dmin__ = alloca float, align 4
  %emin = alloca float, align 4
  %emax = alloca float, align 4
  %kmin = alloca i32, align 4
  %ndiv = alloca i32, align 4
  %iter = alloca i32, align 4
  %qmin = alloca float, align 4
  %temp = alloca float, align 4
  %qmax = alloca float, align 4
  %zmax = alloca float, align 4
  %splt = alloca i32, align 4
  %dmin1 = alloca float, align 4
  %dmin2 = alloca float, align 4
  %nfail = alloca i32, align 4
  %desig = alloca float, align 4
  %trace = alloca float, align 4
  %sigma = alloca float, align 4
  %iinfo = alloca i32, align 4
  %tempe = alloca float, align 4
  %tempq = alloca float, align 4
  %ttype = alloca i32, align 4
  %deemin = alloca float, align 4
  %iwhila = alloca i32, align 4
  %iwhilb = alloca i32, align 4
  %oldemn = alloca float, align 4
  %safmin = alloca float, align 4
  store ptr %n, ptr %n.addr, align 8
  store ptr %z__, ptr %z__.addr, align 8
  store ptr %info, ptr %info.addr, align 8
  %0 = load ptr, ptr %z__.addr, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %0, i32 -1
  store ptr %incdec.ptr, ptr %z__.addr, align 8
  %1 = load ptr, ptr %info.addr, align 8
  store i32 0, ptr %1, align 4
  %call = call float @slamch_(ptr noundef @.str)
  store float %call, ptr %eps, align 4
  %call1 = call float @slamch_(ptr noundef @.str.1)
  store float %call1, ptr %safmin, align 4
  %2 = load float, ptr %eps, align 4
  %mul = fmul float %2, 1.000000e+02
  store float %mul, ptr %tol, align 4
  %3 = load float, ptr %tol, align 4
  store float %3, ptr %r__1, align 4
  %4 = load float, ptr %r__1, align 4
  %5 = load float, ptr %r__1, align 4
  %mul2 = fmul float %4, %5
  store float %mul2, ptr %tol2, align 4
  %6 = load ptr, ptr %n.addr, align 8
  %7 = load i32, ptr %6, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %info.addr, align 8
  store i32 -1, ptr %8, align 4
  %call3 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef @c__1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %n.addr, align 8
  %10 = load i32, ptr %9, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  %11 = load ptr, ptr %n.addr, align 8
  %12 = load i32, ptr %11, align 4
  %cmp7 = icmp eq i32 %12, 1
  br i1 %cmp7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.else6
  %13 = load ptr, ptr %z__.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %13, i64 1
  %14 = load float, ptr %arrayidx, align 4
  %cmp9 = fcmp olt float %14, 0.000000e+00
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then8
  %15 = load ptr, ptr %info.addr, align 8
  store i32 -201, ptr %15, align 4
  %call11 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef @c__2)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then8
  store i32 0, ptr %retval, align 4
  br label %return

if.else12:                                        ; preds = %if.else6
  %16 = load ptr, ptr %n.addr, align 8
  %17 = load i32, ptr %16, align 4
  %cmp13 = icmp eq i32 %17, 2
  br i1 %cmp13, label %if.then14, label %if.end97

if.then14:                                        ; preds = %if.else12
  %18 = load ptr, ptr %z__.addr, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %18, i64 2
  %19 = load float, ptr %arrayidx15, align 4
  %cmp16 = fcmp olt float %19, 0.000000e+00
  br i1 %cmp16, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then14
  %20 = load ptr, ptr %z__.addr, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %20, i64 3
  %21 = load float, ptr %arrayidx17, align 4
  %cmp18 = fcmp olt float %21, 0.000000e+00
  br i1 %cmp18, label %if.then19, label %if.else21

if.then19:                                        ; preds = %lor.lhs.false, %if.then14
  %22 = load ptr, ptr %info.addr, align 8
  store i32 -2, ptr %22, align 4
  %call20 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef @c__2)
  store i32 0, ptr %retval, align 4
  br label %return

if.else21:                                        ; preds = %lor.lhs.false
  %23 = load ptr, ptr %z__.addr, align 8
  %arrayidx22 = getelementptr inbounds float, ptr %23, i64 3
  %24 = load float, ptr %arrayidx22, align 4
  %25 = load ptr, ptr %z__.addr, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %25, i64 1
  %26 = load float, ptr %arrayidx23, align 4
  %cmp24 = fcmp ogt float %24, %26
  br i1 %cmp24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.else21
  %27 = load ptr, ptr %z__.addr, align 8
  %arrayidx26 = getelementptr inbounds float, ptr %27, i64 3
  %28 = load float, ptr %arrayidx26, align 4
  store float %28, ptr %d__, align 4
  %29 = load ptr, ptr %z__.addr, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %29, i64 1
  %30 = load float, ptr %arrayidx27, align 4
  %31 = load ptr, ptr %z__.addr, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %31, i64 3
  store float %30, ptr %arrayidx28, align 4
  %32 = load float, ptr %d__, align 4
  %33 = load ptr, ptr %z__.addr, align 8
  %arrayidx29 = getelementptr inbounds float, ptr %33, i64 1
  store float %32, ptr %arrayidx29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.else21
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  %34 = load ptr, ptr %z__.addr, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %34, i64 1
  %35 = load float, ptr %arrayidx32, align 4
  %36 = load ptr, ptr %z__.addr, align 8
  %arrayidx33 = getelementptr inbounds float, ptr %36, i64 2
  %37 = load float, ptr %arrayidx33, align 4
  %add = fadd float %35, %37
  %38 = load ptr, ptr %z__.addr, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %38, i64 3
  %39 = load float, ptr %arrayidx34, align 4
  %add35 = fadd float %add, %39
  %40 = load ptr, ptr %z__.addr, align 8
  %arrayidx36 = getelementptr inbounds float, ptr %40, i64 5
  store float %add35, ptr %arrayidx36, align 4
  %41 = load ptr, ptr %z__.addr, align 8
  %arrayidx37 = getelementptr inbounds float, ptr %41, i64 2
  %42 = load float, ptr %arrayidx37, align 4
  %43 = load ptr, ptr %z__.addr, align 8
  %arrayidx38 = getelementptr inbounds float, ptr %43, i64 3
  %44 = load float, ptr %arrayidx38, align 4
  %45 = load float, ptr %tol2, align 4
  %mul39 = fmul float %44, %45
  %cmp40 = fcmp ogt float %42, %mul39
  br i1 %cmp40, label %if.then41, label %if.end90

if.then41:                                        ; preds = %if.end31
  %46 = load ptr, ptr %z__.addr, align 8
  %arrayidx42 = getelementptr inbounds float, ptr %46, i64 1
  %47 = load float, ptr %arrayidx42, align 4
  %48 = load ptr, ptr %z__.addr, align 8
  %arrayidx43 = getelementptr inbounds float, ptr %48, i64 3
  %49 = load float, ptr %arrayidx43, align 4
  %sub = fsub float %47, %49
  %50 = load ptr, ptr %z__.addr, align 8
  %arrayidx44 = getelementptr inbounds float, ptr %50, i64 2
  %51 = load float, ptr %arrayidx44, align 4
  %add45 = fadd float %sub, %51
  %mul46 = fmul float %add45, 5.000000e-01
  store float %mul46, ptr %t, align 4
  %52 = load ptr, ptr %z__.addr, align 8
  %arrayidx47 = getelementptr inbounds float, ptr %52, i64 3
  %53 = load float, ptr %arrayidx47, align 4
  %54 = load ptr, ptr %z__.addr, align 8
  %arrayidx48 = getelementptr inbounds float, ptr %54, i64 2
  %55 = load float, ptr %arrayidx48, align 4
  %56 = load float, ptr %t, align 4
  %div = fdiv float %55, %56
  %mul49 = fmul float %53, %div
  store float %mul49, ptr %s, align 4
  %57 = load float, ptr %s, align 4
  %58 = load float, ptr %t, align 4
  %cmp50 = fcmp ole float %57, %58
  br i1 %cmp50, label %if.then51, label %if.else65

if.then51:                                        ; preds = %if.then41
  %59 = load ptr, ptr %z__.addr, align 8
  %arrayidx52 = getelementptr inbounds float, ptr %59, i64 3
  %60 = load float, ptr %arrayidx52, align 4
  %conv = fpext float %60 to double
  %61 = load ptr, ptr %z__.addr, align 8
  %arrayidx53 = getelementptr inbounds float, ptr %61, i64 2
  %62 = load float, ptr %arrayidx53, align 4
  %conv54 = fpext float %62 to double
  %63 = load float, ptr %t, align 4
  %conv55 = fpext float %63 to double
  %64 = load float, ptr %s, align 4
  %65 = load float, ptr %t, align 4
  %div56 = fdiv float %64, %65
  %add57 = fadd float %div56, 1.000000e+00
  %conv58 = fpext float %add57 to double
  %call59 = call double @sqrt(double noundef %conv58) #4
  %add60 = fadd double %call59, 1.000000e+00
  %mul61 = fmul double %conv55, %add60
  %div62 = fdiv double %conv54, %mul61
  %mul63 = fmul double %conv, %div62
  %conv64 = fptrunc double %mul63 to float
  store float %conv64, ptr %s, align 4
  br label %if.end80

if.else65:                                        ; preds = %if.then41
  %66 = load ptr, ptr %z__.addr, align 8
  %arrayidx66 = getelementptr inbounds float, ptr %66, i64 3
  %67 = load float, ptr %arrayidx66, align 4
  %conv67 = fpext float %67 to double
  %68 = load ptr, ptr %z__.addr, align 8
  %arrayidx68 = getelementptr inbounds float, ptr %68, i64 2
  %69 = load float, ptr %arrayidx68, align 4
  %conv69 = fpext float %69 to double
  %70 = load float, ptr %t, align 4
  %conv70 = fpext float %70 to double
  %71 = load float, ptr %t, align 4
  %conv71 = fpext float %71 to double
  %call72 = call double @sqrt(double noundef %conv71) #4
  %72 = load float, ptr %t, align 4
  %73 = load float, ptr %s, align 4
  %add73 = fadd float %72, %73
  %conv74 = fpext float %add73 to double
  %call75 = call double @sqrt(double noundef %conv74) #4
  %74 = call double @llvm.fmuladd.f64(double %call72, double %call75, double %conv70)
  %div77 = fdiv double %conv69, %74
  %mul78 = fmul double %conv67, %div77
  %conv79 = fptrunc double %mul78 to float
  store float %conv79, ptr %s, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else65, %if.then51
  %75 = load ptr, ptr %z__.addr, align 8
  %arrayidx81 = getelementptr inbounds float, ptr %75, i64 1
  %76 = load float, ptr %arrayidx81, align 4
  %77 = load float, ptr %s, align 4
  %78 = load ptr, ptr %z__.addr, align 8
  %arrayidx82 = getelementptr inbounds float, ptr %78, i64 2
  %79 = load float, ptr %arrayidx82, align 4
  %add83 = fadd float %77, %79
  %add84 = fadd float %76, %add83
  store float %add84, ptr %t, align 4
  %80 = load ptr, ptr %z__.addr, align 8
  %arrayidx85 = getelementptr inbounds float, ptr %80, i64 1
  %81 = load float, ptr %arrayidx85, align 4
  %82 = load float, ptr %t, align 4
  %div86 = fdiv float %81, %82
  %83 = load ptr, ptr %z__.addr, align 8
  %arrayidx87 = getelementptr inbounds float, ptr %83, i64 3
  %84 = load float, ptr %arrayidx87, align 4
  %mul88 = fmul float %84, %div86
  store float %mul88, ptr %arrayidx87, align 4
  %85 = load float, ptr %t, align 4
  %86 = load ptr, ptr %z__.addr, align 8
  %arrayidx89 = getelementptr inbounds float, ptr %86, i64 1
  store float %85, ptr %arrayidx89, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end80, %if.end31
  %87 = load ptr, ptr %z__.addr, align 8
  %arrayidx91 = getelementptr inbounds float, ptr %87, i64 3
  %88 = load float, ptr %arrayidx91, align 4
  %89 = load ptr, ptr %z__.addr, align 8
  %arrayidx92 = getelementptr inbounds float, ptr %89, i64 2
  store float %88, ptr %arrayidx92, align 4
  %90 = load ptr, ptr %z__.addr, align 8
  %arrayidx93 = getelementptr inbounds float, ptr %90, i64 2
  %91 = load float, ptr %arrayidx93, align 4
  %92 = load ptr, ptr %z__.addr, align 8
  %arrayidx94 = getelementptr inbounds float, ptr %92, i64 1
  %93 = load float, ptr %arrayidx94, align 4
  %add95 = fadd float %91, %93
  %94 = load ptr, ptr %z__.addr, align 8
  %arrayidx96 = getelementptr inbounds float, ptr %94, i64 6
  store float %add95, ptr %arrayidx96, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.else12
  br label %if.end98

if.end98:                                         ; preds = %if.end97
  br label %if.end99

if.end99:                                         ; preds = %if.end98
  br label %if.end100

if.end100:                                        ; preds = %if.end99
  %95 = load ptr, ptr %z__.addr, align 8
  %96 = load ptr, ptr %n.addr, align 8
  %97 = load i32, ptr %96, align 4
  %mul101 = mul nsw i32 %97, 2
  %idxprom = sext i32 %mul101 to i64
  %arrayidx102 = getelementptr inbounds float, ptr %95, i64 %idxprom
  store float 0.000000e+00, ptr %arrayidx102, align 4
  %98 = load ptr, ptr %z__.addr, align 8
  %arrayidx103 = getelementptr inbounds float, ptr %98, i64 2
  %99 = load float, ptr %arrayidx103, align 4
  store float %99, ptr %emin, align 4
  store float 0.000000e+00, ptr %qmax, align 4
  store float 0.000000e+00, ptr %zmax, align 4
  store float 0.000000e+00, ptr %d__, align 4
  store float 0.000000e+00, ptr %e, align 4
  %100 = load ptr, ptr %n.addr, align 8
  %101 = load i32, ptr %100, align 4
  %sub104 = sub nsw i32 %101, 1
  %shl = shl i32 %sub104, 1
  store i32 %shl, ptr %i__1, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end100
  %102 = load i32, ptr %k, align 4
  %103 = load i32, ptr %i__1, align 4
  %cmp105 = icmp sle i32 %102, %103
  br i1 %cmp105, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %104 = load ptr, ptr %z__.addr, align 8
  %105 = load i32, ptr %k, align 4
  %idxprom107 = sext i32 %105 to i64
  %arrayidx108 = getelementptr inbounds float, ptr %104, i64 %idxprom107
  %106 = load float, ptr %arrayidx108, align 4
  %cmp109 = fcmp olt float %106, 0.000000e+00
  br i1 %cmp109, label %if.then111, label %if.else115

if.then111:                                       ; preds = %for.body
  %107 = load i32, ptr %k, align 4
  %add112 = add nsw i32 %107, 200
  %sub113 = sub nsw i32 0, %add112
  %108 = load ptr, ptr %info.addr, align 8
  store i32 %sub113, ptr %108, align 4
  %call114 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef @c__2)
  store i32 0, ptr %retval, align 4
  br label %return

if.else115:                                       ; preds = %for.body
  %109 = load ptr, ptr %z__.addr, align 8
  %110 = load i32, ptr %k, align 4
  %add116 = add nsw i32 %110, 1
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds float, ptr %109, i64 %idxprom117
  %111 = load float, ptr %arrayidx118, align 4
  %cmp119 = fcmp olt float %111, 0.000000e+00
  br i1 %cmp119, label %if.then121, label %if.end125

if.then121:                                       ; preds = %if.else115
  %112 = load i32, ptr %k, align 4
  %add122 = add nsw i32 %112, 201
  %sub123 = sub nsw i32 0, %add122
  %113 = load ptr, ptr %info.addr, align 8
  store i32 %sub123, ptr %113, align 4
  %call124 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef @c__2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end125:                                        ; preds = %if.else115
  br label %if.end126

if.end126:                                        ; preds = %if.end125
  %114 = load ptr, ptr %z__.addr, align 8
  %115 = load i32, ptr %k, align 4
  %idxprom127 = sext i32 %115 to i64
  %arrayidx128 = getelementptr inbounds float, ptr %114, i64 %idxprom127
  %116 = load float, ptr %arrayidx128, align 4
  %117 = load float, ptr %d__, align 4
  %add129 = fadd float %117, %116
  store float %add129, ptr %d__, align 4
  %118 = load ptr, ptr %z__.addr, align 8
  %119 = load i32, ptr %k, align 4
  %add130 = add nsw i32 %119, 1
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %118, i64 %idxprom131
  %120 = load float, ptr %arrayidx132, align 4
  %121 = load float, ptr %e, align 4
  %add133 = fadd float %121, %120
  store float %add133, ptr %e, align 4
  %122 = load float, ptr %qmax, align 4
  store float %122, ptr %r__1, align 4
  %123 = load ptr, ptr %z__.addr, align 8
  %124 = load i32, ptr %k, align 4
  %idxprom134 = sext i32 %124 to i64
  %arrayidx135 = getelementptr inbounds float, ptr %123, i64 %idxprom134
  %125 = load float, ptr %arrayidx135, align 4
  store float %125, ptr %r__2, align 4
  %126 = load float, ptr %r__1, align 4
  %127 = load float, ptr %r__2, align 4
  %cmp136 = fcmp oge float %126, %127
  br i1 %cmp136, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end126
  %128 = load float, ptr %r__1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end126
  %129 = load float, ptr %r__2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %128, %cond.true ], [ %129, %cond.false ]
  store float %cond, ptr %qmax, align 4
  %130 = load float, ptr %emin, align 4
  store float %130, ptr %r__1, align 4
  %131 = load ptr, ptr %z__.addr, align 8
  %132 = load i32, ptr %k, align 4
  %add138 = add nsw i32 %132, 1
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds float, ptr %131, i64 %idxprom139
  %133 = load float, ptr %arrayidx140, align 4
  store float %133, ptr %r__2, align 4
  %134 = load float, ptr %r__1, align 4
  %135 = load float, ptr %r__2, align 4
  %cmp141 = fcmp ole float %134, %135
  br i1 %cmp141, label %cond.true143, label %cond.false144

cond.true143:                                     ; preds = %cond.end
  %136 = load float, ptr %r__1, align 4
  br label %cond.end145

cond.false144:                                    ; preds = %cond.end
  %137 = load float, ptr %r__2, align 4
  br label %cond.end145

cond.end145:                                      ; preds = %cond.false144, %cond.true143
  %cond146 = phi float [ %136, %cond.true143 ], [ %137, %cond.false144 ]
  store float %cond146, ptr %emin, align 4
  %138 = load float, ptr %qmax, align 4
  %139 = load float, ptr %zmax, align 4
  %cmp147 = fcmp oge float %138, %139
  br i1 %cmp147, label %cond.true149, label %cond.false150

cond.true149:                                     ; preds = %cond.end145
  %140 = load float, ptr %qmax, align 4
  br label %cond.end151

cond.false150:                                    ; preds = %cond.end145
  %141 = load float, ptr %zmax, align 4
  br label %cond.end151

cond.end151:                                      ; preds = %cond.false150, %cond.true149
  %cond152 = phi float [ %140, %cond.true149 ], [ %141, %cond.false150 ]
  store float %cond152, ptr %r__1, align 4
  %142 = load ptr, ptr %z__.addr, align 8
  %143 = load i32, ptr %k, align 4
  %add153 = add nsw i32 %143, 1
  %idxprom154 = sext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds float, ptr %142, i64 %idxprom154
  %144 = load float, ptr %arrayidx155, align 4
  store float %144, ptr %r__2, align 4
  %145 = load float, ptr %r__1, align 4
  %146 = load float, ptr %r__2, align 4
  %cmp156 = fcmp oge float %145, %146
  br i1 %cmp156, label %cond.true158, label %cond.false159

cond.true158:                                     ; preds = %cond.end151
  %147 = load float, ptr %r__1, align 4
  br label %cond.end160

cond.false159:                                    ; preds = %cond.end151
  %148 = load float, ptr %r__2, align 4
  br label %cond.end160

cond.end160:                                      ; preds = %cond.false159, %cond.true158
  %cond161 = phi float [ %147, %cond.true158 ], [ %148, %cond.false159 ]
  store float %cond161, ptr %zmax, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end160
  %149 = load i32, ptr %k, align 4
  %add162 = add nsw i32 %149, 2
  store i32 %add162, ptr %k, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %150 = load ptr, ptr %z__.addr, align 8
  %151 = load ptr, ptr %n.addr, align 8
  %152 = load i32, ptr %151, align 4
  %shl163 = shl i32 %152, 1
  %sub164 = sub nsw i32 %shl163, 1
  %idxprom165 = sext i32 %sub164 to i64
  %arrayidx166 = getelementptr inbounds float, ptr %150, i64 %idxprom165
  %153 = load float, ptr %arrayidx166, align 4
  %cmp167 = fcmp olt float %153, 0.000000e+00
  br i1 %cmp167, label %if.then169, label %if.end174

if.then169:                                       ; preds = %for.end
  %154 = load ptr, ptr %n.addr, align 8
  %155 = load i32, ptr %154, align 4
  %shl170 = shl i32 %155, 1
  %add171 = add nsw i32 %shl170, 199
  %sub172 = sub nsw i32 0, %add171
  %156 = load ptr, ptr %info.addr, align 8
  store i32 %sub172, ptr %156, align 4
  %call173 = call i32 @xerbla_(ptr noundef @.str.2, ptr noundef @c__2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end174:                                        ; preds = %for.end
  %157 = load ptr, ptr %z__.addr, align 8
  %158 = load ptr, ptr %n.addr, align 8
  %159 = load i32, ptr %158, align 4
  %shl175 = shl i32 %159, 1
  %sub176 = sub nsw i32 %shl175, 1
  %idxprom177 = sext i32 %sub176 to i64
  %arrayidx178 = getelementptr inbounds float, ptr %157, i64 %idxprom177
  %160 = load float, ptr %arrayidx178, align 4
  %161 = load float, ptr %d__, align 4
  %add179 = fadd float %161, %160
  store float %add179, ptr %d__, align 4
  %162 = load float, ptr %qmax, align 4
  store float %162, ptr %r__1, align 4
  %163 = load ptr, ptr %z__.addr, align 8
  %164 = load ptr, ptr %n.addr, align 8
  %165 = load i32, ptr %164, align 4
  %shl180 = shl i32 %165, 1
  %sub181 = sub nsw i32 %shl180, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds float, ptr %163, i64 %idxprom182
  %166 = load float, ptr %arrayidx183, align 4
  store float %166, ptr %r__2, align 4
  %167 = load float, ptr %r__1, align 4
  %168 = load float, ptr %r__2, align 4
  %cmp184 = fcmp oge float %167, %168
  br i1 %cmp184, label %cond.true186, label %cond.false187

cond.true186:                                     ; preds = %if.end174
  %169 = load float, ptr %r__1, align 4
  br label %cond.end188

cond.false187:                                    ; preds = %if.end174
  %170 = load float, ptr %r__2, align 4
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false187, %cond.true186
  %cond189 = phi float [ %169, %cond.true186 ], [ %170, %cond.false187 ]
  store float %cond189, ptr %qmax, align 4
  %171 = load float, ptr %qmax, align 4
  %172 = load float, ptr %zmax, align 4
  %cmp190 = fcmp oge float %171, %172
  br i1 %cmp190, label %cond.true192, label %cond.false193

cond.true192:                                     ; preds = %cond.end188
  %173 = load float, ptr %qmax, align 4
  br label %cond.end194

cond.false193:                                    ; preds = %cond.end188
  %174 = load float, ptr %zmax, align 4
  br label %cond.end194

cond.end194:                                      ; preds = %cond.false193, %cond.true192
  %cond195 = phi float [ %173, %cond.true192 ], [ %174, %cond.false193 ]
  store float %cond195, ptr %zmax, align 4
  %175 = load float, ptr %e, align 4
  %cmp196 = fcmp oeq float %175, 0.000000e+00
  br i1 %cmp196, label %if.then198, label %if.end217

if.then198:                                       ; preds = %cond.end194
  %176 = load ptr, ptr %n.addr, align 8
  %177 = load i32, ptr %176, align 4
  store i32 %177, ptr %i__1, align 4
  store i32 2, ptr %k, align 4
  br label %for.cond199

for.cond199:                                      ; preds = %for.inc209, %if.then198
  %178 = load i32, ptr %k, align 4
  %179 = load i32, ptr %i__1, align 4
  %cmp200 = icmp sle i32 %178, %179
  br i1 %cmp200, label %for.body202, label %for.end210

for.body202:                                      ; preds = %for.cond199
  %180 = load ptr, ptr %z__.addr, align 8
  %181 = load i32, ptr %k, align 4
  %shl203 = shl i32 %181, 1
  %sub204 = sub nsw i32 %shl203, 1
  %idxprom205 = sext i32 %sub204 to i64
  %arrayidx206 = getelementptr inbounds float, ptr %180, i64 %idxprom205
  %182 = load float, ptr %arrayidx206, align 4
  %183 = load ptr, ptr %z__.addr, align 8
  %184 = load i32, ptr %k, align 4
  %idxprom207 = sext i32 %184 to i64
  %arrayidx208 = getelementptr inbounds float, ptr %183, i64 %idxprom207
  store float %182, ptr %arrayidx208, align 4
  br label %for.inc209

for.inc209:                                       ; preds = %for.body202
  %185 = load i32, ptr %k, align 4
  %inc = add nsw i32 %185, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond199, !llvm.loop !7

for.end210:                                       ; preds = %for.cond199
  %186 = load ptr, ptr %n.addr, align 8
  %187 = load ptr, ptr %z__.addr, align 8
  %arrayidx211 = getelementptr inbounds float, ptr %187, i64 1
  %call212 = call i32 @slasrt_(ptr noundef @.str.3, ptr noundef %186, ptr noundef %arrayidx211, ptr noundef %iinfo)
  %188 = load float, ptr %d__, align 4
  %189 = load ptr, ptr %z__.addr, align 8
  %190 = load ptr, ptr %n.addr, align 8
  %191 = load i32, ptr %190, align 4
  %shl213 = shl i32 %191, 1
  %sub214 = sub nsw i32 %shl213, 1
  %idxprom215 = sext i32 %sub214 to i64
  %arrayidx216 = getelementptr inbounds float, ptr %189, i64 %idxprom215
  store float %188, ptr %arrayidx216, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end217:                                        ; preds = %cond.end194
  %192 = load float, ptr %d__, align 4
  %193 = load float, ptr %e, align 4
  %add218 = fadd float %192, %193
  store float %add218, ptr %trace, align 4
  %194 = load float, ptr %trace, align 4
  %cmp219 = fcmp oeq float %194, 0.000000e+00
  br i1 %cmp219, label %if.then221, label %if.end226

if.then221:                                       ; preds = %if.end217
  %195 = load ptr, ptr %z__.addr, align 8
  %196 = load ptr, ptr %n.addr, align 8
  %197 = load i32, ptr %196, align 4
  %shl222 = shl i32 %197, 1
  %sub223 = sub nsw i32 %shl222, 1
  %idxprom224 = sext i32 %sub223 to i64
  %arrayidx225 = getelementptr inbounds float, ptr %195, i64 %idxprom224
  store float 0.000000e+00, ptr %arrayidx225, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end226:                                        ; preds = %if.end217
  store i32 0, ptr %ieee, align 4
  %198 = load ptr, ptr %n.addr, align 8
  %199 = load i32, ptr %198, align 4
  %shl227 = shl i32 %199, 1
  store i32 %shl227, ptr %k, align 4
  br label %for.cond228

for.cond228:                                      ; preds = %for.inc252, %if.end226
  %200 = load i32, ptr %k, align 4
  %cmp229 = icmp sge i32 %200, 2
  br i1 %cmp229, label %for.body231, label %for.end254

for.body231:                                      ; preds = %for.cond228
  %201 = load ptr, ptr %z__.addr, align 8
  %202 = load i32, ptr %k, align 4
  %mul232 = mul nsw i32 %202, 2
  %idxprom233 = sext i32 %mul232 to i64
  %arrayidx234 = getelementptr inbounds float, ptr %201, i64 %idxprom233
  store float 0.000000e+00, ptr %arrayidx234, align 4
  %203 = load ptr, ptr %z__.addr, align 8
  %204 = load i32, ptr %k, align 4
  %idxprom235 = sext i32 %204 to i64
  %arrayidx236 = getelementptr inbounds float, ptr %203, i64 %idxprom235
  %205 = load float, ptr %arrayidx236, align 4
  %206 = load ptr, ptr %z__.addr, align 8
  %207 = load i32, ptr %k, align 4
  %shl237 = shl i32 %207, 1
  %sub238 = sub nsw i32 %shl237, 1
  %idxprom239 = sext i32 %sub238 to i64
  %arrayidx240 = getelementptr inbounds float, ptr %206, i64 %idxprom239
  store float %205, ptr %arrayidx240, align 4
  %208 = load ptr, ptr %z__.addr, align 8
  %209 = load i32, ptr %k, align 4
  %shl241 = shl i32 %209, 1
  %sub242 = sub nsw i32 %shl241, 2
  %idxprom243 = sext i32 %sub242 to i64
  %arrayidx244 = getelementptr inbounds float, ptr %208, i64 %idxprom243
  store float 0.000000e+00, ptr %arrayidx244, align 4
  %210 = load ptr, ptr %z__.addr, align 8
  %211 = load i32, ptr %k, align 4
  %sub245 = sub nsw i32 %211, 1
  %idxprom246 = sext i32 %sub245 to i64
  %arrayidx247 = getelementptr inbounds float, ptr %210, i64 %idxprom246
  %212 = load float, ptr %arrayidx247, align 4
  %213 = load ptr, ptr %z__.addr, align 8
  %214 = load i32, ptr %k, align 4
  %shl248 = shl i32 %214, 1
  %sub249 = sub nsw i32 %shl248, 3
  %idxprom250 = sext i32 %sub249 to i64
  %arrayidx251 = getelementptr inbounds float, ptr %213, i64 %idxprom250
  store float %212, ptr %arrayidx251, align 4
  br label %for.inc252

for.inc252:                                       ; preds = %for.body231
  %215 = load i32, ptr %k, align 4
  %add253 = add nsw i32 %215, -2
  store i32 %add253, ptr %k, align 4
  br label %for.cond228, !llvm.loop !8

for.end254:                                       ; preds = %for.cond228
  store i32 1, ptr %i0, align 4
  %216 = load ptr, ptr %n.addr, align 8
  %217 = load i32, ptr %216, align 4
  store i32 %217, ptr %n0, align 4
  %218 = load ptr, ptr %z__.addr, align 8
  %219 = load i32, ptr %i0, align 4
  %shl255 = shl i32 %219, 2
  %sub256 = sub nsw i32 %shl255, 3
  %idxprom257 = sext i32 %sub256 to i64
  %arrayidx258 = getelementptr inbounds float, ptr %218, i64 %idxprom257
  %220 = load float, ptr %arrayidx258, align 4
  %mul259 = fmul float %220, 1.500000e+00
  %221 = load ptr, ptr %z__.addr, align 8
  %222 = load i32, ptr %n0, align 4
  %shl260 = shl i32 %222, 2
  %sub261 = sub nsw i32 %shl260, 3
  %idxprom262 = sext i32 %sub261 to i64
  %arrayidx263 = getelementptr inbounds float, ptr %221, i64 %idxprom262
  %223 = load float, ptr %arrayidx263, align 4
  %cmp264 = fcmp olt float %mul259, %223
  br i1 %cmp264, label %if.then266, label %if.end308

if.then266:                                       ; preds = %for.end254
  %224 = load i32, ptr %i0, align 4
  %225 = load i32, ptr %n0, align 4
  %add267 = add nsw i32 %224, %225
  %shl268 = shl i32 %add267, 2
  store i32 %shl268, ptr %ipn4, align 4
  %226 = load i32, ptr %i0, align 4
  %227 = load i32, ptr %n0, align 4
  %add269 = add nsw i32 %226, %227
  %sub270 = sub nsw i32 %add269, 1
  %shl271 = shl i32 %sub270, 1
  store i32 %shl271, ptr %i__1, align 4
  %228 = load i32, ptr %i0, align 4
  %shl272 = shl i32 %228, 2
  store i32 %shl272, ptr %i4, align 4
  br label %for.cond273

for.cond273:                                      ; preds = %for.inc305, %if.then266
  %229 = load i32, ptr %i4, align 4
  %230 = load i32, ptr %i__1, align 4
  %cmp274 = icmp sle i32 %229, %230
  br i1 %cmp274, label %for.body276, label %for.end307

for.body276:                                      ; preds = %for.cond273
  %231 = load ptr, ptr %z__.addr, align 8
  %232 = load i32, ptr %i4, align 4
  %sub277 = sub nsw i32 %232, 3
  %idxprom278 = sext i32 %sub277 to i64
  %arrayidx279 = getelementptr inbounds float, ptr %231, i64 %idxprom278
  %233 = load float, ptr %arrayidx279, align 4
  store float %233, ptr %temp, align 4
  %234 = load ptr, ptr %z__.addr, align 8
  %235 = load i32, ptr %ipn4, align 4
  %236 = load i32, ptr %i4, align 4
  %sub280 = sub nsw i32 %235, %236
  %sub281 = sub nsw i32 %sub280, 3
  %idxprom282 = sext i32 %sub281 to i64
  %arrayidx283 = getelementptr inbounds float, ptr %234, i64 %idxprom282
  %237 = load float, ptr %arrayidx283, align 4
  %238 = load ptr, ptr %z__.addr, align 8
  %239 = load i32, ptr %i4, align 4
  %sub284 = sub nsw i32 %239, 3
  %idxprom285 = sext i32 %sub284 to i64
  %arrayidx286 = getelementptr inbounds float, ptr %238, i64 %idxprom285
  store float %237, ptr %arrayidx286, align 4
  %240 = load float, ptr %temp, align 4
  %241 = load ptr, ptr %z__.addr, align 8
  %242 = load i32, ptr %ipn4, align 4
  %243 = load i32, ptr %i4, align 4
  %sub287 = sub nsw i32 %242, %243
  %sub288 = sub nsw i32 %sub287, 3
  %idxprom289 = sext i32 %sub288 to i64
  %arrayidx290 = getelementptr inbounds float, ptr %241, i64 %idxprom289
  store float %240, ptr %arrayidx290, align 4
  %244 = load ptr, ptr %z__.addr, align 8
  %245 = load i32, ptr %i4, align 4
  %sub291 = sub nsw i32 %245, 1
  %idxprom292 = sext i32 %sub291 to i64
  %arrayidx293 = getelementptr inbounds float, ptr %244, i64 %idxprom292
  %246 = load float, ptr %arrayidx293, align 4
  store float %246, ptr %temp, align 4
  %247 = load ptr, ptr %z__.addr, align 8
  %248 = load i32, ptr %ipn4, align 4
  %249 = load i32, ptr %i4, align 4
  %sub294 = sub nsw i32 %248, %249
  %sub295 = sub nsw i32 %sub294, 5
  %idxprom296 = sext i32 %sub295 to i64
  %arrayidx297 = getelementptr inbounds float, ptr %247, i64 %idxprom296
  %250 = load float, ptr %arrayidx297, align 4
  %251 = load ptr, ptr %z__.addr, align 8
  %252 = load i32, ptr %i4, align 4
  %sub298 = sub nsw i32 %252, 1
  %idxprom299 = sext i32 %sub298 to i64
  %arrayidx300 = getelementptr inbounds float, ptr %251, i64 %idxprom299
  store float %250, ptr %arrayidx300, align 4
  %253 = load float, ptr %temp, align 4
  %254 = load ptr, ptr %z__.addr, align 8
  %255 = load i32, ptr %ipn4, align 4
  %256 = load i32, ptr %i4, align 4
  %sub301 = sub nsw i32 %255, %256
  %sub302 = sub nsw i32 %sub301, 5
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds float, ptr %254, i64 %idxprom303
  store float %253, ptr %arrayidx304, align 4
  br label %for.inc305

for.inc305:                                       ; preds = %for.body276
  %257 = load i32, ptr %i4, align 4
  %add306 = add nsw i32 %257, 4
  store i32 %add306, ptr %i4, align 4
  br label %for.cond273, !llvm.loop !9

for.end307:                                       ; preds = %for.cond273
  br label %if.end308

if.end308:                                        ; preds = %for.end307, %for.end254
  store i32 0, ptr %pp, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc521, %if.end308
  %258 = load i32, ptr %k, align 4
  %cmp310 = icmp sle i32 %258, 2
  br i1 %cmp310, label %for.body312, label %for.end523

for.body312:                                      ; preds = %for.cond309
  %259 = load ptr, ptr %z__.addr, align 8
  %260 = load i32, ptr %n0, align 4
  %shl313 = shl i32 %260, 2
  %261 = load i32, ptr %pp, align 4
  %add314 = add nsw i32 %shl313, %261
  %sub315 = sub nsw i32 %add314, 3
  %idxprom316 = sext i32 %sub315 to i64
  %arrayidx317 = getelementptr inbounds float, ptr %259, i64 %idxprom316
  %262 = load float, ptr %arrayidx317, align 4
  store float %262, ptr %d__, align 4
  %263 = load i32, ptr %i0, align 4
  %shl318 = shl i32 %263, 2
  %264 = load i32, ptr %pp, align 4
  %add319 = add nsw i32 %shl318, %264
  store i32 %add319, ptr %i__1, align 4
  %265 = load i32, ptr %n0, align 4
  %sub320 = sub nsw i32 %265, 1
  %shl321 = shl i32 %sub320, 2
  %266 = load i32, ptr %pp, align 4
  %add322 = add nsw i32 %shl321, %266
  store i32 %add322, ptr %i4, align 4
  br label %for.cond323

for.cond323:                                      ; preds = %for.inc351, %for.body312
  %267 = load i32, ptr %i4, align 4
  %268 = load i32, ptr %i__1, align 4
  %cmp324 = icmp sge i32 %267, %268
  br i1 %cmp324, label %for.body326, label %for.end353

for.body326:                                      ; preds = %for.cond323
  %269 = load ptr, ptr %z__.addr, align 8
  %270 = load i32, ptr %i4, align 4
  %sub327 = sub nsw i32 %270, 1
  %idxprom328 = sext i32 %sub327 to i64
  %arrayidx329 = getelementptr inbounds float, ptr %269, i64 %idxprom328
  %271 = load float, ptr %arrayidx329, align 4
  %272 = load float, ptr %tol2, align 4
  %273 = load float, ptr %d__, align 4
  %mul330 = fmul float %272, %273
  %cmp331 = fcmp ole float %271, %mul330
  br i1 %cmp331, label %if.then333, label %if.else340

if.then333:                                       ; preds = %for.body326
  %274 = load ptr, ptr %z__.addr, align 8
  %275 = load i32, ptr %i4, align 4
  %sub334 = sub nsw i32 %275, 1
  %idxprom335 = sext i32 %sub334 to i64
  %arrayidx336 = getelementptr inbounds float, ptr %274, i64 %idxprom335
  store float -0.000000e+00, ptr %arrayidx336, align 4
  %276 = load ptr, ptr %z__.addr, align 8
  %277 = load i32, ptr %i4, align 4
  %sub337 = sub nsw i32 %277, 3
  %idxprom338 = sext i32 %sub337 to i64
  %arrayidx339 = getelementptr inbounds float, ptr %276, i64 %idxprom338
  %278 = load float, ptr %arrayidx339, align 4
  store float %278, ptr %d__, align 4
  br label %if.end350

if.else340:                                       ; preds = %for.body326
  %279 = load ptr, ptr %z__.addr, align 8
  %280 = load i32, ptr %i4, align 4
  %sub341 = sub nsw i32 %280, 3
  %idxprom342 = sext i32 %sub341 to i64
  %arrayidx343 = getelementptr inbounds float, ptr %279, i64 %idxprom342
  %281 = load float, ptr %arrayidx343, align 4
  %282 = load float, ptr %d__, align 4
  %283 = load float, ptr %d__, align 4
  %284 = load ptr, ptr %z__.addr, align 8
  %285 = load i32, ptr %i4, align 4
  %sub344 = sub nsw i32 %285, 1
  %idxprom345 = sext i32 %sub344 to i64
  %arrayidx346 = getelementptr inbounds float, ptr %284, i64 %idxprom345
  %286 = load float, ptr %arrayidx346, align 4
  %add347 = fadd float %283, %286
  %div348 = fdiv float %282, %add347
  %mul349 = fmul float %281, %div348
  store float %mul349, ptr %d__, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.else340, %if.then333
  br label %for.inc351

for.inc351:                                       ; preds = %if.end350
  %287 = load i32, ptr %i4, align 4
  %add352 = add nsw i32 %287, -4
  store i32 %add352, ptr %i4, align 4
  br label %for.cond323, !llvm.loop !10

for.end353:                                       ; preds = %for.cond323
  %288 = load ptr, ptr %z__.addr, align 8
  %289 = load i32, ptr %i0, align 4
  %shl354 = shl i32 %289, 2
  %290 = load i32, ptr %pp, align 4
  %add355 = add nsw i32 %shl354, %290
  %add356 = add nsw i32 %add355, 1
  %idxprom357 = sext i32 %add356 to i64
  %arrayidx358 = getelementptr inbounds float, ptr %288, i64 %idxprom357
  %291 = load float, ptr %arrayidx358, align 4
  store float %291, ptr %emin, align 4
  %292 = load ptr, ptr %z__.addr, align 8
  %293 = load i32, ptr %i0, align 4
  %shl359 = shl i32 %293, 2
  %294 = load i32, ptr %pp, align 4
  %add360 = add nsw i32 %shl359, %294
  %sub361 = sub nsw i32 %add360, 3
  %idxprom362 = sext i32 %sub361 to i64
  %arrayidx363 = getelementptr inbounds float, ptr %292, i64 %idxprom362
  %295 = load float, ptr %arrayidx363, align 4
  store float %295, ptr %d__, align 4
  %296 = load i32, ptr %n0, align 4
  %sub364 = sub nsw i32 %296, 1
  %shl365 = shl i32 %sub364, 2
  %297 = load i32, ptr %pp, align 4
  %add366 = add nsw i32 %shl365, %297
  store i32 %add366, ptr %i__1, align 4
  %298 = load i32, ptr %i0, align 4
  %shl367 = shl i32 %298, 2
  %299 = load i32, ptr %pp, align 4
  %add368 = add nsw i32 %shl367, %299
  store i32 %add368, ptr %i4, align 4
  br label %for.cond369

for.cond369:                                      ; preds = %for.inc486, %for.end353
  %300 = load i32, ptr %i4, align 4
  %301 = load i32, ptr %i__1, align 4
  %cmp370 = icmp sle i32 %300, %301
  br i1 %cmp370, label %for.body372, label %for.end488

for.body372:                                      ; preds = %for.cond369
  %302 = load float, ptr %d__, align 4
  %303 = load ptr, ptr %z__.addr, align 8
  %304 = load i32, ptr %i4, align 4
  %sub373 = sub nsw i32 %304, 1
  %idxprom374 = sext i32 %sub373 to i64
  %arrayidx375 = getelementptr inbounds float, ptr %303, i64 %idxprom374
  %305 = load float, ptr %arrayidx375, align 4
  %add376 = fadd float %302, %305
  %306 = load ptr, ptr %z__.addr, align 8
  %307 = load i32, ptr %i4, align 4
  %308 = load i32, ptr %pp, align 4
  %shl377 = shl i32 %308, 1
  %sub378 = sub nsw i32 %307, %shl377
  %sub379 = sub nsw i32 %sub378, 2
  %idxprom380 = sext i32 %sub379 to i64
  %arrayidx381 = getelementptr inbounds float, ptr %306, i64 %idxprom380
  store float %add376, ptr %arrayidx381, align 4
  %309 = load ptr, ptr %z__.addr, align 8
  %310 = load i32, ptr %i4, align 4
  %sub382 = sub nsw i32 %310, 1
  %idxprom383 = sext i32 %sub382 to i64
  %arrayidx384 = getelementptr inbounds float, ptr %309, i64 %idxprom383
  %311 = load float, ptr %arrayidx384, align 4
  %312 = load float, ptr %tol2, align 4
  %313 = load float, ptr %d__, align 4
  %mul385 = fmul float %312, %313
  %cmp386 = fcmp ole float %311, %mul385
  br i1 %cmp386, label %if.then388, label %if.else404

if.then388:                                       ; preds = %for.body372
  %314 = load ptr, ptr %z__.addr, align 8
  %315 = load i32, ptr %i4, align 4
  %sub389 = sub nsw i32 %315, 1
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds float, ptr %314, i64 %idxprom390
  store float -0.000000e+00, ptr %arrayidx391, align 4
  %316 = load float, ptr %d__, align 4
  %317 = load ptr, ptr %z__.addr, align 8
  %318 = load i32, ptr %i4, align 4
  %319 = load i32, ptr %pp, align 4
  %shl392 = shl i32 %319, 1
  %sub393 = sub nsw i32 %318, %shl392
  %sub394 = sub nsw i32 %sub393, 2
  %idxprom395 = sext i32 %sub394 to i64
  %arrayidx396 = getelementptr inbounds float, ptr %317, i64 %idxprom395
  store float %316, ptr %arrayidx396, align 4
  %320 = load ptr, ptr %z__.addr, align 8
  %321 = load i32, ptr %i4, align 4
  %322 = load i32, ptr %pp, align 4
  %shl397 = shl i32 %322, 1
  %sub398 = sub nsw i32 %321, %shl397
  %idxprom399 = sext i32 %sub398 to i64
  %arrayidx400 = getelementptr inbounds float, ptr %320, i64 %idxprom399
  store float 0.000000e+00, ptr %arrayidx400, align 4
  %323 = load ptr, ptr %z__.addr, align 8
  %324 = load i32, ptr %i4, align 4
  %add401 = add nsw i32 %324, 1
  %idxprom402 = sext i32 %add401 to i64
  %arrayidx403 = getelementptr inbounds float, ptr %323, i64 %idxprom402
  %325 = load float, ptr %arrayidx403, align 4
  store float %325, ptr %d__, align 4
  br label %if.end475

if.else404:                                       ; preds = %for.body372
  %326 = load float, ptr %safmin, align 4
  %327 = load ptr, ptr %z__.addr, align 8
  %328 = load i32, ptr %i4, align 4
  %add405 = add nsw i32 %328, 1
  %idxprom406 = sext i32 %add405 to i64
  %arrayidx407 = getelementptr inbounds float, ptr %327, i64 %idxprom406
  %329 = load float, ptr %arrayidx407, align 4
  %mul408 = fmul float %326, %329
  %330 = load ptr, ptr %z__.addr, align 8
  %331 = load i32, ptr %i4, align 4
  %332 = load i32, ptr %pp, align 4
  %shl409 = shl i32 %332, 1
  %sub410 = sub nsw i32 %331, %shl409
  %sub411 = sub nsw i32 %sub410, 2
  %idxprom412 = sext i32 %sub411 to i64
  %arrayidx413 = getelementptr inbounds float, ptr %330, i64 %idxprom412
  %333 = load float, ptr %arrayidx413, align 4
  %cmp414 = fcmp olt float %mul408, %333
  br i1 %cmp414, label %land.lhs.true, label %if.else446

land.lhs.true:                                    ; preds = %if.else404
  %334 = load float, ptr %safmin, align 4
  %335 = load ptr, ptr %z__.addr, align 8
  %336 = load i32, ptr %i4, align 4
  %337 = load i32, ptr %pp, align 4
  %shl416 = shl i32 %337, 1
  %sub417 = sub nsw i32 %336, %shl416
  %sub418 = sub nsw i32 %sub417, 2
  %idxprom419 = sext i32 %sub418 to i64
  %arrayidx420 = getelementptr inbounds float, ptr %335, i64 %idxprom419
  %338 = load float, ptr %arrayidx420, align 4
  %mul421 = fmul float %334, %338
  %339 = load ptr, ptr %z__.addr, align 8
  %340 = load i32, ptr %i4, align 4
  %add422 = add nsw i32 %340, 1
  %idxprom423 = sext i32 %add422 to i64
  %arrayidx424 = getelementptr inbounds float, ptr %339, i64 %idxprom423
  %341 = load float, ptr %arrayidx424, align 4
  %cmp425 = fcmp olt float %mul421, %341
  br i1 %cmp425, label %if.then427, label %if.else446

if.then427:                                       ; preds = %land.lhs.true
  %342 = load ptr, ptr %z__.addr, align 8
  %343 = load i32, ptr %i4, align 4
  %add428 = add nsw i32 %343, 1
  %idxprom429 = sext i32 %add428 to i64
  %arrayidx430 = getelementptr inbounds float, ptr %342, i64 %idxprom429
  %344 = load float, ptr %arrayidx430, align 4
  %345 = load ptr, ptr %z__.addr, align 8
  %346 = load i32, ptr %i4, align 4
  %347 = load i32, ptr %pp, align 4
  %shl431 = shl i32 %347, 1
  %sub432 = sub nsw i32 %346, %shl431
  %sub433 = sub nsw i32 %sub432, 2
  %idxprom434 = sext i32 %sub433 to i64
  %arrayidx435 = getelementptr inbounds float, ptr %345, i64 %idxprom434
  %348 = load float, ptr %arrayidx435, align 4
  %div436 = fdiv float %344, %348
  store float %div436, ptr %temp, align 4
  %349 = load ptr, ptr %z__.addr, align 8
  %350 = load i32, ptr %i4, align 4
  %sub437 = sub nsw i32 %350, 1
  %idxprom438 = sext i32 %sub437 to i64
  %arrayidx439 = getelementptr inbounds float, ptr %349, i64 %idxprom438
  %351 = load float, ptr %arrayidx439, align 4
  %352 = load float, ptr %temp, align 4
  %mul440 = fmul float %351, %352
  %353 = load ptr, ptr %z__.addr, align 8
  %354 = load i32, ptr %i4, align 4
  %355 = load i32, ptr %pp, align 4
  %shl441 = shl i32 %355, 1
  %sub442 = sub nsw i32 %354, %shl441
  %idxprom443 = sext i32 %sub442 to i64
  %arrayidx444 = getelementptr inbounds float, ptr %353, i64 %idxprom443
  store float %mul440, ptr %arrayidx444, align 4
  %356 = load float, ptr %temp, align 4
  %357 = load float, ptr %d__, align 4
  %mul445 = fmul float %357, %356
  store float %mul445, ptr %d__, align 4
  br label %if.end474

if.else446:                                       ; preds = %land.lhs.true, %if.else404
  %358 = load ptr, ptr %z__.addr, align 8
  %359 = load i32, ptr %i4, align 4
  %add447 = add nsw i32 %359, 1
  %idxprom448 = sext i32 %add447 to i64
  %arrayidx449 = getelementptr inbounds float, ptr %358, i64 %idxprom448
  %360 = load float, ptr %arrayidx449, align 4
  %361 = load ptr, ptr %z__.addr, align 8
  %362 = load i32, ptr %i4, align 4
  %sub450 = sub nsw i32 %362, 1
  %idxprom451 = sext i32 %sub450 to i64
  %arrayidx452 = getelementptr inbounds float, ptr %361, i64 %idxprom451
  %363 = load float, ptr %arrayidx452, align 4
  %364 = load ptr, ptr %z__.addr, align 8
  %365 = load i32, ptr %i4, align 4
  %366 = load i32, ptr %pp, align 4
  %shl453 = shl i32 %366, 1
  %sub454 = sub nsw i32 %365, %shl453
  %sub455 = sub nsw i32 %sub454, 2
  %idxprom456 = sext i32 %sub455 to i64
  %arrayidx457 = getelementptr inbounds float, ptr %364, i64 %idxprom456
  %367 = load float, ptr %arrayidx457, align 4
  %div458 = fdiv float %363, %367
  %mul459 = fmul float %360, %div458
  %368 = load ptr, ptr %z__.addr, align 8
  %369 = load i32, ptr %i4, align 4
  %370 = load i32, ptr %pp, align 4
  %shl460 = shl i32 %370, 1
  %sub461 = sub nsw i32 %369, %shl460
  %idxprom462 = sext i32 %sub461 to i64
  %arrayidx463 = getelementptr inbounds float, ptr %368, i64 %idxprom462
  store float %mul459, ptr %arrayidx463, align 4
  %371 = load ptr, ptr %z__.addr, align 8
  %372 = load i32, ptr %i4, align 4
  %add464 = add nsw i32 %372, 1
  %idxprom465 = sext i32 %add464 to i64
  %arrayidx466 = getelementptr inbounds float, ptr %371, i64 %idxprom465
  %373 = load float, ptr %arrayidx466, align 4
  %374 = load float, ptr %d__, align 4
  %375 = load ptr, ptr %z__.addr, align 8
  %376 = load i32, ptr %i4, align 4
  %377 = load i32, ptr %pp, align 4
  %shl467 = shl i32 %377, 1
  %sub468 = sub nsw i32 %376, %shl467
  %sub469 = sub nsw i32 %sub468, 2
  %idxprom470 = sext i32 %sub469 to i64
  %arrayidx471 = getelementptr inbounds float, ptr %375, i64 %idxprom470
  %378 = load float, ptr %arrayidx471, align 4
  %div472 = fdiv float %374, %378
  %mul473 = fmul float %373, %div472
  store float %mul473, ptr %d__, align 4
  br label %if.end474

if.end474:                                        ; preds = %if.else446, %if.then427
  br label %if.end475

if.end475:                                        ; preds = %if.end474, %if.then388
  %379 = load float, ptr %emin, align 4
  store float %379, ptr %r__1, align 4
  %380 = load ptr, ptr %z__.addr, align 8
  %381 = load i32, ptr %i4, align 4
  %382 = load i32, ptr %pp, align 4
  %shl476 = shl i32 %382, 1
  %sub477 = sub nsw i32 %381, %shl476
  %idxprom478 = sext i32 %sub477 to i64
  %arrayidx479 = getelementptr inbounds float, ptr %380, i64 %idxprom478
  %383 = load float, ptr %arrayidx479, align 4
  store float %383, ptr %r__2, align 4
  %384 = load float, ptr %r__1, align 4
  %385 = load float, ptr %r__2, align 4
  %cmp480 = fcmp ole float %384, %385
  br i1 %cmp480, label %cond.true482, label %cond.false483

cond.true482:                                     ; preds = %if.end475
  %386 = load float, ptr %r__1, align 4
  br label %cond.end484

cond.false483:                                    ; preds = %if.end475
  %387 = load float, ptr %r__2, align 4
  br label %cond.end484

cond.end484:                                      ; preds = %cond.false483, %cond.true482
  %cond485 = phi float [ %386, %cond.true482 ], [ %387, %cond.false483 ]
  store float %cond485, ptr %emin, align 4
  br label %for.inc486

for.inc486:                                       ; preds = %cond.end484
  %388 = load i32, ptr %i4, align 4
  %add487 = add nsw i32 %388, 4
  store i32 %add487, ptr %i4, align 4
  br label %for.cond369, !llvm.loop !11

for.end488:                                       ; preds = %for.cond369
  %389 = load float, ptr %d__, align 4
  %390 = load ptr, ptr %z__.addr, align 8
  %391 = load i32, ptr %n0, align 4
  %shl489 = shl i32 %391, 2
  %392 = load i32, ptr %pp, align 4
  %sub490 = sub nsw i32 %shl489, %392
  %sub491 = sub nsw i32 %sub490, 2
  %idxprom492 = sext i32 %sub491 to i64
  %arrayidx493 = getelementptr inbounds float, ptr %390, i64 %idxprom492
  store float %389, ptr %arrayidx493, align 4
  %393 = load ptr, ptr %z__.addr, align 8
  %394 = load i32, ptr %i0, align 4
  %shl494 = shl i32 %394, 2
  %395 = load i32, ptr %pp, align 4
  %sub495 = sub nsw i32 %shl494, %395
  %sub496 = sub nsw i32 %sub495, 2
  %idxprom497 = sext i32 %sub496 to i64
  %arrayidx498 = getelementptr inbounds float, ptr %393, i64 %idxprom497
  %396 = load float, ptr %arrayidx498, align 4
  store float %396, ptr %qmax, align 4
  %397 = load i32, ptr %n0, align 4
  %shl499 = shl i32 %397, 2
  %398 = load i32, ptr %pp, align 4
  %sub500 = sub nsw i32 %shl499, %398
  %sub501 = sub nsw i32 %sub500, 2
  store i32 %sub501, ptr %i__1, align 4
  %399 = load i32, ptr %i0, align 4
  %shl502 = shl i32 %399, 2
  %400 = load i32, ptr %pp, align 4
  %sub503 = sub nsw i32 %shl502, %400
  %add504 = add nsw i32 %sub503, 2
  store i32 %add504, ptr %i4, align 4
  br label %for.cond505

for.cond505:                                      ; preds = %for.inc517, %for.end488
  %401 = load i32, ptr %i4, align 4
  %402 = load i32, ptr %i__1, align 4
  %cmp506 = icmp sle i32 %401, %402
  br i1 %cmp506, label %for.body508, label %for.end519

for.body508:                                      ; preds = %for.cond505
  %403 = load float, ptr %qmax, align 4
  store float %403, ptr %r__1, align 4
  %404 = load ptr, ptr %z__.addr, align 8
  %405 = load i32, ptr %i4, align 4
  %idxprom509 = sext i32 %405 to i64
  %arrayidx510 = getelementptr inbounds float, ptr %404, i64 %idxprom509
  %406 = load float, ptr %arrayidx510, align 4
  store float %406, ptr %r__2, align 4
  %407 = load float, ptr %r__1, align 4
  %408 = load float, ptr %r__2, align 4
  %cmp511 = fcmp oge float %407, %408
  br i1 %cmp511, label %cond.true513, label %cond.false514

cond.true513:                                     ; preds = %for.body508
  %409 = load float, ptr %r__1, align 4
  br label %cond.end515

cond.false514:                                    ; preds = %for.body508
  %410 = load float, ptr %r__2, align 4
  br label %cond.end515

cond.end515:                                      ; preds = %cond.false514, %cond.true513
  %cond516 = phi float [ %409, %cond.true513 ], [ %410, %cond.false514 ]
  store float %cond516, ptr %qmax, align 4
  br label %for.inc517

for.inc517:                                       ; preds = %cond.end515
  %411 = load i32, ptr %i4, align 4
  %add518 = add nsw i32 %411, 4
  store i32 %add518, ptr %i4, align 4
  br label %for.cond505, !llvm.loop !12

for.end519:                                       ; preds = %for.cond505
  %412 = load i32, ptr %pp, align 4
  %sub520 = sub nsw i32 1, %412
  store i32 %sub520, ptr %pp, align 4
  br label %for.inc521

for.inc521:                                       ; preds = %for.end519
  %413 = load i32, ptr %k, align 4
  %inc522 = add nsw i32 %413, 1
  store i32 %inc522, ptr %k, align 4
  br label %for.cond309, !llvm.loop !13

for.end523:                                       ; preds = %for.cond309
  store i32 0, ptr %ttype, align 4
  store float 0.000000e+00, ptr %dmin1, align 4
  store float 0.000000e+00, ptr %dmin2, align 4
  store float 0.000000e+00, ptr %dn, align 4
  store float 0.000000e+00, ptr %dn1, align 4
  store float 0.000000e+00, ptr %dn2, align 4
  store float 0.000000e+00, ptr %g, align 4
  store float 0.000000e+00, ptr %tau, align 4
  store i32 2, ptr %iter, align 4
  store i32 0, ptr %nfail, align 4
  %414 = load i32, ptr %n0, align 4
  %415 = load i32, ptr %i0, align 4
  %sub524 = sub nsw i32 %414, %415
  %shl525 = shl i32 %sub524, 1
  store i32 %shl525, ptr %ndiv, align 4
  %416 = load ptr, ptr %n.addr, align 8
  %417 = load i32, ptr %416, align 4
  %add526 = add nsw i32 %417, 1
  store i32 %add526, ptr %i__1, align 4
  store i32 1, ptr %iwhila, align 4
  br label %for.cond527

for.cond527:                                      ; preds = %for.inc988, %for.end523
  %418 = load i32, ptr %iwhila, align 4
  %419 = load i32, ptr %i__1, align 4
  %cmp528 = icmp sle i32 %418, %419
  br i1 %cmp528, label %for.body530, label %for.end990

for.body530:                                      ; preds = %for.cond527
  %420 = load i32, ptr %n0, align 4
  %cmp531 = icmp slt i32 %420, 1
  br i1 %cmp531, label %if.then533, label %if.end534

if.then533:                                       ; preds = %for.body530
  br label %L170

if.end534:                                        ; preds = %for.body530
  store float 0.000000e+00, ptr %desig, align 4
  %421 = load i32, ptr %n0, align 4
  %422 = load ptr, ptr %n.addr, align 8
  %423 = load i32, ptr %422, align 4
  %cmp535 = icmp eq i32 %421, %423
  br i1 %cmp535, label %if.then537, label %if.else538

if.then537:                                       ; preds = %if.end534
  store float 0.000000e+00, ptr %sigma, align 4
  br label %if.end543

if.else538:                                       ; preds = %if.end534
  %424 = load ptr, ptr %z__.addr, align 8
  %425 = load i32, ptr %n0, align 4
  %shl539 = shl i32 %425, 2
  %sub540 = sub nsw i32 %shl539, 1
  %idxprom541 = sext i32 %sub540 to i64
  %arrayidx542 = getelementptr inbounds float, ptr %424, i64 %idxprom541
  %426 = load float, ptr %arrayidx542, align 4
  %fneg = fneg float %426
  store float %fneg, ptr %sigma, align 4
  br label %if.end543

if.end543:                                        ; preds = %if.else538, %if.then537
  %427 = load float, ptr %sigma, align 4
  %cmp544 = fcmp olt float %427, 0.000000e+00
  br i1 %cmp544, label %if.then546, label %if.end547

if.then546:                                       ; preds = %if.end543
  %428 = load ptr, ptr %info.addr, align 8
  store i32 1, ptr %428, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end547:                                        ; preds = %if.end543
  store float 0.000000e+00, ptr %emax, align 4
  %429 = load i32, ptr %n0, align 4
  %430 = load i32, ptr %i0, align 4
  %cmp548 = icmp sgt i32 %429, %430
  br i1 %cmp548, label %if.then550, label %if.else562

if.then550:                                       ; preds = %if.end547
  %431 = load ptr, ptr %z__.addr, align 8
  %432 = load i32, ptr %n0, align 4
  %shl551 = shl i32 %432, 2
  %sub552 = sub nsw i32 %shl551, 5
  %idxprom553 = sext i32 %sub552 to i64
  %arrayidx554 = getelementptr inbounds float, ptr %431, i64 %idxprom553
  %433 = load float, ptr %arrayidx554, align 4
  store float %433, ptr %r__1, align 4
  %434 = load float, ptr %r__1, align 4
  %cmp555 = fcmp oge float %434, 0.000000e+00
  br i1 %cmp555, label %cond.true557, label %cond.false558

cond.true557:                                     ; preds = %if.then550
  %435 = load float, ptr %r__1, align 4
  br label %cond.end560

cond.false558:                                    ; preds = %if.then550
  %436 = load float, ptr %r__1, align 4
  %fneg559 = fneg float %436
  br label %cond.end560

cond.end560:                                      ; preds = %cond.false558, %cond.true557
  %cond561 = phi float [ %435, %cond.true557 ], [ %fneg559, %cond.false558 ]
  store float %cond561, ptr %emin, align 4
  br label %if.end563

if.else562:                                       ; preds = %if.end547
  store float 0.000000e+00, ptr %emin, align 4
  br label %if.end563

if.end563:                                        ; preds = %if.else562, %cond.end560
  %437 = load ptr, ptr %z__.addr, align 8
  %438 = load i32, ptr %n0, align 4
  %shl564 = shl i32 %438, 2
  %sub565 = sub nsw i32 %shl564, 3
  %idxprom566 = sext i32 %sub565 to i64
  %arrayidx567 = getelementptr inbounds float, ptr %437, i64 %idxprom566
  %439 = load float, ptr %arrayidx567, align 4
  store float %439, ptr %qmin, align 4
  %440 = load float, ptr %qmin, align 4
  store float %440, ptr %qmax, align 4
  %441 = load i32, ptr %n0, align 4
  %shl568 = shl i32 %441, 2
  store i32 %shl568, ptr %i4, align 4
  br label %for.cond569

for.cond569:                                      ; preds = %for.inc625, %if.end563
  %442 = load i32, ptr %i4, align 4
  %cmp570 = icmp sge i32 %442, 8
  br i1 %cmp570, label %for.body572, label %for.end627

for.body572:                                      ; preds = %for.cond569
  %443 = load ptr, ptr %z__.addr, align 8
  %444 = load i32, ptr %i4, align 4
  %sub573 = sub nsw i32 %444, 5
  %idxprom574 = sext i32 %sub573 to i64
  %arrayidx575 = getelementptr inbounds float, ptr %443, i64 %idxprom574
  %445 = load float, ptr %arrayidx575, align 4
  %cmp576 = fcmp ole float %445, 0.000000e+00
  br i1 %cmp576, label %if.then578, label %if.end579

if.then578:                                       ; preds = %for.body572
  br label %L100

if.end579:                                        ; preds = %for.body572
  %446 = load float, ptr %qmin, align 4
  %447 = load float, ptr %emax, align 4
  %mul580 = fmul float %447, 4.000000e+00
  %cmp581 = fcmp oge float %446, %mul580
  br i1 %cmp581, label %if.then583, label %if.end602

if.then583:                                       ; preds = %if.end579
  %448 = load float, ptr %qmin, align 4
  store float %448, ptr %r__1, align 4
  %449 = load ptr, ptr %z__.addr, align 8
  %450 = load i32, ptr %i4, align 4
  %sub584 = sub nsw i32 %450, 3
  %idxprom585 = sext i32 %sub584 to i64
  %arrayidx586 = getelementptr inbounds float, ptr %449, i64 %idxprom585
  %451 = load float, ptr %arrayidx586, align 4
  store float %451, ptr %r__2, align 4
  %452 = load float, ptr %r__1, align 4
  %453 = load float, ptr %r__2, align 4
  %cmp587 = fcmp ole float %452, %453
  br i1 %cmp587, label %cond.true589, label %cond.false590

cond.true589:                                     ; preds = %if.then583
  %454 = load float, ptr %r__1, align 4
  br label %cond.end591

cond.false590:                                    ; preds = %if.then583
  %455 = load float, ptr %r__2, align 4
  br label %cond.end591

cond.end591:                                      ; preds = %cond.false590, %cond.true589
  %cond592 = phi float [ %454, %cond.true589 ], [ %455, %cond.false590 ]
  store float %cond592, ptr %qmin, align 4
  %456 = load float, ptr %emax, align 4
  store float %456, ptr %r__1, align 4
  %457 = load ptr, ptr %z__.addr, align 8
  %458 = load i32, ptr %i4, align 4
  %sub593 = sub nsw i32 %458, 5
  %idxprom594 = sext i32 %sub593 to i64
  %arrayidx595 = getelementptr inbounds float, ptr %457, i64 %idxprom594
  %459 = load float, ptr %arrayidx595, align 4
  store float %459, ptr %r__2, align 4
  %460 = load float, ptr %r__1, align 4
  %461 = load float, ptr %r__2, align 4
  %cmp596 = fcmp oge float %460, %461
  br i1 %cmp596, label %cond.true598, label %cond.false599

cond.true598:                                     ; preds = %cond.end591
  %462 = load float, ptr %r__1, align 4
  br label %cond.end600

cond.false599:                                    ; preds = %cond.end591
  %463 = load float, ptr %r__2, align 4
  br label %cond.end600

cond.end600:                                      ; preds = %cond.false599, %cond.true598
  %cond601 = phi float [ %462, %cond.true598 ], [ %463, %cond.false599 ]
  store float %cond601, ptr %emax, align 4
  br label %if.end602

if.end602:                                        ; preds = %cond.end600, %if.end579
  %464 = load float, ptr %qmax, align 4
  store float %464, ptr %r__1, align 4
  %465 = load ptr, ptr %z__.addr, align 8
  %466 = load i32, ptr %i4, align 4
  %sub603 = sub nsw i32 %466, 7
  %idxprom604 = sext i32 %sub603 to i64
  %arrayidx605 = getelementptr inbounds float, ptr %465, i64 %idxprom604
  %467 = load float, ptr %arrayidx605, align 4
  %468 = load ptr, ptr %z__.addr, align 8
  %469 = load i32, ptr %i4, align 4
  %sub606 = sub nsw i32 %469, 5
  %idxprom607 = sext i32 %sub606 to i64
  %arrayidx608 = getelementptr inbounds float, ptr %468, i64 %idxprom607
  %470 = load float, ptr %arrayidx608, align 4
  %add609 = fadd float %467, %470
  store float %add609, ptr %r__2, align 4
  %471 = load float, ptr %r__1, align 4
  %472 = load float, ptr %r__2, align 4
  %cmp610 = fcmp oge float %471, %472
  br i1 %cmp610, label %cond.true612, label %cond.false613

cond.true612:                                     ; preds = %if.end602
  %473 = load float, ptr %r__1, align 4
  br label %cond.end614

cond.false613:                                    ; preds = %if.end602
  %474 = load float, ptr %r__2, align 4
  br label %cond.end614

cond.end614:                                      ; preds = %cond.false613, %cond.true612
  %cond615 = phi float [ %473, %cond.true612 ], [ %474, %cond.false613 ]
  store float %cond615, ptr %qmax, align 4
  %475 = load float, ptr %emin, align 4
  store float %475, ptr %r__1, align 4
  %476 = load ptr, ptr %z__.addr, align 8
  %477 = load i32, ptr %i4, align 4
  %sub616 = sub nsw i32 %477, 5
  %idxprom617 = sext i32 %sub616 to i64
  %arrayidx618 = getelementptr inbounds float, ptr %476, i64 %idxprom617
  %478 = load float, ptr %arrayidx618, align 4
  store float %478, ptr %r__2, align 4
  %479 = load float, ptr %r__1, align 4
  %480 = load float, ptr %r__2, align 4
  %cmp619 = fcmp ole float %479, %480
  br i1 %cmp619, label %cond.true621, label %cond.false622

cond.true621:                                     ; preds = %cond.end614
  %481 = load float, ptr %r__1, align 4
  br label %cond.end623

cond.false622:                                    ; preds = %cond.end614
  %482 = load float, ptr %r__2, align 4
  br label %cond.end623

cond.end623:                                      ; preds = %cond.false622, %cond.true621
  %cond624 = phi float [ %481, %cond.true621 ], [ %482, %cond.false622 ]
  store float %cond624, ptr %emin, align 4
  br label %for.inc625

for.inc625:                                       ; preds = %cond.end623
  %483 = load i32, ptr %i4, align 4
  %add626 = add nsw i32 %483, -4
  store i32 %add626, ptr %i4, align 4
  br label %for.cond569, !llvm.loop !14

for.end627:                                       ; preds = %for.cond569
  store i32 4, ptr %i4, align 4
  br label %L100

L100:                                             ; preds = %for.end627, %if.then578
  %484 = load i32, ptr %i4, align 4
  %div628 = sdiv i32 %484, 4
  store i32 %div628, ptr %i0, align 4
  store i32 0, ptr %pp, align 4
  %485 = load i32, ptr %n0, align 4
  %486 = load i32, ptr %i0, align 4
  %sub629 = sub nsw i32 %485, %486
  %cmp630 = icmp sgt i32 %sub629, 1
  br i1 %cmp630, label %if.then632, label %if.end744

if.then632:                                       ; preds = %L100
  %487 = load ptr, ptr %z__.addr, align 8
  %488 = load i32, ptr %i0, align 4
  %shl633 = shl i32 %488, 2
  %sub634 = sub nsw i32 %shl633, 3
  %idxprom635 = sext i32 %sub634 to i64
  %arrayidx636 = getelementptr inbounds float, ptr %487, i64 %idxprom635
  %489 = load float, ptr %arrayidx636, align 4
  store float %489, ptr %dee, align 4
  %490 = load float, ptr %dee, align 4
  store float %490, ptr %deemin, align 4
  %491 = load i32, ptr %i0, align 4
  store i32 %491, ptr %kmin, align 4
  %492 = load i32, ptr %n0, align 4
  %shl637 = shl i32 %492, 2
  %sub638 = sub nsw i32 %shl637, 3
  store i32 %sub638, ptr %i__2, align 4
  %493 = load i32, ptr %i0, align 4
  %shl639 = shl i32 %493, 2
  %add640 = add nsw i32 %shl639, 1
  store i32 %add640, ptr %i4, align 4
  br label %for.cond641

for.cond641:                                      ; preds = %for.inc659, %if.then632
  %494 = load i32, ptr %i4, align 4
  %495 = load i32, ptr %i__2, align 4
  %cmp642 = icmp sle i32 %494, %495
  br i1 %cmp642, label %for.body644, label %for.end661

for.body644:                                      ; preds = %for.cond641
  %496 = load ptr, ptr %z__.addr, align 8
  %497 = load i32, ptr %i4, align 4
  %idxprom645 = sext i32 %497 to i64
  %arrayidx646 = getelementptr inbounds float, ptr %496, i64 %idxprom645
  %498 = load float, ptr %arrayidx646, align 4
  %499 = load float, ptr %dee, align 4
  %500 = load float, ptr %dee, align 4
  %501 = load ptr, ptr %z__.addr, align 8
  %502 = load i32, ptr %i4, align 4
  %sub647 = sub nsw i32 %502, 2
  %idxprom648 = sext i32 %sub647 to i64
  %arrayidx649 = getelementptr inbounds float, ptr %501, i64 %idxprom648
  %503 = load float, ptr %arrayidx649, align 4
  %add650 = fadd float %500, %503
  %div651 = fdiv float %499, %add650
  %mul652 = fmul float %498, %div651
  store float %mul652, ptr %dee, align 4
  %504 = load float, ptr %dee, align 4
  %505 = load float, ptr %deemin, align 4
  %cmp653 = fcmp ole float %504, %505
  br i1 %cmp653, label %if.then655, label %if.end658

if.then655:                                       ; preds = %for.body644
  %506 = load float, ptr %dee, align 4
  store float %506, ptr %deemin, align 4
  %507 = load i32, ptr %i4, align 4
  %add656 = add nsw i32 %507, 3
  %div657 = sdiv i32 %add656, 4
  store i32 %div657, ptr %kmin, align 4
  br label %if.end658

if.end658:                                        ; preds = %if.then655, %for.body644
  br label %for.inc659

for.inc659:                                       ; preds = %if.end658
  %508 = load i32, ptr %i4, align 4
  %add660 = add nsw i32 %508, 4
  store i32 %add660, ptr %i4, align 4
  br label %for.cond641, !llvm.loop !15

for.end661:                                       ; preds = %for.cond641
  %509 = load i32, ptr %kmin, align 4
  %510 = load i32, ptr %i0, align 4
  %sub662 = sub nsw i32 %509, %510
  %shl663 = shl i32 %sub662, 1
  %511 = load i32, ptr %n0, align 4
  %512 = load i32, ptr %kmin, align 4
  %sub664 = sub nsw i32 %511, %512
  %cmp665 = icmp slt i32 %shl663, %sub664
  br i1 %cmp665, label %land.lhs.true667, label %if.end743

land.lhs.true667:                                 ; preds = %for.end661
  %513 = load float, ptr %deemin, align 4
  %514 = load ptr, ptr %z__.addr, align 8
  %515 = load i32, ptr %n0, align 4
  %shl668 = shl i32 %515, 2
  %sub669 = sub nsw i32 %shl668, 3
  %idxprom670 = sext i32 %sub669 to i64
  %arrayidx671 = getelementptr inbounds float, ptr %514, i64 %idxprom670
  %516 = load float, ptr %arrayidx671, align 4
  %mul672 = fmul float %516, 5.000000e-01
  %cmp673 = fcmp ole float %513, %mul672
  br i1 %cmp673, label %if.then675, label %if.end743

if.then675:                                       ; preds = %land.lhs.true667
  %517 = load i32, ptr %i0, align 4
  %518 = load i32, ptr %n0, align 4
  %add676 = add nsw i32 %517, %518
  %shl677 = shl i32 %add676, 2
  store i32 %shl677, ptr %ipn4, align 4
  store i32 2, ptr %pp, align 4
  %519 = load i32, ptr %i0, align 4
  %520 = load i32, ptr %n0, align 4
  %add678 = add nsw i32 %519, %520
  %sub679 = sub nsw i32 %add678, 1
  %shl680 = shl i32 %sub679, 1
  store i32 %shl680, ptr %i__2, align 4
  %521 = load i32, ptr %i0, align 4
  %shl681 = shl i32 %521, 2
  store i32 %shl681, ptr %i4, align 4
  br label %for.cond682

for.cond682:                                      ; preds = %for.inc740, %if.then675
  %522 = load i32, ptr %i4, align 4
  %523 = load i32, ptr %i__2, align 4
  %cmp683 = icmp sle i32 %522, %523
  br i1 %cmp683, label %for.body685, label %for.end742

for.body685:                                      ; preds = %for.cond682
  %524 = load ptr, ptr %z__.addr, align 8
  %525 = load i32, ptr %i4, align 4
  %sub686 = sub nsw i32 %525, 3
  %idxprom687 = sext i32 %sub686 to i64
  %arrayidx688 = getelementptr inbounds float, ptr %524, i64 %idxprom687
  %526 = load float, ptr %arrayidx688, align 4
  store float %526, ptr %temp, align 4
  %527 = load ptr, ptr %z__.addr, align 8
  %528 = load i32, ptr %ipn4, align 4
  %529 = load i32, ptr %i4, align 4
  %sub689 = sub nsw i32 %528, %529
  %sub690 = sub nsw i32 %sub689, 3
  %idxprom691 = sext i32 %sub690 to i64
  %arrayidx692 = getelementptr inbounds float, ptr %527, i64 %idxprom691
  %530 = load float, ptr %arrayidx692, align 4
  %531 = load ptr, ptr %z__.addr, align 8
  %532 = load i32, ptr %i4, align 4
  %sub693 = sub nsw i32 %532, 3
  %idxprom694 = sext i32 %sub693 to i64
  %arrayidx695 = getelementptr inbounds float, ptr %531, i64 %idxprom694
  store float %530, ptr %arrayidx695, align 4
  %533 = load float, ptr %temp, align 4
  %534 = load ptr, ptr %z__.addr, align 8
  %535 = load i32, ptr %ipn4, align 4
  %536 = load i32, ptr %i4, align 4
  %sub696 = sub nsw i32 %535, %536
  %sub697 = sub nsw i32 %sub696, 3
  %idxprom698 = sext i32 %sub697 to i64
  %arrayidx699 = getelementptr inbounds float, ptr %534, i64 %idxprom698
  store float %533, ptr %arrayidx699, align 4
  %537 = load ptr, ptr %z__.addr, align 8
  %538 = load i32, ptr %i4, align 4
  %sub700 = sub nsw i32 %538, 2
  %idxprom701 = sext i32 %sub700 to i64
  %arrayidx702 = getelementptr inbounds float, ptr %537, i64 %idxprom701
  %539 = load float, ptr %arrayidx702, align 4
  store float %539, ptr %temp, align 4
  %540 = load ptr, ptr %z__.addr, align 8
  %541 = load i32, ptr %ipn4, align 4
  %542 = load i32, ptr %i4, align 4
  %sub703 = sub nsw i32 %541, %542
  %sub704 = sub nsw i32 %sub703, 2
  %idxprom705 = sext i32 %sub704 to i64
  %arrayidx706 = getelementptr inbounds float, ptr %540, i64 %idxprom705
  %543 = load float, ptr %arrayidx706, align 4
  %544 = load ptr, ptr %z__.addr, align 8
  %545 = load i32, ptr %i4, align 4
  %sub707 = sub nsw i32 %545, 2
  %idxprom708 = sext i32 %sub707 to i64
  %arrayidx709 = getelementptr inbounds float, ptr %544, i64 %idxprom708
  store float %543, ptr %arrayidx709, align 4
  %546 = load float, ptr %temp, align 4
  %547 = load ptr, ptr %z__.addr, align 8
  %548 = load i32, ptr %ipn4, align 4
  %549 = load i32, ptr %i4, align 4
  %sub710 = sub nsw i32 %548, %549
  %sub711 = sub nsw i32 %sub710, 2
  %idxprom712 = sext i32 %sub711 to i64
  %arrayidx713 = getelementptr inbounds float, ptr %547, i64 %idxprom712
  store float %546, ptr %arrayidx713, align 4
  %550 = load ptr, ptr %z__.addr, align 8
  %551 = load i32, ptr %i4, align 4
  %sub714 = sub nsw i32 %551, 1
  %idxprom715 = sext i32 %sub714 to i64
  %arrayidx716 = getelementptr inbounds float, ptr %550, i64 %idxprom715
  %552 = load float, ptr %arrayidx716, align 4
  store float %552, ptr %temp, align 4
  %553 = load ptr, ptr %z__.addr, align 8
  %554 = load i32, ptr %ipn4, align 4
  %555 = load i32, ptr %i4, align 4
  %sub717 = sub nsw i32 %554, %555
  %sub718 = sub nsw i32 %sub717, 5
  %idxprom719 = sext i32 %sub718 to i64
  %arrayidx720 = getelementptr inbounds float, ptr %553, i64 %idxprom719
  %556 = load float, ptr %arrayidx720, align 4
  %557 = load ptr, ptr %z__.addr, align 8
  %558 = load i32, ptr %i4, align 4
  %sub721 = sub nsw i32 %558, 1
  %idxprom722 = sext i32 %sub721 to i64
  %arrayidx723 = getelementptr inbounds float, ptr %557, i64 %idxprom722
  store float %556, ptr %arrayidx723, align 4
  %559 = load float, ptr %temp, align 4
  %560 = load ptr, ptr %z__.addr, align 8
  %561 = load i32, ptr %ipn4, align 4
  %562 = load i32, ptr %i4, align 4
  %sub724 = sub nsw i32 %561, %562
  %sub725 = sub nsw i32 %sub724, 5
  %idxprom726 = sext i32 %sub725 to i64
  %arrayidx727 = getelementptr inbounds float, ptr %560, i64 %idxprom726
  store float %559, ptr %arrayidx727, align 4
  %563 = load ptr, ptr %z__.addr, align 8
  %564 = load i32, ptr %i4, align 4
  %idxprom728 = sext i32 %564 to i64
  %arrayidx729 = getelementptr inbounds float, ptr %563, i64 %idxprom728
  %565 = load float, ptr %arrayidx729, align 4
  store float %565, ptr %temp, align 4
  %566 = load ptr, ptr %z__.addr, align 8
  %567 = load i32, ptr %ipn4, align 4
  %568 = load i32, ptr %i4, align 4
  %sub730 = sub nsw i32 %567, %568
  %sub731 = sub nsw i32 %sub730, 4
  %idxprom732 = sext i32 %sub731 to i64
  %arrayidx733 = getelementptr inbounds float, ptr %566, i64 %idxprom732
  %569 = load float, ptr %arrayidx733, align 4
  %570 = load ptr, ptr %z__.addr, align 8
  %571 = load i32, ptr %i4, align 4
  %idxprom734 = sext i32 %571 to i64
  %arrayidx735 = getelementptr inbounds float, ptr %570, i64 %idxprom734
  store float %569, ptr %arrayidx735, align 4
  %572 = load float, ptr %temp, align 4
  %573 = load ptr, ptr %z__.addr, align 8
  %574 = load i32, ptr %ipn4, align 4
  %575 = load i32, ptr %i4, align 4
  %sub736 = sub nsw i32 %574, %575
  %sub737 = sub nsw i32 %sub736, 4
  %idxprom738 = sext i32 %sub737 to i64
  %arrayidx739 = getelementptr inbounds float, ptr %573, i64 %idxprom738
  store float %572, ptr %arrayidx739, align 4
  br label %for.inc740

for.inc740:                                       ; preds = %for.body685
  %576 = load i32, ptr %i4, align 4
  %add741 = add nsw i32 %576, 4
  store i32 %add741, ptr %i4, align 4
  br label %for.cond682, !llvm.loop !16

for.end742:                                       ; preds = %for.cond682
  br label %if.end743

if.end743:                                        ; preds = %for.end742, %land.lhs.true667, %for.end661
  br label %if.end744

if.end744:                                        ; preds = %if.end743, %L100
  store float 0.000000e+00, ptr %r__1, align 4
  %577 = load float, ptr %qmin, align 4
  %conv745 = fpext float %577 to double
  %578 = load float, ptr %qmin, align 4
  %conv746 = fpext float %578 to double
  %call747 = call double @sqrt(double noundef %conv746) #4
  %mul748 = fmul double %call747, 2.000000e+00
  %579 = load float, ptr %emax, align 4
  %conv749 = fpext float %579 to double
  %call750 = call double @sqrt(double noundef %conv749) #4
  %neg = fneg double %mul748
  %580 = call double @llvm.fmuladd.f64(double %neg, double %call750, double %conv745)
  %conv752 = fptrunc double %580 to float
  store float %conv752, ptr %r__2, align 4
  %581 = load float, ptr %r__1, align 4
  %582 = load float, ptr %r__2, align 4
  %cmp753 = fcmp oge float %581, %582
  br i1 %cmp753, label %cond.true755, label %cond.false756

cond.true755:                                     ; preds = %if.end744
  %583 = load float, ptr %r__1, align 4
  br label %cond.end757

cond.false756:                                    ; preds = %if.end744
  %584 = load float, ptr %r__2, align 4
  br label %cond.end757

cond.end757:                                      ; preds = %cond.false756, %cond.true755
  %cond758 = phi float [ %583, %cond.true755 ], [ %584, %cond.false756 ]
  %fneg759 = fneg float %cond758
  store float %fneg759, ptr %dmin__, align 4
  %585 = load i32, ptr %n0, align 4
  %586 = load i32, ptr %i0, align 4
  %sub760 = sub nsw i32 %585, %586
  %add761 = add nsw i32 %sub760, 1
  %mul762 = mul nsw i32 %add761, 100
  store i32 %mul762, ptr %nbig, align 4
  %587 = load i32, ptr %nbig, align 4
  store i32 %587, ptr %i__2, align 4
  store i32 1, ptr %iwhilb, align 4
  br label %for.cond763

for.cond763:                                      ; preds = %for.inc883, %cond.end757
  %588 = load i32, ptr %iwhilb, align 4
  %589 = load i32, ptr %i__2, align 4
  %cmp764 = icmp sle i32 %588, %589
  br i1 %cmp764, label %for.body766, label %for.end885

for.body766:                                      ; preds = %for.cond763
  %590 = load i32, ptr %i0, align 4
  %591 = load i32, ptr %n0, align 4
  %cmp767 = icmp sgt i32 %590, %591
  br i1 %cmp767, label %if.then769, label %if.end770

if.then769:                                       ; preds = %for.body766
  br label %L150

if.end770:                                        ; preds = %for.body766
  %592 = load ptr, ptr %z__.addr, align 8
  %arrayidx771 = getelementptr inbounds float, ptr %592, i64 1
  %call772 = call i32 @slasq3_(ptr noundef %i0, ptr noundef %n0, ptr noundef %arrayidx771, ptr noundef %pp, ptr noundef %dmin__, ptr noundef %sigma, ptr noundef %desig, ptr noundef %qmax, ptr noundef %nfail, ptr noundef %iter, ptr noundef %ndiv, ptr noundef %ieee, ptr noundef %ttype, ptr noundef %dmin1, ptr noundef %dmin2, ptr noundef %dn, ptr noundef %dn1, ptr noundef %dn2, ptr noundef %g, ptr noundef %tau)
  %593 = load i32, ptr %pp, align 4
  %sub773 = sub nsw i32 1, %593
  store i32 %sub773, ptr %pp, align 4
  %594 = load i32, ptr %pp, align 4
  %cmp774 = icmp eq i32 %594, 0
  br i1 %cmp774, label %land.lhs.true776, label %if.end882

land.lhs.true776:                                 ; preds = %if.end770
  %595 = load i32, ptr %n0, align 4
  %596 = load i32, ptr %i0, align 4
  %sub777 = sub nsw i32 %595, %596
  %cmp778 = icmp sge i32 %sub777, 3
  br i1 %cmp778, label %if.then780, label %if.end882

if.then780:                                       ; preds = %land.lhs.true776
  %597 = load ptr, ptr %z__.addr, align 8
  %598 = load i32, ptr %n0, align 4
  %mul781 = mul nsw i32 %598, 4
  %idxprom782 = sext i32 %mul781 to i64
  %arrayidx783 = getelementptr inbounds float, ptr %597, i64 %idxprom782
  %599 = load float, ptr %arrayidx783, align 4
  %600 = load float, ptr %tol2, align 4
  %601 = load float, ptr %qmax, align 4
  %mul784 = fmul float %600, %601
  %cmp785 = fcmp ole float %599, %mul784
  br i1 %cmp785, label %if.then795, label %lor.lhs.false787

lor.lhs.false787:                                 ; preds = %if.then780
  %602 = load ptr, ptr %z__.addr, align 8
  %603 = load i32, ptr %n0, align 4
  %shl788 = shl i32 %603, 2
  %sub789 = sub nsw i32 %shl788, 1
  %idxprom790 = sext i32 %sub789 to i64
  %arrayidx791 = getelementptr inbounds float, ptr %602, i64 %idxprom790
  %604 = load float, ptr %arrayidx791, align 4
  %605 = load float, ptr %tol2, align 4
  %606 = load float, ptr %sigma, align 4
  %mul792 = fmul float %605, %606
  %cmp793 = fcmp ole float %604, %mul792
  br i1 %cmp793, label %if.then795, label %if.end881

if.then795:                                       ; preds = %lor.lhs.false787, %if.then780
  %607 = load i32, ptr %i0, align 4
  %sub796 = sub nsw i32 %607, 1
  store i32 %sub796, ptr %splt, align 4
  %608 = load ptr, ptr %z__.addr, align 8
  %609 = load i32, ptr %i0, align 4
  %shl797 = shl i32 %609, 2
  %sub798 = sub nsw i32 %shl797, 3
  %idxprom799 = sext i32 %sub798 to i64
  %arrayidx800 = getelementptr inbounds float, ptr %608, i64 %idxprom799
  %610 = load float, ptr %arrayidx800, align 4
  store float %610, ptr %qmax, align 4
  %611 = load ptr, ptr %z__.addr, align 8
  %612 = load i32, ptr %i0, align 4
  %shl801 = shl i32 %612, 2
  %sub802 = sub nsw i32 %shl801, 1
  %idxprom803 = sext i32 %sub802 to i64
  %arrayidx804 = getelementptr inbounds float, ptr %611, i64 %idxprom803
  %613 = load float, ptr %arrayidx804, align 4
  store float %613, ptr %emin, align 4
  %614 = load ptr, ptr %z__.addr, align 8
  %615 = load i32, ptr %i0, align 4
  %mul805 = mul nsw i32 %615, 4
  %idxprom806 = sext i32 %mul805 to i64
  %arrayidx807 = getelementptr inbounds float, ptr %614, i64 %idxprom806
  %616 = load float, ptr %arrayidx807, align 4
  store float %616, ptr %oldemn, align 4
  %617 = load i32, ptr %n0, align 4
  %sub808 = sub nsw i32 %617, 3
  %shl809 = shl i32 %sub808, 2
  store i32 %shl809, ptr %i__3, align 4
  %618 = load i32, ptr %i0, align 4
  %shl810 = shl i32 %618, 2
  store i32 %shl810, ptr %i4, align 4
  br label %for.cond811

for.cond811:                                      ; preds = %for.inc870, %if.then795
  %619 = load i32, ptr %i4, align 4
  %620 = load i32, ptr %i__3, align 4
  %cmp812 = icmp sle i32 %619, %620
  br i1 %cmp812, label %for.body814, label %for.end872

for.body814:                                      ; preds = %for.cond811
  %621 = load ptr, ptr %z__.addr, align 8
  %622 = load i32, ptr %i4, align 4
  %idxprom815 = sext i32 %622 to i64
  %arrayidx816 = getelementptr inbounds float, ptr %621, i64 %idxprom815
  %623 = load float, ptr %arrayidx816, align 4
  %624 = load float, ptr %tol2, align 4
  %625 = load ptr, ptr %z__.addr, align 8
  %626 = load i32, ptr %i4, align 4
  %sub817 = sub nsw i32 %626, 3
  %idxprom818 = sext i32 %sub817 to i64
  %arrayidx819 = getelementptr inbounds float, ptr %625, i64 %idxprom818
  %627 = load float, ptr %arrayidx819, align 4
  %mul820 = fmul float %624, %627
  %cmp821 = fcmp ole float %623, %mul820
  br i1 %cmp821, label %if.then830, label %lor.lhs.false823

lor.lhs.false823:                                 ; preds = %for.body814
  %628 = load ptr, ptr %z__.addr, align 8
  %629 = load i32, ptr %i4, align 4
  %sub824 = sub nsw i32 %629, 1
  %idxprom825 = sext i32 %sub824 to i64
  %arrayidx826 = getelementptr inbounds float, ptr %628, i64 %idxprom825
  %630 = load float, ptr %arrayidx826, align 4
  %631 = load float, ptr %tol2, align 4
  %632 = load float, ptr %sigma, align 4
  %mul827 = fmul float %631, %632
  %cmp828 = fcmp ole float %630, %mul827
  br i1 %cmp828, label %if.then830, label %if.else842

if.then830:                                       ; preds = %lor.lhs.false823, %for.body814
  %633 = load float, ptr %sigma, align 4
  %fneg831 = fneg float %633
  %634 = load ptr, ptr %z__.addr, align 8
  %635 = load i32, ptr %i4, align 4
  %sub832 = sub nsw i32 %635, 1
  %idxprom833 = sext i32 %sub832 to i64
  %arrayidx834 = getelementptr inbounds float, ptr %634, i64 %idxprom833
  store float %fneg831, ptr %arrayidx834, align 4
  %636 = load i32, ptr %i4, align 4
  %div835 = sdiv i32 %636, 4
  store i32 %div835, ptr %splt, align 4
  store float 0.000000e+00, ptr %qmax, align 4
  %637 = load ptr, ptr %z__.addr, align 8
  %638 = load i32, ptr %i4, align 4
  %add836 = add nsw i32 %638, 3
  %idxprom837 = sext i32 %add836 to i64
  %arrayidx838 = getelementptr inbounds float, ptr %637, i64 %idxprom837
  %639 = load float, ptr %arrayidx838, align 4
  store float %639, ptr %emin, align 4
  %640 = load ptr, ptr %z__.addr, align 8
  %641 = load i32, ptr %i4, align 4
  %add839 = add nsw i32 %641, 4
  %idxprom840 = sext i32 %add839 to i64
  %arrayidx841 = getelementptr inbounds float, ptr %640, i64 %idxprom840
  %642 = load float, ptr %arrayidx841, align 4
  store float %642, ptr %oldemn, align 4
  br label %if.end869

if.else842:                                       ; preds = %lor.lhs.false823
  %643 = load float, ptr %qmax, align 4
  store float %643, ptr %r__1, align 4
  %644 = load ptr, ptr %z__.addr, align 8
  %645 = load i32, ptr %i4, align 4
  %add843 = add nsw i32 %645, 1
  %idxprom844 = sext i32 %add843 to i64
  %arrayidx845 = getelementptr inbounds float, ptr %644, i64 %idxprom844
  %646 = load float, ptr %arrayidx845, align 4
  store float %646, ptr %r__2, align 4
  %647 = load float, ptr %r__1, align 4
  %648 = load float, ptr %r__2, align 4
  %cmp846 = fcmp oge float %647, %648
  br i1 %cmp846, label %cond.true848, label %cond.false849

cond.true848:                                     ; preds = %if.else842
  %649 = load float, ptr %r__1, align 4
  br label %cond.end850

cond.false849:                                    ; preds = %if.else842
  %650 = load float, ptr %r__2, align 4
  br label %cond.end850

cond.end850:                                      ; preds = %cond.false849, %cond.true848
  %cond851 = phi float [ %649, %cond.true848 ], [ %650, %cond.false849 ]
  store float %cond851, ptr %qmax, align 4
  %651 = load float, ptr %emin, align 4
  store float %651, ptr %r__1, align 4
  %652 = load ptr, ptr %z__.addr, align 8
  %653 = load i32, ptr %i4, align 4
  %sub852 = sub nsw i32 %653, 1
  %idxprom853 = sext i32 %sub852 to i64
  %arrayidx854 = getelementptr inbounds float, ptr %652, i64 %idxprom853
  %654 = load float, ptr %arrayidx854, align 4
  store float %654, ptr %r__2, align 4
  %655 = load float, ptr %r__1, align 4
  %656 = load float, ptr %r__2, align 4
  %cmp855 = fcmp ole float %655, %656
  br i1 %cmp855, label %cond.true857, label %cond.false858

cond.true857:                                     ; preds = %cond.end850
  %657 = load float, ptr %r__1, align 4
  br label %cond.end859

cond.false858:                                    ; preds = %cond.end850
  %658 = load float, ptr %r__2, align 4
  br label %cond.end859

cond.end859:                                      ; preds = %cond.false858, %cond.true857
  %cond860 = phi float [ %657, %cond.true857 ], [ %658, %cond.false858 ]
  store float %cond860, ptr %emin, align 4
  %659 = load float, ptr %oldemn, align 4
  store float %659, ptr %r__1, align 4
  %660 = load ptr, ptr %z__.addr, align 8
  %661 = load i32, ptr %i4, align 4
  %idxprom861 = sext i32 %661 to i64
  %arrayidx862 = getelementptr inbounds float, ptr %660, i64 %idxprom861
  %662 = load float, ptr %arrayidx862, align 4
  store float %662, ptr %r__2, align 4
  %663 = load float, ptr %r__1, align 4
  %664 = load float, ptr %r__2, align 4
  %cmp863 = fcmp ole float %663, %664
  br i1 %cmp863, label %cond.true865, label %cond.false866

cond.true865:                                     ; preds = %cond.end859
  %665 = load float, ptr %r__1, align 4
  br label %cond.end867

cond.false866:                                    ; preds = %cond.end859
  %666 = load float, ptr %r__2, align 4
  br label %cond.end867

cond.end867:                                      ; preds = %cond.false866, %cond.true865
  %cond868 = phi float [ %665, %cond.true865 ], [ %666, %cond.false866 ]
  store float %cond868, ptr %oldemn, align 4
  br label %if.end869

if.end869:                                        ; preds = %cond.end867, %if.then830
  br label %for.inc870

for.inc870:                                       ; preds = %if.end869
  %667 = load i32, ptr %i4, align 4
  %add871 = add nsw i32 %667, 4
  store i32 %add871, ptr %i4, align 4
  br label %for.cond811, !llvm.loop !17

for.end872:                                       ; preds = %for.cond811
  %668 = load float, ptr %emin, align 4
  %669 = load ptr, ptr %z__.addr, align 8
  %670 = load i32, ptr %n0, align 4
  %shl873 = shl i32 %670, 2
  %sub874 = sub nsw i32 %shl873, 1
  %idxprom875 = sext i32 %sub874 to i64
  %arrayidx876 = getelementptr inbounds float, ptr %669, i64 %idxprom875
  store float %668, ptr %arrayidx876, align 4
  %671 = load float, ptr %oldemn, align 4
  %672 = load ptr, ptr %z__.addr, align 8
  %673 = load i32, ptr %n0, align 4
  %mul877 = mul nsw i32 %673, 4
  %idxprom878 = sext i32 %mul877 to i64
  %arrayidx879 = getelementptr inbounds float, ptr %672, i64 %idxprom878
  store float %671, ptr %arrayidx879, align 4
  %674 = load i32, ptr %splt, align 4
  %add880 = add nsw i32 %674, 1
  store i32 %add880, ptr %i0, align 4
  br label %if.end881

if.end881:                                        ; preds = %for.end872, %lor.lhs.false787
  br label %if.end882

if.end882:                                        ; preds = %if.end881, %land.lhs.true776, %if.end770
  br label %for.inc883

for.inc883:                                       ; preds = %if.end882
  %675 = load i32, ptr %iwhilb, align 4
  %inc884 = add nsw i32 %675, 1
  store i32 %inc884, ptr %iwhilb, align 4
  br label %for.cond763, !llvm.loop !18

for.end885:                                       ; preds = %for.cond763
  %676 = load ptr, ptr %info.addr, align 8
  store i32 2, ptr %676, align 4
  %677 = load i32, ptr %i0, align 4
  store i32 %677, ptr %i1, align 4
  %678 = load i32, ptr %n0, align 4
  store i32 %678, ptr %n1, align 4
  br label %L145

L145:                                             ; preds = %if.then950, %for.end885
  %679 = load ptr, ptr %z__.addr, align 8
  %680 = load i32, ptr %i0, align 4
  %shl886 = shl i32 %680, 2
  %sub887 = sub nsw i32 %shl886, 3
  %idxprom888 = sext i32 %sub887 to i64
  %arrayidx889 = getelementptr inbounds float, ptr %679, i64 %idxprom888
  %681 = load float, ptr %arrayidx889, align 4
  store float %681, ptr %tempq, align 4
  %682 = load float, ptr %sigma, align 4
  %683 = load ptr, ptr %z__.addr, align 8
  %684 = load i32, ptr %i0, align 4
  %shl890 = shl i32 %684, 2
  %sub891 = sub nsw i32 %shl890, 3
  %idxprom892 = sext i32 %sub891 to i64
  %arrayidx893 = getelementptr inbounds float, ptr %683, i64 %idxprom892
  %685 = load float, ptr %arrayidx893, align 4
  %add894 = fadd float %685, %682
  store float %add894, ptr %arrayidx893, align 4
  %686 = load i32, ptr %n0, align 4
  store i32 %686, ptr %i__2, align 4
  %687 = load i32, ptr %i0, align 4
  %add895 = add nsw i32 %687, 1
  store i32 %add895, ptr %k, align 4
  br label %for.cond896

for.cond896:                                      ; preds = %for.inc933, %L145
  %688 = load i32, ptr %k, align 4
  %689 = load i32, ptr %i__2, align 4
  %cmp897 = icmp sle i32 %688, %689
  br i1 %cmp897, label %for.body899, label %for.end935

for.body899:                                      ; preds = %for.cond896
  %690 = load ptr, ptr %z__.addr, align 8
  %691 = load i32, ptr %k, align 4
  %shl900 = shl i32 %691, 2
  %sub901 = sub nsw i32 %shl900, 5
  %idxprom902 = sext i32 %sub901 to i64
  %arrayidx903 = getelementptr inbounds float, ptr %690, i64 %idxprom902
  %692 = load float, ptr %arrayidx903, align 4
  store float %692, ptr %tempe, align 4
  %693 = load float, ptr %tempq, align 4
  %694 = load ptr, ptr %z__.addr, align 8
  %695 = load i32, ptr %k, align 4
  %shl904 = shl i32 %695, 2
  %sub905 = sub nsw i32 %shl904, 7
  %idxprom906 = sext i32 %sub905 to i64
  %arrayidx907 = getelementptr inbounds float, ptr %694, i64 %idxprom906
  %696 = load float, ptr %arrayidx907, align 4
  %div908 = fdiv float %693, %696
  %697 = load ptr, ptr %z__.addr, align 8
  %698 = load i32, ptr %k, align 4
  %shl909 = shl i32 %698, 2
  %sub910 = sub nsw i32 %shl909, 5
  %idxprom911 = sext i32 %sub910 to i64
  %arrayidx912 = getelementptr inbounds float, ptr %697, i64 %idxprom911
  %699 = load float, ptr %arrayidx912, align 4
  %mul913 = fmul float %699, %div908
  store float %mul913, ptr %arrayidx912, align 4
  %700 = load ptr, ptr %z__.addr, align 8
  %701 = load i32, ptr %k, align 4
  %shl914 = shl i32 %701, 2
  %sub915 = sub nsw i32 %shl914, 3
  %idxprom916 = sext i32 %sub915 to i64
  %arrayidx917 = getelementptr inbounds float, ptr %700, i64 %idxprom916
  %702 = load float, ptr %arrayidx917, align 4
  store float %702, ptr %tempq, align 4
  %703 = load ptr, ptr %z__.addr, align 8
  %704 = load i32, ptr %k, align 4
  %shl918 = shl i32 %704, 2
  %sub919 = sub nsw i32 %shl918, 3
  %idxprom920 = sext i32 %sub919 to i64
  %arrayidx921 = getelementptr inbounds float, ptr %703, i64 %idxprom920
  %705 = load float, ptr %arrayidx921, align 4
  %706 = load float, ptr %sigma, align 4
  %add922 = fadd float %705, %706
  %707 = load float, ptr %tempe, align 4
  %add923 = fadd float %add922, %707
  %708 = load ptr, ptr %z__.addr, align 8
  %709 = load i32, ptr %k, align 4
  %shl924 = shl i32 %709, 2
  %sub925 = sub nsw i32 %shl924, 5
  %idxprom926 = sext i32 %sub925 to i64
  %arrayidx927 = getelementptr inbounds float, ptr %708, i64 %idxprom926
  %710 = load float, ptr %arrayidx927, align 4
  %sub928 = fsub float %add923, %710
  %711 = load ptr, ptr %z__.addr, align 8
  %712 = load i32, ptr %k, align 4
  %shl929 = shl i32 %712, 2
  %sub930 = sub nsw i32 %shl929, 3
  %idxprom931 = sext i32 %sub930 to i64
  %arrayidx932 = getelementptr inbounds float, ptr %711, i64 %idxprom931
  store float %sub928, ptr %arrayidx932, align 4
  br label %for.inc933

for.inc933:                                       ; preds = %for.body899
  %713 = load i32, ptr %k, align 4
  %inc934 = add nsw i32 %713, 1
  store i32 %inc934, ptr %k, align 4
  br label %for.cond896, !llvm.loop !19

for.end935:                                       ; preds = %for.cond896
  %714 = load i32, ptr %i1, align 4
  %cmp936 = icmp sgt i32 %714, 1
  br i1 %cmp936, label %if.then938, label %if.end957

if.then938:                                       ; preds = %for.end935
  %715 = load i32, ptr %i1, align 4
  %sub939 = sub nsw i32 %715, 1
  store i32 %sub939, ptr %n1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then938
  %716 = load i32, ptr %i1, align 4
  %cmp940 = icmp sge i32 %716, 2
  br i1 %cmp940, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %717 = load ptr, ptr %z__.addr, align 8
  %718 = load i32, ptr %i1, align 4
  %shl942 = shl i32 %718, 2
  %sub943 = sub nsw i32 %shl942, 5
  %idxprom944 = sext i32 %sub943 to i64
  %arrayidx945 = getelementptr inbounds float, ptr %717, i64 %idxprom944
  %719 = load float, ptr %arrayidx945, align 4
  %cmp946 = fcmp oge float %719, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %720 = phi i1 [ false, %while.cond ], [ %cmp946, %land.rhs ]
  br i1 %720, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %721 = load i32, ptr %i1, align 4
  %dec = add nsw i32 %721, -1
  store i32 %dec, ptr %i1, align 4
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %land.end
  %722 = load i32, ptr %i1, align 4
  %cmp948 = icmp sge i32 %722, 1
  br i1 %cmp948, label %if.then950, label %if.end956

if.then950:                                       ; preds = %while.end
  %723 = load ptr, ptr %z__.addr, align 8
  %724 = load i32, ptr %n1, align 4
  %shl951 = shl i32 %724, 2
  %sub952 = sub nsw i32 %shl951, 1
  %idxprom953 = sext i32 %sub952 to i64
  %arrayidx954 = getelementptr inbounds float, ptr %723, i64 %idxprom953
  %725 = load float, ptr %arrayidx954, align 4
  %fneg955 = fneg float %725
  store float %fneg955, ptr %sigma, align 4
  br label %L145

if.end956:                                        ; preds = %while.end
  br label %if.end957

if.end957:                                        ; preds = %if.end956, %for.end935
  %726 = load ptr, ptr %n.addr, align 8
  %727 = load i32, ptr %726, align 4
  store i32 %727, ptr %i__2, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond958

for.cond958:                                      ; preds = %for.inc985, %if.end957
  %728 = load i32, ptr %k, align 4
  %729 = load i32, ptr %i__2, align 4
  %cmp959 = icmp sle i32 %728, %729
  br i1 %cmp959, label %for.body961, label %for.end987

for.body961:                                      ; preds = %for.cond958
  %730 = load ptr, ptr %z__.addr, align 8
  %731 = load i32, ptr %k, align 4
  %shl962 = shl i32 %731, 2
  %sub963 = sub nsw i32 %shl962, 3
  %idxprom964 = sext i32 %sub963 to i64
  %arrayidx965 = getelementptr inbounds float, ptr %730, i64 %idxprom964
  %732 = load float, ptr %arrayidx965, align 4
  %733 = load ptr, ptr %z__.addr, align 8
  %734 = load i32, ptr %k, align 4
  %shl966 = shl i32 %734, 1
  %sub967 = sub nsw i32 %shl966, 1
  %idxprom968 = sext i32 %sub967 to i64
  %arrayidx969 = getelementptr inbounds float, ptr %733, i64 %idxprom968
  store float %732, ptr %arrayidx969, align 4
  %735 = load i32, ptr %k, align 4
  %736 = load i32, ptr %n0, align 4
  %cmp970 = icmp slt i32 %735, %736
  br i1 %cmp970, label %if.then972, label %if.else980

if.then972:                                       ; preds = %for.body961
  %737 = load ptr, ptr %z__.addr, align 8
  %738 = load i32, ptr %k, align 4
  %shl973 = shl i32 %738, 2
  %sub974 = sub nsw i32 %shl973, 1
  %idxprom975 = sext i32 %sub974 to i64
  %arrayidx976 = getelementptr inbounds float, ptr %737, i64 %idxprom975
  %739 = load float, ptr %arrayidx976, align 4
  %740 = load ptr, ptr %z__.addr, align 8
  %741 = load i32, ptr %k, align 4
  %mul977 = mul nsw i32 %741, 2
  %idxprom978 = sext i32 %mul977 to i64
  %arrayidx979 = getelementptr inbounds float, ptr %740, i64 %idxprom978
  store float %739, ptr %arrayidx979, align 4
  br label %if.end984

if.else980:                                       ; preds = %for.body961
  %742 = load ptr, ptr %z__.addr, align 8
  %743 = load i32, ptr %k, align 4
  %mul981 = mul nsw i32 %743, 2
  %idxprom982 = sext i32 %mul981 to i64
  %arrayidx983 = getelementptr inbounds float, ptr %742, i64 %idxprom982
  store float 0.000000e+00, ptr %arrayidx983, align 4
  br label %if.end984

if.end984:                                        ; preds = %if.else980, %if.then972
  br label %for.inc985

for.inc985:                                       ; preds = %if.end984
  %744 = load i32, ptr %k, align 4
  %inc986 = add nsw i32 %744, 1
  store i32 %inc986, ptr %k, align 4
  br label %for.cond958, !llvm.loop !21

for.end987:                                       ; preds = %for.cond958
  store i32 0, ptr %retval, align 4
  br label %return

L150:                                             ; preds = %if.then769
  br label %for.inc988

for.inc988:                                       ; preds = %L150
  %745 = load i32, ptr %iwhila, align 4
  %inc989 = add nsw i32 %745, 1
  store i32 %inc989, ptr %iwhila, align 4
  br label %for.cond527, !llvm.loop !22

for.end990:                                       ; preds = %for.cond527
  %746 = load ptr, ptr %info.addr, align 8
  store i32 3, ptr %746, align 4
  store i32 0, ptr %retval, align 4
  br label %return

L170:                                             ; preds = %if.then533
  %747 = load ptr, ptr %n.addr, align 8
  %748 = load i32, ptr %747, align 4
  store i32 %748, ptr %i__1, align 4
  store i32 2, ptr %k, align 4
  br label %for.cond991

for.cond991:                                      ; preds = %for.inc1001, %L170
  %749 = load i32, ptr %k, align 4
  %750 = load i32, ptr %i__1, align 4
  %cmp992 = icmp sle i32 %749, %750
  br i1 %cmp992, label %for.body994, label %for.end1003

for.body994:                                      ; preds = %for.cond991
  %751 = load ptr, ptr %z__.addr, align 8
  %752 = load i32, ptr %k, align 4
  %shl995 = shl i32 %752, 2
  %sub996 = sub nsw i32 %shl995, 3
  %idxprom997 = sext i32 %sub996 to i64
  %arrayidx998 = getelementptr inbounds float, ptr %751, i64 %idxprom997
  %753 = load float, ptr %arrayidx998, align 4
  %754 = load ptr, ptr %z__.addr, align 8
  %755 = load i32, ptr %k, align 4
  %idxprom999 = sext i32 %755 to i64
  %arrayidx1000 = getelementptr inbounds float, ptr %754, i64 %idxprom999
  store float %753, ptr %arrayidx1000, align 4
  br label %for.inc1001

for.inc1001:                                      ; preds = %for.body994
  %756 = load i32, ptr %k, align 4
  %inc1002 = add nsw i32 %756, 1
  store i32 %inc1002, ptr %k, align 4
  br label %for.cond991, !llvm.loop !23

for.end1003:                                      ; preds = %for.cond991
  %757 = load ptr, ptr %n.addr, align 8
  %758 = load ptr, ptr %z__.addr, align 8
  %arrayidx1004 = getelementptr inbounds float, ptr %758, i64 1
  %call1005 = call i32 @slasrt_(ptr noundef @.str.3, ptr noundef %757, ptr noundef %arrayidx1004, ptr noundef %iinfo)
  store float 0.000000e+00, ptr %e, align 4
  %759 = load ptr, ptr %n.addr, align 8
  %760 = load i32, ptr %759, align 4
  store i32 %760, ptr %k, align 4
  br label %for.cond1006

for.cond1006:                                     ; preds = %for.inc1013, %for.end1003
  %761 = load i32, ptr %k, align 4
  %cmp1007 = icmp sge i32 %761, 1
  br i1 %cmp1007, label %for.body1009, label %for.end1015

for.body1009:                                     ; preds = %for.cond1006
  %762 = load ptr, ptr %z__.addr, align 8
  %763 = load i32, ptr %k, align 4
  %idxprom1010 = sext i32 %763 to i64
  %arrayidx1011 = getelementptr inbounds float, ptr %762, i64 %idxprom1010
  %764 = load float, ptr %arrayidx1011, align 4
  %765 = load float, ptr %e, align 4
  %add1012 = fadd float %765, %764
  store float %add1012, ptr %e, align 4
  br label %for.inc1013

for.inc1013:                                      ; preds = %for.body1009
  %766 = load i32, ptr %k, align 4
  %dec1014 = add nsw i32 %766, -1
  store i32 %dec1014, ptr %k, align 4
  br label %for.cond1006, !llvm.loop !24

for.end1015:                                      ; preds = %for.cond1006
  %767 = load float, ptr %trace, align 4
  %768 = load ptr, ptr %z__.addr, align 8
  %769 = load ptr, ptr %n.addr, align 8
  %770 = load i32, ptr %769, align 4
  %shl1016 = shl i32 %770, 1
  %add1017 = add nsw i32 %shl1016, 1
  %idxprom1018 = sext i32 %add1017 to i64
  %arrayidx1019 = getelementptr inbounds float, ptr %768, i64 %idxprom1018
  store float %767, ptr %arrayidx1019, align 4
  %771 = load float, ptr %e, align 4
  %772 = load ptr, ptr %z__.addr, align 8
  %773 = load ptr, ptr %n.addr, align 8
  %774 = load i32, ptr %773, align 4
  %shl1020 = shl i32 %774, 1
  %add1021 = add nsw i32 %shl1020, 2
  %idxprom1022 = sext i32 %add1021 to i64
  %arrayidx1023 = getelementptr inbounds float, ptr %772, i64 %idxprom1022
  store float %771, ptr %arrayidx1023, align 4
  %775 = load i32, ptr %iter, align 4
  %conv1024 = sitofp i32 %775 to float
  %776 = load ptr, ptr %z__.addr, align 8
  %777 = load ptr, ptr %n.addr, align 8
  %778 = load i32, ptr %777, align 4
  %shl1025 = shl i32 %778, 1
  %add1026 = add nsw i32 %shl1025, 3
  %idxprom1027 = sext i32 %add1026 to i64
  %arrayidx1028 = getelementptr inbounds float, ptr %776, i64 %idxprom1027
  store float %conv1024, ptr %arrayidx1028, align 4
  %779 = load ptr, ptr %n.addr, align 8
  %780 = load i32, ptr %779, align 4
  store i32 %780, ptr %i__1, align 4
  %781 = load i32, ptr %ndiv, align 4
  %conv1029 = sitofp i32 %781 to float
  %782 = load i32, ptr %i__1, align 4
  %783 = load i32, ptr %i__1, align 4
  %mul1030 = mul nsw i32 %782, %783
  %conv1031 = sitofp i32 %mul1030 to float
  %div1032 = fdiv float %conv1029, %conv1031
  %784 = load ptr, ptr %z__.addr, align 8
  %785 = load ptr, ptr %n.addr, align 8
  %786 = load i32, ptr %785, align 4
  %shl1033 = shl i32 %786, 1
  %add1034 = add nsw i32 %shl1033, 4
  %idxprom1035 = sext i32 %add1034 to i64
  %arrayidx1036 = getelementptr inbounds float, ptr %784, i64 %idxprom1035
  store float %div1032, ptr %arrayidx1036, align 4
  %787 = load i32, ptr %nfail, align 4
  %conv1037 = sitofp i32 %787 to float
  %mul1038 = fmul float %conv1037, 1.000000e+02
  %788 = load i32, ptr %iter, align 4
  %conv1039 = sitofp i32 %788 to float
  %div1040 = fdiv float %mul1038, %conv1039
  %789 = load ptr, ptr %z__.addr, align 8
  %790 = load ptr, ptr %n.addr, align 8
  %791 = load i32, ptr %790, align 4
  %shl1041 = shl i32 %791, 1
  %add1042 = add nsw i32 %shl1041, 5
  %idxprom1043 = sext i32 %add1042 to i64
  %arrayidx1044 = getelementptr inbounds float, ptr %789, i64 %idxprom1043
  store float %div1040, ptr %arrayidx1044, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end1015, %for.end990, %for.end987, %if.then546, %if.then221, %for.end210, %if.then169, %if.then121, %if.then111, %if.end90, %if.then19, %if.end, %if.then5, %if.then
  %792 = load i32, ptr %retval, align 4
  ret i32 %792
}

declare float @slamch_(ptr noundef) #1

declare i32 @xerbla_(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @slasrt_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @slasq3_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
