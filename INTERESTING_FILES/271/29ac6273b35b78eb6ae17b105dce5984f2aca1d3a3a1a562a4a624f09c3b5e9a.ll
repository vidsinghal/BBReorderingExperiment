; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @set_trigo(ptr %lattice, double %0) {
entry:
  %call = call double @sqrt(double %0)
  %1 = load double, ptr %lattice, align 8
  %call4 = call double @sqrt(double %1)
  ret void
}

declare double @sqrt(double)
