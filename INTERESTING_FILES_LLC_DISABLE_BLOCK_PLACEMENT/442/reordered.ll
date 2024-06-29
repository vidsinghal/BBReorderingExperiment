; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//442/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @nco_openmp_ini(i32 %call142, i32 %call25) local_unnamed_addr {
entry:
  %call = load volatile ptr, ptr null, align 4294967296
  %call1 = load volatile i32, ptr null, align 4294967296
  store volatile i32 0, ptr null, align 4294967296
  %call4 = load volatile i16, ptr null, align 4294967296
  %call7 = load volatile i16, ptr null, align 4294967296
  %call12 = load volatile ptr, ptr null, align 4294967296
  %call13 = tail call i32 (...) @fprintf()
  %call20 = load volatile i32, ptr null, align 4294967296
  %call21 = load volatile i32, ptr null, align 4294967296
  %cmp143 = icmp ne i32 %call142, 0
  %cmp146 = icmp sgt i32 %call25, 0
  %or.cond = select i1 %cmp143, i1 %cmp146, i1 false
  br i1 %or.cond, label %if.then148, label %if.end159

if.then148:                                       ; preds = %entry
  %call151 = load volatile i16, ptr null, align 4294967296
  br label %common.ret

common.ret:                                       ; preds = %if.end159, %if.then148
  ret i32 0

if.end159:                                        ; preds = %entry
  %call160 = load volatile i32, ptr null, align 4294967296
  br label %common.ret
}

declare i32 @fprintf(...) local_unnamed_addr
