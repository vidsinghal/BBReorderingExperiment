; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//258/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define noundef i32 @topology_take_snapshot() local_unnamed_addr #0 {
entry:
  %call8.i = load volatile i64, ptr null, align 4294967296
  %0 = and i64 %call8.i, 1
  %cmp.not.i = icmp eq i64 %0, 0
  br i1 %cmp.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %topology_sysfs_get_system_props.exit

if.end11.i:                                       ; preds = %entry
  store i8 0, ptr inttoptr (i64 1 to ptr), align 1
  br label %topology_sysfs_get_system_props.exit

topology_sysfs_get_system_props.exit:             ; preds = %if.then10.i, %if.end11.i
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define noundef i32 @topology_sysfs_get_system_props() local_unnamed_addr #0 {
entry:
  %call8 = load volatile i64, ptr null, align 4294967296
  %0 = and i64 %call8, 1
  %cmp.not = icmp eq i64 %0, 0
  br i1 %cmp.not, label %if.end11, label %if.then10

common.ret:                                       ; preds = %if.end11, %if.then10
  ret i32 0

if.then10:                                        ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret

if.end11:                                         ; preds = %entry
  store i8 0, ptr inttoptr (i64 1 to ptr), align 1
  br label %common.ret
}

attributes #0 = { nofree norecurse nounwind }
