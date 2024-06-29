; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//417/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H5C_dump_cache.func_check = external local_unnamed_addr global i8
@.str.1 = external constant [42 x i8]
@__func__.H5C_dump_cache = external constant [15 x i8]
@H5E_ERR_CLS_g = external local_unnamed_addr global i64

define noundef i32 @H5C_dump_cache() local_unnamed_addr {
entry:
  %0 = load i8, ptr @H5C_dump_cache.func_check, align 1, !range !0, !noundef !1
  %tobool = trunc nuw i8 %0 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 1, ptr @H5C_dump_cache.func_check, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = load volatile ptr, ptr null, align 4294967296
  %1 = load i64, ptr @H5E_ERR_CLS_g, align 8
  %call18 = tail call i32 (ptr, ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr null, ptr nonnull @.str.1, ptr nonnull @__func__.H5C_dump_cache, i32 0, i64 %1, i64 0, ptr null)
  ret i32 0
}

declare i32 @H5E_printf_stack(ptr, ptr, ptr, i32, i64, i64, ptr, ...) local_unnamed_addr

!0 = !{i8 0, i8 2}
!1 = !{}
