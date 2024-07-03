; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//945/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @arkLsBandDQJac(ptr nocapture writeonly %y, ptr nocapture readonly %fi, i32 %call, i1 %cmp89.not, i1 %cmp95) local_unnamed_addr {
entry:
  %cmp89.not.fr = freeze i1 %cmp89.not
  %cmp361 = icmp sgt i32 %call, 0
  br i1 %cmp361, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp89.not.fr, label %for.cond.us.us, label %for.cond.us

if.then91:                                        ; preds = %entry.split, %for.cond.us
  ret i32 0

for.cond.us:                                      ; preds = %entry.split.us
  store double 0.000000e+00, ptr %y, align 8
  %call873.us = tail call i32 %fi(double 0.000000e+00, ptr null, ptr null, ptr null)
  br label %if.then91

for.cond.us.us:                                   ; preds = %entry.split.us, %for.cond.us.us
  store double 0.000000e+00, ptr %y, align 8
  %call873.us.us = tail call i32 %fi(double 0.000000e+00, ptr null, ptr null, ptr null)
  tail call void @llvm.assume(i1 %cmp95)
  br label %for.cond.us.us

if.end92.us4:                                     ; preds = %if.end92.us4, %if.end92.lr.ph
  %call873.us5 = tail call i32 %fi(double 0.000000e+00, ptr null, ptr null, ptr null)
  br label %if.end92.us4

entry.split:                                      ; preds = %entry
  %call8733 = tail call i32 %fi(double 0.000000e+00, ptr null, ptr null, ptr null)
  br i1 %cmp89.not.fr, label %if.end92.lr.ph, label %if.then91

if.end92.lr.ph:                                   ; preds = %entry.split
  tail call void @llvm.assume(i1 %cmp95)
  br label %if.end92.us4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
