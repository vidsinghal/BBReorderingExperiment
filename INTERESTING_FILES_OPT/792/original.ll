; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES_OPT//792/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare double @drand48() local_unnamed_addr

; Function Attrs: noreturn
define void @wgsim_mut_diref(ptr nocapture readnone %ks, i32 %is_hap, i1 %cmp74, ptr nocapture writeonly %0) local_unnamed_addr #0 {
entry:
  br i1 %cmp74, label %if.then115, label %do.body.preheader.lr.ph

do.body.preheader.lr.ph:                          ; preds = %entry
  %s162 = getelementptr i8, ptr %0, i64 8
  br label %do.body

if.then115:                                       ; preds = %entry
  %call118 = tail call double @drand48()
  unreachable

do.body:                                          ; preds = %do.body.backedge, %do.body.preheader.lr.ph
  %call142 = tail call double @drand48()
  %call147 = load volatile double, ptr null, align 4294967296
  %cmp148 = fcmp olt double %call147, 0.000000e+00
  br i1 %cmp148, label %do.body.backedge, label %do.end

do.body.backedge:                                 ; preds = %do.body, %do.end
  br label %do.body

do.end:                                           ; preds = %do.body
  %call152 = load volatile double, ptr null, align 4294967296
  store i16 0, ptr %s162, align 2
  br label %do.body.backedge
}

attributes #0 = { noreturn }
