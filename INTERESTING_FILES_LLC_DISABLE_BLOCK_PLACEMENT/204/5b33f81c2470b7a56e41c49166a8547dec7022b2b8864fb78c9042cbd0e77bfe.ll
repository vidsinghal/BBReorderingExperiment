; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @vtkexodusII_ex_get_names(i32 %obj_type, i1 %cond) {
entry:
  br i1 %cond, label %if.then17, label %sw.default

if.then17:                                        ; preds = %entry
  %call197 = call ptr @calloc()
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then17
  %i21.0 = phi i32 [ 0, %if.then17 ], [ 1, %for.body ]
  %cmp22 = icmp slt i32 %i21.0, %obj_type
  br i1 %cmp22, label %for.body, label %for.cond.cleanup

common.ret:                                       ; preds = %sw.default, %for.cond.cleanup
  %common.ret.op = phi i32 [ 0, %for.cond.cleanup ], [ 0, %sw.default ]
  ret i32 0

for.cond.cleanup:                                 ; preds = %for.cond
  store volatile i32 0, ptr null, align 4
  br label %common.ret

for.body:                                         ; preds = %for.cond
  %call26 = load volatile i32, ptr null, align 4
  br label %for.cond

sw.default:                                       ; preds = %entry
  %call94 = load volatile i32, ptr null, align 4
  br label %common.ret
}

declare ptr @calloc()
