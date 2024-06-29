; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @PyInit_vectorized() {
entry:
  %call = load volatile ptr, ptr null, align 8
  ret ptr null
}

define ptr @__pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps(i64 %0) {
entry:
  %call = load volatile i64, ptr null, align 8
  switch i64 %0, label %common.ret1 [
    i64 0, label %sw.bb12
    i64 1, label %sw.bb24
  ]

sw.bb12:                                          ; preds = %entry
  %call13 = load volatile ptr, ptr null, align 8
  br label %sw.bb24

common.ret1:                                      ; preds = %sw.bb24, %entry
  ret ptr null

sw.bb24:                                          ; preds = %sw.bb12, %entry
  %call26 = load volatile ptr, ptr null, align 8
  br label %common.ret1
}
