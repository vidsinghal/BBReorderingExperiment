; ModuleID = 'samples/830.bc'
source_filename = "../lib/eal/common/eal_common_tailqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rte_tailq_elem_head = type { ptr, ptr }
%struct.rte_config = type { i32, i32, i32, [32 x i32], i32, [128 x i32], i32, i32, ptr }
%struct.rte_mem_config = type { i32, i32, i32, i32, %struct.rte_rwlock_t, %struct.rte_rwlock_t, %struct.rte_rwlock_t, %struct.rte_spinlock_t, %struct.rte_rwlock_t, i8, %struct.rte_fbarray, [128 x %struct.rte_memseg_list], [32 x %struct.rte_tailq_head], [56 x i8], [32 x %struct.malloc_heap], i32, i64, i32, i32, i64, i8, [31 x i8] }
%struct.rte_spinlock_t = type { i32 }
%struct.rte_rwlock_t = type { i32 }
%struct.rte_fbarray = type { [64 x i8], i32, i32, i32, ptr, %struct.rte_rwlock_t }
%struct.rte_memseg_list = type { %union.anon, i64, i32, i32, i64, i32, i32, %struct.rte_fbarray }
%union.anon = type { ptr }
%struct.rte_tailq_head = type { %struct.rte_tailq_entry_head, [32 x i8] }
%struct.rte_tailq_entry_head = type { ptr, ptr }
%struct.malloc_heap = type { %struct.rte_spinlock_t, [13 x %struct.anon], ptr, ptr, i32, i32, i64, [32 x i8], [16 x i8] }
%struct.anon = type { ptr }
%struct.rte_tailq_elem = type { ptr, %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { ptr, ptr }

@.str = private unnamed_addr constant [49 x i8] c"Tailq %u: qname:<%s>, tqh_first:%p, tqh_last:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"EAL: %s tailq is already registered\0A\00", align 1
@rte_tailqs_count = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"EAL: Cannot initialize tailq: %s\0A\00", align 1
@rte_tailq_elem_head = internal global %struct.rte_tailq_elem_head { ptr null, ptr @rte_tailq_elem_head }, align 8
@stderr = external global ptr, align 8

; Function Attrs: nounwind uwtable
define ptr @rte_eal_tailq_lookup(ptr noundef %name) #0 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %mcfg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg) #4
  %call = call ptr @rte_eal_get_configuration()
  %mem_config = getelementptr inbounds %struct.rte_config, ptr %call, i32 0, i32 8
  %0 = load ptr, ptr %mem_config, align 1, !tbaa !8
  store ptr %0, ptr %mcfg, align 8, !tbaa !4
  %1 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !tbaa !11
  %cmp1 = icmp ult i32 %2, 32
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %4 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %tailq_head = getelementptr inbounds %struct.rte_mem_config, ptr %4, i32 0, i32 12
  %5 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.rte_tailq_head], ptr %tailq_head, i64 0, i64 %idxprom
  %name2 = getelementptr inbounds %struct.rte_tailq_head, ptr %arrayidx, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name2, i64 0, i64 0
  %call3 = call i32 @strncmp(ptr noundef %3, ptr noundef %arraydecay, i64 noundef 31) #5
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end8, label %if.then4

