; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @t_add(i64 %a, i64 %b, ptr %ok, i1 %tobool.not, i64 %add) {
entry:
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  %.pre = or i64 %a, %b
  br label %land.end

land.rhs:                                         ; preds = %entry
  %add1 = add i64 %a, 1
  %cond = call i64 @llvm.umax.i64(i64 %b, i64 1)
  %cmp1 = icmp ule i64 %cond, %add
  %0 = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %add4.pre-phi = phi i64 [ %.pre, %entry.land.end_crit_edge ], [ %add1, %land.rhs ]
  %land.ext = phi i32 [ 0, %entry.land.end_crit_edge ], [ %0, %land.rhs ]
  store i32 %land.ext, ptr %ok, align 4
  ret i64 %add4.pre-phi
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }