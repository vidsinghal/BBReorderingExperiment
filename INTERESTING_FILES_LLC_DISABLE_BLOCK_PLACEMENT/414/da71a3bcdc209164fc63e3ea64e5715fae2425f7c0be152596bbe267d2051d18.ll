; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @ap_set_keepalive(ptr %r, i32 %0, i1 %tobool.not) {
entry:
  br i1 %tobool.not, label %land.lhs.true4, label %if.end125

land.lhs.true4:                                   ; preds = %entry
  switch i32 %0, label %lor.lhs.false10 [
    i32 1, label %if.end125
    i32 0, label %if.end125
  ]

lor.lhs.false10:                                  ; preds = %land.lhs.true4
  %call12 = load volatile ptr, ptr null, align 8
  br label %if.end125

if.end125:                                        ; preds = %lor.lhs.false10, %land.lhs.true4, %land.lhs.true4, %entry
  store i32 0, ptr %r, align 8
  ret i32 0
}
