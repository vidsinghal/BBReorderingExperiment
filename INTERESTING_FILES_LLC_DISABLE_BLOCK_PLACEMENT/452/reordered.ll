; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//452/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define range(i32 0, 2) i32 @test_simde_vcltz_f32() local_unnamed_addr #0 {
entry:
  %call12 = load volatile i32, ptr null, align 4294967296
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %for.cond, label %cleanup14

cleanup14:                                        ; preds = %for.cond.6, %for.cond.5, %for.cond.4, %for.cond.3, %for.cond.2, %for.cond.1, %for.cond, %entry
  %retval.2 = phi i32 [ 0, %entry ], [ 0, %for.cond ], [ 0, %for.cond.1 ], [ 0, %for.cond.2 ], [ 0, %for.cond.3 ], [ 0, %for.cond.4 ], [ 0, %for.cond.5 ], [ %spec.select, %for.cond.6 ]
  ret i32 %retval.2

for.cond.4:                                       ; preds = %for.cond.3
  %call12.5 = load volatile i32, ptr null, align 4294967296
  %tobool.not.5 = icmp eq i32 %call12.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %cleanup14

for.cond.3:                                       ; preds = %for.cond.2
  %call12.4 = load volatile i32, ptr null, align 4294967296
  %tobool.not.4 = icmp eq i32 %call12.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %cleanup14

for.cond:                                         ; preds = %entry
  %call12.1 = load volatile i32, ptr null, align 4294967296
  %tobool.not.1 = icmp eq i32 %call12.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %cleanup14

for.cond.1:                                       ; preds = %for.cond
  %call12.2 = load volatile i32, ptr null, align 4294967296
  %tobool.not.2 = icmp eq i32 %call12.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %cleanup14

for.cond.5:                                       ; preds = %for.cond.4
  %call12.6 = load volatile i32, ptr null, align 4294967296
  %tobool.not.6 = icmp eq i32 %call12.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %cleanup14

for.cond.6:                                       ; preds = %for.cond.5
  %call12.7 = load volatile i32, ptr null, align 4294967296
  %tobool.not.7 = icmp eq i32 %call12.7, 0
  %spec.select = zext i1 %tobool.not.7 to i32
  br label %cleanup14

for.cond.2:                                       ; preds = %for.cond.1
  %call12.3 = load volatile i32, ptr null, align 4294967296
  %tobool.not.3 = icmp eq i32 %call12.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %cleanup14
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn }
