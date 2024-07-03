; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @vtkexodusII_ex_put_loadbal_param_cc(ptr %num_bor_nodes, i1 %cmp238, i1 %cmp384) {
entry:
  br label %for.cond651

for.cond651:                                      ; preds = %if.end792, %entry
  %call65548 = call i32 @vtkexodusII_ex_int64_status()
  br label %if.end695

if.then658.critedge:                              ; preds = %if.end740
  br label %if.end695

if.end695:                                        ; preds = %if.then658.critedge, %for.cond651
  br i1 %cmp238, label %if.end740, label %if.else739

if.else739:                                       ; preds = %if.end695
  store i32 0, ptr %num_bor_nodes, align 4
  br label %if.end740

if.end740:                                        ; preds = %if.else739, %if.end695
  br i1 %cmp384, label %if.then658.critedge, label %if.end792

if.end792:                                        ; preds = %if.end740
  call void @llvm.assume(i1 %cmp238)
  br label %for.cond651
}

declare i32 @vtkexodusII_ex_int64_status()

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
