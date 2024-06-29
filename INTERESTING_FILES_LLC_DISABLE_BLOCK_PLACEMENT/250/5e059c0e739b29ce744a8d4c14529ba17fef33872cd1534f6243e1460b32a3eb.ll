; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_vrndu_ukernel__avx_x16(i64 %n, ptr %x) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %x.addr.01 = phi ptr [ %x, %entry ], [ inttoptr (i64 64 to ptr), %for.body ]
  %n.addr.0 = phi i64 [ %n, %entry ], [ %sub, %for.body ]
  %cmp = icmp ugt i64 %n.addr.0, 63
  br i1 %cmp, label %for.body, label %for.cond5

for.body:                                         ; preds = %for.cond
  %call = load volatile <8 x float>, ptr null, align 32
  %sub = add i64 %n.addr.0, -64
  br label %for.cond

for.cond5:                                        ; preds = %for.cond
  %call8 = load <8 x float>, ptr %x.addr.01, align 32
  store <8 x float> %call8, ptr %x, align 32
  ret void
}

attributes #0 = { "target-cpu"="x86-64" }
