; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//493/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef double @umfzl_uhsolve(ptr nocapture noundef readonly %Numeric, i64 %0, i1 %cmp139, ptr nocapture readnone %1, ptr %xk) local_unnamed_addr #0 {
entry:
  %arrayidx179 = getelementptr i8, ptr %xk, i64 8
  br i1 %cmp139, label %entry.split.us, label %for.cond78

entry.split.us:                                   ; preds = %entry
  %cmp1531 = icmp sgt i64 %0, 0
  br i1 %cmp1531, label %for.cond152.preheader.us.us, label %for.cond152.preheader.us4

for.cond78:                                       ; preds = %entry, %for.cond78
  br label %for.cond78

for.cond152.preheader.us.us:                      ; preds = %entry.split.us, %for.cond152.preheader.us.us
  %2 = load ptr, ptr %Numeric, align 8
  %call180.us.us = tail call i32 %2(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, ptr null, ptr %arrayidx179)
  br label %for.cond152.preheader.us.us

for.cond152.preheader.us4:                        ; preds = %entry.split.us, %for.cond152.preheader.us4
  %3 = load ptr, ptr %Numeric, align 8
  %call180.us5 = tail call i32 %3(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, ptr null, ptr %arrayidx179)
  br label %for.cond152.preheader.us4
}

attributes #0 = { noreturn }
