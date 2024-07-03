; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define i32 @consume_data(ptr %0, i1 %cmp10.not, ptr %1, i1 %cmp14, ptr %2, i32 %3, ptr %4) {
entry:
  br label %for.cond9

for.cond9:                                        ; preds = %for.end42, %entry
  %ci.0 = phi i32 [ 0, %entry ], [ %ci.1, %for.end42 ]
  br i1 %cmp10.not, label %common.ret, label %for.cond12

for.cond12:                                       ; preds = %for.inc40, %for.cond9
  %ci.1 = phi i32 [ %inc41, %for.inc40 ], [ 0, %for.cond9 ]
  br i1 %cmp10.not, label %for.body15, label %for.end42

for.body15:                                       ; preds = %for.cond12
  br i1 %cmp14, label %common.ret, label %for.inc40

common.ret:                                       ; preds = %for.body15, %for.cond9
  %common.ret.op = phi i32 [ 0, %for.body15 ], [ 0, %for.cond9 ]
  ret i32 0

for.inc40:                                        ; preds = %for.body15
  %inc41 = add i32 %ci.0, 1
  br label %for.cond12

for.end42:                                        ; preds = %for.cond12
  %entropy_decode_mcu = getelementptr i8, ptr %4, i64 80
  %5 = load ptr, ptr %entropy_decode_mcu, align 8
  %call44 = call i32 %5(ptr null, ptr null)
  br label %for.cond9
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
