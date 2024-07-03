; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//374/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n1 = external local_unnamed_addr global i32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: noreturn
define void @genextend(i32 %n2, i1 %tobool164.not) local_unnamed_addr #1 {
entry:
  %add251 = or i32 %n2, 1
  br i1 %tobool164.not, label %for.cond98.us, label %for.cond98

for.cond98.us:                                    ; preds = %entry, %for.cond98.us
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %call252.us = tail call i32 @isconnected(i32 %add251)
  br label %for.cond98.us

for.cond98:                                       ; preds = %entry, %for.cond98
  br label %for.cond98
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define noundef i32 @accept2(ptr nocapture writeonly %g, ptr nocapture readonly %arrayidx) local_unnamed_addr #2 {
entry:
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %0 = load i32, ptr @n1, align 4
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %.pre = load i32, ptr %arrayidx, align 4
  store i32 %.pre, ptr %g, align 4
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry
  ret i32 0
}

declare i32 @isconnected(i32) local_unnamed_addr

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { noreturn }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) }
