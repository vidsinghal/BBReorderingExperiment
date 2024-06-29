; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//1/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i64 @ngx_http_lua_body_filter_file(i1 %cmp.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp.not, label %if.end, label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret i64 0

if.end:                                           ; preds = %entry
  %call13 = load volatile ptr, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
