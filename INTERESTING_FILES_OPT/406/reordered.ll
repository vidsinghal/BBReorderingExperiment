; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//406/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nounwind
define noundef i32 @hypre_BoomerAMG_GMExpandInterp(ptr nocapture writeonly %P, i32 %num_smooth_vecs, ptr nocapture readnone %nf, i1 %cmp605, i1 %0) local_unnamed_addr #0 {
entry:
  %.fr = freeze i1 %0
  %num_smooth_vecs.fr = freeze i32 %num_smooth_vecs
  %cmp5681 = icmp slt i32 %num_smooth_vecs.fr, 0
  br i1 %cmp5681, label %entry.split.us, label %entry.split

for.cond227.us3:                                  ; preds = %entry.split
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond604.lr.ph.split

for.cond227.us.us:                                ; preds = %entry.split.us
  store volatile i32 0, ptr null, align 4294967296
  store i32 0, ptr %P, align 4
  br label %for.cond604.lr.ph.split

entry.split:                                      ; preds = %entry
  br i1 %.fr, label %for.cond227.us3, label %for.cond227

for.cond604.lr.ph.split:                          ; preds = %for.cond227.us.us, %for.cond227.us3
  tail call void @llvm.assume(i1 %cmp605)
  br label %for.cond604

for.cond227:                                      ; preds = %entry.split, %for.cond227
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond227

entry.split.us:                                   ; preds = %entry
  br i1 %.fr, label %for.cond227.us.us, label %for.cond227.us

for.cond227.us:                                   ; preds = %entry.split.us, %for.cond227.us
  store volatile i32 0, ptr null, align 4294967296
  store i32 0, ptr %P, align 4
  br label %for.cond227.us

for.cond604:                                      ; preds = %for.cond604, %for.cond604.lr.ph.split
  br label %for.cond604
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nofree norecurse noreturn nounwind }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
