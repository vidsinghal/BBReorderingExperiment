; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f16_vaddc_minmax_ukernel__f16c_x8(i64 %n, ptr %b_ptr) {
entry:
  %call18 = load volatile <8 x float>, ptr null, align 32
  %and33 = and i64 %n, 1
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.end39, label %if.then35

if.then35:                                        ; preds = %entry
  store i16 0, ptr %b_ptr, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %entry
  ret void
}
