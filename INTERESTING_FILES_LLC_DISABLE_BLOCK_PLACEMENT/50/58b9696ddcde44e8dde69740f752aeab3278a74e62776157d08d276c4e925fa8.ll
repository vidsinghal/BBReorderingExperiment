; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psa_key_slot_t = type { %struct.psa_core_key_attributes_t, i64, %struct.key_data }
%struct.psa_core_key_attributes_t = type { i16, i16, i32, i32, %struct.psa_key_policy_s, i16 }
%struct.psa_key_policy_s = type { i32, i32, i32 }
%struct.key_data = type { ptr, i64 }

define i32 @psa_get_empty_key_slot(ptr %0, i1 %tobool.not) #0 {
entry:
  br i1 %tobool.not, label %if.then, label %for.cond

if.then:                                          ; preds = %entry
  ret i32 0

for.cond:                                         ; preds = %if.end12, %entry
  %unlocked_persistent_key_slot.04 = phi ptr [ %unlocked_persistent_key_slot.1, %if.end12 ], [ null, %entry ]
  %slot_idx.0 = phi i64 [ %inc, %if.end12 ], [ 0, %entry ]
  %cmp4 = icmp eq ptr %unlocked_persistent_key_slot.04, null
  br i1 %cmp4, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %for.cond
  %arrayidx = getelementptr [32 x %struct.psa_key_slot_t], ptr null, i64 0, i64 %slot_idx.0
  %1 = load i32, ptr %0, align 4
  %cmp6 = icmp eq i32 %1, 0
  %spec.select = select i1 %cmp6, ptr null, ptr %arrayidx
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %for.cond
  %unlocked_persistent_key_slot.1 = phi ptr [ null, %for.cond ], [ %spec.select, %land.lhs.true ]
  %inc = add i64 %slot_idx.0, 1
  br label %for.cond
}

attributes #0 = { "target-cpu"="x86-64" }
