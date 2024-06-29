; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//276/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @dh_newctx(i1 %tobool.not, i1 %cmp) local_unnamed_addr {
entry:
  %call2 = tail call i32 @ossl_prov_is_running()
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call14 = load volatile ptr, ptr null, align 4294967296
  %spec.select = select i1 %cmp, ptr null, ptr @CRYPTO_zalloc
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi ptr [ null, %entry ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

declare i32 @ossl_prov_is_running() local_unnamed_addr

declare ptr @CRYPTO_zalloc()
