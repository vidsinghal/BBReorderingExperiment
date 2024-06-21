; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @opj_pi_next_pcrl(ptr %resno121.phi.trans.insert) {
entry:
  br label %for.cond108

for.cond108:                                      ; preds = %for.cond120, %entry
  %.pre = load i32, ptr %resno121.phi.trans.insert, align 8
  br label %for.cond120

for.cond120:                                      ; preds = %for.cond120, %for.cond108
  %call124 = call i32 @opj_uint_min()
  %cmp125 = icmp ult i32 %.pre, %call124
  br i1 %cmp125, label %for.cond120, label %for.cond108
}

declare i32 @opj_uint_min()
