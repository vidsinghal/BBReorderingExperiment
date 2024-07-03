; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @IDACalcIC(ptr %ida_mem, i32 %icopt, i1 %cmp117.not) {
entry:
  br label %for.cond100

for.cond100:                                      ; preds = %for.end156, %entry
  br label %for.cond103

for.cond103:                                      ; preds = %if.end109, %for.cond100
  %call1061 = load volatile i32, ptr null, align 4
  %cmp107 = icmp eq i32 %call1061, 0
  br i1 %cmp107, label %for.end156, label %if.end109

if.end109:                                        ; preds = %for.cond103
  br i1 %cmp117.not, label %for.cond103, label %for.cond127

for.cond127:                                      ; preds = %for.cond127, %if.end109
  br label %for.cond127

for.end156:                                       ; preds = %for.cond103
  %ida_efun = getelementptr i8, ptr %ida_mem, i64 72
  %0 = load ptr, ptr %ida_efun, align 8
  %call162 = call i32 %0(ptr null, ptr null, ptr null)
  br label %for.cond100
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
