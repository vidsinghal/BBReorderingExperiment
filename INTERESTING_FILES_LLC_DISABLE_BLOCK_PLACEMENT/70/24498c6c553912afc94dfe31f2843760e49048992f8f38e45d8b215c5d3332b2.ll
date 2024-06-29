; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vlrelu_ukernel__scalar_x4(i64 %n, ptr %x, ptr %y) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.addr.0 = phi i64 [ %n, %entry ], [ %sub, %for.body ]
  %cmp = icmp ugt i64 %n.addr.0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store float 0.000000e+00, ptr %y, align 4
  store float 0.000000e+00, ptr %x, align 4
  %sub = add i64 %n.addr.0, -16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { "target-cpu"="x86-64" }
