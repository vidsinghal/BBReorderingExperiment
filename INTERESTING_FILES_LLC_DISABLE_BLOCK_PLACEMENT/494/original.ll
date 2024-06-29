; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//494/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noalias noundef ptr @vtklibharu_HPDF_Image_LoadPngImage(i1 %tobool7.not) local_unnamed_addr {
entry:
  %width111.i = alloca [0 x [0 x [0 x i32]]], align 4
  %call61 = tail call ptr @vtklibharu_HPDF_DictStream_New()
  br i1 %tobool7.not, label %common.ret, label %if.end9

common.ret:                                       ; preds = %LoadPngData.exit, %entry
  ret ptr null

if.end9:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %width111.i)
  %call.i = load volatile ptr, ptr null, align 4294967296
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end9
  %call2.i = load volatile i64, ptr null, align 4294967296
  br label %LoadPngData.exit

if.end.i:                                         ; preds = %if.end9
  %call13.i = load volatile i32, ptr %width111.i, align 4
  br label %LoadPngData.exit

LoadPngData.exit:                                 ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %width111.i)
  br label %common.ret
}

declare ptr @vtklibharu_HPDF_DictStream_New() local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define noundef i64 @LoadPngData() local_unnamed_addr #0 {
entry:
  %width111 = alloca [0 x [0 x [0 x i32]]], align 4
  %call = load volatile ptr, ptr null, align 4294967296
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

common.ret:                                       ; preds = %if.end, %if.then
  ret i64 0

if.then:                                          ; preds = %entry
  %call2 = load volatile i64, ptr null, align 4294967296
  br label %common.ret

if.end:                                           ; preds = %entry
  %call13 = load volatile i32, ptr %width111, align 4
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
