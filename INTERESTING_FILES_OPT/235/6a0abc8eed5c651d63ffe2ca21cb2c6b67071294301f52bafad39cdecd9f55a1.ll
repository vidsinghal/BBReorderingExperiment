; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @inflateBack(ptr %strm, ptr %in, ptr %in_desc, i32 %bits.1, i1 %cond) {
entry:
  %0 = load ptr, ptr %strm, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end185, %entry
  br i1 %cond, label %while.cond157, label %sw.bb617

while.cond157:                                    ; preds = %do.body161, %for.cond
  %bits.13 = phi i32 [ %add180, %do.body161 ], [ %bits.1, %for.cond ]
  %cmp158 = icmp ult i32 %bits.13, 14
  br i1 %cmp158, label %do.body161, label %do.end185

do.body161:                                       ; preds = %while.cond157
  %call166 = call i32 %in(ptr null, ptr null)
  %add180 = add i32 %bits.13, 1
  br label %while.cond157

do.end185:                                        ; preds = %while.cond157
  %nlen = getelementptr i8, ptr %0, i64 124
  store i32 0, ptr %nlen, align 4
  br label %for.cond

sw.bb617:                                         ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
