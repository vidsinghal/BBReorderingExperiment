; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//443/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_addrs_available = internal unnamed_addr global i1 false

declare ptr @strerror(i32) local_unnamed_addr

declare ptr @__errno_location() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i32 @rte_eal_using_phys_addrs() local_unnamed_addr #0 {
entry:
  %.b = load i1, ptr @phys_addrs_available, align 1
  br i1 %.b, label %common.ret, label %if.then

common.ret:                                       ; preds = %if.then, %entry
  ret i32 0

if.then:                                          ; preds = %entry
  %call = load volatile i32, ptr null, align 4294967296
  store i1 true, ptr @phys_addrs_available, align 1
  br label %common.ret
}

define noundef i32 @rte_eal_memseg_init(ptr nocapture writeonly %lim, ptr nocapture readonly %rlim_max) local_unnamed_addr {
entry:
  %call = tail call i32 @getrlimit64(i32 1)
  %0 = load i64, ptr %rlim_max, align 8
  store i64 %0, ptr %lim, align 8
  %call1 = load volatile i32, ptr null, align 4294967296
  %call4 = load volatile ptr, ptr null, align 4294967296
  %1 = load i32, ptr @__errno_location, align 4
  %call5 = tail call ptr @strerror(i32 %1)
  %call6 = load volatile i32, ptr null, align 4294967296
  ret i32 0
}

declare i32 @getrlimit64(i32) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
