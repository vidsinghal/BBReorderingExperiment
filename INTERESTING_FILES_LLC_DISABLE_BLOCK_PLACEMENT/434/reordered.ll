; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//434/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FLA_Obj_view = type { i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: noreturn
define noundef i32 @FLA_Axpy_internal(ptr byval(%struct.FLA_Obj_view) %A, i1 %cmp) local_unnamed_addr #0 {
entry:
  %call1.peel = tail call i32 @FLA_Check_error_level()
  br i1 %cmp, label %if.then.peel, label %if.end.peel

if.end.peel:                                      ; preds = %if.then.peel, %entry
  %call114.peel = load volatile ptr, ptr null, align 4294967296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %A, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  br label %if.end

if.then.peel:                                     ; preds = %entry
  %call13.peel = load volatile i32, ptr %A, align 4
  br label %if.end.peel

if.end:                                           ; preds = %if.end.peel, %if.end
  %call1 = tail call i32 @FLA_Check_error_level()
  %call114 = load volatile ptr, ptr null, align 4294967296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %A, ptr noundef nonnull dereferenceable(56) null, i64 56, i1 false)
  br label %if.end, !llvm.loop !0
}

declare i32 @FLA_Check_error_level() local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noreturn }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