if.then4:                                         ; preds = %for.body
  %6 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %tailq_head5 = getelementptr inbounds %struct.rte_mem_config, ptr %6, i32 0, i32 12
  %7 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom6 = zext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [32 x %struct.rte_tailq_head], ptr %tailq_head5, i64 0, i64 %idxprom6
  store ptr %arrayidx7, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %8 = load i32, ptr %i, align 4, !tbaa !11
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4, !tbaa !11
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @rte_eal_get_configuration() #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define void @rte_dump_tailq(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %mcfg = alloca ptr, align 8
  %i = alloca i32, align 4
  %tailq = alloca ptr, align 8
  %head = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 0, ptr %i, align 4, !tbaa !11
  %call = call ptr @rte_eal_get_configuration()
  %mem_config = getelementptr inbounds %struct.rte_config, ptr %call, i32 0, i32 8
  %0 = load ptr, ptr %mem_config, align 1, !tbaa !8
  store ptr %0, ptr %mcfg, align 8, !tbaa !4
  call void @rte_mcfg_tailq_read_lock()
  store i32 0, ptr %i, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !11
  %cmp = icmp ult i32 %1, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tailq) #4
  %2 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %tailq_head = getelementptr inbounds %struct.rte_mem_config, ptr %2, i32 0, i32 12
  %3 = load i32, ptr %i, align 4, !tbaa !11
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.rte_tailq_head], ptr %tailq_head, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %tailq, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  %4 = load ptr, ptr %tailq, align 8, !tbaa !4
  %tailq_head1 = getelementptr inbounds %struct.rte_tailq_head, ptr %4, i32 0, i32 0
  store ptr %tailq_head1, ptr %head, align 8, !tbaa !4
  %5 = load ptr, ptr %f.addr, align 8, !tbaa !4
  %6 = load i32, ptr %i, align 4, !tbaa !11
  %7 = load ptr, ptr %tailq, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.rte_tailq_head, ptr %7, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0
  %8 = load ptr, ptr %head, align 8, !tbaa !4
  %tqh_first = getelementptr inbounds %struct.rte_tailq_entry_head, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %tqh_first, align 8, !tbaa !14
  %10 = load ptr, ptr %head, align 8, !tbaa !4
  %tqh_last = getelementptr inbounds %struct.rte_tailq_entry_head, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %tqh_last, align 8, !tbaa !16
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %6, ptr noundef %arraydecay, ptr noundef %9, ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tailq) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !tbaa !11
  %inc = add i32 %12, 1
  store i32 %inc, ptr %i, align 4, !tbaa !11
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  call void @rte_mcfg_tailq_read_unlock()
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg) #4
  ret void
}

declare void @rte_mcfg_tailq_read_lock() #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare void @rte_mcfg_tailq_read_unlock() #2

; Function Attrs: nounwind uwtable
define i32 @rte_eal_tailq_register(ptr noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %call = call i32 @rte_eal_tailq_local_register(ptr noundef %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.rte_tailq_elem, ptr %1, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0
  %call1 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.1, ptr noundef %arraydecay)
  br label %error

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @rte_tailqs_count, align 4, !tbaa !11
  %cmp2 = icmp sge i32 %2, 0
  br i1 %cmp2, label %if.then3, label %if.end24

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !4
  call void @rte_eal_tailq_update(ptr noundef %3)
  %4 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.rte_tailq_elem, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %head, align 8, !tbaa !18
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then5, label %if.end23

if.then5:                                         ; preds = %if.then3
  %6 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %name6 = getelementptr inbounds %struct.rte_tailq_elem, ptr %6, i32 0, i32 2
  %arraydecay7 = getelementptr inbounds [32 x i8], ptr %name6, i64 0, i64 0
  %call8 = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.2, ptr noundef %arraydecay7)
  br label %do.body

do.body:                                          ; preds = %if.then5
  %7 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.rte_tailq_elem, ptr %7, i32 0, i32 1
  %tqe_next = getelementptr inbounds %struct.anon.0, ptr %next, i32 0, i32 0
  %8 = load ptr, ptr %tqe_next, align 8, !tbaa !21
  %cmp9 = icmp ne ptr %8, null
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.body
  %9 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next11 = getelementptr inbounds %struct.rte_tailq_elem, ptr %9, i32 0, i32 1
  %tqe_prev = getelementptr inbounds %struct.anon.0, ptr %next11, i32 0, i32 1
  %10 = load ptr, ptr %tqe_prev, align 8, !tbaa !22
  %11 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next12 = getelementptr inbounds %struct.rte_tailq_elem, ptr %11, i32 0, i32 1
  %tqe_next13 = getelementptr inbounds %struct.anon.0, ptr %next12, i32 0, i32 0
  %12 = load ptr, ptr %tqe_next13, align 8, !tbaa !21
  %next14 = getelementptr inbounds %struct.rte_tailq_elem, ptr %12, i32 0, i32 1
  %tqe_prev15 = getelementptr inbounds %struct.anon.0, ptr %next14, i32 0, i32 1
  store ptr %10, ptr %tqe_prev15, align 8, !tbaa !22
  br label %if.end18

