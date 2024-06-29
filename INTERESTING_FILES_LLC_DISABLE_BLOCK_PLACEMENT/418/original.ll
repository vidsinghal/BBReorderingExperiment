; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//418/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geodesic = type { double, double, double, double, double, double, double, double, double }

@GEODESIC = external local_unnamed_addr global %struct.geodesic
@n_S = external local_unnamed_addr global i32

define void @geod_set(i1 %cmp, ptr nocapture writeonly %call, ptr nocapture writeonly %es) local_unnamed_addr {
entry:
  br i1 %cmp, label %if.then79.critedge, label %if.then15

if.then15:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  %call17 = tail call i64 @pj_param()
  store double 0.000000e+00, ptr %call, align 8
  store double 0.000000e+00, ptr %es, align 8
  %call39 = tail call double @sqrt()
  store double 0.000000e+00, ptr %call, align 8
  %call46 = load volatile i64, ptr null, align 4294967296
  %call49 = load volatile i64, ptr null, align 4294967296
  %call526 = load volatile i64, ptr null, align 4294967296
  %0 = load double, ptr @GEODESIC, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, ptr @n_S, align 4
  br label %common.ret

if.then79.critedge:                               ; preds = %entry
  %call17.c = tail call i64 @pj_param()
  store double 0.000000e+00, ptr %call, align 8
  %call39.c = load volatile double, ptr null, align 4294967296
  %call46.c = load volatile i64, ptr null, align 4294967296
  %call526.c = load volatile i64, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.then79.critedge, %if.then15
  ret void
}

declare i64 @pj_param() local_unnamed_addr

declare double @sqrt() local_unnamed_addr
