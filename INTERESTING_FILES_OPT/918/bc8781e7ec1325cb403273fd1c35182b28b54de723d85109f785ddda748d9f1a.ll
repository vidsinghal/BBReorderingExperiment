; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define i32 @compare_zip() {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond
}

define i32 @list_directory(ptr %0, i1 %cond) {
entry:
  br label %while.cond

while.cond:                                       ; preds = %sw.bb8, %while.cond, %entry
  br i1 %cond, label %sw.bb8, label %while.cond

sw.bb8:                                           ; preds = %while.cond
  %call35 = call i64 @compute_crc()
  %nentry46 = getelementptr i8, ptr %0, i64 16
  store i64 0, ptr %nentry46, align 8
  br label %while.cond
}

define i64 @compute_crc() {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call5 = load volatile i64, ptr null, align 8
  %cmp6.not = icmp eq i64 %call5, 0
  br i1 %cmp6.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call8 = call i64 @crc32()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i64 0
}

declare i64 @crc32()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
