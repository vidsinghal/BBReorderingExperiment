; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//827/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define noundef i64 @klu_zl_condest(i64 %j.2, i1 %cmp184) local_unnamed_addr {
entry:
  %cmp184.fr = freeze i1 %cmp184
  br i1 %cmp184.fr, label %for.body186.lr.ph.split.us, label %entry.split

entry.split:                                      ; preds = %entry
  %j.2.fr = freeze i64 %j.2
  %cmp252 = icmp sgt i64 %j.2.fr, 0
  br i1 %cmp252, label %for.cond165.us3.preheader, label %for.cond158

for.cond165.us3.preheader:                        ; preds = %entry.split
  %call182.us7 = tail call i64 @klu_zl_solve()
  ret i64 0

for.cond158:                                      ; preds = %entry.split, %for.cond158
  %call182 = tail call i64 @klu_zl_solve()
  br label %for.cond158

for.body186.lr.ph.split.us:                       ; preds = %entry
  %call182.us = tail call i64 @klu_zl_solve()
  br label %for.body186.us

for.body186.us:                                   ; preds = %for.body186.us, %for.body186.lr.ph.split.us
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %for.body186.us
}

declare i64 @klu_zl_solve() local_unnamed_addr

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
