; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geodesic = type { double, double, double, double, double, double, double, double, double }

@GEODESIC = external global %struct.geodesic
@n_S = external global i32

define void @geod_set(i1 %cmp, ptr %call, ptr %es) {
entry:
  br i1 %cmp, label %if.then79.critedge, label %if.then15

if.then15:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4
  %call17 = call i64 @pj_param()
  store double 0.000000e+00, ptr %call, align 8
  store double 0.000000e+00, ptr %es, align 8
  %call39 = call double @sqrt()
  store double 0.000000e+00, ptr %call, align 8
  %call46 = load volatile i64, ptr null, align 8
  %call49 = load volatile i64, ptr null, align 8
  %call526 = load volatile i64, ptr null, align 8
  %0 = load double, ptr @GEODESIC, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, ptr @n_S, align 4
  br label %common.ret

if.then79.critedge:                               ; preds = %entry
  %call17.c = call i64 @pj_param()
  store double 0.000000e+00, ptr %call, align 8
  %call39.c = load volatile double, ptr null, align 8
  %call46.c = load volatile i64, ptr null, align 8
  %call526.c = load volatile i64, ptr null, align 8
  br label %common.ret

common.ret:                                       ; preds = %if.then79.critedge, %if.then15
  ret void
}

declare i64 @pj_param()

declare double @sqrt()
