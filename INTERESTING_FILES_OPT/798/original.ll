; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//798/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define noundef i64 @ngx_stream_upstream_get_hash_peer(ptr nocapture %pc, ptr nocapture writeonly %data) local_unnamed_addr #0 {
entry:
  %tries93 = getelementptr i8, ptr %data, i64 64
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call21 = tail call ptr (...) @ngx_sprintf()
  store i32 1, ptr %pc, align 4
  %0 = load i64, ptr %pc, align 8
  %tobool.not.peel.i = icmp ne i64 %0, 0
  %spec.select = zext i1 %tobool.not.peel.i to i32
  store i32 %spec.select, ptr %pc, align 4
  store i64 0, ptr %tries93, align 8
  br label %for.cond
}

declare ptr @ngx_sprintf(...) local_unnamed_addr

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define void @ngx_crc32_update(ptr nocapture writeonly %crc, ptr nocapture readnone %p, i64 %len) local_unnamed_addr #1 {
entry:
  %tobool.not.peel = icmp ne i64 %len, 0
  %.lcssa = zext i1 %tobool.not.peel to i32
  store i32 %.lcssa, ptr %crc, align 4
  ret void
}

attributes #0 = { noreturn }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) }
