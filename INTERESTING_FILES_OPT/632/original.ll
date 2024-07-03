; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//632/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nounwind
define void @libxsmm_generator_packed_trsm_avx_avx512_kernel(i32 %conv35, i32 %0, i1 %cmp235.not) local_unnamed_addr #0 {
entry:
  %cmp235.not.fr = freeze i1 %cmp235.not
  %cond.i = icmp eq i32 %conv35, 0
  %.fr = freeze i32 %0
  %cmp276.not = icmp eq i32 %.fr, 0
  br i1 %cond.i, label %entry.split.us, label %entry.split

entry.split.us:                                   ; preds = %entry
  br i1 %cmp235.not.fr, label %entry.split.us.split.us, label %entry.split.us.split

entry.split.us.split.us:                          ; preds = %entry.split.us
  br i1 %cmp276.not, label %for.cond224.us.us.us, label %for.cond224.us.us

for.cond224.us.us.us:                             ; preds = %entry.split.us.split.us, %for.cond224.us.us.us
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %for.cond224.us.us.us

for.cond224.us.us:                                ; preds = %entry.split.us.split.us
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %if.then278

entry.split.us.split:                             ; preds = %entry.split.us
  br i1 %cmp276.not, label %for.cond224.us.us8, label %for.cond224.us

for.cond224.us.us8:                               ; preds = %entry.split.us.split, %for.cond224.us.us8
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %for.cond224.us.us8

for.cond224.us:                                   ; preds = %entry.split.us.split
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %if.then278

entry.split:                                      ; preds = %entry
  br i1 %cmp235.not.fr, label %entry.split.split.us, label %entry.split.split

entry.split.split.us:                             ; preds = %entry.split
  br i1 %cmp276.not, label %for.cond224.us4.us, label %for.cond224.us4

for.cond224.us4.us:                               ; preds = %entry.split.split.us, %for.cond224.us4.us
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond224.us4.us

for.cond224.us4:                                  ; preds = %entry.split.split.us
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store volatile i32 0, ptr null, align 4294967296
  br label %if.then278

entry.split.split:                                ; preds = %entry.split
  br i1 %cmp276.not, label %for.cond224.us6, label %for.cond224

for.cond224.us6:                                  ; preds = %entry.split.split, %for.cond224.us6
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store volatile i32 0, ptr null, align 4294967296
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store volatile i32 0, ptr null, align 4294967296
  br label %for.cond224.us6

for.cond224:                                      ; preds = %entry.split.split
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store volatile i32 0, ptr null, align 4294967296
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  store volatile i32 0, ptr null, align 4294967296
  br label %if.then278

if.then278:                                       ; preds = %for.cond224, %for.cond224.us4, %for.cond224.us, %for.cond224.us.us
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nounwind
define void @compact_load_matrix2_(i32 %datasize) local_unnamed_addr #0 {
entry:
  tail call void @llvm.lifetime.start.p0(i64 0, ptr null)
  %cond = icmp eq i32 %datasize, 0
  br i1 %cond, label %common.ret, label %if.then

common.ret:                                       ; preds = %if.then, %entry
  ret void

if.then:                                          ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { nofree norecurse nounwind }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
