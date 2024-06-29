; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//464/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define range(i32 0, 2) i32 @_import_array(ptr nocapture readonly %_npy_f2py_ARRAY_API, i1 %cmp13.not, i1 %cmp21, i1 %cmp29) local_unnamed_addr {
entry:
  %0 = load ptr, ptr %_npy_f2py_ARRAY_API, align 8
  %call121 = tail call i32 %0()
  br i1 %cmp13.not, label %if.end18, label %if.then14

if.then30:                                        ; preds = %if.end26
  %call31 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret

if.end26:                                         ; preds = %if.end18
  %call285 = load volatile i32, ptr null, align 4294967296
  br i1 %cmp29, label %if.then30, label %common.ret

if.then14:                                        ; preds = %entry
  %call16 = load volatile i32, ptr null, align 4294967296
  br label %common.ret

if.end18:                                         ; preds = %entry
  br i1 %cmp21, label %common.ret, label %if.end26

common.ret:                                       ; preds = %if.then30, %if.end26, %if.end18, %if.then14
  %common.ret.op = phi i32 [ 0, %if.end26 ], [ 0, %if.end18 ], [ 1, %if.then30 ], [ 1, %if.then14 ]
  ret i32 %common.ret.op
}
