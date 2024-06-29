; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//163/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctl_arenas = external local_unnamed_addr global ptr

define noundef i32 @je_ctl_byname() local_unnamed_addr {
entry:
  %call.i.i = tail call i32 @arenas_i2a_impl()
  %0 = load ptr, ptr inttoptr (i64 24 to ptr), align 8
  %cmp.i.i = icmp eq ptr %0, null
  br i1 %cmp.i.i, label %if.then.i.i, label %ctl_init.exit

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call ptr @tsd_tsdn()
  store ptr null, ptr inttoptr (i64 80 to ptr), align 16
  %1 = load ptr, ptr @ctl_arenas, align 8
  store ptr null, ptr %1, align 8
  br label %ctl_init.exit

ctl_init.exit:                                    ; preds = %entry, %if.then.i.i
  ret i32 0
}

define noundef i1 @ctl_init() local_unnamed_addr {
entry:
  %call.i = tail call i32 @arenas_i2a_impl()
  %0 = load ptr, ptr inttoptr (i64 24 to ptr), align 8
  %cmp.i = icmp eq ptr %0, null
  br i1 %cmp.i, label %if.then.i, label %arenas_i_impl.exit

if.then.i:                                        ; preds = %entry
  %call3.i = tail call ptr @tsd_tsdn()
  store ptr null, ptr inttoptr (i64 80 to ptr), align 16
  %1 = load ptr, ptr @ctl_arenas, align 8
  store ptr null, ptr %1, align 8
  br label %arenas_i_impl.exit

arenas_i_impl.exit:                               ; preds = %entry, %if.then.i
  ret i1 false
}

declare ptr @tsd_tsdn() local_unnamed_addr

define noalias noundef ptr @arenas_i_impl() local_unnamed_addr {
entry:
  %call = tail call i32 @arenas_i2a_impl()
  %0 = load ptr, ptr inttoptr (i64 24 to ptr), align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %cleanup18

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @tsd_tsdn()
  store ptr null, ptr inttoptr (i64 80 to ptr), align 16
  %1 = load ptr, ptr @ctl_arenas, align 8
  store ptr null, ptr %1, align 8
  br label %cleanup18

cleanup18:                                        ; preds = %if.then, %entry
  ret ptr null
}

declare i32 @arenas_i2a_impl() local_unnamed_addr
