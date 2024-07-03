; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #0

declare i32 @lj_ir_emit()

define void @lj_snap_replay(ptr %J, ptr %T, ptr %T.addr, ptr %0, ptr %1, i1 %cmp19) {
entry:
  store ptr null, ptr %J, align 8
  br label %for.cond

for.cond:                                         ; preds = %setslot, %entry
  br i1 %cmp19, label %if.then21, label %if.else27

if.then21:                                        ; preds = %for.cond
  store i32 0, ptr %J, align 4
  br label %setslot

if.else27:                                        ; preds = %for.cond
  %2 = load ptr, ptr %J, align 8
  %3 = load i16, ptr %2, align 2
  %cmp30.not = icmp eq i16 %3, 0
  br i1 %cmp30.not, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.else27
  store i32 0, ptr %J, align 4
  br label %setslot

if.else33:                                        ; preds = %if.else27
  %call49 = call i32 @lj_ir_emit()
  br label %setslot

setslot:                                          ; preds = %if.else33, %if.then32, %if.then21
  %baseslot = getelementptr i8, ptr %J, i64 176
  store i32 0, ptr %baseslot, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %J)
  br label %for.cond, !llvm.loop !0
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.mustprogress"}
