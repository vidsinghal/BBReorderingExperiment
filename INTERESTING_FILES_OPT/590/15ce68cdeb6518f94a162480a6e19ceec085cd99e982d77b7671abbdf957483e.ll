; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare ptr @ncindexith(ptr)

declare i32 @attach_dimscales()

define i32 @nc4_rec_match_dimscales(ptr %grp, i1 %cmp64, i1 %cmp85.not, ptr %0, i32 %conv58) {
entry:
  br label %for.cond25

for.cond25:                                       ; preds = %cleanup324, %entry
  %1 = phi i64 [ 0, %cleanup324 ], [ 0, %entry ]
  br label %for.cond59

for.cond59:                                       ; preds = %for.body62, %for.cond25
  %d.1 = phi i32 [ 0, %for.cond25 ], [ %inc75, %for.body62 ]
  %cmp60 = icmp slt i32 %d.1, %conv58
  br i1 %cmp60, label %for.body62, label %for.end76

for.body62:                                       ; preds = %for.cond59
  call void @llvm.assume(i1 %cmp64)
  %inc75 = add i32 %d.1, 1
  br label %for.cond59

for.end76:                                        ; preds = %for.cond59
  br i1 %cmp64, label %cleanup324, label %for.cond92

for.cond92:                                       ; preds = %for.end76
  %dim115 = getelementptr i8, ptr %grp, i64 64
  %call117 = call ptr @ncindexith(ptr %dim115)
  br label %cleanup324

cleanup324:                                       ; preds = %for.cond92, %for.end76
  br label %for.cond25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
