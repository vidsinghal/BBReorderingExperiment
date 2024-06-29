; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define double @jacobian_dxdh_no_contact(double %call23) {
entry:
  %call25 = call double @sqrt(double %call23)
  %call303 = call double @pow()
  %call455 = load volatile double, ptr null, align 8
  %call567 = load volatile double, ptr null, align 8
  %call58 = call double @sqrt(double %call23)
  ret double 0.000000e+00
}

declare double @sqrt(double)

declare double @pow()
