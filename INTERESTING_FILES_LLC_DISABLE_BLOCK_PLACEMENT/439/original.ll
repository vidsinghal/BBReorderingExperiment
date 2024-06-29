; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//439/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_opt = type { ptr, i64, i32 }
%struct.fuse_args = type { i32, ptr, i32 }

@__const.main.fuse_opts = external local_unnamed_addr constant [3 x %struct.fuse_opt]

; Function Attrs: nofree norecurse nounwind
define noundef i32 @main(ptr nocapture writeonly %argv, ptr nocapture writeonly %0, ptr nocapture writeonly %opts) local_unnamed_addr #0 {
entry:
  %args11111 = alloca [0 x [0 x [0 x [0 x %struct.fuse_args]]]], align 16
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %args11111)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %args11111, ptr noundef nonnull align 8 dereferenceable(72) @__const.main.fuse_opts, i64 72, i1 false)
  store ptr null, ptr %0, align 8
  store i32 0, ptr %0, align 8
  store ptr null, ptr %argv, align 8
  store i32 0, ptr %argv, align 8
  %offset = getelementptr i8, ptr %opts, i64 24
  store i64 0, ptr %offset, align 8
  store i32 0, ptr %opts, align 8
  %call6 = load volatile i32, ptr %args11111, align 16
  store volatile i32 0, ptr null, align 4294967296
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noalias noundef ptr @sqfs_ll_open(i1 %cmp) local_unnamed_addr #3 {
entry:
  br i1 %cmp, label %if.then4, label %common.ret

common.ret:                                       ; preds = %if.then4, %entry
  ret ptr null

if.then4:                                         ; preds = %entry
  %call5 = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

attributes #0 = { nofree norecurse nounwind "target-cpu"="x86-64" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nounwind willreturn }
