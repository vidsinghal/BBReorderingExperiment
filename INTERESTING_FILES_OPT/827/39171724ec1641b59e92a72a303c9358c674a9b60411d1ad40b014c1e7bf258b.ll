; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

define i64 @klu_zl_condest(i64 %j.2, i1 %cmp184) {
entry:
  br label %for.cond158

for.cond158:                                      ; preds = %for.end250, %entry
  br label %for.cond165

for.cond165:                                      ; preds = %for.body168, %for.cond158
  %j.1 = phi i64 [ %j.2, %for.cond158 ], [ 0, %for.body168 ]
  %cmp166 = icmp slt i64 %j.1, 0
  br i1 %cmp166, label %for.body168, label %for.end177

for.body168:                                      ; preds = %for.cond165
  br label %for.cond165

for.end177:                                       ; preds = %for.cond165
  %call182 = call i64 @klu_zl_solve()
  br label %for.cond183

for.cond183:                                      ; preds = %for.body186, %for.end177
  br i1 %cmp184, label %for.body186, label %for.end250

for.body186:                                      ; preds = %for.cond183
  call void @llvm.lifetime.start.p0(i64 0, ptr null)
  br label %for.cond183

for.end250:                                       ; preds = %for.cond183
  %cmp252 = icmp sgt i64 %j.2, 0
  br i1 %cmp252, label %for.body254, label %for.cond158

for.body254:                                      ; preds = %for.end250
  ret i64 0
}

declare i64 @klu_zl_solve()

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
