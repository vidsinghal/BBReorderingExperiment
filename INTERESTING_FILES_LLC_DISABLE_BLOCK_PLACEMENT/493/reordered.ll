; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//493/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DoubleComplex = type { [2 x double] }

define noundef double @umfzl_uhsolve(ptr nocapture %Numeric, ptr nocapture readonly %X, i1 %cmp8) local_unnamed_addr {
entry:
  br i1 %cmp8, label %for.body, label %common.ret

for.body:                                         ; preds = %entry
  %0 = load ptr, ptr %Numeric, align 8
  %call = tail call i32 %0(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, ptr null, ptr null)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull dereferenceable(16) null, ptr noundef nonnull align 1 dereferenceable(16) %Numeric, i64 16, i1 false)
  %1 = load ptr, ptr %Numeric, align 8
  %2 = load ptr, ptr %X, align 8
  %3 = load double, ptr %2, align 8
  %4 = load i64, ptr %1, align 8
  %arrayidx535 = getelementptr %struct.DoubleComplex, ptr %X, i64 %4
  %5 = load double, ptr %arrayidx535, align 8
  %sub56 = fsub double %5, %3
  store double %sub56, ptr %Numeric, align 8
  br label %common.ret

common.ret:                                       ; preds = %for.body, %entry
  ret double 0.000000e+00
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
