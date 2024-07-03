; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #0

declare ptr @strdup()

declare i16 @nco_dbg_lvl_get()

declare i32 @strcmp()

define i32 @nco_cnv_cf_cll_mth_add(i32 %out_id, i1 %cmp88) {
entry:
  %dmn_nbr_rdc.addr1 = alloca i32, i32 0, align 4
  %nco_op_typ.addr2 = alloca i32, i32 0, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.else131, %entry
  br label %for.cond82

for.cond82:                                       ; preds = %for.body86, %for.cond
  %0 = phi i32 [ 0, %for.cond ], [ 1, %for.body86 ]
  %cmp84 = icmp slt i32 %0, %out_id
  br i1 %cmp84, label %for.body86, label %if.else131

for.body86:                                       ; preds = %for.cond82
  br i1 %cmp88, label %for.body90, label %for.cond82

for.body90:                                       ; preds = %for.body86
  ret i32 0

if.else131:                                       ; preds = %for.cond82
  call void @llvm.assume(i1 %cmp88)
  %call173 = call i16 @nco_dbg_lvl_get()
  br label %for.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