if.else:                                          ; preds = %do.body
  %13 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next16 = getelementptr inbounds %struct.rte_tailq_elem, ptr %13, i32 0, i32 1
  %tqe_prev17 = getelementptr inbounds %struct.anon.0, ptr %next16, i32 0, i32 1
  %14 = load ptr, ptr %tqe_prev17, align 8, !tbaa !22
  store ptr %14, ptr getelementptr inbounds (%struct.rte_tailq_elem_head, ptr @rte_tailq_elem_head, i32 0, i32 1), align 8, !tbaa !23
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then10
  %15 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next19 = getelementptr inbounds %struct.rte_tailq_elem, ptr %15, i32 0, i32 1
  %tqe_next20 = getelementptr inbounds %struct.anon.0, ptr %next19, i32 0, i32 0
  %16 = load ptr, ptr %tqe_next20, align 8, !tbaa !21
  %17 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next21 = getelementptr inbounds %struct.rte_tailq_elem, ptr %17, i32 0, i32 1
  %tqe_prev22 = getelementptr inbounds %struct.anon.0, ptr %next21, i32 0, i32 1
  %18 = load ptr, ptr %tqe_prev22, align 8, !tbaa !22
  store ptr %16, ptr %18, align 8, !tbaa !4
  br label %do.end

do.end:                                           ; preds = %if.end18
  br label %error

if.end23:                                         ; preds = %if.then3
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

