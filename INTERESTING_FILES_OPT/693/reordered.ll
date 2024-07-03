; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//693/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i32 @v3p_netlib_lmder_(ptr nocapture writeonly %fcn, ptr nocapture readnone %m, i1 %cmp406, i1 %cmp215, double %0) local_unnamed_addr #0 {
entry:
  %.fr7 = freeze double %0
  %1 = xor i1 %cmp406, true
  %cmp215.fr = freeze i1 %cmp215
  br i1 %cmp215.fr, label %entry.split.us, label %entry.split

L200.us1:                                         ; preds = %entry.split, %L200.us1
  %call213.us2 = tail call i32 @v3p_netlib_lmpar_()
  %call280.us4 = tail call double @sqrt(double %.fr7)
  tail call void @llvm.assume(i1 %1)
  br label %L200.us1

entry.split:                                      ; preds = %entry
  %2 = fcmp olt double %.fr7, 0.000000e+00
  br i1 %2, label %L200.us1, label %L200, !prof !0

L200:                                             ; preds = %entry.split, %L200
  %call213 = tail call i32 @v3p_netlib_lmpar_()
  tail call void @llvm.assume(i1 %1)
  br label %L200

entry.split.us:                                   ; preds = %entry
  %call213.us6 = tail call i32 @v3p_netlib_lmpar_()
  store double 0.000000e+00, ptr %fcn, align 8
  br label %for.body216

for.body216:                                      ; preds = %for.body216, %entry.split.us
  br label %for.body216
}

declare i32 @v3p_netlib_lmpar_() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { noreturn }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!0 = !{!"branch_weights", i32 1, i32 2000}
