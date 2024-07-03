; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//732/reordered.bc'
source_filename = "/local-ssd/libicd-ufsfiwjhnzdgnqc6gwab65tokvidxwgd-build/aidengro/spack-stage-libicd-main-ufsfiwjhnzdgnqc6gwab65tokvidxwgd/spack-src/src/jpeg12-6b/jquant1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define void @quantize_fs_dither(ptr nocapture readonly %cinfo, i32 %0, ptr nocapture writeonly %1) local_unnamed_addr {
entry:
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %2 = load i32, ptr %cinfo, align 8
  %.fr = freeze i32 %0
  %cmp29.not = icmp eq i32 %.fr, 0
  %on_odd_row72 = getelementptr i8, ptr %1, i64 144
  %cmp3.us.us.peel = icmp sgt i32 %2, 0
  br i1 %cmp29.not, label %for.cond.us.preheader, label %entry.split

for.end69.split:                                  ; preds = %entry.split, %for.end69.split
  store i32 0, ptr %on_odd_row72, align 8
  tail call void @jzero_far_12()
  br label %for.end69.split

for.body31:                                       ; preds = %entry.split
  ret void

for.cond2.us.us:                                  ; preds = %for.cond.us, %for.cond2.us.us
  br i1 %cmp3.us.us.not, label %for.end69.split.us.us, label %for.cond2.us.us, !llvm.loop !0

for.cond.us:                                      ; preds = %for.cond.us.preheader, %for.end69.split.us.us
  tail call void @jzero_far_12()
  br i1 %cmp3.us.us.peel, label %for.cond2.us.us, label %for.end69.split.us.us

for.end69.split.us.us:                            ; preds = %for.cond2.us.us, %for.cond.us
  store i32 0, ptr %on_odd_row72, align 8
  br label %for.cond.us

entry.split:                                      ; preds = %entry
  tail call void @jzero_far_12()
  br i1 %cmp3.us.us.peel, label %for.body31, label %for.end69.split

for.cond.us.preheader:                            ; preds = %entry
  %cmp3.us.us.not = icmp eq i32 %2, 1
  br label %for.cond.us
}

declare void @jzero_far_12() local_unnamed_addr

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
