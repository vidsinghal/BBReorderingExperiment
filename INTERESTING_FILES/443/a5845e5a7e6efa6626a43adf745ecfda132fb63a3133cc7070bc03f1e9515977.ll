; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @rte_mem_virt2phy(i64 %0, i64 %and, i1 %cmp33) #0 {
entry:
  br i1 %cmp33, label %cleanup, label %if.end36

if.end36:                                         ; preds = %entry
  %rem = urem i64 %and, %0
  %add = or i64 %rem, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry
  %retval.0 = phi i64 [ %add, %if.end36 ], [ 0, %entry ]
  ret i64 %retval.0
}

attributes #0 = { "target-cpu"="znver2" }
