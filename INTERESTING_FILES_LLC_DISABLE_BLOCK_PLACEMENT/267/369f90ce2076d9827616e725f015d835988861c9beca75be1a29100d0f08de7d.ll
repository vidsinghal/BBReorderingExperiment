; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @hypre_dlasv2(ptr %f, ptr %g, ptr %h__, ptr %ssmin, ptr %ssmax, ptr %snr, ptr %csr, i1 %cmp) {
entry:
  store double 0.000000e+00, ptr %ssmin, align 8
  store double 0.000000e+00, ptr %f, align 8
  store double 0.000000e+00, ptr %csr, align 8
  store double 1.000000e+00, ptr %g, align 8
  %call111 = call double @hypre_d_sign(ptr null, ptr null)
  %call113 = call double @hypre_d_sign(ptr null, ptr null)
  %call119 = call double @hypre_d_sign(ptr null, ptr null)
  %call120 = call double @hypre_d_sign(ptr null, ptr null)
  %call1229 = call double @hypre_d_sign(ptr null, ptr %g)
  store double 0.000000e+00, ptr %ssmax, align 8
  br i1 %cmp, label %if.then127, label %if.end133

if.then127:                                       ; preds = %entry
  %call128 = call double @hypre_d_sign(ptr null, ptr %snr)
  %call129 = call double @hypre_d_sign(ptr %h__, ptr null)
  %call131 = call double @hypre_d_sign(ptr null, ptr null)
  store double 1.000000e+00, ptr %f, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then127, %entry
  %call134 = call double @hypre_d_sign(ptr null, ptr null)
  store double 1.000000e+00, ptr %f, align 8
  %call139 = call double @hypre_d_sign(ptr %ssmin, ptr null)
  ret i64 0
}

declare double @hypre_d_sign(ptr, ptr)
