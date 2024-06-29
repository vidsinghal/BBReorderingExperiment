; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vabs_ukernel__sse_x4(i64 %n, ptr %x, i64 %sub, ptr %0) {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %n.addr.01 = phi i64 [ %n, %entry ], [ %sub, %for.body ]
  %cmp.not = icmp eq i64 %n.addr.01, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = load <4 x float>, ptr %x, align 16
  %call2 = fneg <4 x float> %call1
  store <4 x float> %call2, ptr %0, align 16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define <4 x float> @_mm_load_ps() {
entry:
  ret <4 x float> zeroinitializer
}

define <4 x float> @_mm_loadu_ps() {
entry:
  ret <4 x float> zeroinitializer
}

define <4 x float> @_mm_and_ps() {
entry:
  ret <4 x float> zeroinitializer
}

define void @_mm_storeu_ps() {
entry:
  ret void
}
