; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define ptr @bli_packm_scalar(i32 %call1) {
entry:
  %call136 = call i32 @bli_obj_pack_schema()
  %call24 = call i1 @bli_obj_scalar_has_nonzero_imag()
  br i1 %call24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call3 = call i1 @bli_is_nat_packed(i32 %call1)
  br i1 %call3, label %if.else, label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = load volatile ptr, ptr null, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true
  ret ptr null
}

define i32 @bli_obj_dt() {
entry:
  ret i32 1
}

declare i32 @bli_obj_pack_schema()

declare i1 @bli_obj_scalar_has_nonzero_imag()

define i1 @bli_is_nat_packed(i32 %schema) {
entry:
  %cmp = icmp eq i32 %schema, 0
  ret i1 %cmp
}
