; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @nco_clm_nfo_get(i1 %cmp6, i1 %cmp33) {
entry:
  br i1 %cmp6, label %if.then7, label %if.else9

common.ret:                                       ; preds = %if.else36, %if.then34, %if.then7
  %common.ret.op = phi i32 [ 0, %if.then7 ], [ 0, %if.then34 ], [ 0, %if.else36 ]
  ret i32 0

if.then7:                                         ; preds = %entry
  %call8 = call ptr @strdup()
  br label %common.ret

if.else9:                                         ; preds = %entry
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else9
  %call35 = call ptr @strdup()
  br label %common.ret

if.else36:                                        ; preds = %if.else9
  %call42 = load volatile ptr, ptr null, align 8
  br label %common.ret
}

declare ptr @strdup()
