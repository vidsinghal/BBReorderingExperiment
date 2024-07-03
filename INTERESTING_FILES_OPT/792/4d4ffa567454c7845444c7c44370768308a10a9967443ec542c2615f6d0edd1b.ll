; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare double @drand48()

define void @wgsim_mut_diref(ptr %ks, i32 %is_hap, i1 %cmp74, ptr %0) {
entry:
  br label %if.then76

if.then76:                                        ; preds = %if.then155, %if.then115, %entry
  %1 = phi ptr [ %ks, %entry ], [ %ks, %if.then155 ], [ null, %if.then115 ]
  br i1 %cmp74, label %if.then115, label %do.body

if.then115:                                       ; preds = %if.then76
  %call118 = call double @drand48()
  store i16 0, ptr null, align 2
  br label %if.then76

do.body:                                          ; preds = %do.body, %if.then76
  %call142 = call double @drand48()
  %call147 = load volatile double, ptr null, align 8
  %cmp148 = fcmp olt double %call147, 0.000000e+00
  br i1 %cmp148, label %do.body, label %do.end

do.end:                                           ; preds = %do.body
  br i1 %cmp74, label %if.then155, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %do.end
  %call152 = load volatile double, ptr null, align 8
  br label %if.then155

if.then155:                                       ; preds = %lor.lhs.false151, %do.end
  %s162 = getelementptr i8, ptr %0, i64 8
  store i16 0, ptr %s162, align 2
  br label %if.then76
}