error:                                            ; preds = %do.end, %if.then
  %19 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %head25 = getelementptr inbounds %struct.rte_tailq_elem, ptr %19, i32 0, i32 0
  store ptr null, ptr %head25, align 8, !tbaa !18
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %error, %if.end24
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @rte_eal_tailq_local_register(ptr noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #4
  %0 = load ptr, ptr @rte_tailq_elem_head, align 8, !tbaa !25
  store ptr %0, ptr %temp, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %temp, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.rte_tailq_elem, ptr %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0
  %3 = load ptr, ptr %temp, align 8, !tbaa !4
  %name1 = getelementptr inbounds %struct.rte_tailq_elem, ptr %3, i32 0, i32 2
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %name1, i64 0, i64 0
  %call = call i32 @strncmp(ptr noundef %arraydecay, ptr noundef %arraydecay2, i64 noundef 32) #5
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load ptr, ptr %temp, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.rte_tailq_elem, ptr %4, i32 0, i32 1
  %tqe_next = getelementptr inbounds %struct.anon.0, ptr %next, i32 0, i32 0
  %5 = load ptr, ptr %tqe_next, align 8, !tbaa !21
  store ptr %5, ptr %temp, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %6 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next4 = getelementptr inbounds %struct.rte_tailq_elem, ptr %6, i32 0, i32 1
  %tqe_next5 = getelementptr inbounds %struct.anon.0, ptr %next4, i32 0, i32 0
  store ptr null, ptr %tqe_next5, align 8, !tbaa !21
  %7 = load ptr, ptr getelementptr inbounds (%struct.rte_tailq_elem_head, ptr @rte_tailq_elem_head, i32 0, i32 1), align 8, !tbaa !23
  %8 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next6 = getelementptr inbounds %struct.rte_tailq_elem, ptr %8, i32 0, i32 1
  %tqe_prev = getelementptr inbounds %struct.anon.0, ptr %next6, i32 0, i32 1
  store ptr %7, ptr %tqe_prev, align 8, !tbaa !22
  %9 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %10 = load ptr, ptr getelementptr inbounds (%struct.rte_tailq_elem_head, ptr @rte_tailq_elem_head, i32 0, i32 1), align 8, !tbaa !23
  store ptr %9, ptr %10, align 8, !tbaa !4
  %11 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %next7 = getelementptr inbounds %struct.rte_tailq_elem, ptr %11, i32 0, i32 1
  %tqe_next8 = getelementptr inbounds %struct.anon.0, ptr %next7, i32 0, i32 0
  store ptr %tqe_next8, ptr getelementptr inbounds (%struct.rte_tailq_elem_head, ptr @rte_tailq_elem_head, i32 0, i32 1), align 8, !tbaa !23
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #4
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @rte_log(i32 noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define internal void @rte_eal_tailq_update(ptr noundef %t) #0 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8, !tbaa !4
  %call = call i32 @rte_eal_process_type()
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.rte_tailq_elem, ptr %0, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0
  %call1 = call ptr @rte_eal_tailq_create(ptr noundef %arraydecay)
  %1 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.rte_tailq_elem, ptr %1, i32 0, i32 0
  store ptr %call1, ptr %head, align 8, !tbaa !18
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %name2 = getelementptr inbounds %struct.rte_tailq_elem, ptr %2, i32 0, i32 2
  %arraydecay3 = getelementptr inbounds [32 x i8], ptr %name2, i64 0, i64 0
  %call4 = call ptr @rte_eal_tailq_lookup(ptr noundef %arraydecay3)
  %3 = load ptr, ptr %t.addr, align 8, !tbaa !4
  %head5 = getelementptr inbounds %struct.rte_tailq_elem, ptr %3, i32 0, i32 0
  store ptr %call4, ptr %head5, align 8, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @rte_eal_tailqs_init() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %t) #4
  store i32 0, ptr @rte_tailqs_count, align 4, !tbaa !11
  %0 = load ptr, ptr @rte_tailq_elem_head, align 8, !tbaa !25
  store ptr %0, ptr %t, align 8, !tbaa !4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %t, align 8, !tbaa !4
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %t, align 8, !tbaa !4
  call void @rte_eal_tailq_update(ptr noundef %2)
  %3 = load ptr, ptr %t, align 8, !tbaa !4
  %head = getelementptr inbounds %struct.rte_tailq_elem, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %head, align 8, !tbaa !18
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %t, align 8, !tbaa !4
  %name = getelementptr inbounds %struct.rte_tailq_elem, ptr %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0
  %call = call i32 (i32, i32, ptr, ...) @rte_log(i32 noundef 4, i32 noundef 0, ptr noundef @.str.2, ptr noundef %arraydecay)
  br label %fail

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %t, align 8, !tbaa !4
  %next = getelementptr inbounds %struct.rte_tailq_elem, ptr %6, i32 0, i32 1
  %tqe_next = getelementptr inbounds %struct.anon.0, ptr %next, i32 0, i32 0
  %7 = load ptr, ptr %tqe_next, align 8, !tbaa !21
  store ptr %7, ptr %t, align 8, !tbaa !4
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

fail:                                             ; preds = %if.then
  %8 = load ptr, ptr @stderr, align 8, !tbaa !4
  call void @rte_dump_tailq(ptr noundef %8)
  store i32 -1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %t) #4
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @rte_eal_process_type() #2

