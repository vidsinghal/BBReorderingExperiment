; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare double @sqrt(double)

declare double @pow()

define double @jacobian_dxdh_contact(double %call28, double %add29) {
entry:
  %call281 = call double @pow()
  %call393 = load volatile double, ptr null, align 8
  %call41 = call double @sqrt(double %add29)
  %call48 = call double @sqrt(double %call28)
  ret double 0.000000e+00
}
