; ModuleID = 'samples/133.bc'
source_filename = "/local-ssd/globalarrays-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v-build/aidengro/spack-stage-globalarrays-5.8.2-4b7gqwvfr3rlpyzs4u6z5cjqyfeyij7v/spack-src/global/src/collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_list_t = type { i32, i32, i32, i32, ptr, ptr, i32 }

@PGRP_LIST = external global ptr, align 8
@_ga_sync_begin = external global i32, align 4
@_ga_sync_end = external global i32, align 4
@GA_MPI_World_comm_dup = external global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c" wrong data type \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_msg_brdcst(i64 noundef %type, ptr noundef %buffer, i64 noundef %len, i64 noundef %root) #0 {
entry:
  %type.addr = alloca i64, align 8
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %root.addr = alloca i64, align 8
  %bigint = alloca i64, align 8
  %i = alloca i32, align 4
  %nsteps = alloca i32, align 4
  %len_small = alloca i64, align 8
  %buffer_ptr = alloca ptr, align 8
  %istart = alloca i64, align 8
  %p_grp = alloca i32, align 4
  %aroot = alloca i32, align 4
  store i64 %type, ptr %type.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i64 %root, ptr %root.addr, align 8
  store i64 2147483647, ptr %bigint, align 8
  store i64 0, ptr %istart, align 8
  %0 = load i64, ptr %len.addr, align 8
  %conv = sitofp i64 %0 to double
  %1 = load i64, ptr %bigint, align 8
  %conv1 = sitofp i64 %1 to double
  %div = fdiv double %conv, %conv1
  %2 = call double @llvm.ceil.f64(double %div)
  %conv2 = fptosi double %2 to i32
  store i32 %conv2, ptr %nsteps, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %nsteps, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %bigint, align 8
  store i64 %5, ptr %len_small, align 8
  %6 = load ptr, ptr %buffer.addr, align 8
  %7 = load i64, ptr %istart, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7
  store ptr %add.ptr, ptr %buffer_ptr, align 8
  %8 = load i64, ptr %istart, align 8
  %9 = load i64, ptr %len_small, align 8
  %add = add nsw i64 %8, %9
  %10 = load i64, ptr %len.addr, align 8
  %cmp4 = icmp sgt i64 %add, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i64, ptr %len.addr, align 8
  %12 = load i64, ptr %istart, align 8
  %sub = sub nsw i64 %11, %12
  store i64 %sub, ptr %len_small, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call = call i64 (...) @pnga_pgroup_get_default()
  %conv6 = trunc i64 %call to i32
  store i32 %conv6, ptr %p_grp, align 4
  %13 = load i32, ptr %p_grp, align 4
  %cmp7 = icmp sgt i32 %13, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %14 = load ptr, ptr @PGRP_LIST, align 8
  %15 = load i32, ptr %p_grp, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.proc_list_t, ptr %14, i64 %idxprom
  %inv_map_proc_list = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx, i32 0, i32 5
  %16 = load ptr, ptr %inv_map_proc_list, align 8
  %17 = load i64, ptr %root.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 %17
  %18 = load i32, ptr %arrayidx10, align 4
  store i32 %18, ptr %aroot, align 4
  %19 = load ptr, ptr %buffer_ptr, align 8
  %20 = load i64, ptr %len_small, align 8
  %conv11 = trunc i64 %20 to i32
  %21 = load i32, ptr %aroot, align 4
  %22 = load ptr, ptr @PGRP_LIST, align 8
  %23 = load i32, ptr %p_grp, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds %struct.proc_list_t, ptr %22, i64 %idxprom12
  %group = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx13, i32 0, i32 6
  call void @armci_msg_group_bcast_scope(i32 noundef 333, ptr noundef %19, i32 noundef %conv11, i32 noundef %21, ptr noundef %group)
  br label %if.end16