; Function Attrs: nounwind uwtable
define internal ptr @rte_eal_tailq_create(ptr noundef %name) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %head = alloca ptr, align 8
  %mcfg = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8, !tbaa !4
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #4
  store ptr null, ptr %head, align 8, !tbaa !4
  %0 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call = call ptr @rte_eal_tailq_lookup(ptr noundef %0)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @rte_tailqs_count, align 4, !tbaa !11
  %add = add nsw i32 %1, 1
  %cmp = icmp slt i32 %add, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcfg) #4
  %call1 = call ptr @rte_eal_get_configuration()
  %mem_config = getelementptr inbounds %struct.rte_config, ptr %call1, i32 0, i32 8
  %2 = load ptr, ptr %mem_config, align 1, !tbaa !8
  store ptr %2, ptr %mcfg, align 8, !tbaa !4
  %3 = load ptr, ptr %mcfg, align 8, !tbaa !4
  %tailq_head = getelementptr inbounds %struct.rte_mem_config, ptr %3, i32 0, i32 12
  %4 = load i32, ptr @rte_tailqs_count, align 4, !tbaa !11
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x %struct.rte_tailq_head], ptr %tailq_head, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %head, align 8, !tbaa !4
  %5 = load ptr, ptr %head, align 8, !tbaa !4
  %name2 = getelementptr inbounds %struct.rte_tailq_head, ptr %5, i32 0, i32 1
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name2, i64 0, i64 0
  %6 = load ptr, ptr %name.addr, align 8, !tbaa !4
  %call3 = call i64 @strlcpy(ptr noundef %arraydecay, ptr noundef %6, i64 noundef 31)
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load ptr, ptr %head, align 8, !tbaa !4
  %tailq_head4 = getelementptr inbounds %struct.rte_tailq_head, ptr %7, i32 0, i32 0
  %tqh_first = getelementptr inbounds %struct.rte_tailq_entry_head, ptr %tailq_head4, i32 0, i32 0
  store ptr null, ptr %tqh_first, align 8, !tbaa !28
  %8 = load ptr, ptr %head, align 8, !tbaa !4
  %tailq_head5 = getelementptr inbounds %struct.rte_tailq_head, ptr %8, i32 0, i32 0
  %tqh_first6 = getelementptr inbounds %struct.rte_tailq_entry_head, ptr %tailq_head5, i32 0, i32 0
  %9 = load ptr, ptr %head, align 8, !tbaa !4
  %tailq_head7 = getelementptr inbounds %struct.rte_tailq_head, ptr %9, i32 0, i32 0
  %tqh_last = getelementptr inbounds %struct.rte_tailq_entry_head, ptr %tailq_head7, i32 0, i32 1
  store ptr %tqh_first6, ptr %tqh_last, align 8, !tbaa !30
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i32, ptr @rte_tailqs_count, align 4, !tbaa !11
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @rte_tailqs_count, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcfg) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  %11 = load ptr, ptr %head, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #4
  ret ptr %11
}

declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver2" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-complex,-amx-fp16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-cldemote,-cmpccxadd,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 18.0.0 (https://github.com/llvm-ml/llvm-project b452eb491a2ae09c12cc88b715f003377cec543b)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 664}
!9 = !{!"rte_config", !10, i64 0, !10, i64 4, !10, i64 8, !6, i64 12, !10, i64 140, !6, i64 144, !6, i64 656, !6, i64 660, !5, i64 664}
!10 = !{!"int", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !5, i64 0}
!15 = !{!"rte_tailq_entry_head", !5, i64 0, !5, i64 8}
!16 = !{!15, !5, i64 8}
!17 = distinct !{!17, !13}
!18 = !{!19, !5, i64 0}
!19 = !{!"rte_tailq_elem", !5, i64 0, !20, i64 8, !6, i64 24}
!20 = !{!"", !5, i64 0, !5, i64 8}
!21 = !{!19, !5, i64 8}
!22 = !{!19, !5, i64 16}
!23 = !{!24, !5, i64 8}
!24 = !{!"rte_tailq_elem_head", !5, i64 0, !5, i64 8}
!25 = !{!24, !5, i64 0}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = !{!29, !5, i64 0}
!29 = !{!"rte_tailq_head", !15, i64 0, !6, i64 16}
!30 = !{!29, !5, i64 8}
