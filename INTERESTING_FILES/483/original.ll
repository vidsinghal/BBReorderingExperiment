; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//483/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @ngx_stream_lua_ffi_errlog_set_filter_level(i32 %level, ptr nocapture writeonly %errlen, i1 %cmp) local_unnamed_addr #0 {
entry:
  %cmp12 = icmp sgt i32 %level, 0
  %or.cond = and i1 %cmp12, %cmp
  br i1 %or.cond, label %if.then3, label %cleanup

if.then3:                                         ; preds = %entry
  %call4 = load volatile ptr, ptr null, align 4294967296
  store i64 0, ptr %errlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