if.else:                                          ; preds = %if.end
  %24 = load ptr, ptr %buffer_ptr, align 8
  %25 = load i64, ptr %len_small, align 8
  %conv14 = trunc i64 %25 to i32
  %26 = load i64, ptr %root.addr, align 8
  %conv15 = trunc i64 %26 to i32
  call void @armci_msg_bcast(ptr noundef %24, i32 noundef %conv14, i32 noundef %conv15)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %27 = load i64, ptr %len_small, align 8
  %28 = load i64, ptr %istart, align 8
  %add17 = add nsw i64 %28, %27
  store i64 %add17, ptr %istart, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #1

declare i64 @pnga_pgroup_get_default(...) #2

declare void @armci_msg_group_bcast_scope(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

declare void @armci_msg_bcast(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_brdcst(i64 noundef %type, ptr noundef %buf, i64 noundef %len, i64 noundef %originator) #0 {
entry:
  %type.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %originator.addr = alloca i64, align 8
  store i64 %type, ptr %type.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i64 %originator, ptr %originator.addr, align 8
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %0 = load i64, ptr %type.addr, align 8
  %1 = load ptr, ptr %buf.addr, align 8
  %2 = load i64, ptr %len.addr, align 8
  %3 = load i64, ptr %originator.addr, align 8
  call void @pnga_msg_brdcst(i64 noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_pgroup_brdcst(i64 noundef %grp_id, i64 noundef %type, ptr noundef %buf, i64 noundef %len, i64 noundef %originator) #0 {
entry:
  %grp_id.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %originator.addr = alloca i64, align 8
  %p_grp = alloca i32, align 4
  %aroot = alloca i32, align 4
  %aroot6 = alloca i32, align 4
  store i64 %grp_id, ptr %grp_id.addr, align 8
  store i64 %type, ptr %type.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  store i64 %originator, ptr %originator.addr, align 8
  %0 = load i64, ptr %grp_id.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, ptr %p_grp, align 4
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %1 = load i32, ptr %p_grp, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @PGRP_LIST, align 8
  %3 = load i32, ptr %p_grp, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.proc_list_t, ptr %2, i64 %idxprom
  %inv_map_proc_list = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx, i32 0, i32 5
  %4 = load ptr, ptr %inv_map_proc_list, align 8
  %5 = load i64, ptr %originator.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %4, i64 %5
  %6 = load i32, ptr %arrayidx2, align 4
  store i32 %6, ptr %aroot, align 4
  %7 = load ptr, ptr %buf.addr, align 8
  %8 = load i64, ptr %len.addr, align 8
  %conv3 = trunc i64 %8 to i32
  %9 = load i32, ptr %aroot, align 4
  %10 = load ptr, ptr @PGRP_LIST, align 8
  %11 = load i32, ptr %p_grp, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds %struct.proc_list_t, ptr %10, i64 %idxprom4
  %group = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx5, i32 0, i32 6
  call void @armci_msg_group_bcast_scope(i32 noundef 333, ptr noundef %7, i32 noundef %conv3, i32 noundef %9, ptr noundef %group)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load i64, ptr %originator.addr, align 8
  %conv7 = trunc i64 %12 to i32
  store i32 %conv7, ptr %aroot6, align 4
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = load i64, ptr %len.addr, align 8
  %conv8 = trunc i64 %14 to i32
  %15 = load i32, ptr %aroot6, align 4
  call void @armci_msg_bcast(ptr noundef %13, i32 noundef %conv8, i32 noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @GA_MPI_Comm() #0 {
entry:
  %0 = load ptr, ptr @GA_MPI_World_comm_dup, align 8
  ret ptr %0
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @GA_MPI_Comm_pgroup_default() #0 {
entry:
  %call = call i64 (...) @pnga_pgroup_get_default()
  %conv = trunc i64 %call to i32
  %call1 = call ptr @GA_MPI_Comm_pgroup(i32 noundef %conv)
  ret ptr %call1
}

; Function Attrs: noinline nounwind optnone uwtable
define ptr @GA_MPI_Comm_pgroup(i32 noundef %p_grp) #0 {
entry:
  %p_grp.addr = alloca i32, align 4
  %group = alloca i32, align 4
  store i32 %p_grp, ptr %p_grp.addr, align 4
  %0 = load i32, ptr %p_grp.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @PGRP_LIST, align 8
  %2 = load i32, ptr %p_grp.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.proc_list_t, ptr %1, i64 %idxprom
  %group1 = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx, i32 0, i32 6
  %3 = load i32, ptr %group1, align 8
  store i32 %3, ptr %group, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @ARMCI_Group_get_world(ptr noundef %group)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = call ptr @armci_group_comm(ptr noundef %group)
  ret ptr %call
}

declare void @ARMCI_Group_get_world(ptr noundef) #2

declare ptr @armci_group_comm(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_msg_sync() #0 {
entry:
  %p_grp = alloca i32, align 4
  %call = call i64 (...) @pnga_pgroup_get_default()
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %p_grp, align 4
  %0 = load i32, ptr %p_grp, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @PGRP_LIST, align 8
  %2 = load i32, ptr %p_grp, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.proc_list_t, ptr %1, i64 %idxprom
  %group = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx, i32 0, i32 6
  call void @armci_msg_group_barrier(ptr noundef %group)
  br label %if.end

if.else:                                          ; preds = %entry
  call void (...) @armci_msg_barrier()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @armci_msg_group_barrier(ptr noundef) #2

declare void @armci_msg_barrier(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_msg_pgroup_sync(i64 noundef %grp_id) #0 {
entry:
  %grp_id.addr = alloca i64, align 8
  %p_grp = alloca i32, align 4
  store i64 %grp_id, ptr %grp_id.addr, align 8
  %0 = load i64, ptr %grp_id.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, ptr %p_grp, align 4
  %1 = load i32, ptr %p_grp, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @PGRP_LIST, align 8
  %3 = load i32, ptr %p_grp, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.proc_list_t, ptr %2, i64 %idxprom
  %group = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx, i32 0, i32 6
  call void @armci_msg_group_barrier(ptr noundef %group)
  br label %if.end

if.else:                                          ; preds = %entry
  call void (...) @armci_msg_barrier()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_pgroup_gop(i64 noundef %p_grp, i64 noundef %type, ptr noundef %x, i64 noundef %n, ptr noundef %op) #0 {
entry:
  %p_grp.addr = alloca i64, align 8
  %type.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %group = alloca i32, align 4
  store i64 %p_grp, ptr %p_grp.addr, align 8
  store i64 %type, ptr %type.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %0 = load i64, ptr %p_grp.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %p_grp.addr, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %group, align 4
  %2 = load i64, ptr %type.addr, align 8
  switch i64 %2, label %sw.default [
    i64 1001, label %sw.bb
    i64 1002, label %sw.bb3
    i64 1016, label %sw.bb8
    i64 1003, label %sw.bb13
    i64 1004, label %sw.bb18
    i64 1006, label %sw.bb23
    i64 1007, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %x.addr, align 8
  %4 = load i64, ptr %n.addr, align 8
  %conv1 = trunc i64 %4 to i32
  %5 = load ptr, ptr %op.addr, align 8
  %6 = load ptr, ptr @PGRP_LIST, align 8
  %7 = load i32, ptr %group, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.proc_list_t, ptr %6, i64 %idxprom
  %group2 = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx, i32 0, i32 6
  call void @armci_msg_group_igop(ptr noundef %3, i32 noundef %conv1, ptr noundef %5, ptr noundef %group2)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  %8 = load ptr, ptr %x.addr, align 8
  %9 = load i64, ptr %n.addr, align 8
  %conv4 = trunc i64 %9 to i32
  %10 = load ptr, ptr %op.addr, align 8
  %11 = load ptr, ptr @PGRP_LIST, align 8
  %12 = load i32, ptr %group, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds %struct.proc_list_t, ptr %11, i64 %idxprom5
  %group7 = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx6, i32 0, i32 6
  call void @armci_msg_group_lgop(ptr noundef %8, i32 noundef %conv4, ptr noundef %10, ptr noundef %group7)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  %13 = load ptr, ptr %x.addr, align 8
  %14 = load i64, ptr %n.addr, align 8
  %conv9 = trunc i64 %14 to i32
  %15 = load ptr, ptr %op.addr, align 8
  %16 = load ptr, ptr @PGRP_LIST, align 8
  %17 = load i32, ptr %group, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds %struct.proc_list_t, ptr %16, i64 %idxprom10
  %group12 = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx11, i32 0, i32 6
  call void @armci_msg_group_llgop(ptr noundef %13, i32 noundef %conv9, ptr noundef %15, ptr noundef %group12)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  %18 = load ptr, ptr %x.addr, align 8
  %19 = load i64, ptr %n.addr, align 8
  %conv14 = trunc i64 %19 to i32
  %20 = load ptr, ptr %op.addr, align 8
  %21 = load ptr, ptr @PGRP_LIST, align 8
  %22 = load i32, ptr %group, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds %struct.proc_list_t, ptr %21, i64 %idxprom15
  %group17 = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx16, i32 0, i32 6
  call void @armci_msg_group_fgop(ptr noundef %18, i32 noundef %conv14, ptr noundef %20, ptr noundef %group17)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then
  %23 = load ptr, ptr %x.addr, align 8
  %24 = load i64, ptr %n.addr, align 8
  %conv19 = trunc i64 %24 to i32
  %25 = load ptr, ptr %op.addr, align 8
  %26 = load ptr, ptr @PGRP_LIST, align 8
  %27 = load i32, ptr %group, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds %struct.proc_list_t, ptr %26, i64 %idxprom20
  %group22 = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx21, i32 0, i32 6
  call void @armci_msg_group_dgop(ptr noundef %23, i32 noundef %conv19, ptr noundef %25, ptr noundef %group22)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then
  %28 = load ptr, ptr %x.addr, align 8
  %29 = load i64, ptr %n.addr, align 8
  %mul = mul nsw i64 2, %29
  %conv24 = trunc i64 %mul to i32
  %30 = load ptr, ptr %op.addr, align 8
  %31 = load ptr, ptr @PGRP_LIST, align 8
  %32 = load i32, ptr %group, align 4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds %struct.proc_list_t, ptr %31, i64 %idxprom25
  %group27 = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx26, i32 0, i32 6
  call void @armci_msg_group_fgop(ptr noundef %28, i32 noundef %conv24, ptr noundef %30, ptr noundef %group27)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then
  %33 = load ptr, ptr %x.addr, align 8
  %34 = load i64, ptr %n.addr, align 8
  %mul29 = mul nsw i64 2, %34
  %conv30 = trunc i64 %mul29 to i32
  %35 = load ptr, ptr %op.addr, align 8
  %36 = load ptr, ptr @PGRP_LIST, align 8
  %37 = load i32, ptr %group, align 4
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds %struct.proc_list_t, ptr %36, i64 %idxprom31
  %group33 = getelementptr inbounds %struct.proc_list_t, ptr %arrayidx32, i32 0, i32 6
  call void @armci_msg_group_dgop(ptr noundef %33, i32 noundef %conv30, ptr noundef %35, ptr noundef %group33)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %38 = load i64, ptr %type.addr, align 8
  call void @pnga_error(ptr noundef @.str, i64 noundef %38)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb28, %sw.bb23, %sw.bb18, %sw.bb13, %sw.bb8, %sw.bb3, %sw.bb
  br label %if.end

if.else:                                          ; preds = %entry
  %39 = load i64, ptr %type.addr, align 8
  %40 = load ptr, ptr %x.addr, align 8
  %41 = load i64, ptr %n.addr, align 8
  %42 = load ptr, ptr %op.addr, align 8
  call void @pnga_gop(i64 noundef %39, ptr noundef %40, i64 noundef %41, ptr noundef %42)
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  ret void
}

declare void @armci_msg_group_igop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @armci_msg_group_lgop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @armci_msg_group_llgop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @armci_msg_group_fgop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @armci_msg_group_dgop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @pnga_error(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define void @pnga_gop(i64 noundef %type, ptr noundef %x, i64 noundef %n, ptr noundef %op) #0 {
entry:
  %type.addr = alloca i64, align 8
  %x.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %op.addr = alloca ptr, align 8
  %p_grp = alloca i64, align 8
  store i64 %type, ptr %type.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  %call = call i64 (...) @pnga_pgroup_get_default()
  store i64 %call, ptr %p_grp, align 8
  store i32 1, ptr @_ga_sync_begin, align 4
  store i32 1, ptr @_ga_sync_end, align 4
  %0 = load i64, ptr %p_grp, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %p_grp, align 8
  %2 = load i64, ptr %type.addr, align 8
  %3 = load ptr, ptr %x.addr, align 8
  %4 = load i64, ptr %n.addr, align 8
  %5 = load ptr, ptr %op.addr, align 8
  call void @pnga_pgroup_gop(i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %type.addr, align 8
  switch i64 %6, label %sw.default [
    i64 1001, label %sw.bb
    i64 1002, label %sw.bb1
    i64 1016, label %sw.bb3
    i64 1003, label %sw.bb5
    i64 1004, label %sw.bb7
    i64 1006, label %sw.bb9
    i64 1007, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.else
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load i64, ptr %n.addr, align 8
  %conv = trunc i64 %8 to i32
  %9 = load ptr, ptr %op.addr, align 8
  call void @armci_msg_igop(ptr noundef %7, i32 noundef %conv, ptr noundef %9)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.else
  %10 = load ptr, ptr %x.addr, align 8
  %11 = load i64, ptr %n.addr, align 8
  %conv2 = trunc i64 %11 to i32
  %12 = load ptr, ptr %op.addr, align 8
  call void @armci_msg_lgop(ptr noundef %10, i32 noundef %conv2, ptr noundef %12)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.else
  %13 = load ptr, ptr %x.addr, align 8
  %14 = load i64, ptr %n.addr, align 8
  %conv4 = trunc i64 %14 to i32
  %15 = load ptr, ptr %op.addr, align 8
  call void @armci_msg_llgop(ptr noundef %13, i32 noundef %conv4, ptr noundef %15)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.else
  %16 = load ptr, ptr %x.addr, align 8
  %17 = load i64, ptr %n.addr, align 8
  %conv6 = trunc i64 %17 to i32
  %18 = load ptr, ptr %op.addr, align 8
  call void @armci_msg_fgop(ptr noundef %16, i32 noundef %conv6, ptr noundef %18)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.else
  %19 = load ptr, ptr %x.addr, align 8
  %20 = load i64, ptr %n.addr, align 8
  %conv8 = trunc i64 %20 to i32
  %21 = load ptr, ptr %op.addr, align 8
  call void @armci_msg_dgop(ptr noundef %19, i32 noundef %conv8, ptr noundef %21)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.else
  %22 = load ptr, ptr %x.addr, align 8
  %23 = load i64, ptr %n.addr, align 8
  %mul = mul nsw i64 2, %23
  %conv10 = trunc i64 %mul to i32
  %24 = load ptr, ptr %op.addr, align 8
  call void @armci_msg_fgop(ptr noundef %22, i32 noundef %conv10, ptr noundef %24)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.else
  %25 = load ptr, ptr %x.addr, align 8
  %26 = load i64, ptr %n.addr, align 8
  %mul12 = mul nsw i64 2, %26
  %conv13 = trunc i64 %mul12 to i32
  %27 = load ptr, ptr %op.addr, align 8
  call void @armci_msg_dgop(ptr noundef %25, i32 noundef %conv13, ptr noundef %27)
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %28 = load i64, ptr %type.addr, align 8
  call void @pnga_error(ptr noundef @.str, i64 noundef %28)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  ret void
}

declare void @armci_msg_igop(ptr noundef, i32 noundef, ptr noundef) #2

declare void @armci_msg_lgop(ptr noundef, i32 noundef, ptr noundef) #2

declare void @armci_msg_llgop(ptr noundef, i32 noundef, ptr noundef) #2

declare void @armci_msg_fgop(ptr noundef, i32 noundef, ptr noundef) #2

declare void @armci_msg_dgop(ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
