; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//76/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @ngx_http_scgi_create_loc_conf(i1 %cmp) local_unnamed_addr #0 {
entry:
  %call1 = load volatile ptr, ptr null, align 4294967296
  br i1 %cmp, label %common.ret, label %if.end

if.end:                                           ; preds = %entry
  %buffering = getelementptr i8, ptr %call1, i64 160
  %ignore_client_abort = getelementptr i8, ptr %call1, i64 192
  store i64 -1, ptr %ignore_client_abort, align 8
  %local = getelementptr i8, ptr %call1, i64 264
  %connect_timeout = getelementptr i8, ptr %call1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %connect_timeout, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %buffering, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %local, i8 -1, i64 16, i1 false)
  br label %common.ret

common.ret:                                       ; preds = %if.end, %entry
  ret ptr null
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
